unit ocprepformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, ExtCtrls,
  StdCtrls, Buttons, Mask, rxToolEdit, ppViewr, ppStrtch, ppSubRpt,
  ppParameter;

type
  Tfrmocprep = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    Query2: TClientDataSet;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    title003: TppLabel;
    dt001: TppLabel;
    ppLabel4: TppLabel;
    dt002: TppLabel;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel19: TppLabel;
    title002: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLine9: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine18: TppLine;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine19: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine20: TppLine;
    ppLabel8: TppLabel;
    ppLabel41: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    r0007: TppDBText;
    r0010: TppDBText;
    dt003: TppLabel;
    ppLabel20: TppLabel;
    dt004: TppLabel;
    r0011: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText5: TppDBText;
    r0003: TppDBText;
    r0008: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    r0005: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    r0001: TppDBText;
    r0002: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape2: TppShape;
    t0007: TppDBCalc;
    t0010: TppDBCalc;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    q001: TppLabel;
    s001: TppLabel;
    q002: TppLabel;
    s002: TppLabel;
    q003: TppLabel;
    s003: TppLabel;
    q004: TppLabel;
    s004: TppLabel;
    q005: TppLabel;
    s005: TppLabel;
    t0011: TppLabel;
    ppLabel18: TppLabel;
    ppLabel13: TppLabel;
    p001: TppLabel;
    p002: TppLabel;
    p003: TppLabel;
    p004: TppLabel;
    p005: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    t0003: TppDBCalc;
    t0008: TppLabel;
    t0005: TppDBCalc;
    t0002: TppLabel;
    t0001: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel26: TppLabel;
    s0007: TppDBCalc;
    s0003: TppDBCalc;
    s0010: TppDBCalc;
    s0008: TppLabel;
    s0011: TppLabel;
    s0005: TppDBCalc;
    s0002: TppLabel;
    s0001: TppDBCalc;
    ppLabel43: TppLabel;
    r0009: TppLabel;
    s0009: TppLabel;
    t0009: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine10: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    cgrp001: TppLabel;
    u0002: TppLabel;
    u0003: TppDBCalc;
    u0005: TppDBCalc;
    u0007: TppDBCalc;
    u0008: TppLabel;
    u0009: TppLabel;
    u0010: TppDBCalc;
    u0011: TppLabel;
    sttl01: TppLabel;
    u0001: TppDBCalc;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine11: TppLine;
    ppDBText3: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    sr001: TppDBText;
    sr007: TppDBText;
    sr003: TppDBText;
    sr005: TppDBText;
    sr010: TppDBText;
    sr011: TppLabel;
    sr002: TppLabel;
    sr008: TppLabel;
    sr009: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel7: TppLabel;
    ssr001: TppDBCalc;
    ssr003: TppDBCalc;
    ssr005: TppDBCalc;
    ssr007: TppDBCalc;
    ssr010: TppDBCalc;
    ssr002: TppLabel;
    ssr008: TppLabel;
    ssr009: TppLabel;
    ssr011: TppLabel;
    ppLabel11: TppLabel;
    ppLabel24: TppLabel;
    r0006: TppDBText;
    s0006: TppDBCalc;
    t0006: TppDBCalc;
    u0006: TppDBCalc;
    sr006: TppDBText;
    ssr006: TppDBCalc;
    ppLabel27: TppLabel;
    ppLabel32: TppLabel;
    r0004: TppDBText;
    u0004: TppDBCalc;
    t0004: TppDBCalc;
    sr004: TppDBText;
    ssr004: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    xh1: TRadioButton;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    xh2: TRadioButton;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    xh3: TRadioButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    xh4: TRadioButton;
    DateEdit7: TDateEdit;
    DateEdit8: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure xh3Click(Sender: TObject);
    procedure xh4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmocprep: Tfrmocprep;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmocprep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmocprep:=nil;
end;

