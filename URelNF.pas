unit URelNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelNF = class(TForm)
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
    QryGenerica: TIBQuery;
    QRDBText2: TQRDBText;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    QRDBText6: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QryGenericaNOME: TIBStringField;
    QryGenericaDATAVENDA: TDateField;
    QryGenericaTIPONOTA: TIBStringField;
    QryGenericaNRONF: TIntegerField;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    ChildBand1: TQRChildBand;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelNF: TFRelNF;

implementation

uses UDados, UVendas;

{$R *.dfm}

procedure TFRelNF.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryGenerica.Close;
    QryGenerica.UnPrepare;
    QryGenerica.SQL.Text := 'select CD.nome, V.DataVenda, v.TipoNota, v.NroNF '+
      'from Vendas V '+
      'inner join cadgen CD on CD.codcadgen = V.codcligen '+
      'where CD.nome is not null ';
    if DBLookupComboBox1.KeyValue > 0 then begin
      QryGenerica.SQL.Add(' and CD.CodCadGen = :plCodCadGen ');
      QryGenerica.ParamByName('plCodCadGen').AsInteger := DBLookupComboBox1.KeyValue;
    end;
    case RadioGroup1.ItemIndex of
      0: QryGenerica.SQL.Add('order by CD.Nome');//, CG.Nome ');
      1: QryGenerica.SQL.Add('order by CD.Nome');//, CG.CodCadGen ');
      2: QryGenerica.SQL.Add('order by CD.Nome');//, CG.DataCadastro');
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
    FRelNF.Close;
  end;
end;

procedure TFRelNF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelNF.DBLookupComboBox1Click(Sender: TObject);
begin
  Dados.QryCidadesLK.FetchAll;
  try
    Edit1.Text := IntToStr(DBLookupComboBox1.KeyValue);
  except
    Edit1.Clear;
  end;
end;

procedure TFRelNF.Edit1Change(Sender: TObject);
begin
  try
    DBLookupComboBox1.KeyValue := StrToInt(Edit1.Text);
  except
  end;
end;

procedure TFRelNF.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Back then begin
    DBLookupComboBox1.KeyValue := 0;
    DBLookupComboBox1Click(nil);
  end;
end;

procedure TFRelNF.FormCreate(Sender: TObject);
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


