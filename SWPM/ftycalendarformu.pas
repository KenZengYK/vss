unit ftycalendarformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, Menus, DB,
  DBClient, StdCtrls, Buttons, Grids, DBGridEh, Mask, rxToolEdit, ppViewr,
  GridsEh, ExtCtrls, ppParameter, siComp, ppStrtch, ppMemo;

type
  Tfrmftycalendar = class(TForm)
    week52: TClientDataSet;
    DataSource1: TDataSource;
    Query1: TClientDataSet;
    PopupMenu1: TPopupMenu;
    SetStandardCalendar1: TMenuItem;
    SetStandarCalendar1: TMenuItem;
    ModifyCalendar1: TMenuItem;
    Query2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    xk: TppDBCalc;
    percent1: TppLabel;
    mb: TppLabel;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    titile01: TppLabel;
    title02: TppLabel;
    line01: TppLabel;
    ppLabel14: TppLabel;
    date01: TppLabel;
    ppLabel16: TppLabel;
    date02: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel20: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppShape2: TppShape;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLine5: TppLine;
    titile03: TppLabel;
    ppLabel33: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand2: TppFooterBand;
    ppDBText9: TppDBText;
    DBGridEh1: TDBGridEh;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    S01: TppLabel;
    S02: TppLabel;
    s03: TppLabel;
    ppLabel22: TppLabel;
    s04: TppLabel;
    d001: TppLabel;
    n1001: TppLabel;
    n2001: TppLabel;
    o1001: TppLabel;
    ppLabel26: TppLabel;
    ppDBText17: TppDBText;
    o2001: TppLabel;
    ppLine1: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText18: TppDBText;
    ppLabel31: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel32: TppLabel;
    ppDBText19: TppDBText;
    ppLabel34: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel35: TppLabel;
    s05: TppLabel;
    ChangeCalendardescription1: TMenuItem;
    siLang1: TsiLang;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    option1: TRadioGroup;
    option2: TRadioGroup;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ppLine6: TppLine;
    ppLabel40: TppLabel;
    ppDBText20: TppDBText;
    ppLabel41: TppLabel;
    s06: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel36: TppLabel;
    s07: TppLabel;
    ppLabel37: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    s08: TppLabel;
    ppLabel42: TppLabel;
    ppLine13: TppLine;
    ppDBText21: TppDBText;
    ppDBCalc3: TppDBCalc;
    o3001: TppLabel;
    rm01: TppMemo;
    BitBtn7: TBitBtn;
    procedure week52AfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure week52AfterOpen(DataSet: TDataSet);
    procedure secttchange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure option1Click(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ModifyCalendar1Click(Sender: TObject);
    procedure ChangeCalendardescription1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmftycalendar: Tfrmftycalendar;

implementation

uses mainformu, ftycal_descformu, ftycalendar_rmkformu;

{$R *.dfm}

procedure Tfrmftycalendar.week52AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if week52.ApplyUpdates(-1)>0 then begin
    {
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftdate,'x7',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      commandtext:='update tplant_wk52 set wday=:x1,secto=:x2,sectt=:x3,sectt1=:x4,sectc=:x5,osect=:x8 where tplant=:x6 and date1=:x7 and opt_c=:x9';

      if not week52.fieldbyname('wday').isnull then
      params[0].asstring:=week52.fieldbyname('wday').value
      else params[0].asstring:='-';
      if not week52.fieldbyname('secto').isnull then
      params[1].asinteger:=week52.fieldbyname('secto').value
      else params[1].asinteger:=0;
      if not week52.fieldbyname('sectt').isnull then
      params[2].asinteger:=week52.fieldbyname('sectt').value
      else params[2].asinteger:=0;
      if not week52.fieldbyname('sectt1').isnull then
      params[3].asinteger:=week52.fieldbyname('sectt1').value
      else params[3].asinteger:=0;
      if not week52.fieldbyname('sectc').isnull then
      params[4].asinteger:=week52.fieldbyname('sectc').value
      else params[4].asinteger:=0;
      if not week52.fieldbyname('osect').isnull then
      params[5].asinteger:=week52.fieldbyname('osect').value
      else params[5].asinteger:=0;
      params[6].asstring:=week52.fieldbyname('tplant').value;
      params[7].asdate:=week52.fieldbyname('date1').value;
      if option1.Visible then
      params[8].asinteger:=option1.ItemIndex+1
      else params[8].asinteger:=option2.ItemIndex+1;
      execute;
    end;
    }
  //end;
      str1:='update tplant_wk52 set ';
      if not week52.fieldbyname('wday').isnull then
      str1:=str1+'wday='''+week52.fieldbyname('wday').value+''','
      else str1:=str1+'wday=''-'',';
      if not week52.fieldbyname('wkday').isnull then
      str1:=str1+'wkday='''+week52.fieldbyname('wkday').value+''','
      else str1:=str1+'wkday=''-'',';
      if not week52.fieldbyname('shift_i').isnull then
      str1:=str1+'shift_i='''+week52.fieldbyname('shift_i').value+''','
      else str1:=str1+'shift_i='''',';
      if not week52.fieldbyname('secto').isnull then
      str1:=str1+'secto='+week52.fieldbyname('secto').asstring+','
      else str1:=str1+'secto=0,';
      if not week52.fieldbyname('sectt').isnull then
      str1:=str1+'sectt='+week52.fieldbyname('sectt').asstring+','
      else str1:=str1+'sectt=0,';
      if not week52.fieldbyname('sectt1').isnull then
      str1:=str1+'sectt1='+week52.fieldbyname('sectt1').asstring+','
      else str1:=str1+'sectt1=0,';
      if not week52.fieldbyname('sectc').isnull then
      str1:=str1+'sectc='+week52.fieldbyname('sectc').asstring+','
      else str1:=str1+'sectc=0,';
      if not week52.fieldbyname('osect').isnull then
      str1:=str1+'osect='+week52.fieldbyname('osect').asstring+' '
      else str1:=str1+'osect=0 ';
      str1:=str1+'where tplant='''+week52.fieldbyname('tplant').value+''' ';
      str1:=str1+'and date1='''+formatdatetime('yyyy-MM-dd',week52.fieldbyname('date1').value)+''' ';
      if option1.Visible then
      str1:=str1+'and opt_c='+inttostr(option1.ItemIndex+1)
      else str1:=str1+'and opt_c='+inttostr(option2.ItemIndex+1);
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
end;

procedure Tfrmftycalendar.BitBtn2Click(Sender: TObject);
begin
  if week52.state=dsedit then week52.Post;
end;

procedure Tfrmftycalendar.BitBtn3Click(Sender: TObject);
begin
  if frmftycalendar_rmk=nil then frmftycalendar_rmk:=tfrmftycalendar_rmk.create(nil);
  frmftycalendar_rmk.memo1.lines.clear;
  if not week52.fieldbyname('rmk').isnull then
  frmftycalendar_rmk.memo1.lines.add(week52.fieldbyname('rmk').value);
  frmftycalendar_rmk.show;
end;

procedure Tfrmftycalendar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmftycalendar:=nil;
end;

procedure Tfrmftycalendar.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmftycalendar.BitBtn4Click(Sender: TObject);
begin
  if week52.Active then begin
    if combobox1.text='HK' then begin
      titile01.Caption:='HK Office Calendar - Logistic Purpose (ISO 8601)';
      title02.Caption:='HK Office';
      titile03.Caption:='HK Office';
    end else begin
      titile01.Caption:='Factory Operation Calendar (ISO 8601)';
      title02.Caption:='Fty';
      titile03.Caption:='Fty';
    end;
    line01.Caption:=combobox1.text;
    date01.Caption:=dateedit1.Text;
    date02.Caption:=dateedit2.Text;
    ppReport2.Print;
  end;
end;

procedure Tfrmftycalendar.BitBtn7Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmftycalendar.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmftycalendar.SpeedButton1Click(Sender: TObject);
begin
  with week52 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x0',ptinput);
    if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
    if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from tplant_wk52 where opt_c=:x0';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if dateedit1.date>0 then commandtext:=commandtext+' and date1>=:x1';
    if dateedit2.date>0 then commandtext:=commandtext+' and date1<=:x2';
    if option1.Visible then
    params[0].asinteger:=option1.ItemIndex+1
    else if option2.Visible then
    params[0].asinteger:=option2.ItemIndex+1;
    if dateedit1.Date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
    if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.Date;
    open;
  end;
end;

procedure Tfrmftycalendar.ChangeCalendardescription1Click(Sender: TObject);
begin
  if combobox1.text='' then exit else begin
    if frm_ftycal_desc=nil then frm_ftycal_desc:=tfrm_ftycal_desc.create(nil);
    frm_ftycal_desc.label10.caption:=combobox1.text;
    frm_ftycal_desc.show;
  end;
end;

procedure Tfrmftycalendar.ComboBox1Change(Sender: TObject);
var
  i:integer;
begin
  if combobox1.text='HK' then begin
    label3.Caption:='HK';
    //dbgrideh1.Columns[0].Title.caption:='HK';
    //frmftycalendar.Caption:='HK Office Calendar';
  end else begin
    label3.Caption:='Factory';
    //dbgrideh1.Columns[0].Title.caption:='Factory';
    //frmftycalendar.Caption:='Factory Operation Calendar';
  end;
  if pos('KB',combobox1.text)>0 then begin
    option2.Visible:=true;
    option1.Visible:=false;
  end else begin
    option1.Visible:=true;
    option2.Visible:=false;
  end;
  if combobox1.text>'' then begin
    i:=0;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tplant_wk52_des where tplant='''+combobox1.text+''' order by optc';
      open;
      first;
      while not eof do begin
        i:=i+1;
        option1.Items[i-1]:=fieldbyname('des').Value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  speedbutton1click(self);
end;

procedure Tfrmftycalendar.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if week52.fieldbyname('wday').value='R' then begin
    ppdbtext9.font.color:=clRed;
    ppdbtext9.font.style:=[fsBold];
  end else if week52.fieldbyname('wday').value='H' then begin
    ppdbtext9.font.color:=clRed;
    ppdbtext9.font.style:=[fsBold];
  end else begin
    ppdbtext9.font.color:=clBlack;
    ppdbtext9.font.style:=[];
  end;
end;

procedure Tfrmftycalendar.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  tday,oday,r1,r2:integer;
  tsect:double;
  d1:string;
begin
  s01.Caption:='0 days ';
  s02.Caption:='0 days ';
  s03.Caption:='';
  s04.Caption:='';
  s05.Caption:='';
  s06.Caption:='';
  rm01.caption:='';
  r1:=0; r2:=0;
  d1:='';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.CreateParam(ftinteger,'x4',ptinput);
    params.CreateParam(ftinteger,'x5',ptinput);
    commandtext:='select distinct rmk from tplant_wk52 where tplant=:x1 and date1>=:x2 and date1<=:x3 and opt_c=:x4 and m1=:x5 and rmk>''''';
    params[0].asstring:=combobox1.text;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    params[3].AsInteger:=option1.ItemIndex+1;
    params[4].AsInteger:=week52.fieldbyname('m1').value;//option1.ItemIndex+1;
    open;
    first;
    while not eof do begin
      if d1>'' then d1:=d1+'; '+fieldbyname('rmk').value
      else d1:=fieldbyname('rmk').value;
      application.ProcessMessages;
      next;
    end;
  end;
  //rm01.caption:=d1;
  rm01.lines.clear;
  rm01.lines.add(d1);
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.CreateParam(ftinteger,'x4',ptinput);
    params.CreateParam(ftinteger,'x5',ptinput);
    commandtext:='select count(*) as cnt from tplant_wk52 where tplant=:x1 and date1>=:x2 and date1<=:x3 and opt_c=:x4 and m1=:x5';
    params[0].asstring:=combobox1.text;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    params[3].AsInteger:=option1.ItemIndex+1;
    params[4].AsInteger:=week52.fieldbyname('m1').value;//option1.ItemIndex+1;
    open;
    if not fieldbyname('cnt').isnull then begin
      tday:=fieldbyname('cnt').value;
      s05.Caption:=fieldbyname('cnt').asstring+' days ';
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.CreateParam(ftinteger,'x4',ptinput);
    params.CreateParam(ftinteger,'x5',ptinput);
    commandtext:='select distinct wday,count(*) as cnt,sum(secto) as s1,sum(sectt) as s2,sum(sectt1) as s3,sum(sectc) as s4,sum(osect) as s5 from tplant_wk52 where tplant=:x1 and date1>=:x2 and date1<=:x3 and opt_c=:x4 and m1=:x5 group by wday';
    params[0].asstring:=combobox1.text;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    params[3].AsInteger:=option1.ItemIndex+1;
    params[4].AsInteger:=week52.fieldbyname('m1').value;//option1.ItemIndex+1;
    open;
    first;
    while not eof do begin
      if copy(fieldbyname('wday').value,1,2)='RD' then begin
        s01.Caption:=fieldbyname('cnt').asstring+' days ';//('+formatfloat('0.00%',fieldbyname('cnt').value*100.00/tday)+')';
        r1:=fieldbyname('cnt').value;
      end else if fieldbyname('wday').value='H' then begin
        s02.Caption:=fieldbyname('cnt').asstring+' days ';//('+formatfloat('0.00%',fieldbyname('cnt').value*100.00/tday)+')';
        r2:=fieldbyname('cnt').value;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  s06.Caption:=inttostr(r1+r2)+' days ('+formatfloat('0.00%',(r1+r2)*100.00/tday)+')';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.CreateParam(ftinteger,'x4',ptinput);
    params.CreateParam(ftinteger,'x5',ptinput);
    commandtext:='select count(*) as cnt,sum(secto) as s1,sum(sectt) as s2,sum(sectt1) as s3,sum(sectc) as s4,sum(osect) as s5 from tplant_wk52 where tplant=:x1 and date1>=:x2 and date1<=:x3 and opt_c=:x4 and m1=:x5 and substr(wday,1,2)=''WD''';
    params[0].asstring:=combobox1.text;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    params[3].AsInteger:=option1.ItemIndex+1;
    params[4].AsInteger:=week52.fieldbyname('m1').value;//option1.ItemIndex+1;
    open;
    if not fieldbyname('cnt').isnull then begin
      oday:=fieldbyname('cnt').value;
      tsect:=fieldbyname('s1').value;
      s03.Caption:=fieldbyname('cnt').asstring+' days ('+formatfloat('0.00%',fieldbyname('cnt').value*100.00/tday)+')';
      d001.Caption:=fieldbyname('s1').asstring;
      n1001.Caption:=fieldbyname('s2').asstring;
      n2001.Caption:=fieldbyname('s3').asstring;
      o1001.Caption:=fieldbyname('s4').asstring;
      o2001.Caption:=fieldbyname('s1').asstring;
      o3001.Caption:=fieldbyname('s5').asstring;
    end;
  end;
  s04.Caption:=formatfloat('#0.0',tsect/2.0/oday)+' hrs ';///working day ';
  s07.Caption:=formatfloat('#0.0',tsect/2.0)+' hrs ';///working day ';
  s08.Caption:=formatfloat('0.00%',r2*100.00/(r2+oday));///working day ';
end;

procedure Tfrmftycalendar.week52AfterOpen(DataSet: TDataSet);
begin
  week52.FieldByName('sectt').OnChange:=secttchange;
  week52.FieldByName('sectt1').OnChange:=secttchange;
  week52.FieldByName('sectc').OnChange:=secttchange;
  week52.FieldByName('osect').onchange:=secttchange;
end;

procedure Tfrmftycalendar.secttchange(Sender: TField);
var
  s1,s2,s3,s4:integer;
begin
  if not week52.fieldbyname('sectt').isnull then
  s1:=week52.fieldbyname('sectt').value else s1:=0;
  if not week52.fieldbyname('sectt1').isnull then
  s2:=week52.fieldbyname('sectt1').value else s2:=0;
  if not week52.fieldbyname('sectc').isnull then
  s3:=week52.fieldbyname('sectc').value else s3:=0;
  if not week52.fieldbyname('osect').isnull then
  s4:=week52.fieldbyname('osect').value else s4:=0;
  week52.fieldbyname('secto').value:=s1+s2+s3+s4;
  {
  if s1+s2+s3+s4>0 then begin
    week52.fieldbyname('wkday').value:='';
  end else begin
    if week52.fieldbyname('wday').value='S' then
    week52.fieldbyname('wkday').value:='S'
    else week52.fieldbyname('wkay').value:='H';
  end;
  }
end;

procedure Tfrmftycalendar.FormShow(Sender: TObject);
begin
  option1.Visible:=true;
  option2.Visible:=false;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r3').value=false then begin
      dbgrideh1.ReadOnly:=true;
    end;
  end;
end;

procedure Tfrmftycalendar.ModifyCalendar1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with query1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_updwk52_ttl';
    execute;
  end;
  speedbutton1click(self);
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmftycalendar.option1Click(Sender: TObject);
begin
  speedbutton1click(self);
end;

end.
