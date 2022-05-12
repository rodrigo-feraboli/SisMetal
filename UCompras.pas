unit UCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, ComCtrls, DB, IBDatabase, IBCustomDataSet, IBQuery;

type
  TFCompras = class(TForm)
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
    BitItensNew: TBitBtn;
    BitItensEdit: TBitBtn;
    BitItensDel: TBitBtn;
    DBGrid1: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox2: TGroupBox;
    SpeedButton4: TSpeedButton;
    DBEdit12: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Label13: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    N1: TMenuItem;
    ImportarOramento1: TMenuItem;
    Fornecedores1: TMenuItem;
    N2: TMenuItem;
    CFOP1: TMenuItem;
    Transportadora1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    Relatrios1: TMenuItem;
    Vendas1: TMenuItem;
    BitImporta: TBitBtn;
    SpeedButton5: TSpeedButton;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    GroupBox5: TGroupBox;
    Label32: TLabel;
    DBEdit30: TDBEdit;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit11: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    TbItensComProdutos: TIBDataSet;
    TbCompras: TIBDataSet;
    TransactionCompras: TIBTransaction;
    DSCompras: TDataSource;
    DSItensComProdutos: TDataSource;
    TbItensComProdutosNROCOMPRA: TIntegerField;
    TbItensComProdutosNROITEM: TIntegerField;
    TbItensComProdutosCODPRODUTO: TIntegerField;
    TbItensComProdutosQUANT: TIBBCDField;
    TbItensComProdutosVLRUNIT: TIBBCDField;
    TbItensComProdutosProdutos: TStringField;
    TbItensComProdutosVlrTot: TCurrencyField;
    QryAux: TIBQuery;
    GBForn: TGroupBox;
    Label4: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    TbComprasNROCOMPRA: TIntegerField;
    TbComprasDATACOMPRA: TDateField;
    TbComprasTIPONOTA: TIBStringField;
    TbComprasNRONF: TLargeintField;
    TbComprasDATAEMISSAONF: TDateField;
    TbComprasCODFORNGEN: TIntegerField;
    TbComprasCODCFOP: TIntegerField;
    TbComprasCODCONDPGTO: TIntegerField;
    TbComprasCODTRANSP: TIntegerField;
    TbComprasCODORDEMCOMPRA: TIntegerField;
    TbComprasFRETEPORCONTA: TIBStringField;
    SpeedButton6: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitItensNewClick(Sender: TObject);
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
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure TbItensComProdutosCalcFields(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSComprasStateChange(Sender: TObject);
    procedure DSComprasDataChange(Sender: TObject; Field: TField);
    procedure BitItensEditClick(Sender: TObject);
    procedure BitItensDelClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitImportaClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
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
  FCompras: TFCompras;

implementation

uses UComProdutos, UDados, UCFOP, UCondPgto, UImportaOC, UCPagar, UGenerico,
  URelComVen, ULocCompras;

{$R *.dfm}

procedure TFCompras.AtualizaEstoque;
var
  vlCodCompra, vlCodProd, vlMovEst : Integer;
  vlQuant, vlEstAtual : Single;
  vlOBS : String;
begin
  // Atualiza Mov Est para todos os os produtos da venda
  vlCodCompra :=  TbComprasNROCOMPRA.Value;
  TbItensComProdutos.First;
  while not TbItensComProdutos.Eof do
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

    vlCodProd := TbItensComProdutosCODPRODUTO.AsInteger;
    vlQuant := TbItensComProdutosQUANT.AsFloat;
    QryAux.SQL.Text := 'INSERT INTO MOVEST (NROMOV, CODPRODUTO, DATA, QUANT, TIPO, OBS, CODCOMPRA, GERACAO) '+
      ' VALUES (:plMovEst ,:plCodProd, :plData, :plQuant, :plTipo, :plOBS, :plCodCompra, :plGeracao) ';
    QryAux.ParamByName('plMovEst').AsInteger := vlMovEst;
    QryAux.ParamByName('plCodProd').AsInteger := vlCodProd;
    QryAux.ParamByName('plData').AsDate := Date;
    QryAux.ParamByName('plQuant').AsFloat := vlQuant;
    QryAux.ParamByName('plTipo').AsString := 'E';
    QryAux.ParamByName('plOBS').AsString := '';
    QryAux.ParamByName('plCodCompra').AsInteger := vlCodCompra;
    QryAux.ParamByName('plGeracao').AsString := 'C';
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
    QryAux.ParamByName('plEstAtual').AsFloat := vlEstAtual + vlQuant;
    QryAux.ParamByName('plData').AsDate := Date;
    QryAux.ExecSQL;

    TbItensComProdutos.Next;
  end;
end;

procedure TFCompras.ValoresNota;
begin
  vlVlrTot := 0;
  TbItensComProdutos.First;
  while not TbItensComProdutos.Eof do begin
    vlVlrTot := vlVlrTot + TbItensComProdutosVlrTot.AsCurrency;
    TbItensComProdutos.Next;
  end;
end;

procedure TFCompras.DataChange;
begin
  Verificacao;
end;

procedure TFCompras.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 13);
end;

