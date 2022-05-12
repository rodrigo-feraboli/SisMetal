unit UIntegraCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, DB,
  IBCustomDataSet, IBQuery, DateUtils, Buttons;

type
  TFIntegraCont = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    UpDown1: TUpDown;
    QryIntCont: TIBQuery;
    DSIntCont: TDataSource;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIntegraCont: TFIntegraCont;

implementation

uses UDados;

{$R *.dfm}

procedure TFIntegraCont.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFIntegraCont.FormCreate(Sender: TObject);
begin
  if VerificarPermissao('INTEGRAÇÃO CONTÁBIL', 'CONS', 1) then begin
    UpDown1.Position := YearOf(Date);
//    Edit1.Text :=

    case MonthOf(Date) of
      1: ComboBox1.ItemIndex := 0;
      2: ComboBox1.ItemIndex := 1;
      3: ComboBox1.ItemIndex := 2;
      4: ComboBox1.ItemIndex := 3;
      5: ComboBox1.ItemIndex := 4;
      6: ComboBox1.ItemIndex := 5;
      7: ComboBox1.ItemIndex := 6;
      8: ComboBox1.ItemIndex := 7;
      9: ComboBox1.ItemIndex := 8;
      10: ComboBox1.ItemIndex := 9;
      11: ComboBox1.ItemIndex := 10;
      12: ComboBox1.ItemIndex := 11;
    end;
  end;
end;
procedure TFIntegraCont.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TFIntegraCont.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_F1 then
    AbreAjuda;
end;

end.
