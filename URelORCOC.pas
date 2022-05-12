unit URelORCOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls, Mask;

type
  TFRelORCOC = class(TForm)
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    BitCancelar: TBitBtn;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QryGenerica: TIBQuery;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QryAux: TIBQuery;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QryGenericaCODGEN: TIntegerField;
    GroupBox1: TGroupBox;
    CBINI: TCheckBox;
    DTPINI: TDateTimePicker;
    CBFIN: TCheckBox;
    DTPFIN: TDateTimePicker;
    RadioGroup2: TRadioGroup;
    StaticText1: TStaticText;
    Edit1: TMaskEdit;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RadioGroup2Click(Sender: TObject);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
    vlSQLGen : String;
    vlDataIni, vlDataFin : TDateTime;
  public
    { Public declarations }
  end;

var
  FRelORCOC: TFRelORCOC;

implementation

uses UDados, UOrcamento, UOrdemCompra;

{$R *.dfm}

procedure TFRelORCOC.BitVisualizarClick(Sender: TObject);
var
  vlCond: string;
procedure CondOrc;
begin
  if (CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and O.DATAORCAMENTO >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and O.DATAORCAMENTO <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' '
  else if (CBINI.Checked) and (not CBFIN.Checked) then
    vlCond := ' and O.DATAORCAMENTO >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)+''' '
  else if (not CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and O.DATAORCAMENTO <= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni) +''' '
  else
    vlCond := ' and O.DATAORCAMENTO >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and O.DATAORCAMENTO <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' ';
end;
procedure CondOc;
begin
  if (CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and OC.DATAORDEMCOMPRA >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and OC.DATAORDEMCOMPRA <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' '
  else if (CBINI.Checked) and (not CBFIN.Checked) then
    vlCond := ' and OC.DATAORDEMCOMPRA >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni) +''' '
  else if (not CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and OC.DATAORDEMCOMPRA <= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni) +''' '
  else
    vlCond := ' and OC.DATAORDEMCOMPRA >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and OC.DATAORDEMCOMPRA <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' '
end;
begin
  if sender = BitCancelar then
    Close
  else begin
    vlDataFin := Date;
    vlDataIni := Date;
    case RadioGroup2.ItemIndex of
      1: vlDataIni := vlDataIni - (1 * StrToInt(Edit1.Text));
      2: vlDataIni := vlDataIni - (7 * StrToInt(Edit1.Text));
      3: vlDataIni := vlDataIni - (30 * StrToInt(Edit1.Text));
      4: vlDataIni := vlDataIni - (365 * StrToInt(Edit1.Text));
    else begin
      vlDataFin := DTPFIN.Date;
      vlDataIni := DTPINI.Date;
     end;
    end;

    vlCond := '';
    if Caption = 'Emissão de Relatório de Ordem de Compra' then
      CondOc
    else
      CondOrc;
    QryGenerica.Close;
    QryGenerica.UnPrepare;
    QryGenerica.SQL.Text := vlSQLGen + vlCond;
    QryGenerica.Prepare;
    QryGenerica.Open;
    if QryGenerica.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
      QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    FRelORCOC.Close;
  end;
end;

procedure TFRelORCOC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelORCOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelORCOC.FormCreate(Sender: TObject);
procedure Orc;
begin
  QryAux.Transaction := FOrcamento.TransactionOrc;
  QryGenerica.Transaction := QryAux.Transaction;
  Caption := 'Emissão de Relatório de Orçamentos';
  QRLabel1.Caption := 'Relatório de Orçamentos';
  QRLabel5.Caption := 'Nº de Orc.';
  QRLabel2.Caption := 'Data Últ Orc.';
  vlSQLGen := 'select distinct(O.CODCLIGEN) as CodGen from ORCAMENTOS O '+
    'inner join cadgen CG on CG.codcadgen = O.Codcligen '+
    'where O.DATAORCAMENTO IS NOT NULL ';
end;
procedure OC;
begin
  QryAux.Transaction := FOrdemCompra.TransactionOC;
  QryGenerica.Transaction := QryAux.Transaction;
  Caption := 'Emissão de Relatório de Ordem de Compra';
  QRLabel1.Caption := 'Relatório de Ordens de Compra';
  QRLabel5.Caption := 'Nº de OC.';
  QRLabel2.Caption := 'Data Últ OC.';
  vlSQLGen := 'select distinct(OC.codforngen) as CodGen from ordemcompra OC '+
    'inner join cadgen CG on CG.codcadgen = OC.codforngen ' +
    'where OC.DATAORDEMCOMPRA IS NOT NULL ';
end;
begin
  Dados.ConfirmaTrans(True);
  vlSQLGen := '';
  DTPINI.Date := Date - 30;
  DTPFIN.Date := Date;
  StaticText1.Visible := False;
  Edit1.Visible := StaticText1.Visible;
  case Dados.vgTipoRel  of
    1: Orc ;
    2: OC;
  end;
  ShowModal;
end;

procedure TFRelORCOC.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
const
  SQLOrcNum = 'select Count(O.codorcamento) from orcamentos O where o.codcligen =';
  SQLOrcData = 'select first 1 O.dataorcamento from orcamentos O '+
     'where o.codcligen = ';
  SQLOcNum = 'select Count(OC.codordemcompra) from ordemcompra OC where OC.codforngen =';
  SQLOcData = 'select first 1 OC.dataordemcompra from ordemcompra OC '+
      'where oC.codforngen = ';
  SQLCliForn = 'select CG.Nome from cadgen CG where CG.codcadgen = ';
procedure CalcOrc;
begin
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLOrcNum + QryGenericaCODGEN.AsString;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel4.Caption := QryAux.Fields[0].AsString;

  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLOrcData + QryGenericaCODGEN.AsString + 'order by O.dataorcamento DESC';
  QryAux.Prepare;
  QryAux.Open;
  QRLabel6.Caption := QryAux.Fields[0].AsString;
end;
procedure CalcOC;
begin
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLOcNum + QryGenericaCODGEN.AsString;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel4.Caption := QryAux.Fields[0].AsString;

  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLOcData + QryGenericaCODGEN.AsString  + 'order by OC.dataordemcompra DESC';
  QryAux.Prepare;
  QryAux.Open;
  QRLabel6.Caption := QryAux.Fields[0].AsString;
end;
procedure Nome;
begin
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLCliForn + QryGenericaCODGEN.AsString;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel7.Caption := QryAux.Fields[0].AsString;
end;
procedure ORC;
begin
  Nome;
  CalcOrc;
end;
procedure OC;
begin
  Nome;
  CalcOC;
end;
begin
  case Dados.vgTipoRel of
    1: ORC;
    2: OC;
  end;
end;

procedure TFRelORCOC.RadioGroup2Click(Sender: TObject);
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
  Case RadioGroup2.ItemIndex of
    0:begin
        AtivarPeriodos;
        Desmarcar;
      end;
    1:begin
        DesativarPeriodos;
        StaticText1.Caption := 'Últimos              Dias';
        Edit1.Text := '7';
        Edit1.SetFocus;
        Desmarcar;
      end;
    2:begin
        DesativarPeriodos;
        StaticText1.Caption := 'Últimos              Semanas';
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

procedure TFRelORCOC.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  case RadioGroup2.ItemIndex of
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

procedure TFRelORCOC.Edit1Exit(Sender: TObject);
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


