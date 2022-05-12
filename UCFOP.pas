unit UCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBTable, IBEvents;

type
  TFCFOP = class(TForm)
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
    CFOP1: TMenuItem;
    DSCFOP: TDataSource;
    TbCFOP: TIBDataSet;
    TbCFOPCODCFOP: TIntegerField;
    TbCFOPNOME: TIBStringField;
    TbCFOPCFOP: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure DSCFOPStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCFOP: TFCFOP;

implementation

uses UDados, URelCFOP;

{$R *.dfm}

procedure TFCFOP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFCFOP.BitBtnSairClick(Sender: TObject);
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição da natureza de operação '+
    TbCFOP.FieldByName('NOME').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      TbCFOP.Cancel;
end;

procedure TFCFOP.DSCFOPStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbCFOP.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de CFOP';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar CFOP';
  end;
end;

procedure TFCFOP.FormCreate(Sender: TObject);
begin
  if VerificarPermissao('CFOP', 'CONS', 1) then
    TbCFOP.Open;
end;

procedure TFCFOP.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('CFOP', 'EDI', 1) then begin
    TbCFOP.Append;
    DBEdit2.SetFocus;
  end;
end;

procedure TFCFOP.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('CFOP', 'EDI', 1) and (not TbCFOP.IsEmpty) then
    TbCFOP.Edit;
end;

procedure TFCFOP.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('CFOP', 'EXC', 1)  and (not TbCFOP.IsEmpty) and
    (MessageDlg('Deseja excluir a natureza de operação '+ TbCFOP.FieldByName('NOME').AsString +' ?',
      mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
    TbCFOP.Delete;
    Dados.ConfirmaTrans(true);
  end;
end;

procedure TFCFOP.BitBtnGravarClick(Sender: TObject);
begin
  if TbCFOPNOME.IsNull then begin
    MessageDlg('Especifique um nome para a CFOP!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
  end else if TbCFOPCFOP.IsNull then begin
    MessageDlg('Especifique um código CFOP para o CFOP!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end else
    try
      TbCFOP.Post;
      Dados.ConfirmaTrans(True);
      MessageDlg(TbCFOPNOME.Value +' editado com sucesso!', mtInformation, [MbOk], 0);
    except
      TbCFOP.Cancel;
      Dados.ConfirmaTrans(False);
      MessageDlg('Erro ao editar '+TbCFOPNOME.Value +'!', mtError, [MbOk], 0);
    end;
end;

procedure TFCFOP.CFOP1Click(Sender: TObject);
begin
  if VerificarPermissao('CFOP', 'REL', 1) then begin
    Application.CreateForm(TFRelCFOP, FRelCFOP);
    FRelCFOP.ShowModal;
    FRelCFOP := nil;
  end;
end;

procedure TFCFOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dados.QryCFOPLK.Close;
  Dados.QryCFOPLK.UnPrepare;
  Dados.QryCFOPLK.Prepare;
  Dados.QryCFOPLK.Open;
  Action := caFree;
end;

procedure TFCFOP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.


