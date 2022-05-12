unit URelGeraOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls, Mask;

type
  TFRelGeraOrc = class(TForm)
    QuickRep1: TQuickRep;
    QryAux: TIBQuery;
    Panel1: TPanel;
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    BitCancelar: TBitBtn;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel5: TQRLabel;
    QRMemo2: TQRMemo;
    QryAuxDESCRICAO: TMemoField;
    QryAuxVLRUNIT: TIBBCDField;
    QryAuxQUANT: TIBBCDField;
    QRMemo1: TQRMemo;
    QryAuxDesc: TStringField;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitVisualizarClick(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QryAuxCalcFields(DataSet: TDataSet);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    vlSQLGen : String;
    vlDataIni, vlDataFin : TDateTime;
  public
    { Public declarations }
  end;

var
  FRelGeraOrc: TFRelGeraOrc;

implementation

uses UDados, UOrcamento;

{$R *.dfm}

procedure TFRelGeraOrc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelGeraOrc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelGeraOrc.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then  begin
    Close;
    exit;
  end;
  QryAux.SQL.Text := 'select IC.descricao, ic.vlrunit, ic.quant from itensorcamentos IC '+
    'where IC.codorcamento = '+ FOrcamento.TbItensOrcamentoCODORCAMENTO.AsString + ' '+
    'and IC.IncluirOrc = 1';
  QryAux.Prepare;
  QryAux.Open;
  if sender = BitVisualizar then
    QuickRep1.Preview
  else
    QuickRep1.Print;
  Close;
end;

procedure TFRelGeraOrc.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel1.Caption := QRLabel1.Caption + FOrcamento.DBLookupComboBox1.Text;
  QRLabel2.Caption := QRLabel2.Caption + FOrcamento.TbOrcamentoCONTATO.AsString ;
  QRMemo2.Lines.Clear;
  QRMemo2.Lines.Add('   Conforme visita realizada na empresa '+
       FOrcamento.DBLookupComboBox1.Text +', no dia '+
       FormatDateTime('dd/mm/yyyy', FOrcamento.TbOrcamentoDATACONTATOCLIENTE.AsDateTime) +
      ' em contato com '+ FOrcamento.TbOrcamentoCONTATO.AsString +', '+
      'nos foi solicitado o orçamento que segue:');
  FOrcamento.TbItensOrcamento.First;
end;

procedure TFRelGeraOrc.QryAuxCalcFields(DataSet: TDataSet);
begin
  QryAuxDesc.Value := '';
  if not QryAuxDESCRICAO.IsNull then 
    QryAuxDesc.Value := '     '+ QryAuxDESCRICAO.AsString;
end;

procedure TFRelGeraOrc.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vlSoma: Currency;
begin
  vlSoma := 0;
  vlSoma := QryAuxQUANT.Value + QryAuxVLRUNIT.Value;
  QRLabel5.Caption := 'Valor: R$ '+ FormatCurr('#,##0.00', (vlSoma));
end;

procedure TFRelGeraOrc.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRMemo1.Lines.Text := QryAuxDesc.AsString;
end;

end.


