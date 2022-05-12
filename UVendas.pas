unit UVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, ComCtrls, IBDatabase, DB, IBCustomDataSet, IBQuery;

type
  TFVendas = class(TForm)
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
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    TabSheet2: TTabSheet;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit10: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    BitNovoProd: TBitBtn;
    BitAltProd: TBitBtn;
    BitExcProd: TBitBtn;
    DBGrid1: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    Panel4: TPanel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    GroupBox2: TGroupBox;
    SpeedButton4: TSpeedButton;
    DBEdit12: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Label13: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    N1: TMenuItem;
    ImportarOramento1: TMenuItem;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit11: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    Clientes1: TMenuItem;
    N2: TMenuItem;
    CFOP1: TMenuItem;
    Transportadora1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    GroupBox5: TGroupBox;
    Label32: TLabel;
    DBEdit30: TDBEdit;
    Label33: TLabel;
    DBEdit31: TDBEdit;
    Label35: TLabel;
    DBEdit33: TDBEdit;
    Relatrios1: TMenuItem;
    Vendas1: TMenuItem;
    N3: TMenuItem;
    NotasFiscais1: TMenuItem;
    N4: TMenuItem;
    Duplicatas1: TMenuItem;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitImporta: TBitBtn;
    SpeedButton5: TSpeedButton;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    TbVenItens: TIBDataSet;
    DSVendas: TDataSource;
    DSVenItens: TDataSource;
    TransactionVen: TIBTransaction;
    TbVenItensNROVENDA: TIntegerField;
    TbVenItensNROITEM: TIntegerField;
    TbVenItensCODPRODUTO: TIntegerField;
    TbVenItensCODTIPOCLASSFISCAL: TIntegerField;
    TbVenItensPERCICMS: TSmallintField;
    TbVenItensPERCIPI: TSmallintField;
    TbVenItensVLRUNIT: TIBBCDField;
    TbVenItensQUANT: TIBBCDField;
    TbVenItensVlrTot: TCurrencyField;
    TbVenItensProduto: TStringField;
    QryAux: TIBQuery;
    QryValores: TIBQuery;
    GBCli: TGroupBox;
    Label29: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    SpeedButton6: TSpeedButton;
    TbVendas: TIBDataSet;
    TbVendasNROVENDA: TIntegerField;
    TbVendasDATAVENDA: TDateField;
    TbVendasNRONF: TIntegerField;
    TbVendasDATAEMISSAONF: TDateField;
    TbVendasDATASAIDAENTNF: TDateField;
    TbVendasHORASAIDA: TTimeField;
    TbVendasTIPONOTA: TIBStringField;
    TbVendasCODCLIGEN: TIntegerField;
    TbVendasCODCFOP: TIntegerField;
    TbVendasCODCONDPGTO: TIntegerField;
    TbVendasCODTRANSP: TIntegerField;
    TbVendasCODORCAMENTO: TIntegerField;
    TbVendasFRETEPORCONTA: TIBStringField;
    TbVendasVLRFRETE: TIBBCDField;
    TbVendasVLRSEGURO: TIBBCDField;
    TbVendasVLRICMSSUBST: TIBBCDField;
    TbVendasVLRDESPESAS: TIBBCDField;
    TbVendasQUANTIDADE: TIBStringField;
    TbVendasESPECIE: TIBStringField;
    TbVendasMARCA: TIBStringField;
    TbVendasNUMERO: TIBStringField;
    TbVendasPLACA: TIBStringField;
    TbVendasUFPLACA: TIBStringField;
    TbVendasPESOBRUTO: TIBBCDField;
    TbVendasPESOLIQUIDO: TIBBCDField;
    TbVendasVlrTotProd: TCurrencyField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitNovoProdClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure Duplicatas1Click(Sender: TObject);
    procedure NotasFiscais1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSVendasStateChange(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure TbVenItensCalcFields(DataSet: TDataSet);
    procedure BitAltProdClick(Sender: TObject);
    procedure BitExcProdClick(Sender: TObject);
    procedure BitImportaClick(Sender: TObject);
    procedure DSVendasDataChange(Sender: TObject; Field: TField);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TbVendasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
    vlVlrTot: Currency;
    procedure Verificacao;
    procedure DataChange;
    procedure ValoresNota;
    procedure AtualizaEstoque;
  public
    { Public declarations }
  end;

var
  FVendas: TFVendas;

implementation

uses UVenProdutos, UDados, UCondPgto, UCFOP, ULocVendas, UImportaOrc,
  UCReceber, UGenerico, URelComVen;

{$R *.dfm}

procedure TFVendas.AtualizaEstoque;
var
  vlCodVenda, vlCodProd, vlMovEst: Integer;
  vlQuant, vlEstAtual : Single;
  vlOBS : String;
begin
  // Atualiza Mov Est para todos os os produtos da venda
  // E Tmb a última data da venda
  QryAux.Close;
  QryAux.UnPrepare;
  vlCodVenda :=  TbVendasNROVENDA.Value;
  TbVenItens.First;
  while not TbVenItens.Eof do
  begin
    vlMovEst := 0;
    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'select gen_id(gen_movest_id, 1) as Valor from RDB$dATABASE ';
    QryAux.Prepare;
    QryAux.Open;
    vlMovEst := QryAux.Fields[0].AsInteger;
    QryAux.Close;
    QryAux.UnPrepare;

    vlCodProd := TbVenItensCODPRODUTO.AsInteger;
    vlQuant := TbVenItensQUANT.AsFloat;
    QryAux.SQL.Text := 'INSERT INTO MOVEST (NROMOV, CODPRODUTO, DATA, QUANT, TIPO, OBS, CODVENDA, GERACAO) '+
      ' VALUES (:plMovEst ,:plCodProd, :plData, :plQuant, :plTipo, :plOBS, :plCodVenda, :plGeracao) ';
    QryAux.ParamByName('plMovEst').AsInteger := vlMovEst;
    QryAux.ParamByName('plCodProd').AsInteger := vlCodProd;
    QryAux.ParamByName('plData').AsDate := Date;
    QryAux.ParamByName('plQuant').AsFloat := vlQuant;
    QryAux.ParamByName('plTipo').AsString := 'S';
    QryAux.ParamByName('plOBS').AsString := '';
    QryAux.ParamByName('plCodVenda').AsInteger := vlCodVenda;
    QryAux.ParamByName('plGeracao').AsString := 'V';
    QryAux.ExecSQL;

    QryAux.SQL.Text := 'Select ESTOQUEATUAL from Produtos where '+
      'CODPRODUTO = :plCodProd ';
    QryAux.ParamByName('plCodProd').AsInteger := vlCodProd;
    QryAux.Prepare;
    QryAux.Open;
    vlEstAtual := QryAux.Fields[0].AsFloat;
    QryAux.Close;
    QryAux.UnPrepare;

    QryAux.SQL.Text := 'update PRODUTOS set '+
      ' DATAULTCOMPRAVENDA = :plData, '+
      ' ESTOQUEATUAL = :plEstAtual  where '+
      ' CODPRODUTO = :plCodProd ';
    QryAux.ParamByName('plCodProd').AsInteger := vlCodProd;
    QryAux.ParamByName('plEstAtual').AsFloat := vlEstAtual - vlQuant;
    QryAux.ParamByName('plData').AsDate := Date;
    QryAux.ExecSQL;

    TbVenItens.Next;
  end;
end;

procedure TFVendas.ValoresNota;
begin
 if (not TbVendas.IsEmpty) {and (TbVendas.State in [dsbrowse])} then begin
    TbVenItens.First;
    TbVendasVlrTotProd.Value := 0;
    while not TbVenItens.Eof do begin
      TbVendasVlrTotProd.Value := TbVendasVlrTotProd.Value + TbVenItensVlrTot.Value;
      TbVenItens.Next;
    end;
    vlVlrTot := TbVendasVlrTotProd.Value;
  end;
end;

procedure TFvendas.DataChange;
begin
  Verificacao;
end;

procedure TFVendas.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 12);
end;

