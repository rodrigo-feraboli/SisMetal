unit ULocCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls,
  DB, IBCustomDataSet, IBQuery;

type
  TFLocCP = class(TForm)
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
    QryBuscaCP: TIBQuery;
    DSBuscaCP: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    QryBuscaCPNROCPAGAR: TIntegerField;
    QryBuscaCPDATA: TDateField;
    QryBuscaCPNROCOMPRA: TIntegerField;
    QryBuscaCPNOMEFORNEC: TIBStringField;
    QryBuscaCPNOMEBANCO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure BitBuscarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocCP: TFLocCP;

implementation

uses UDados, UCPagar;

{$R *.dfm}

procedure TFLocCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFLocCP.FormCreate(Sender: TObject);
begin
  Dados.ConfirmaTransLK(True, 27);
  Show;
end;

procedure TFLocCP.BitBtn1Click(Sender: TObject);
begin
  QryBuscaCP.Close;
  QryBuscaCP.UnPrepare;
  QryBuscaCP.SQL.Text := 'SELECT CP.nrocpagar, cP.data, cp.nrocompra, cg.nome as NomeFornec, '+
    'b.nome as NomeBanco FROM cpagar CP '+
    'INNER JOIN compras C on cp.nrocompra = c.nrocompra '+
    'inner join CadGen CG on cg.codcadgen = c.codforngen '+
    'inner join bancos b on b.codbanco = cp.codbanco '+
    'where CP.nrocpagar is not null';
  if (CheckBox1.Checked) and (DBLookupComboBox1.Text <> '') then begin
    QryBuscaCP.SQL.Add(' and f.CodFornec = :plCodFornec ');
    QryBuscaCP.ParamByName('plCodFornec').AsString := DBLookupComboBox1.KeyValue;
  end;
  if (CheckBox2.Checked) and (DBLookupComboBox2.Text <> '') then begin
    QryBuscaCP.SQL.Add(' and b.codbanco = :plBanco ');
    QryBuscaCP.ParamByName('plBanco').AsString := DBLookupComboBox2.KeyValue;
  end;
  if (CheckBox5.Checked) then begin
    QryBuscaCP.SQL.Add(' and cp.data >= :plDtIni ');
    QryBuscaCP.ParamByName('plDtIni').AsDate := DTPIni.Date;
  end;
  if (CheckBox6.Checked) then begin
    QryBuscaCP.SQL.Add(' and cp.data <= :plDtFin ');
    QryBuscaCP.ParamByName('plDtFin').AsDate := DTPFin.Date;
  end;
  QryBuscaCP.Prepare;
  QryBuscaCP.Open;
end;

procedure TFLocCP.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLocCP.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_BACK then
    if sender = DBLookupComboBox1 then
      DBLookupComboBox1.KeyValue := 0
    else
      DBLookupComboBox2.KeyValue := 0
end;

procedure TFLocCP.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryFornecedoresLK.FetchAll;
end;

procedure TFLocCP.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryBancosLK.FetchAll;
end;

procedure TFLocCP.BitBuscarClick(Sender: TObject);
begin
  FCPagar.TbCP.Locate('NROCPAGAR', QryBuscaCPNROCPAGAR.Value, []);
  QryBuscaCP.Close;
  BitCancelarClick(nil);
end;

procedure TFLocCP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
