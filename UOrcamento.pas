unit UOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, ComCtrls, DB, IBCustomDataSet, IBDatabase, OleServer, Word2000,
  IBQuery, OleCtrls, SHDocVw, CustomizeDlg;

type
  TFOrcamento = class(TForm)
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Clientes1: TMenuItem;
    Relatrios1: TMenuItem;
    Vendas1: TMenuItem;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label29: TLabel;
    DBEdit27: TDBEdit;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBMemo2: TDBMemo;
    Label30: TLabel;
    GroupBox1: TGroupBox;
    BitNovoIt: TBitBtn;
    BitAlterarIt: TBitBtn;
    BitExcluirIt: TBitBtn;
    DBGrid1: TDBGrid;
    BitDescricaoit: TBitBtn;
    N1: TMenuItem;
    RadioButton3: TRadioButton;
    SpeedButton3: TSpeedButton;
    TransactionOrc: TIBTransaction;
    TbOrcamento: TIBDataSet;
    TbItensOrcamento: TIBDataSet;
    DSOrcamento: TDataSource;
    DSItensOrcamento: TDataSource;
    TbItensOrcamentoCODORCAMENTO: TIntegerField;
    TbItensOrcamentoNROITEM: TIntegerField;
    TbItensOrcamentoCODPRODUTO: TIntegerField;
    TbItensOrcamentoQUANT: TIBBCDField;
    TbItensOrcamentoVLRUNIT: TIBBCDField;
    TbItensOrcamentoDESCRICAO: TMemoField;
    TbItensOrcamentoINCLUIRORC: TSmallintField;
    TbItensOrcamentoVLRTOTAL: TCurrencyField;
    TbItensOrcamentoPRODUTO: TStringField;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Panel4: TPanel;
    DBMemo3: TDBMemo;
    BitBtn2: TBitBtn;
    QryAux: TIBQuery;
    GBCli: TGroupBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PopupMenu1: TPopupMenu;
    GerarHTML1: TMenuItem;
    Oramento1: TMenuItem;
    GerarHTML2: TMenuItem;
    TbOrcamentoCODORCAMENTO: TIntegerField;
    TbOrcamentoDATAORCAMENTO: TDateField;
    TbOrcamentoCODCLIGEN: TIntegerField;
    TbOrcamentoDATACONTATOCLIENTE: TDateField;
    TbOrcamentoCONTATO: TIBStringField;
    TbOrcamentoCONDPGTO: TIBStringField;
    TbOrcamentoPRAZOENTREGA: TIBStringField;
    TbOrcamentoPORCONTACLIENTE: TIBStringField;
    TbOrcamentoOBS: TMemoField;
    SpeedButton2: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitNovoItClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure BitDescricaoitClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DSOrcamentoStateChange(Sender: TObject);
    procedure TbItensOrcamentoCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitAlterarItClick(Sender: TObject);
    procedure BitExcluirItClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DSOrcamentoDataChange(Sender: TObject; Field: TField);
    procedure BitBtn4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn4KeyPress(Sender: TObject; var Key: Char);
    procedure GerarHTML2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FOrcamento: TFOrcamento;

implementation

uses UItensOrcamento, UDados, ULocOrc, UGenerico, URelORCOC, URelGeraOrc;

{$R *.dfm}

procedure TFOrcamento.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 15);
end;

procedure TFOrcamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil)
end;

procedure TFOrcamento.BitNovoItClick(Sender: TObject);
var
  vlProxNum: Integer;
begin
  TbItensOrcamento.Last;
  vlProxNum := TbItensOrcamentoNROITEM.Value;
  TbItensOrcamento.Append;
  TbItensOrcamentoCODORCAMENTO.Value := TbOrcamentoCODORCAMENTO.Value;
  TbItensOrcamentoNROITEM.Value := vlProxNum + 1;
  TbItensOrcamentoINCLUIRORC.Value := 1;
  Application.CreateForm(TFItensOrcamento, FItensOrcamento);
  FItensOrcamento := nil;
  Verificacao;
