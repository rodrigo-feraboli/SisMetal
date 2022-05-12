  unit UDados;

interface

uses
  SysUtils, Classes, IniFiles, QForms, DB, DBXpress, IBDatabase,
  IBCustomDataSet, IBTable, IBQuery, Dialogs, WinTypes, WinProcs, StdCtrls, ExtCtrls,
  Messages, Variants, Graphics, Controls, Forms,
  Menus, Buttons;
  
type
  TConsisteInscricaoEstadual  = function (const Insc, UF: String): Integer; stdcall;
  TVersaoDLL                  = function : Integer; stdcall;

type
  TDados = class(TDataModule)
    Database: TIBDatabase;
    Transaction: TIBTransaction;
    QryProxCodCli: TIBQuery;
    QryEstadosLK: TIBQuery;
    DSEstadosLK: TDataSource;
    QryCidadesLK: TIBQuery;
    DSCidadesLK: TDataSource;
    QryCFOPLK: TIBQuery;
    DSCFOPLK: TDataSource;
    DSCondPgtoLK: TDataSource;
    QryCondPgtoLK: TIBQuery;
    QryUnidadesLK: TIBQuery;
    QryTipoClassLK: TIBQuery;
    DSUnidadesLK: TDataSource;
    DSTiposClassLK: TDataSource;
    QryBancosLK: TIBQuery;
    QryClientesLK: TIBQuery;
    QryFornecedoresLK: TIBQuery;
    QryProdutosLK: TIBQuery;
    QryTransportadorasLK: TIBQuery;
    DSBancosLK: TDataSource;
    DSClientesLK: TDataSource;
    DSFornecedoresLK: TDataSource;
    DSProdutosLK: TDataSource;
    DSTransportadorasLK: TDataSource;
    QryBancosFanLK: TIBQuery;
    DSBancosFanLK: TDataSource;
    QryClientesFanLK: TIBQuery;
    DSClientesFanLK: TDataSource;
    QryFornecedoresFanLK: TIBQuery;
    DSFornecedoresFanLK: TDataSource;
    QryTransportadorasFanLK: TIBQuery;
    DSTransportadorasFanLK: TDataSource;
    TbConfig: TIBTable;
    QryProxCodGeral: TIBQuery;
    QryProxCodForn: TIBQuery;
    QryModulosLK: TIBQuery;
    QryLogin: TIBQuery;
    QryAux: TIBQuery;
    TbHistSenha: TIBTable;
    TbHistSenhaCODUSUARIO: TIntegerField;
    TbHistSenhaSENHA: TIBStringField;
    TbHistSenhaCODHIST: TIntegerField;
    TbHistSenhaDATAULTHIST: TDateField;
    DSLogin: TDataSource;
    QryLoginCODUSUARIO: TIntegerField;
    QryLoginLOGIN: TIBStringField;
    QryLoginSENHA: TIBStringField;
    TransactionLK: TIBTransaction;
    QryEstadosLKCODESTADO: TIntegerField;
    QryEstadosLKNOME: TIBStringField;
    QryEstadosLKUF: TIBStringField;
    TbConfigPATHSAVE: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vgVers : String;
    vgGenerica, vgTipoRel : Smallint;
    procedure ConfirmaTrans(vpCommit: Boolean);
    procedure ConfirmaTransLK(vpCommit: Boolean; vpLK: Smallint);
    function VerificaCNPJ(vfCNPJ: String): Boolean;
    function VerificaIE(vfIE, vfUF: String): Integer;
  end;

var
  Dados: TDados;
  procedure AbreAjuda;
  function VerificarPermissao (vfPermissao: String; vfTipo: String; vfMsg:Smallint): Boolean;
  procedure GravarHistorico (vfCodUsuario: Integer; vfSenha: String);

implementation

uses ULogin;

{$R *.dfm}

