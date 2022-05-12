unit URelTranportadoras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelTranportadoras = class(TForm)
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
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QryTransportadoras: TIBQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QryTransportadorasCODTRANSPORTADORA: TIntegerField;
    QryTransportadorasNOMETRANSP: TIBStringField;
    QryTransportadorasFONE: TIBStringField;
    QryTransportadorasENDERECO: TIBStringField;
    QryTransportadorasDATACADASTRO: TDateField;
    QryTransportadorasNOMECITY: TIBStringField;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelTranportadoras: TFRelTranportadoras;

implementation

uses UDados, UGenerico;

{$R *.dfm}

procedure TFRelTranportadoras.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryTransportadoras.Close;
    QryTransportadoras.UnPrepare;
    QryTransportadoras.SQL.Text := 'select T.codtransportadora, T.nome as NomeTransp, T.fone, T.endereco, T.datacadastro, '+
    'Ci.nome as NomeCity from transportadoras T inner join cidades Ci on ci.codcidade = T.codcidade';
    if DBLookupComboBox1.KeyValue > 0 then begin
      QryTransportadoras.SQL.Add(' and T.CodCidade = :plCidade ');
      QryTransportadoras.ParamByName('plCidade').AsInteger := DBLookupComboBox1.KeyValue;
    end;
    case RadioGroup1.ItemIndex of
      0: QryTransportadoras.SQL.Add('order by Ci.Nome, T.Nome ');
      1: QryTransportadoras.SQL.Add('order by Ci.Nome, T.codtransportadoras ');
      2: QryTransportadoras.SQL.Add('order by Ci.Nome, T.DataCadastro');
    end;
    QryTransportadoras.Prepare;
    QryTransportadoras.Open;
    if QryTransportadoras.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
        QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    FRelTranportadoras.Close;
  end;
end;

procedure TFRelTranportadoras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelTranportadoras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelTranportadoras.DBLookupComboBox1Click(Sender: TObject);
begin
  try
    Edit1.Text := IntToStr(DBLookupComboBox1.KeyValue);
  except
    Edit1.Clear;
  end;
end;

procedure TFRelTranportadoras.Edit1Change(Sender: TObject);
begin
  try
    DBLookupComboBox1.KeyValue := StrToInt(Edit1.Text);
  except
  end;
end;

procedure TFRelTranportadoras.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Back then begin
    DBLookupComboBox1.KeyValue := 0;
    DBLookupComboBox1Click(nil);
  end;
end;

procedure TFRelTranportadoras.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QryTransportadorasFONE.IsNull then
    QRDBText7.Enabled := False
  else
    QRDBText7.Enabled := True;
end;

end.


