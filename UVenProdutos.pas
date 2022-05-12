unit UVenProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls;

type
  TFVenProdutos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    BitOK: TBitBtn;
    BitCancelar: TBitBtn;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit4: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBEdit7: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitOKClick(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FVenProdutos: TFVenProdutos;

implementation

uses UProdutos, UTipoClassFiscal, UVendas, UDados, DB;

{$R *.dfm}

procedure TFVenProdutos.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 24);
end;

procedure TFVenProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    FVendas.TbVenItens.Cancel;
    Close;
  end;
end;

procedure TFVenProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFVenProdutos.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFProdutos, FProdutos);
  FProdutos.TbProdutos.Locate('CODPRODUTO', FVendas.TbVenItensCODPRODUTO.Value, []);
  FProdutos.ShowModal;
  FProdutos := nil;
  Verificacao;
end;

procedure TFVenProdutos.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFTipoClassFiscal, FTipoClassFiscal);
  FTipoClassFiscal.TbTipoClass.Locate('CODTIPOCLASSFISCAL', FVendas.TbVenItensCODTIPOCLASSFISCAL.Value, []);
  FTipoClassFiscal.ShowModal;
  FTipoClassFiscal := nil;
  Verificacao;
end;

procedure TFVenProdutos.BitOKClick(Sender: TObject);
begin
  if Sender = BitOK then
    if FVendas.TbVenItensProduto.IsNull then begin
      MessageDlg('Especifique o produto do item de venda!', mtError, [Mbok], 0);
      DBLookupComboBox1.SetFocus;
    end else if FVendas.TbVenItensCODTIPOCLASSFISCAL.IsNull then begin
      MessageDlg('Especifique o tipo de classificação fiscal do item de venda!', mtError, [Mbok], 0);
      DBLookupComboBox2.SetFocus;
    end else if FVendas.TbVenItensQUANT.IsNull then begin
      MessageDlg('Especifique a quantidade do item de venda!', mtError, [Mbok], 0);
      DBEdit1.SetFocus;
    end else if FVendas.TbVenItensVLRUNIT.IsNull then begin
      MessageDlg('Especifique o valor unitário do item da venda!', mtError, [Mbok], 0);
      DBEdit2.SetFocus;
    end else begin
      FVendas.TbVenItens.Post;
      Close;
    end
  else begin
    FVendas.TbVenItens.Cancel;
    Close;
  end;
end;

procedure TFVenProdutos.DBLookupComboBox1Exit(Sender: TObject);
begin
  if DBLookupComboBox1.Text <> '' then begin
    Dados.QryAux.SQL.Text := 'Select CodTipoClassFiscal, Vlr from Produtos where CodProduto = '+IntToStr(DBLookupComboBox1.KeyValue);
    Dados.QryAux.Prepare;
    Dados.QryAux.Open;
    DBLookupComboBox2.KeyValue := Dados.QryAux.Fields[0].AsInteger;
    FVendas.TbVenItensCODTIPOCLASSFISCAL.Value := DBLookupComboBox2.KeyValue;
    FVendas.TbVenItensVLRUNIT.Value := Dados.QryAux.Fields[1].AsCurrency;
    Dados.QryAux.Close;
    Dados.QryAux.UnPrepare;

    Dados.QryAux.SQL.Text := 'select E.PercICMS from estados E where UF = ''RS''';
    Dados.QryAux.Prepare;
    Dados.QryAux.Open;
    FVendas.TbVenItensPERCICMS.AsInteger := Dados.QryAux.Fields[0].AsInteger;
    Dados.QryAux.Close;
    Dados.QryAux.UnPrepare;

    DBEdit5Change(nil);
  end;
end;

procedure TFVenProdutos.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryProdutosLK.FetchAll;
end;

procedure TFVenProdutos.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryTipoClassLK.FetchAll;
end;

procedure TFVenProdutos.FormCreate(Sender: TObject);
procedure VerificarProdutos;
begin
  if not VerificarPermissao('PRODUTOS', 'CONS', 0) then
    FVenProdutos.SpeedButton1.Enabled := False;
end;
procedure VerificarTipoClassFiscal;
begin
  if not VerificarPermissao('TIPOS DE CLASSIFICAÇÃO FISCAL', 'CONS', 0) then
    FVenProdutos.SpeedButton2.Enabled := False;
end;
begin
  VerificarProdutos;
  VerificarTipoClassFiscal;
  Verificacao;
  ShowModal;
end;

procedure TFVenProdutos.DBEdit5Change(Sender: TObject);
begin
  if (DBLookupComboBox1.Text <> '') and (not FVendas.TbVenItensPERCICMS.IsNull) then
    Edit1.Text := FormatFloat('#,##0.00',(FVendas.TbVenItensVlrTot.Value * FVendas.TbVenItensPERCICMS.Value / 100));
end;

procedure TFVenProdutos.DBEdit1Exit(Sender: TObject);
begin
  Edit1.Text := FormatFloat('#,##0.00',(FVendas.TbVenItensVlrTot.Value * FVendas.TbVenItensPERCICMS.Value / 100));
end;

procedure TFVenProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
