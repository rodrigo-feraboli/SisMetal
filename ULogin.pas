unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

uses UDados, USistema;

{$R *.dfm}

procedure TFLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtn3Click(nil);
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  if Dados = nil then
    Application.CreateForm(TDados, Dados);
  if (FSistema <> nil) then
    BitBtn3.Caption := 'Sair do Sistema';
  if BitBtn3.Caption <> 'Sair do Sistema' then
    ShowModal
  else begin
    Height := Height + 25;
    BorderStyle := bsSingle;
  end;
//  BitBtn1.SetFocus;
end;

procedure TFLogin.BitBtn3Click(Sender: TObject);
begin
{  if (FSistema <> nil) and (MessageDlg('Deseja sair do SisMetal?', mtConfirmation, [MbYes, MbNo], 0 )= IDYES) then
  // lembrar de comitar todas as transações antes de encerrar}

  // Sai tudo do mesmo jeito, mas...

  // Tomar cuidado, pq pode-se perder dados, das transações, verificar...
  try
    BitBtn2Click(nil);
    Dados.OnDestroy(nil);
    Dados.Free;
    Application.Terminate;
  except
  end;
end;

procedure TFLogin.BitBtn2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TFLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  if Edit1.Text = '' then begin
    MessageDlg('Especifique um login!', mtWarning, [MbOk], 0);
    Edit1.SetFocus;
  end else if Edit2.Text = '' then begin
    MessageDlg('Especifique uma senha!', mtWarning, [MbOk], 0);
    Edit2.SetFocus;
  end else begin
    Dados.QryLogin.Close;
    Dados.QryLogin.SQL.Text := 'select codusuario, login, senha from usuarios where login = :pllogin';
    Dados.QryLogin.ParamByName('pllogin').AsString := Edit1.Text;
    Dados.QryLogin.Prepare;
    Dados.QryLogin.Open;
    if (Dados.QryLogin.IsEmpty) or
      (Edit2.Text <> Dados.QryLogin.FieldByName('senha').AsString) then begin
      MessageDlg('Especifique um login e/ou senha válidos!', mtWarning, [MbOk], 0);
      Edit1.SetFocus;
    end else if Edit2.Text = Dados.QryLogin.FieldByName('senha').AsString then begin
      CanClose := true;
//      Application.Run;
      Application.CreateForm(TFSistema, FSistema);
      FSistema.ShowModal;
    end;
  end;
end;

end.