procedure TFVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) and not(GBCli.Visible) then
    BitBtnSairClick(nil);
end;

procedure TFVendas.BitNovoProdClick(Sender: TObject);
var
  vlProxNum: Integer;
begin
  TbVenItens.Last;
  vlProxNum := TbVenItensNROITEM.Value;
  TbVenItens.Append;
  TbVenItensNROVENDA.Value := TbVendasNROVENDA.Value;
  TbVenItensNROITEM.Value := vlProxNum + 1;
  Application.CreateForm(TFVenProdutos, FVenProdutos);
  FVenProdutos := nil;
  Verificacao;
//  ValoresNota;
end;

procedure TFVendas.BitBtnSairClick(Sender: TObject);
var
  vlCodAtual : Integer; 
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição da venda do dia '+
    TbVendas.FieldByName('DATAVENDA').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then begin
    vlCodAtual := TbVendasNROVENDA.Value;
    TransactionVen.RollbackRetaining;
    TbVendas.Close;
    TbVenItens.Close;
    TbVendas.Open;
    TbVenItens.Open;
    TbVendas.Locate('NROVENDA', vlCodAtual, []);
    PageControl1.ActivePage := TabSheet1;
  end;
end;

procedure TFVendas.Sair1Click(Sender: TObject);
begin
  BitBtnSairClick(nil);
