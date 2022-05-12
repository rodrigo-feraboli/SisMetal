unit UUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBTable, IBDatabase, IBQuery, ComCtrls;

type
  TFUsuarios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtnNovo: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnGravar: TBitBtn;
    BitBtnSair: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    DSUsuarios: TDataSource;
    DSUsuMod: TDataSource;
    TransUsu: TIBTransaction;
    TbUsuarios: TIBDataSet;
    TbUsuariosCODUSUARIO: TIntegerField;
    TbUsuariosLOGIN: TIBStringField;
    TbUsuariosSENHA: TIBStringField;
    TbUsuMod: TIBDataSet;
    TbUsuModCODUSUARIO: TIntegerField;
    TbUsuModCODMODULO: TIntegerField;
    TbUsuModNIVELCONS: TIBStringField;
    TbUsuModNIVELEDI: TIBStringField;
    TbUsuModNIVELEXC: TIBStringField;
    TbUsuModNIVELREL: TIBStringField;
    TbUsuModNivelConsStr: TStringField;
    TbUsuModNivelEdiStr: TStringField;
    TbUsuModNivelExcStr: TStringField;
    TbUsuModNivelRelStr: TStringField;
    TbHistSenha: TIBTable;
    TbHistSenhaCODUSUARIO: TIntegerField;
    TbHistSenhaSENHA: TIBStringField;
    TbHistSenhaCODHIST: TIntegerField;
    TbHistSenhaDATAULTHIST: TDateField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel7: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TbUsuModModulo: TStringField;
    QryModulos: TIBQuery;
    QryModulosCODMODULO: TIntegerField;
    QryModulosDESCRICAO: TIBStringField;
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure DSUsuariosStateChange(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure TbUsuModCalcFields(DataSet: TDataSet);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure GeraSQL;
    procedure Verificacao;
    procedure CopiarModulos;
  public
    { Public declarations }
  end;

var
  FUsuarios: TFUsuarios;

implementation

uses UDados, USistema;

{$R *.dfm}

procedure TFUsuarios.CopiarModulos;
begin
  if not QryModulos.Active then
    QryModulos.Open;
  QryModulos.First;
    while not QryModulos.Eof do begin
      TbUsuMod.Append;
      TbUsuModCODUSUARIO.Value := TbUsuariosCODUSUARIO.Value;
      TbUsuModCODMODULO.Value := QryModulosCODMODULO.Value;
      TbUsuModNIVELCONS.Value := 'T';
      TbUsuModNIVELEDI.Value := 'F';
      TbUsuModNIVELEXC.Value := 'F';
      TbUsuModNIVELREL.Value := 'F';
      TbUsuMod.Post;
      QryModulos.Next;
    end;
end;

procedure TFUsuarios.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 0);
end;

procedure TFUsuarios.GeraSQL;
var
  vlSQL :String;
begin
{  vlSQL := 'select * from MODULOS where CODMODULO is not null ';
  if not TbUsuMod.IsEmpty then
    TbUsuMod.First;
    while not TbUsuMod.Eof do begin
      vlSQL := vlSQL + ' and CODMODULO <> '+ TbUsuModCODMODULO.AsString;
      TbUsuMod.Next;
    end;
    VlSQL := vlSQL + ' Order by DESCRICAO';
    QryModulos.Close;
    QryModulos.UnPrepare;
    QryModulos.SQL.Text := vlSQL;
    QryModulos.Prepare;
    QryModulos.Open;
    Verificacao;    }
{    if not Dados.QryModulosLK.Active then begin
      Dados.QryModulosLK.Prepare;
      Dados.QryModulosLK.Open;
    end;}
end;

procedure TFUsuarios.BitBtnSairClick(Sender: TObject);
var
  vlCodAtual: Integer;
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição?', mtConfirmation, [mbYes, MbNo], 0)=IDYES then begin
    vlCodAtual := TbUsuariosCODUSUARIO.Value;
    TransUsu.RollbackRetaining;
    TbUsuarios.Close;
    TbUsuMod.Close;
    TbUsuarios.Open;
    TbUsuMod.Open;
    TbUsuarios.Locate('CODUSUARIO', vlCodAtual, []);
  end;
end;

procedure TFUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TbUsuarios.close;
  TbUsuMod.Close;
  Action := caFree;
end;

procedure TFUsuarios.BitBtnNovoClick(Sender: TObject);
begin
  if Dados.QryModulosLK.Active then begin
    Dados.QryModulosLK.Close;
    Dados.QryModulosLK.UnPrepare;
  end;
