unit URelComVen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls, Mask;

type
  TFRelComVen = class(TForm)
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    BitCancelar: TBitBtn;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QryGenerica: TIBQuery;
    QryGenericaCODCADGEN: TIntegerField;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QryAux: TIBQuery;
    QRLabel8: TQRLabel;
    GroupBox1: TGroupBox;
    CBINI: TCheckBox;
    DTPINI: TDateTimePicker;
    CBFIN: TCheckBox;
    DTPFIN: TDateTimePicker;
    RadioGroup2: TRadioGroup;
    StaticText1: TStaticText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    Edit1: TMaskEdit;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
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
  FRelComVen: TFRelComVen;

implementation

uses UDados, UCompras, UVendas;

{$R *.dfm}

procedure TFRelComVen.BitVisualizarClick(Sender: TObject);
var
  vlCond: string;
procedure CondCompras;
begin
  if (CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and C.DATACOMPRA >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and C.DATACOMPRA <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' '
  else if (CBINI.Checked) and (not CBFIN.Checked) then
    vlCond := ' and C.DATACOMPRA >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)+''' '
  else if (not CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and C.DATACOMPRA <= '''+ FormatDateTime('dd.mm.yyyy', vlDataFin)+''' '
  else if RadioGroup2.ItemIndex > 0 then
    vlCond := ' and C.DATACOMPRA >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and C.DATACOMPRA <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' ';
end;
procedure CondVendas;
begin
  if (CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and V.DATAVENDA >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and V.DATAVENDA <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' '
  else if (CBINI.Checked) and (not CBFIN.Checked) then
    vlCond := ' and V.DATAVENDA >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)+''' '
  else if (not CBINI.Checked) and (CBFIN.Checked) then
    vlCond := ' and V.DATAVENDA <= '''+ FormatDateTime('dd.mm.yyyy', vlDataFin)+''' '
  else if RadioGroup2.ItemIndex > 0 then
    vlCond := ' and V.DATAVENDA >= '''+ FormatDateTime('dd.mm.yyyy', vlDataIni)
      +''' and V.DATAVENDA <= '''+ FormatDateTime('dd.mm.yyyy',vlDataFin)+''' '
end;
begin
  if sender = BitCancelar then
    Close
  else begin
    vlDataIni := Date;
    vlDataFin := Date;
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
    if Caption = 'Emissão de Relatório de Compras' then
      CondCompras
    else
      CondVendas;
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
    FRelComVen.Close;
  end;
end;

procedure TFRelComVen.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelComVen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelComVen.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
const
  SQLCompras = 'select sum(CP.vlrunit * CP.quant), count (CP.nrocompra)  from comprodutos CP '+
    'inner join compras C on C.nrocompra = CP.nrocompra '+
    'inner join cadgen CG on CG.codcadgen = C.codforngen '+
    'where CG.codcadgen = ';
  SQLCliForn = 'select CG.Nome from cadgen CG where CG.codcadgen = ';
  SQLVendas = 'select sum(VP.vlrunit * VP.quant), count (VP.nrovenda)  from venprodutos VP '+
    'inner join vendas V on V.nrovenda = VP.nrovenda '+
    'inner join cadgen CG on CG.codcadgen = v.codcligen '+
    'where CG.codcadgen = ';
procedure CalcCom;
begin
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLCompras + QryGenericaCODCADGEN.AsString;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel6.Caption := FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);
  QRLabel7.Caption := QryAux.Fields[1].AsString;
end;
procedure CalcVen;
begin
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLVendas + QryGenericaCODCADGEN.AsString;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel6.Caption := FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);
  QRLabel7.Caption := QryAux.Fields[1].AsString;
end;
procedure Nome;
begin
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := SQLCliForn + QryGenericaCODCADGEN.AsString;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel8.Caption := QryAux.Fields[0].AsString;
end;
procedure Com;
begin
  Nome;
  CalcCom;
end;
procedure Ven;
begin
  Nome;
  CalcVen;
end;
begin
  case Dados.vgTipoRel of
    1: Com;
    2: Ven;
  end;
end;

procedure TFRelComVen.FormCreate(Sender: TObject);
procedure Com;
begin
  QryGenerica.Transaction := FCompras.TransactionCompras;
  QryAux.Transaction := QryGenerica.Transaction;
  Caption := 'Emissão de Relatório de Compras';
  QRLabel1.Caption := 'Relatório de Compras';
  QRLabel3.Caption := 'Fornecedor';
  QRLabel5.Caption := 'Valor Compras (R$)';
  QRLabel8.Caption := 'Quant. Compras';
  vlSQLGen := 'select distinct(CD.codcadgen) from Compras C '+
    'inner join cadgen CD on CD.codcadgen = C.codFornGen '+
    'where CD.nome is not null ';
end;
procedure Ven;
begin
  QryGenerica.Transaction := FVendas.TransactionVen;
  QryAux.Transaction := QryGenerica.Transaction;
  Caption := 'Emissão de Relatório de Vendas';
  QRLabel1.Caption := 'Relatório de Vendas';
  QRLabel3.Caption := 'Cliente';
  QRLabel5.Caption := 'Valor Vendas (R$)';
  QRLabel8.Caption := 'Quant. Vendas';
  vlSQLGen := 'select distinct(CD.CodCadgen) from Vendas V '+
      'inner join cadgen CD on CD.codcadgen = v.codcligen '+
      'where CD.nome is not null ';
end;
begin
  vlSQLGen := '';
  DTPINI.Date := Date - 30;
  DTPFIN.Date := Date;
  StaticText1.Visible := False;
  Edit1.Visible := StaticText1.Visible;
  case Dados.vgTipoRel  of
    1: Com;
    2: Ven;
  end;
  ShowModal;
end;

procedure TFRelComVen.RadioGroup2Click(Sender: TObject);
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

procedure TFRelComVen.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
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
            ' até '+ FormatDateTime('dd/mm/yyyy', vlDataFin);
    end;
  end;
end;

procedure TFRelComVen.Edit1Exit(Sender: TObject);
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


