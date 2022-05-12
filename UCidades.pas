unit UCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBTable;

type
  TFCidades = class(TForm)
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
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Relatrios1: TMenuItem;
    Cidades1: TMenuItem;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DSCidades: TDataSource;
    N1: TMenuItem;
    Cidadws1: TMenuItem;
    TbCidades: TIBDataSet;
    TbCidadesCODCIDADE: TIntegerField;
    TbCidadesCODESTADO: TIntegerField;
    TbCidadesNOME: TIBStringField;
    TbCidadesCEP: TIBStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure DSCidadesStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cidades1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DSCidadesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure Verificacao;
  public
    { Public declarations }
  end;

var
  FCidades: TFCidades;

implementation

uses UEstados, UDados, URelCidades;

{$R *.dfm}

procedure TFCidades.Verificacao;
begin
  Dados.ConfirmaTransLK(True, 16);
end;

procedure TFCidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFCidades.BitBtnSairClick(Sender: TObject);
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição da cidade '+
      TbCidades.FieldByName('NOME').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
    TbCidades.Cancel;
end;

procedure TFCidades.Sair1Click(Sender: TObject);
begin
  BitBtnSairClick(nil);
end;

procedure TFCidades.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFEstados, FEstados);
  FEstados.TbEstados.Locate('CODESTADO', TbCidadesCODESTADO.Value, []);
  FEstados.ShowModal;
  FEstados := nil;
  Verificacao;
end;

procedure TFCidades.FormCreate(Sender: TObject);
procedure VerificarState;
begin
  if not VerificarPermissao('ESTADOS', 'CONS', 0) then
    SpeedButton1.Enabled := False;
end;
begin
  if VerificarPermissao('CIDADES', 'CONS', 1) then begin
    VerificarState;
    TbCidades.Open;
    Verificacao;
  end;
end;

procedure TFCidades.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('CIDADES', 'EDI', 1) then begin
    TbCidades.Append;
    DBEdit3.SetFocus;
  end;
end;

procedure TFCidades.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('CIDADES', 'EDI', 1) and not (TbCidades.IsEmpty) then
    TbCidades.Edit;
end;

procedure TFCidades.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('CIDADES', 'EXC', 1) then
    try
      if MessageDlg('Deseja excluir a cidade '+ TbCidadesNOME.Value+'?', mtConfirmation,[mbYes, MbNo], 0)=IDYES then
        TbCidades.Delete;
    except
      MessageDlg('Erro ao Excluir o Registro!', mtError, [mbOk], 0);
    end;
end;

procedure TFCidades.BitBtnGravarClick(Sender: TObject);
begin
  if TbCidadesNOME.IsNull then begin
    MessageDlg('Especifique um nome para a cidade!', mtWarning, [MbOk], 0);
    DBEdit3.SetFocus;
  end else if TbCidadesCODESTADO.Value <= 0 then begin
    MessageDlg('Especifique um estado para esta cidade!', mtWarning, [MbOk], 0);
    DBLookupComboBox1.SetFocus;
  end else if TbCidadesCEP.IsNull then begin
    MessageDlg('Especifique um CEP para esta cidade!', mtWarning, [MbOk], 0);
    DBEdit4.SetFocus;
  end else
    try
      TbCidades.Post;
      Dados.ConfirmaTrans(True);
      MessageDlg(TbCidadesNOME.Value +' editado com sucesso!', mtInformation, [MbOk], 0);
    except
      TbCidades.Cancel;
      Dados.ConfirmaTrans(False);
      MessageDlg('Erro ao editar '+TbCidadesNOME.Value +'!', mtError, [MbOk], 0);
    end;
end;

procedure TFCidades.DSCidadesStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbCidades.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Sair do Cadastro de Cidades';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Cancelar Cidade';
  end;
end;

procedure TFCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dados.QryCidadesLK.Close;
  Dados.QryCidadesLK.UnPrepare;
  Dados.QryCidadesLK.Prepare;
  Dados.QryCidadesLK.Open;
  Action := caFree;
end;

procedure TFCidades.Cidades1Click(Sender: TObject);
begin
  if VerificarPermissao('CIDADES', 'REL', 1) then begin
    Application.CreateForm(TFRelCidades, FRelCidades);
    FRelCidades := nil;
  end;
end;

procedure TFCidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbCidades.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbCidades.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbCidades.State in [dsbrowse]) then
    TbCidades.First
  else if (Key = 35) and (TbCidades.State in [dsbrowse]) then
    TbCidades.Last
  else if Key = vk_F1 then
    AbreAjuda;
end;

procedure TFCidades.DBEdit4Exit(Sender: TObject);
begin
  if Length (TbCidadesCEP.Value) < 8 then begin
    MessageDlg('Especifique o final do CEP! Por exemplo: 95.700-000.', mtWarning, [MbOk], 0);
    DBEdit4.SetFocus;
  end;
end;

procedure TFCidades.DBEdit1Enter(Sender: TObject);
begin
  Dados.QryEstadosLK.FetchAll;
end;

procedure TFCidades.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryEstadosLK.FetchAll;
end;

procedure TFCidades.DSCidadesDataChange(Sender: TObject; Field: TField);
begin
{
  if not Dados.QryEstadosLK.Active then
    Dados.ConfirmaTransLK(False, 1);
  if not Dados.QryCidadesLK.Active then
    Dados.ConfirmaTransLK(False, 3);
}
end;

end.
