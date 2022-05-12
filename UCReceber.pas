unit UCReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, Menus, StdCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, IBDatabase, DB, IBCustomDataSet, IBQuery;

type
  TFCReceber = class(TForm)
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
    N3: TMenuItem;
    Sair1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes1: TMenuItem;
    N2: TMenuItem;
    ContasaReceber1: TMenuItem;
    RadioButton2: TRadioButton;
    Panel2: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    SpeedButton5: TSpeedButton;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBRadioGroup1: TDBRadioGroup;
    PopupMenu1: TPopupMenu;
    BaixarContaaReceber1: TMenuItem;
    CancelarContaaReceber1: TMenuItem;
    N4: TMenuItem;
    Cliente1: TMenuItem;
    Banco1: TMenuItem;
    NaturezadeOperao1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    DsCR: TDataSource;
    DsCRParcs: TDataSource;
    TbCR: TIBDataSet;
    TbCRParcs: TIBDataSet;
    TransactionCR: TIBTransaction;
    TbCRParcsNROCRECEBER: TIntegerField;
    TbCRParcsNROPARC: TIntegerField;
    TbCRParcsVCTOPARC: TDateField;
    TbCRParcsVLRPARC: TIBBCDField;
    TbCRParcsPGTOPARC: TDateField;
    TbCRParcsVLRPAGO: TIBBCDField;
    TbCRParcsSITUACAO: TIBStringField;
    QryNF: TIBQuery;
    DSNF: TDataSource;
    TbCRNROCRECEBER: TIntegerField;
    TbCRCODCONDPGTO: TIntegerField;
    TbCRNROVENDA: TIntegerField;
    TbCRCODBANCO: TIntegerField;
    TbCRDATA: TDateField;
    TbCROBS: TMemoField;
    TbCRParcsSituacaoStr: TStringField;
    QryNFCODCFOP: TIntegerField;
    QryNFNROVENDA: TIntegerField;
    QryNFDATAVENDA: TDateField;
    QryNFCODCONDPGTO: TIntegerField;
    QryNFNRONF: TIntegerField;
    QryNFCODCLIGEN: TIntegerField;
    TbCRSituacaoCR: TIntegerField;
    QryAux: TIBQuery;
    procedure BitBtnSairClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DsCRDataChange(Sender: TObject; Field: TField);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure DsCRStateChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TbCRParcsCalcFields(DataSet: TDataSet);
    procedure BaixarContaaReceber1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure TbCRCalcFields(DataSet: TDataSet);
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
  FCReceber: TFCReceber;

implementation

uses UDados, UBanco, UCFOP, UCondPgto, ULocCR, UGenerico, UVendas, URelCRCP;

{$R *.dfm}

procedure TFCReceber.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 19);
end;

procedure TFCReceber.Atualizacao;
begin
  if (FVendas = nil) and not (TbCR.IsEmpty) then begin
    QryNF.Close;
    QryNF.UnPrepare;
    QryNF.SQL.Text := 'select v.codcfop, v.nrovenda, v.datavenda, v.codcondpgto, v.nronf, '+
      ' v.CodCliGen from Vendas v where v.nroVenda ='+ TbCRNROVENDA.AsString ;
    QryNF.Prepare;
    QryNF.Open;
    if QryNF.IsEmpty then begin
      QryNF.Close;
      QryNF.UnPrepare;
    end;
  end;
end;

procedure TFCReceber.BitBtnSairClick(Sender: TObject);
var
  vlCodAtual: Integer;
begin
  if BitBtnAlterar.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição da conta a receber do dia '+
    TbCR.FieldByName('DATA').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then begin
    vlCodAtual := TbCRNROCRECEBER.Value;
    TransactionCR.RollbackRetaining;
    TbCR.Close;
    TbCRParcs.Close;
    TbCR.Open;
    TbCRParcs.Open;
    TbCR.Locate('NROCRECEBER', vlCodAtual, []);
  end;
end;

