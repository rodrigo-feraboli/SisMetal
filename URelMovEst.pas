unit URelMovEst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB,
  IBCustomDataSet, IBQuery;

type
  TFRelMovEst = class(TForm)
    BitVisualizar: TBitBtn;
    BitImprimir: TBitBtn;
    BitCancelar: TBitBtn;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QryGenerica: TIBQuery;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    RadioGroup2: TRadioGroup;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QryAux: TIBQuery;
    DetailBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QryGenericaCODPRODUTO: TIntegerField;
    QryGenericaNOME: TIBStringField;
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FRelMovEst: TFRelMovEst;

implementation

uses UDados, UMovEst;

{$R *.dfm}

procedure TFRelMovEst.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 9);
end;

procedure TFRelMovEst.BitVisualizarClick(Sender: TObject);
begin
  if sender = BitCancelar then
    Close
  else begin
    QryGenerica.Close;
    QryGenerica.UnPrepare;
    QryGenerica.SQL.Text := 'select distinct(Me.codproduto), P.NOME from movest ME '+
      'inner join Produtos P on P.codproduto = ME.codproduto '+
      'where Me.codproduto is not null ';
    case RadioGroup2.ItemIndex of
      1: QryGenerica.SQL.Add (' and ME.GERACAO = ''M''');
      2: QryGenerica.SQL.Add (' and ME.GERACAO = ''C''');
      3: QryGenerica.SQL.Add (' and ME.GERACAO = ''V''');
    end;
    if DBLookupComboBox1.Text <> '' then begin
      QryGenerica.SQL.Add (' and Me.codproduto = :plCodProd ');
      QryGenerica.ParamByName('plCodProd').AsInteger := DBLookupComboBox1.KeyValue;
    end;
    QryGenerica.SQL.Add (' order by P.NOME');
    QryGenerica.Prepare;
    QryGenerica.Open;
    if QryGenerica.IsEmpty then
      MessageDlg('Não há registros para o período selecionado!', mtError, [mbOk], 0)
    else begin if sender = BitVisualizar then
      QuickRep1.Preview
      else
        QuickRep1.Print;
      end;                                
    FRelMovEst.Close;
  end;
end;

procedure TFRelMovEst.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFRelMovEst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRelMovEst.FormCreate(Sender: TObject);
begin
  Verificacao;
  ShowModal;  
end;

procedure TFRelMovEst.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  vlTotal : Real;
begin
  vlTotal := 0;
  QryAux.Close;
  QryAux.UnPrepare;
  // Entradas
  QryAux.SQL.Text := 'select sum (me.quant) from movest ME ' +
    'where ME.tipo = ''E'' and '+
    'Me.codproduto = :plCodProduto ';
  QryAux.ParamByName('plCodProduto').AsInteger := QryGenericaCODPRODUTO.AsInteger;
  case RadioGroup2.ItemIndex of
    1: QryAux.SQL.add(' and ME.GERACAO = ''M''');
    2: QryAux.SQL.add(' and ME.GERACAO = ''C''');
    3: QryAux.SQL.add(' and ME.GERACAO = ''V''');
  end;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel8.Caption := '0';
  if not (QryAux.Fields[0].IsNull) then
    QRLabel8.Caption := QryAux.Fields[0].AsString;
  vlTotal := QryAux.Fields[0].AsFloat;

  QryAux.Close;
  QryAux.UnPrepare;
  // Saídas
  QryAux.SQL.Text := 'select sum (me.quant) from movest ME ' +
    'where ME.tipo = ''S'' and '+
    'Me.codproduto = :plCodProduto ';
  QryAux.ParamByName('plCodProduto').AsInteger := QryGenericaCODPRODUTO.AsInteger;
  case RadioGroup2.ItemIndex of
    1: QryAux.SQL.add(' and ME.GERACAO = ''M''');
    2: QryAux.SQL.add(' and ME.GERACAO = ''C''');
    3: QryAux.SQL.add(' and ME.GERACAO = ''V''');
  end;
  QryAux.Prepare;
  QryAux.Open;
  QRLabel9.Caption := '0';
  if not (QryAux.Fields[0].IsNull) then
    QRLabel9.Caption := QryAux.Fields[0].AsString;

  vlTotal := vlTotal - QryAux.Fields[0].AsFloat;
  if vlTotal <> 0 then
    QRLabel10.Caption := FloatToStr(vlTotal)
  else
    QRLabel10.Caption := '0';
end;

procedure TFRelMovEst.DBLookupComboBox1Enter(Sender: TObject);
begin
    Dados.QryProdutosLK.FetchAll;
  try
    Edit1.Text := IntToStr(DBLookupComboBox1.KeyValue);
  except
  end;
end;

procedure TFRelMovEst.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_BACK then
    DBLookupComboBox1.KeyValue := 0;
end;

end.


