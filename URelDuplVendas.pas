unit URelDuplVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelDuplVendas = class(TForm)
    RadioGroup1: TRadioGroup;
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    BitCancelar: TBitBtn;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QryGenerica: TIBQuery;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QryGenericaNOME: TIBStringField;
    QryGenericaVCTOPARC: TDateField;
    QryGenericaPGTOPARC: TDateField;
    QryGenericaVLRPARC: TIBBCDField;
    QryGenericaVLRPAGO: TIBBCDField;
    QryGenericaSITUACAO: TIBStringField;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
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
  FRelDuplVendas: TFRelDuplVendas;

implementation

uses UDados, UVendas;

{$R *.dfm}

procedure TFRelDuplVendas.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryGenerica.Close;
    QryGenerica.UnPrepare;
    QryGenerica.SQL.Text := 'select CD.nome, CRP.vctoparc, CRP.pgtoparc, CRP.vlrparc, CRP.vlrpago, CRP.Situacao  from creceberparcs CRP '+
    'inner join creceber CR on CR.nrocreceber = CRP.nrocreceber '+
    'inner join Vendas V on V.nrovenda = CR.nrovenda '+
    'inner join cadgen CD on CD.codcadgen = V.codcligen '+
    'where CD.nome is not null';
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
    FRelDuplVendas.Close;
  end;
end;

procedure TFRelDuplVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelDuplVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelDuplVendas.DBLookupComboBox1Click(Sender: TObject);
begin
  Dados.QryCidadesLK.FetchAll;
  try
    Edit1.Text := IntToStr(DBLookupComboBox1.KeyValue);
  except
    Edit1.Clear;
  end;
end;

procedure TFRelDuplVendas.Edit1Change(Sender: TObject);
begin
  try
    DBLookupComboBox1.KeyValue := StrToInt(Edit1.Text);
  except
  end;
end;

procedure TFRelDuplVendas.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Back then begin
    DBLookupComboBox1.KeyValue := 0;
    DBLookupComboBox1Click(nil);
  end;
end;

procedure TFRelDuplVendas.FormCreate(Sender: TObject);
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


