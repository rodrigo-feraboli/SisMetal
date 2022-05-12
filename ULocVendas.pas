unit ULocVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls;

type
  TFLocVendas = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitCancelar: TBitBtn;
    BitBuscar: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    DSBuscaVen: TDataSource;
    QryBuscaVen: TIBQuery;
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
    QryBuscaVenNOMECLI: TIBStringField;
    QryBuscaVenNOMEPGTO: TIBStringField;
    QryBuscaVenDATAVENDA: TDateField;
    QryBuscaVenTIPONOTA: TIBStringField;
    BitBtn1: TBitBtn;
    QryBuscaVenNROVENDA: TIntegerField;
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
  FLocVendas: TFLocVendas;

implementation

uses UDados, UVendas;

{$R *.dfm}

procedure TFLocVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFLocVendas.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryClientesLK.FetchAll;
end;

procedure TFLocVendas.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryCFOPLK.FetchAll;
end;

procedure TFLocVendas.DBLookupComboBox3Enter(Sender: TObject);
begin
  Dados.QryTransportadorasLK.FetchAll;
end;

procedure TFLocVendas.DBLookupComboBox4Enter(Sender: TObject);
begin
  Dados.QryCondPgtoLK.FetchAll;
end;

procedure TFLocVendas.FormCreate(Sender: TObject);
begin
  DTPIni.Date := Date - 30;
  DTPFin.Date := Date;
  CheckBox5.Checked := true;
  CheckBox6.Checked := true;
  ShowModal;
end;

procedure TFLocVendas.BitBtn1Click(Sender: TObject);
begin
  QryBuscaVen.Close;
  QryBuscaVen.UnPrepare;
  QryBuscaVen.SQL.Text := 'select v.NroVenda, cg.nome as NomeCli, cp.nome as NomePgto, v.datavenda, '+
    ' v.tiponota from Vendas V '+
    ' inner join cadgen cg on cg.codcadgen = V.codcligen '+
    ' inner join condpgto cp on cp.codcondpgto = v.codcondpgto '+
    ' where v.nrovenda is not null';
  case RadioGroup1.ItemIndex of
    1: begin
        QryBuscaVen.SQL.Add(' and v.TipoNota = :plTipoN ');
        QryBuscaVen.ParamByName('plTipoN').AsString := 'E';
       end ;
    2: begin
        QryBuscaVen.SQL.Add(' and v.TipoNota = :plTipoN ');
        QryBuscaVen.ParamByName('plTipoN').AsString := 'S';
       end;
  end;
  if (CheckBox1.Checked) and (DBLookupComboBox1.Text <> '') then begin
    QryBuscaVen.SQL.Add(' and cg.codcadgen = :plCodCli ');
    QryBuscaVen.ParamByName('plCodCli').AsString := DBLookupComboBox1.KeyValue;
  end;
  if (CheckBox2.Checked) and (DBLookupComboBox2.Text <> '') then begin
    QryBuscaVen.SQL.Add(' and v.CodCfop = :plCFOP ');
    QryBuscaVen.ParamByName('plCFOP').AsString := DBLookupComboBox2.KeyValue;
  end;
  if (CheckBox3.Checked) and (DBLookupComboBox3.Text <> '') then begin
    QryBuscaVen.SQL.Add(' and v.CodTransp = :plCodT ');
    QryBuscaVen.ParamByName('plCodT').AsString := DBLookupComboBox3.KeyValue;
  end;
  if (CheckBox4.Checked) and (DBLookupComboBox4.Text <> '') then begin
    QryBuscaVen.SQL.Add(' and v.CodCondPgto = :plCondP ');
    QryBuscaVen.ParamByName('plCondP').AsString := DBLookupComboBox4.KeyValue;
  end;
  if (CheckBox5.Checked) then begin
    QryBuscaVen.SQL.Add(' and v.datavenda >= :plDtIni ');
    QryBuscaVen.ParamByName('plDtIni').AsDate := DTPIni.Date;
  end;
  if (CheckBox6.Checked) then begin
    QryBuscaVen.SQL.Add(' and v.datavenda <= :plDtFin ');
    QryBuscaVen.ParamByName('plDtFin').AsDate := DTPFin.Date;
  end;
  QryBuscaVen.Prepare;
  QryBuscaVen.Open;
end;

procedure TFLocVendas.BitBuscarClick(Sender: TObject);
begin                       
  FVendas.TbVendas.Locate('NROVENDA', QryBuscaVenNROVENDA.Value, []);
  QryBuscaVen.Close;
  FVendas.PageControl1.ActivePage := FVendas.TabSheet1;
  BitCancelarClick(nil);
end;

procedure TFLocVendas.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLocVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
