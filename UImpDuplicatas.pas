unit UImpDuplicatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TFImpDuplicatas = class(TForm)
    QuickRep1: TQuickRep;
    QRDBTLocalPgto: TQRDBText;
    QRDBTDtVcto: TQRDBText;
    QRDBTDtDoc: TQRDBText;
    QRDBTNumDoc: TQRDBText;
    QRDBTEspDoc: TQRDBText;
    QRDBTVlrDoc: TQRDBText;
    QRMemo1: TQRMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImpDuplicatas: TFImpDuplicatas;

implementation

{$R *.dfm}

end.