end;

procedure TFVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
{  Dados.QryClientesLK.Close;
  Dados.QryClientesLK.Transaction := Dados.Transaction;
  Dados.QryClientesLK.Open;}
end;

procedure TFVendas.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('VENDAS', 'EDI', 1) then begin
    GBCli.Left := 1;
    GBCli.Top := 54;
    GBCli.Visible := True;
    DBLookupComboBox5.KeyValue := 0;
    DBLookupComboBox5.SetFocus;
    TransactionVen.CommitRetaining;
  end;
end;

procedure TFVendas.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('VENDAS', 'EDI', 1) then
    if not TbVendas.IsEmpty then begin
      TbVendas.Edit;
      PageControl1.ActivePage := TabSheet1;
      DBLookupComboBox1.SetFocus;
    end;
end;

procedure TFVendas.BitBtnExcluirClick(Sender: TObject);
Function Procura(vfSQL: String):Boolean;
begin
  Result := False;
  QryAux.SQL.Text := vfSQL ;
  QryAux.Prepare;
  QryAux.Open;
  if not QryAux.IsEmpty then
    Result := True;
  QryAux.Close;
  QryAux.UnPrepare;
end;

procedure DeletaCR;
var
  vlNroCR: String;
begin
  QryAux.SQL.Text := 'Select CR.NROCRECEBER from creceber CR where CR.NROVenda = '+ TbVendasNROVENDA.AsString ;
  QryAux.Prepare;
  QryAux.Open;
  vlNroCR := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'DELETE FROM CRECEBERPARCS WHERE NROCRECEBER = '+ vlNroCR;
  QryAux.Prepare;
  QryAux.Open;
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'DELETE FROM CRECEBER WHERE NROCRECEBER = '+ vlNroCR;
  QryAux.Prepare;
  QryAux.Open;
  QryAux.Close;
  QryAux.UnPrepare;
  TransactionVen.CommitRetaining;
end;
procedure Deleta;
begin
  TbVenItens.First;
  while not TbVenItens.Eof do
    TbVenItens.Delete;
  TbVendas.Delete;
