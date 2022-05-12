unit UCondPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBTable;

type
  TFCondPgto = class(TForm)
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
    Label1: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Relatrios1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    DSCondPgto: TDataSource;
    TbCondPgto: TIBDataSet;
    TbCondPgtoCODCONDPGTO: TIntegerField;
    TbCondPgtoNOME: TIBStringField;
    TbCondPgtoPRAZO1: TSmallintField;
    TbCondPgtoPRAZO2: TSmallintField;
    TbCondPgtoPRAZO3: TSmallintField;
    TbCondPgtoPRAZO4: TSmallintField;
    TbCondPgtoPRAZO5: TSmallintField;
    TbCondPgtoPRAZO6: TSmallintField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure DSCondPgtoStateChange(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CondiesdePagamento1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCondPgto: TFCondPgto;

implementation

uses UDados, URelCondPgto;

{$R *.dfm}

procedure TFCondPgto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFCondPgto.BitBtnSairClick(Sender: TObject);
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição da condição de pagamento '+
    TbCondPgto.FieldByName('NOME').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      TbCondPgto.Cancel;
end;

procedure TFCondPgto.DSCondPgtoStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbCondPgto.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Condição de Pagamento';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar Condição de Pagamento';
  end;
end;

procedure TFCondPgto.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('CONDIÇÕES DE PAGAMENTO', 'EDI', 1) then begin
    TbCondPgto.Append;
    DBEdit3.SetFocus;
  end;
end;

procedure TFCondPgto.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('CONDIÇÕES DE PAGAMENTO', 'EDI', 1) and  (not TbCondPgto.IsEmpty) then
    TbCondPgto.Edit;
end;

procedure TFCondPgto.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('CONDIÇÕES DE PAGAMENTO', 'EXC', 1) and (not TbCondPgto.IsEmpty) and
    (MessageDlg('Deseja excluir a condição de pagamento '+
       TbCondPgto.FieldByName('NOME').AsString +' ?', mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
    TbCondPgto.Delete;
    Dados.ConfirmaTrans(true);
  end;
end;

procedure TFCondPgto.BitBtnGravarClick(Sender: TObject);
begin
  if TbCondPgtoNOME.IsNull then begin
    MessageDlg('Especifique um nome para condição de pagamento!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end else if TbCondPgtoPRAZO1.IsNull then begin
    MessageDlg('Especifique um prazo para a primeira condição de pagamento!', mtWarning, [mbOk], 0);
    DBEdit2.SetFocus;
  end else
    try
      if TbCondPgtoPRAZO2.IsNull then
        TbCondPgtoPRAZO2.Value := 0;
      if TbCondPgtoPRAZO3.IsNull then
        TbCondPgtoPRAZO3.Value := 0;
      if TbCondPgtoPRAZO4.IsNull then
        TbCondPgtoPRAZO4.Value := 0;
      if TbCondPgtoPRAZO5.IsNull then
        TbCondPgtoPRAZO5.Value := 0;
      if TbCondPgtoPRAZO6.IsNull then
        TbCondPgtoPRAZO6.Value := 0;
      TbCondPgto.Post;
      Dados.ConfirmaTrans(True);
      MessageDlg(TbCondPgtoNOME.Value +' editado com sucesso!', mtInformation, [MbOk], 0);
    except
      TbCondPgto.Cancel;
      Dados.ConfirmaTrans(False);
      MessageDlg('Erro ao editar '+TbCondPgtoNOME.Value +'!', mtError, [MbOk], 0);
    end;
end;

procedure TFCondPgto.FormCreate(Sender: TObject);
begin
  if VerificarPermissao('CONDIÇÕES DE PAGAMENTO', 'CONS', 1) then 
    TbCondPgto.Open;
end;

procedure TFCondPgto.CondiesdePagamento1Click(Sender: TObject);
begin
  if VerificarPermissao('CONDIÇÕES DE PAGAMENTO', 'REL', 1) then begin
    Application.CreateForm(TFRelCondPgto, FRelCondPgto);
    FRelCondPgto.ShowModal;
    FRelCondPgto := nil;
  end;
end;

procedure TFCondPgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dados.QryCondPgtoLK.Close;
  Dados.QryCondPgtoLK.UnPrepare;
  Dados.QryCondPgtoLK.Prepare;
  Dados.QryCondPgtoLK.Open;
  Action := caFree;
end;

procedure TFCondPgto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