procedure AbreAjuda;
begin
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure GravarHistorico (vfCodUsuario: Integer; vfSenha: String);
begin
{  try
    Dados.QryAux.Close;
    Dados.QryAux.SQL.Text := 'INSERT INTO HISTSENHA (CODUSUARIO, SENHA) VALUES (2, TESTE)';//'+ IntToStr(vfCodUsuario) +', '+ vfSenha +');
    Dados.QryAux.Open;
    Dados.ConfirmaTrans(True);
  except
    Dados.ConfirmaTrans(False);
  end;}

  Dados.TbHistSenha.Open;
  try
    Dados.TbHistSenha.Append;
    Dados.TbHistSenhaCODHIST.Value := 1;
    Dados.TbHistSenhaCODUSUARIO.Value := vfCodUsuario;
    Dados.TbHistSenhaSENHA.Value := vfSenha;
    Dados.TbHistSenhaDATAULTHIST.Value := Date;
    Dados.TbHistSenha.Post;
    Dados.ConfirmaTrans(True);
  except
    Dados.ConfirmaTrans(False);
  end;
  Dados.TbHistSenha.Close;
end;

function VerificarPermissao(vfPermissao: String; vfTipo: String; vfMsg:Smallint): Boolean;
begin
  Result := False;
  Dados.QryAux.close;
  Dados.QryAux.Unprepare;
  Dados.QryAux.SQL.Text := 'select CODMODULO, NIVELCONS, NIVELEDI, NIVELEXC, NIVELREL from USUMODULOS '+
    'WHERE CODUSUARIO = :plcodusuario';
  Dados.QryAux.ParamByName('plcodusuario').AsInteger := Dados.QryLogin.Fields[0].AsInteger;
  Dados.QryAux.Prepare;
  Dados.QryAux.Open;
  Dados.QryModulosLK.Prepare;
  Dados.QryModulosLK.Open;
  Dados.QryModulosLK.Locate('DESCRICAO', vfPermissao, [loPartialKey, loCaseInsensitive]);
  if Dados.QryAux.Locate('CODMODULO', Dados.QryModulosLK.Fields[0].AsString, []) then
    if vfTipo = 'CONS' then begin
      if Dados.QryAux.Fields[1].AsString = 'T' then
        Result := True;
    end else if vfTipo = 'EDI' then begin
      if Dados.QryAux.Fields[2].AsString = 'T' then
        Result := True;
    end else if vfTipo = 'EXC' then begin
      if Dados.QryAux.Fields[3].AsString = 'T' then
        Result := True;
    end else if vfTipo = 'REL' then begin
      if Dados.QryAux.Fields[4].AsString = 'T' then
        Result := True;
    end;
  if (not Result) and (vfMsg = 1) then
    MessageDlg('Usuário '+ Dados.QryLogin.FieldByName('LOGIN').AsString +' sem permissão de acesso ao módulo do sistema!', mtError, [mbOk], 0);
  Dados.QryModulosLK.Close;
  Dados.QryModulosLK.UnPrepare;
  vfPermissao := '';
  vfTipo := '';
  vfMsg := 0;
end;

function TDados.VerificaIE(vfIE, vfUF: String): Integer;
var
  LibHandle : THandle;
  ConsisteInscricaoEstadual : TConsisteInscricaoEstadual;
begin
  try
    LibHandle :=  LoadLibrary (PChar (Trim ('DllInscE32.Dll')));
    if  LibHandle <=  HINSTANCE_ERROR then
      raise Exception.Create ('Dll não carregada. Contate o desenvolvedor do sistema!');
    @ConsisteInscricaoEstadual  :=  GetProcAddress (LibHandle,'ConsisteInscricaoEstadual');
    if  @ConsisteInscricaoEstadual  = nil then
      raise Exception.Create('Entrypoint Download não encontrado na Dll');
    Result := ConsisteInscricaoEstadual (vfIE, vfUF);
  finally
    FreeLibrary (LibHandle);
  end;
end;

function TDados.VerificaCNPJ(vfCNPJ: String): Boolean;
var
  vld1, vld2, vln1, vln2, vln3, vln4, vln5, vln6, vln7, vln8, vln9, vln10, vln11, vln12: Integer;
  vldigitado, vlcalculado: String;