//  Verificacao;
  if VerificarPermissao('USUÁRIOS', 'EDI', 1) then begin
    TbUsuarios.Append;
    Panel7.Left := 3;
    Panel7.Top := 2;
    Panel7.Visible := true;

  end;
end;

procedure TFUsuarios.BitBtnAlterarClick(Sender: TObject);
begin
  if Dados.QryModulosLK.Active then begin
    Dados.QryModulosLK.Close;
    Dados.QryModulosLK.UnPrepare;
  end;
//  Verificacao;
  if VerificarPermissao('USUÁRIOS', 'EDI', 1) then begin
    if not TbUsuarios.IsEmpty then begin
      TbUsuarios.Edit;
      Dados.QryModulosLK.Prepare;
      Dados.QryModulosLK.Open;
    end;
  end;
end;

procedure TFUsuarios.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('USUÁRIOS', 'EXC', 1) and (not TbUsuarios.IsEmpty) and
    (MessageDlg('Deseja apagar o usuário '+TbUsuariosLOGIN.AsString +' ?',
      mtConfirmation, [mbYes, mbNo], 0) = IDYES) then begin
    TbUsuMod.First;
    while not TbUsuMod.Eof do
      TbUsuMod.Delete;
    TbUsuarios.Delete;
    TransUsu.CommitRetaining;
  end;
end;

procedure TFUsuarios.BitBtnGravarClick(Sender: TObject);
begin
  Verificacao;
  DBEdit2Exit(nil);
  TbUsuarios.Post;
  TransUsu.CommitRetaining;
end;

procedure TFUsuarios.DSUsuariosStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbUsuarios.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do cadastro de Usuários';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar edição do Usuário';
  end;
end;

procedure TFUsuarios.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  GeraSQL;
end;

procedure TFUsuarios.TbUsuModCalcFields(DataSet: TDataSet);
begin
  TbUsuModNivelConsStr.Clear;
  TbUsuModNivelEdiStr.Clear;
  TbUsuModNivelExcStr.Clear;
  TbUsuModNivelRelStr.Clear;
  if TbUsuModNIVELCONS.Value = 'T' then
    TbUsuModNivelConsStr.Value := 'X';
  if TbUsuModNIVELEDI.Value = 'T' then
    TbUsuModNivelEdiStr.Value := 'X';
  if TbUsuModNIVELEXC.Value = 'T' then
    TbUsuModNivelExcStr.Value := 'X';
  if TbUsuModNIVELREL.Value = 'T' then
    TbUsuModNivelRelStr.Value := 'X';
end;

procedure TFUsuarios.DBEdit2Exit(Sender: TObject);
var
  vlqtas, vli, vlconv, vlcount : Integer;
  vlsenha : String;
procedure SenhaDigitada;
begin
  MessageDlg('A senha digitada já foi utilizada!', mtWarning, [mbOk], 0);
  TbUsuariosSENHA.Clear;
  if sender = DBEdit2 then
    DBEdit2.SetFocus
  else
    DBEdit4.SetFocus
end;
procedure Login;
begin
  MessageDlg('Digite um login para este usuário!', mtWarning, [mbOk], 0);
  if sender = DBEdit1 then
    DBEdit1.SetFocus
  else
    DBEdit3.SetFocus
end;
procedure SenhaMaior;
begin
  MessageDlg('Digite uma senha maior que 6 dígitos!', mtWarning, [mbOk], 0);
  TbUsuariosSENHA.Clear;
  if sender = DBEdit2 then
    DBEdit2.SetFocus
  else
    DBEdit4.SetFocus
end;
procedure Sequencia;
begin
  MessageDlg('Digite uma senha cuja seqüência não seja numérica!', mtWarning, [mbOk], 0);
  TbUsuariosSENHA.Clear;
  if sender = DBEdit2 then
    DBEdit2.SetFocus
  else
    DBEdit4.SetFocus
end;
begin
  if not TbHistSenha.IsEmpty then begin
    if TbHistSenha.Locate('SENHA', DBEdit2.Text, [loPartialKey, loCaseInsensitive]) then
      SenhaDigitada
  end else  if TbUsuariosLOGIN.IsNull then
    Login
  else if Length(TbUsuariosSENHA.Value) <= 6 then
    SenhaMaior
  else begin
    vlcount := 0;
    vlqtas := Length(TbUsuariosSENHA.Value);
    vlsenha := TbUsuariosSENHA.Value;
    for vli := 1 to vlqtas do begin
      try
        vlconv := StrToInt(vlsenha[vli]);
        Inc (vlcount);
      except
      end;
    end;
    if vlcount = vlqtas then
      Sequencia
  end;
