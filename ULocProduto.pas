unit ULocProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, DBCtrls;

type
  TFLocProduto = class(TForm)
    QryBuscaProduto: TIBQuery;
    DSBuscaBanco: TDataSource;
    Panel1: TPanel;
    Label29: TLabel;
    RadioGroup1: TRadioGroup;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    BitCancelar: TBitBtn;
    BitBuscar: TBitBtn;
    QryBuscaProdutoCODPRODUTO: TIntegerField;
    QryBuscaProdutoNOMEPRODUTO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBuscarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocProduto: TFLocProduto;

implementation

uses UDados, UProdutos;

{$R *.dfm}

procedure TFLocProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFLocProduto.Edit2Change(Sender: TObject);
var
  vlInt: Integer;
const
  QrySQL = 'select P.CodProduto, P.nome as NomeProduto from Produtos P '+
    ' where P.CodProduto > 0';
function TestaInteiro: boolean;
begin
  if (Edit2.Text <> '') and (RadioGroup1.ItemIndex = 0) then
    try
      vlInt := StrToInt(Edit2.Text);
      Result := true;
    except
      MessageDlg('Digite somente números para busca!', mtError, [MbOK], 0);
      Edit2.Clear;
      Result := false;
    end
end;
procedure SQL;
begin
  if Edit2.Text <> '' then
    case RadioGroup1.ItemIndex of
      0: begin
          QryBuscaProduto.SQL.Add ('and P.CODPRODUTO containing '+ Edit2.Text);
          QryBuscaProduto.SQL.Add (' order by P.CODPRODUTO')
         end;
      1: begin
          QryBuscaProduto.SQL.Add ('and P.Nome containing '''+ Edit2.Text+'''');
          QryBuscaProduto.SQL.Add (' order by P.Nome')
         end;
    end;
  QryBuscaProduto.Prepare;
  QryBuscaProduto.Open;
end;
begin
  if Edit2.Text = '' then begin
    QryBuscaProduto.Close;
    QryBuscaProduto.UnPrepare;
    Exit;
  end;
  QryBuscaProduto.Close;
  QryBuscaProduto.UnPrepare;
  if not TestaInteiro then
    exit;
  QryBuscaProduto.SQL.Text := QrySQL;
  SQL;
end;

procedure TFLocProduto.RadioGroup1Click(Sender: TObject);
begin
  Edit2.Clear;
end;

procedure TFLocProduto.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLocProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitCancelarClick(nil);
end;

procedure TFLocProduto.BitBuscarClick(Sender: TObject);
begin
  FProdutos.TbProdutos.Locate('CODPRODUTO', QryBuscaProdutoCODPRODUTO.Value, []);
  QryBuscaProduto.Close;
  BitCancelarClick(nil);
end;

procedure TFLocProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
