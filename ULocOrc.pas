unit ULocOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, ComCtrls;

type
  TFLocOrc = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitCancelar: TBitBtn;
    BitBuscar: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    DSBuscaOrc: TDataSource;
    QryBuscaOrc: TIBQuery;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    GroupBox1: TGroupBox;
    CheckBox5: TCheckBox;
    DTPIni: TDateTimePicker;
    CheckBox6: TCheckBox;
    DTPFin: TDateTimePicker;
    QryPrazoEntr: TIBQuery;
    QryPrazoEntrPRAZOENTREGA: TIBStringField;
    QryCondPgto: TIBQuery;
    QryCondPgtoCONDPGTO: TIBStringField;
    QryContato: TIBQuery;
    QryContatoCONTATO: TIBStringField;
    CBCond: TComboBox;
    CBCont: TComboBox;
    CBPrazoEnt: TComboBox;
    QryBuscaOrcNOME: TIBStringField;
    QryBuscaOrcDATAORCAMENTO: TDateField;
    QryBuscaOrcCONTATO: TIBStringField;
    QryBuscaOrcCONDPGTO: TIBStringField;
    QryBuscaOrcPRAZOENTREGA: TIBStringField;
    BitBtn1: TBitBtn;
    QryBuscaOrcCODORCAMENTO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure DBLookupComboBox3Enter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBuscarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocOrc: TFLocOrc;

implementation

uses UDados, UOrcamento;

{$R *.dfm}

procedure TFLocOrc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFLocOrc.DBLookupComboBox1Enter(Sender: TObject);
begin
  Dados.QryClientesLK.FetchAll;
end;

procedure TFLocOrc.DBLookupComboBox2Enter(Sender: TObject);
begin
  Dados.QryCFOPLK.FetchAll;
end;

procedure TFLocOrc.DBLookupComboBox3Enter(Sender: TObject);
begin
  Dados.QryTransportadorasLK.FetchAll;
end;

procedure TFLocOrc.DBLookupComboBox4Enter(Sender: TObject);
begin
  Dados.QryCondPgtoLK.FetchAll;
end;

procedure TFLocOrc.FormCreate(Sender: TObject);
begin
  Dados.ConfirmaTrans(True);
  QryCondPgto.Prepare;
  QryContato.Prepare;
  QryPrazoEntr.Prepare;

  QryCondPgto.Open;
  QryContato.Open;
  QryPrazoEntr.Open;

  CBCont.Clear;
  CBCond.Clear;
  CBPrazoEnt.Clear;

  CBCont.Items.Add('');
  CBCond.Items.Add('');
  CBPrazoEnt.Items.Add('');

  while not QryContato.Eof do begin
    CBCont.Items.Add(QryContatoCONTATO.Value);
    QryContato.Next;
  end;
  while not QryCondPgto.Eof do begin
    CBCond.Items.Add(QryCondPgtoCONDPGTO.Value);
    QryCondPgto.Next;
  end;
  while not QryPrazoEntr.Eof do begin
    CBPrazoEnt.Items.Add(QryPrazoEntrPRAZOENTREGA.Value);
    QryPrazoEntr.Next;
  end;

  QryCondPgto.Close;
  QryContato.Close;
  QryPrazoEntr.Close;

  QryCondPgto.UnPrepare;
  QryContato.UnPrepare;
  QryPrazoEntr.UnPrepare;

  DTPIni.Date := Date - 30;
  DTPFin.Date := Date;
  CheckBox5.Checked := true;
  CheckBox6.Checked := true;

  Dados.ConfirmaTransLK(True, 4);
  ShowModal;
end;

procedure TFLocOrc.BitBuscarClick(Sender: TObject);
begin
  FOrcamento.TbOrcamento.Locate('CODORCAMENTO', QryBuscaOrcCODORCAMENTO.Value, []);
  QryBuscaOrc.Close;
  FOrcamento.PageControl1.ActivePage := FOrcamento.TabSheet1;
  BitCancelarClick(nil);
end;

procedure TFLocOrc.BitBtn1Click(Sender: TObject);
begin
  QryBuscaOrc.Close;
  QryBuscaOrc.UnPrepare;
  QryBuscaOrc.SQL.Text := 'select o.CodOrcamento, cg.nome, o.dataorcamento, o.contato, o.condpgto, '+
    'o.prazoentrega from orcamentos O inner join cadgen cg on cg.codcadgen = o.codcligen '+
    'where o.CodOrcamento is not null';
  if (CheckBox1.Checked) and (DBLookupComboBox1.Text <> '') then begin
    QryBuscaOrc.SQL.Add(' and o.codcligen = :plCodCli ');
    QryBuscaOrc.ParamByName('plCodCli').AsString := DBLookupComboBox1.KeyValue;
  end;
  if (CheckBox2.Checked) and (CBCont.Text <> '') then begin
    QryBuscaOrc.SQL.Add(' and o.contato = :plCont ');
    QryBuscaOrc.ParamByName('plCont').AsString := CBCont.Text;
  end;
  if (CheckBox4.Checked) and (CBCond.Text <> '') then begin
    QryBuscaOrc.SQL.Add(' and o.condpgto = :plCond ');
    QryBuscaOrc.ParamByName('plCond').AsString := CBCond.Text;
  end;
  if (CheckBox3.Checked) and (CBPrazoEnt.Text <> '') then begin
    QryBuscaOrc.SQL.Add(' and o.prazoentrega = :plPrazo ');
    QryBuscaOrc.ParamByName('plPrazo').AsString := CBPrazoEnt.Text;
  end;
  if (CheckBox5.Checked) then begin
    QryBuscaOrc.SQL.Add(' and o.dataorcamento >= :plDtIni ');
    QryBuscaOrc.ParamByName('plDtIni').AsDate := DTPIni.Date;
  end;
  if (CheckBox6.Checked) then begin
    QryBuscaOrc.SQL.Add(' and o.dataorcamento <= :plDtFin ');
    QryBuscaOrc.ParamByName('plDtFin').AsDate := DTPFin.Date;
  end;
  QryBuscaOrc.Prepare;
  QryBuscaOrc.Open;
end;

procedure TFLocOrc.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLocOrc.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_BACK then
    if sender = DBLookupComboBox1 then
      DBLookupComboBox1.KeyValue := 0
    else if sender = CBCond then
      CBCond.ItemIndex := 0
    else if Sender = CBCont then
      CBCont.ItemIndex := 0
    else
      CBPrazoEnt.ItemIndex := 0;
end;

procedure TFLocOrc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
