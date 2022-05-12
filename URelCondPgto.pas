unit URelCondPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelCondPgto = class(TForm)
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
    QryCondPgto: TIBQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QryCondPgtoCODCONDPGTO: TIntegerField;
    QryCondPgtoNOME: TIBStringField;
    QryCondPgtoPRAZO1: TSmallintField;
    QryCondPgtoPRAZO2: TSmallintField;
    QryCondPgtoPRAZO3: TSmallintField;
    QryCondPgtoPRAZO4: TSmallintField;
    QryCondPgtoPRAZO5: TSmallintField;
    QryCondPgtoPRAZO6: TSmallintField;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
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
  FRelCondPgto: TFRelCondPgto;

implementation

uses UDados;

{$R *.dfm}

procedure TFRelCondPgto.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryCondPgto.Close;
    QryCondPgto.UnPrepare;    
    QryCondPgto.SQL.Text := 'select * from CONDPGTO';
    case RadioGroup1.ItemIndex of
      0: QryCondPgto.SQL.Add('order by CODCONDPGTO');
      1: QryCondPgto.SQL.Add('order by Nome');
    end;
    QryCondPgto.Prepare;
    QryCondPgto.Open;   
    if QryCondPgto.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
        QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    Close;
  end;
end;

procedure TFRelCondPgto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelCondPgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
