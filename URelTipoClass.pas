unit URelTipoClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelTipoClass = class(TForm)
    RadioGroup1: TRadioGroup;
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
    QryTipoClass: TIBQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QryTipoClassCODTIPOCLASSFISCAL: TIntegerField;
    QryTipoClassLETRA: TIBStringField;
    QryTipoClassSEQUENCIA: TIBStringField;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelTipoClass: TFRelTipoClass;

implementation

uses UDados;

{$R *.dfm}

procedure TFRelTipoClass.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryTipoClass.Close;
    QryTipoClass.UnPrepare;    
    QryTipoClass.SQL.Text := 'select * from TIPOCLASSFISCAL';
    case RadioGroup1.ItemIndex of
      0: QryTipoClass.SQL.Add('order by CODTIPOCLASSFISCAL');
      1: QryTipoClass.SQL.Add('order by Letra');
      2: QryTipoClass.SQL.Add('order by Sequencia');
    end;
    QryTipoClass.Prepare;
    QryTipoClass.Open;   
    if QryTipoClass.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
        QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    Close;
  end;
end;

procedure TFRelTipoClass.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelTipoClass.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
