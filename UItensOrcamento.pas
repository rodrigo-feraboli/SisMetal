unit UItensOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls;

type
  TFItensOrcamento = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    BitOK: TBitBtn;
    BitCanc: TBitBtn;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitOKClick(Sender: TObject);
    procedure BitCancClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FItensOrcamento: TFItensOrcamento;

implementation

uses UOrcamento, UDados, UProdutos;

{$R *.dfm}

procedure TFItensOrcamento.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 23);
end;

procedure TFItensOrcamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then begin
    FOrcamento.TbItensOrcamento.Cancel;
    Close;
  end;
end;

procedure TFItensOrcamento.BitOKClick(Sender: TObject);
begin
  if Sender = BitOK then
    if FOrcamento.TbItensOrcamentoPRODUTO.IsNull then begin
      MessageDlg('Especifique o produto do item do orçamento!', mtError, [Mbok], 0);
      DBLookupComboBox1.SetFocus;
    end else if FOrcamento.TbItensOrcamentoDESCRICAO.IsNull then begin
      MessageDlg('Especifique a descrição do item do orçamento!', mtError, [Mbok], 0);
      DBMemo1.SetFocus;
    end else if FOrcamento.TbItensOrcamentoQUANT.IsNull then begin
      MessageDlg('Especifique a quantidade descrição do item do orçamento!', mtError, [Mbok], 0);
      DBEdit1.SetFocus;
    end else if FOrcamento.TbItensOrcamentoVLRUNIT.IsNull then begin
      MessageDlg('Especifique o valor unitário do item do orçamento!', mtError, [Mbok], 0);
      DBEdit1.SetFocus;
    end else begin
      FOrcamento.TbItensOrcamento.Post;
      Close;
    end
  else begin
    FOrcamento.TbItensOrcamento.Cancel;
    Close;
  end;
end;

procedure TFItensOrcamento.BitCancClick(Sender: TObject);
begin
  BitOKClick(nil);
end;

procedure TFItensOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFItensOrcamento.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryProdutosLK.FetchAll; 
end;

procedure TFItensOrcamento.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFProdutos, FProdutos);
  FProdutos.TbProdutos.Locate('CODPRODUTO', FOrcamento.TbItensOrcamentoCODPRODUTO.Value, []);
  FProdutos.ShowModal;
  FProdutos := nil;
  Verificacao;
end;

procedure TFItensOrcamento.DBLookupComboBox1Exit(Sender: TObject);
begin
  if DBLookupComboBox1.Text <> '' then begin
    Dados.QryAux.SQL.Text := 'Select Vlr from Produtos where CodProduto = '+IntToStr(DBLookupComboBox1.KeyValue);
    Dados.QryAux.Prepare;
    Dados.QryAux.Open;
    FOrcamento.TbItensOrcamentoVLRUNIT.Value := Dados.QryAux.Fields[0].AsCurrency;
    Dados.QryAux.Close;
    Dados.QryAux.UnPrepare;
  end;
end;

procedure TFItensOrcamento.FormCreate(Sender: TObject);
procedure VerificarProdutos;
begin
  if not VerificarPermissao('PRODUTOS', 'CONS', 0) then
    FItensOrcamento.SpeedButton1.Enabled := False;
end;
begin
   VerificarProdutos;
   Verificacao;
   ShowModal;
end;

procedure TFItensOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
