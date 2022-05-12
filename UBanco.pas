unit UBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  Menus, DB, IBCustomDataSet, IBTable;

type
  TFBanco = class(TForm)
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
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Edit1: TEdit;
    Fantasia: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    DBEdit8: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Relatrios1: TMenuItem;
    Bancos1: TMenuItem;
    DSBancos: TDataSource;
    SBBusca: TSpeedButton;
    TbBancos: TIBDataSet;
    TbBancosCODBANCO: TIntegerField;
    TbBancosDATACADASTRO: TDateField;
    TbBancosNOME: TIBStringField;
    TbBancosFANTASIA: TIBStringField;
    TbBancosENDERECO: TIBStringField;
    TbBancosCODCIDADE: TIntegerField;
    TbBancosBAIRRO: TIBStringField;
    TbBancosFONE: TIBStringField;
    Label31: TLabel;
    Edit4: TEdit;
    N1: TMenuItem;
    Cidades1: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnSairClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBancosStateChange(Sender: TObject);
    procedure BitBtnNovoClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure BitBtnGravarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBBuscaClick(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure DSBancosDataChange(Sender: TObject; Field: TField);
    procedure Cidades1Click(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
  private
    { Private declarations }
    procedure DataChange;
  public
    { Public declarations }
  end;

var
  FBanco: TFBanco;

implementation

uses UDados, UCidades, ULocBanco, URelBanco;

{$R *.dfm}

procedure TFBanco.DataChange;
begin
  if not Dados.QryEstadosLK.Active then
    Dados.ConfirmaTransLK(False, 1);
  if not Dados.QryCidadesLK.Active then
    Dados.ConfirmaTransLK(False, 3);
  if not TbBancosCODCIDADE.IsNull then begin
    Dados.QryCidadesLK.Locate('CODCIDADE', TbBancosCODCIDADE.Value, []);
    Dados.QryEstadosLK.Locate('CODESTADO', Dados.QryCidadesLK.Fields[2].AsInteger, []);
    Edit4.Text := Dados.QryEstadosLK.FieldByName('UF').AsString;
  end;
end; 

procedure TFBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitBtnSairClick(nil);
end;

procedure TFBanco.BitBtnSairClick(Sender: TObject);
begin
  if BitBtnNovo.Enabled then
    Close
  else if MessageDlg('Deseja cancelar a edição do banco '+
    TbBancos.FieldByName('NOME').AsString +' ?',mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      TbBancos.Cancel;
end;

procedure TFBanco.Sair1Click(Sender: TObject);
begin
  BitBtnSairClick(nil);
end;

procedure TFBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dados.QryBancosLK.Close;
  Dados.QryBancosLK.UnPrepare;
  Dados.QryBancosLK.Prepare;
  Dados.QryBancosLK.Open;
  Dados.QryBancosFanLK.Close;
  Dados.QryBancosFanLK.UnPrepare;
  Dados.QryBancosFanLK.Prepare;
  Dados.QryBancosFanLK.Open;
  Action := caFree;
end;

procedure TFBanco.DSBancosStateChange(Sender: TObject);
begin
  DBNavigator1.Enabled := not (TbBancos.State in [dsinsert, dsedit]);
  BitBtnNovo.Enabled := DBNavigator1.Enabled;
  Arquivo1.Enabled := BitBtnNovo.Enabled;
  Relatrios1.Enabled := BitBtnNovo.Enabled;
  Panel3.Enabled := DBNavigator1.Enabled;
  BitBtnAlterar.Enabled := DBNavigator1.Enabled;
  BitBtnExcluir.Enabled := DBNavigator1.Enabled;
  BitBtnGravar.Enabled := not DBNavigator1.Enabled;
  if BitBtnNovo.Enabled then begin
    BitBtnSair.Caption := '&Sair';
    BitBtnSair.Hint := 'Cancelar Banco';
  end else begin
    BitBtnSair.Caption := '&Cancelar';
    BitBtnSair.Hint := 'Sair do Cadastro de Bancos';
  end;
end;

procedure TFBanco.BitBtnNovoClick(Sender: TObject);
begin
  if VerificarPermissao('BANCOS', 'EDI', 1) then begin
    TbBancos.Append;
    TbBancosDATACADASTRO.Value := Date;
    DBEdit3.SetFocus;
  end;
end;

procedure TFBanco.BitBtnAlterarClick(Sender: TObject);
begin
  if VerificarPermissao('BANCOS', 'EDI', 1) and (not TbBancos.IsEmpty) then
    TbBancos.Edit;
end;

procedure TFBanco.BitBtnExcluirClick(Sender: TObject);
begin
  if VerificarPermissao('BANCOS', 'EXC', 1) and
   (not TbBancos.IsEmpty) and
      (MessageDlg('Deseja excluir o banco '+ TbBancos.FieldByName('NOME').AsString +' ?',
          mtConfirmation, [MbYes, MbNo], 0)= IDYES) then begin
    TbBancos.Delete;
    Dados.ConfirmaTrans(true);
  end;
end;

procedure TFBanco.BitBtnGravarClick(Sender: TObject);
begin
  if TbBancosNOME.IsNull then begin
    MessageDlg('Especifique um nome para o banco!', mtWarning, [mbOk], 0);
    DBEdit3.SetFocus;
  end else if TbBancosCODCIDADE.IsNull then begin
    MessageDlg('Especifique uma cidade para o banco!', mtWarning, [mbOk], 0);
    DBLookupComboBox1.SetFocus;
  end else
  try
    TbBancos.Post;
    Dados.ConfirmaTrans(True);
    MessageDlg(TbBancosNOME.Value +' editado com sucesso!', mtInformation, [MbOk], 0);
  except
    TbBancos.Cancel;
    Dados.ConfirmaTrans(False);
    MessageDlg('Erro ao editar '+ TbBancosNOME.Value +'!', mtError, [MbOk], 0);
  end;
end;

procedure TFBanco.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFCidades, FCidades);
  FCidades.TbCidades.Locate('CODCIDADE', TbBancosCODCIDADE.Value, []);
  FCidades.ShowModal;
  FCidades := nil;
  Dados.ConfirmaTransLK(True, 21);
  DataChange;
end;

procedure TFBanco.FormCreate(Sender: TObject);
procedure VerificarCity;
begin
  if not VerificarPermissao('CIDADES', 'CONS', 0) then begin
    SpeedButton1.Enabled := False;
    Cidades1.Enabled := False;
  end;
end;
begin
  if VerificarPermissao('BANCOS', 'CONS', 1) then begin
    VerificarCity;
    TbBancos.Open;
  end;
end;

procedure TFBanco.DBEdit3Exit(Sender: TObject);
begin
  if (TbBancosFANTASIA.Value = '') and (TbBancosNOME.Value <> '') then
    TbBancosFANTASIA.Value := TbBancosNOME.Value;
end;

procedure TFBanco.RadioButton1Click(Sender: TObject);
const
  SQL = 'SELECT * FROM BANCOS ';
begin
  TbBancos.Close;
  if sender = RadioButton1 then
    TbBancos.SelectSQL.Text := SQL + 'ORDER BY CODBANCO'
  else
    TbBancos.SelectSQL.Text := SQL + 'ORDER BY NOME';
  TbBancos.Open;
  Edit1.Clear;
end;

procedure TFBanco.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    exit;
  if RadioButton1.Checked then
    try
      TbBancos.Locate('CODBANCO', StrToInt (Edit1.Text), []);
    except
      MessageDlg('Digite somente números para busca!', mtError, [MbOK], 0);
    end
  else
    TbBancos.Locate('NOME', Edit1.Text, [loPartialKey, loCaseInsensitive])
end;

procedure TFBanco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (TbBancos.State in [dsbrowse]) then
    BitBtnNovoClick (nil)
  else if (Key = VK_DELETE) and (TbBancos.State in [dsbrowse]) then
    BitBtnExcluirClick (nil)
  else if ((Key = 36) or (Key = 144)) and (TbBancos.State in [dsbrowse]) then
    TbBancos.First
  else if (Key = 35) and (TbBancos.State in [dsbrowse]) then
    TbBancos.Last
  else if Key = vk_F1 then
    AbreAjuda;
end;

procedure TFBanco.SBBuscaClick(Sender: TObject);
begin
  Application.CreateForm(TFLocBanco, FLocBanco);
  FLocBanco.ShowModal;
  FLocBanco := nil;
end;

procedure TFBanco.Bancos1Click(Sender: TObject);
begin
  if VerificarPermissao('BANCOS', 'REL', 1) then begin
    Application.CreateForm(TFRelBanco, FRelBanco);
    FRelBanco.ShowModal;
    FRelBanco := nil;
  end;
end;

procedure TFBanco.DSBancosDataChange(Sender: TObject; Field: TField);
begin
  DataChange;
end;

procedure TFBanco.Cidades1Click(Sender: TObject);
begin
  SpeedButton1Click(nil);
end;

procedure TFBanco.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryCidadesLK.FetchAll;
end;

end.
