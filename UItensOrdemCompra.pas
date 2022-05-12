unit UItensOrdemCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls;

type
  TFItensOrdemCompra = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    BitOK: TBitBtn;
    BitCancel: TBitBtn;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure BitOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
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
  FItensOrdemCompra: TFItensOrdemCompra;

implementation

uses UOrdemCompra, UDados, UProdutos;

{$R *.dfm}

procedure TFItensOrdemCompra.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 23);
end;

procedure TFItensOrdemCompra.BitOKClick(Sender: TObject);
begin
  if Sender = BitOK then
    if FOrdemCompra.TbItensOCProduto.IsNull then begin
      MessageDlg('Especifique o produto do item da ordem de compra!', mtError, [Mbok], 0);
      DBLookupComboBox1.SetFocus;
    end else if FOrdemCompra.TbItensOCQUANT.IsNull then begin
      MessageDlg('Especifique a quantidade do item de ordem de ordem!', mtError, [Mbok], 0);
      DBEdit1.SetFocus;
    end else if FOrdemCompra.TbItensOCVLRUNIT.IsNull then begin
      MessageDlg('Especifique o valor unit�rio do item da ordem de compra!', mtError, [Mbok], 0);
      DBEdit2.SetFocus;
    end else begin
      FOrdemCompra.TbItensOC.Post;
      Close;
    end
  else begin
    FOrdemCompra.TbItensOC.Cancel;
    Close;
  end;
end;

procedure TFItensOrdemCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then begin
    FOrdemCompra.TbItensOC.Cancel;
    Close;
  end;
end;

procedure TFItensOrdemCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFItensOrdemCompra.FormCreate(Sender: TObject);
procedure VerificarProdutos;
begin
  if not VerificarPermissao('PRODUTOS', 'CONS', 0) then
    FItensOrdemCompra.SpeedButton1.Enabled := False;
end;
begin
  VerificarProdutos;
  Verificacao;
  ShowModal;
end;

procedure TFItensOrdemCompra.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryProdutosLK.FetchAll;
end;

procedure TFItensOrdemCompra.DBLookupComboBox1Exit(Sender: TObject);
begin
  if DBLookupComboBox1.Text <> '' then begin
    Dados.QryAux.SQL.Text := 'Select Vlr from Produtos where CodProduto = '+IntToStr(DBLookupComboBox1.KeyValue);
    Dados.QryAux.Prepare;
    Dados.QryAux.Open;
    FOrdemCompra.TbItensOCVLRUNIT.Value := Dados.QryAux.Fields[0].AsCurrency;
    Dados.QryAux.Close;
    Dados.QryAux.UnPrepare;
  end;
end;

procedure TFItensOrdemCompra.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFProdutos, FProdutos);
  FProdutos.TbProdutos.Locate('CODPRODUTO', FOrdemCompra.TbItensOCCODPRODUTO.Value, []);
  FProdutos.ShowModal;
  FProdutos := nil;
  Verificacao;
end;

procedure TFItensOrdemCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
