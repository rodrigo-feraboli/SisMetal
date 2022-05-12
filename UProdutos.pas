unit UProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBTable, IBDatabase;

type
  TFProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtnNovo: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Relatrios1: TMenuItem;
    Produtos1: TMenuItem;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DSProdutos: TDataSource;
    Label13: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit10: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    TbProdutos: TIBDataSet;
    TbProdutosCODPRODUTO: TIntegerField;
    TbProdutosCODTIPOCLASSFISCAL: TIntegerField;
    TbProdutosCODUNIDADE: TIntegerField;
    TbProdutosDATACADASTRO: TDateField;
    TbProdutosDATAULTCOMPRAVENDA: TDateField;
    TbProdutosTIPOPRODUTO: TIBStringField;
    TbProdutosNOME: TIBStringField;
    TbProdutosDESCRICAO: TMemoField;
    TbProdutosESTOQUEATUAL: TIBBCDField;
    TbProdutosESTOQUEALERTA: TSmallintField;
    TbProdutosESTOQUEMININO: TIBBCDField;
    TbProdutosVLR: TIBBCDField;
    N1: TMenuItem;
    TipodeClassificaoFiscal1: TMenuItem;
    Unidades1: TMenuItem;
    TransactionProd: TIBTransaction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSProdutosStateChange(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Produtos1Click(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DSProdutosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure Verificacao;
    procedure DataChange;
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

uses UDados, UTipoClassFiscal, UUnidades, URelProdutos;

{$R *.dfm}

procedure TFProdutos.DataChange;
begin
  if not Dados.QryTipoClassLK.Active then
    Dados.ConfirmaTransLK(False, 10);
  if not Dados.QryUnidadesLK.Active then
    Dados.ConfirmaTransLK(False, 8);
end;

procedure TFProdutos.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 17);
  DataChange;
end;

procedure TFProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFProdutos.BitBtnSairClick(Sender: TObject);
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição do produto '+
    TbProdutos.FieldByName('NOME').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      TbProdutos.Cancel;
end;

procedure TFProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dados.QryProdutosLK.Close;
  Dados.QryProdutosLK.UnPrepare;
  Dados.QryProdutosLK.Prepare;
  Dados.QryProdutosLK.Open;   
  Action := caFree;
end;

procedure TFProdutos.DSProdutosStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbProdutos.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do Cadastro de Produtos';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar Produto';
  end;
end;

procedure TFProdutos.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('PRODUTOS', 'EDI', 1) then begin
    TbProdutos.Append;
    TbProdutosDATACADASTRO.Value := Date;
    TbProdutosTIPOPRODUTO.Value := 'M';
    DBEdit3.SetFocus;
  end
end;

procedure TFProdutos.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('PRODUTOS', 'EDI', 1) and (not TbProdutos.IsEmpty) then
    TbProdutos.Edit;
end;

procedure TFProdutos.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('PRODUTOS', 'EXC', 1) and
    (not TbProdutos.IsEmpty) and
      (MessageDlg('Deseja excluir o produto '+ TbProdutos.FieldByName('NOME').AsString +' ?',
        mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
    TbProdutos.Delete;
    TransactionProd.CommitRetaining;
  end;
end;

procedure TFProdutos.BitBtnGravarClick(Sender: TObject);
begin
  if TbProdutosNOME.IsNull then begin
    MessageDlg('Especifique um nome para o produto!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end else if TbProdutosCODTIPOCLASSFISCAL.IsNull then begin
    MessageDlg('Especifique o tipo de classificação fiscal do produto!', mtWarning, [mbOk], 0);
    DBLookupComboBox1.SetFocus;
  end else if TbProdutosCODUNIDADE.IsNull then begin
    MessageDlg('Especifique a unidade do produto!', mtWarning, [mbOk], 0);
    DBLookupComboBox2.SetFocus;
  end else if TbProdutosESTOQUEATUAL.IsNull then begin
    MessageDlg('Especifique o estoque atual do produto!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
  end else if TbProdutosESTOQUEMININO.IsNull then begin
    MessageDlg('Especifique o estoque mínimo do produto!', mtWarning, [mbOk], 0);
    DBEdit4.SetFocus;
  end else if TbProdutosESTOQUEALERTA.IsNull then begin
    MessageDlg('Especifique o estoque alerta do produto!', mtWarning, [mbOk], 0);
    DBEdit9.SetFocus;
  end else if TbProdutosVLR.IsNull then begin
    MessageDlg('Especifique o valor de compra/venda do produto!', mtWarning, [mbOk], 0);
    DBEdit5.SetFocus;
  end else
  try
    TbProdutos.Post;
    TransactionProd.CommitRetaining;
    MessageDlg(TbProdutosNOME.Value +' editado com sucesso!', mtInformation, [MbOk], 0);
  except
    TbProdutos.Cancel;
    TransactionProd.RollbackRetaining;
    MessageDlg('Erro ao editar '+ TbProdutosNOME.Value +'!', mtError, [MbOk], 0);
  end;
end;

procedure TFProdutos.FormCreate(Sender: TObject);
procedure VerificarClassFiscal;
begin
  if not VerificarPermissao('TIPOS DE CLASSIFICAÇÃO FISCAL', 'CONS', 0) then begin
    SpeedButton1.Enabled := False;
    TipodeClassificaoFiscal1.Enabled := False;
  end;
end;
procedure VerificarUnidades;
begin
  if not VerificarPermissao('UNIDADES', 'CONS', 0) then begin
    SpeedButton2.Enabled := False;
    Unidades1.Enabled := False;
  end;
end;
begin
  if VerificarPermissao('PRODUTOS', 'CONS', 1) then begin
    VerificarClassFiscal;
    VerificarUnidades;
    TbProdutos.Open;
  end;
end;

procedure TFProdutos.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFTipoClassFiscal, FTipoClassFiscal);
  FTipoClassFiscal.TbTipoClass.Locate('CODTIPOCLASSFISCAL', TbProdutosCODTIPOCLASSFISCAL.Value, []);
  FTipoClassFiscal.ShowModal;
  FTipoClassFiscal := nil;
  Verificacao;
end;

procedure TFProdutos.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFUnidades, FUnidades);
  FUnidades.TbUnidades.Locate('CODUNIDADES', TbProdutosCODUNIDADE.Value, []);
  FUnidades.ShowModal;
  FUnidades := nil;
  Verificacao;
end;

procedure TFProdutos.RadioButton2Click(Sender: TObject);
const
  SQL = 'SELECT * FROM PRODUTOS ';
begin
  TbProdutos.Close;
  if sender = RadioButton2 then
    TbProdutos.SelectSQL.Text := SQL + 'ORDER BY CODPRODUTO'
  else  
    TbProdutos.SelectSQL.Text := SQL + 'ORDER BY NOME';
  TbProdutos.Open;
  Edit1.Clear;
end;

procedure TFProdutos.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    exit;
  if RadioButton2.Checked then
    try
      TbProdutos.Locate('CODPRODUTO', StrToInt (Edit1.Text), []);
    except
      MessageDlg('Digite somente números para busca!', mtError, [MbOK], 0);
    end
  else
    TbProdutos.Locate('NOME', Edit1.Text, [loPartialKey, loCaseInsensitive])
end;

procedure TFProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbProdutos.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbProdutos.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbProdutos.State in [dsbrowse]) then
    TbProdutos.First
  else if (Key = 35) and (TbProdutos.State in [dsbrowse]) then
    TbProdutos.Last
  else if Key = vk_F1 then
    AbreAjuda;
end;

procedure TFProdutos.Produtos1Click(Sender: TObject);
begin
  if VerificarPermissao('PRODUTOS', 'REL', 1) then begin
    Application.CreateForm(TFRelProduto, FRelProduto);
    FRelProduto.ShowModal;
    FRelProduto := nil;
  end;
end;

procedure TFProdutos.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryTipoClassLK.FetchAll;
end;

procedure TFProdutos.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryUnidadesLK.FetchAll;
end;

procedure TFProdutos.DSProdutosDataChange(Sender: TObject; Field: TField);
begin
  DataChange;
end;

end.
