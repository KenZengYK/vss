unit newcap_cpsettingsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmnewcap_cpsettings = class(TForm)
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn1: TBitBtn;
    ClientDataSet2: TClientDataSet;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_cpsettings: Tfrmnewcap_cpsettings;

implementation

uses mainformu, newcap_ref1formu, newcap_calendarformu, custformu,
  lineinfou, newcap_wfformu, newcap_custt3dayformu, newcap_ftyelementsformu,
  newcap_hdlformu;

{$R *.dfm}

procedure Tfrmnewcap_cpsettings.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_cpsettings:=nil;
end;

procedure Tfrmnewcap_cpsettings.BitBtn1Click(Sender: TObject);
begin
  if frmnewcap_ftyelements=nil then frmnewcap_ftyelements:=tfrmnewcap_ftyelements.create(nil);
  frmnewcap_ftyelements.show;
end;

procedure Tfrmnewcap_cpsettings.BitBtn16Click(Sender: TObject);
var
  rcap:boolean;
begin
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select rcap from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    if not fieldbyname('rcap').isnull then rcap:=fieldbyname('rcap').value else rcap:=false;
  end;
  if frmnewcap_ref1=nil then frmnewcap_ref1:=tfrmnewcap_ref1.create(nil);
  frmnewcap_ref1.ComboBox1.text:='SL';
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select stdt,m1 from tbl_cap_date where sel=1 and tplant=''SL''';
    open;
    if not fieldbyname('stdt').isnull then begin
      frmnewcap_ref1.DateEdit1.date:=fieldbyname('stdt').value;
      if fieldbyname('m1').value=12 then frmnewcap_ref1.xh1.Checked:=true
      else if fieldbyname('m1').value=9 then frmnewcap_ref1.xh2.Checked:=true
      else if fieldbyname('m1').value=6 then frmnewcap_ref1.xh3.Checked:=true
      else if fieldbyname('m1').value=3 then frmnewcap_ref1.xh4.Checked:=true
      else if fieldbyname('m1').value=1 then frmnewcap_ref1.xh5.Checked:=true;
    end;
  end;
  frmnewcap_ref1.show;
  if rcap then frmnewcap_ref1.bitbtn1.Enabled:=true
  else frmnewcap_ref1.BitBtn1.enabled:=false;
end;

procedure Tfrmnewcap_cpsettings.BitBtn18Click(Sender: TObject);
begin
  if frmnewcap_calendar=nil then frmnewcap_calendar:=tfrmnewcap_calendar.create(nil);
  frmnewcap_calendar.show;
end;

procedure Tfrmnewcap_cpsettings.BitBtn19Click(Sender: TObject);
begin
  if frmcustomer=nil then frmcustomer:=tfrmcustomer.Create(nil);
  frmcustomer.formstyle:=fsNormal;
  with frmcustomer.query1 do begin
    close;
    params.clear;
    commandtext:='select * from cust_sku order by cust,ptyp,lst2,pcol,fits,sizs';
    open;
  end;
  with frmcustomer.query2 do begin
    close;
    params.clear;
    commandtext:='select * from cust_exfty';
    open;
  end;
  //frmcustomer.BringToFront;
  frmcustomer.PageControl1.ActivePageIndex:=0;
  frmcustomer.WindowState:=wsMaximized;
  frmcustomer.show;
  if pos('test',application.ExeName)>0 then frmcustomer.Caption:=frmcustomer.Caption+' - Test';
end;

procedure Tfrmnewcap_cpsettings.BitBtn17Click(Sender: TObject);
begin
  if frmlineinfo=nil then frmlineinfo:=tfrmlineinfo.create(nil);
  frmlineinfo.formstyle:=fsNormal;
  frmlineinfo.WindowState:=wsMaximized;
  frmlineinfo.show;
  if pos('test',application.ExeName)>0 then frmlineinfo.Caption:=frmlineinfo.Caption+' - Test';
end;

procedure Tfrmnewcap_cpsettings.BitBtn20Click(Sender: TObject);
begin
  if frmnewcap_wf=nil then frmnewcap_wf:=tfrmnewcap_wf.create(nil);
  frmnewcap_wf.Caption:=bitbtn20.Caption;
  frmnewcap_wf.label4.Caption:='LINE';
  with frmnewcap_wf.dbgrideh1 do begin
    columns[2].visible:=true;
    columns[6].Visible:=true;
    columns[12].visible:=true;
    columns[13].Visible:=true;
    columns[3].ReadOnly:=true;
    columns[2].Title.Caption:='On-line WF|LB3';
    columns[3].Title.Caption:='On-line WF|LB6';
    columns[6].Title.Caption:='% Diff|LB6 vs LB3';
    columns[7].Title.Caption:='% Diff|On-duty vs LB6';
  end;
  frmnewcap_wf.BitBtn2.enabled:=true;
  frmnewcap_wf.show;
end;

procedure Tfrmnewcap_cpsettings.BitBtn2Click(Sender: TObject);
begin
  if frmnewcap_custt3day=nil then frmnewcap_custt3day:=tfrmnewcap_custt3day.Create(nil);
  frmnewcap_custt3day.ComboBox1.text:='CHINA';
  frmnewcap_custt3day.show;
end;

procedure Tfrmnewcap_cpsettings.BitBtn3Click(Sender: TObject);
begin
  if frmnewcap_wf=nil then frmnewcap_wf:=tfrmnewcap_wf.create(nil);
  frmnewcap_wf.Caption:=bitbtn3.Caption;
  frmnewcap_wf.label4.Caption:='CORE-TECH';
  with frmnewcap_wf.dbgrideh1 do begin
    columns[2].visible:=false;
    columns[6].Visible:=false;
    columns[12].visible:=false;
    columns[13].Visible:=false;
    columns[3].ReadOnly:=false;
    columns[2].Title.Caption:='On-line WF1|LB3';
    columns[3].Title.Caption:='On-line WF';
    //columns[6].Title.Caption:='% Diff|LB6 vs LB3';
    columns[7].Title.Caption:='% Diff|On-duty vs On-line';
  end;
  frmnewcap_wf.BitBtn2.enabled:=false;
  frmnewcap_wf.show;
end;

procedure Tfrmnewcap_cpsettings.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnewcap_cpsettings.BitBtn7Click(Sender: TObject);
begin
  if frmnewcap_wf=nil then frmnewcap_wf:=tfrmnewcap_wf.create(nil);
  frmnewcap_wf.Caption:=bitbtn7.Caption;//bitbtn20.Caption;
  frmnewcap_wf.label4.Caption:='LINE';
  with frmnewcap_wf.dbgrideh1 do begin
    columns[2].visible:=true;
    columns[8].Visible:=true;
    columns[14].visible:=true;
    columns[15].Visible:=true;
    columns[3].ReadOnly:=true;
    columns[2].Title.Caption:='On-line WF (Captured from LWPM)|LB3';
    columns[3].Title.Caption:='On-line WF (Captured from LWPM)|LB6';
    columns[8].Title.Caption:='% Diff|LB6 vs LB3';
    columns[9].Title.Caption:='% Diff|On-duty vs LB6';
  end;
  frmnewcap_wf.BitBtn2.enabled:=true;
  frmnewcap_wf.show;
  //if frmnewcap_hdl=nil then frmnewcap_hdl:=tfrmnewcap_hdl.create(nil);
  //frmnewcap_hdl.show;
end;

end.
