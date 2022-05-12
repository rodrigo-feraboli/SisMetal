unit UImportaOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons,
  DBCtrls, ComCtrls, ExtCtrls;

type
  TFImportaOrc = class(TForm)
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
    QryItensOrc: TIBQuery;
    QryItensOrcCODPRODUTO: TIntegerField;
    QryItensOrcQUANT: TIBBCDField;
    QryItensOrcVLRUNIT: TIBBCDField;
    QryItensOrcNROITEM: TIntegerField;
    QryImportaCODORCAMENTO: TIntegerField;
    QryImportaDATAORCAMENTO: TDateField;
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
  FImportaOrc: TFImportaOrc;

implementation

uses UDados, UVendas, UCFOP, UCondPgto, UGenerico;

{$R *.dfm}

procedure TFIMportaOrc.Verificacao;
begin

end;

procedure TFImportaOrc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFImportaOrc.BitVisualizarClick(Sender: TObject);
begin
  QryImporta.Close;
  QryImporta.UnPrepare;
  QryImporta.SQL.Text := 'select o.codorcamento, o.dataorcamento, CG.CodCadGen, '+
    'CG.nome, o.contato from Orcamentos O inner join CadGen CG on cg.codcadgen = o.codcligen '+
    'where o.codorcamento is not null ';
  if DBLookupComboBox1.Text <> '' then begin
    QryImporta.SQL.Add(' and CG.CodCadGen = :plCodCliente');
    QryImporta.ParamByName('plCodCliente').AsInteger := DBLookupComboBox1.KeyValue;
  end;
  if CBIni.Checked then begin
    QryImporta.SQL.Add(' and dataorcamento >= :plDtIni');
    QryImporta.ParamByName('plDtIni').AsDate := DTPIni.Date;
  end;
  if CBFin.Checked then begin
    QryImporta.SQL.Add(' and dataorcamento <= :plDtFin');
    QryImporta.ParamByName('plDtFin').AsDate := DTPFin.Date;
  end;
  QryImporta.Prepare;
  QryImporta.Open;
  if QryImporta.IsEmpty then
    MessageDlg('Não existem orçamentos para o período selecionado!', mtWarning, [mbOk], 0);
end;

procedure TFImportaOrc.FormCreate(Sender: TObject);
begin
  DTPIni.Date := Date - 30;
  DTPFin.Date := Date;
  ShowModal;
end;

procedure TFImportaOrc.BitImportarClick(Sender: TObject);
begin
  if QryImporta.IsEmpty then
    Exit
  else begin
    FVendas.QryAux.SQL.Text := 'select v.CodOrcamento from Vendas V where v.CodOrcamento = :plCod ';
    FVendas.QryAux.ParamByName('plCod').AsInteger := QryImportaCODORCAMENTO.Value;
    FVendas.QryAux.Prepare;
    FVendas.QryAux.Open;
    if FVendas.QryAux.IsEmpty then begin
      QryItensOrc.Close;
      QryItensOrc.UnPrepare;
      QryItensOrc.SQL.Text := ' select io.nroitem, io.codproduto, io.quant, io.vlrunit from itensorcamentos io '+
        'where io.codorcamento = '+ QryImporta.FieldbyName('CODORCAMENTO').AsString + ' '+ 
        'order by io.nroitem';
      QryItensOrc.Prepare;
      QryItensOrc.Open;
      Panel1.Top := 4;
      Panel1.Left := 1;
      Panel1.Visible := true;
    end else
      MessageDlg('O orçamento já foi importado! Selecione outro!', mtError, [mbOK], 0);
    FVendas.QryAux.Close;
    FVendas.QryAux.UnPrepare;
  end;
end;

procedure TFImportaOrc.DBLookupComboBox1Enter(Sender: TObject);
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

procedure TFImportaOrc.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFImportaOrc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;
                            