begin
  vln1:=StrToInt(vfCNPJ[1]);
  vln2:=StrToInt(vfCNPJ[2]);
  vln3:=StrToInt(vfCNPJ[3]);
  vln4:=StrToInt(vfCNPJ[4]);
  vln5:=StrToInt(vfCNPJ[5]);
  vln6:=StrToInt(vfCNPJ[6]);
  vln7:=StrToInt(vfCNPJ[7]);
  vln8:=StrToInt(vfCNPJ[8]);
  vln9:=StrToInt(vfCNPJ[9]);
  vln10:=StrToInt(vfCNPJ[10]);
  vln11:=StrToInt(vfCNPJ[11]);
  vln12:=StrToInt(vfCNPJ[12]);
  vld1:=vln12*2+vln11*3+vln10*4+vln9*5+vln8*6+vln7*7+vln6*8+vln5*9+vln4*2+vln3*3+vln2*4+vln1*5;
  vld1:=11-(vld1 mod 11);
  if vld1 >=10 then vld1:=0;
    vld2:=vld1*2+vln12*3+vln11*4+vln10*5+vln9*6+vln8*7+vln7*8+vln6*9+vln5*2+vln4*3+vln3*4+vln2*5+vln1*6;
    vld2:=11-(vld2 mod 11);
  if vld2 >=10 then vld2:=0;
  vlcalculado:= inttostr(vld1) + inttostr(vld2);
  vldigitado:= vfCNPJ[13]+vfCNPJ[14];
  if vlcalculado = vldigitado then
    Result:=True
  else
    Result:=False;
end;

procedure TDados.ConfirmaTrans(vpCommit: Boolean);
begin
  if vpCommit then
    Transaction.CommitRetaining
  else
    Transaction.RollbackRetaining;
end;

procedure TDados.ConfirmaTransLK(vpCommit: Boolean; vpLK: Smallint);
procedure FechaAbreMod;
begin
  QryModulosLK.Close;
  QryModulosLK.UnPrepare;
  QryModulosLK.Prepare;
  QryModulosLK.Open;
end;
procedure FechaAbreEst;
begin
  QryEstadosLK.Close;
  QryEstadosLK.UnPrepare;
  QryEstadosLK.Prepare;
  QryEstadosLK.Open;
end;
procedure FechaAbreBan;
begin
  QryBancosLK.Close;
  QryBancosLK.UnPrepare;
  QryBancosLK.Prepare;
  QryBancosLK.Open;
  QryBancosFanLK.Close;
  QryBancosFanLK.UnPrepare;
  QryBancosFanLK.Prepare;
  QryBancosFanLK.Open;
end;
procedure FechaAbreCid;
begin
  FechaAbreEst;
  QryCidadesLK.Close;
  QryCidadesLK.UnPrepare;
  QryCidadesLK.Prepare;
  QryCidadesLK.Open;
end;
procedure FechaAbreCli;
begin
  QryClientesLK.Close;
  QryClientesLK.UnPrepare;
  QryClientesLK.Prepare;
  QryClientesLK.Open;
  QryClientesFanLK.Close;
  QryClientesFanLK.UnPrepare;
  QryClientesFanLK.Prepare;
  QryClientesFanLK.Open;
end;
procedure FechaAbreCFOP;
begin
  QryCFOPLK.Close;
  QryCFOPLK.UnPrepare;
  QryCFOPLK.Prepare;
  QryCFOPLK.Open;
end;
procedure FechaAbreForn;
begin
  QryFornecedoresLK.Close;
  QryFornecedoresLK.UnPrepare;
  QryFornecedoresLK.Prepare;
  QryFornecedoresLK.Open;
  QryFornecedoresFanLK.Close;
  QryFornecedoresFanLK.UnPrepare;
  QryFornecedoresFanLK.Prepare;
  QryFornecedoresFanLK.Open;
end;
procedure FechaAbreProd;
begin
  QryProdutosLK.Close;
  QryProdutosLK.UnPrepare;
  QryProdutosLK.Prepare;
  QryProdutosLK.Open;
