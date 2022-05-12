unit URelUnidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelUnidades = class(TForm)
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
    QryUnidades: TIBQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QryUnidadesCODUNIDADES: TIntegerField;
    QryUnidadesNOME: TIBStringField;
    QryUnidadesABREV: TIBStringField;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
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
  FRelUnidades: TFRelUnidades;

implementation

uses UDados;

{$R *.dfm}

procedure TFRelUnidades.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryUnidades.Close;
    QryUnidades.UnPrepare;    
    QryUnidades.SQL.Text := 'select * from UNIDADES';
    case RadioGroup1.ItemIndex of
      0: QryUnidades.SQL.Add('order by CODUNIDADES');
      1: QryUnidades.SQL.Add('order by Nome');
      2: QryUnidades.SQL.Add('order by Abrev');
    end;
    QryUnidades.Prepare;
    QryUnidades.Open;   
    if QryUnidades.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
        QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    Close;  
  end;
end;

procedure TFRelUnidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelUnidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