procedure TFCReceber.Sair1Click(Sender: TObject);
begin
  BitBtnSairClick(nil);
end;

procedure TFCReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil)
end;

procedure TFCReceber.BitBtnNovoClick(Sender: TObject);
begin
  if not VerificarPermissao('CONTAS A RECEBER', 'EDI', 1) then begin
    TbCR.Append;
    TbCRDATA.Value := Date;
    TbCR.Post;
    TbCR.Edit;
    DBLookupComboBox1.SetFocus;
  end;
end;

procedure TFCReceber.BitBtnAlterarClick(Sender: TObject);
begin
  if not VerificarPermissao('CONTAS A RECEBER', 'EDI', 1) then begin
    if not TbCR.IsEmpty then begin
      TbCR.Edit;
      DBLookupComboBox1.SetFocus;
    end;
  end;
end;

procedure TFCReceber.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('CONTAS A RECEBER', 'EXC', 1) then begin
    if (not TbCR.IsEmpty) and (MessageDlg('Deseja excluir a Conta a Receber do dia '+
       TbCR.FieldByName('DATA').AsString +' ?', mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
      TbCRParcs.First;
      while not TbCRParcs.Eof do
        TbCRParcs.Delete;
      TbCR.Delete;
    end;
  end;
end;

procedure TFCReceber.Clientes1Click(Sender: TObject);
begin
  if not VerificarPermissao('CONTAS A RECEBER', 'REL', 1) then begin
    // fazer
  end;
end;

procedure TFCReceber.ContasaReceber1Click(Sender: TObject);
begin
  if VerificarPermissao('CONTAS A RECEBER', 'REL', 1) then begin
    Dados.vgTipoRel := 2;
    Application.CreateForm(TFRelCRCP, FRelCRCP);
    FRelCRCP.ShowModal;
  end;
end;

procedure TFCReceber.FormCreate(Sender: TObject);
procedure VerificarClientes;
begin
  if not VerificarPermissao('CLIENTES', 'CONS', 0) then begin
    SpeedButton1.Enabled := False;
    Clientes1.Enabled := False;
  end;
end;
procedure VerificarBancos;
begin
  if not VerificarPermissao('BANCOS', 'CONS', 0) then begin
    SpeedButton2.Enabled := False;
    Banco1.Enabled := False;
  end;
end;
procedure VerificarNatOper;
begin
  if not VerificarPermissao('CFOP', 'CONS', 0) then begin
    SpeedButton5.Enabled := False;
    NaturezadeOperao1.Enabled := False;
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
  if VerificarPermissao('CONTAS A RECEBER', 'CONS', 1) then begin
    VerificarClientes;
    VerificarBancos;
    VerificarNatOper;
    VerificarCondPgto;
    TbCR.Open;
    TbCRParcs.Open;
    Verificacao;
  end;
end;

procedure TFCReceber.RadioButton1Click(Sender: TObject);
const
  SQL = 'SELECT * FROM CRECEBER ';
begin
{  TbCReceber.Close;

VERIFICAR

  if sender = RadioButton1 then
    TbCReceber.SelectSQL.Text := SQL + 'ORDER BY NROCPAGAR'
  else if sender = RadioButton3 then
    TbCReceber.SelectSQL.Text := SQL + 'ORDER BY CODCLIENTE'
  else
    TbCReceber.SelectSQL.Text := SQL + 'ORDER BY CODCLIENTE'
  TbCReceber.Open;
  Edit1.Clear;}
end;

procedure TFCReceber.SpeedButton1Click(Sender: TObject);
begin
//  Algo parecido mas com IBQuery
  Dados.vgGenerica := 1;
  Application.CreateForm(TFGenerico, FGenerico);
//  FClientes.TbClientes.Locate('CODCLIENTE', TbComprasCODFORNEC.Value, []);
  FGenerico.ShowModal;
  Verificacao;
end;

procedure TFCReceber.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFBanco, FBanco);
  FBanco.TbBancos.Locate('CODBANCO', TbCRCODBANCO.Value, []);
  FBanco.ShowModal;
  Verificacao;
end;

procedure TFCReceber.SpeedButton5Click(Sender: TObject);
begin
//  Algo parecido mas com IBQuery
{  Application.CreateForm(TFCFOP, FCFOP);
  FCFOP.TbCFOP.Locate('CODCFOP', TbCPCODBANCO.Value, []);
  FBanco.ShowModal;}
  Verificacao;
end;

procedure TFCReceber.SpeedButton4Click(Sender: TObject);
begin
//  Algo parecido mas com IBQuery
{  Application.CreateForm(TFCondPgto, FCondPgto);
  FCondPgto.TbCondPgto.Locate('CODCONDPGTO', TbCPCODBANCO.Value, []);
  FCondPgto.ShowModal;}
  Verificacao;
end;

procedure TFCReceber.DsCRDataChange(Sender: TObject; Field: TField);
begin
  Atualizacao;
end;

procedure TFCReceber.BitBtnGravarClick(Sender: TObject);
begin
  if TbCRCODBANCO.IsNull then begin
    MessageDlg('Especifique o banco da conta a receber!', mtWarning, [MbOk], 0);
    DBLookupComboBox2.SetFocus;
  end else
  try
    TbCR.Post;
    TransactionCR.CommitRetaining;
    MessageDlg('A conta a receber do dia '+ TbCR.FieldByName('DATA').AsString +' foi editada com sucesso!',
      mtInformation, [MbOk], 0);
  except
    TbCR.Cancel;
    TransactionCR.RollbackRetaining;
    MessageDlg('Erro ao incluir A conta a receber do dia '+ TbCR.FieldByName('DATA').AsString +'!',
      mtError, [MbOk], 0);
  end;
end;

procedure TFCReceber.DsCRStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbCR.State in [dsinsert, dsedit]);
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := DBNavigator1.Enabled;
  Relatrios1.Enabled := DBNavigator1.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnAlterar.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Contas a Receber';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição de Contas a Receber';
  end;
