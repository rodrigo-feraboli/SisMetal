unit UCPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, Menus, StdCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, DB, IBCustomDataSet, IBDatabase, IBQuery;

type
  TFCPagar = class(TForm)
    Panel1: TPanel;
    BitBtnAlterar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    RadioButton1: TRadioButton;
    Edit1: TEdit;
    RadioButton3: TRadioButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fornecedores1: TMenuItem;
    N3: TMenuItem;
    Sair1: TMenuItem;
    Relatrios1: TMenuItem;
    FichadoClente1: TMenuItem;
    N1: TMenuItem;
    Clientes1: TMenuItem;
    RadioButton2: TRadioButton;
    Bancos1: TMenuItem;
    CFOP1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    Panel2: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    SpeedButton5: TSpeedButton;
    Label5: TLabel;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    PopupMenu1: TPopupMenu;
    BaixarContaaReceber1: TMenuItem;
    N4: TMenuItem;
    CancelarContaaReceber1: TMenuItem;
    TransactionCP: TIBTransaction;
    DSCPParcs: TDataSource;
    DSCP: TDataSource;
    QryNF: TIBQuery;
    DSNF: TDataSource;
    QryNFCODCFOP: TIntegerField;
    QryNFNROCOMPRA: TIntegerField;
    QryNFDATACOMPRA: TDateField;
    QryNFCODCONDPGTO: TIntegerField;
    QryNFNRONF: TLargeintField;
    QryNFCODFORNGEN: TIntegerField;
    TbCP: TIBDataSet;
    TbCPParcs: TIBDataSet;
    TbCPNROCPAGAR: TIntegerField;
    TbCPNROCOMPRA: TIntegerField;
    TbCPCODBANCO: TIntegerField;
    TbCPCODCONDPGTO: TIntegerField;
    TbCPDATA: TDateField;
    TbCPOBS: TMemoField;
    TbCPParcsNROCPAGAR: TIntegerField;
    TbCPParcsNROPARC: TIntegerField;
    TbCPParcsVCTOPARC: TDateField;
    TbCPParcsVLRPARC: TIBBCDField;
    TbCPParcsPGTOPARC: TDateField;
    TbCPParcsVLRPAGO: TIBBCDField;
    TbCPParcsSITUACAO: TIBStringField;
    TbCPParcsSituacaoStr: TStringField;
    procedure BitBtnSairClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure FichadoClente1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure SituaesdasContasaPagar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DSCPDataChange(Sender: TObject; Field: TField);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure DSCPStateChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BaixarContaaReceber1Click(Sender: TObject);
    procedure TbCPParcsCalcFields(DataSet: TDataSet);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Verificacao;
    procedure Atualizacao;
  public
    { Public declarations }
  end;

var
  FCPagar: TFCPagar;

implementation

uses UDados, UBanco, UCFOP, UCondPgto, ULocCP, UGenerico, UCompras,
  URelCRCP;

{$R *.dfm}

procedure TFCPagar.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 18);
end;

procedure TFCPagar.Atualizacao;
begin
  if (FCompras = nil) and not (TbCP.IsEmpty) then begin
    QryNF.Close;
    QryNF.UnPrepare;
    QryNF.SQL.Text := 'select C.codcfop, C.nrocompra, C.datacompra, C.codcondpgto, C.nronf, '+
      'c.codforngen from Compras  C where C.nrocompra ='+ TbCPNROCOMPRA.AsString ;
    QryNF.Prepare;
    QryNF.Open;
    if QryNF.IsEmpty then begin
      QryNF.Close;
      QryNF.UnPrepare;
    end;
  end;
end;

procedure TFCPagar.BitBtnSairClick(Sender: TObject);
var
  vlCodAtual: Integer;
begin
  if BitBtnAlterar.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição da conta a receber do dia '+
    TbCP.FieldByName('DATA').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then begin
    vlCodAtual := TbCPNROCPAGAR.Value;
    TransactionCP.RollbackRetaining;
    TbCP.Close;
    TbCPParcs.Close;
    TbCP.Open;
    TbCPParcs.Open;
    TbCP.Locate('NROCPAGAR', vlCodAtual, []);
  end;
end;

procedure TFCPagar.Sair1Click(Sender: TObject);
begin
  BitBtnSairClick(nil);
end;

procedure TFCPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    BitBtnSairClick(nil)
end;