procedure Tfrmocprep.BitBtn2Click(Sender: TObject);
var
  dt:tdatetime;
  dt1,dt2:tdate;
begin
  screen.cursor:=crHourglass;
  dt:=now;
  if xh1.Checked then begin
    if dateedit3.date>0 then dt1:=dateedit3.date else dt1:=encodedate(2006,1,1);
    if dateedit4.date>0 then dt2:=dateedit4.date else dt2:=encodedate(2020,12,31);
  end else if xh2.Checked then begin
    if dateedit5.date>0 then dt1:=dateedit5.date else dt1:=encodedate(2006,1,1);
    if dateedit6.date>0 then dt2:=dateedit6.date else dt2:=encodedate(2020,12,31);
  end else if xh3.Checked then begin
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  end else if xh4.Checked then begin
    if dateedit7.date>0 then dt1:=dateedit7.date else dt1:=encodedate(2006,1,1);
    if dateedit8.date>0 then dt2:=dateedit8.date else dt2:=encodedate(2020,12,31);
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='execute procedure sp_genplantplan(:x1,:x2,:x3,:x4,:x5)';
    params[0].asdatetime:=dt;
    params[1].asstring:=combobox1.text;
    params[2].asdate:=dt1;
    params[3].asdate:=dt2;
    if xh1.Checked then params[4].asstring:='1'
    else if xh2.Checked then params[4].asstring:='2'
    else if xh3.Checked then params[4].asstring:='3'
    else if xh4.Checked then params[4].asstring:='4';
    execute;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    //commandtext:='select distinct dt,tplant,cgrp,f6,ny,wk,avg(qty1) as qty1,avg(qty3) as qty3,sum(qty5) as qty5,avg(ct) as ct,sum(qty) as qty,sum(sah) as sah,'
    //            +'avg(lbu) as lbu,avg(lbu1) as lbu1,avg(lbu2) as lbu2,sum(qty2) as qty2,avg(ct1) as ct1,count(*) as tline '
    commandtext:='select dt,tplant,cgrp,f6,ny,wk,sum(qty1) as qty1,sum(qty3) as qty3,sum(qty5) as qty5,sum(ct) as ct,sum(qty) as qty,sum(qty01) as qty01,sum(sah) as sah,'
                 +'avg(lbu) as lbu,avg(lbu1) as lbu1,avg(lbu2) as lbu2,sum(qty2) as qty2,avg(ct1) as ct1,count(*) as tline '
                +'from tmp_plantplan a where dt=:x1';
    if combobox1.Text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    //commandtext:=commandtext+' group by dt,tplant,cgrp,f6,ny,wk order by tplant,cgrp,ny,f6,wk';
    commandtext:=commandtext+' group by dt,tplant,cgrp,f6,ny,wk order by tplant,cgrp,ny,f6,wk';
    params[0].asdatetime:=dt;
    open;
    if not fieldbyname('tplant').isnull then begin
      if xh1.Checked then begin
        title002.Caption:='- SO Delivery Date';
        title003.Caption:='SO Delivery Date From';
        dt001.Caption:=dateedit3.Text;
        dt002.Caption:=dateedit4.Text;
      end else if xh2.Checked then begin
        title002.Caption:='- WO Ex-fty Date';
        title003.Caption:='WO Ex-fty Date From';
        dt001.Caption:=dateedit5.Text;
        dt002.Caption:=dateedit6.Text;
      end else if xh3.Checked then begin
        title002.Caption:='- RWO Ex-fty Date';
        title003.Caption:='RWO Ex-fty Date From';
        dt001.Caption:=dateedit1.Text;
        dt002.Caption:=dateedit2.Text;
      end else if xh4.Checked then begin
        title002.Caption:='- QN Ex-fty Date';;
        title003.Caption:='QN Ex-fty Date From';
        dt001.Caption:=dateedit7.Text;
        dt002.Caption:=dateedit8.Text;
      end;
      ppReport1.Print;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmocprep.ppGroupFooterBand4BeforePrint(Sender: TObject);