end;

procedure TFCReceber.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFLocCR, FLocCR);
  FLocCR := nil;
end;

procedure TFCReceber.TbCRParcsCalcFields(DataSet: TDataSet);
begin
  if TbCRParcsSITUACAO.Value = 'N' then
    TbCRParcsSituacaoStr.Value := 'Aberto'
  else if TbCRParcsSITUACAO.Value = 'P' then
    TbCRParcsSituacaoStr.Value := 'Pago'
  else if TbCRParcsSITUACAO.Value = 'A' then
    TbCRParcsSituacaoStr.Value := 'Pago Antes do Vcto.'
  else if TbCRParcsSITUACAO.Value = 'C' then
    TbCRParcsSituacaoStr.Value := 'Pago Com Atraso';
end;

procedure TFCReceber.BaixarContaaReceber1Click(Sender: TObject);
procedure Edicao;
begin
  if TbCR.State in [dsBrowse] then
    TbCR.Edit;
  TbCRParcs.Edit;
  TbCRParcsSITUACAO.Clear;
end;
begin
  if TbCR.State in [dsEdit] then
    Exit;
  if sender = BaixarContaaReceber1 then begin
    Edicao;
    TbCRParcsPGTOPARC.Value := Date;
    TbCRParcsVLRPAGO.Value := TbCRParcsVLRPARC.Value;
  end else begin
    Edicao;
    TbCRParcsPGTOPARC.Clear;
    TbCRParcsVLRPAGO.Clear;
  end;
end;

procedure TFCReceber.PopupMenu1Popup(Sender: TObject);
begin
  BaixarContaaReceber1.Enabled := False;
  CancelarContaaReceber1.Enabled := False;
  if TbCRParcsSITUACAO.Value = 'N' then
    BaixarContaaReceber1.Enabled := True
  else
    CancelarContaaReceber1.Enabled := True;
end;