end;

procedure TFUsuarios.FormCreate(Sender: TObject);
begin
  TbUsuarios.Open;
  TbUsuMod.Open;
  TbHistSenha.Open;
  if Dados.QryModulosLK.Active then begin
    Dados.QryModulosLK.Close;
    Dados.QryModulosLK.UnPrepare;
  end;
//  Verificacao;
  if (FSistema.vgAlterarSenha = 1) and VerificarPermissao('USUÁRIOS', 'CONS', 1) then begin
//    Verificacao;
    Dados.QryModulosLK.Prepare;
    Dados.QryModulosLK.Open;
    GeraSQL;
  end;
end;

procedure TFUsuarios.DBGrid1CellClick(Column: TColumn);
procedure Cons;
begin
  if TbUsuModNIVELCONS.Value = 'T' then
    TbUsuModNIVELCONS.Value := 'F'
  else
    TbUsuModNIVELCONS.Value := 'T';
end;
procedure Edi;
begin
  if TbUsuModNIVELEDI.Value = 'T' then
    TbUsuModNIVELEDI.Value := 'F'
  else
    TbUsuModNIVELEDI.Value := 'T';
end;
procedure Exc;
begin
  if TbUsuModNIVELEXC.Value = 'T' then
    TbUsuModNIVELEXC.Value := 'F'
  else
    TbUsuModNIVELEXC.Value := 'T';
end;
procedure Rel;
begin
  if TbUsuModNIVELREL.Value = 'T' then
    TbUsuModNIVELREL.Value := 'F'
  else
    TbUsuModNIVELREL.Value := 'T';
end;
begin
  if not (TbUsuarios.State in [dsedit]) then
    Exit;
  if not (TbUsuMod.State in [dsedit]) then
    TbUsuMod.Edit;
  if Column.Title.Caption = 'Consulta' then
    Cons
  else if Column.Title.Caption = 'Edição' then
    Edi
  else if Column.Title.Caption = 'Exclusão' then
    Exc
  else if Column.Title.Caption = 'Relatórios' then
    Rel;
end;

procedure TFUsuarios.BitBtn2Click(Sender: TObject);
var
  vlqtas, vli, vlconv, vlcount : Integer;
  vlsenha : String;
procedure Login;
begin
  MessageDlg('Digite um login para este usuário!', mtWarning, [mbOk], 0);
  DBEdit3.SetFocus
end;
procedure SenhaMaior;
begin
  if TbUsuariosSENHA.IsNull then
    MessageDlg('Digite uma senha!', mtWarning, [mbOk], 0)
  else begin
    MessageDlg('Digite uma senha maior que 6 dígitos!', mtWarning, [mbOk], 0);
    TbUsuariosSENHA.Clear;
  end;
  DBEdit4.SetFocus
end;
procedure Sequencia;
begin
  MessageDlg('Digite uma senha cuja seqüência não seja numérica!', mtWarning, [mbOk], 0);
  TbUsuariosSENHA.Clear;
  DBEdit4.SetFocus
end;
begin
  if TbUsuariosLOGIN.IsNull then
    Login
  else if Length(TbUsuariosSENHA.Value) <= 6 then
    SenhaMaior
  else begin
    vlcount := 0;
    vlqtas := Length(TbUsuariosSENHA.Value);
    vlsenha := TbUsuariosSENHA.Value;
    for vli := 1 to vlqtas do begin
      try
        vlconv := StrToInt(vlsenha[vli]);
        Inc (vlcount);
      except
      end;
    end;
    if vlcount = vlqtas then
      Sequencia
    else begin
      TbUsuarios.Post;
      CopiarModulos;
      TransUsu.CommitRetaining;
      Panel7.Visible := False;
    end;
  end;
end;

procedure TFUsuarios.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a edição?', mtConfirmation, [mbYes, MbNo], 0)=IDYES then begin
    TbUsuarios.Cancel;
    TransUsu.RollbackRetaining;
    Panel7.Visible := False;
  end;
end;

procedure TFUsuarios.DBGrid1Exit(Sender: TObject);
begin
  TbUsuMod.Post;
end;

procedure TFUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
