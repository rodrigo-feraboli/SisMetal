unit UEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBTable;

type
  TFEstados = class(TForm)
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
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Relatrios1: TMenuItem;
    Estados1: TMenuItem;
    DSEstados: TDataSource;
    TbEstados: TIBDataSet;
    TbEstadosCODESTADO: TIntegerField;
    TbEstadosNOME: TIBStringField;
    TbEstadosUF: TIBStringField;
    TbEstadosPERCICMS: TSmallintField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure DSEstadosStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Estados1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstados: TFEstados;

implementation

uses UDados, URelEstados;

{$R *.dfm}

procedure TFEstados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFEstados.BitBtnSairClick(Sender: TObject);
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição do estado '+
    TbEstados.FieldByName('NOME').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      TbEstados.Cancel;
end;

procedure TFEstados.Sair1Click(Sender: TObject);
begin
  BitBtnSairClick(nil);
end;

procedure TFEstados.FormCreate(Sender: TObject);
begin
  if VerificarPermissao('ESTADOS', 'CONS', 1) then 
    TbEstados.Open;
end;

procedure TFEstados.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('ESTADOS', 'EDI', 1) then begin
    TbEstados.Append;
    DBEdit2.SetFocus;
  end;
end;

procedure TFEstados.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('ESTADOS', 'EDI', 1) and (not TbEstados.IsEmpty) then begin
    TbEstados.Edit;
    DBEdit2.SetFocus;
  end;
end;

procedure TFEstados.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('ESTADOS', 'EXC', 1) and (not TbEstados.IsEmpty) and
    (MessageDlg('Deseja excluir o estado '+ TbEstados.FieldByName('NOME').AsString +' ?',
      mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
    TbEstados.Delete;
    Dados.ConfirmaTrans(true);
  end;
end;

procedure TFEstados.BitBtnGravarClick(Sender: TObject);
begin
  if TbEstadosNOME.IsNull then begin
    MessageDlg('Especifique um nome para o estado!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
  end else if (TbEstadosUF.IsNull) then begin
    MessageDlg('Especifique um UF para o estado!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end else if TbEstadosPERCICMS.IsNull then begin
    MessageDlg('Especifique o percentual de ICMS para o estado!', mtWarning, [mbOk], 0);
    DBEdit4.SetFocus;
  end else
    try
      TbEstados.Post;
      Dados.ConfirmaTrans(True);
      MessageDlg(TbEstadosNOME.Value +' editado com sucesso!', mtInformation, [MbOk], 0);
    except
      TbEstados.Cancel;
      Dados.ConfirmaTrans(False);
      MessageDlg('Erro ao editar '+TbEstadosNOME.Value +'!', mtError, [MbOk], 0);
    end;
end;

procedure TFEstados.DSEstadosStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbEstados.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do Cadastro de Estados';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar Estado';
  end;
end;

procedure TFEstados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dados.QryEstadosLK.Close;
  Dados.QryEstadosLK.UnPrepare;
  Dados.QryEstadosLK.Prepare;
  Dados.QryEstadosLK.Open;
  Action := caFree;
end;

procedure TFEstados.Estados1Click(Sender: TObject);
begin
  if VerificarPermissao('ESTADOS', 'REL', 1) then begin
    Application.CreateForm(TFRelEstados, FRelEstados);
    FRelEstados.ShowModal;
    FRelEstados := nil;
  end
end;

procedure TFEstados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbEstados.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbEstados.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbEstados.State in [dsbrowse]) then
    TbEstados.First
  else if (Key = 35) and (TbEstados.State in [dsbrowse]) then
    TbEstados.Last
  else if Key = vk_F1 then
    AbreAjuda;    
end;

end.
