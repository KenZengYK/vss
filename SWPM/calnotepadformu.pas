unit calnotepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls;

type
  Tfrmcalnotepad = class(TForm)
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcalnotepad: Tfrmcalnotepad;

implementation

uses mainformu, currcalformu, calendarformu;

{$R *.dfm}

procedure Tfrmcalnotepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcalnotepad:=nil;
end;

procedure Tfrmcalnotepad.BitBtn1Click(Sender: TObject);
begin
  if (dbmemo1.DataSource=frmcurrcal.DataSource1) then
    frmcurrcal.BitBtn2click(self)
  else frmcalendar.BitBtn2click(self);
end;

end.
 