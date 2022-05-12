unit URelGenericoVenCom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelGenericoVenCom = class(TForm)
    RadioGroup1: TRadioGroup;
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    BitCancelar: TBitBtn;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QryGenerica: TIBQuery;
    QRDBText2: TQRDBText;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QryAux: TIBQuery;
    QryGenericaCODCADGEN: TIntegerField;
    QryGenericaNOME: TIBStringField;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelGenericoVenCom: TFRelGenericoVenCom;

implementation

uses UDados, UGenerico;

{$R *.dfm}

procedure TFRelGenericoVenCom.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryGenerica.Close;
    QryGenerica.UnPrepare;
    QryGenerica.SQL.Text := 'select CG.CODCADGEN, CG.NOME from CADGEN CG '+
     'inner join cidades Ci on ci.codcidade = CG.codcidade '+
      FGenerico.vpWhere;
    if DBLookupComboBox1.KeyValue > 0 then begin
      QryGenerica.SQL.Add(' and Ci.CodCidade = :plCodCidade ');
      QryGenerica.ParamByName('plCodCidade').AsInteger := DBLookupComboBox1.KeyValue;
    end;
    case RadioGroup1.ItemIndex of
      0: QryGenerica.SQL.Add('order by CG.Nome ');
      1: QryGenerica.SQL.Add('order by Ci.Nome, CG.CodCadGen ');
      2: QryGenerica.SQL.Add('order by CG.DataCadastro');
    end;
    QryGenerica.Prepare;
    QryGenerica.Open;
    if QryGenerica.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
      QuickRep1.Preview
      else
        QuickRep1.Print;
      end;
    FRelGenericoVenCom.Close;
  end;
end;

procedure TFRelGenericoVenCom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelGenericoVenCom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelGenericoVenCom.DBLookupComboBox1Click(Sender: TObject);
begin
  Dados.QryCidadesLK.FetchAll;
  try
    Edit1.Text := IntToStr(DBLookupComboBox1.KeyValue);
  except
    Edit1.Clear;
  end;
end;

procedure TFRelGenericoVenCom.Edit1Change(Sender: TObject);
begin
  try
    DBLookupComboBox1.KeyValue := StrToInt(Edit1.Text);
  except
  end;
end;

procedure TFRelGenericoVenCom.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Back then begin
    DBLookupComboBox1.KeyValue := 0;
    DBLookupComboBox1Click(nil);
  end;
end;

procedure TFRelGenericoVenCom.FormCreate(Sender: TObject);
procedure Cli;
begin
  Caption := 'Emissão de Relatório de Vendas de Clientes';
  QRLabel1.Caption := 'Relatório de Vendas de Clientes';
  QRLabel3.Caption := 'Cliente';
  QRLabel5.Caption := 'Nº de Vendas';
  QRLabel8.Caption := 'Vlr das Vendas (R$)';
  QRLabel2.Caption := 'Data Últ. Venda';
  RadioGroup1.Items.Add('Cliente');
end;
procedure Forn;
begin
  Caption := 'Emissão de Relatório de Compras de Fornecedores';
  QRLabel5.Caption := 'Nº de Compras';
  QRLabel8.Caption := 'Vlr das Compras (R$)';
  QRLabel2.Caption := 'Data Últ. Compra';
  QRLabel1.Caption := 'Relatório de Compras de Fornecedores';
  QRLabel3.Caption := 'Fornecedor';
  RadioGroup1.Items.Add('Fornecedor');
end;
begin
  RadioGroup1.Items.Clear;
  case Dados.vgGenerica of
    1: Cli;
    2: Forn;
  end;
  RadioGroup1.Items.Add('Cidade');
  RadioGroup1.Items.Add('Data Cadastro');
  RadioGroup1.ItemIndex := 0;
end;

procedure TFRelGenericoVenCom.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Dados.vgGenerica = 1 then begin
    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'select sum(vp.quant * vp.vlrunit)  from venprodutos VP '+
     'inner join vendas V on V.nrovenda = vp.nrovenda '+
     'inner join cadgen CG on cg.codcadgen = V.codcligen '+
     'where  v.codcligen = '+ QryGenericaCODCADGEN.AsString;
    QryAux.Prepare;
    QryAux.Open;
    QRLabel4.Caption := FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);

    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'select count(V.NroVenda) from Vendas V '+
      ' where V.codcligen = '+ QryGenericaCODCADGEN.AsString +' group by V.codcligen';
    QryAux.Prepare;
    QryAux.Open;
    QRLabel7.Caption := QryAux.Fields[0].AsString;

    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'select first 1 (v.datavenda) from Vendas V '+
      'where v.codcligen = '+ QryGenericaCODCADGEN.AsString;
    QryAux.Prepare;
    QryAux.Open;
    QRLabel6.Caption := QryAux.Fields[0].AsString;
  end else begin
    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'select sum(cp.quant * cp.vlrunit)  from COMPRODUTOS CP '+
     'inner join Compras C on C.nroCompra = cp.nroCompra '+
     'inner join CADGEN CG on CG.codcadgen = c.codforngen '+
     'where c.codforngen = '+ QryGenericaCODCADGEN.AsString;
    QryAux.Prepare;
    QryAux.Open;
    QRLabel4.Caption := FormatCurr('#,##0.00', QryAux.Fields[0].AsCurrency);

    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'select count(C.NroCompra) from Compras C '+
      ' where c.codforngen = '+ QryGenericaCODCADGEN.AsString +' group by c.codforngen';
    QryAux.Prepare;
    QryAux.Open;
    QRLabel7.Caption := QryAux.Fields[0].AsString;

    QryAux.Close;
    QryAux.UnPrepare;
    QryAux.SQL.Text := 'select first 1 (c.datacompra) from Compras C '+
      'where c.codforngen = '+ QryGenericaCODCADGEN.AsString;
    QryAux.Prepare;
    QryAux.Open;
    QRLabel6.Caption := QryAux.Fields[0].AsString;
  end;
end;

end.