end;

procedure TFOrcamento.BitBtnSairClick(Sender: TObject);
var
  vlCodAtual: Integer;
begin
  if BitBtnNovo.Enabled then
    Close
  else
    if MessageDlg('Deseja cancelar a edição do orçamento nº '+
      TbOrcamento.FieldByName('CODORCAMENTO').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then begin
      vlCodAtual := TbOrcamentoCODORCAMENTO.Value;
      TransactionOrc.RollbackRetaining;
      TbOrcamento.Close;
      TbItensOrcamento.Close;
      TbOrcamento.Open;
      TbItensOrcamento.Open;
      TbOrcamento.Locate('CODORCAMENTO', vlCodAtual, []);
    end;
    PageControl1.ActivePage := TabSheet1;
end;

procedure TFOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFOrcamento.FormCreate(Sender: TObject);
procedure VerificarCliente;
begin
  if not VerificarPermissao('CLIENTES', 'CONS', 0) then begin
    SpeedButton1.Enabled := False;
    Clientes1.Enabled := False;
  end;
end;
begin
  if VerificarPermissao('ORÇAMENTOS', 'CONS', 1) then begin
    VerificarCliente;
    TbOrcamento.Open;
    TbItensOrcamento.Open;
    Label3.Caption := '';
  end;
end;

procedure TFOrcamento.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('ORÇAMENTOS', 'EDI', 1) then begin
    GBCli.Left := 1;
    GBCli.Top := 54;
    GBCli.Visible := True;
    Verificacao;
    DBLookupComboBox2.SetFocus;
  end;
end;

procedure TFOrcamento.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('ORÇAMENTOS', 'EDI', 1) then begin
    if not TbOrcamento.IsEmpty then begin
      TbOrcamento.Edit;
      Verificacao;
    end;
  end;
end;

procedure TFOrcamento.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('ORÇAMENTOS', 'EXC', 1) then begin
    if (not TbOrcamento.IsEmpty) and (MessageDlg('Deseja excluir o orçamento '+
     TbOrcamento.FieldByName('CODORCAMENTO').AsString +' ?', mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
      TbItensOrcamento.First;
      while not TbItensOrcamento.Eof do
        TbItensOrcamento.Delete;
      TbOrcamento.Delete;
      TransactionOrc.CommitRetaining;
    end;
  end;
end;

procedure TFOrcamento.Vendas1Click(Sender: TObject);
begin
  if VerificarPermissao('ORÇAMENTOS', 'REL', 1) then begin
    Dados.vgTipoRel := 1;
    Application.CreateForm(TFRelORCOC, FRelORCOC);
    FRelORCOC := nil;
  end;
end;

procedure TFOrcamento.BitDescricaoitClick(Sender: TObject);
begin
  if VerificarPermissao('ORÇAMENTOS', 'EDI', 1) then begin
    Panel4.Top := 123;
    Panel4.Left := 166;
    Panel4.Visible := true;
    Panel2.Enabled := not Panel4.Visible;
    Panel1.Enabled := Panel2.Enabled;
  end;
  Verificacao;
end;

procedure TFOrcamento.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryClientesLK.FetchAll;
end;

procedure TFOrcamento.SpeedButton1Click(Sender: TObject);
begin
  Dados.vgGenerica := 1;
  Application.CreateForm(TFGenerico, FGenerico);
  if sender <> SpeedButton2 then
    FGenerico.TbGenerico.Locate('CODCADGEN', TbOrcamentoCODCLIGEN.Value, [])
  else if DBLookupComboBox2.KeyValue <> 0 then
    FGenerico.TbGenerico.Locate('CODCADGEN', DBLookupComboBox2.KeyValue, []);
  FGenerico.ShowModal;
  FGenerico := nil;
  if sender = SpeedButton2 then
    TransactionOrc.CommitRetaining;
  Verificacao;

end;

procedure TFOrcamento.BitBtnGravarClick(Sender: TObject);
begin
  if TbOrcamentoDATACONTATOCLIENTE.IsNull then begin
    MessageDlg('Especifique a data de contato com o cliente deste orçamento!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit11.SetFocus;
  end else if DBLookupComboBox1.Text = '' then begin
    MessageDlg('Especifique o cliente deste orçamento!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBLookupComboBox1.SetFocus;
  end else if TbOrcamentoCONTATO.IsNull then begin
    MessageDlg('Especifique o contato deste orçamento!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit10.SetFocus;
  end else if TbOrcamentoCONDPGTO.IsNull then begin
    MessageDlg('Especifique a condição de pagamento deste orçamento!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit14.SetFocus;
  end else if TbOrcamentoPRAZOENTREGA.IsNull then begin
    MessageDlg('Especifique o prazo de entrega deste orçamento!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit27.SetFocus;
  end else if TbItensOrcamento.RecNo = 0 then begin
    MessageDlg('Especifique os itens deste orçamento!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet2;
    BitNovoItClick(nil);
  end else
  try
    TbOrcamento.Post;
    TransactionOrc.CommitRetaining;
    MessageDlg('Orçamento nº '+ TbOrcamento.FieldByName('CODORCAMENTO').AsString +' editada com sucesso!',
      mtInformation, [MbOk], 0);
  except
    TbOrcamento.Cancel;
    TransactionOrc.RollbackRetaining;
    MessageDlg('Erro ao incluir o orçamento nº '+ TbOrcamento.FieldByName('CODORCAMENTO').AsString +'!',
      mtError, [MbOk], 0);
  end;

end;

procedure TFOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbOrcamento.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbOrcamento.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbOrcamento.State in [dsbrowse]) then
    TbOrcamento.First
  else if (Key = 35) and (TbOrcamento.State in [dsbrowse]) then
    TbOrcamento.Last
  else if Key = vk_F1 then
    AbreAjuda;
end;

procedure TFOrcamento.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    exit;
  if RadioButton2.Checked then
    try
      TbOrcamento.Locate('CODORCAMENTO', StrToInt (Edit1.Text), []);
    except
      MessageDlg('Digite somente números para busca!', mtError, [MbOK], 0);
    end
  else if RadioButton1.Checked then begin
    Dados.QryClientesLK.Locate('NOME', Edit1.Text, [loPartialKey, loCaseInsensitive]);
    TbOrcamento.Locate('CODCLIGEN', Dados.QryClientesLK.FieldByName('CODCADGEN').AsInteger, []);
  end else
    TbOrcamento.Locate('CONTATO', Edit1.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TFOrcamento.RadioButton2Click(Sender: TObject);
var
  vlCodOrc: Integer;
const
  SQL = 'SELECT * FROM ORCAMENTOS ';
begin
  vlCodOrc := TbOrcamentoCODORCAMENTO.Value;
  TbOrcamento.Close;
  if sender = RadioButton1 then
    TbOrcamento.SelectSQL.Text := SQL + 'ORDER BY CODORCAMENTO'
  else if sender = RadioButton2 then
    TbOrcamento.SelectSQL.Text := SQL + 'ORDER BY CODCLIGEN'
  else
    TbOrcamento.SelectSQL.Text := SQL + 'ORDER BY CONTATO';
  TbOrcamento.Open;
  TbOrcamento.Locate('CODORCAMENTO', vlCodOrc, []);
  Edit1.Clear;
end;

procedure TFOrcamento.DSOrcamentoStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbOrcamento.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Oramento1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Orçamentos';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição do Orçamento';
  end;
end;

procedure TFOrcamento.TbItensOrcamentoCalcFields(DataSet: TDataSet);
begin
  if (not TbItensOrcamentoQUANT.IsNull) and (not TbItensOrcamentoVLRUNIT.IsNull) then
    TbItensOrcamentoVLRTOTAL.Value := TbItensOrcamentoQUANT.Value *
      TbItensOrcamentoVLRUNIT.Value;
end;

procedure TFOrcamento.BitBtn1Click(Sender: TObject);
begin
  QryAux.SQL.Text := 'select sum(IO.vlrunit * IO.quant) from itensorcamentos IO '+
    'where IO.codorcamento = :vlcodorc';
  QryAux.ParamByName('vlcodorc').AsInteger := TbOrcamentoCODORCAMENTO.Value;
  QryAux.Prepare;
  QryAux.Open;
  Label3.Caption := 'R$ ' + FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);
  QryAux.Close;
  QryAux.UnPrepare;
end;

procedure TFOrcamento.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  Label3.Caption := '';
end;

procedure TFOrcamento.BitBtn2Click(Sender: TObject);
begin
  Panel4.Visible := False;
  Panel2.Enabled := not Panel4.Visible;
  Panel1.Enabled := Panel2.Enabled;
end;

procedure TFOrcamento.BitAlterarItClick(Sender: TObject);
begin
  if not TbItensOrcamento.IsEmpty then begin
    TbItensOrcamento.Edit;
    Application.CreateForm(TFItensOrcamento, FItensOrcamento);
    FItensOrcamento := nil;
    Verificacao;
  end;
end;

procedure TFOrcamento.BitExcluirItClick(Sender: TObject);
begin
  if (MessageDlg('Deseja excluir o produto '+ TbItensOrcamentoPRODUTO.Value +' deste orçamento?',
   mtConfirmation, [mbYes, MbNo], 0) = IDYES) and (not TbItensOrcamento.IsEmpty) then begin
    TbItensOrcamento.Delete;
    Verificacao;
  end;
end;

procedure TFOrcamento.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFLocOrc, FLocOrc);
  FLocOrc := nil;
end;

procedure TFOrcamento.DSOrcamentoDataChange(Sender: TObject;
  Field: TField);
var
  vlEnabled: Boolean;
begin
  if not (TbOrcamentoCODCLIGEN.IsNull) and (TbOrcamento.State in [dsedit, dsinsert]) then
    vlEnabled := true
  else
    vlEnabled := false;
  BitNovoIt.Enabled := vlEnabled;
  BitAlterarIt.Enabled := vlEnabled;
  BitExcluirIt.Enabled := vlEnabled;
  if TbItensOrcamento.IsEmpty then
    BitDescricaoit.Enabled := false
  else
    BitDescricaoit.Enabled := True;
end;

procedure TFOrcamento.BitBtn4Click(Sender: TObject);
begin
  if DBLookupComboBox2.KeyValue = 0 then begin
    MessageDlg('Especifique o cliente deste orçamento!', mtWarning, [MbOk], 0);
    DBLookupComboBox2.SetFocus;
  end else begin
    TbOrcamento.Append;  
    GBCli.Visible := False;
    TbOrcamentoDATAORCAMENTO.Value := Date;
    TbOrcamentoCODCLIGEN.Value := StrToInt(DBLookupComboBox2.KeyValue);
    PageControl1.ActivePage := TabSheet1;
    TbOrcamento.Post;
    TbOrcamento.Edit;
    Label3.Caption := '';
    DBEdit11.SetFocus;
  end;
end;

procedure TFOrcamento.PageControl1Change(Sender: TObject);
begin
  if GBCli.Visible then
    PageControl1.ActivePage := TabSheet1;
end;

procedure TFOrcamento.BitBtn4KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) and not(GBCli.Visible) then
    Close;
end;

procedure TFOrcamento.GerarHTML2Click(Sender: TObject);
begin
  if VerificarPermissao('ORÇAMENTOS', 'EDI', 1) then begin
    Application.CreateForm(TFRelGeraOrc, FRelGeraOrc);
    FRelGeraOrc.ShowModal;
    FRelGeraOrc := nil;
  end;                 
end;

procedure TFOrcamento.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a edição do orçamento?',
   mtConfirmation, [mbYes, mbNo], 0) = IDYES then
    GBCli.Visible := False;
end;

end.