end;
procedure FechaAbreTCF;
begin
  QryTipoClassLK.Close;
  QryTipoClassLK.UnPrepare;
  QryTipoClassLK.Prepare;
  QryTipoClassLK.Open;
end;
procedure FechaAbreTrans;
begin
  QryTransportadorasLK.Close;
  QryTransportadorasLK.UnPrepare;
  QryTransportadorasLK.Prepare;
  QryTransportadorasLK.Open;
  QryTransportadorasFanLK.Close;
  QryTransportadorasFanLK.UnPrepare;
  QryTransportadorasFanLK.Prepare;
  QryTransportadorasFanLK.Open;
end;
procedure FechaAbreCP;
begin
  QryCondPgtoLK.Close;
  QryCondPgtoLK.UnPrepare;
  QryCondPgtoLK.Prepare;
  QryCondPgtoLK.Open;
end;
procedure FechaAbreUni;
begin
  QryUnidadesLK.Close;
  QryUnidadesLK.UnPrepare;
  QryUnidadesLK.Prepare;
  QryUnidadesLK.Open;
end;
procedure FechaAbreCadVen;
begin
  FechaAbreCli;
  FechaAbreCFOP;
  FechaAbreTrans;
  FechaAbreCP;
  FechaAbreProd; // TESTE
end;
procedure FechaAbreCadCom;
begin
  FechaAbreForn;
  FechaAbreCFOP;
  FechaAbreTrans;
  FechaAbreCP;
  FechaAbreProd; // TESTE
end;
procedure FechaAbreCadOC;
begin
  FechaAbreForn;
end;
procedure FechaAbreCadOrc;
begin
  FechaAbreCli;
end;
procedure FechaAbreCadCid;
begin
  FechaAbreEst;
end;
procedure FechaAbreCadProd;
begin
  FechaAbreTCF;
  FechaAbreUni;
end;
procedure FechaAbreCadCP;
begin
  FechaAbreForn;
  FechaAbreBan;
  FechaAbreCFOP;
  FechaAbreCP;
end;
procedure FechaAbreCadCR;
begin
  FechaAbreCli;
  FechaAbreBan;
  FechaAbreCFOP;
  FechaAbreCP;
end;
procedure FechaAbreCadME;
begin
  FechaAbreProd;
end;
procedure FechaAbreCadBan;
begin
  FechaAbreEst;
  FechaAbreCid;
end;
procedure FechaAbreCadForn;
begin
  FechaAbreEst;
  FechaAbreCid;
  FechaAbreBan;
  FechaAbreCFOP;
  FechaAbreTrans;
  FechaAbreCP;
end;
procedure FechaAbreCadCli;
begin
  FechaAbreEst;
  FechaAbreCid;
  FechaAbreBan;
  FechaAbreCFOP;
  FechaAbreTrans;
  FechaAbreCP;
end;
procedure FechaAbreCadTrans;
begin
  FechaAbreEst;
  FechaAbreCid;
end;
procedure FechaAbreCadItensGen;
begin
  FechaAbreProd;
end;
procedure FechaAbreCadItensVen;
begin
  FechaAbreProd;
  FechaAbreTCF;
end;
procedure AbreModulosLK;
begin
  QryModulosLK.Prepare;
  QryModulosLK.Open;
end;
procedure AbreEstadosLK;
begin
  QryEstadosLK.Prepare;
  QryEstadosLK.Open;
end;
procedure AbreBancosLK;
begin
  QryBancosLK.Prepare;
  QryBancosLK.Open;
  QryBancosFanLK.Prepare;
  QryBancosFanLK.Open;
end;
procedure AbreCidadesLK;
begin
  QryCidadesLK.Prepare;
  QryCidadesLK.Open;
end;
procedure AbreClientesLK;
begin
  QryClientesLK.Prepare;
  QryClientesLK.Open;
  QryClientesFanLK.Prepare;
  QryClientesFanLK.Open;
end;
procedure AbreCFLK;
begin
  QryCFOPLK.Prepare;
  QryCFOPLK.Open;
