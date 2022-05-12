unit UMovEst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBDatabase;

type
  TFMovEst = class(TForm)
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
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Relatrios1: TMenuItem;
    MovimentaodeEstoque1: TMenuItem;
    DBRadioGroup1: TDBRadioGroup;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    N1: TMenuItem;
    Produtos1: TMenuItem;
    TbMovEst: TIBDataSet;
    DsMovEst: TDataSource;
    TbMovEstNROMOV: TIntegerField;
    TbMovEstCODPRODUTO: TIntegerField;
    TbMovEstDATA: TDateField;
    TbMovEstQUANT: TIBBCDField;
    TbMovEstTIPO: TIBStringField;
    TbMovEstOBS: TMemoField;
    TransactionMovEst: TIBTransaction;
    Edit1: TEdit;
    Label6: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    TbMovEstCODVENDA: TIntegerField;
    TbMovEstCODCOMPRA: TIntegerField;
    TbMovEstGERACAO: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure MovimentaodeEstoque1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure DsMovEstStateChange(Sender: TObject);
    procedure BitBtnNovoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnNovoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DsMovEstDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure DataChange;
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FMovEst: TFMovEst;

implementation

uses UDados, UProdutos, URelMovEst;

{$R *.dfm}

procedure TFMovEst.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 9);
end;

procedure TFMovEst.DataChange;
begin
//Code
end;

procedure TFMovEst.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFMovEst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFMovEst.FormCreate(Sender: TObject);
procedure VerificarProdutos;
begin
  if not VerificarPermissao('PRODUTOS', 'CONS', 0) then begin
    SpeedButton1.Enabled := false;
    Produtos1.Enabled := False;
  end;
end;
begin
  if VerificarPermissao('ORDENS DE COMPRA', 'CONS', 1) then begin
    VerificarProdutos;
    TbMovEst.Open
  end;
end;

procedure TFMovEst.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('ORDENS DE COMPRA', 'EDI', 1) then begin
    TbMovEst.Append;
    TbMovEstDATA.Value := Date;
    TbMovEstTIPO.Value := 'E';
    TbMovEstGERACAO.Value := 'M';
    DBLookupComboBox1.SetFocus;
  end;
end;

procedure TFMovEst.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('ORDENS DE COMPRA', 'EDI', 1) then begin
    if not TbMovEst.IsEmpty then
      TbMovEst.Edit;
  end;
end;

procedure TFMovEst.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('MOVIMENTAÇÃO DE ESTOQUE', 'EXC', 1) and (not TbMovEst.IsEmpty) and
    (MessageDlg('Deseja excluir a movimentação de estoque do dia '+ TbMovEst.FieldByName('DATA').AsString +' ?',
    mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
      TbMovEst.Delete;
      TransactionMovEst.CommitRetaining;
  end;
end;

procedure TFMovEst.MovimentaodeEstoque1Click(Sender: TObject);
begin
  if VerificarPermissao('MOVIMENTAÇÃO DE ESTOQUE', 'REL', 1) then begin
    Application.CreateForm (TFRelMovEst, FRelMovEst);
    FRelMovEst := nil;
  end;
end;

procedure TFMovEst.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFProdutos, FProdutos);
  FProdutos.TbProdutos.Locate('CODPRODUTO', TbMovEstCODPRODUTO.Value, []);
  FProdutos.ShowModal;
  FProdutos := nil;
  Verificacao;
end;

procedure TFMovEst.BitBtnSairClick(Sender: TObject);
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a movimentação de estoque do dia '+
   TbMovEst.FieldByName('DATA').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then begin
    TbMovEst.Cancel;
    TransactionMovEst.RollbackRetaining;
  end
end;

procedure TFMovEst.DsMovEstStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbMovEst.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Movimentações de Estoque';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição de Movimentações de Estoque';
  end;
end;

procedure TFMovEst.BitBtnNovoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbMovEst.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbMovEst.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbMovEst.State in [dsbrowse]) then
    TbMovEst.First
  else if (Key = 35) and (TbMovEst.State in [dsbrowse]) then
    TbMovEst.Last;
end;

procedure TFMovEst.BitBtnNovoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFMovEst.BitBtnGravarClick(Sender: TObject);
begin
  if TbMovEstCODPRODUTO.IsNull then begin
    MessageDlg('Especifique um produto para a movimentação de estoque!', mtWarning, [mbOk], 0);
    DBLookupComboBox1.SetFocus;
  end else if TbMovEstQUANT.IsNull then begin
    MessageDlg('Especifique a quantidade para a movimentação de estoque!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end else
  try
    TbMovEst.Post;
    TransactionMovEst.CommitRetaining;
    MessageDlg('Movimentação do dia '+ TbMovEst.FieldByName('DATA').AsString +' gravado com com sucesso!', mtInformation, [MbOk], 0);
  except
    TbMovEst.Cancel;
    TransactionMovEst.RollbackRetaining;
    MessageDlg('Erro ao editar a movimentação do dia'+ TbMovEst.FieldByName('DATA').AsString +'!', mtError, [MbOk], 0);
  end;
end;

procedure TFMovEst.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryProdutosLK.FetchAll;
end;

procedure TFMovEst.DsMovEstDataChange(Sender: TObject; Field: TField);
begin
  Label6.Visible := false;
  if TbMovEstGERACAO.Value = 'M' then begin
    Edit1.visible := Label6.Visible;
    exit;
  end else if TbMovEstGERACAO.Value = 'V' then begin
    Label6.Caption := 'Venda';
    Edit1.Text := TbMovEstCODVENDA.AsString;
  end else begin
    Label6.Caption := 'Compra';
    Edit1.Text := TbMovEstCODCOMPRA.AsString;
  end;
  Label6.Visible := True;
  Edit1.visible := Label6.Visible
end;

procedure TFMovEst.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
