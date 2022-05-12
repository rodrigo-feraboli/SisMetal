unit UComProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls;

type
  TFComProdutos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    BitOK: TBitBtn;
    BitCanc: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitOKClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FComProdutos: TFComProdutos;

implementation

uses UCompras, UDados, UProdutos;

{$R *.dfm}

procedure TFComProdutos.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 23);
end;

procedure TFComProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    FCompras.TbItensComProdutos.Cancel;
    Close;
  end;
end;

procedure TFComProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFComProdutos.FormCreate(Sender: TObject);
procedure VerificarProdutos;
begin
  if not VerificarPermissao('PRODUTOS', 'CONS', 0) then
    SpeedButton1.Enabled := False;
end;
begin
  VerificarProdutos;
  Verificacao;
  ShowModal;
end;

procedure TFComProdutos.BitOKClick(Sender: TObject);
begin
  if Sender = BitOK then
    if FCompras.TbItensComProdutosProdutos.IsNull then begin
      MessageDlg('Especifique o produto do item da compra!', mtError, [Mbok], 0);
      DBLookupComboBox1.SetFocus;
    end else if FCompras.TbItensComProdutosQUANT.IsNull then begin
      MessageDlg('Especifique a quantidade do item de venda!', mtError, [Mbok], 0);
      DBEdit1.SetFocus;
    end else if FCompras.TbItensComProdutosVLRUNIT.IsNull then begin
      MessageDlg('Especifique o valor unitário do item da venda!', mtError, [Mbok], 0);
      DBEdit2.SetFocus;
    end else begin
      FCompras.TbItensComProdutos.Post;
      Close;
    end
  else begin
    FCompras.TbItensComProdutos.Cancel;
    Close;
  end;
end;

procedure TFComProdutos.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFProdutos, FProdutos);
  FProdutos.TbProdutos.Locate('CODPRODUTO', FCompras.TbItensComProdutosCODPRODUTO.Value, []);
  FProdutos.ShowModal;
  FProdutos := nil;
  Verificacao;
end;

procedure TFComProdutos.DBLookupComboBox1Exit(Sender: TObject);
begin
  if DBLookupComboBox1.Text <> '' then begin
    Dados.QryAux.SQL.Text := 'Select Vlr from Produtos where CodProduto = '+IntToStr(DBLookupComboBox1.KeyValue);
    Dados.QryAux.Prepare;
    Dados.QryAux.Open;
    FCompras.TbItensComProdutosVLRUNIT.Value := Dados.QryAux.Fields[0].AsCurrency;
    Dados.QryAux.Close;
    Dados.QryAux.UnPrepare;
  end;
end;

procedure TFComProdutos.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryProdutosLK.FetchAll;
end;

procedure TFComProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
