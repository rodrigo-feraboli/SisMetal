unit UAltereSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB;

type
  TFAltereSenha = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAltereSenha: TFAltereSenha;

implementation

uses UDados, UUsuarios;

{$R *.dfm}

procedure TFAltereSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFAltereSenha.FormCreate(Sender: TObject);
begin
  Edit1.Text := Dados.QryLoginLOGIN.Value;
end;

procedure TFAltereSenha.BitBtn3Click(Sender: TObject);
begin
  FAltereSenha.Close;
end;

procedure TFAltereSenha.BitBtn1Click(Sender: TObject);
begin
  try
    FUsuarios.TbUsuarios.Edit;
    FUsuarios.TbUsuariosSENHA.Value := Edit3.Text;
    FUsuarios.TbUsuarios.Post;
    FUsuarios.TbHistSenha.Append;
    FUsuarios.TbHistSenhaCODHIST.Value := 1;
    FUsuarios.TbHistSenhaCODUSUARIO.Value := FUsuarios.TbUsuariosCODUSUARIO.Value ;
    FUsuarios.TbHistSenhaSENHA.Value := Edit3.Text;
    FUsuarios.TbHistSenha.Post;
    FUsuarios.TransUsu.CommitRetaining;
  except
    FUsuarios.TbHistSenha.Cancel;
    FUsuarios.TransUsu.RollbackRetaining;
  end;
end;

procedure TFAltereSenha.Edit3Exit(Sender: TObject);
var
  vlqtas, vli, vlconv, vlcount : Integer;
  vlsenha : String;
begin
  if (Edit2.Text = '') and (Edit3.Text = '') and (Edit4.Text = '') then
    exit;
  if sender = BitBtn2 then begin
    Edit3.Clear;
    Edit4.Clear;
    Edit3.SetFocus;
  end else if sender = Edit3 then begin
    if Edit3.Text = '' then
      exit;
    if FUsuarios.TbHistSenha.Locate('SENHA', Edit3.Text, [loPartialKey, loCaseInsensitive]) then begin
      MessageDlg('A senha digitada já foi utilizada!', mtWarning, [mbOk], 0);
      Edit3.Clear;
      Edit4.Clear;
      Edit3.SetFocus;
    end else if Length(Edit3.Text) < 6 then begin
      MessageDlg('Digite uma senha maior que 6 dígitos para  nova senha!', mtWarning, [mbOk], 0);
      Edit3.Clear;
      Edit3.SetFocus;
    end else begin
      vlcount := 0;
      vlqtas := Length(Edit3.Text);
      vlsenha := Edit3.Text;
      for vli := 1 to vlqtas do begin
        try
          vlconv := StrToInt(vlsenha[vli]);
          Inc (vlcount);
        except
        end;
      end;
      if vlcount = vlqtas then begin
        MessageDlg('Digite uma senha cuja seqüência não seja numérica!', mtWarning, [mbOk], 0);
        Edit3.Clear;
        Edit3.SetFocus;
      end;
    end;
  end else if Edit3.Text <> Edit4.Text then begin
    MessageDlg('As nova senha e a confirmação dela não combinam. Redidite-as!', mtWarning, [mbOk], 0);
    Edit3.Clear;
    Edit4.Clear;
    Edit3.SetFocus;
  end;
end;

procedure TFAltereSenha.Edit2Exit(Sender: TObject);
begin
  if not FUsuarios.TbUsuarios.Locate('SENHA', Edit2.Text, []) then begin
    MessageDlg('A senha digitada não é válida, redigite-a!', mtWarning, [mbOk], 0);
    Edit2.Clear;
    Edit2.SetFocus;
  end;
end;

procedure TFAltereSenha.Edit1Exit(Sender: TObject);
begin
  if not FUsuarios.TbUsuarios.Locate('LOGIN', Dados.QryLoginLOGIN.Value, []) then begin
    MessageDlg('Usuário inexistente!', mtWarning, [mbOk], 0);
    Edit1.Clear;
    Edit1.SetFocus;
  end;
end;

procedure TFAltereSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
