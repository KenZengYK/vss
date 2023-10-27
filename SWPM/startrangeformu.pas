unit startrangeformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons;

type
  Tfrmstartrange = class(TForm)
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
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
  frmstartrange: Tfrmstartrange;

implementation

uses worksheet, schedule_ganttformu;

{$R *.dfm}

procedure Tfrmstartrange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmstartrange:=nil;
end;

procedure Tfrmstartrange.BitBtn1Click(Sender: TObject);
begin
  if frmschedule_gantt=nil then frmschedule_gantt:=tfrmschedule_gantt.Create(nil);
  frmschedule_gantt.DateEdit1.Date:=dateedit1.date;
  frmschedule_gantt.DateEdit2.Date:=dateedit2.date;
  frmschedule_gantt.Show;
end;

end.