procedure TFCompras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) and  not(GBForn.Visible) then
    BitBtnSairClick(nil);
end;

procedure TFCompras.BitItensNewClick(Sender: TObject);
var
  vlProxNum: Integer;
begin
  if TbCompras.State in [dsinsert] then begin
    TbCompras.Post;
    TbCompras.Edit;
  end;
  TbItensComProdutos.Last;
  vlProxNum := TbItensComProdutosNROITEM.Value;
  TbItensComProdutos.Append;
  TbItensComProdutosNROCOMPRA.Value := TbComprasNROCOMPRA.Value;
  TbItensComProdutosNROITEM.Value := vlProxNum + 1;
  Application.CreateForm(TFComProdutos, FComProdutos);
  FComProdutos := nil;
  if TbCompras.State in [dsbrowse] then
    TbCompras.Edit;
  Verificacao;
end;

procedure TFCompras.BitBtnSairClick(Sender: TObject);
var
  vlCodAtual: Integer;
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição da compra do dia '+
   TbCompras.FieldByName('DATACOMPRA').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then begin
    vlCodAtual := TbComprasNROCOMPRA.Value;
    TransactionCompras.RollbackRetaining;
    TbCompras.Close;
    TbItensComProdutos.Close;
    TbCompras.Open;
    TbItensComProdutos.Open;
    TbCompras.Locate('NROCOMPRA', vlCodAtual, []);
    PageControl1.ActivePage := TabSheet1;
  end;
end;

procedure TFCompras.Sair1Click(Sender: TObject);
begin
  BitBtnSairClick(nil);
end;

procedure TFCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFCompras.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('COMPRAS', 'EDI', 1) then begin
    GBForn.Left := 0;
    GBForn.Top := 54;
    GBForn.Visible := True;
    DBLookupComboBox5.KeyValue := 0;
    DBLookupComboBox5.SetFocus;
    TransactionCompras.CommitRetaining;
  end;
end;

procedure TFCompras.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('COMPRAS', 'EDI', 1) then begin
    if not TbCompras.IsEmpty then begin
      TbCompras.Edit;
      PageControl1.ActivePage := TabSheet1;
      DBLookupComboBox1.SetFocus;
    end;
  end;
end;

procedure TFCompras.BitBtnExcluirClick(Sender: TObject);
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

procedure DeletaCP;
var
  vlNroCP: String;
begin
  QryAux.SQL.Text := 'Select CP.NROCPAGAR from cpagar CP where CP.NROCOMPRA = '+ TbComprasNROCOMPRA.AsString ;
  QryAux.Prepare;
  QryAux.Open;
  vlNroCP := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'DELETE FROM CPAGARPARCS WHERE NROCPAGAR = '+ vlNroCP;
  QryAux.Prepare;
  QryAux.Open;
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'DELETE FROM CPAGAR WHERE NROCPAGAR = '+ vlNroCP;
  QryAux.Prepare;
  QryAux.Open;
  QryAux.Close;
  QryAux.UnPrepare;

  TransactionCompras.CommitRetaining;
end;
procedure Deleta;
begin
  TbItensComProdutos.First;
  while not TbItensComProdutos.Eof do
    TbItensComProdutos.Delete;
  TbCompras.Delete;
