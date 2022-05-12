unit USistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, Buttons, StdCtrls;

type
  TFSistema = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Usurios1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    N2: TMenuItem;
    AlterarSenha1: TMenuItem;
    Cadastros1: TMenuItem;
    Principais1: TMenuItem;
    Estados1: TMenuItem;
    Cidades1: TMenuItem;
    Unidads1: TMenuItem;
    CFOP1: TMenuItem;
    iposdeClassificaoFscal1: TMenuItem;
    Produto1: TMenuItem;
    Bancos1: TMenuItem;
    ransportadoras1: TMenuItem;
    Clientes1: TMenuItem;
    Vendas1: TMenuItem;
    ContasaReceber1: TMenuItem;
    CondiodePagamento1: TMenuItem;
    Sobre1: TMenuItem;
    OSistema1: TMenuItem;
    N3: TMenuItem;
    Ajuda1: TMenuItem;
    Label1: TLabel;
    BitClientes: TBitBtn;
    BitFornecedores: TBitBtn;
    BitVendas: TBitBtn;
    BitCompras: TBitBtn;
    BitCP: TBitBtn;
    BitCR: TBitBtn;
    BitORC: TBitBtn;
    BitOC: TBitBtn;
    BitProdutos: TBitBtn;
    BitME: TBitBtn;
    BitSecurity: TBitBtn;
    BitSair: TBitBtn;
    Fornecedores1: TMenuItem;
    Compras1: TMenuItem;
    ContasaPagar1: TMenuItem;
    Oramentos1: TMenuItem;
    OrdensdeCompra1: TMenuItem;
    MovimentaodeEstoque1: TMenuItem;
    Configuraes1: TMenuItem;
    N4: TMenuItem;
    BackUp1: TMenuItem;
    N5: TMenuItem;
    IntegraoContbil1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Usurios1Click(Sender: TObject);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Unidads1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure iposdeClassificaoFscal1Click(Sender: TObject);
    procedure CondiodePagamento1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure ransportadoras1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure OSistema1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure BitClientesClick(Sender: TObject);
    procedure BitFornecedoresClick(Sender: TObject);
    procedure BitVendasClick(Sender: TObject);
    procedure BitComprasClick(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure BitCRClick(Sender: TObject);
    procedure BitORCClick(Sender: TObject);
    procedure BitOCClick(Sender: TObject);
    procedure BitProdutosClick(Sender: TObject);
    procedure BitMEClick(Sender: TObject);
    procedure MovimentaodeEstoque1Click(Sender: TObject);
    procedure Oramentos1Click(Sender: TObject);
    procedure BitSairClick(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure BitCPClick(Sender: TObject);
    procedure BackUp1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure BitSecurityClick(Sender: TObject);
    procedure OrdensdeCompra1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure IntegraoContbil1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vgAlterarSenha: Smallint;
    procedure RefreshTables(vpForm: String);
  end;

var
  FSistema: TFSistema;

implementation

uses UUsuarios, UAltereSenha, ULogin, UEstados, UUnidades,
  UTipoClassFiscal, UCFOP, UCondPgto, UProdutos, UBanco,
  UAbout, UVendas, UMovEst, UOrcamento, UCReceber,
  UCompras, UCPagar, UOrdemCompra, UDados, UCidades, UBackUp, UConfig,
  UIntegraCont, UGenerico;

{$R *.dfm}

procedure TFSistema.RefreshTables(vpForm: String);
begin
{  if vpForm = 'CFOP' then
    Dados.ConfirmaTransLK(True, 23);
  else if vpForm = 'Forn' then
    Dados.ConfirmaTransLK(True, 23);
  else vpForm = 'Cli' then
    Dados.ConfirmaTransLK(True, 25);
  else vpForm = 'CR' then

  else vpForm = 'CP' then
}
end;


procedure TFSistema.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFSistema.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := false;
  if MessageDlg('Deseja gerar backup do Banco de Dados?',mtInformation, [mbYes, mbNo], 0) = IDYES then
    BackUp1Click(nil);
  if MessageDlg('Deseja sair do SisMetal?',mtInformation, [mbYes, mbNo], 0) = IDYES then begin
    CanClose := True;
    Dados.Database.ForceClose;
    Application.Terminate;
  end;
end;

procedure TFSistema.Usurios1Click(Sender: TObject);
begin
  if sender = Usurios1 then begin
    vgAlterarSenha := 1;
    Application.CreateForm(TFUsuarios, FUsuarios);
    FUsuarios.ShowModal;
    FUsuarios := nil;
    Dados.QryModulosLK.Close;
  end else if sender = AlterarSenha1 then begin
    vgAlterarSenha := 0;
    Application.CreateForm(TFUsuarios, FUsuarios);
    Application.CreateForm(TFAltereSenha, FAltereSenha);
    FAltereSenha.ShowModal;
    FUsuarios := nil;
    FAltereSenha := nil;
  end;
end;

procedure TFSistema.EfetuarLogoff1Click(Sender: TObject);
begin
  Application.CreateForm(TFLogin, FLogin);
  FLogin.ShowModal;
  FLogin := nil;
end;

procedure TFSistema.Estados1Click(Sender: TObject);
begin
  Application.CreateForm(TFEstados, FEstados);
  FEstados.ShowModal;
  FEstados := nil;
end;

procedure TFSistema.Unidads1Click(Sender: TObject);
begin
  Application.CreateForm(TFUnidades, FUnidades);
  FUnidades.ShowModal;
  FUnidades := nil;
end;

procedure TFSistema.Cidades1Click(Sender: TObject);
begin
  Application.CreateForm(TFCidades, FCidades);
  FCidades.ShowModal;
  FCidades := nil;
end;

procedure TFSistema.CFOP1Click(Sender: TObject);
begin
  Application.CreateForm(TFCFOP, FCFOP);
  FCFOP.ShowModal;
  FCFOP := nil;
end;

procedure TFSistema.iposdeClassificaoFscal1Click(Sender: TObject);
begin
  Application.CreateForm(TFTipoClassFiscal, FTipoClassFiscal);
  FTipoClassFiscal.ShowModal;
  FTipoClassFiscal := nil;
end;

procedure TFSistema.CondiodePagamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFCondPgto, FCondPgto);
  FCondPgto.ShowModal;
  FCondPgto := nil;
end;

procedure TFSistema.Produto1Click(Sender: TObject);
begin
  Application.CreateForm(TFProdutos, FProdutos);
  FProdutos.ShowModal;
  FProdutos := nil;
end;

procedure TFSistema.Bancos1Click(Sender: TObject);
begin
  Application.CreateForm(TFBanco, FBanco);
  FBanco.ShowModal;
  FBanco := nil;
end;

procedure TFSistema.ransportadoras1Click(Sender: TObject);
begin
  Dados.vgGenerica := 3;
  Application.CreateForm(TFGenerico, FGenerico);
  FGenerico.ShowModal;
  FGenerico := nil;
end;

procedure TFSistema.Clientes1Click(Sender: TObject);
begin
  Dados.vgGenerica := 1;
  Application.CreateForm(TFGenerico, FGenerico);
  FGenerico.ShowModal;
  FGenerico := nil;
end;

procedure TFSistema.OSistema1Click(Sender: TObject);
begin
  Application.CreateForm(TFAboutBox, FAboutBox);
  FAboutBox.ShowModal;
  FAboutBox := nil;
end;

procedure TFSistema.Vendas1Click(Sender: TObject);
begin
  Application.CreateForm(TFVendas, FVendas);
  FVendas.ShowModal;
  FVendas := nil;
end;

procedure TFSistema.FormShow(Sender: TObject);
begin
  FSistema.ActiveControl := BitClientes;
end;

procedure TFSistema.Fornecedores1Click(Sender: TObject);
begin
  Dados.vgGenerica := 2;
  Application.CreateForm(TFGenerico, FGenerico);
  FGenerico.ShowModal;
  FGenerico := nil;

{  Application.CreateForm(TFFornecedores, FFornecedores);
  FFornecedores.ShowModal;
  FFornecedores := nil;}
end;

procedure TFSistema.BitClientesClick(Sender: TObject);
begin
  Clientes1Click(nil);
end;

procedure TFSistema.BitFornecedoresClick(Sender: TObject);
begin
  Fornecedores1Click(nil);
end;

procedure TFSistema.BitVendasClick(Sender: TObject);
begin
  Vendas1Click(nil);
end;

procedure TFSistema.BitComprasClick(Sender: TObject);
begin
  Compras1Click(nil);
end;

procedure TFSistema.Compras1Click(Sender: TObject);
begin
  Application.CreateForm(TFCompras, FCompras);
  FCompras.ShowModal;
  FCompras := nil;
end;

procedure TFSistema.ContasaPagar1Click(Sender: TObject);
begin
  Application.CreateForm(TFCPagar, FCPagar);
  FCPagar.ShowModal;
  FCPagar := nil;
end;

procedure TFSistema.BitCRClick(Sender: TObject);
begin
  ContasaReceber1Click(nil);
end;

procedure TFSistema.BitORCClick(Sender: TObject);
begin
  Oramentos1Click(nil);
end;

procedure TFSistema.BitOCClick(Sender: TObject);
begin
  OrdensdeCompra1Click(nil);
end;

procedure TFSistema.BitProdutosClick(Sender: TObject);
begin
  Produto1Click(nil);
end;

procedure TFSistema.BitMEClick(Sender: TObject);
begin
  MovimentaodeEstoque1Click(nil);
end;

procedure TFSistema.MovimentaodeEstoque1Click(Sender: TObject);
begin
  Application.CreateForm(TFMovEst, FMovEst);
  FMovEst.ShowModal;
  FMovEst := nil;
end;

procedure TFSistema.Oramentos1Click(Sender: TObject);
begin
  Application.CreateForm(TFOrcamento, FOrcamento);
  FOrcamento.ShowModal;
  FOrcamento := nil;
end;

procedure TFSistema.BitSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFSistema.ContasaReceber1Click(Sender: TObject);
begin
  Application.CreateForm(TFCReceber, FCReceber);
  FCReceber.ShowModal;
  FCReceber := nil;
end;

procedure TFSistema.BitCPClick(Sender: TObject);
begin
  ContasaPagar1Click(nil);
end;

procedure TFSistema.BackUp1Click(Sender: TObject);
begin
  Application.CreateForm(TFBackUp, FBackUp);
  FBackUp.ShowModal;
  FBackUp := nil;
end;

procedure TFSistema.Configuraes1Click(Sender: TObject);
begin
  Application.CreateForm(TFConfig, FConfig);
  FConfig.ShowModal;
  FConfig := nil;
end;

procedure TFSistema.BitSecurityClick(Sender: TObject);
begin
  BackUp1Click(nil);
end;

procedure TFSistema.OrdensdeCompra1Click(Sender: TObject);
begin
  Application.CreateForm(TFOrdemCompra, FOrdemCompra);
  FOrdemCompra.ShowModal;
  FOrdemCompra := nil;
end;

procedure TFSistema.Ajuda1Click(Sender: TObject);
begin
  AbreAjuda
end;

procedure TFSistema.IntegraoContbil1Click(Sender: TObject);
begin
  Application.CreateForm(TFIntegraCont, FIntegraCont);
  FIntegraCont.ShowModal;
  FIntegraCont := nil;
end;

procedure TFSistema.FormCreate(Sender: TObject);
begin
  Application.HelpFile := ExtractFilePath(Application.ExeName)+ 'SISMETAL.HLP';
end;

procedure TFSistema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
