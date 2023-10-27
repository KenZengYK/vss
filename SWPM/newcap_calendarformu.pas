unit newcap_calendarformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmnewcap_calendar = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_calendar: Tfrmnewcap_calendar;

implementation

uses ftycalendarformu, calendarformu, prjcalformu, currcalformu;

{$R *.dfm}

procedure Tfrmnewcap_calendar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_calendar:=nil;
end;

procedure Tfrmnewcap_calendar.Button1Click(Sender: TObject);
begin
  if frmftycalendar=nil then frmftycalendar:=tfrmftycalendar.create(nil);
  //frmftycalendar.BringToFront;
  frmftycalendar.formstyle:=fsnormal;
  frmftycalendar.position:=poMainFormCenter;
  {
  frmftycalendar.Left:=0;
  frmftycalendar.top:=0;
  frmftycalendar.Width:=666;
  frmftycalendar.Height:=483;
  }
  frmftycalendar.windowstate:=wsnormal;
  frmftycalendar.show;
  if pos('test',application.ExeName)>0 then frmftycalendar.Caption:=frmftycalendar.Caption+' - Test';
end;

procedure Tfrmnewcap_calendar.Button2Click(Sender: TObject);
begin
  if frmcalendar=nil then frmcalendar:=tfrmcalendar.create(nil);
  frmcalendar.formstyle:=fsNormal;
  //frmcalendar.BringToFront;
  frmcalendar.WindowState:=wsMaximized;
  frmcalendar.show;
  if pos('test',application.ExeName)>0 then frmcalendar.Caption:=frmcalendar.Caption+' - Test';
end;

procedure Tfrmnewcap_calendar.Button3Click(Sender: TObject);
begin
  if frmprjcal=nil then frmprjcal:=tfrmprjcal.create(nil);
  frmprjcal.formstyle:=fsNormal;
  //frmprjcal.BringToFront;
  frmprjcal.WindowState:=wsMaximized;
  frmprjcal.show;
  if pos('test',application.ExeName)>0 then frmprjcal.Caption:=frmprjcal.Caption+' - Test';
end;

procedure Tfrmnewcap_calendar.Button4Click(Sender: TObject);
begin
  if frmcurrcal=nil then frmcurrcal:=tfrmcurrcal.create(nil);
  frmcurrcal.formstyle:=fsNormal;
  //frmcurrcal.BringToFront;
  frmcurrcal.windowstate:=wsmaximized;
  frmcurrcal.show;
  if pos('test',application.ExeName)>0 then frmcurrcal.Caption:=frmcurrcal.Caption+' - Test';
end;

procedure Tfrmnewcap_calendar.Button5Click(Sender: TObject);
begin
  close;
end;

end.
