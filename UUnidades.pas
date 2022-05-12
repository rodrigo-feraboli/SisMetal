unit UUnidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBTable;

type
  TFUnidades = class(TForm)
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
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Relatrios1: TMenuItem;
    Unidades1: TMenuItem;
    DSUnidades: TDataSource;
    TbUnidades: TIBDataSet;
    TbUnidadesCODUNIDADES: TIntegerField;
    TbUnidadesNOME: TIBStringField;
    TbUnidadesABREV: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSUnidadesStateChange(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure Unidades1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnidades: TFUnidades;

implementation

uses UDados, URelUnidades;

{$R *.dfm}

procedure TFUnidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFUnidades.BitBtnSairClick(Sender: TObject);
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição da unidade '+
    TbUnidades.FieldByName('NOME').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      TbUnidades.Cancel;
end;

procedure TFUnidades.FormCreate(Sender: TObject);
begin
  if VerificarPermissao('UNIDADES', 'CONS', 1) then 
    TbUnidades.Open;
end;

procedure TFUnidades.DSUnidadesStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbUnidades.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;  
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do Cadastro de Unidades';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição de Unidade';
  end;
end;

procedure TFUnidades.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('UNIDADES', 'EDI', 1) then begin
    TbUnidades.Append;
    DBEdit2.SetFocus;
  end;
end;

procedure TFUnidades.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('UNIDADES', 'EDI', 1) and (not TbUnidades.IsEmpty) then
    TbUnidades.Edit;
end;

procedure TFUnidades.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('UNIDADES', 'EXC', 1) and (not TbUnidades.IsEmpty) and (
    MessageDlg('Deseja excluir a unidade '+ TbUnidades.FieldByName('NOME').AsString +' ?',
      mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
    TbUnidades.Delete;
    Dados.ConfirmaTrans(true);
  end;
end;

procedure TFUnidades.BitBtnGravarClick(Sender: TObject);
begin
  if TbUnidadesNOME.IsNull then begin
    MessageDlg('Especifique um nome para a unidade!', mtWarning, [MbOk], 0);
    DBEdit2.SetFocus;
  end else if TbUnidadesABREV.IsNull then begin
    MessageDlg('Especifique a abreviação!', mtWarning, [MbOk], 0);
    DBEdit3.SetFocus;
  end else
    try
      TbUnidades.Post;
      Dados.ConfirmaTrans(True);
      MessageDlg(TbUnidadesNOME.Value +' editado com sucesso!', mtInformation, [MbOk], 0);
    except
      TbUnidades.Cancel;
      Dados.ConfirmaTrans(False);
      MessageDlg('Erro ao editar '+TbUnidadesNOME.Value +'!', mtError, [MbOk], 0);
    end;
end;

procedure TFUnidades.Unidades1Click(Sender: TObject);
begin
  if VerificarPermissao('UNIDADES', 'REL', 1) then begin
    Application.CreateForm(TFRelUnidades, FRelUnidades);
    FRelUnidades.ShowModal;
    FRelUnidades := nil;
  end;
end;

procedure TFUnidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dados.QryUnidadesLK.Close;
  Dados.QryUnidadesLK.UnPrepare;
  Dados.QryUnidadesLK.Prepare;
  Dados.QryUnidadesLK.Open;   
  Action := caFree;
end;

procedure TFUnidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbUnidades.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbUnidades.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbUnidades.State in [dsbrowse]) then
    TbUnidades.First
  else if (Key = 35) and (TbUnidades.State in [dsbrowse]) then
    TbUnidades.Last
  else if Key = vk_F1 then
    AbreAjuda;
end;

end.