procedure TFCPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFCPagar.BitBtnNovoClick(Sender: TObject);
begin
  if not VerificarPermissao('CONTAS A PAGAR', 'EDI', 1) then begin
    // fazer
  end;
end;

procedure TFCPagar.BitBtnAlterarClick(Sender: TObject);
begin
  if not VerificarPermissao('CONTAS A PAGAR', 'EDI', 1) then begin
    if not TbCP.IsEmpty then begin
      TbCP.Edit;
      DBLookupComboBox1.SetFocus;
    end;
  end;
end;

procedure TFCPagar.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('CONTAS A PAGAR', 'EXC', 1) then begin
    if (not TbCP.IsEmpty) and (MessageDlg('Deseja excluir a Conta a Pagar do dia '+
       TbCP.FieldByName('DATA').AsString +' ?', mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
      TbCPParcs.First;
      while not TbCPParcs.Eof do
        TbCPParcs.Delete;
      TbCP.Delete;
    end;
  end;
end;

procedure TFCPagar.FichadoClente1Click(Sender: TObject);
begin
  if not VerificarPermissao('CONTAS A PAGAR', 'REL', 1) then begin
    // fazer
  end;
end;

procedure TFCPagar.Clientes1Click(Sender: TObject);
begin
  if VerificarPermissao('CONTAS A PAGAR', 'REL', 1) then begin
    Dados.vgTipoRel := 1;
    Application.CreateForm(TFRelCRCP, FRelCRCP);
    FRelCRCP.ShowModal;
  end;
end;

procedure TFCPagar.SituaesdasContasaPagar1Click(Sender: TObject);
begin
  if not VerificarPermissao('CONTAS A PAGAR', 'REL', 1) then begin
    // fazer
  end;
end;

procedure TFCPagar.FormCreate(Sender: TObject);
procedure VerificarFornecedor;
begin
  if not VerificarPermissao('FORNECEDORES', 'CONS', 0) then begin
    SpeedButton1.Enabled := False;
    Fornecedores1.Enabled := False;
  end;
end;
procedure VerificarBanco;
begin
  if not VerificarPermissao('BANCOS', 'CONS', 0) then begin
    SpeedButton2.Enabled := False;
    Bancos1.Enabled := False;
  end;
end;
procedure VerificarCFOP;
begin
  if not VerificarPermissao('CFOP', 'CONS', 0) then begin
    SpeedButton5.Enabled := False;
    CFOP1.Enabled := False;
  end;
end;
procedure VerificarCondPgto;
begin
  if not VerificarPermissao('CONDIÇÕES DE PAGAMENTO', 'CONS', 0) then begin
    SpeedButton4.Enabled := False;
    CondiesdePagamento1.Enabled := False;
  end;
end;
begin
  if VerificarPermissao('CONTAS A PAGAR', 'CONS', 1) then begin
    VerificarFornecedor;
    VerificarBanco;
    VerificarCFOP;
    VerificarCondPgto;
    TbCP.Open;
    TbCPParcs.Open;
    Verificacao;
  end;
end;

procedure TFCPagar.RadioButton1Click(Sender: TObject);
const
  SQL = 'SELECT * FROM CPAGAR ';
begin
{  TbCPagar.Close;

VERIFICAR

  if sender = RadioButton1 then
    TbCPagar.SelectSQL.Text := SQL + 'ORDER BY NROCPAGAR'
  else if sender = RadioButton3 then
    TbCPagar.SelectSQL.Text := SQL + 'ORDER BY CODCLIENTE'
  else
    TbCPagar.SelectSQL.Text := SQL + 'ORDER BY CODCLIENTE'
  TbCPagar.Open;
  Edit1.Clear;}
end;

procedure TFCPagar.SpeedButton1Click(Sender: TObject);
begin
//  Algo parecido mas com IBQuery
  Dados.vgGenerica := 2;
  Application.CreateForm(TFGenerico, FGenerico);
//  FFornecedores.TbFornecedores.Locate('CODFORNEC', TbComprasCODFORNEC.Value, []);
  FGenerico.ShowModal;
  Verificacao;
end;

procedure TFCPagar.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFBanco, FBanco);
  FBanco.TbBancos.Locate('CODBANCO', TbCPCODBANCO.Value, []);
  FBanco.ShowModal;
  FBanco := nil;
  Verificacao;
end;

procedure TFCPagar.SpeedButton5Click(Sender: TObject);
begin
//  Algo parecido mas com IBQuery
{  Application.CreateForm(TFCFOP, FCFOP);
  FCFOP.TbCFOP.Locate('CODCFOP', TbCPCODBANCO.Value, []);
  FBanco.ShowModal;}
  Verificacao;
end;

procedure TFCPagar.SpeedButton4Click(Sender: TObject);
begin
//  Algo parecido mas com IBQuery
{  Application.CreateForm(TFCondPgto, FCondPgto);
  FCondPgto.TbCondPgto.Locate('CODCONDPGTO', TbCPCODBANCO.Value, []);
  FCondPgto.ShowModal;}
  Verificacao;
end;

procedure TFCPagar.DSCPDataChange(Sender: TObject; Field: TField);
begin
  Atualizacao;
end;

procedure TFCPagar.BitBtnGravarClick(Sender: TObject);
begin
  if TbCPCODBANCO.IsNull then begin
    MessageDlg('Especifique o banco da conta a pagar!', mtWarning, [MbOk], 0);
    DBLookupComboBox2.SetFocus;
  end else
  try
    TbCP.Post;
    TransactionCP.CommitRetaining;
    MessageDlg('A conta a pagar do dia '+ TbCP.FieldByName('DATA').AsString +' foi editada com sucesso!',
      mtInformation, [MbOk], 0);
  except
    TbCP.Cancel;
    TransactionCP.RollbackRetaining;
    MessageDlg('Erro ao incluir a conta a pagar do dia '+ TbCP.FieldByName('DATA').AsString +'!',
      mtError, [MbOk], 0);
  end;
end;

procedure TFCPagar.DSCPStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbCP.State in [dsinsert, dsedit]);
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := DBNavigator1.Enabled;
  Relatrios1.Enabled := DBNavigator1.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnAlterar.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Contas a Pagar';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição de Contas a Pagar';
  end;
