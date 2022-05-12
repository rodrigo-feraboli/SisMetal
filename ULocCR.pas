unit ULocCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls,
  DB, IBCustomDataSet, IBQuery;

type
  TFLocCR = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitCancelar: TBitBtn;
    BitBuscar: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    GroupBox1: TGroupBox;
    CheckBox5: TCheckBox;
    DTPIni: TDateTimePicker;
    CheckBox6: TCheckBox;
    DTPFin: TDateTimePicker;
    BitBtn1: TBitBtn;
    QryBuscaCR: TIBQuery;
    DSBuscaCR: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    QryBuscaCRNROCRECEBER: TIntegerField;
    QryBuscaCRDATA: TDateField;
    QryBuscaCRNROVENDA: TIntegerField;
    QryBuscaCRNOMECLIENTE: TIBStringField;
    QryBuscaCRNOMEBANCO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure BitBuscarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocCR: TFLocCR;

implementation

uses UDados, UCReceber;

{$R *.dfm}

procedure TFLocCR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFLocCR.FormCreate(Sender: TObject);
begin
  Dados.ConfirmaTransLK(True, 28);
  Show;
end;

procedure TFLocCR.BitBtn1Click(Sender: TObject);
begin
  QryBuscaCR.Close;
  QryBuscaCR.UnPrepare;
  QryBuscaCR.SQL.Text := 'SELECT CR.nrocreceber, cr.data, cr.nrovenda, cg.nome as NomeCliente, '+
    'b.nome as NomeBanco FROM creceber CR '+
    'INNER JOIN Vendas v on cr.nrovenda = v.nrovenda '+
    'inner join CadGen cg on v.codcligen = cg.codcadgen '+
    'inner join bancos b on b.codbanco = cr.codbanco '+
    'where CR.nrocreceber is not null';
  if (CheckBox1.Checked) and (DBLookupComboBox1.Text <> '') then begin
    QryBuscaCR.SQL.Add(' and cg.Codcadgen = :plCodCli ');
    QryBuscaCR.ParamByName('plCodCli').AsString := DBLookupComboBox1.KeyValue;
  end;
  if (CheckBox2.Checked) and (DBLookupComboBox2.Text <> '') then begin
    QryBuscaCR.SQL.Add(' and b.codbanco = :plBanco ');
    QryBuscaCR.ParamByName('plBanco').AsString := DBLookupComboBox2.KeyValue;
  end;
  if (CheckBox5.Checked) then begin
    QryBuscaCR.SQL.Add(' and cr.data >= :plDtIni ');
    QryBuscaCR.ParamByName('plDtIni').AsDate := DTPIni.Date;
  end;
  if (CheckBox6.Checked) then begin
    QryBuscaCR.SQL.Add(' and cr.data <= :plDtFin ');
    QryBuscaCR.ParamByName('plDtFin').AsDate := DTPFin.Date;
  end;
  QryBuscaCR.Prepare;
  QryBuscaCR.Open;
end;

procedure TFLocCR.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLocCR.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_BACK then
    if sender = DBLookupComboBox1 then
      DBLookupComboBox1.KeyValue := 0
    else
      DBLookupComboBox2.KeyValue := 0
end;

procedure TFLocCR.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryBancosLK.FetchAll;
end;

procedure TFLocCR.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryClientesLK.FetchAll;
end;

procedure TFLocCR.BitBuscarClick(Sender: TObject);
begin
  FCReceber.TbCR.Locate('NROCRECEBER', QryBuscaCRNROCRECEBER.Value, []);
  QryBuscaCR.Close;
  BitCancelarClick(nil);
end;

procedure TFLocCR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
