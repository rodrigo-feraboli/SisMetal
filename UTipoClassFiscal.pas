unit UTipoClassFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBTable;

type
  TFTipoClassFiscal = class(TForm)
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
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Relatrios1: TMenuItem;
    iposdeClassificaesFiscais1: TMenuItem;
    DSTipoClass: TDataSource;
    TbTipoClass: TIBDataSet;
    TbTipoClassCODTIPOCLASSFISCAL: TIntegerField;
    TbTipoClassLETRA: TIBStringField;
    TbTipoClassSEQUENCIA: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure DSTipoClassStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure iposdeClassificaesFiscais1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTipoClassFiscal: TFTipoClassFiscal;

implementation

uses UDados, URelTipoClass;

{$R *.dfm}

procedure TFTipoClassFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFTipoClassFiscal.BitBtnSairClick(Sender: TObject);
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição do tipo de classificação fiscal '+
    TbTipoClass.FieldByName('NOME').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      TbTipoClass.Cancel;
end;

procedure TFTipoClassFiscal.Sair1Click(Sender: TObject);
begin
  BitBtnSairClick(nil);
end;

procedure TFTipoClassFiscal.DSTipoClassStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbTipoClass.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;  
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do Cadastro de Classificação Fiscal';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar Tipo de Classificação Fiscal';
  end;
end;

procedure TFTipoClassFiscal.FormCreate(Sender: TObject);
begin
  if VerificarPermissao('TIPOS DE CLASSIFICAÇÃO FISCAL', 'CONS', 1) then 
    TbTipoClass.Open;
end;

procedure TFTipoClassFiscal.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('TIPOS DE CLASSIFICAÇÃO FISCAL', 'EDI', 1) then begin
    TbTipoClass.Append;
    DBEdit2.SetFocus;
  end;
end;

procedure TFTipoClassFiscal.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('TIPOS DE CLASSIFICAÇÃO FISCAL', 'EDI', 1) and (not TbTipoClass.IsEmpty) then
    TbTipoClass.Edit;
end;

procedure TFTipoClassFiscal.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('TIPOS DE CLASSIFICAÇÃO FISCAL', 'EXC', 1) and (not TbTipoClass.IsEmpty) and
    (MessageDlg('Deseja excluir a condição de pagamento '+ TbTipoClass.FieldByName('LETRA').AsString +' ?',
        mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
    TbTipoClass.Delete;
    Dados.ConfirmaTrans(true);
  end;
end;

procedure TFTipoClassFiscal.BitBtnGravarClick(Sender: TObject);
begin
  if TbTipoClassLETRA.IsNull then begin
    MessageDlg('Especifique uma letra para o tipo de classificação fiscal!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
  end else if TbTipoClassSEQUENCIA.IsNull then begin
    MessageDlg('Especifique uma seqüência numérica para a classificação fiscal!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end else
    try
      TbTipoClass.Post;
      Dados.ConfirmaTrans(True);
      MessageDlg(TbTipoClassLETRA.Value +': '+ TbTipoClassSEQUENCIA.Value +' editado com sucesso!',
        mtInformation, [MbOk], 0);
    except
      TbTipoClass.Cancel;
      Dados.ConfirmaTrans(False);
      MessageDlg('Erro ao editar '+ TbTipoClassLETRA.Value +': '+ TbTipoClassSEQUENCIA.Value +'!',
        mtError, [MbOk], 0);
    end;
end;

procedure TFTipoClassFiscal.iposdeClassificaesFiscais1Click(
  Sender: TObject);
begin
  if VerificarPermissao('TIPOS DE CLASSIFICAÇÃO FISCAL', 'REL', 1) then begin
    Application.CreateForm(TFRelTipoClass, FRelTipoClass);
    FRelTipoClass.ShowModal;
    FRelTipoClass := nil;
  end;
end;

procedure TFTipoClassFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Dados.QryTipoClassLK.Close;
  Dados.QryTipoClassLK.UnPrepare;
  Dados.QryTipoClassLK.Prepare;
  Dados.QryTipoClassLK.Open;   
  Action := caFree;
end;

procedure TFTipoClassFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbTipoClass.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbTipoClass.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbTipoClass.State in [dsbrowse]) then
    TbTipoClass.First
  else if (Key = 35) and (TbTipoClass.State in [dsbrowse]) then
    TbTipoClass.Last
  else if Key = vk_F1 then
    AbreAjuda;
end;

procedure TFTipoClassFiscal.DBEdit3Exit(Sender: TObject);
begin
  if Length (TbTipoClassSEQUENCIA.Value) < 8 then begin
    MessageDlg('Especifique uma seqüência numérica completa!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end;
end;

procedure TFTipoClassFiscal.DBEdit2Enter(Sender: TObject);
var
  vlLetra: String;
begin
  try
    vlLetra := TbTipoClassLETRA.Value;
  except
    MessageDlg('Digite somente letras!', mtWarning, [mbOk], 0);
    DBEdit2.Clear;
    DBEdit2.SetFocus;
  end;
end;

end.
