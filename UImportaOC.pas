unit UImportaOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons,
  DBCtrls, ComCtrls, ExtCtrls;

type
  TFImportaOC = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    QryImporta: TIBQuery;
    DSImporta: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    CBIni: TCheckBox;
    DTPIni: TDateTimePicker;
    CBFin: TCheckBox;
    DTPFin: TDateTimePicker;
    BitVisualizar: TBitBtn;
    BitCancelar: TBitBtn;
    BitImportar: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BitCont: TBitBtn;
    BtCanc: TBitBtn;
    QryItensOC: TIBQuery;
    QryItensOCNROITEM: TIntegerField;
    QryItensOCCODPRODUTO: TIntegerField;
    QryItensOCQUANT: TIBBCDField;
    QryItensOCVLRUNIT: TIBBCDField;
    QryImportaCODORDEMCOMPRA: TIntegerField;
    QryImportaDATAORDEMCOMPRA: TDateField;
    QryImportaCODCADGEN: TIntegerField;
    QryImportaNOME: TIBStringField;
    QryImportaCONTATO: TIBStringField;
    SpeedButton4: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitImportarClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitContClick(Sender: TObject);
    procedure BtCancClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FImportaOC: TFImportaOC;

implementation

uses UDados, UCFOP, UCondPgto, UCompras, UGenerico;

{$R *.dfm}

procedure TFImportaOC.Verificacao;
begin

end;

procedure TFImportaOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFImportaOC.BitVisualizarClick(Sender: TObject);
begin
  QryImporta.Close;
  QryImporta.UnPrepare;
  QryImporta.SQL.Text := 'select OC.codordemcompra, OC.dataordemcompra, CG.codcadgen, CG.nome, '+
    'oc.contato from ordemcompra OC inner join CADGEN CG on CG.codCadGen = oc.codforngen  '+
    'where OC.codordemcompra is not null ';
  if DBLookupComboBox1.Text <> '' then begin
    QryImporta.SQL.Add(' and CG.codcadgen = :plCodFornec');
    QryImporta.ParamByName('plCodFornec').AsInteger := DBLookupComboBox1.KeyValue;
  end;
  if CBIni.Checked then begin
    QryImporta.SQL.Add(' and oc.dataordemcompra >= :plDtIni');
    QryImporta.ParamByName('plDtIni').AsDate := DTPIni.Date;
  end;
  if CBFin.Checked then begin
    QryImporta.SQL.Add(' and oc.dataordemcompra <= :plDtFin');
    QryImporta.ParamByName('plDtFin').AsDate := DTPFin.Date;
  end;
  QryImporta.Prepare;
  QryImporta.Open;
  if QryImporta.IsEmpty then
    MessageDlg('Não existem ordens de compra para o período selecionado!', mtWarning, [mbOk], 0);
end;

procedure TFImportaOC.FormCreate(Sender: TObject);
begin
  DTPIni.Date := Date - 30;
  DTPFin.Date := Date;
  ShowModal;
end;

procedure TFImportaOC.BitImportarClick(Sender: TObject);
begin
  if QryImporta.IsEmpty then
    Exit
  else begin
    FCompras.QryAux.SQL.Text := 'select CodOrdemCompra from Compras where CodOrdemCompra = :plCod ';
    FCompras.QryAux.ParamByName('plCod').AsInteger := QryImportaCODORDEMCOMPRA.Value;
    FCompras.QryAux.Prepare;
    FCompras.QryAux.Open;
    if FCompras.QryAux.IsEmpty then begin
      QryItensOc.Close;
      QryItensOc.UnPrepare;
      QryItensOc.SQL.Text := ' select ioc.nroitem, ioc.codproduto, ioc.quant, ioc.vlrunit from '+
       ' itensordemcompra ioc where ioc.codordemcompra = '+ QryImporta.FieldbyName('codordemcompra').AsString + ' '+
       ' order by ioc.nroitem';
      QryItensOc.Prepare;
      QryItensOc.Open;
      Panel1.Top := 4;
      Panel1.Left := 1;
      Panel1.Visible := true;
    end else
      MessageDlg('A ordem de compra já foi importada! Selecione outra!', mtError, [mbOK], 0);
    FCompras.QryAux.Close;
    FCompras.QryAux.UnPrepare;
  end;
end;

procedure TFImportaOC.DBLookupComboBox1Enter(Sender: TObject);
begin
  if sender = DBLookupComboBox1 then
    Dados.QryClientesLK.FetchAll
  else if sender = DBLookupComboBox2 then
    Dados.QryTransportadorasLK.FetchAll
  else if sender = DBLookupComboBox3 then
    Dados.QryCFOPLK.FetchAll
  else if sender = DBLookupComboBox4 then
    Dados.QryCondPgtoLK.FetchAll;
end;

procedure TFImportaOC.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFImportaOC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFImportaOC.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Back then
    if sender = DBLookupComboBox1 then
      DBLookupComboBox1.KeyValue := 0
    else if sender = DBLookupComboBox2 then
      DBLookupComboBox2.KeyValue := 0
    else if sender = DBLookupComboBox3 then
      DBLookupComboBox3.KeyValue := 0
    else if sender = DBLookupComboBox4 then
      DBLookupComboBox4.KeyValue := 0;
end;