end;
begin
  try
    if VerificarPermissao('COMPRAS', 'EXC', 1) then
      if TbCompras.IsEmpty then
        exit;
      if (MessageDlg('Deseja excluir a compra do dia '+
        TbCompras.FieldByName('DATACOMPRA').AsString +' ?', mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
        if (Procura('Select CP.nrocompra from cpagar CP where CP.NROCOMPRA = '+ TbComprasNROCOMPRA.AsString)) and (
         MessageDlg('A exclusão da Venda implica na exclusão das Contas a Pagar. Prosseguir com a exclusão da venda?',
          mtConfirmation, [mbYes, mbNo], 0)= IDYES) then begin
           DeletaCP;
           Deleta;
         end else if not Procura('Select CP.nrocompra from cpagar CP where CP.NROCOMPRA = '+ TbComprasNROCOMPRA.AsString) then
           Deleta;
      end;
      TransactionCompras.CommitRetaining;
      MessageDlg('Venda excluída com sucesso!', mtConfirmation, [mbOK], 0);
  except
    TransactionCompras.RollbackRetaining;
    MessageDlg('Erro ao Exclir a Venda!', mtConfirmation, [mbOK], 0);
  end;
end;

procedure TFCompras.Duplicatas1Click(Sender: TObject);
begin
  if VerificarPermissao('COMPRAS', 'REL', 1) then begin
    // fazer
  end;
end;

procedure TFCompras.NotasFiscais1Click(Sender: TObject);
begin
  if VerificarPermissao('COMPRAS', 'REL', 1) then begin
    // fazer
  end;
end;

procedure TFCompras.Vendas1Click(Sender: TObject);
begin
  if VerificarPermissao('COMPRAS', 'REL', 1) then begin
    Dados.vgTipoRel := 1;
    Application.CreateForm(TFRelComVen, FRelComVen);
    FRelComVen := nil;
  end;
end;

procedure TFCompras.FormCreate(Sender: TObject);
procedure VerificarFornecedor;
begin
  if not VerificarPermissao('FORNECEDORES', 'CONS', 0) then begin
    SpeedButton1.Enabled := False;
    Fornecedores1.Enabled := false;
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
  if VerificarPermissao('COMPRAS', 'CONS', 1) then begin
    VerificarFornecedor;
    VerificarCFOP;
    VerificarTransportadora;
    VerificarCondPgto;
    TbCompras.Open;
    TbItensComProdutos.Open;
  end;
end;

procedure TFCompras.RadioButton2Click(Sender: TObject);
const
  SQL = 'SELECT * FROM COMPRAS ';
begin
  TbCompras.Close;
  if sender = RadioButton2 then
    TbCompras.SelectSQL.Text := SQL + 'ORDER BY NROCOMPRA'
  else
    TbCompras.SelectSQL.Text := SQL + 'ORDER BY CODFORNGEN';
  TbCompras.Open;
  Edit1.Clear;
end;

procedure TFCompras.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    exit;
  if RadioButton2.Checked then
    try
      TbCompras.Locate('NROCOMPRA', StrToInt (Edit1.Text), []);
    except
      MessageDlg('Digite somente números para busca!', mtError, [MbOK], 0);
    end
  else begin
    Dados.QryFornecedoresLK.Locate('NOME', Edit1.Text, [loPartialKey, loCaseInsensitive]);
    TbCompras.Locate('CODFORNEC', Dados.QryFornecedoresLK.FieldByName('CODFORNEC').AsInteger, []);
  end;
end;

procedure TFCompras.BitBtnGravarClick(Sender: TObject);
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
  if TbComprasCODFORNGEN.IsNull then begin
    MessageDlg('Especifique o cliente da compra!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBLookupComboBox1.SetFocus;
  end else if TbComprasCODCFOP.IsNull then begin
    MessageDlg('Especifique o CFOP da compra!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBLookupComboBox2.SetFocus;
  end else if TbComprasCODTRANSP.IsNull then begin
    MessageDlg('Especifique a transportadora da compra!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet2;
    DBLookupComboBox4.SetFocus;
  end else if TbComprasCODCONDPGTO.IsNull then begin
    MessageDlg('Especifique o condição de pagamento da compra!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet2;
    DBLookupComboBox3.SetFocus;
  end else if TbItensComProdutos.RecNo = 0 then begin
    MessageDlg('Especifique os itens desta compra!', mtWarning, [MbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    BitItensNewClick(nil);
  end else
  try
    TbCompras.Post;
    TransactionCompras.CommitRetaining;
    AtualizaEstoque;
    MessageDlg('A compra do dia '+ TbCompras.FieldByName('DATACOMPRA').AsString +' foi editada com sucesso!',
      mtInformation, [MbOk], 0);
    if MessageDlg('Gostaria de lançar as contas a pagar desta compra?',mtInformation, [MbYes, MbNo], 0)=IDYES then
      try
        QryAux.SQL.Text := 'Select PRAZO1, PRAZO2, PRAZO3, PRAZO4, PRAZO5, PRAZO6 from CONDPGTO where '+
          'CODCONDPGTO = '+ TbCompras.FieldByName('CODCONDPGTO').AsString;
        QryAux.Prepare;
        QryAux.Open;
        NumParcs;
        vllaco := 1;
        vlDataUltVcto := TbComprasDATACOMPRA.Value;
        vlResumo := '  Informações sobre Contas a Pagar'+
                    ''#13#13'Parcela    -    Data Vcto.    -    Valor(R$)';

        QryAux.SQL.Text := 'Select CodBanco from CadGen where CODCADGEN = '+ TbComprasCODFORNGEN.AsString;
        QryAux.Prepare;
        QryAux.Open;

        Application.CreateForm(TFCPagar, FCPagar);
        FCPagar.TbCP.Append;

        FCPagar.TbCPDATA.Value := Date;
        FCPagar.TbCPNROCOMPRA.Value := TbComprasNROCOMPRA.Value;
        FCPagar.TbCPCODCONDPGTO.Value := TbComprasCODCONDPGTO.Value;

        FCPagar.TbCPCODBANCO.Value := QryAux.Fields[0].AsInteger;
        QryAux.Close;
        QryAux.UnPrepare;

        QryAux.SQL.Text := 'Select PRAZO1, PRAZO2, PRAZO3, PRAZO4, PRAZO5, PRAZO6 from CONDPGTO where '+
          'CODCONDPGTO = '+ TbCompras.FieldByName('CODCONDPGTO').AsString;
        QryAux.Prepare;
        QryAux.Open;

        FCPagar.TbCP.Post;
        FCPagar.TbCP.Edit;
        while vllaco <= vlNumParcs do begin
           vlDataUltVcto := vlDataUltVcto + QryAux.Fields[vllaco -1].AsInteger ;
           vlResumo := vlResumo +''#13'    '+ IntToStr(vllaco) + '              '+
             FormatDateTime('dd/mm/yyyy', vlDataUltVcto)+
             '          '+ FormatCurr('#,##0.00', vlVlrParc[vllaco]);
           Inc (vllaco);
           FCPagar.TbCPParcs.Append;
           FCPagar.TbCPParcsNROCPAGAR.Value := FCPagar.TbCPNROCPAGAR.Value;
           FCPagar.TbCPParcsNROPARC.Value := vllaco - 1;
           FCPagar.TbCPParcsVCTOPARC.Value := vlDataUltVcto;
           vlVlrCR := vlVlrparc[vllaco-1];
           FCPagar.TbCPParcsVLRPARC.Value := vlVlrCR;
           FCPagar.TbCPParcsSITUACAO.value := 'N';
           FCPagar.TbCPParcs.Post;
        end;
        FCPagar.TransactionCP.CommitRetaining;
        QryAux.Close;
        QryAux.UnPrepare;
        ShowMessage(vlResumo);
      except
        if QryAux.Active then begin
          QryAux.Close;
          QryAux.UnPrepare;
        end;
        FCPagar.TransactionCP.RollbackRetaining;
        MessageDlg('Erro ao gerar as contas a pagar!', mtError, [mbOK], 0);
      end;
  except
    TbCompras.Cancel;
    TransactionCompras.RollbackRetaining;
    MessageDlg('Erro ao incluir a compra do dia '+ TbCompras.FieldByName('DATACOMPRA').AsString +'!',
      mtError, [MbOk], 0);
  end;
end;

procedure TFCompras.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryFornecedoresLK.FetchAll;
end;

procedure TFCompras.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryCFOPLK.FetchAll;
end;

procedure TFCompras.DBLookupComboBox4Enter(Sender: TObject);
begin
  Dados.QryTransportadorasLK.FetchAll;
end;

procedure TFCompras.DBLookupComboBox3Enter(Sender: TObject);
begin
  Dados.QryCondPgtoLK.FetchAll;
end;

procedure TFCompras.TbItensComProdutosCalcFields(DataSet: TDataSet);
begin
  if (not TbItensComProdutosQUANT.IsNull) and (not TbItensComProdutosVLRUNIT.IsNull) then
    TbItensComProdutosVlrTot.Value := TbItensComProdutosQUANT.Value * TbItensComProdutosVLRUNIT.Value;
end;

procedure TFCompras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbCompras.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbCompras.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbCompras.State in [dsbrowse]) then
    TbCompras.First
  else if (Key = 35) and (TbCompras.State in [dsbrowse]) then
    TbCompras.Last
  else if Key = vk_F1 then
    AbreAjuda;
end;

procedure TFCompras.DSComprasStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbCompras.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  BitImporta.Enabled := BitBtnNovo.Enabled;
  BitItensNew.Enabled := not BitBtnNovo.Enabled;
  BitItensEdit.Enabled := not BitBtnNovo.Enabled;
  BitItensDel.Enabled := not BitBtnNovo.Enabled;  
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Compras';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição da Compra';
  end;
end;

procedure TFCompras.DSComprasDataChange(Sender: TObject; Field: TField);
begin
  DataChange;
end;

procedure TFCompras.BitItensEditClick(Sender: TObject);
begin
  if not TbItensComProdutos.IsEmpty then begin
    TbItensComProdutos.Edit;
    Application.CreateForm(TFComProdutos, FComProdutos);
    FComProdutos := nil;
  end;
  Verificacao;  
end;

procedure TFCompras.BitItensDelClick(Sender: TObject);
begin
  if (MessageDlg('Deseja excluir o produto '+ TbItensComProdutosProdutos.Value +' desta compra?',
    mtConfirmation, [mbYes, MbNo], 0) = IDYES) and (not TbItensComProdutos.IsEmpty) then
      TbItensComProdutos.Delete;
end;

procedure TFCompras.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFCFOP, FCFOP);
  FCFOP.TbCFOP.Locate('CODCFOP', TbComprasCODCFOP.Value, []);
  FCFOP.ShowModal;
  FCFOP := nil;
  Verificacao;
end;

procedure TFCompras.SpeedButton4Click(Sender: TObject);
begin
  if sender = SpeedButton1 then begin
    Application.CreateForm(TFGenerico, FGenerico);
    Dados.vgGenerica := 2;
    FGenerico.TbGenerico.Locate('CODCADGEN', TbComprasCODFORNGEN.Value, []);
  end else if sender = SpeedButton4 then begin
    Application.CreateForm(TFGenerico, FGenerico);
    Dados.vgGenerica := 3;
    FGenerico.TbGenerico.Locate('CODCADGEN', TbComprasCODTRANSP.Value, []);
  end else if Sender = SpeedButton6 then begin
    Application.CreateForm(TFGenerico, FGenerico);
    Dados.vgGenerica := 2;
    if DBLookupComboBox5.KeyValue <> 0 then
      FGenerico.TbGenerico.Locate('CODCADGEN', DBLookupComboBox5.KeyValue, []);
    TransactionCompras.CommitRetaining;
  end;
  FGenerico.ShowModal;
  FGenerico := nil;
  Verificacao;
end;

procedure TFCompras.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFCondPgto, FCondPgto);
  FCondPgto.TbCondPgto.Locate('CODCONDPGTO', TbComprasCODCONDPGTO.Value, []);
  FCondPgto.ShowModal;
  FCondPgto := nil;
  Verificacao;
end;

procedure TFCompras.BitImportaClick(Sender: TObject);
begin
  Application.CreateForm(TFImportaOC, FImportaOC);
  FImportaOC := nil;
end;

procedure TFCompras.BitBtn4Click(Sender: TObject);
begin
  if DBLookupComboBox5.KeyValue = 0 then begin
    MessageDlg('Especifique o fornecedor desta compra!', mtWarning, [MbOk], 0);
    DBLookupComboBox5.SetFocus;
  end else begin
    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'Select CG.CODCFOP, CG.CODCONDPGTO, CG.CODTRANSP '+
      ' FROM CADGEN CG WHERE CG.codCadGen = '+ IntToStr(DBLookupComboBox5.KeyValue);
    QryAux.Prepare;
    QryAux.Open;
    TbCompras.Append;
    TbComprasCODFORNGEN.Value := StrToInt(DBLookupComboBox5.KeyValue);
    TbComprasCODCFOP.Value := QryAux.Fields[0].AsInteger;
    TbComprasCODCONDPGTO.Value := QryAux.Fields[1].AsInteger;
    TbComprasCODTRANSP.Value := QryAux.Fields[2].AsInteger;
    QryAux.close;
    QryAux.UnPrepare;
    GBForn.Visible := False;
    TbComprasDATACOMPRA.Value := Date;
    TbComprasTIPONOTA.Value := 'S';
    PageControl1.ActivePage := TabSheet1;
    TbCompras.Post;
    TbCompras.Edit;
    DBEdit5.SetFocus;
  end;
end;

procedure TFCompras.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a edição da venda?', mtConfirmation, [mbYes, mbNo], 0) = IDYES then
    GBForn.Visible := False;
end;

procedure TFCompras.SpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFLocCompras, FLocCompras);
  FLocCompras := nil;
end;

end.