procedure TFImportaOrc.DBLookupComboBox1KeyDown(Sender: TObject;
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

procedure TFImportaOrc.BitContClick(Sender: TObject);
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
  end else if (Sender = BtCanc) and (MessageDlg('Deseja cancelar a importação do orçamento do cliente '+
   QryImportaNOME.Value+'?', mtConfirmation, [mbYes, MbNo], 0)=IDYES) then begin
    Fecha;
    DBLookupComboBox2.KeyValue := 0;
    DBLookupComboBox3.KeyValue := 0;
    DBLookupComboBox4.KeyValue := 0;
  end else if (sender = BitCont) and (MessageDlg(
    'Confirma a importação dos dados a seguir? '+
    ''#13#13'Cliente : '+ QryImportaNOME.Value +
    ''#13'CFOP: '+ DBLookupComboBox3.Text +
    ''#13'Condição de Pagamento: '+ DBLookupComboBox4.Text +
    ''#13'Transportadora: '+ DBLookupComboBox2.Text , mtConfirmation, [mbYes, mbNo], 0)=IDYES) then begin
   try
      if FVendas.TransactionVen.InTransaction then
        FVendas.TransactionVen.CommitRetaining;

      FVendas.TbVendas.Append;
      FVendas.TbVendasDATAVENDA.Value := Date;
      FVendas.TbVendasTIPONOTA.Value := 'S';
      FVendas.TbVendasCODORCAMENTO.Value := QryImportaCODORCAMENTO.Value;
      FVendas.TbVendasCODCLIGEN.Value := QryImportaCODCADGEN.Value;
      FVendas.TbVendasCODCFOP.Value := DBLookupComboBox3.KeyValue;
      FVendas.TbVendasCODCONDPGTO.Value := DBLookupComboBox4.KeyValue;
      FVendas.TbVendasCODTRANSP.Value := DBLookupComboBox2.KeyValue;
      FVendas.TbVendas.Post;
      while not QryItensOrc.Eof do begin
        FVendas.TbVenItens.Append;
        FVendas.TbVenItensNROVENDA.Value := FVendas.TbVendasNROVENDA.Value;
        FVendas.TbVenItensNROITEM.Value := QryItensOrcNROITEM.Value;
        FVendas.TbVenItensQUANT.Value := QryItensOrcQUANT.Value;
        FVendas.TbVenItensVLRUNIT.Value := QryItensOrcVLRUNIT.Value;
        FVendas.TbVenItensCODPRODUTO.Value := QryItensOrcCODPRODUTO.Value;
        FVendas.QryAux.Close;
        FVendas.QryAux.UnPrepare;
        FVendas.QryAux.SQL.Text := 'select p.codtipoclassfiscal from produtos p where '+
          'CodProduto = '+ QryItensOrc.FieldByName('CODPRODUTO').AsString;
        FVendas.QryAux.Prepare;
        FVendas.QryAux.Open;
        FVendas.TbVenItensCODTIPOCLASSFISCAL.Value := FVendas.QryAux.Fields[0].AsInteger;
        FVendas.TbVenItens.Post;
        QryItensOrc.Next;
      end;
      FVendas.TransactionVen.CommitRetaining;
      MessageDlg('Importação concluída com sucesso!', mtConfirmation, [mbOk], 0);
    except
      FVendas.TbVendas.Cancel;
      FVendas.TransactionVen.RollbackRetaining;
      MessageDlg('Erro ao importar!', mtError, [mbOk], 0);
    end;
     FechaTudo;
  end;
end;

procedure TFImportaOrc.BtCancClick(Sender: TObject);
begin
  Panel1.Visible := False
end;

procedure TFImportaOrc.SpeedButton1Click(Sender: TObject);
var
  vpBusca: Integer;
begin
  if DBLookupComboBox1.KeyValue > 0 then begin
    if (sender = SpeedButton1) or (sender = SpeedButton4) then begin
      if sender = SpeedButton1 then begin
        Dados.vgGenerica := 3;
        vpBusca := DBLookupComboBox4.KeyValue
      end else begin
        Dados.vgGenerica := 1;
        vpBusca := DBLookupComboBox1.KeyValue
      end;
      Application.CreateForm(TFGenerico, FGenerico);
      FGenerico.TbGenerico.Locate('CODCADGEN', vpBusca , []);
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
    Verificacao;
  end;
end;

procedure TFImportaOrc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
