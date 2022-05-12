unit UBackUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ShellCtrls, ExtCtrls, Buttons, ShellApi, IniFiles,
  Grids, Outline, DirOutln;

type
  TFBackUp = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBackUp: TFBackUp;

implementation

uses UDados;

{$R *.dfm}

procedure TFBackUp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFBackUp.BitBtn1Click(Sender: TObject);
var
  vlIni : TIniFile;
  vlDataBase : String;
  vlSR: TSearchRec;
  vlOrigem, vlDestino : String;
  vli, vlExit : integer;
procedure EnviaArquivos;
begin
  while vli = 0 do begin
    if (vlSR.Attr and faDirectory) <> faDirectory then begin
      vlOrigem := ExtractFilePath(Application.ExeName) + vlSR.Name;
      vlDestino := Edit1.Text +'\'+ FormatDateTime('dd mm yy', Date)+' - '+
        FormatDateTime('hh mm', Time) + ' '+ vlSR.Name;
    end;
    if not CopyFile(PChar(vlOrigem), pchar(vlDestino), true) then begin
      MessageDlg('Arquivo '+ vlSR.Name+ ' já existe!', mtError, [MbOk], 0);
      vlExit := 1;
    end;
    vli := FindNext(vlSR);
  end;
end;
begin
  try
    vlExit := 0;
    Cursor := crHourGlass;
    vlDataBase := '';
    vlIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'SisMetal.ini');
    vlDataBase := vlIni.ReadString('Banco', 'Path', '');
    vli:= FindFirst(vlDataBase, faAnyFile, vlSR);
    if not DirectoryExists(Edit1.Text) then
      ForceDirectories(Edit1.Text);         
    EnviaArquivos;
    if vlExit = 1 then begin
      Close;
      Exit;
    end;
    MessageDlg('Banco de Dados copiado com sucesso para '+ vlDestino +' !',mtInformation, [mbOk], 0);
  except
    MessageDlg('Erro ao copiar Banco de Dados para '+ vlDestino +' !',mtInformation, [mbOk], 0);
  end;
  Cursor := crDefault;
  Close;
end;

procedure TFBackUp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
   Close;
end;

procedure TFBackUp.FormCreate(Sender: TObject);
begin
  if not Dados.TbConfig.Active then
    Dados.TbConfig.Open;
  try
    Edit1.Text := Dados.TbConfigPATHSAVE.AsString;
  except
  end;
end;

procedure TFBackUp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