procedure TFCReceber.TbCRCalcFields(DataSet: TDataSet);
var
  vlAb, vlPg, vlPgAnt, vlPgAtr, vlNumCR, vlRecNo : Integer;
begin
  if FVendas = nil then begin
    vlAb := 0;
    vlPg := vlAb;
    vlPgAnt := vlAb;
    vlPgAtr := vlAb;
    vlRecNo := vlAb;
    vlNumCR := TbCRNROCRECEBER.Value;

    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'Select Count(CRP.situacao) from creceberparcs CRP '+
      ' Where CRP.nrocreceber = :plCR ';
    QryAux.ParamByName('plCR').Value := vlNumCR;
    QryAux.Prepare;
    QryAux.Open;
    vlRecNo := QryAux.Fields[0].AsInteger;

    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'Select Count(CRP.situacao) from creceberparcs CRP '+
      ' Where CRP.situacao = ''N'' and CRP.nrocreceber = :plCR ';
    QryAux.ParamByName('plCR').Value := vlNumCR;
    QryAux.Prepare;
    QryAux.Open;
    vlAb := QryAux.Fields[0].AsInteger;

    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'Select Count(CRP.situacao) from creceberparcs CRP '+
      ' Where CRP.situacao = ''P'' and CRP.nrocreceber = :plCR ';
    QryAux.ParamByName('plCR').Value := vlNumCR;
    QryAux.Prepare;
    QryAux.Open;
    vlPg := QryAux.Fields[0].AsInteger;

    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'Select Count(CRP.situacao) from creceberparcs CRP '+
      ' Where CRP.situacao = ''A'' and CRP.nrocreceber = :plCR ';
    QryAux.ParamByName('plCR').Value := vlNumCR;
    QryAux.Prepare;
    QryAux.Open;
    vlPgAnt := QryAux.Fields[0].AsInteger;

    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'Select Count(CRP.situacao) from creceberparcs CRP '+
      ' Where CRP.situacao = ''C'' and CRP.nrocreceber = :plCR ';
    QryAux.ParamByName('plCR').Value := vlNumCR;
    QryAux.Prepare;
    QryAux.Open;
    vlPgAtr := QryAux.Fields[0].AsInteger;

{    ShowMessage('Abertas: '+ IntToStr(vlAb)+''#13''+
                'Pagas: '+IntToStr(vlPg)+''#13''+
                'Pagas Antes: '+ IntToStr(vlPgAnt)+''#13''+
                'Pagas Depois: '+ IntToStr(vlPgAtr)+''#13#13''+
                'Total: '+ IntToStr(vlRecNo));}

    if vlAb = vlRecNo then
      TbCRSituacaoCR.Value := 3
    else if (vlAb > 0) and ((vlPgAnt > 0) or (vlPg > 0)) and (vlPgAtr = 0) then
      TbCRSituacaoCR.Value := 1
    else if (vlAb > 0) and (vlPgAtr > 0) then
      TbCRSituacaoCR.Value := 2
    else if (vlPg + vlPgAnt = vlRecNo) then
      TbCRSituacaoCR.Value := 4
    else if (vlPg + vlPgAnt + vlPgAtr = vlRecNo) then
      TbCRSituacaoCR.Value := 5
  end;

end;

procedure TFCReceber.DBGrid1ColExit(Sender: TObject);
begin
  if TbCRParcs.State in [dsEdit] then begin
    if TbCRParcsPGTOPARC.Value = TbCRParcsVCTOPARC.Value then
     TbCRParcsSITUACAO.Value := 'P'
    else if TbCRParcsPGTOPARC.Value < TbCRParcsVCTOPARC.Value then
      TbCRParcsSITUACAO.Value := 'A'
    else if TbCRParcsPGTOPARC.Value > TbCRParcsVCTOPARC.Value then
      TbCRParcsSITUACAO.Value := 'C'
    else if TbCRParcsVLRPAGO.IsNull then
      TbCRParcsSITUACAO.Value := 'N';
    TbCRParcs.Post;
  end;
end;

procedure TFCReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
