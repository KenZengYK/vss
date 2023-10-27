unit lineleaderformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, siComp;

type
  Tfrmlineleader = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox1: TGroupBox;
    BitBtn8: TBitBtn;
    siLang1: TsiLang;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlineleader: Tfrmlineleader;

implementation

uses mainformu, lineinfou, calendarformu, currcalformu, worksheet, achievingformu,
  analysisformu;

{$R *.dfm}

procedure Tfrmlineleader.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmlineleader:=nil;
end;

procedure Tfrmlineleader.BitBtn1Click(Sender: TObject);
begin
  if frmlineinfo=nil then frmlineinfo:=tfrmlineinfo.create(application);
  frmlineinfo.bringtofront;
  frmlineinfo.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmlineinfo.Caption:=frmlineinfo.Caption+' - Test';
end;

procedure Tfrmlineleader.BitBtn2Click(Sender: TObject);
begin
  if frmcalendar=nil then frmcalendar:=tfrmcalendar.create(application);
  frmcalendar.BringToFront;
  frmcalendar.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmcalendar.Caption:=frmcalendar.Caption+' - Test';
end;

procedure Tfrmlineleader.BitBtn3Click(Sender: TObject);
begin
  if frmcurrcal=nil then frmcurrcal:=tfrmcurrcal.create(application);
  frmcurrcal.BringToFront;
  frmcurrcal.windowstate:=wsmaximized;
  if pos('test',application.ExeName)>0 then frmcurrcal.Caption:=frmcurrcal.Caption+' - Test';
end;

procedure Tfrmlineleader.BitBtn4Click(Sender: TObject);
begin
  if worksheet1=nil then worksheet1:=tworksheet1.create(application);
  worksheet1.cxView1.Bands[19].Visible:=false;
  worksheet1.speedbutton1.Visible:=true;
  worksheet1.SpeedButton4.Visible:=false;
  worksheet1.bringtofront;
  worksheet1.Caption:='LWPM - Planning and Scheduling';
  worksheet1.WindowState:=wsmaximized;
  if pos('test',application.ExeName)>0 then worksheet1.Caption:=worksheet1.Caption+' - Test';
end;

procedure Tfrmlineleader.BitBtn5Click(Sender: TObject);
begin
  if frmachieving=nil then frmachieving:=tfrmachieving.create(application);
  frmachieving.opt1.ItemIndex:=0;
  frmachieving.bringtofront;
  frmachieving.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmachieving.Caption:=frmachieving.Caption+' - Test';
end;

procedure Tfrmlineleader.BitBtn6Click(Sender: TObject);
begin
  if frmanalysis=nil then frmanalysis:=tfrmanalysis.create(nil);
  frmanalysis.show;
end;

procedure Tfrmlineleader.FormCreate(Sender: TObject);
begin
  //siLang1.LoadAllFromFile(extractfilepath(application.ExeName)+'LWPM_LANGUAGE.sil',false);
  siLang1.Language:=frmmain.ComboBox2.text;
end;

end.
