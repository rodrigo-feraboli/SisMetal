unit URelCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelCFOP = class(TForm)
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
    QRLabel5: TQRLabel;
    QryCFOP: TIBQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QryCFOPCODCFOP: TIntegerField;
    QryCFOPNOME: TIBStringField;
    QryCFOPCFOP: TIBStringField;
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
  FRelCFOP: TFRelCFOP;

implementation

uses UDados;

{$R *.dfm}

procedure TFRelCFOP.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryCFOP.Close;
    QryCFOP.UnPrepare;    
    QryCFOP.SQL.Text := 'select * from CFOP';
    case RadioGroup1.ItemIndex of
      0: QryCFOP.SQL.Add('order by CODCFOP');
      1: QryCFOP.SQL.Add('order by Nome');
      2: QryCFOP.SQL.Add('order by CFOP');
    end;
    QryCFOP.Prepare;
    QryCFOP.Open;
    if QryCFOP.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
        QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    Close;
  end;
end;

procedure TFRelCFOP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelCFOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