procedure TFImportaOC.BitContClick(Sender: TObject);
procedure Fecha;
begin
  Panel1.Visible := false;
end;
procedure FechaTudo;
begin
  Fecha;
  Close;
end;
begin
  if (sender = BitCont) and (DBLookupComboBox3.Text = '') then begin
    MessageDlg('Defina um CFOP para a importação!', mtWarning, [mbOk], 0);
    DBLookupComboBox3.SetFocus;
  end else if (sender = BitCont) and (DBLookupComboBox4.Text = '') then begin
    MessageDlg('Defina uma condição de pagamento para a importação!', mtWarning, [mbOk], 0);
    DBLookupComboBox4.SetFocus;
  end else if (sender = BitCont) and (DBLookupComboBox2.Text = '') then begin
    MessageDlg('Defina uma transportadora para a importação!', mtWarning, [mbOk], 0);
    DBLookupComboBox2.SetFocus;
  end else if (Sender = BtCanc) and (MessageDlg('Deseja cancelar a importação da ordem de compra do fornecedor '+
   QryImportaNOME.Value+'?', mtConfirmation, [mbYes, MbNo], 0)=IDYES) then begin
    Fecha;
    DBLookupComboBox2.KeyValue := 0;
    DBLookupComboBox3.KeyValue := 0;
    DBLookupComboBox4.KeyValue := 0;
  end else if (sender = BitCont) and (MessageDlg(
    'Confirma a importação dos dados a seguir? '+
    ''#13#13'Fornecedor : '+ QryImportaNOME.Value +
    ''#13'CFOP: '+ DBLookupComboBox3.Text +
    ''#13'Condição de Pagamento: '+ DBLookupComboBox4.Text +
    ''#13'Transportadora: '+ DBLookupComboBox2.Text , mtConfirmation, [mbYes, mbNo], 0)=IDYES) then begin
   try
      if FCompras.TransactionCompras.InTransaction then
        FCompras.TransactionCompras.CommitRetaining;

      FCompras.TbCompras.Append;
      FCompras.TbComprasDATACOMPRA.Value := Date;
      FCompras.TbComprasTIPONOTA.Value := 'S';
      FCompras.TbComprasCODORDEMCOMPRA.Value := QryImportaCODORDEMCOMPRA.Value;
      FCompras.TbComprasCODFORNGEN.Value := QryImportaCODCADGEN.Value;
      FCompras.TbComprasCODCFOP.Value := DBLookupComboBox3.KeyValue;
      FCompras.TbComprasCODCONDPGTO.Value := DBLookupComboBox4.KeyValue;
      FCompras.TbComprasCODTRANSP.Value := DBLookupComboBox2.KeyValue;
      
      FCompras.TbCompras.Post;
      while not QryItensOC.Eof do begin
        FCompras.TbItensComProdutos.Append;
        FCompras.TbItensComProdutosNROCOMPRA.Value := FCompras.TbComprasNROCOMPRA.Value;
        FCompras.TbItensComProdutosNROITEM.Value := QryItensOCNROITEM.Value;
        FCompras.TbItensComProdutosQUANT.Value := QryItensOcQUANT.Value;
        FCompras.TbItensComProdutosVLRUNIT.Value := QryItensOcVLRUNIT.Value;
        FCompras.TbItensComProdutosCODPRODUTO.Value := QryItensOcCODPRODUTO.Value;
        FCompras.TbItensComProdutos.Post;
        QryItensOc.Next;
      end;
      FCompras.TransactionCompras.CommitRetaining;
      MessageDlg('Importação concluída com sucesso!', mtConfirmation, [mbOk], 0);
    except
      FCompras.TbCompras.Cancel;
      FCompras.TransactionCompras.RollbackRetaining;
      MessageDlg('Erro ao importar!', mtError, [mbOk], 0);
    end;
     FechaTudo;
  end;
end;

procedure TFImportaOC.BtCancClick(Sender: TObject);
begin
  Panel1.Visible := False
end;

procedure TFImportaOC.SpeedButton1Click(Sender: TObject);
var
  vpBusca: Integer;
begin
  if DBLookupComboBox1.KeyValue > 0 then begin
    if (sender = SpeedButton1) or (sender = SpeedButton4) then begin
      if sender = SpeedButton1 then begin
        Dados.vgGenerica := 3;
        vpBusca := DBLookupComboBox2.KeyValue;
      end else begin
        Dados.vgGenerica := 1;
        vpBusca := DBLookupComboBox1.KeyValue;
      end;
      Application.CreateForm(TFGenerico, FGenerico);
      FGenerico.TbGenerico.Locate('CODCADGEN', vpBusca, []);
      FGenerico.ShowModal;
      FGenerico := nil;
    end else if sender = SpeedButton2 then begin
      Application.CreateForm(TFCFOP, FCFOP);
      FCFOP.TbCFOP.Locate('CODCFOP', DBLookupComboBox3.KeyValue , []);
      FCFOP.ShowModal;
      FCFOP := nil;
    end else if sender = SpeedButton3 then begin
      Application.CreateForm(TFCondPgto, FCondPgto);
      FCondPgto.TbCondPgto.Locate('CODCONDPGTO', DBLookupComboBox4.KeyValue, []);
      FCondPgto.ShowModal;
      FCondPgto := nil;
    end;
  end;
end;

procedure TFImportaOC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
