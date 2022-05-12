unit UGenerico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBQuery, DB, IBCustomDataSet, IBDatabase, Menus, StdCtrls,
  DBCtrls, Mask, Buttons, ComCtrls, ExtCtrls;

type
  TFGenerico = class(TForm)
    Panel1: TPanel;
    BitBtnNovo: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    Label30: TLabel;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SpeedButton2: TSpeedButton;
    Label31: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit14: TDBEdit;
    Edit4: TEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit4: TDBEdit;
    Edit3: TEdit;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Label29: TLabel;
    SpeedButton5: TSpeedButton;
    Label32: TLabel;
    Label33: TLabel;
    SpeedButton7: TSpeedButton;
    Label34: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit5: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit19: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit23: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    GroupBox4: TGroupBox;
    Label26: TLabel;
    Label28: TLabel;
    Edit2: TEdit;
    Edit5: TEdit;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    SBBusca: TSpeedButton;
    DBNavigator1: TDBNavigator;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Edit1: TEdit;
    RadioButton3: TRadioButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Cidades1: TMenuItem;
    N3: TMenuItem;
    Sair1: TMenuItem;
    Relatrios1: TMenuItem;
    Ficha: TMenuItem;
    N1: TMenuItem;
    Generico: TMenuItem;
    N2: TMenuItem;
    Generico1: TMenuItem;
    Generico2: TMenuItem;
    Generico3: TMenuItem;
    DSGenerico: TDataSource;
    TransactionGen: TIBTransaction;
    TbGenerico: TIBDataSet;
    QryAux: TIBQuery;
    GroupBox5: TGroupBox;
    Label35: TLabel;
    DBEdit20: TDBEdit;
    TbGenericoCODCADGEN: TIntegerField;
    TbGenericoCODCIDADE: TIntegerField;
    TbGenericoCODCIDADECOB: TIntegerField;
    TbGenericoCODBANCO: TIntegerField;
    TbGenericoCODCONDPGTO: TIntegerField;
    TbGenericoCODCFOP: TIntegerField;
    TbGenericoCODTRANSP: TIntegerField;
    TbGenericoDATACADASTRO: TDateField;
    TbGenericoNOME: TIBStringField;
    TbGenericoFANTASIA: TIBStringField;
    TbGenericoCONTATO: TIBStringField;
    TbGenericoENDERECO: TIBStringField;
    TbGenericoBAIRRO: TIBStringField;
    TbGenericoFONEGERAL: TIBStringField;
    TbGenericoFONEAUX: TIBStringField;
    TbGenericoFAX: TIBStringField;
    TbGenericoEMAIL: TIBStringField;
    TbGenericoTIPOPESSOA: TIBStringField;
    TbGenericoOBS: TMemoField;
    TbGenericoCNPJCPF: TIBStringField;
    TbGenericoIERG: TIBStringField;
    TbGenericoENDERECOCOB: TIBStringField;
    TbGenericoBAIRROCOB: TIBStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    TbGenericoTIPOT: TIBStringField;
    TbGenericoTIPOC: TIBStringField;
    TbGenericoTIPOF: TIBStringField;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure DSGenericoStateChange(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DSGenericoDataChange(Sender: TObject; Field: TField);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure FichaClick(Sender: TObject);
    procedure GenericoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBBuscaClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox5Enter(Sender: TObject);
    procedure DBLookupComboBox7Enter(Sender: TObject);
    procedure DBLookupComboBox6Enter(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure Generico1Click(Sender: TObject);
    procedure Generico2Click(Sender: TObject);
    procedure Generico3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
  private
    { Private declarations }
    vpGenerica: Smallint;
    procedure DataChange;
    procedure Verificacao;
  public
    { Public declarations }
    vpWhere: String;
  end;

var
  FGenerico: TFGenerico;

implementation

uses USistema, UDados, UCidades, URelFichaGenerico, URelGenerico,
  ULocGenerico, UCFOP, UCondPgto, UBanco;

{$R *.dfm}

procedure TFGenerico.DataChange;
var
  vlVlrPend: Currency;
  vlNumPend, vlNumAtraso: Integer;
procedure EstatCli;
begin
  // Orc
  QryAux.SQL.Text := 'select count(o.codorcamento) from orcamentos O '+
    ' where o.codcligen = '+ TbGenericoCODCADGEN.AsString +' group by o.codcligen';
  QryAux.Prepare;
  QryAux.Open;
  Edit2.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'select first 1 (o.dataorcamento) from orcamentos O '+
    'where o.codcligen = '+ TbGenericoCODCADGEN.AsString + ' order by O.dataorcamento Desc';
  QryAux.Prepare;
  QryAux.Open;
  Edit5.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;

  // Ven
  QryAux.SQL.Text := 'select sum(vp.quant * vp.vlrunit)  from venprodutos VP '+
   'inner join vendas V on V.nrovenda = vp.nrovenda '+
   'inner join cadgen CG on cg.codcadgen = V.codcligen '+
   'where  v.codcligen = '+ TbGenericoCODCADGEN.AsString;
  QryAux.Prepare;
  QryAux.Open;
  Edit7.Text := FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'select count(V.NroVenda) from Vendas V '+
    ' where V.codcligen = '+ TbGenericoCODCADGEN.AsString +' group by V.codcligen';
  QryAux.Prepare;
  QryAux.Open;
  Edit6.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'select first 1 (v.datavenda) from Vendas V '+
    'where v.codcligen = '+ TbGenericoCODCADGEN.AsString + ' order by v.datavenda Desc';
  QryAux.Prepare;
  QryAux.Open;
  Edit8.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;

  // CR
  QryAux.SQL.Text := 'select crp.nroparc from creceberparcs crp '+
    'inner join creceber CR on CR.nrocreceber = CRP.nrocreceber '+
    'inner join Vendas V on V.nrovenda = CR.nrovenda '+
    'inner join cadgen CG on CG.codcadgen = v.codcligen '+
    'where v.codcligen = '+ TbGenericoCODCADGEN.AsString +' '+
    'and crp.situacao = ''C'' '+
    'order by crp.vctoparc';
  QryAux.Prepare;
  QryAux.Open;
  vlNumAtraso := 0;
  while not QryAux.Eof do begin
    inc(vlNumAtraso);
    QryAux.Next;
  end;
  Edit12.Text := IntToStr(vlNumPend);
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'select crp.vlrparc from creceberparcs crp '+
    'inner join creceber CR on CR.nrocreceber = CRP.nrocreceber '+
    'inner join Vendas V on V.nrovenda = CR.nrovenda '+
    'inner join cadgen CG on v.codcligen = cg.codcadgen '+
    'where cg.codcadgen = '+ TbGenericoCODCADGEN.AsString +' '+
    'and crp.vctoparc >= current_date '+
    'and crp.situacao = ''N'' '+
    'order by crp.vctoparc';
  QryAux.Prepare;
  QryAux.Open;
  vlVlrPend := 0;
  vlNumPend := 0;
  while not QryAux.Eof do begin
    vlVlrPend := vlVlrPend + QryAux.Fields[0].AsCurrency;
    inc(vlNumPend);
    QryAux.Next;
  end;
  Edit11.Text := IntToStr(vlNumPend);
  Edit9.Text := FormatCurr('#,##0.00', vlVlrPend);
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'select first 1 crp.vctoparc from creceberparcs crp '+
    'inner join creceber CR on CR.nrocreceber = CRP.nrocreceber '+
    'inner join Vendas V on V.nrovenda = CR.nrovenda '+
    'inner join cadgen CG on V.codcligen = CG.codcadgen '+
    'where CG.codcadgen = '+ TbGenericoCODCADGEN.AsString +' '+
    'and crp.vctoparc >= current_date '+
    'and crp.situacao = ''N'' '+
    'order by crp.vctoparc ASC';
  QryAux.Prepare;
  QryAux.Open;
  Edit10.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;
end;
procedure EstatForn;
begin
  // OC
  QryAux.SQL.Text := 'select count(oc.codordemcompra) from ORDEMCOMPRA OC '+
    ' where oc.codforngen = '+ TbGenericoCODCADGEN.AsString +' group by oc.codforngen';
  QryAux.Prepare;
  QryAux.Open;
  Edit2.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;


  QryAux.SQL.Text := 'select first 1 (oc.dataordemcompra) from ordemcompra OC '+
    'where oc.codforngen = '+ TbGenericoCODCADGEN.AsString + ' order by OC.dataordemcompra Desc';
  QryAux.Prepare;
  QryAux.Open;
  Edit5.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;

  // Comp
  QryAux.SQL.Text := 'select sum(cp.quant * cp.vlrunit)  from COMPRODUTOS CP '+
   'inner join Compras C on C.nroCompra = cp.nroCompra '+
   'inner join CADGEN CG on CG.codcadgen = c.codforngen '+
   'where c.codforngen = '+ TbGenericoCODCADGEN.AsString;
  QryAux.Prepare;
  QryAux.Open;
  Edit7.Text := FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'select count(C.NroCompra) from Compras C '+
    ' where c.codforngen = '+ TbGenericoCODCADGEN.AsString +' group by c.codforngen';
  QryAux.Prepare;
  QryAux.Open;
  Edit6.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'select first 1 (c.datacompra) from Compras C '+
    'where c.codforngen = '+ TbGenericoCODCADGEN.AsString +' order by c.datacompra Desc';
  QryAux.Prepare;
  QryAux.Open;
  Edit8.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;

  // CP
  QryAux.SQL.Text := 'select cpp.nroparc from cpagarparcs cpp '+
    'inner join cpagar CP on CP.nrocpagar = CPP.nrocpagar '+
    'inner join Compras C on C.nrocompra = CP.nrocompra '+
    'inner join CadGen CG on CG.codcadgen = C.codforngen '+
    'where C.codforngen = '+ TbGenericoCODCADGEN.AsString +' '+
    'and cpp.situacao = ''C'' '+
    'order by cpp.vctoparc';
  QryAux.Prepare;
  QryAux.Open;
  vlNumAtraso := 0;
  while not QryAux.Eof do begin
    inc(vlNumAtraso);
    QryAux.Next;
  end;
  Edit12.Text := IntToStr(vlNumPend);
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'select cpp.vlrparc from cpagarparcs cpp '+
    'inner join cpagar CP on CP.nrocpagar = CPP.nrocpagar '+
    'inner join Compras C on C.nrocompra = CP.nrocompra '+
    'inner join CadGen CG on c.codforngen = CG.codcadgen '+
    'where CG.codcadgen = '+ TbGenericoCODCADGEN.AsString +' '+
    'and cpp.vctoparc >= current_date '+
    'and cpp.situacao = ''N'' '+
    'order by cpp.vctoparc';
  QryAux.Prepare;
  QryAux.Open;
  vlVlrPend := 0;
  vlNumPend := 0;
  while not QryAux.Eof do begin
    vlVlrPend := vlVlrPend + QryAux.Fields[0].AsCurrency;
    inc(vlNumPend);
    QryAux.Next;
  end;
  Edit11.Text := IntToStr(vlNumPend);
  Edit9.Text := FormatCurr('#,##0.00', vlVlrPend);
  QryAux.Close;
  QryAux.UnPrepare;

  QryAux.SQL.Text := 'select first 1 cpp.vctoparc from cpagarparcs cpp '+
    'inner join cpagar CP on CP.nrocpagar = CPP.nrocpagar '+
    'inner join Compras C on C.nrocompra = CP.nrocompra '+
    'inner join CadGen CG on CG.codcadgen = c.codforngen '+
    'where c.codforngen = '+ TbGenericoCODCADGEN.AsString +' '+
    'and cpp.vctoparc >= current_date '+
    'and cpp.situacao = ''N'' '+
    'order by cpp.vctoparc ASC';
  QryAux.Prepare;
  QryAux.Open;
  Edit10.Text := QryAux.Fields[0].AsString;
  QryAux.Close;
  QryAux.UnPrepare;
end;
begin
  Edit2.Clear;
  Edit5.Clear;
  Edit3.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit12.Clear;
  Edit11.Clear;
  Edit9.Clear;
  Edit10.Clear;
  case vpGenerica of
    1: EstatCli;
    2: EstatForn;
    3: ;// Fazer as estatisticas da Transportadoras
  end;

  Verificacao;
  if not TbGenericoCODCIDADE.IsNull then begin
    Dados.QryCidadesLK.Locate('CODCIDADE', TbGenericoCODCIDADE.Value, []);
    Dados.QryEstadosLK.Locate('CODESTADO', Dados.QryCidadesLK.Fields[2].AsInteger, []);
    Edit3.Text := Dados.QryEstadosLK.FieldByName('UF').AsString;
  end;
  if not TbGenericoCODCIDADECOB.IsNull then begin
    Dados.QryCidadesLK.Locate('CODCIDADE', TbGenericoCODCIDADECOB.Value, []);
    Dados.QryEstadosLK.Locate('CODESTADO', Dados.QryCidadesLK.Fields[2].AsInteger, []);
    Edit4.Text := Dados.QryEstadosLK.FieldByName('UF').AsString;
  end;
end;
procedure TFGenerico.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 25);
end;

procedure TFGenerico.FormCreate(Sender: TObject);
procedure Cli;
  procedure VerificarCity;
  begin
    if not VerificarPermissao('CIDADES', 'CONS', 0) then begin
      SpeedButton1.Enabled := False;
      SpeedButton2.Enabled := False;
    end;
  end;
  procedure VerificarExtras;
  begin
    if not VerificarPermissao('EXTRAS DO MÓDULO', 'CONS', 0) then
      TabSheet2.TabVisible := False;
  end;
begin
  if VerificarPermissao('CLIENTES', 'CONS', 1) then begin
    VerificarCity;
    VerificarExtras;
    Caption := 'Cadastro de Clientes';
    TabSheet1.Caption := 'Dados do Cliente';
    TabSheet3.Caption := 'Padrões do Cliente';
    TabSheet2.Caption := 'Estatísticas do Cliente';
    Ficha.Caption := 'Ficha do Cliente';
    Generico.Caption := 'Clientes';
    Generico1.Caption := 'Orçamentos';
    Generico2.Caption := 'Vendas';
    Generico3.Caption := 'Contas a Receber';
    GroupBox4.Caption := Generico1.Caption;
    GroupBox2.Caption := Generico2.Caption;
    GroupBox3.Caption := Generico3.Caption;
    Label26.Caption := 'Nº de Orçamentos';
    Label28.Caption := 'Data do Último Orçamento';
    Label21.Caption := 'Nº de Vendas';
    Label22.Caption := 'Valor das Vendas';
    Label5.Caption := 'Data da Última Venda';
    Label27.Caption := 'Nº de Contas a Receber Pagas com Atraso';
    Label23.Caption := 'Nº de Contas a Receber Pendentes';
    Label24.Caption := 'Valor das Contas a Receber Pendentes';
    Label25.Caption := 'Data do Próximo Recebimento';
    BitBtnNovo.Hint := 'Inserir Cliente';
    BitBtnAlterar.Hint := 'Alterar Cliente';
    BitBtnExcluir.Hint := 'Excluir Cliente';
    BitBtnGravar.Hint := 'Gravar Cliente';
    GroupBox5.Caption := 'Este Cliente Também é';
    SBBusca.Hint := 'Busca Avançada de Clientes';
    Label11.Caption := 'Fone Fábrica';
    Label18.Caption := 'Fone Loja';
    TbGenerico.SelectSQL.Text := 'SELECT * FROM CADGEN where TIPOC = ''T''';
    TbGenerico.Open;
    PageControl1.ActivePage := TabSheet1;
  end;
end;

procedure Forn;
  procedure VerificarCity;
  begin
    if not VerificarPermissao('CIDADES', 'CONS', 0) then
      SpeedButton1.Enabled := False;
  end;
  procedure VerificarExtras;
  begin
    if not VerificarPermissao('EXTRAS DO MÓDULO', 'CONS', 0) then
      TabSheet2.Visible := False;
  end;
begin
  if VerificarPermissao('FORNECEDORES', 'CONS', 1) then begin
    VerificarCity;
    VerificarExtras;
    Caption := 'Cadastro de Fornecedores';
    TabSheet1.Caption := 'Dados do Fornecedor';
    TabSheet3.Caption := 'Padrões do Fornecedor';
    TabSheet2.Caption := 'Estatísticas do Fornecedor';
    Ficha.Caption := 'Ficha do Fornecedor';
    Generico.Caption := 'Fornecedores';
    Generico1.Caption := 'Ordens de Compra';
    Generico2.Caption := 'Compras';
    Generico3.Caption := 'Contas a Pagar';
    GroupBox4.Caption := Generico1.Caption;
    GroupBox2.Caption := Generico2.Caption;
    GroupBox3.Caption := Generico3.Caption;
    Label26.Caption := 'Nº de Ordens de Compra';
    Label28.Caption := 'Data da Última Ordem de Compra';
    Label21.Caption := 'Nº de Compras';
    Label22.Caption := 'Valor das Compras';
    Label5.Caption := 'Data da Última Compra';
    Label27.Caption := 'Nº de Contas a Pagar Pagas com Atraso';
    Label23.Caption := 'Nº de Contas a Pagar Pendentes';
    Label24.Caption := 'Valor das Contas a Pagar Pendentes';
    Label25.Caption := 'Data do Próximo Pagamento';
    BitBtnNovo.Hint := 'Inserir Cliente';
    BitBtnAlterar.Hint := 'Alterar Fornecedor';
    BitBtnExcluir.Hint := 'Excluir Fornecedor';
    BitBtnGravar.Hint := 'Gravar Fornecedor';
    GroupBox5.Caption := 'Este Fornecedor Também é';
    SBBusca.Hint := 'Busca Avançada de Fornecedores';
    TbGenerico.SelectSQL.Text := 'SELECT * FROM CADGEN where TIPOF = ''T''';
    TbGenerico.Open;
    PageControl1.ActivePage := TabSheet1;
  end;
end;

procedure Trans;
  procedure VerificarCity;
  begin
    if not VerificarPermissao('CIDADES', 'CONS', 0) then
      SpeedButton1.Enabled := False;
  end;
begin
  if VerificarPermissao('TRANSPORTADORAS', 'CONS', 1) then begin
    VerificarCity;
    Caption := 'Cadastro de Transportadoras';
    TabSheet1.Caption := 'Dados da Transportadora';
    TabSheet3.TabVisible := False;
    TabSheet2.Caption := 'Estatísticas da Transportadora';
    GroupBox2.Visible := TabSheet3.TabVisible;
    GroupBox3.Visible := TabSheet3.TabVisible;
    Ficha.Caption := 'Ficha da Transportadora';
    Generico.Caption := 'Transportadoras';
    N2.Visible := False;
    Generico1.Visible := TabSheet3.TabVisible;
    Generico2.Visible := TabSheet3.TabVisible;
    Generico3.Visible := TabSheet3.TabVisible;
    GroupBox4.Caption := 'Transportes';
    Label26.Caption := 'Nº de Transportes';
    Label28.Caption := 'Data do Último Transporte';
    BitBtnNovo.Hint := 'Inserir Transportadora';
    BitBtnAlterar.Hint := 'Alterar Transportadora';
    BitBtnExcluir.Hint := 'Excluir Transportadora';
    BitBtnGravar.Hint := 'Gravar Transportadora';
    GroupBox5.Caption := 'Esta Transportadora Também é';
    SBBusca.Hint := 'Busca Avançada de Transportadoras';
    TbGenerico.SelectSQL.Text := 'SELECT * FROM CADGEN where TIPOT = ''T''';
    TbGenerico.Open;
    PageControl1.ActivePage := TabSheet1;
  end;
end;
begin
  vpGenerica := Dados.vgGenerica;
  case vpGenerica of
    1: Cli;
    2: Forn;
    3: Trans;
  end;
end;

procedure TFGenerico.DSGenericoStateChange(Sender: TObject);
procedure Cli;
begin
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Clientes';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição de Clientes';
  end;
end;
procedure Forn;
begin
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Fornecedores';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição de Fornecedores';
  end;
end;
procedure Trans;
begin
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Transportadoras';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição de Transportadoras';
  end;
end;
begin
  DBNavigator1.Enabled := not (TbGenerico.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  case vpGenerica of
     1: Cli;
     2: Forn;
     3: Trans;
  end;
end;

procedure TFGenerico.BitBtnSairClick(Sender: TObject);
var
  vlTipo: String;
begin
  vlTipo := '';
  if BitBtnNovo.Enabled then
    Close
  else begin
    case vpGenerica of
      1: vlTipo := 'do cliente';
      2: vlTipo := 'do fornecedor';
      3: vlTipo := 'da transportadora';
    end;
    if MessageDlg('Deseja cancelar a edição '+ vlTipo +' '+
     TbGenerico.FieldByName('NOME').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then begin
      TbGenerico.Cancel;
      TransactionGen.RollbackRetaining;
     end;
  end;
end;

procedure TFGenerico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFGenerico.BitBtnGravarClick(Sender: TObject);
procedure Confirma;
begin
  try
    TbGenerico.Post;
    TransactionGen.CommitRetaining;
    MessageDlg(TbGenericoNOME.Value +' editado com sucesso!', mtInformation, [MbOk], 0);
  except
    TbGenerico.Cancel;
    TransactionGen.RollbackRetaining;
    MessageDlg('Erro ao editar '+ TbGenericoNOME.Value +'!', mtError, [MbOk], 0);
  end;
end;
procedure GravarCli;
begin
  if TbGenericoNOME.IsNull then begin
    MessageDlg('Especifique um nome para o cliente!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit3.SetFocus;
  end else if TbGenericoCODCIDADE.IsNull then begin
    MessageDlg('Especifique a cidade do cliente!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBLookupComboBox1.SetFocus;
  end else if TbGenericoCODCIDADECOB.IsNull then begin
    MessageDlg('Especifique a cidade de cobrança do cliente!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBLookupComboBox2.SetFocus;
  end else if TbGenericoCNPJCPF.IsNull then begin
    if TbGenericoTIPOPESSOA.Value = 'J' then
      MessageDlg('Especifique o CNPJ do cliente!', mtWarning, [mbOk], 0)
    else
      MessageDlg('Especifique o CPF do cliente!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit10.SetFocus;
  end else if TbGenericoIERG.IsNull then begin
    if TbGenericoTIPOPESSOA.Value = 'J' then
      MessageDlg('Especifique a IE do cliente!', mtWarning, [mbOk], 0)
    else
      MessageDlg('Especifique o RG do cliente!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit11.SetFocus;
  end else if TbGenericoCODBANCO.IsNull then begin
    MessageDlg('Especifique o banco padrão do cliente!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox3.SetFocus;
  end else if TbGenericoCODCFOP.IsNull then begin
    MessageDlg('Especifique o cfop padrão do cliente!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox5.SetFocus;
  end else if TbGenericoCODCONDPGTO.IsNull then begin
    MessageDlg('Especifique a condição de pagamento padrão do cliente!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox7.SetFocus;
  end else if TbGenericoCODTRANSP.IsNull then begin
    MessageDlg('Especifique a transportadora padrão do cliente!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox6.SetFocus;
  end else
    Confirma;
end;
procedure GravarForn;
begin
  if TbGenericoNOME.IsNull then begin
    MessageDlg('Especificar o nome do fornecedor!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end else if TbGenericoCODCIDADE.IsNull then begin
    MessageDlg('Especificar a cidade do fornecedor!', mtWarning, [mbOk], 0);
    DBLookupComboBox1.SetFocus;
  end else if TbGenericoCODCIDADECOB.IsNull then begin
    MessageDlg('Especifique a cidade de cobrança do fornecedor!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBLookupComboBox2.SetFocus;
  end else if TbGenericoCNPJCPF.IsNull then begin
    if TbGenericoTIPOPESSOA.Value = 'J' then
      MessageDlg('Especifique o CNPJ do fornecedor!', mtWarning, [mbOk], 0)
    else
      MessageDlg('Especifique o CPF do fornecedor!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit10.SetFocus;
  end else if TbGenericoIERG.IsNull then begin
    if TbGenericoTIPOPESSOA.Value = 'J' then
      MessageDlg('Especifique a IE do fornecedor!', mtWarning, [mbOk], 0)
    else
      MessageDlg('Especifique o RG do fornecedor!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit11.SetFocus;
  end else if TbGenericoCODBANCO.IsNull then begin
    MessageDlg('Especifique o banco padrão do fornecedor!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox3.SetFocus;
  end else if TbGenericoCODCFOP.IsNull then begin
    MessageDlg('Especifique o cfop padrão do fornecedor!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox5.SetFocus;
  end else if TbGenericoCODCONDPGTO.IsNull then begin
    MessageDlg('Especifique a condição de pagamento padrão do fornecedor!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet3;
    DBLookupComboBox7.SetFocus;
  end else
    Confirma;
end;
procedure GravarTransp;
begin
  if TbGenericoNOME.IsNull then begin
    MessageDlg('Especifique o nome da transportadora!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end else if TbGenericoCODCIDADE.IsNull then begin
    MessageDlg('Especifique a cidade da transportadora!', mtWarning, [mbOk], 0);
    DBLookupComboBox1.SetFocus;
  end else if TbGenericoCODCIDADECOB.IsNull then begin
    MessageDlg('Especifique a cidade de cobrança da transportadora!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBLookupComboBox2.SetFocus;
  end else if TbGenericoCNPJCPF.IsNull then begin
    if TbGenericoTIPOPESSOA.Value = 'J' then
      MessageDlg('Especifique o CNPJ da transportadora!', mtWarning, [mbOk], 0)
    else
      MessageDlg('Especifique o CPF da transportadora!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit10.SetFocus;
  end else if TbGenericoIERG.IsNull then begin
    if TbGenericoTIPOPESSOA.Value = 'J' then
      MessageDlg('Especifique a IE da transportadora!', mtWarning, [mbOk], 0)
    else
      MessageDlg('Especifique o RG da transportadora!', mtWarning, [mbOk], 0);
    PageControl1.ActivePage := TabSheet1;
    DBEdit11.SetFocus;
  end else
    Confirma;
end;
begin
  case vpGenerica of
    1: GravarCli;
    2: GravarForn;
    3: GravarTransp;
  end;
end;

procedure TFGenerico.BitBtnExcluirClick(Sender: TObject);
procedure ExcluirCli;
begin
  if VerificarPermissao('CLIENTES', 'EXC', 1) then begin
    if (not TbGenerico.IsEmpty) and (MessageDlg('Deseja excluir o cliente '+
       TbGenerico.FieldByName('NOME').AsString +' ?', mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
       TbGenerico.Delete;
       TransactionGen.CommitRetaining;
    end;
  end;
end;
procedure ExcluirForn;
begin
  if VerificarPermissao('FORNECEDORES', 'EXC', 1) then
    if (not TbGenerico.IsEmpty) and (MessageDlg('Deseja excluir o fornecedor '+
       TbGenerico.FieldByName('NOME').AsString +' ?', mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
      TbGenerico.Delete;
      TransactionGen.CommitRetaining;
  end;
end;
procedure ExcluirTrans;
begin
  if VerificarPermissao('TRANSPORTADORAS', 'EXC', 1) and (not TbGenerico.IsEmpty) and
      (MessageDlg('Deseja excluir a transportadora '+ TbGenerico.FieldByName('NOME').AsString +' ?',
        mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
    TbGenerico.Delete;
    TransactionGen.CommitRetaining;
  end;
end;
begin
  case vpGenerica of
    1: ExcluirCli;
    2: ExcluirForn;
    3: ExcluirTrans;
  end;
end;

procedure TFGenerico.BitBtnAlterarClick(Sender: TObject);
procedure AlterarCli;
begin
  if VerificarPermissao('CLIENTES', 'EDI', 1) and (not TbGenerico.IsEmpty) then
    TbGenerico.Edit;
end;
procedure AlterarForn;
begin
  if VerificarPermissao('FORNECEDORES', 'EDI', 1) and (not TbGenerico.IsEmpty) then
    TbGenerico.Edit;
end;
procedure AlterarTrans;
begin
  if VerificarPermissao('TRANSPORTADORAS', 'EDI', 1) and (not TbGenerico.IsEmpty) then
    TbGenerico.Edit;
end;
begin
  case vpGenerica of
    1: AlterarCli;
    2: AlterarForn;
    3: AlterarTrans;
  end;
end;

procedure TFGenerico.BitBtnNovoClick(Sender: TObject);
procedure NovoCli;
begin
  if VerificarPermissao('CLIENTES', 'EDI', 1) then begin
    TbGenerico.Append;
    TbGenericoDATACADASTRO.Value := Date;
    TbGenericoTIPOPESSOA.Value := 'J';
    TbGenericoTIPOC.Value := 'T';
    TbGenericoTIPOF.Value := 'F';
    TbGenericoTIPOT.Value := 'F';
    PageControl1.ActivePage := TabSheet1;
    DBEdit3.SetFocus;
  end;
end;
procedure NovoForn;
begin
  if VerificarPermissao('FORNECEDORES', 'EDI', 1) then begin
    TbGenerico.Append;
    TbGenericoDATACADASTRO.Value := Date;
    TbGenericoTIPOPESSOA.Value := 'J';
    TbGenericoTIPOC.Value := 'F';
    TbGenericoTIPOF.Value := 'T';
    TbGenericoTIPOT.Value := 'F';
    PageControl1.ActivePage := TabSheet1;
    DBEdit3.SetFocus;
  end;
end;
procedure NovoTransp;
begin
  if VerificarPermissao('TRANSPORTADORAS', 'EDI', 1) then begin
    TbGenerico.Append;
    TbGenericoDATACADASTRO.Value := Date;
    TbGenericoTIPOPESSOA.Value := 'J';
    TbGenericoTIPOC.Value := 'F';
    TbGenericoTIPOF.Value := 'F';
    TbGenericoTIPOT.Value := 'T';
    PageControl1.ActivePage := TabSheet1;
    DBEdit3.SetFocus;
  end;
end;
begin
  case vpGenerica of
    1: NovoCli;
    2: NovoForn;
    3: NovoTransp;
  end;
end;

procedure TFGenerico.RadioButton1Click(Sender: TObject);
const
  SQLC = 'SELECT * FROM CADGEN WHERE TIPOC = ''T''';
  SQLF = 'SELECT * FROM CADGEN WHERE TIPOF = ''T''';
  SQLT = 'SELECT * FROM CADGEN WHERE TIPOT = ''T''';
procedure OrdenaCli;
begin
  if sender = RadioButton1 then
    TbGenerico.SelectSQL.Text := SQLC + 'ORDER BY CODCADGEN'
  else if sender = RadioButton2 then
    TbGenerico.SelectSQL.Text := SQLC + 'ORDER BY NOME'
  else
    TbGenerico.SelectSQL.Text := SQLC + 'ORDER BY CODCIDADE';
end;
procedure OrdenaForn;
begin
  if sender = RadioButton1 then
    TbGenerico.SelectSQL.Text := SQLF + 'ORDER BY CODCADGEN'
  else if sender = RadioButton2 then
    TbGenerico.SelectSQL.Text := SQLF + 'ORDER BY NOME'
  else
    TbGenerico.SelectSQL.Text := SQLF + 'ORDER BY CODCIDADE';
end;
procedure OrdenaTrans;
begin
  if sender = RadioButton1 then
    TbGenerico.SelectSQL.Text := SQLT + 'ORDER BY CODCADGEN'
  else if sender = RadioButton2 then
    TbGenerico.SelectSQL.Text := SQLT + 'ORDER BY NOME'
  else
    TbGenerico.SelectSQL.Text := SQLT + 'ORDER BY CODCIDADE';
end;
begin
  TbGenerico.Close;
  case vpGenerica of
    1: OrdenaCli;
    2: OrdenaForn;
    3: OrdenaTrans;
  end;
  TbGenerico.Open;
  Edit1.Clear;
end;

procedure TFGenerico.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFCidades, FCidades);
  if Sender = SpeedButton1 then
    FCidades.TbCidades.Locate('CODCIDADE', TbGenericoCODCIDADE.Value, [])
  else
    FCidades.TbCidades.Locate('CODCIDADE', TbGenericoCODCIDADECOB.Value, []);
  FCidades.ShowModal;
  FCidades := nil;
  Verificacao;
  DataChange;
  Dados.QryEstadosLK.Close;
  Dados.QryEstadosLK.Open;
end;

procedure TFGenerico.DSGenericoDataChange(Sender: TObject; Field: TField);
begin
  DataChange;
  if TbGenerico.State in [dsbrowse] then
    DBRadioGroup1Change(nil);
end;

procedure TFGenerico.DBEdit10Exit(Sender: TObject);
begin
  if TbGenerico.State in [dsinsert, dsedit] then begin
    if Length(TbGenericoCNPJCPF.Value) < 14 then begin
      MessageDlg('Digite o CNPJ!', mtWarning, [mbOk], 0);
      DBEdit10.SetFocus;
    end else if not Dados.VerificaCNPJ(TbGenericoCNPJCPF.Value) then begin
      MessageDlg('CNPJ Inválido!', mtWarning, [mbOk], 0);
      DBEdit10.SetFocus;
    end;
  end;
end;

procedure TFGenerico.DBEdit11Exit(Sender: TObject);
begin
  if BitBtnSair.Focused then begin
    BitBtnSairClick(nil);
    Exit;
  end;
  if (TbGenerico.State in [dsedit, dsinsert]) {and (vgControle = 0)} and (TbGenericoTIPOPESSOA.Value = 'J') then begin
    if Length(TbGenericoIERG.Value) < 10 then begin
      MessageDlg('Digite a IE!', mtWarning, [mbOk], 0);
      DBEdit11.SetFocus;
    end else if TbGenericoCODCIDADE.IsNull and (TbGenericoTIPOPESSOA.Value = 'J') then begin
      case vpGenerica of
        1: MessageDlg('Especifique a cidade do cliente e após digite a IE!', mtWarning, [mbOk], 0);
        2: MessageDlg('Especifique a cidade do fornecedor e após digite a IE!', mtWarning, [mbOk], 0);
        3: MessageDlg('Especifique a cidade da transportadora e após digite a IE!', mtWarning, [mbOk], 0);
      end;
      DBLookupComboBox1.SetFocus;
    end else if (Dados.VerificaIE(TbGenericoIERG.Value, Edit3.Text) = 1) and (TbGenericoTIPOPESSOA.Value = 'J') then begin
      MessageDlg('IE Inválida!', mtWarning, [mbOk], 0);
      DBEdit11.SetFocus;
    end;
  end;
end;

procedure TFGenerico.FichaClick(Sender: TObject);
procedure FichaCli;
begin
  FRelFichaGenerico.Caption := 'Emissão de Ficha do Cliente';
  FRelFichaGenerico.QRLabel1.Caption := 'Ficha do Cliente';
  if TbGenericoTIPOPESSOA.Value = 'J' then begin
    FRelFichaGenerico.QRLabel8.Caption := 'CNPJ';
    FRelFichaGenerico.QRLabel9.Caption := 'IE';
  end else begin
    FRelFichaGenerico.QRLabel8.Caption := 'CPF';
    FRelFichaGenerico.QRLabel9.Caption := 'RG';
  end;
end;
procedure FichaForn;
begin
  FRelFichaGenerico.Caption := 'Emissão de Ficha do Fornecedor';
  FRelFichaGenerico.QRLabel1.Caption := 'Ficha do Fornecedor';
  if TbGenericoTIPOPESSOA.Value = 'J' then begin
    FRelFichaGenerico.QRLabel8.Caption := 'CNPJ';
    FRelFichaGenerico.QRLabel9.Caption := 'IE';
  end else begin
    FRelFichaGenerico.QRLabel8.Caption := 'CPF';
    FRelFichaGenerico.QRLabel9.Caption := 'RG';
  end;
end;
procedure FichaTrans;
begin
  FRelFichaGenerico.Caption := 'Emissão de Ficha da Transportadora';
  FRelFichaGenerico.QRLabel1.Caption := 'Ficha da Transportadora';
  if TbGenericoTIPOPESSOA.Value = 'J' then begin
    FRelFichaGenerico.QRLabel8.Caption := 'CNPJ';
    FRelFichaGenerico.QRLabel9.Caption := 'IE';
  end else begin
    FRelFichaGenerico.QRLabel8.Caption := 'CPF';
    FRelFichaGenerico.QRLabel9.Caption := 'RG';
  end;
end;
begin
  if VerificarPermissao('CLIENTES', 'REL', 1) or VerificarPermissao('TRANSPORTADORAS', 'REL', 1) or
    VerificarPermissao('FORNECEDORES', 'REL', 1) then begin
    Application.CreateForm(TFRelFichaGenerico, FRelFichaGenerico);
    case vpGenerica of
      1: FichaCli;
      2: FichaForn;
      3: FichaTrans;
    end;
    FRelFichaGenerico.ShowModal;
    FRelFichaGenerico := nil;
  end;
end;

procedure TFGenerico.GenericoClick(Sender: TObject);
procedure RelCli;
begin
  vpWhere := 'where CG.TipoC = ''T''';
end;
procedure RelForn;
begin
  vpWhere := 'where CG.TipoF = ''T''';
end;
procedure RelTrans;
begin
  vpWhere := 'where CG.TipoT = ''T''';
end;
begin
  if VerificarPermissao('CLIENTES', 'REL', 1) or VerificarPermissao('TRANSPORTADORAS', 'REL', 1) or
    VerificarPermissao('FORNECEDORES', 'REL', 1) then begin
    Application.CreateForm(TFRelGenerico, FRelGenerico);
    vpWhere := '';
    case vpGenerica of
      1: RelCli;
      2: RelForn;
      3: RelTrans;
    end;
    FRelGenerico.ShowModal;
    FRelGenerico := nil;
  end;
end;

procedure TFGenerico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbGenerico.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbGenerico.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbGenerico.State in [dsbrowse]) then
    TbGenerico.First
  else if (Key = 35) and (TbGenerico.State in [dsbrowse]) then
    TbGenerico.Last
  else if Key = vk_F1 then
    AbreAjuda;
end;

procedure TFGenerico.SBBuscaClick(Sender: TObject);
procedure LocCli;
begin
  FLocGenerico.Caption := 'Busca Avançada de Clientes';
  vpWhere := 'where CG.TipoC = ''T''';
end;
procedure LocForn;
begin
  FLocGenerico.Caption := 'Busca Avançada de Fornecedores';
  vpWhere := 'where CG.TipoF = ''T''';
end;
procedure LocTrans;
begin
  FLocGenerico.Caption := 'Busca Avançada de Transportadoras';
  vpWhere := 'where CG.TipoT = ''T''';
end;
begin
  Application.CreateForm(TFLocGenerico, FLocGenerico);
  vpWhere := '';
  case vpGenerica of
    1: LocCli;
    2: LocForn;
    3: LocTrans;
  end;
  FLocGenerico.ShowModal;
  FLocGenerico := nil;
end;

procedure TFGenerico.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    exit;
  if RadioButton1.Checked then
    try
      TbGenerico.Locate('CODCADGEN', Edit1.Text, []);
    except
      MessageDlg('Digite somente números para busca!', mtError, [MbOK], 0);
    end
  else if RadioButton2.Checked then
    TbGenerico.Locate('NOME', Edit1.Text, [loPartialKey, loCaseInsensitive])
  else begin
    Dados.QryCidadesLK.Locate('NOME', Edit1.Text, [loPartialKey, loCaseInsensitive]);
    TbGenerico.Locate('CODCIDADE', Dados.QryCidadesLK.FieldByName('CODCIDADE').AsInteger, []);
  end;
end;

procedure TFGenerico.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryCidadesLK.FetchAll;
end;

procedure TFGenerico.DBLookupComboBox3Enter(Sender: TObject);
begin
  Dados.QryBancosLK.FetchAll;
end;

procedure TFGenerico.DBLookupComboBox5Enter(Sender: TObject);
begin
  Dados.QryCFOPLK.FetchAll;
end;

procedure TFGenerico.DBLookupComboBox7Enter(Sender: TObject);
begin
  Dados.QryCondPgtoLK.FetchAll;
end;

procedure TFGenerico.DBLookupComboBox6Enter(Sender: TObject);
begin
  Dados.QryTransportadorasLK.FetchAll;
end;

procedure TFGenerico.DBEdit3Exit(Sender: TObject);
begin
  if (TbGenericoFANTASIA.IsNull) and not(TbGenericoNOME.IsNull) then
    TbGenericoFANTASIA.Value := TbGenericoNOME.Value;
end;

procedure TFGenerico.DBEdit7Exit(Sender: TObject);
begin
  if (TbGenericoENDERECOCOB.IsNull) and not(TbGenericoENDERECO.IsNull) then
    TbGenericoENDERECOCOB.Value := TbGenericoENDERECO.Value;
end;

procedure TFGenerico.DBEdit8Exit(Sender: TObject);
begin
  if (TbGenericoCODCIDADECOB.IsNull) and not (TbGenericoCODCIDADE.IsNull) then
    TbGenericoCODCIDADECOB.Value := TbGenericoCODCIDADE.Value;
end;

procedure TFGenerico.DBEdit9Exit(Sender: TObject);
begin
  if (TbGenericoBAIRROCOB.IsNull) and not (TbGenericoBAIRRO.IsNull) then
    TbGenericoBAIRROCOB.Value := TbGenericoBAIRRO.Value;
end;

procedure TFGenerico.Generico1Click(Sender: TObject);
procedure RelCliOrc;
begin
  vpWhere := 'where CG.TipoC = ''T''';
end;
procedure RelFornOc;
begin
  vpWhere := 'where CG.TipoF = ''T''';
end;
begin
  if VerificarPermissao('CLIENTES', 'REL', 1) or VerificarPermissao('FORNECEDORES', 'REL', 1) then begin
//    Application.CreateForm(TFRelGenericoORCOC, FRelGenericoORCOC);
    vpWhere := '';
    case vpGenerica of
      1: RelCliOrc;
      2: RelFornOc;
    end;
//    FRelGenericoORCOC.ShowModal;
//    FRelGenericoORCOC := nil;
  end;
end;

procedure TFGenerico.Generico2Click(Sender: TObject);
procedure RelCliOrc;
begin
  vpWhere := 'where CG.TipoC = ''T''';
end;
procedure RelFornOc;
begin
  vpWhere := 'where CG.TipoF = ''T''';
end;
begin
  if VerificarPermissao('CLIENTES', 'REL', 1) or VerificarPermissao('FORNECEDORES', 'REL', 1) then begin
//    Application.CreateForm(TFRelGenericoVenCom, FRelGenericoVenCom);
    vpWhere := '';
    case vpGenerica of
      1: RelCliOrc;
      2: RelFornOc;
    end;
//    FRelGenericoVenCom.ShowModal;
//    FRelGenericoVenCom := nil;
  end;
end;

procedure TFGenerico.Generico3Click(Sender: TObject);
procedure RelCliOrc;
begin
  vpWhere := 'where CG.TipoC = ''T''';
end;
procedure RelFornOc;
begin
  vpWhere := 'where CG.TipoF = ''T''';
end;
begin
  if VerificarPermissao('CLIENTES', 'REL', 1) or VerificarPermissao('FORNECEDORES', 'REL', 1) then begin
//    Application.CreateForm(TFRelGenericoCRCP, FRelGenericoCRCP);
    vpWhere := '';
    case vpGenerica of
      1: RelCliOrc;
      2: RelFornOc;
    end;
//    FRelGenericoCRCP.ShowModal;
//    FRelGenericoCRCP := nil;
  end;
end;

procedure TFGenerico.SpeedButton3Click(Sender: TObject);
begin
  if sender = SpeedButton3 then begin
    Application.CreateForm(TFBanco, FBanco);
    FBanco.ShowModal;
    FBanco := nil;
  end else if sender = SpeedButton5 then begin
    Application.CreateForm(TFCFOP, FCFOP);
    FCFOP.ShowModal;
    FCFOP := nil;
  end else if sender = SpeedButton7 then begin
    Application.CreateForm(TFCondPgto, FCondPgto);
    FCondPgto.ShowModal;
    FCondPgto := nil;
  end;
  Verificacao;
  DataChange;
end;

procedure TFGenerico.DBRadioGroup1Change(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 1 then begin
    Label12.Caption := 'CNPJ';
    Label13.Caption := 'IE';
  end else begin
    Label12.Caption := 'CPF';
    Label13.Caption := 'RG';
  end;
end;

end.