end;
procedure AbreFornLK;
begin
  QryFornecedoresLK.Prepare;
  QryFornecedoresLK.Open;
  QryFornecedoresFanLK.Prepare;
  QryFornecedoresFanLK.Open;
end;
procedure AbreCPLK;
begin
  QryCondPgtoLK.Prepare;
  QryCondPgtoLK.Open;
end;
procedure AbreUniLK;
begin
  QryUnidadesLK.Prepare;
  QryUnidadesLK.Open;
end;
procedure AbreProdLK;
begin
  QryProdutosLK.Prepare;
  QryProdutosLK.Open;
end;
procedure AbreTCFLK;
begin
  QryTipoClassLK.Prepare;
  QryTipoClassLK.Open;
end;
procedure AbreTransLK;
begin
  QryTransportadorasLK.Prepare;
  QryTransportadorasLK.Open;
  QryTransportadorasFanLK.Prepare;
  QryTransportadorasFanLK.Open;
end;
procedure FechaAbreLocCP;
begin
  AbreFornLK;
  AbreBancosLK;
end;
procedure FechaAbreLocCR;
begin
  AbreClientesLK;
  AbreBancosLK;
end;
begin
  if vpCommit then begin
    TransactionLK.Commit;
    TransactionLK.StartTransaction;
{vpLK = 0  -> QryModulosLK
 vpLK = 1  -> QryEstadosLK
 vpLK = 2  -> QryBancosLK, QryBancosFanLK
 vpLK = 3  -> QryCidadesLK
 vpLK = 4  -> QryClientesLK, QryClientesFanLK
 vpLK = 5  -> QryCFOPLK
 vpLK = 6  -> QryFornecdoresLK, QryFornecedoresFanLK
 vpLK = 7 -> QryCondPgtoLK
 vpLK = 8 -> QryUnidadesLK
 vpLK = 9 -> QryProdutosLK
 vpLK = 10 -> QryTipoClassLK
 vpLK = 11 -> QryTransportadorasLK, QryTransportadorasFanLK
 vpLK = 12 -> Cadastro de Vendas
 vpLK = 13 -> Cadastro de Compras
 vpLK = 14 -> Cadastro de OC
 vpLK = 15 -> Cadastro de Orcamentos
 vpLK = 16 -> Cadastro de Cidades
 vpLK = 17 -> Cadastro de Produtos
 vpLK = 18 -> Cadastro de CP
 vpLK = 19 -> Cadastro de CR
 vpLK = 20 -> Cadastro de Mov Est
 vpLK = 21 -> Cadastro de Bancos
 vpLK = 22 -> Cadastro de Fornecedores
 vpLK = 23 -> Cadastro de Itens Genericos (Orc, OC ...)
 vpLK = 24 -> Cadastro de Itens Venda
 vpLK = 25 -> Cadastro de Clientes
 vpLK = 26 -> Cadastro de Transport.
 vpLK = 27 -> Loc. CP,
 vpLK = 28 -> Loc. CR
}
    case vpLK of
      0: FechaAbreMod;
      1: FechaAbreEst;
      2: FechaAbreBan;
      3: FechaAbreCid;
      4: FechaAbreCli;
      5: FechaAbreCFOP;
      6: FechaAbreForn;
      7: FechaAbreCP;
      8: FechaAbreUni;
      9: FechaAbreProd;
      10: FechaAbreTCF;
      11: FechaAbreTrans;
      12: FechaAbreCadVen;
      13: FechaAbreCadCom;
      14: FechaAbreCadOC;
      15: FechaAbreCadOrc;
      16: FechaAbreCadCid;
      17: FechaAbreCadProd;
      18: FechaAbreCadCP;
      19: FechaAbreCadCR;
      20: FechaAbreCadME;
      21: FechaAbreCadBan;
      22: FechaAbreCadForn;
      23: FechaAbreCadItensGen;
      24: FechaAbreCadItensVen;
      25: FechaAbreCadCli;
      26: FechaAbreCadTrans;
      27: FechaAbreLocCP;
      28: FechaAbreLocCR;
    end
  end else begin
    case vpLK of
      0: AbreModulosLK;
      1: AbreEstadosLK;
      2: AbreBancosLK;
      3: AbreCidadesLK;
      4: AbreClientesLK;
      5: AbreCFLK;
      6: AbreFornLK;
      7: AbreCPLK;
      8: AbreUniLK;
      9: AbreProdLK;
      10: AbreTCFLK;
      11: AbreTransLK;
    end;
  end;