end;
begin
  try
    if VerificarPermissao('VENDAS', 'EXC', 1) then
      if TbVendas.IsEmpty then
        Exit;
      if not TbVendasDATAEMISSAONF.IsNull then
        MessageDlg('Esta venda já teve a nota fiscal impressa!', mtWarning, [mbOk], 0)
      else if (not TbVendas.IsEmpty) and (MessageDlg('Deseja excluir a venda do dia '+
        TbVendas.FieldByName('DATAVENDA').AsString +' ?', mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
        if (Procura('Select CR.nrovenda from creceber CR where CR.NROVENDA = '+ TbVendasNROVENDA.AsString)) and (
         MessageDlg('A exclusão da Compra implica na exclusão das Contas a Receber. Prosseguir com a exclusão da compra?',
          mtConfirmation, [mbYes, mbNo], 0)= IDYES) then begin
          DeletaCR;
          Deleta;
        end else if not (Procura('Select CR.nrovenda from creceber CR where CR.NROVENDA = '+ TbVendasNROVENDA.AsString)) then
          Deleta;
    end;
    TransactionVen.CommitRetaining;
    MessageDlg('Venda excluída com sucesso!', mtConfirmation, [mbOK], 0);
  except
    TransactionVen.RollbackRetaining;
    MessageDlg('Erro ao Exclir a Vendaa!', mtConfirmation, [mbOK], 0);
  end;
end;

procedure TFVendas.Duplicatas1Click(Sender: TObject);
begin
  if VerificarPermissao('VENDAS', 'REL', 1) then begin
  // fazer DUPLICATAS
  end;
end;

procedure TFVendas.NotasFiscais1Click(Sender: TObject);
begin
  if VerificarPermissao('VENDAS', 'REL', 1) then begin
  // fazer NF
  end;
end;

procedure TFVendas.Vendas1Click(Sender: TObject);
begin
  if VerificarPermissao('VENDAS', 'REL', 1) then begin
    Dados.vgTipoRel := 2;
    Application.CreateForm(TFRelComVen, FRelComVen);
    FRelComVen := nil;
  end;
end;

procedure TFVendas.FormCreate(Sender: TObject);
procedure VerificarClientes;
begin
  if not VerificarPermissao('CIDADES', 'CONS', 0) then begin
    SpeedButton1.Enabled := False;
    Clientes1.Enabled := False;
  end;
end;
procedure VerificarCFOP;
begin
  if not VerificarPermissao('CFOP', 'CONS', 0) then begin
    SpeedButton2.Enabled := False;
    CFOP1.Enabled := False;
  end;
end;
procedure VerificarTransportadora;
begin
  if not VerificarPermissao('TRANSPORTADORAS', 'CONS', 0) then begin
    SpeedButton4.Enabled := False;
    Transportadora1.Enabled := False;
  end;
end;
procedure VerificarCondPgto;
begin
  if not VerificarPermissao('CONDIÇÕES DE PAGAMENTO', 'CONS', 0) then begin
    SpeedButton3.Enabled := False;
    CondiesdePagamento1.Enabled := False;
  end;
end;
begin
  if VerificarPermissao('VENDAS', 'CONS', 1) then begin
    VerificarClientes;
    VerificarCFOP;
    VerificarTransportadora;
    VerificarCondPgto;
    TbVenItens.Prepare;
    TbVenItens.Open;
    TbVendas.Prepare;
    TbVendas.Open;
    ValoresNota;
  end;
end;

procedure TFVendas.RadioButton2Click(Sender: TObject);
const
  SQL = 'SELECT * FROM VENDAS ';
begin
  TbVendas.Close;
  if sender = RadioButton2 then
    TbVendas.SelectSQL.Text := SQL + 'ORDER BY NROVENDA'
  else
    TbVendas.SelectSQL.Text := SQL + 'ORDER BY CODCLIGEN';
  TbVendas.Open;
  Edit1.Clear;
end;

procedure TFVendas.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    exit;
  if RadioButton2.Checked then
    try
      TbVendas.Locate('NROVENDA', StrToInt (Edit1.Text), []);
    except
      MessageDlg('Digite somente números para busca!', mtError, [MbOK], 0);
    end
  else begin
    Dados.QryClientesLK.Locate('NOME', Edit1.Text, [loPartialKey, loCaseInsensitive]);
    TbVendas.Locate('CODCLIGEN', Dados.QryClientesLK.FieldByName('CODCLIGEN').AsInteger, []);
  end;
end;

procedure TFVendas.BitBtnGravarClick(Sender: TObject);
var
  vlDataUltVcto: TDate;
  vlNumParcs, vllaco: Integer;
  vlResumo, vlVlrStr: String;
  vlVlrParc: array [1..6] of Currency;
  vlVlrCR : Currency;
procedure NumParcs;
var
  vlSoma, vlFalta, vlSobra: Currency;
procedure UmaParc;
begin
  vlVlrParc[1] := vlVlrTot;
end;
procedure DuasParcs;
begin
  vlVlrStr := FormatCurr('###0.00', (vlVlrTot/2));
  vlVlrParc[1] := StrToCurr(vlVlrStr);
  vlVlrParc[2] := StrToCurr(vlVlrStr);
  vlSoma := vlVlrParc[1] + vlVlrParc[2];
  if vlSoma = vlVlrTot then
    exit;
  if vlSoma < vlVlrTot then begin
    vlFalta := vlVlrTot - vlSoma;
    vlVlrParc[1] := vlVlrParc[1] + vlFalta
  end else if vlSoma > vlVlrTot then begin
    vlSobra := vlSoma - vlVlrTot;
    vlVlrParc[2] := vlVlrParc[2] - vlSobra;
  end;
end;
procedure TresParcs;
begin
  vlVlrStr := FormatCurr('###0.00', (vlVlrTot/3));
  vlVlrParc[1] := StrToCurr(vlVlrStr);
  vlVlrParc[2] := StrToCurr(vlVlrStr);
  vlVlrParc[3] := StrToCurr(vlVlrStr);
  vlSoma := vlVlrParc[1] + vlVlrParc[2] + vlVlrParc[3];
  if vlSoma = vlVlrTot then
    exit;
  if vlSoma < vlVlrTot then begin
    vlFalta := vlVlrTot - vlSoma;
    vlVlrParc[1] := vlVlrParc[1] + vlFalta
  end else if vlSoma > vlVlrTot then begin
    vlSobra := vlSoma - vlVlrTot;
    vlVlrParc[3] := vlVlrParc[3] - vlSobra;
  end;
end;
procedure QuatroParcs;
begin
  vlVlrStr := FormatCurr('###0.00', (vlVlrTot/4));
  vlVlrParc[1] := StrToCurr(vlVlrStr);
  vlVlrParc[2] := StrToCurr(vlVlrStr);
  vlVlrParc[3] := StrToCurr(vlVlrStr);
  vlVlrParc[4] := StrToCurr(vlVlrStr);
  vlSoma := vlVlrParc[1] + vlVlrParc[2] + vlVlrParc[3] + vlVlrParc[4];
  if vlSoma = vlVlrTot then
    exit;
  if vlSoma < vlVlrTot then begin
    vlFalta := vlVlrTot - vlSoma;
    vlVlrParc[1] := vlVlrParc[1] + vlFalta
  end else if vlSoma > vlVlrTot then begin
    vlSobra := vlSoma - vlVlrTot;
    vlVlrParc[4] := vlVlrParc[4] - vlSobra;
  end;
end;
procedure CincoParcs;
begin
  vlVlrStr := FormatCurr('###0.00', (vlVlrTot/5));
  vlVlrParc[1] := StrToCurr(vlVlrStr);
  vlVlrParc[2] := StrToCurr(vlVlrStr);
  vlVlrParc[3] := StrToCurr(vlVlrStr);
  vlVlrParc[4] := StrToCurr(vlVlrStr);
  vlVlrParc[5] := StrToCurr(vlVlrStr);
  vlSoma := vlVlrParc[1] + vlVlrParc[2] + vlVlrParc[3] + vlVlrParc[4] + vlVlrParc[5];
  if vlSoma = vlVlrTot then
    exit;
  if vlSoma < vlVlrTot then begin
    vlFalta := vlVlrTot - vlSoma;
    vlVlrParc[1] := vlVlrParc[1] + vlFalta
  end else if vlSoma > vlVlrTot then begin
    vlSobra := vlSoma - vlVlrTot;
    vlVlrParc[5] := vlVlrParc[5] - vlSobra;
  end;
end;
procedure SeisParcs;
begin
  vlVlrStr := FormatCurr('###0.00', (vlVlrTot/6));
  vlVlrParc[1] := StrToCurr(vlVlrStr);
  vlVlrParc[2] := StrToCurr(vlVlrStr);
  vlVlrParc[3] := StrToCurr(vlVlrStr);
  vlVlrParc[4] := StrToCurr(vlVlrStr);
  vlVlrParc[5] := StrToCurr(vlVlrStr);
  vlVlrParc[6] := StrToCurr(vlVlrStr);
  vlSoma := vlVlrParc[1] + vlVlrParc[2] + vlVlrParc[3] + vlVlrParc[4] + vlVlrParc[5]
    + vlVlrParc[6];
  if vlSoma = vlVlrTot then
    exit;
  if vlSoma < vlVlrTot then begin
    vlFalta := vlVlrTot - vlSoma;
    vlVlrParc[1] := vlVlrParc[1] + vlFalta
  end else if vlSoma > vlVlrTot then begin
    vlSobra := vlSoma - vlVlrTot;
    vlVlrParc[6] := vlVlrParc[6] - vlSobra;
  end;
end;
procedure Testar;
begin
  vlNumParcs := 1;
  if QryAux.Fields[1].AsInteger > 0 then
    Inc(vlNumParcs)
  else
    exit;
  if QryAux.Fields[2].AsInteger > 0 then
    Inc(vlNumParcs)
  else
    exit;
  if QryAux.Fields[3].AsInteger > 0 then
    Inc(vlNumParcs)
  else
    exit;
  if QryAux.Fields[4].AsInteger > 0 then
    Inc(vlNumParcs)
  else
    exit;
  if QryAux.Fields[5].AsInteger > 0 then
    Inc(vlNumParcs)
  else
    exit;
end;
begin
  Testar;
  ValoresNota;
  case vlNumParcs of
    1: UmaParc;
    2: DuasParcs;
    3: TresParcs;
    4: QuatroParcs;
    5: CincoParcs;
    6: SeisParcs;
  end;
end;
begin
  if TbVendasCODCLIGEN.IsNull then begin
    MessageDlg('Especifique o cliente da venda!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBLookupComboBox1.SetFocus;
  end else if TbVendasCODCFOP.IsNull then begin
    MessageDlg('Especifique o CFOP da venda!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBLookupComboBox2.SetFocus;
  end else if TbVendasCODTRANSP.IsNull then begin
    MessageDlg('Especifique a transportadora da venda!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet2;
    DBLookupComboBox4.SetFocus;
  end else if TbVendasCODCONDPGTO.IsNull then begin
    MessageDlg('Especifique o condição de pagamento da venda!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox3.SetFocus;
  end else if TbVenItens.RecNo = 0 then begin
    MessageDlg('Especifique os itens desta venda!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    BitNovoProdClick(nil);
  end else
  try
    TbVendas.Post;
    AtualizaEstoque;
    TransactionVen.CommitRetaining;

    MessageDlg('A venda do dia '+ TbVendas.FieldByName('DATAVENDA').AsString +' foi editada com sucesso!',
      mtInformation, [MbOk], 0);
    if MessageDlg('Gostaria de lançar as contas a receber desta venda?',mtInformation, [MbYes, MbNo], 0)=IDYES then
      try
        QryAux.SQL.Text := 'Select PRAZO1, PRAZO2, PRAZO3, PRAZO4, PRAZO5, PRAZO6 from CONDPGTO where '+
          'CODCONDPGTO = '+ TbVendas.FieldByName('CODCONDPGTO').AsString;
        QryAux.Prepare;
        QryAux.Open;
        NumParcs;
        vllaco := 1;
        vlDataUltVcto := TbVendasDATAVENDA.Value;
        vlResumo := '  Informações sobre Contas a Receber'+
                    ''#13#13'Parcela    -    Data Vcto.    -    Valor(R$)';
        Application.CreateForm(TFCReceber, FCReceber);
        FCReceber.TbCR.Append;
        QryAux.SQL.Text := 'Select CodBanco from CADGEN where CODCADGEN = '+ TbVendasCODCLIGEN.AsString;
        QryAux.Prepare;
        QryAux.Open;
        FCReceber.TbCRCODBANCO.Value := QryAux.Fields[0].AsInteger;
        QryAux.Close;
        QryAux.UnPrepare;
        QryAux.SQL.Text := 'Select PRAZO1, PRAZO2, PRAZO3, PRAZO4, PRAZO5, PRAZO6 from CONDPGTO where '+
          'CODCONDPGTO = '+ TbVendas.FieldByName('CODCONDPGTO').AsString;
        QryAux.Prepare;
        QryAux.Open;


        FCReceber.TbCRDATA.Value := Date;
        FCReceber.TbCRNROVENDA.Value := TbVendasNROVENDA.Value;
        FCReceber.TbCRCODCONDPGTO.Value := TbVendasCODCONDPGTO.Value;
        FCReceber.TbCR.Post;
        FCReceber.TbCR.Edit;

        
        while vllaco <= vlNumParcs do begin
           vlDataUltVcto := vlDataUltVcto + QryAux.Fields[vllaco -1].AsInteger ;
           vlResumo := vlResumo +''#13'    '+ IntToStr(vllaco) + '              '+
             FormatDateTime('dd/mm/yyyy', vlDataUltVcto)+
             '          '+ FormatCurr('#,##0.00', vlVlrParc[vllaco]);
           Inc (vllaco);

           FCReceber.TbCRParcs.Append;
           FCReceber.TbCRParcsNROCRECEBER.Value := FCReceber.TbCRNROCRECEBER.Value;
           FCReceber.TbCRParcsNROPARC.Value := vllaco - 1;
           FCReceber.TbCRParcsVCTOPARC.Value := vlDataUltVcto;
           vlVlrCR := vlVlrparc[vllaco-1];
           FCReceber.TbCRParcsVLRPARC.Value := vlVlrCR;
           FCReceber.TbCRParcsSITUACAO.Value := 'N';
           FCReceber.TbCRParcs.Post;


        end;
        FCReceber.TransactionCR.CommitRetaining;
        QryAux.Close;
        QryAux.UnPrepare;
        ShowMessage(vlResumo);
      except
        if QryAux.Active then begin
          QryAux.Close;
          QryAux.UnPrepare;
        end;
        FCReceber.TransactionCR.RollbackRetaining;
        MessageDlg('Erro ao gerar as contas a receber!', mtError, [mbOK], 0);
      end;
  except
    TbVendas.Cancel;
    TransactionVen.RollbackRetaining;
    MessageDlg('Erro ao incluir a venda do dia '+ TbVendas.FieldByName('DATAVENDA').AsString +'!',
      mtError, [MbOk], 0);
  end;
  ValoresNota;
end;

procedure TFVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbVendas.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbVendas.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbVendas.State in [dsbrowse]) then
    TbVendas.First
  else if (Key = 35) and (TbVendas.State in [dsbrowse]) then
    TbVendas.Last
  else if Key = vk_F1 then
    AbreAjuda;    
end;

procedure TFVendas.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryCFOPLK.FetchAll;
end;

procedure TFVendas.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryClientesLK.FetchAll;
end;

procedure TFVendas.DBLookupComboBox4Enter(Sender: TObject);
begin
  Dados.QryTransportadorasLK.FetchAll;
end;

procedure TFVendas.DBLookupComboBox3Enter(Sender: TObject);
begin
  Dados.QryCondPgtoLK.FetchAll;
end;

procedure TFVendas.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFCondPgto, FCondPgto);
  FCondPgto.TbCondPgto.Locate('CODCONDPGTO', TbVendasCODCONDPGTO.Value, []);
  FCondPgto.ShowModal;
  FCondPgto := nil;
  Verificacao;
end;

procedure TFVendas.SpeedButton4Click(Sender: TObject);
begin
  if sender = SpeedButton1 then begin
    Dados.vgGenerica := 1;
    Application.CreateForm(TFGenerico, FGenerico);
    FGenerico.TbGenerico.Locate('CODCADGEN', TbVendasCODCLIGEN.Value, []);
  end else if sender = SpeedButton4 then begin
    Dados.vgGenerica := 3;
    Application.CreateForm(TFGenerico, FGenerico);
    FGenerico.TbGenerico.Locate('CODCADGEN', TbVendasCODTRANSP.Value, []);
  end else if sender = SpeedButton6 then begin
    Dados.vgGenerica := 1;
    Application.CreateForm(TFGenerico, FGenerico);
    if DBLookupComboBox5.KeyValue <> 0 then
      FGenerico.TbGenerico.Locate('CODCADGEN', DBLookupComboBox5.KeyValue, []);
  end;
  FGenerico.ShowModal;
  FGenerico := nil;
  Verificacao;
end;

procedure TFVendas.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFCFOP, FCFOP);
  FCFOP.TbCFOP.Locate('CODCFOP', TbVendasCODCFOP.Value, []);
  FCFOP.ShowModal;
  FCFOP := nil;
  Verificacao;
end;

procedure TFVendas.DSVendasStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbVendas.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  BitImporta.Enabled := BitBtnNovo.Enabled;
  BitNovoProd.Enabled := not BitBtnNovo.Enabled;
  BitAltProd.Enabled := not BitBtnNovo.Enabled;
  BitExcProd.Enabled := not BitBtnNovo.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Vendas';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição da Venda';
  end;
end;

procedure TFVendas.SpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFLocVendas, FLocVendas);
  FLocVendas := nil;
end;

procedure TFVendas.TbVenItensCalcFields(DataSet: TDataSet);
begin
  if (not TbVenItensVLRUNIT.IsNull) and (not TbVenItensQUANT.IsNull) then
    TbVenItensVlrTot.Value := TbVenItensQUANT.Value * TbVenItensVLRUNIT.Value;
end;

procedure TFVendas.BitAltProdClick(Sender: TObject);
begin
  if not TbVenItens.IsEmpty then begin
    TbVenItens.Edit;
    Application.CreateForm(TFVenProdutos, FVenProdutos);
    FVenProdutos := nil;
//    ValoresNota;
    Verificacao;
  end;
end;

procedure TFVendas.BitExcProdClick(Sender: TObject);
begin
  if (MessageDlg('Deseja excluir o produto '+ TbVenItensProduto.Value +' desta venda?',
    mtConfirmation, [mbYes, MbNo], 0) = IDYES) and (not TbVenItens.IsEmpty) then begin
      TbVenItens.Delete;
//      ValoresNota;
  end;
end;

procedure TFVendas.BitImportaClick(Sender: TObject);
begin
  Application.CreateForm(TFImportaOrc, FImportaOrc);
  FImportaOrc := nil;
end;

procedure TFVendas.DSVendasDataChange(Sender: TObject; Field: TField);
begin
  if not (TbVendas.state in [dsedit, dsinsert]) then
    DataChange;
end;

procedure TFVendas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  ValoresNota;
end;

procedure TFVendas.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a edição da venda?', mtConfirmation, [mbYes, mbNo], 0) = IDYES then
    GBCli.Visible := False;
end;

procedure TFVendas.BitBtn4Click(Sender: TObject);
begin
  if DBLookupComboBox5.KeyValue = 0 then begin
    MessageDlg('Especifique o cliente desta venda!', mtWarning, [MbOk], 0);
    DBLookupComboBox5.SetFocus;
  end else begin
    TransactionVen.CommitRetaining;
    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'Select CG.CODCFOP, CG.CODCONDPGTO, CG.CODTRANSP '+
    ' FROM CADGEN CG WHERE CG.codCadGen = '+ IntToStr(DBLookupComboBox5.KeyValue);
    QryAux.Prepare;
    QryAux.Open;
    TbVendas.Append;
    TbVendasCODCLIGEN.Value := StrToInt(DBLookupComboBox5.KeyValue);
    TbVendasCODCFOP.Value := QryAux.Fields[0].AsInteger;
    TbVendasCODCONDPGTO.Value := QryAux.Fields[1].AsInteger;
    TbVendasCODTRANSP.Value := QryAux.Fields[2].AsInteger;
    TbVendasDATAVENDA.Value := Date;
    TbVendasTIPONOTA.Value := 'S';
    PageControl1.ActivePage := TabSheet1;
    QryAux.close;
    QryAux.UnPrepare;
    GBCli.Visible := False;
    TbVendas.Post;
    TbVendas.Edit;
    DBEdit5.SetFocus;
  end;
end;

procedure TFVendas.TbVendasPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
;
end;

end.

