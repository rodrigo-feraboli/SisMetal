unit URelCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelCidades = class(TForm)
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit2: TEdit;
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
    QryCidades: TIBQuery;
    QRDBText1: TQRDBText;
    QryCidadesCODCIDADE: TIntegerField;
    QryCidadesNOMECIDADE: TIBStringField;
    QryCidadesCEP: TIBStringField;
    QryCidadesNOMEESTADO: TIBStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FRelCidades: TFRelCidades;

implementation

uses UDados;

{$R *.dfm}

procedure TFRelCidades.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 16);
end;

procedure TFRelCidades.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryCidades.Close;
    QryCidades.UnPrepare;
    QryCidades.SQL.Text := 'select C.Codcidade, C.Nome as NomeCidade, C.Cep, '+
      'E.Nome as NomeEstado from '+
      'Cidades C '+
      'inner join estados E on E.codestado = C.codestado ';
    if DBLookupComboBox2.Text <> '' then begin
      QryCidades.SQL.Add('and E.CodEstado = :plEstado ');
      QryCidades.ParamByName('plEstado').AsInteger := DBLookupComboBox2.KeyValue;
    end;
    case RadioGroup1.ItemIndex of
      0: QryCidades.SQL.Add('order by C.Nome, C.CodCidade');
      1: QryCidades.SQL.Add('order by E.Nome, C.Nome');
      2: QryCidades.SQL.Add('order by C.CodCidade');
    end;
    QryCidades.Prepare;
    QryCidades.Open;
    if QryCidades.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
        QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    Close;
  end;
end;

procedure TFRelCidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelCidades.Edit2Change(Sender: TObject);
begin
  try
    DBLookupComboBox2.KeyValue := StrToInt(Edit2.Text);
  except
  end;
end;

procedure TFRelCidades.DBLookupComboBox2Click(Sender: TObject);
begin
    Dados.QryEstadosLK.FetchAll;
  try
    Edit2.Text := IntToStr(DBLookupComboBox2.KeyValue);
  except
  end;
end;

procedure TFRelCidades.DBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_BACK then
    DBLookupComboBox2.KeyValue := 0;
end;

procedure TFRelCidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelCidades.FormCreate(Sender: TObject);
begin
  ShowModal;
end;

end.
