unit URelFichaGenerico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelFichaGenerico = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    PageFooterBand1: TQRBand;
    Panel1: TPanel;
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    BitCancelar: TBitBtn;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel12: TQRLabel;
    QRDBText14: TQRDBText;
    QryAux: TIBQuery;
    QryAuxCODCADGEN: TIntegerField;
    QryAuxCODCIDADE: TIntegerField;
    QryAuxCODCIDADECOB: TIntegerField;
    QryAuxCODBANCO: TIntegerField;
    QryAuxCODCONDPGTO: TIntegerField;
    QryAuxCODCFOP: TIntegerField;
    QryAuxTIPOT: TIBStringField;
    QryAuxTIPOC: TIBStringField;
    QryAuxTIPOF: TIBStringField;
    QryAuxCODTRANSP: TIntegerField;
    QryAuxDATACADASTRO: TDateField;
    QryAuxNOME: TIBStringField;
    QryAuxFANTASIA: TIBStringField;
    QryAuxCONTATO: TIBStringField;
    QryAuxENDERECO: TIBStringField;
    QryAuxBAIRRO: TIBStringField;
    QryAuxFONEGERAL: TIBStringField;
    QryAuxFONEAUX: TIBStringField;
    QryAuxFAX: TIBStringField;
    QryAuxEMAIL: TIBStringField;
    QryAuxTIPOPESSOA: TIBStringField;
    QryAuxOBS: TMemoField;
    QryAuxCNPJCPF: TIBStringField;
    QryAuxIERG: TIBStringField;
    QryAuxENDERECOCOB: TIBStringField;
    QryAuxBAIRROCOB: TIBStringField;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelFichaGenerico: TFRelFichaGenerico;

implementation

uses UDados, UGenerico;

{$R *.dfm}

procedure TFRelFichaGenerico.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then  begin
    Close;
    exit;
  end;
  QryAux.Close;
  QryAux.UnPrepare;
  QryAux.SQL.Text := 'Select * from CADGEN where CodCadGen ='+ IntToStr(FGenerico.TbGenericoCODCADGEN.Value);
  QryAux.Prepare;
  QryAux.Open;
  if sender = BitVisualizar then
    QuickRep1.Preview
  else
    QuickRep1.Print;
  Close;
end;

procedure TFRelFichaGenerico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelFichaGenerico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelFichaGenerico.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel109.Caption := '';
  QRLabel112.Caption := '';
  Dados.QryCidadesLK.Locate('CODCIDADE', QryAuxCODCIDADE.Value, []);
  QRLabel109.Caption := IntToStr (QryAuxCODCIDADE.Value) +' - '+
    Dados.QryCidadesLK.FieldByName('NOME').AsString +'/'+FGenerico.Edit3.Text;
  Dados.QryCidadesLK.Locate('CODCIDADE', QryAuxCODCIDADECOB.Value, []);
  QRLabel112.Caption := IntToStr (QryAuxCODCIDADECOB.Value) +' - '+
    Dados.QryCidadesLK.FieldByName('NOME').AsString +'/'+FGenerico.Edit4.Text;
  if QryAuxFONEGERAL.IsNull then
    QRDBText5.Enabled := False
  else
    QRDBText5.Enabled := True;
  if QryAuxFONEAUX.IsNull then
    QRDBText14.Enabled := False
  else
    QRDBText14.Enabled := True;
  if QryAuxFAX.IsNull then
    QRDBText6.Enabled := False
  else
    QRDBText6.Enabled := True;
end;

end.