end;

procedure TDados.DataModuleCreate(Sender: TObject);
var
  Ini : TIniFile;
//  i : Integer;
  wDataBase : String;
  LibHandle : THandle;
begin
  try
    LibHandle :=  LoadLibrary (PChar (Trim ('DllInscE32.Dll')));
    if  LibHandle <=  HINSTANCE_ERROR then
      raise Exception.Create ('Dll não carregada');
  finally
    FreeLibrary (LibHandle);
  end;

  wDataBase := '';
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'SisMetal.ini');
  wDataBase := Ini.ReadString('Banco', 'Path', '');
  Database.DatabaseName := wDataBase;
  vgVers := '1.0.0';
  Application.HelpFile := Ini.ReadString('Help', 'Path', '');
  Ini.Free;
  vgGenerica := 0;
  vgTipoRel := 0;
  QryEstadosLK.Prepare;
  QryCidadesLK.Prepare;
  QryCFOPLK.Prepare;
  QryCondPgtoLK.Prepare;
  QryUnidadesLK.Prepare;
  QryTipoClassLK.Prepare;
  QryBancosLK.Prepare;
  QryClientesLK.Prepare;
  QryFornecedoresLK.Prepare;
  QryProdutosLK.Prepare;
  QryTransportadorasLK.Prepare;
  QryBancosFanLK.Prepare;
  QryClientesFanLK.Prepare;
  QryFornecedoresFanLK.Prepare;
  QryTransportadorasFanLK.Prepare;


  QryEstadosLK.Open;
  QryCidadesLK.Open;
  QryCFOPLK.Open;
  QryCondPgtoLK.Open;
  QryUnidadesLK.Open;
  QryTipoClassLK.Open;
  QryBancosLK.Open;
  QryClientesLK.Open;
  QryFornecedoresLK.Open;
  QryProdutosLK.Open;
  QryTransportadorasLK.Open;
  QryBancosFanLK.Open;
  QryClientesFanLK.Open;
  QryFornecedoresFanLK.Open;
  QryTransportadorasFanLK.Open;
  TbConfig.Open;
  Database.Connected := True;
end;

procedure TDados.DataModuleDestroy(Sender: TObject);
begin
  QryEstadosLK.Close;
  QryCidadesLK.Close;
  QryCFOPLK.Close;
  QryCondPgtoLK.Close;
  QryUnidadesLK.Close;
  QryTipoClassLK.Close;
  QryBancosLK.Close;
  QryClientesLK.Close;
  QryFornecedoresLK.Close;
  QryProdutosLK.Close;
  QryTransportadorasLK.Close;
  QryBancosFanLK.Close;
  QryClientesFanLK.Close;
  QryFornecedoresFanLK.Close;
  QryTransportadorasFanLK.Close;
  TbConfig.Close;

  QryEstadosLK.UnPrepare;
  QryCidadesLK.UnPrepare;
  QryCFOPLK.UnPrepare;
  QryCondPgtoLK.UnPrepare;
  QryUnidadesLK.UnPrepare;
  QryTipoClassLK.UnPrepare;
  QryBancosLK.UnPrepare;
  QryClientesLK.UnPrepare;
  QryFornecedoresLK.UnPrepare;
  QryProdutosLK.UnPrepare;
  QryTransportadorasLK.UnPrepare;
  QryBancosFanLK.UnPrepare;
  QryClientesFanLK.UnPrepare;
  QryFornecedoresFanLK.UnPrepare;
  QryTransportadorasFanLK.UnPrepare;

  Database.Connected := False;
end;

end.
