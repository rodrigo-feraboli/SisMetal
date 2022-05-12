unit ULocGenerico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, DBCtrls;

type
  TFLocGenerico = class(TForm)
    QryBuscaGen: TIBQuery;
    DSBuscaForn: TDataSource;
    Panel1: TPanel;
    Label29: TLabel;
    RadioGroup1: TRadioGroup;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    BitCancelar: TBitBtn;
    BitBuscar: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    QryBuscaGenCODCADGEN: TIntegerField;
    QryBuscaGenNOMEGEN: TIBStringField;
    QryBuscaGenFANTASIA: TIBStringField;
    QryBuscaGenNOMECIDADE: TIBStringField;
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
  FLocGenerico: TFLocGenerico;

implementation

uses UDados, UGenerico;

{$R *.dfm}

procedure TFLocGenerico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFLocGenerico.Edit2Change(Sender: TObject);
var
  vlInt: Integer;
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
  QryBuscaGen.SQL.Text := 'select CG.codcadgen, CG.nome as NomeGen, CG.fantasia, CI.Nome as NomeCidade '+
    'from CadGen CG '+
    'inner join Cidades CI on CG.CodCidade = CI.CodCidade '+ FGenerico.vpWhere;
  if (CheckBox1.Checked) and (DBLookupComboBox1.Text <> '') then
    QryBuscaGen.SQL.Add ('and CG.CodCidade = '+ IntToStr (DBLookupComboBox1.KeyValue));
  if Edit2.Text <> '' then
    case RadioGroup1.ItemIndex of
      0: begin
          QryBuscaGen.SQL.Add ('and CG.CodCadGenC containing '+ Edit2.Text);
          QryBuscaGen.SQL.Add (' order by CG.CodGenCad')
         end;
      1: begin
          QryBuscaGen.SQL.Add ('and CG.Nome containing '''+ Edit2.Text+'''');
          QryBuscaGen.SQL.Add (' order by CG.Nome')
         end;
      2: begin
          QryBuscaGen.SQL.Add ('and .Fantasia containing '''+ Edit2.Text+'''');
          QryBuscaGen.SQL.Add (' order by CG.Fantasia')
         end;
    end
  else case RadioGroup1.ItemIndex of
      0: QryBuscaGen.SQL.Add (' order by CG.CODCADGEN');
      1: QryBuscaGen.SQL.Add (' order by CG.Nome');
      2: QryBuscaGen.SQL.Add (' order by CG.Fantasia');
    end;
  QryBuscaGen.Prepare;
  QryBuscaGen.Open;
end;
begin
  Dados.QryCidadesLK.FetchAll;
  if ((not CheckBox1.Checked) and (Edit2.Text = '')) or ((CheckBox1.Checked) and (Edit2.Text = '')
      and (DBLookupComboBox1.Text = '')) then begin
    QryBuscaGen.Close;
    QryBuscaGen.UnPrepare;
    Exit;
  end;
  QryBuscaGen.Close;
  if (CheckBox1.Checked) and (Edit2.Text = '') then begin
    SQL;
  end else if (not CheckBox1.Checked) and (Edit2.Text <> '') then begin
    if not TestaInteiro then
      exit;
    SQL;
  end else if (CheckBox1.Checked) and (Edit2.Text <> '') then begin
    if not TestaInteiro then
      exit;
    SQL;
  end;
end;

procedure TFLocGenerico.RadioGroup1Click(Sender: TObject);
begin
  Edit2.Clear;
end;

procedure TFLocGenerico.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLocGenerico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    BitCancelarClick(nil);
end;

procedure TFLocGenerico.BitBuscarClick(Sender: TObject);
begin
  FGenerico.TbGenerico.Locate('CODCADGEN', QryBuscaGenCODCADGEN.Value, []);
  QryBuscaGen.Close;
  FGenerico.PageControl1.ActivePage := FGenerico.TabSheet1;
  BitCancelarClick(nil);
end;

procedure TFLocGenerico.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    DBLookupComboBox1.Enabled := true;
  end else
    DBLookupComboBox1.Enabled := False;
  Edit2Change(nil);
end;

procedure TFLocGenerico.FormCreate(Sender: TObject);
begin
  CheckBox1Click(nil);
end;

procedure TFLocGenerico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
