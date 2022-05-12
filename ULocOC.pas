unit ULocOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls;

type
  TFLocOC = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitCancelar: TBitBtn;
    BitBuscar: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    DSBuscaOrc: TDataSource;
    QryBuscaOC: TIBQuery;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox1: TGroupBox;
    CheckBox5: TCheckBox;
    DTPIni: TDateTimePicker;
    CheckBox6: TCheckBox;
    DTPFin: TDateTimePicker;
    QryPrazoEntr: TIBQuery;
    QryPrazoEntrPRAZOENTREGA: TIBStringField;
    QryContato: TIBQuery;
    QryContatoCONTATO: TIBStringField;
    CBCont: TComboBox;
    CBPrazoEnt: TComboBox;
    BitBtn1: TBitBtn;
    QryBuscaOCCODORDEMCOMPRA: TIntegerField;
    QryBuscaOCNOME: TIBStringField;
    QryBuscaOCDATAORDEMCOMPRA: TDateField;
    QryBuscaOCCONTATO: TIBStringField;
    QryBuscaOCPRAZOENTREGA: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBuscarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocOC: TFLocOC;

implementation

uses UDados, UOrdemCompra;

{$R *.dfm}

procedure TFLocOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFLocOC.FormCreate(Sender: TObject);
begin
  QryContato.Prepare;
  QryPrazoEntr.Prepare;

  QryContato.Open;
  QryPrazoEntr.Open;

  CBCont.Clear;
  CBPrazoEnt.Clear;

  CBCont.Items.Add('');
  CBPrazoEnt.Items.Add('');

  while not QryContato.Eof do begin
    CBCont.Items.Add(QryContatoCONTATO.Value);
    QryContato.Next;
  end;
  while not QryPrazoEntr.Eof do begin
    CBPrazoEnt.Items.Add(QryPrazoEntrPRAZOENTREGA.Value);
    QryPrazoEntr.Next;
  end;

  Dados.ConfirmaTransLK(True, 6);
  QryContato.Close;
  QryPrazoEntr.Close;

  QryContato.UnPrepare;
  QryPrazoEntr.UnPrepare;

  DTPIni.Date := Date - 30;
  DTPFin.Date := Date;
  CheckBox5.Checked := true;
  CheckBox6.Checked := true;
  ShowModal;
end;

procedure TFLocOC.BitBuscarClick(Sender: TObject);
begin
  FOrdemCompra.TbOC.Locate('CODORDEMCOMPRA', QryBuscaOCCONTATO.Value, []);
  QryBuscaOC.Close;
  BitCancelarClick(nil);
end;

procedure TFLocOC.BitBtn1Click(Sender: TObject);
begin
  QryBuscaOC.Close;
  QryBuscaOC.UnPrepare;
  QryBuscaOC.SQL.Text := 'select oc.codordemcompra, cg.nome, oc.dataordemcompra, oc.contato, '+
    'oc.prazoentrega from ordemcompra OC '+
    'inner join cadgen cg on cg.codcadgen = oc.codforngen '+
    'where oc.codordemcompra is not null ';
  if (CheckBox1.Checked) and (DBLookupComboBox1.Text <> '') then begin
    QryBuscaOC.SQL.Add(' and oc.codforngen = :plCodForn ');
    QryBuscaOC.ParamByName('plCodForn').AsString := DBLookupComboBox1.KeyValue;
  end;
  if (CheckBox2.Checked) and (CBCont.Text <> '') then begin
    QryBuscaOC.SQL.Add(' and oc.contato = :plCont ');
    QryBuscaOC.ParamByName('plCont').AsString := CBCont.Text;
  end;
  if (CheckBox3.Checked) and (CBPrazoEnt.Text <> '') then begin
    QryBuscaOC.SQL.Add(' and oc.prazoentrega = :plPrazo ');
    QryBuscaOC.ParamByName('plPrazo').AsString := CBPrazoEnt.Text;
  end;
  if (CheckBox5.Checked) then begin
    QryBuscaOC.SQL.Add(' and oc.dataordemcompra >= :plDtIni ');
    QryBuscaOC.ParamByName('plDtIni').AsDate := DTPIni.Date;
  end;
  if (CheckBox6.Checked) then begin
    QryBuscaOC.SQL.Add(' and oc.dataordemcompra <= :plDtFin ');
    QryBuscaOC.ParamByName('plDtFin').AsDate := DTPFin.Date;
  end;
  QryBuscaOC.Prepare;
  QryBuscaOC.Open;
end;

procedure TFLocOC.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_BACK then
    if sender = DBLookupComboBox1 then
      DBLookupComboBox1.KeyValue := 0
    else if Sender = CBCont then
      CBCont.ItemIndex := 0
    else
      CBPrazoEnt.ItemIndex := 0;
end;

procedure TFLocOC.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryFornecedoresLK.FetchAll;
end;

procedure TFLocOC.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLocOC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
