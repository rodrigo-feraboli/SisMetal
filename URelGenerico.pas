unit URelGenerico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelGenerico = class(TForm)
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
    QryGenerica: TIBQuery;
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
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QryGenericaCODCADGEN: TIntegerField;
    QryGenericaNOMEGENERICO: TIBStringField;
    QryGenericaFONEGERAL: TIBStringField;
    QryGenericaFAX: TIBStringField;
    QryGenericaENDERECO: TIBStringField;
    QryGenericaDATACADASTRO: TDateField;
    QryGenericaNOMECITY: TIBStringField;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelGenerico: TFRelGenerico;

implementation

uses UDados, UGenerico;

{$R *.dfm}

procedure TFRelGenerico.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryGenerica.Close;
    QryGenerica.UnPrepare;
    QryGenerica.SQL.Text := 'select CG.codcadgen, CG.Nome as NomeGenerico, CG.fonegeral, CG.fax, '+
      'CG.endereco, CG.datacadastro, Ci.Nome as NomeCity from CadGen CG '+
      'inner join cidades Ci on ci.codcidade = CG.codcidade '+
      FGenerico.vpWhere;
    if DBLookupComboBox1.KeyValue > 0 then begin
      QryGenerica.SQL.Add(' and Ci.CodCidade = :plCodCidade ');
      QryGenerica.ParamByName('plCodCidade').AsInteger := DBLookupComboBox1.KeyValue;
    end;
    case RadioGroup1.ItemIndex of
      0: QryGenerica.SQL.Add('order by Ci.Nome, CG.Nome ');
      1: QryGenerica.SQL.Add('order by Ci.Nome, CG.CodCadGen ');
      2: QryGenerica.SQL.Add('order by Ci.Nome, CG.DataCadastro');
    end;
    QryGenerica.Prepare;
    QryGenerica.Open;
    if QryGenerica.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
      QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    FRelGenerico.Close;
  end;
end;

procedure TFRelGenerico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelGenerico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelGenerico.DBLookupComboBox1Click(Sender: TObject);
begin
  Dados.QryCidadesLK.FetchAll;
  try
    Edit1.Text := IntToStr(DBLookupComboBox1.KeyValue);
  except
    Edit1.Clear;
  end;
end;

procedure TFRelGenerico.Edit1Change(Sender: TObject);
begin
  try
    DBLookupComboBox1.KeyValue := StrToInt(Edit1.Text);
  except
  end;
end;

procedure TFRelGenerico.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Back then begin
    DBLookupComboBox1.KeyValue := 0;
    DBLookupComboBox1Click(nil);
  end;
end;

procedure TFRelGenerico.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QryGenericaFONEGERAL.IsNull then
    QRDBText7.Enabled := False
  else
    QRDBText7.Enabled := True;
  if QryGenericaFAX.IsNull then
    QRDBText8.Enabled := False
  else
    QRDBText8.Enabled := True;
end;

procedure TFRelGenerico.FormCreate(Sender: TObject);
procedure Cli;
begin
  Caption := 'Emissão de Relatórios de Clientes';
  RadioGroup1.Items.Add('Cliente');
  QRLabel1.Caption := 'Relatório de Clientes';
  QRLabel3.Caption := 'Cliente';
end;
procedure Forn;
begin
  Caption := 'Emissão de Relatórios de Fornecedores';
  RadioGroup1.Items.Add('Fornecedor');
  QRLabel1.Caption := 'Relatório de Fornecedores';
  QRLabel3.Caption := 'Fornecedor';
end;
procedure Trans;
begin
  Caption := 'Emissão de Relatórios de Transportadoras';
  RadioGroup1.Items.Add('Transportadora');
  QRLabel1.Caption := 'Relatório de Transportadoras';
  QRLabel3.Caption := 'Transportadora';
end;
begin
  RadioGroup1.Items.Clear;
  case Dados.vgGenerica of
    1: Cli;
    2: Forn;
    3: Trans;
  end;
  RadioGroup1.Items.Add('Cidade');
  RadioGroup1.Items.Add('Data Cadastro');
  RadioGroup1.ItemIndex := 0;
end;

end.


