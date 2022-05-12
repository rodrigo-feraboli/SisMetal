unit ULocCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls;

type
  TFLocCompras = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitCancelar: TBitBtn;
    BitBuscar: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    DSBuscaVen: TDataSource;
    QryBuscaCom: TIBQuery;
    DBLookupComboBox2: TDBLookupComboBox;
    CheckBox2: TCheckBox;
    DBLookupComboBox3: TDBLookupComboBox;
    CheckBox3: TCheckBox;
    DBLookupComboBox4: TDBLookupComboBox;
    CheckBox4: TCheckBox;
    GroupBox1: TGroupBox;
    CheckBox5: TCheckBox;
    DTPIni: TDateTimePicker;
    CheckBox6: TCheckBox;
    DTPFin: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    QryBuscaComNROCOMPRA: TIntegerField;
    QryBuscaComNOMEFORN: TIBStringField;
    QryBuscaComNOMEPGTO: TIBStringField;
    QryBuscaComDATACOMPRA: TDateField;
    QryBuscaComTIPONOTA: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBuscarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocCompras: TFLocCompras;

implementation

uses UDados, UCompras;

{$R *.dfm}

procedure TFLocCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFLocCompras.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryFornecedoresLK.FetchAll;
end;

procedure TFLocCompras.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryCFOPLK.FetchAll;
end;

procedure TFLocCompras.DBLookupComboBox3Enter(Sender: TObject);
begin
  Dados.QryTransportadorasLK.FetchAll;
end;

procedure TFLocCompras.DBLookupComboBox4Enter(Sender: TObject);
begin
  Dados.QryCondPgtoLK.FetchAll;
end;

procedure TFLocCompras.FormCreate(Sender: TObject);
begin
  DTPIni.Date := Date - 30;
  DTPFin.Date := Date;
  CheckBox5.Checked := true;
  CheckBox6.Checked := true;
  ShowModal;
end;

procedure TFLocCompras.BitBtn1Click(Sender: TObject);
begin
  QryBuscaCom.Close;
  QryBuscaCom.UnPrepare;
  QryBuscaCom.SQL.Text := 'select C.nrocompra, cg.nome as NomeForn, cp.nome as NomePgto, c.datacompra, '+
    ' C.tiponota from Compras C '+
    ' inner join cadgen cg on cg.codcadgen = c.codforngen '+
    ' inner join condpgto cp on cp.codcondpgto = c.codcondpgto '+
    ' where c.nrocompra is not null ';
  case RadioGroup1.ItemIndex of
    1: begin
        QryBuscaCom.SQL.Add(' and c.TipoNota = :plTipoN ');
        QryBuscaCom.ParamByName('plTipoN').AsString := 'E';
       end ;
    2: begin
        QryBuscaCom.SQL.Add(' and c.TipoNota = :plTipoN ');
        QryBuscaCom.ParamByName('plTipoN').AsString := 'S';
       end;
  end;
  if (CheckBox1.Checked) and (DBLookupComboBox1.Text <> '') then begin
    QryBuscaCom.SQL.Add(' and cg.codcadgen = :plCodCli ');
    QryBuscaCom.ParamByName('plCodCli').AsString := DBLookupComboBox1.KeyValue;
  end;
  if (CheckBox2.Checked) and (DBLookupComboBox2.Text <> '') then begin
    QryBuscaCom.SQL.Add(' and c.CodCfop = :plCFOP ');
    QryBuscaCom.ParamByName('plCFOP').AsString := DBLookupComboBox2.KeyValue;
  end;
  if (CheckBox3.Checked) and (DBLookupComboBox3.Text <> '') then begin
    QryBuscaCom.SQL.Add(' and c.CodTransp = :plCodT ');
    QryBuscaCom.ParamByName('plCodT').AsString := DBLookupComboBox3.KeyValue;
  end;
  if (CheckBox4.Checked) and (DBLookupComboBox4.Text <> '') then begin
    QryBuscaCom.SQL.Add(' and c.CodCondPgto = :plCondP ');
    QryBuscaCom.ParamByName('plCondP').AsString := DBLookupComboBox4.KeyValue;
  end;
  if (CheckBox5.Checked) then begin
    QryBuscaCom.SQL.Add(' and c.datacompra >= :plDtIni ');
    QryBuscaCom.ParamByName('plDtIni').AsDate := DTPIni.Date;
  end;
  if (CheckBox6.Checked) then begin
    QryBuscaCom.SQL.Add(' and c.datacompra <= :plDtFin ');
    QryBuscaCom.ParamByName('plDtFin').AsDate := DTPFin.Date;
  end;
  QryBuscaCom.Prepare;
  QryBuscaCom.Open;
end;

procedure TFLocCompras.BitBuscarClick(Sender: TObject);
begin
  FCompras.TbCompras.Locate('NROCOMPRA', QryBuscaComNROCOMPRA.Value, []);
  QryBuscaCom.Close;
  FCompras.PageControl1.ActivePage := FCompras.TabSheet1;
  BitCancelarClick(nil);
end;

procedure TFLocCompras.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLocCompras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
