unit UConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Mask, DBCtrls, DB, ComCtrls,
  ShellCtrls;

type
  TFConfig = class(TForm)
    Panel1: TPanel;
    BitBtnOK: TBitBtn;
    BitBtnCancelar: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSConfig: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfig: TFConfig;

implementation

uses UDados;

{$R *.dfm}

procedure TFConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFConfig.BitBtnOKClick(Sender: TObject);
begin
  if sender = BitBtnOK then begin
    Dados.TbConfig.Post;
    Dados.ConfirmaTrans(True);
  end else begin
    Dados.TbConfig.Cancel;
    Dados.ConfirmaTrans(False);
  end;
  Close;
end;

procedure TFConfig.FormCreate(Sender: TObject);
begin
  if VerificarPermissao('CONFIGURAÇÕES DO SISMETAL', 'CONS', 1) then
    Dados.TbConfig.Edit;
end;

procedure TFConfig.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.