var
  s1,s2:string;
  a1,a3,a4,a5,a6,a7,a10:double;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from plant_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+' and flag=''S'' group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q001.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q001.caption:='0';
    if not fieldbyname('s1').isnull then s001.Caption:=formatfloat('#0',fieldbyname('s1').value)
    else s001.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from plant_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+' and flag=''X'' group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q002.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q002.caption:='0';
    if not fieldbyname('s1').isnull then s002.Caption:=formatfloat('#0',fieldbyname('s1').value)
    else s002.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from plant_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+' and flag=''W'' group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q003.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q003.caption:='0';
    if not fieldbyname('s1').isnull then s003.Caption:=formatfloat('#0',fieldbyname('s1').value)
    else s003.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from plant_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+' and flag=''1'' group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q004.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q004.caption:='0';
    if not fieldbyname('s1').isnull then s004.Caption:=formatfloat('#0',fieldbyname('s1').value)
    else s004.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from plant_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+' and flag='''' group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q005.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q005.caption:='0';
    if not fieldbyname('s1').isnull then s005.Caption:=formatfloat('#0',fieldbyname('s1').value)
    else s005.caption:='0';
  end;
  //if v001.Value>0 then begin
  if t0007.Value>0 then begin
    //wavg01.Caption:=formatfloat('0.0000',v002.Value/v001.Value/12.0);
    t0011.Caption:=formatfloat('0.0000',t0010.Value/t0007.Value/12.0);
    p001.Caption:=formatfloat('0.00%',strtofloat(q001.Caption)*100.0/t0007.Value);
    p002.Caption:=formatfloat('0.00%',strtofloat(q002.Caption)*100.0/t0007.Value);
    p003.Caption:=formatfloat('0.00%',strtofloat(q003.Caption)*100.0/t0007.Value);
    p004.Caption:=formatfloat('0.00%',strtofloat(q004.Caption)*100.0/t0007.Value);
    p005.Caption:=formatfloat('0.00%',strtofloat(q005.Caption)*100.0/t0007.Value);
  end else begin
    //wavg01.Caption:='0.0000';
    t0011.caption:='0.0000';
    p001.Caption:='0.00%';
    p002.Caption:='0.00%';
    p003.Caption:='0.00%';
    p004.Caption:='0.00%';
    p005.Caption:='0.00%';
  end;
  {
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2 from tblshedule where tplant='''+query1.fieldbyname('tplant').value+'''';
    commandtext:=commandtext+' and cast(f_year(yqlcrq) as varchar(4))='''+copy(query1.fieldbyname('ny').value,1,4)+'''';
    commandtext:=commandtext+' and cast(f_month(yqlcrq) as varchar(2))='''+inttostr(strtoint(copy(query1.fieldbyname('ny').value,6,2)))+'''';
    open;
    s1:=fieldbyname('cnt1').asstring;
    s2:=fieldbyname('cnt2').asstring;
  end;
  ttl001.Caption:='Ttl # of cust style : '+s1+'     Ttl # of line : '+s2;
  }
  //t0001-t0011
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select sum(qty3) as a1,sum(qty1) as a3,sum(qty01) as a4,sum(qty2) as a5,sum(qty5) as a6,sum(qty) as a7,sum(sah) as a10 from tmp_plantplan where dt=:x1 ';
    commandtext:=commandtext+'and tplant=:x2 and ny=:x4';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    params[2].asstring:=query1.fieldbyname('ny').value;
    open;
    a1:=fieldbyname('a1').value;
    a3:=fieldbyname('a3').value;
    a4:=fieldbyname('a4').value;
    a5:=fieldbyname('a5').value;
    a6:=fieldbyname('a6').value;
    a7:=fieldbyname('a7').value;
    a10:=fieldbyname('a10').value;
  end;
  if a7>0 then t0011.Caption:=formatfloat('0.0000',a10/a7/12.0) else t0011.Caption:='0.0000';
  t0002.Caption:=formatfloat('#0',a1-a5-a6-a7);
  if (a5+a6+a7-a3-a4>0) then t0008.Caption:='+'+formatfloat('#0',a5+a6+a7-a3-a4) else t0008.Caption:=formatfloat('#0',a5+a6+a7-a3-a4);
  t0009.Caption:=formatfloat('#0',a1-a3-a4);
  if (a1-a5-a6-a7>0) then t0002.Font.Color:=clBlack else t0002.Font.Color:=clRed;
  if (a1-a3-a4>0) then t0009.Font.Color:=clBlack else t0009.Font.Color:=clRed;
end;

procedure Tfrmocprep.ppGroupFooterBand5BeforePrint(Sender: TObject);
var
  a1,a3,a4,a5,a6,a7,a10:double;
begin
  //s0001-s0011
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select sum(qty3) as a1,sum(qty1) as a3,sum(qty01) as a4,sum(qty2) as a5,sum(qty5) as a6,sum(qty) as a7,sum(sah) as a10 from tmp_plantplan where dt=:x1 ';
    commandtext:=commandtext+'and tplant=:x2 and f6=:x3 and ny=:x4';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    params[2].asstring:=query1.fieldbyname('f6').value;
    params[3].asstring:=query1.fieldbyname('ny').value;
    open;
    a1:=fieldbyname('a1').value;
    a3:=fieldbyname('a3').value;
    a4:=fieldbyname('a4').value;
    a5:=fieldbyname('a5').value;
    a6:=fieldbyname('a6').value;
    a7:=fieldbyname('a7').value;
    a10:=fieldbyname('a10').value;
  end;
  if a7>0 then s0011.Caption:=formatfloat('0.0000',a10/a7/12.0) else s0011.Caption:='0.0000';
  s0002.Caption:=formatfloat('#0',a1-a5-a6-a7);
  if (a5+a6+a7-a3-a4>0) then s0008.Caption:='+'+formatfloat('#0',a5+a6+a7-a3-a4) else s0008.Caption:=formatfloat('#0',a5+a6+a7-a3-a4);
  s0009.Caption:=formatfloat('#0',a1-a3-a4);
  if (a1-a5-a6-a7>0) then s0002.Font.Color:=clBlack else s0002.Font.Color:=clRed;
  if (a1-a3-a4>0) then s0009.Font.Color:=clBlack else s0009.Font.Color:=clRed;
end;

procedure Tfrmocprep.ppDetailBand1BeforePrint(Sender: TObject);
begin
  //r0001-r0011
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select min(yqlcrq) as s1,max(yqlcrq) as s2 from tmp_plantplan where dt=:x1';
    if not query1.fieldbyname('ny').isnull then
    commandtext:=commandtext+' and ny='''+query1.fieldbyname('ny').value+'''';
    if not query1.fieldbyname('f6').isnull then
    commandtext:=commandtext+' and f6='''+query1.fieldbyname('f6').value+'''';
    commandtext:=commandtext+' and wk='+query1.fieldbyname('wk').asstring;
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('s1').isnull then
    dt003.Caption:=formatdatetime('yy/MM/dd',fieldbyname('s1').value)
    else dt003.Caption:=query1.fieldbyname('ny').value+'-01';
    if not fieldbyname('s2').isnull then
    dt004.Caption:=formatdatetime('yy/MM/dd',fieldbyname('s2').value)
    else dt004.Caption:=query1.fieldbyname('ny').value+'-30';
  end;
  if r0007.FieldValue>0 then r0011.Caption:=formatfloat('0.0000',r0010.FieldValue/r0007.FieldValue/12.0)
  else r0011.Caption:='0.0000';
  r0002.Caption:=formatfloat('#0',r0001.FieldValue-r0005.FieldValue-r0006.FieldValue-r0007.FieldValue);
  if (r0005.FieldValue+r0006.FieldValue+r0007.FieldValue-r0003.FieldValue-r0004.FieldValue>0) then
  r0008.Caption:='+'+formatfloat('#0',r0005.FieldValue+r0006.FieldValue+r0007.FieldValue-r0003.FieldValue-r0004.FieldValue)
  else r0008.Caption:=formatfloat('#0',r0005.FieldValue+r0006.FieldValue+r0007.FieldValue-r0003.FieldValue-r0004.FieldValue);
  r0009.Caption:=formatfloat('#0',r0001.FieldValue-r0003.FieldValue-r0004.FieldValue);
  if (r0001.FieldValue>r0005.FieldValue+r0006.FieldValue+r0007.FieldValue) then r0002.Font.Color:=clBlack else r0002.Font.Color:=clRed;
  if (r0001.FieldValue-r0003.FieldValue-r0004.FieldValue>0) then r0009.Font.Color:=clBlack else r0009.Font.Color:=clRed;
end;

procedure Tfrmocprep.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmocprep.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  //if query1.fieldbyname('cgrp').value='R' then cgrp001.caption:='Requisition Group'
  //else if query1.fieldbyname('cgrp').value='S' then cgrp001.caption:='Self-reservation + No reservation group';
  cgrp001.Caption:='';
end;

procedure Tfrmocprep.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  a1,a3,a4,a5,a6,a7,a10:double;
begin
  //u0001-u0011
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select sum(qty3) as a1,sum(qty1) as a3,sum(qty01) as a4,sum(qty2) as a5,sum(qty5) as a6,sum(qty) as a7,sum(sah) as a10 from tmp_plantplan where dt=:x1 ';
    commandtext:=commandtext+'and tplant=:x2 and cgrp=:x3';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    params[2].asstring:=query1.fieldbyname('cgrp').value;
    open;
    a1:=fieldbyname('a1').value;
    a3:=fieldbyname('a3').value;
    a4:=fieldbyname('a4').value;
    a5:=fieldbyname('a5').value;
    a6:=fieldbyname('a6').value;
    a7:=fieldbyname('a7').value;
    a10:=fieldbyname('a10').value;
  end;
  if a7>0 then u0011.Caption:=formatfloat('0.0000',a10/a7/12.0) else u0011.Caption:='0.0000';
  u0002.Caption:=formatfloat('#0',a1-a5-a6-a7);
  if (a5+a6+a7-a3-a4>0) then u0008.Caption:='+'+formatfloat('#0',a5+a6+a7-a3-a4) else u0008.Caption:=formatfloat('#0',a5+a6+a7-a3-a4);
  u0009.Caption:=formatfloat('#0',a1-a3-a4);
  if (a1-a5-a6-a7>0) then u0002.Font.Color:=clBlack else u0002.Font.Color:=clRed;
  if (a1-a3-a4>0) then u0009.Font.Color:=clBlack else u0009.Font.Color:=clRed;
end;

procedure Tfrmocprep.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct tplant,ny,f6,sum(qty) as qty,sum(qty1) as qty1,sum(qty01) as qty01,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty5) as qty5,sum(sah) as sah '
                +'from tmp_plantplan where dt=:x1 and tplant=:x2 group by tplant,ny,f6 order by ny,f6';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    open;
  end;
end;

procedure Tfrmocprep.ppDetailBand2BeforePrint(Sender: TObject);
begin
  //sr001-sr011
  if sr007.FieldValue>0 then sr011.Caption:=formatfloat('0.0000',sr010.FieldValue/sr007.FieldValue/12.0)
  else sr011.Caption:='0.0000';
  sr002.Caption:=formatfloat('#0',sr001.FieldValue-sr005.FieldValue-sr006.FieldValue-sr007.FieldValue);
  if (sr005.FieldValue+sr006.FieldValue+sr007.FieldValue-sr003.FieldValue-sr004.FieldValue>0) then
  sr008.Caption:='+'+formatfloat('#0',sr005.FieldValue+sr006.FieldValue+sr007.FieldValue-sr003.FieldValue-sr004.FieldValue)
  else sr008.Caption:=formatfloat('#0',sr005.FieldValue+sr006.FieldValue+sr007.FieldValue-sr003.FieldValue-sr004.FieldValue);
  sr009.Caption:=formatfloat('#0',sr001.FieldValue-sr003.FieldValue-sr004.FieldValue);
  if (sr001.FieldValue>sr005.FieldValue+sr006.FieldValue+sr007.FieldValue) then sr002.Font.Color:=clBlack else sr002.Font.Color:=clRed;
  if (sr001.FieldValue-sr003.FieldValue-sr004.FieldValue>0) then sr009.Font.Color:=clBlack else sr009.Font.Color:=clRed;
end;

procedure Tfrmocprep.ppSummaryBand1BeforePrint(Sender: TObject);
var
  a1,a3,a4,a5,a6,a7,a10:double;
begin
  //ssr001-ssr011
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select sum(qty3) as a1,sum(qty1) as a3,sum(qty01) as a4,sum(qty2) as a5,sum(qty5) as a6,sum(qty) as a7,sum(sah) as a10 from tmp_plantplan where dt=:x1 ';
    commandtext:=commandtext+'and tplant=:x2 and cgrp=:x3';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    params[2].asstring:=query1.fieldbyname('cgrp').value;
    open;
    a1:=fieldbyname('a1').value;
    a3:=fieldbyname('a3').value;
    a4:=fieldbyname('a4').value;
    a5:=fieldbyname('a5').value;
    a6:=fieldbyname('a6').value;
    a7:=fieldbyname('a7').value;
    a10:=fieldbyname('a10').value;
  end;
  if a7>0 then ssr011.Caption:=formatfloat('0.0000',a10/a7/12.0) else ssr011.Caption:='0.0000';
  ssr002.Caption:=formatfloat('#0',a1-a5-a6-a7);
  if (a5+a6+a7-a3-a4>0) then ssr008.Caption:='+'+formatfloat('#0',a5+a6+a7-a3-a4) else ssr008.Caption:=formatfloat('#0',a5+a6+a7-a3-a4);
  ssr009.Caption:=formatfloat('#0',a1-a3-a4);
  if (a1-a5-a6-a7>0) then ssr002.Font.Color:=clBlack else ssr002.Font.Color:=clRed;
  if (a1-a3-a4>0) then ssr009.Font.Color:=clBlack else ssr009.Font.Color:=clRed;
end;

procedure Tfrmocprep.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    dateedit3.Enabled:=true;
    dateedit4.Enabled:=true;
    dateedit5.Enabled:=false;
    dateedit6.Enabled:=false;
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    dateedit7.Enabled:=false;
    dateedit8.Enabled:=false;
  end;
end;

procedure Tfrmocprep.xh2Click(Sender: TObject);
begin
  if xh2.Checked then begin
    dateedit3.Enabled:=false;
    dateedit4.Enabled:=false;
    dateedit5.Enabled:=true;
    dateedit6.Enabled:=true;
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    dateedit7.Enabled:=false;
    dateedit8.Enabled:=false;
  end;
end;

procedure Tfrmocprep.xh3Click(Sender: TObject);
begin
  if xh3.Checked then begin
    dateedit3.Enabled:=false;
    dateedit4.Enabled:=false;
    dateedit5.Enabled:=false;
    dateedit6.Enabled:=false;
    dateedit1.Enabled:=true;
    dateedit2.Enabled:=true;
    dateedit7.Enabled:=false;
    dateedit8.Enabled:=false;
  end;
end;

procedure Tfrmocprep.xh4Click(Sender: TObject);
begin
  if xh4.Checked then begin
    dateedit3.Enabled:=false;
    dateedit4.Enabled:=false;
    dateedit5.Enabled:=false;
    dateedit6.Enabled:=false;
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    dateedit7.Enabled:=true;
    dateedit8.Enabled:=true;
  end;
end;

end.
