unit UOrdemCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, ComCtrls, DB, IBDatabase, IBCustomDataSet;

type
  TFOrdemCompra = class(TForm)
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
    Label9: TLabel;
    Label10: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Fornecedores1: TMenuItem;
    Relatrios1: TMenuItem;
    Vendas1: TMenuItem;
    N1: TMenuItem;
    SpeedButton3: TSpeedButton;
    TbOC: TIBDataSet;
    TbItensOC: TIBDataSet;
    TransactionOC: TIBTransaction;
    DSOC: TDataSource;
    DSItensOC: TDataSource;
    TbItensOCCODORDEMCOMPRA: TIntegerField;
    TbItensOCNROITEM: TIntegerField;
    TbItensOCCODPRODUTO: TIntegerField;
    TbItensOCQUANT: TIBBCDField;
    TbItensOCVLRUNIT: TIBBCDField;
    TbItensOCProduto: TStringField;
    Label2: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    Label11: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit27: TDBEdit;
    DBMemo2: TDBMemo;
    GroupBox1: TGroupBox;
    BitOCNew: TBitBtn;
    BitOCEdit: TBitBtn;
    BitOCDel: TBitBtn;
    DBGrid1: TDBGrid;
    TbItensOCVlrTot: TCurrencyField;
    GBForn: TGroupBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    TbOCCODORDEMCOMPRA: TIntegerField;
    TbOCDATAORDEMCOMPRA: TDateField;
    TbOCCODFORNGEN: TIntegerField;
    TbOCCONTATO: TIBStringField;
    TbOCPRAZOENTREGA: TIBStringField;
    TbOCOBS: TMemoField;
    SpeedButton2: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitOCNewClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure DSOCStateChange(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitOCEditClick(Sender: TObject);
    procedure BitOCDelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure TbItensOCCalcFields(DataSet: TDataSet);
    procedure DSOCDataChange(Sender: TObject; Field: TField);
    procedure Edit1Change(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FOrdemCompra: TFOrdemCompra;

implementation

uses UItensOrcamento, UItensOrdemCompra, UDados, ULocOC,
  UGenerico, URelORCOC;

{$R *.dfm}

procedure TFOrdemCompra.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 14);
end;

procedure TFOrdemCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) and not(GBForn.Visible) then
    Close;
end;

procedure TFOrdemCompra.BitOCNewClick(Sender: TObject);
var
  vlProxNum: Integer;
begin
  TbItensOC.Last;
  vlProxNum := TbItensOCNROITEM.Value;
  TbItensOC.Append;
  TbItensOCCODORDEMCOMPRA.Value := TbOCCODORDEMCOMPRA.Value;
  TbItensOCNROITEM.Value := vlProxNum + 1;
  Application.CreateForm(TFItensOrdemCompra, FItensOrdemCompra);
  FItensOrdemCompra := nil;
  Verificacao;
end;

procedure TFOrdemCompra.BitBtnSairClick(Sender: TObject);
var
  vlCodAtual: Integer;
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição da ordem de compra nº '+
    TbOC.FieldByName('CODORDEMCOMPRA').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then begin
      vlCodAtual := TbOCCODORDEMCOMPRA.Value;
      TransactionOC.RollbackRetaining;
      TbOC.Close;
      TbItensOC.Close;
      TbOC.Open;
      TbItensOC.Open;
      TbOC.Locate('CODORDEMCOMPRA', vlCodAtual, []);
  end;
end;

procedure TFOrdemCompra.Sair1Click(Sender: TObject);
begin
  BitBtnSairClick(nil);
end;

procedure TFOrdemCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFOrdemCompra.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('ORDENS DE COMPRA', 'EDI', 1) then begin
    GBForn.Left := 1;
    GBForn.Top := 54;
    GBForn.Visible := True;
    Verificacao;
  end;
end;

procedure TFOrdemCompra.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('ORDENS DE COMPRA', 'EDI', 1) then begin
    if not TbOC.IsEmpty then
      TbOC.Edit;
  end;
end;