end;

procedure TFCPagar.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFLocCP, FLocCP);
  FLocCP := nil;
end;

procedure TFCPagar.BaixarContaaReceber1Click(Sender: TObject);
procedure Edicao;
begin
  if TbCP.State in [dsBrowse] then
    TbCP.Edit;
  TbCPParcs.Edit;
  TbCPParcsSITUACAO.Clear;
end;
begin
  if sender = BaixarContaaReceber1 then begin
    Edicao;
    TbCPParcsPGTOPARC.Value := Date;
    TbCPParcsVLRPAGO.Value := TbCPParcsVLRPARC.Value;
  end else begin
    Edicao;
    TbCPParcsPGTOPARC.Clear;
    TbCPParcsVLRPAGO.Clear;
  end;
end;

procedure TFCPagar.TbCPParcsCalcFields(DataSet: TDataSet);
begin
  if TbCPParcsSITUACAO.Value = 'N' then
    TbCPParcsSituacaoStr.Value := 'Aberto'
  else if TbCPParcsSITUACAO.Value = 'P' then
    TbCPParcsSituacaoStr.Value := 'Pago'
  else if TbCPParcsSITUACAO.Value = 'A' then
    TbCPParcsSituacaoStr.Value := 'Pago Antes do Vcto.'
  else if TbCPParcsSITUACAO.Value = 'C' then
    TbCPParcsSituacaoStr.Value := 'Pago Com Atraso';
end;

procedure TFCPagar.PopupMenu1Popup(Sender: TObject);
begin
  BaixarContaaReceber1.Enabled := False;
  CancelarContaaReceber1.Enabled := False;
  if TbCPParcsSITUACAO.Value = 'N' then
    BaixarContaaReceber1.Enabled := True
  else
    CancelarContaaReceber1.Enabled := True;
end;

procedure TFCPagar.DBGrid1ColExit(Sender: TObject);
begin
  if TbCPParcs.State in [dsedit] then begin
    if TbCPParcsPGTOPARC.Value = TbCPParcsVCTOPARC.Value then
      TbCPParcsSITUACAO.Value := 'P'
    else if TbCPParcsPGTOPARC.Value < TbCPParcsVCTOPARC.Value then
      TbCPParcsSITUACAO.Value := 'A'
    else if TbCPParcsPGTOPARC.Value > TbCPParcsVCTOPARC.Value then
      TbCPParcsSITUACAO.Value := 'C'
    else if TbCPParcsVLRPAGO.IsNull then
      TbCPParcsSITUACAO.Value := 'N';
    TbCPParcs.Post;
  end;
end;

procedure TFCPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda
end;

end.
