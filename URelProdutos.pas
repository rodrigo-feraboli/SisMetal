unit URelProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls;

type
  TFRelProduto = class(TForm)
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
    QryProdutos: TIBQuery;
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
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Edit3: TEdit;
    Label2: TLabel;
    Edit4: TEdit;
    GroupBox4: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    QryProdutosCODPRODUTO: TIntegerField;
    QryProdutosNOMEPRODUTO: TIBStringField;
    QryProdutosLETRANUM: TIBStringField;
    QryProdutosNOME: TIBStringField;
    QryProdutosTIPOPRODUTO: TIBStringField;
    QryProdutosESTOQUEATUAL: TIBBCDField;
    QryProdutosDATAULTCOMPRAVENDA: TDateField;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FRelProduto: TFRelProduto;

implementation

uses UDados, UProdutos;

{$R *.dfm}

procedure TFRelProduto.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 17);
end;

procedure TFRelProduto.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryProdutos.Close;
    QryProdutos.UnPrepare;
    QryProdutos.SQL.Text := 'select p.codproduto, P.nome as NomeProduto, '+
      ' CL.letra ||'' - ''|| CL.sequencia as LetraNum, U.nome, P.tipoproduto, P.EstoqueAtual, '+
      'P.DATAULTCOMPRAVENDA from produtos P '+
      'inner join tipoclassfiscal CL on CL.codtipoclassfiscal = P.codtipoclassfiscal '+
      'inner join unidades U on U.codunidades = P.codunidade where P.codproduto > 0 ';

    if DBLookupComboBox1.KeyValue > 0 then begin
      QryProdutos.SQL.Add(' and CL.CodTipoClassFiscal = :plCodTipoClassFiscal ');
      QryProdutos.ParamByName('plCodTipoClassFiscal').AsInteger := DBLookupComboBox1.KeyValue;
    end;
    if DBLookupComboBox2.KeyValue > 0 then begin
      QryProdutos.SQL.Add(' and U.CodUnidade = :plCodUnidade ');
      QryProdutos.ParamByName('plCodUnidade').AsInteger := DBLookupComboBox2.KeyValue;
    end;
    if Edit3.Text <> '' then begin
      QryProdutos.SQL.Add(' and P.EstoqueAtual >= :plEstoqueMin ');
      QryProdutos.ParamByName('plEstoqueMin').AsInteger := StrToInt(Edit3.Text);
    end;
    if Edit4.Text <> '' then begin
      QryProdutos.SQL.Add(' and P.EstoqueAtual <= :plEstoqueMax ');
      QryProdutos.ParamByName('plEstoqueMax').AsInteger := StrToInt(Edit4.Text);
    end;
    if CheckBox1.Checked then begin
      QryProdutos.SQL.Add(' and P.DATAULTCOMPRAVENDA >= :plDtIni ');
      QryProdutos.ParamByName('plDtIni').AsDate := DateTimePicker1.Date;
    end;
    if CheckBox2.Checked then begin
      QryProdutos.SQL.Add(' and P.DATAULTCOMPRAVENDA <= :plDtFin ');
      QryProdutos.ParamByName('plDtFin').AsDate := DateTimePicker2.Date;
    end;
    case RadioGroup1.ItemIndex of
      0: QryProdutos.SQL.Add('order by P.Nome');
      1: QryProdutos.SQL.Add('order by P.DATAULTCOMPRAVENDA');
      2: QryProdutos.SQL.Add('order by P.EstoqueAtual');
    end;
    QryProdutos.Prepare;
    QryProdutos.Open;
    if QryProdutos.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
        QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    FRelProduto.Close;
  end;
end;

procedure TFRelProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelProduto.DBLookupComboBox1Click(Sender: TObject);
begin
  Dados.QryTipoClassLK.FetchAll;
  try
    Edit1.Text := IntToStr(DBLookupComboBox1.KeyValue);
  except
    Edit1.Clear;
  end;
end;

procedure TFRelProduto.Edit1Change(Sender: TObject);
begin
  try
    DBLookupComboBox1.KeyValue := StrToInt(Edit1.Text);
  except
  end;
end;

procedure TFRelProduto.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Back then begin
    DBLookupComboBox1.KeyValue := 0;
    DBLookupComboBox1Click(nil);
  end;
end;

procedure TFRelProduto.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := Date - 30;
  DateTimePicker2.Date := Date;
  Verificacao;
end;

procedure TFRelProduto.Edit3Exit(Sender: TObject);
var
  vlInt: Integer;
begin
  if sender = Edit3 then
    try
      vlInt := StrToInt(Edit3.Text);
    except
      MessageDlg('Digite somente números inteiros!', mtWarning, [mbOk], 0);
      Edit3.Clear;
      Edit3.SetFocus;
    end
  else
    try
      vlInt := StrToInt(Edit4.Text);
    except
      MessageDlg('Digite somente números inteiros!', mtWarning, [mbOk], 0);
      Edit4.Clear;
      Edit4.SetFocus;
    end;
end;

procedure TFRelProduto.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryUnidadesLK.FetchAll;
  try
    Edit2.Text := IntToStr(DBLookupComboBox2.KeyValue);
  except
    Edit2.Clear;
  end;
end;

procedure TFRelProduto.DBLookupComboBox2Exit(Sender: TObject);
begin
  Dados.QryUnidadesLK.FetchAll;
  try
    Edit2.Text := IntToStr(DBLookupComboBox2.KeyValue);
  except
    Edit2.Clear;
  end;
end;

procedure TFRelProduto.DBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Back then begin
    DBLookupComboBox2.KeyValue := 0;
    DBLookupComboBox2Enter(nil);
  end;
end;

end.