procedure TFOrdemCompra.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('ORDENS DE COMPRA', 'EXC', 1) then begin
    if (not TbOC.IsEmpty) and (MessageDlg('Deseja excluir a ordem de compra '+
       TbOC.FieldByName('CODORDEMCOMPRA').AsString +' ?', mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
        TbItensOC.First;
        while not TbItensOC.Eof do
          TbItensOC.Delete;
         TbOC.Delete;
         TransactionOC.CommitRetaining;
    end;
  end;
end;

procedure TFOrdemCompra.FormCreate(Sender: TObject);
procedure VerificarFornec;
begin
  if not VerificarPermissao('FORNECEDORES', 'CONS', 0) then begin
    SpeedButton1.Enabled := false;
    Fornecedores1.Enabled := False;
  end;
end;
begin
  if VerificarPermissao('ORDENS DE COMPRA', 'CONS', 1) then begin
    VerificarFornec;
    TbOC.Open;
    TbItensOC.Open;
    Verificacao;  
    RadioButton2Click(nil);
  end;
end;

procedure TFOrdemCompra.Vendas1Click(Sender: TObject);
begin
  if VerificarPermissao('ORDENS DE COMPRA', 'REL', 1) then begin
    Dados.vgTipoRel := 2;
    Application.CreateForm(TFRelORCOC, FRelORCOC);
    FRelORCOC := nil;
  end;
end;

procedure TFOrdemCompra.DSOCStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbOC.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Ordens de Compra';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição da Ordem de Compra';
  end;
end;

procedure TFOrdemCompra.BitBtnGravarClick(Sender: TObject);
begin
  if TbOCCODFORNGEN.IsNull then begin
    MessageDlg('Especifique o fornecedor desta ordem de compra!', mtWarning, [MbOk], 0);
    DBLookupComboBox1.SetFocus;
  end else if TbOCCONTATO.IsNull then begin
    MessageDlg('Especifique o contato desta ordem de compra!', mtWarning, [MbOk], 0);
    DBEdit10.SetFocus;
  end else if TbOCPRAZOENTREGA.IsNull then begin
    MessageDlg('Especifique o prazo de entrega!', mtWarning, [MbOk], 0);
    DBEdit27.SetFocus;
  end else if TbItensOC.RecNo = 0 then begin
    MessageDlg('Especifique os itens desta ordem de compra!', mtWarning, [MbOk], 0);
    BitOCNewClick(nil);
  end else
  try
    TbOC.Post;
    TransactionOC.CommitRetaining;
    MessageDlg('Ordem de compra nº '+ TbOC.FieldByName('CODORDEMCOMPRA').AsString +' editada com sucesso!',
      mtInformation, [MbOk], 0);
  except
    TbOC.Cancel;
    TransactionOC.RollbackRetaining;
    MessageDlg('Erro ao incluir a ordem de compra nº '+ TbOC.FieldByName('CODORDEMCOMPRA').AsString +'!',
      mtError, [MbOk], 0);
  end;
end;

procedure TFOrdemCompra.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFLocOC, FLocOC);
  FLocOC := nil;
end;

procedure TFOrdemCompra.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil)
end;

procedure TFOrdemCompra.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbOC.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbOC.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbOC.State in [dsbrowse]) then
    TbOC.First
  else if (Key = 35) and (TbOC.State in [dsbrowse]) then
    TbOC.Last;
end;

procedure TFOrdemCompra.BitOCEditClick(Sender: TObject);
begin
  if not TbItensOC.IsEmpty then begin
    TbItensOC.Edit;
    Application.CreateForm(TFItensOrdemCompra, FItensOrdemCompra);
    FItensOrdemCompra := nil;
    Verificacao;
  end;
end;

procedure TFOrdemCompra.BitOCDelClick(Sender: TObject);
begin
  if (MessageDlg('Deseja excluir o produto '+ TbItensOCProduto.Value +' desta ordem de compra?',
   mtConfirmation, [mbYes, MbNo], 0) = IDYES) and (not TbItensOC.IsEmpty) then begin
    TbItensOC.Delete;
    Verificacao;
  end;
end;

