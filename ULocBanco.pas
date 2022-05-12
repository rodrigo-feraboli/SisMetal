unit ULocBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, DBCtrls;

type
  TFLocBanco = class(TForm)
    QryBuscaBanco: TIBQuery;
    DSBuscaBanco: TDataSource;
    Panel1: TPanel;
    Label29: TLabel;
    RadioGroup1: TRadioGroup;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    BitCancelar: TBitBtn;
    BitBuscar: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    QryBuscaBancoCODBANCO: TIntegerField;
    QryBuscaBancoNOMEBANCO: TIBStringField;
    QryBuscaBancoFANTASIA: TIBStringField;
    QryBuscaBancoNOMECIDADE: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBuscarClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocBanco: TFLocBanco;

implementation

uses UDados, UBanco;

{$R *.dfm}

procedure TFLocBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFLocBanco.Edit2Change(Sender: TObject);
var
  vlInt: Integer;
const
  QrySQL = 'select B.CodBanco, B.nome as NomeBanco, B.fantasia, CI.Nome as NomeCidade '+
    ' from Bancos B '+
    ' inner join Cidades CI on B.CodCidade = CI.CodCidade where B.CodBanco > 0';
function TestaInteiro: boolean;
begin
  if (Edit2.Text <> '') and (RadioGroup1.ItemIndex = 0) then
    try
      vlInt := StrToInt(Edit2.Text);
      Result := true;
    except
      MessageDlg('Digite somente números para busca!', mtError, [MbOK], 0);
      Edit2.Clear;
      Result := false;
    end
end;
procedure SQL;
begin
  if (CheckBox1.Checked) and (DBLookupComboBox1.Text <> '') then
    QryBuscaBanco.SQL.Add ('and B.CodCidade = '+ IntToStr (DBLookupComboBox1.KeyValue));
  if Edit2.Text <> '' then
    case RadioGroup1.ItemIndex of
      0: begin
          QryBuscaBanco.SQL.Add ('and B.CODBANCO containing '+ Edit2.Text);
          QryBuscaBanco.SQL.Add (' order by B.CODFORNEC')
         end;
      1: begin
          QryBuscaBanco.SQL.Add ('and B.Nome containing '''+ Edit2.Text+'''');
          QryBuscaBanco.SQL.Add (' order by B.Nome')
         end;
      2: begin
          QryBuscaBanco.SQL.Add ('and B.Fantasia containing '''+ Edit2.Text+'''');
          QryBuscaBanco.SQL.Add (' order by B.Fantasia')
         end;
    end;
  QryBuscaBanco.Prepare;
  QryBuscaBanco.Open;   
end;
begin
  Dados.QryCidadesLK.FetchAll;
  if ((not CheckBox1.Checked) and (Edit2.Text = '')) or ((CheckBox1.Checked) and (Edit2.Text = '')
      and (DBLookupComboBox1.Text = '')) then begin
    QryBuscaBanco.Close;
    QryBuscaBanco.UnPrepare;
    Exit;
  end;
  QryBuscaBanco.Close;
  if (CheckBox1.Checked) and (Edit2.Text = '') then begin
    QryBuscaBanco.SQL.Text := QrySQL;
    SQL;
  end else if (not CheckBox1.Checked) and (Edit2.Text <> '') then begin
    if not TestaInteiro then
      exit;
    QryBuscaBanco.SQL.Text := QrySQL;
    SQL;
  end else if (CheckBox1.Checked) and (Edit2.Text <> '') then begin
    if not TestaInteiro then
      exit;
    QryBuscaBanco.SQL.Text := QrySQL;
    SQL;
  end;
end;

procedure TFLocBanco.RadioGroup1Click(Sender: TObject);
begin
  Edit2.Clear;
end;

procedure TFLocBanco.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLocBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitCancelarClick(nil);
end;

procedure TFLocBanco.BitBuscarClick(Sender: TObject);
begin
  FBanco.TbBancos.Locate('CODBANCO', QryBuscaBancoCODBANCO.Value, []);
  QryBuscaBanco.Close;
  BitCancelarClick(nil);
end;

procedure TFLocBanco.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    DBLookupComboBox1.Enabled := true;
  end else
    DBLookupComboBox1.Enabled := False;
  Edit2Change(nil);
end;

procedure TFLocBanco.FormCreate(Sender: TObject);
begin
  CheckBox1Click(nil);
end;

procedure TFLocBanco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
