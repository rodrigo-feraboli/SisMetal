unit URelCRCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls, Mask;

type
  TFRelCRCP = class(TForm)
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    BitCancelar: TBitBtn;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QryAux: TIBQuery;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    GroupBox1: TGroupBox;
    CBINI: TCheckBox;
    DTPINI: TDateTimePicker;
    CBFIN: TCheckBox;
    DTPFIN: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    StaticText1: TStaticText;
    Edit1: TMaskEdit;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RadioGroup1Click(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
    vlDataIni, vlDataFin : TDateTime;
  public
    { Public declarations }
  end;

var
  FRelCRCP: TFRelCRCP;

implementation

uses UDados, UCPagar, UCReceber;

{$R *.dfm}

procedure TFRelCRCP.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    vlDataFin := Date;
    vlDataIni := Date;
    case RadioGroup1.ItemIndex of
      1: vlDataIni := vlDataIni - (1 * StrToInt(Edit1.Text));
      2: vlDataIni := vlDataIni - (7 * StrToInt(Edit1.Text));
      3: vlDataIni := vlDataIni - (30 * StrToInt(Edit1.Text));
      4: vlDataIni := vlDataIni - (365 * StrToInt(Edit1.Text));
    else begin
      vlDataFin := DTPFIN.Date;
      vlDataIni := DTPINI.Date;
     end;
    end;
    if sender = BitVisualizar then
       QuickRep1.Preview
    else
      QuickRep1.Print;
  end;
  FRelCRCP.Close;
end;

procedure TFRelCRCP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelCRCP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelCRCP.FormCreate(Sender: TObject);
procedure CR;
begin
  QryAux.Transaction := FCReceber.TransactionCR;
  Caption := 'Emissão de Relatório de Contas a Receber';
  QRLabel1.Caption := 'Relatório de Contas a Receber';
  QRLabel2.Caption := 'CR Pagas';
  QRLabel3.Caption := 'Vlr CR Pagas';
  QRLabel4.Caption := 'CR Pendentes';
  QRLabel5.Caption := 'Vlr CR Pendentes';
  QRLabel6.Caption := 'Próx. Recebimento';
  QRLabel7.Caption := 'Vlr do Próx. Recebimento';
end;
procedure CP;
begin
  QryAux.Transaction := FCPagar.TransactionCP;
  Caption := 'Emissão de Relatório de Contas a Pagar';
  QRLabel1.Caption := 'Relatório de Contas a Pagar';
  QRLabel2.Caption := 'CP Pagas';
  QRLabel3.Caption := 'Vlr CP Pagas';
  QRLabel4.Caption := 'CP Pendentes';
  QRLabel5.Caption := 'Vlr CP Pendentes';
  QRLabel6.Caption := 'Próx. Pagamento';
  QRLabel7.Caption := 'Vlr do Próx. Pagamento';
end;
begin
  DTPINI.Date := Date - 30;
  DTPFIN.Date := Date;
  vlDataIni := 0;
  vlDataFin := 0;
  StaticText1.Visible := False;
  Edit1.Visible := StaticText1.Visible;
  case Dados.vgTipoRel of
    1: CP;
    2: CR;
  end;
end;

procedure TFRelCRCP.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vlCond: String;
const
  SQLDtVlrRec = 'select first 1 cpp.vctoparc, cpp.vlrparc from cpagarparcs cpp '+
    'where cpp.vctoparc >= current_date '+
    'and cpp.situacao = ''N''';
  SQLDtVlrPag =  'select first 1 crp.vctoparc, crp.vlrparc from creceberparcs crp '+
    'where crp.vctoparc >= current_date '+
    'and crp.situacao = ''N''';
  SQLCR1 = 'select sum(CRP.vlrpago), count(CRP.vlrpago) from creceberparcs CRP '+
    'where (CRP.situacao = ''P'') or (CRP.situacao = ''A'') or (CRP.situacao = ''C'') ';
  SQLCR2 = 'union select sum(CRP.vlrparc), count(CRP.vlrparc) from creceberparcs CRP '+
    'where (CRP.situacao = ''N'') ';
  SQLCP1 = 'select sum(CPP.vlrpago), count(CPP.vlrpago) from cpagarparcs CPP '+
    'where (CPP.situacao = ''P'') or (CPP.situacao = ''A'') or (CPP.situacao = ''C'') ';
  SQLCP2 = 'union select sum(CPP.vlrparc), count(CPP.vlrparc) from cpagarparcs CPP '+
    'where (CPP.situacao = ''N'')';
procedure CP;
begin
  vlCond := '';
  if (CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and CPP.VCTOPARC >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and CPP.VCTOPARC <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' '
  else if (CBINI.Checked) and (not CBFIN.Checked) then
    vlCond := ' and CPP.VCTOPARC >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni) +''' '
  else if (not CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and CPP.VCTOPARC <= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni) +''' '
  else
    vlCond := ' and CPP.VCTOPARC >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and CPP.VCTOPARC <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' ';
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLCP1 + vlCond + SQLCP2 + vlCond;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel18.Caption := QryAux.Fields[1].AsString;
  QRLabel20.Caption := 'R$ '+ FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);
  QryAux.Next;
  QRLabel19.Caption := QryAux.Fields[1].AsString;
  QRLabel21.Caption := 'R$ '+ FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLDtVlrRec;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel22.Caption := FormatDateTime('dd/mm/yyyy', QryAux.Fields[0].AsDateTime);
  QRLabel23.Caption := 'R$ '+ FormatCurr('#,##0.00', QryAux.Fields[1].AsCurrency);
end;
procedure CR;
begin
  vlCond := '';
  if (CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and CRP.VCTOPARC >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and CRP.VCTOPARC <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' '
  else if (CBINI.Checked) and (not CBFIN.Checked) then
    vlCond := ' and CRP.VCTOPARC >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni) +''' '
  else if (not CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and CRP.VCTOPARC <= '''+ FormatDateTime('dd.mm.yyyy', vlDataFin) +''' '
  else
    vlCond := ' and CRP.VCTOPARC >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and CRP.VCTOPARC <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' ';
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLCR1 + vlCond + SQLCR2 + vlCond;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel18.Caption := QryAux.Fields[1].AsString;
  QRLabel20.Caption := 'R$ '+ FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);
  QryAux.Next;
  QRLabel19.Caption := QryAux.Fields[1].AsString;
  QRLabel21.Caption := 'R$ '+ FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLDtVlrPag;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel22.Caption := FormatDateTime('dd/mm/yyyy', QryAux.Fields[0].AsDateTime);
  QRLabel23.Caption := 'R$ '+ FormatCurr('#,##0.00', QryAux.Fields[1].AsCurrency);
end;
begin
  case Dados.vgTipoRel of
    1: CP;
    2: CR;
  end;
end;

procedure TFRelCRCP.RadioGroup1Click(Sender: TObject);
procedure AtivarPeriodos;
begin
  CBINI.Enabled := True;
  CBFIN.Enabled := CBINI.Enabled;
  DTPINI.Enabled := CBINI.Enabled;
  DTPFIN.Enabled := CBINI.Enabled;
  StaticText1.Visible := not CBINI.Enabled;
  Edit1.Visible := not CBINI.Enabled;
end;
procedure DesativarPeriodos;
begin
  CBINI.Enabled := False;
  CBFIN.Enabled := CBINI.Enabled;
  DTPINI.Enabled := CBINI.Enabled;
  DTPFIN.Enabled := CBINI.Enabled;
  StaticText1.Visible := not CBINI.Enabled;
  Edit1.Visible := not CBINI.Enabled;
end;
procedure Marcar;
begin
  CBINI.Checked := True;
  CBFIN.Checked := CBINI.Checked;
end;
procedure Desmarcar;
begin
  CBINI.Checked := False;
  CBFIN.Checked := CBINI.Checked;
end;
begin
  Case RadioGroup1.ItemIndex of
    0:begin
        AtivarPeriodos;
        Desmarcar;
      end;
    1:begin
        DesativarPeriodos;
        StaticText1.Caption := 'Últimos              Dias';
        Edit1.Text := '7';
        Desmarcar;
      end;
    2:begin
        DesativarPeriodos;
        StaticText1.Caption := 'Últimas              Semanas';
        Edit1.Text := '1';
        Edit1.SetFocus;
        DesMarcar;
      end;
    3:begin
        DesativarPeriodos;
        StaticText1.Caption := 'Últimos              Meses';
        Edit1.Text := '1';
        Edit1.SetFocus;
        DesMarcar;
      end;
    4:begin
        DesativarPeriodos;
        StaticText1.Caption := 'Últimos              Anos';
        Edit1.Text := '1';
        Edit1.SetFocus;
        DesMarcar;
      end;
  end;
end;

procedure TFRelCRCP.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  case RadioGroup1.ItemIndex of
    0: begin
        if (not CBFIN.Checked) and (not CBINI.Checked) then
          QRLabel17.Caption := 'Todo o período'
        else if (CBFIN.Checked) and (not CBINI.Checked) then
          QRLabel17.Caption := 'Até '+ FormatDateTime('dd/mm/yyyy', vlDataFin)
        else if (not CBFIN.Checked) and (CBINI.Checked) then
          QRLabel17.Caption := 'Desde '+ FormatDateTime('dd/mm/yyyy', vlDataIni)
        else
          QRLabel17.Caption := 'Desde '+ FormatDateTime('dd/mm/yyyy', vlDataIni)+
            ' até '+ FormatDateTime('dd/mm/yyyy', vlDataFin);
       end;
    else begin
      QRLabel17.Caption := 'Desde '+ FormatDateTime('dd/mm/yyyy', vlDataIni)+
            'Até '+ FormatDateTime('dd/mm/yyyy', vlDataFin);
    end;
  end;
end;
procedure TFRelCRCP.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text = '' then begin
    MessageDlg('Especifique um valor!', mtError, [mbOk], 0);
    Edit1.SetFocus;
  end else if StrToInt(Edit1.Text) = 0 then begin
    MessageDlg('Especifique um valor maior que zero!', mtError, [mbOk], 0);
    Edit1.Clear;
    Edit1.SetFocus;
  end;
end;

end.