procedure TFOrdemCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbOC.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbOC.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbOC.State in [dsbrowse]) then
    TbOC.First
  else if (Key = 35) and (TbOC.State in [dsbrowse]) then
    TbOC.Last
  else if Key = vk_F1 then
    AbreAjuda;
end;

procedure TFOrdemCompra.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryFornecedoresLK.FetchAll;
end;

procedure TFOrdemCompra.TbItensOCCalcFields(DataSet: TDataSet);
begin
  if (not TbItensOCQUANT.IsNull) and (not TbItensOCVLRUNIT.IsNull) then
    TbItensOCVlrTot.Value := TbItensOCQUANT.Value * TbItensOCVLRUNIT.Value;
end;

procedure TFOrdemCompra.DSOCDataChange(Sender: TObject; Field: TField);
var
  vlEnabled: Boolean;
begin
{  if not Dados.QryEstadosLK.Active then
    Dados.ConfirmaTransLK(False, 1);
  if not Dados.QryCidadesLK.Active then
    Dados.ConfirmaTransLK(False, 3);}

  if TbOCCODFORNGEN.IsNull then
    vlEnabled := false
  else
    vlEnabled := true;
  BitOCNew.Enabled := vlEnabled;
  BitOCEdit.Enabled := vlEnabled;
  BitOCDel.Enabled := vlEnabled;
end;

procedure TFOrdemCompra.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    exit;
  if RadioButton2.Checked then
    try
      TbOC.Locate('CODORDEMCOMPRA', StrToInt (Edit1.Text), []);
    except
      MessageDlg('Digite somente números para busca!', mtError, [MbOK], 0);
    end
  else begin
    Dados.QryFornecedoresLK.Locate('NOME', Edit1.Text, [loPartialKey, loCaseInsensitive]);
    TbOC.Locate('CODFORNGEN', Dados.QryFornecedoresLK.FieldByName('CODCADGEN').AsInteger, []);
  end;
end;

procedure TFOrdemCompra.RadioButton2Click(Sender: TObject);
var
  vlOrder: String;
  vlCodOC: Integer;
begin
  Edit1.Clear;
  vlCodOC := TbOCCODORDEMCOMPRA.Value;
  TbOC.Close;
  if RadioButton2.Checked then
    vlOrder := 'order by CODORDEMCOMPRA'
  else
    vlOrder := 'order by CODFORNGEN';
  TbOC.SelectSQL.Text := 'select * from ORDEMCOMPRA '+  vlOrder;
  TbOC.Open;
  TbOC.Locate('CODORDEMCOMPRA', vlCodOC, []);
end;

procedure TFOrdemCompra.SpeedButton1Click(Sender: TObject);
begin
  Dados.vgGenerica := 2;
  Application.CreateForm(TFGenerico, FGenerico);
  if sender <> SpeedButton2 then
    FGenerico.TbGenerico.Locate('CODCADGEN', FGenerico.TbGenericoCODCADGEN.Value, [])
  else if DBLookupComboBox2.KeyValue <> 0 then
    FGenerico.TbGenerico.Locate('CODCADGEN', DBLookupComboBox2.KeyValue, []);
  FGenerico.ShowModal;
  FGenerico := nil;
  if sender = SpeedButton2 then
    TransactionOC.CommitRetaining;
  Verificacao;
end;

procedure TFOrdemCompra.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a edição da ordem de compra?',
   mtConfirmation, [mbYes, mbNo], 0) = IDYES then
    GBForn.Visible := False;
end;

procedure TFOrdemCompra.BitBtn4Click(Sender: TObject);
begin
  if DBLookupComboBox1.KeyValue = 0 then begin
    MessageDlg('Especifique o fornecedor desta ordem de compra!', mtWarning, [MbOk], 0);
    DBLookupComboBox2.SetFocus;
  end else begin
    GBForn.Visible := False;
    TbOC.Append;
    TbOCCODFORNGEN.Value := StrToInt(DBLookupComboBox2.KeyValue);
    TbOCDATAORDEMCOMPRA.Value := Date;
    TbOC.Post;
    TbOC.Edit;
    DBEdit10.SetFocus;
  end;
end;

end.
