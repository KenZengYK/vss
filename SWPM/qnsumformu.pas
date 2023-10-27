unit qnsumformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppRichTx, ppStrtch, ppMemo, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  DBClient, ppViewr, ppSubRpt, StdCtrls, Mask, rxToolEdit, ppParameter;

type
  Tfrmqnsum = class(TForm)
    Query1: TClientDataSet;
    Query4: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    rpttitle: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    wks001: TppLabel;
    ppDBText27: TppDBText;
    line002: TppDBText;
    ppDBText30: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppLabel15: TppLabel;
    title001: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel49: TppLabel;
    ppDBText36: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    avg007: TppLabel;
    avg008: TppLabel;
    chase003: TppLabel;
    chase004: TppLabel;
    chase005: TppLabel;
    next001: TppLabel;
    next002: TppLabel;
    next004: TppLabel;
    chase006: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel1: TppLabel;
    date001: TppLabel;
    total001: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    title002: TppLabel;
    ppLabel8: TppLabel;
    ppLabel24: TppLabel;
    qnorg001: TppLabel;
    rwo001: TppLabel;
    ppLabel37: TppLabel;
    ct001: TppLabel;
    acol001: TppLabel;
    peff001: TppLabel;
    ttl002: TppLabel;
    ppShape2: TppShape;
    ppShape5: TppShape;
    ppMemo3: TppMemo;
    phase001: TppLabel;
    ppLine8: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    start001: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine25: TppLine;
    ppLine27: TppLine;
    Query5: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel46: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel47: TppLabel;
    ppDBText9: TppDBText;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel41: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    sx01: TppLabel;
    ppDBText12: TppDBText;
    qty01: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    sx02: TppLabel;
    ppDBText16: TppDBText;
    qty02: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    sx03: TppLabel;
    ppDBText20: TppDBText;
    qty03: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    sx04: TppLabel;
    ppDBText24: TppDBText;
    qty04: TppDBText;
    ppDBText26: TppDBText;
    ppDBText29: TppDBText;
    sx05: TppLabel;
    ppDBText31: TppDBText;
    qty05: TppDBText;
    ppDBText13: TppDBText;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLine17: TppLine;
    ppLabel51: TppLabel;
    x0001: TppLabel;
    x0003: TppLabel;
    x0004: TppLabel;
    x0005: TppLabel;
    x1001: TppLabel;
    x1003: TppLabel;
    x1004: TppLabel;
    x1005: TppLabel;
    x2001: TppLabel;
    x2003: TppLabel;
    x2004: TppLabel;
    x2005: TppLabel;
    x3001: TppLabel;
    x3003: TppLabel;
    x3004: TppLabel;
    x3005: TppLabel;
    x4001: TppLabel;
    x4003: TppLabel;
    x4004: TppLabel;
    x4005: TppLabel;
    x0002: TppLabel;
    x1002: TppLabel;
    x2002: TppLabel;
    x3002: TppLabel;
    x4002: TppLabel;
    x0006: TppLabel;
    x1006: TppLabel;
    x2006: TppLabel;
    x3006: TppLabel;
    x4006: TppLabel;
    ppLabel52: TppLabel;
    wk01: TppLabel;
    ppLine18: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText17: TppDBText;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppRichText1: TppRichText;
    ppShape4: TppShape;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Query6: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel57: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText21: TppDBText;
    a0002: TppLabel;
    a0003: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppShape6: TppShape;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    b0002: TppLabel;
    b0003: TppLabel;
    ppLabel63: TppLabel;
    ppDBText25: TppDBText;
    ppDBText28: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel64: TppLabel;
    Query7: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    b0001: TppLabel;
    ppLabel65: TppLabel;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppShape7: TppShape;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    a002: TppLabel;
    ppLine22: TppLine;
    ppDBText35: TppDBText;
    ppDBText37: TppDBText;
    a003: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    b002: TppLabel;
    ppDBCalc2: TppDBCalc;
    b001: TppLabel;
    ppLabel77: TppLabel;
    b003: TppLabel;
    a0004: TppLabel;
    a0008: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    a0005: TppLabel;
    a0006: TppLabel;
    a0007: TppLabel;
    a0009: TppLabel;
    a0010: TppLabel;
    a0011: TppLabel;
    ppLabel75: TppLabel;
    ppLabel67: TppLabel;
    ppLabel74: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel76: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    a004: TppLabel;
    a008: TppLabel;
    a005: TppLabel;
    a006: TppLabel;
    a007: TppLabel;
    a009: TppLabel;
    a010: TppLabel;
    a011: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppDBText34: TppDBText;
    ppDBText38: TppDBText;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand6BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmqnsum: Tfrmqnsum;

implementation

uses mainformu, dailyreport1formu;

{$R *.dfm}

procedure Tfrmqnsum.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmqnsum.ppGroupHeaderBand2BeforePrint(Sender: TObject);
var
  owcrq,dt1:tdate;
  owcjs:double;
  scqty,tqty,q1,q2,q3:double;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from calc_wcrq(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('o_wcrq').isnull then owcrq:=fieldbyname('o_wcrq').value;
    if not fieldbyname('o_wcjs').isnull then owcjs:=fieldbyname('o_wcjs').value-1;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct scqty,sum(aqty+aqty1) as tqty,max(dt1) as dt from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' group by scqty';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('scqty').isnull then scqty:=fieldbyname('scqty').value else scqty:=0;
    if not fieldbyname('tqty').isnull then tqty:=fieldbyname('tqty').value else tqty:=0;
    if not fieldbyname('dt').isnull then dt1:=fieldbyname('dt').value;
  end;
  if (scqty<=tqty) and (scqty>0) then owcrq:=dt1;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select cfmd from tbl_lwo_dt where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('cfmd').isnull then begin
        if fieldbyname('cfmd').value=true then q1:=1 else q1:=0;
      end else q1:=0;
    end;
    if q1=1 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select sum(tqty) as q2,sum(pqty) as q3 from tbl_lwo where pline=:x1 and seq=:x2';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        open;
        if not fieldbyname('q2').isnull then q2:=fieldbyname('q2').value else q2:=0;
        if not fieldbyname('q3').isnull then q3:=fieldbyname('q3').value else q3:=0;
      end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select scqty,acol,flag5,qrxc,rqxc,tzlcrq,tz_w,yqlcrq,yq_w,cfksrq,cfwcrq from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    title002.Caption:='';
    if q2>0 then begin
      title001.Caption:='C';
      title002.Caption:=formatfloat('0,0',q2);
    end else begin
      title001.Caption:='p';
      if q1=0 then
        title002.Caption:=formatfloat('0,0',query3.fieldbyname('scqty').asfloat)
      else title002.Caption:=formatfloat('0,0',q3);
    end;
    acol001.Caption:=query3.fieldbyname('acol').value;
    if not query3.fieldbyname('rqxc').isnull then begin
      if query3.fieldbyname('rqxc').value<0 then chase004.Font.Color:=clRed
      else if query3.fieldbyname('rqxc').value>0 then chase004.Font.Color:=clGreen
      else chase004.Font.Color:=clBlack;
      chase004.Caption:=query3.fieldbyname('rqxc').asstring;
    end else begin
      chase004.Font.Color:=clBlack;
      chase004.Caption:='--';
    end;
    if not query3.fieldbyname('qrxc').isnull then begin
      if not query3.fieldbyname('flag5').isnull then begin
        if query3.fieldbyname('flag5').value>'' then begin
          chase005.Caption:=query3.fieldbyname('flag5').value+' '+query3.fieldbyname('qrxc').asstring;
        end else begin
          if query3.fieldbyname('qrxc').value>0.00 then
          chase005.Caption:=query3.fieldbyname('qrxc').asstring
          else chase005.Caption:='--';
        end;
      end else begin
        if query3.fieldbyname('qrxc').value>0.00 then
        chase005.Caption:=query3.fieldbyname('qrxc').asstring
        else chase005.Caption:='--';
      end;
    end else chase005.Caption:='--';
    //if query3.fieldbyname('rqxc').value<query3.fieldbyname('qrxc').value then chase004.Font.Color:=clRed else chase004.Font.Color:=clBlack;
    if not query3.fieldbyname('tzlcrq').isnull then
      qnorg001.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('tzlcrq').value)+' '+query3.fieldbyname('tz_w').value
    else qnorg001.Caption:='--';
    if not query3.fieldbyname('yqlcrq').isnull then
      rwo001.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('yqlcrq').value)+' '+query3.fieldbyname('yq_w').value
    else rwo001.Caption:='--';
    //if not query3.fieldbyname('xc2').isnull then ct001.Caption:=formatfloat('0.0',query3.fieldbyname('xc2').value)
    //else ct001.Caption:='0.0';
    ct001.Caption:=formatfloat('0.0',trunc(query3.fieldbyname('cfwcrq').value)-trunc(query3.fieldbyname('cfksrq').value)+1);
end;

procedure Tfrmqnsum.ppDetailBand1BeforePrint(Sender: TObject);
var
  dt1,mindt,maxdt:tdate;
  q1,q2:double;
  flag3:string;
  ksrq,owcrq:tdate;
  ksjs,owcjs:double;
  tm:tdatetime;
begin
  tm:=now;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(sjrs1*csect)/sum(csect) as s1,sum(sjrs2*csect)/sum(csect) as s2,sum(sjrs*csect)/sum(csect) as s3,'
                +'sum(sjyc*csect)/sum(csect) as s4,sum(eff1*csect)/sum(csect) as s5,sum(eff2*csect)/sum(csect) as s6,sum(lstr*csect)/sum(csect) as s7,'
                +'sum(trs*csect)/sum(csect) as s8 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0 and dt1=:x3';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdate:=query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('s5').isnull then
    avg007.Caption:=formatfloat('0.00',fieldbyname('s5').value) else avg007.Caption:='0.00';
    if not fieldbyname('s6').isnull then
    avg008.Caption:=formatfloat('0.00',fieldbyname('s6').value) else avg008.Caption:='0.00';
    if strtofloat(avg008.caption)<strtofloat(avg007.caption) then avg008.Font.Color:=clRed else avg008.Font.Color:=clGreen;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag3,cfwcrq,cfwcjs,plan_date,cplan from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('flag3').isnull then flag3:=fieldbyname('flag3').value else flag3:='';
    if not fieldbyname('cfwcrq').isnull then
    owcrq:=fieldbyname('cfwcrq').value;
    if not fieldbyname('cfwcjs').isnull then
    owcjs:=fieldbyname('cfwcjs').value else owcjs:=0;
    if not fieldbyname('cplan').isnull then start001.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('cplan').value)
    else if not fieldbyname('plan_date').isnull then start001.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('plan_date').value)
    else start001.Caption:='';
  end;
  if copy(flag3,1,1)<>'x' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select sum(pqty) as q1,sum(aqty) as q2 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and (csect>0 or aqty>0 or aqty1>0)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('q1').isnull then q1:=fieldbyname('q1').value else q1:=0;
      if not fieldbyname('q2').isnull then q2:=fieldbyname('q2').value else q2:=0;
    end;
    if abs(q1-q2)>=1 then begin
      if not query1.fieldbyname('ksjs1').isnull then
      ksjs:=query1.fieldbyname('ksjs1').value else ksjs:=0;
      {
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select cfwcrq,cfwcjs from tblshedule where pline=:x1 and seq=:x2';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        open;
        owcrq:=fieldbyname('cfwcrq').value;
        owcjs:=fieldbyname('cfwcjs').value;
      end;
      }
      chase003.Caption:='c  '+formatfloat('0.0',owcjs)+'  /  '+formatdatetime('yy/MM/dd',owcrq);
    end else begin
      //chase003.Caption:='--';
      chase003.Caption:='c  '+formatfloat('0.0',owcjs)+'  /  '+formatdatetime('yy/MM/dd',owcrq);
    end;
  end else begin
    //chase003.Caption:='--';
    chase003.Caption:='x  '+formatfloat('0.0',owcjs)+'  /  '+formatdatetime('yy/MM/dd',owcrq);
  end;
  //
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select min(dt1) as m1,max(dt1) as m2 from line_shjs where csect>0 and pline=:x1 and seq=:x2 and flag=''0''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('m1').isnull then mindt:=fieldbyname('m1').value else mindt:=encodedate(1899,12,30);
    if not fieldbyname('m2').isnull then maxdt:=fieldbyname('m2').value else maxdt:=encodedate(1899,12,30);
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(psect-csect) as st from line_shjs where pline=:x1 and seq=:x2 and csect>=0 and psect>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('st').isnull then chase006.Caption:=formatfloat('0.0',fieldbyname('st').value)
    else chase006.Caption:='0.0';
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='execute procedure sp_gennextga(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select * from tbl_next_gai where pline=:x1 and seq=:x2 and tm=:x3';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    open;
    if not fieldbyname('pline').isnull then begin
      next001.Caption:=formatfloat('0.00',fieldbyname('pqty').value);
      next002.Caption:=formatfloat('0.00',fieldbyname('aqty1').value);
      next004.Caption:=formatfloat('0.00',fieldbyname('ct2').value)+'('+formatfloat('0.00 %',fieldbyname('eff1').value)+')';//  '+formatfloat('0.00',fieldbyname('ct1').value);
    end else begin
      next001.Caption:='';
      next002.Caption:='';
      next004.Caption:='';
    end;
  end;
  if not query1.fieldbyname('lflag').isnull then
  phase001.Caption:=query1.fieldbyname('lflag').asstring else phase001.Caption:='';
end;

procedure Tfrmqnsum.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  s1,s2,s3,s4,s5:string;
  p1,p2,p3,p4,p5,lt1,lflag01:double;
begin
  s1:='';s2:='';s3:='';s4:='';s5:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
      commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                  +'from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;//date-1;
    params[1].asdate:=dateedit2.Date;
    open;
    if not fieldbyname('p2').isnull then s1:='project :  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style :  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line :  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN :  '+fieldbyname('s4').asstring+'    ';
    if not fieldbyname('s5').isnull then s5:='Clr :  '+fieldbyname('s5').asstring+'    ';
  end;
  total001.caption:=s1+s2+s3+s4+s5;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s1,sum(eff2*(csect+ceot))/sum(csect+ceot) as s2 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and csect+ceot>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;//date-1;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then x002.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else x002.Caption:='0.00';
    if not fieldbyname('s2').isnull then x003.Caption:=formatfloat('0.00',fieldbyname('s2').value)
    else x003.Caption:='0.00';
    if strtofloat(x002.Caption)>strtofloat(x003.Caption) then x003.Font.Color:=clRed
    else if strtofloat(x002.Caption)<strtofloat(x003.Caption) then x003.Font.Color:=clGreen
    else x003.Font.Color:=clBlack;
  end;

  lt1:=0;
  p5:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select csect from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asdate:=query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('csect').isnull then p5:=fieldbyname('csect').value else p5:=0;
  end;
  lt1:=0;
  with Query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(a.ltc_d) as ltc_d1 from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq and b.flag=''0'' and b.dt1>=:x1 and b.dt1<=:x2 and ((a.ltc_ksrq>=b.dt1 and a.ltc_ksrq<=b.dt1) or (a.ltc_ksrq<b.dt1 and a.cfwcrq=b.dt1))';
    //commandtext:=commandtext+' and b.tplant='''+query1.fieldbyname('tplant').value+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
    if combobox2.Text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and a.j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and a.cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and a.acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('ltc_d1').isnull then lt1:=fieldbyname('ltc_d1').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff2*csect)/sum(csect) as s1,sum(csect) as s2 from line_shjs where dt1>=:x1 and dt1<=:x2 and csect>0 and flag=''0''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eot-csect) as s2 from line_shjs where dt1>=:x1 and dt1<=:x2 and flag=''0''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s2').isnull then p4:=fieldbyname('s2').value else p4:=0;
  end;
  p3:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct line,sum(csect) as csect from week52 where date1>=:x1 and date1<=:x2 and tplant>'''' and tshop>''''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' group by line';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    first;
    while not eof do begin
      p3:=p3+fieldbyname('csect').value;
      application.ProcessMessages;
      next;
    end;
  end;
  if p3>0 then peff001.Caption:='Productivity eff %: '+formatfloat('0.00',p1*p2/p3) else peff001.Caption:='Productivity eff %: 0.00';
  if p3>0 then
  ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  else ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  0.00';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
      commandtext:='select sum(floor(lflag1)*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and (ceot+csect)>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then lflag01:=fieldbyname('s1').value
    else lflag01:=0;
  end;
  ttl002.Caption:=ttl002.Caption+'    Current phase of line efficiency: '+formatfloat('0.0',lflag01);

  ppMemo3.Lines.clear;
  ppMemo3.Lines.Add('General Manager - Operations'' Notepad : - ');
  if combobox2.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select distinct tshop,remarks from tbl_wksremarks where dt1>=:x1 and dt1<=:x2';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' order by tshop';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      open;
      first;
      while not eof do begin
        if not fieldbyname('remarks').isnull then ppMemo3.Lines.Add(fieldbyname('tshop').value+' :  '+fieldbyname('remarks').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  ppMemo3.Lines.Add('');
end;

procedure Tfrmqnsum.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if not query5.fieldbyname('pdn1').isnull then sx01.visible:=true else sx01.visible:=false;
  if not query5.fieldbyname('pdn2').isnull then sx02.visible:=true else sx02.visible:=false;
  if not query5.fieldbyname('pdn3').isnull then sx03.visible:=true else sx03.visible:=false;
  if not query5.fieldbyname('pdn4').isnull then sx04.visible:=true else sx04.visible:=false;
  if not query5.fieldbyname('pdn5').isnull then sx05.visible:=true else sx05.visible:=false;
  if query5.fieldbyname('sqty5').value>0 then begin
    qty01.Font.Color:=clRed;
    qty02.Font.Color:=clRed;
    qty03.Font.Color:=clRed;
    qty04.Font.Color:=clRed;
    if query5.fieldbyname('sqty1').value+query5.fieldbyname('sqty2').value+query5.fieldbyname('sqty3').value+query5.fieldbyname('sqty4').value+query5.fieldbyname('sqty5').value<query5.fieldbyname('qty').value
    then qty05.Font.Color:=clRed
    else if query5.fieldbyname('sqty1').value+query5.fieldbyname('sqty2').value+query5.fieldbyname('sqty3').value+query5.fieldbyname('sqty4').value+query5.fieldbyname('sqty5').value=query5.fieldbyname('qty').value
    then qty05.Font.Color:=clBlack else qty05.Font.Color:=clGreen;
  end else if query5.fieldbyname('sqty4').value>0 then begin
    qty01.Font.Color:=clRed;
    qty02.Font.Color:=clRed;
    qty03.Font.Color:=clRed;
    qty05.Font.Color:=clBlack;
    if query5.fieldbyname('sqty1').value+query5.fieldbyname('sqty2').value+query5.fieldbyname('sqty3').value+query5.fieldbyname('sqty4').value<query5.fieldbyname('qty').value
    then qty04.Font.Color:=clRed
    else if query5.fieldbyname('sqty1').value+query5.fieldbyname('sqty2').value+query5.fieldbyname('sqty3').value+query5.fieldbyname('sqty4').value=query5.fieldbyname('qty').value
    then qty04.Font.Color:=clBlack else qty04.Font.Color:=clGreen;
  end else if query5.fieldbyname('sqty3').value>0 then begin
    qty01.Font.Color:=clRed;
    qty02.Font.Color:=clRed;
    qty04.Font.Color:=clBlack;
    qty05.Font.Color:=clBlack;
    if query5.fieldbyname('sqty1').value+query5.fieldbyname('sqty2').value+query5.fieldbyname('sqty3').value<query5.fieldbyname('qty').value
    then qty03.Font.Color:=clRed
    else if query5.fieldbyname('sqty1').value+query5.fieldbyname('sqty2').value+query5.fieldbyname('sqty3').value=query5.fieldbyname('qty').value
    then qty03.Font.Color:=clBlack else qty03.Font.Color:=clGreen;
  end else if query5.fieldbyname('sqty2').value>0 then begin
    qty01.Font.Color:=clRed;
    qty03.Font.Color:=clBlack;
    qty04.Font.Color:=clBlack;
    qty05.Font.Color:=clBlack;
    if query5.fieldbyname('sqty1').value+query5.fieldbyname('sqty2').value<query5.fieldbyname('qty').value
    then qty02.Font.Color:=clRed
    else if query5.fieldbyname('sqty1').value+query5.fieldbyname('sqty2').value=query5.fieldbyname('qty').value
    then qty02.Font.Color:=clBlack else qty02.Font.Color:=clGreen;
  end else if query5.fieldbyname('sqty1').value>0 then begin
    qty02.Font.Color:=clBlack;
    qty03.Font.Color:=clBlack;
    qty04.Font.Color:=clBlack;
    qty05.Font.Color:=clBlack;
    if query5.fieldbyname('sqty1').value<query5.fieldbyname('qty').value
    then qty01.Font.Color:=clRed
    else if query5.fieldbyname('sqty1').value=query5.fieldbyname('qty').value
    then qty01.Font.Color:=clBlack else qty01.Font.Color:=clGreen;
  end;
end;

procedure Tfrmqnsum.ppGroupHeaderBand6BeforePrint(Sender: TObject);
begin
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select pdn5 from tbl_pdn_deldashboard where tm=:x1 and pdn5>''''';
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
    if not fieldbyname('pdn5').isnull then begin
      x4001.Visible:=true;x4002.Visible:=true;x4003.Visible:=true;x4004.Visible:=true;x4005.Visible:=true;x4006.Visible:=true;
    end else begin
      x4001.Visible:=false;x4002.Visible:=false;x4003.Visible:=false;x4004.Visible:=false;x4005.Visible:=false;x4006.Visible:=false;
    end;
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select pdn4 from tbl_pdn_deldashboard where tm=:x1 and pdn4>''''';
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
    if not fieldbyname('pdn4').isnull then begin
      x3001.Visible:=true;x3002.Visible:=true;x3003.Visible:=true;x3004.Visible:=true;x3005.Visible:=true;x3006.Visible:=true;
    end else begin
      x3001.Visible:=false;x3002.Visible:=false;x3003.Visible:=false;x3004.Visible:=false;x3005.Visible:=false;x3006.Visible:=false;
    end;
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select pdn3 from tbl_pdn_deldashboard where tm=:x1 and pdn3>''''';
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
    if not fieldbyname('pdn3').isnull then begin
      x2001.Visible:=true;x2002.Visible:=true;x2003.Visible:=true;x2004.Visible:=true;x2005.Visible:=true;x2006.Visible:=true;
    end else begin
      x2001.Visible:=false;x2002.Visible:=false;x2003.Visible:=false;x2004.Visible:=false;x2005.Visible:=false;x2006.Visible:=false;
    end;
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select pdn2 from tbl_pdn_deldashboard where tm=:x1 and pdn2>''''';
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
    if not fieldbyname('pdn2').isnull then begin
      x1001.Visible:=true;x1002.Visible:=true;x1003.Visible:=true;x1004.Visible:=true;x1005.Visible:=true;x1006.Visible:=true;
    end else begin
      x1001.Visible:=false;x1002.Visible:=false;x1003.Visible:=false;x1004.Visible:=false;x1005.Visible:=false;x1006.Visible:=false;
    end;
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select pdn1 from tbl_pdn_deldashboard where tm=:x1 and pdn1>''''';
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
    if not fieldbyname('pdn1').isnull then begin
      x0001.Visible:=true;x0002.Visible:=true;x0003.Visible:=true;x0004.Visible:=true;x0005.Visible:=true;x0006.Visible:=true;
    end else begin
      x0001.Visible:=false;x0002.Visible:=false;x0003.Visible:=false;x0004.Visible:=false;x0005.Visible:=false;x0006.Visible:=false;
    end;
  end;
end;

procedure Tfrmqnsum.ppDetailBand3BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s5,sum(eff2*(csect+ceot))/sum(csect+ceot) as s6 from line_shjs where substr(j_no,1,4)=:x1 and dt1>=:x2 and flag=''0'' and csect+ceot>0 and dt1<=:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asstring:=query6.fieldbyname('j_no').value;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s5').isnull then
    a0002.Caption:=formatfloat('0.00',fieldbyname('s5').value) else a0002.Caption:='0.00';
    if not fieldbyname('s6').isnull then
    a0003.Caption:=formatfloat('0.00',fieldbyname('s6').value) else a0003.Caption:='0.00';
    if strtofloat(a0003.caption)<strtofloat(a0002.caption) then a0003.Font.Color:=clRed else a0003.Font.Color:=clGreen;
  end;
  //a0004,a0005,a0006,a0007,a0008,a0009,a0010,a0011
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select min(a.rqxc) as a1,max(a.rqxc) as a2,min(a.qrxc) as a3,max(a.qrxc) as a4,min(a.tzlcrq) as a5,max(a.tzlcrq) as a6,min(a.yqlcrq) as a7,max(a.yqlcrq) as a8 '
                  +'from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq and substr(a.j_no,1,4)=:x1 and b.dt1>=:x2 and b.dt1<=:x3 and b.flag=''0''';
      if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if combobox3.text>'' then commandtext:=commandtext+' and a.j_no like '''+combobox3.text+'%''';
      if edit1.text>'' then commandtext:=commandtext+' and a.cstyle='''+edit1.text+'''';
      if edit2.text>'' then commandtext:=commandtext+' and a.acol='''+edit2.text+'''';
      params[0].asstring:=query6.fieldbyname('j_no').value;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      open;
    end;
    if not query3.fieldbyname('a1').isnull then begin
      a0004.Caption:=query3.fieldbyname('a1').asstring;
      if query3.fieldbyname('a1').value<0 then a0004.Font.Color:=clRed
      else if query3.fieldbyname('a1').value>0 then a0004.Font.Color:=clGreen
      else a0004.Font.color:=clBlack;
    end else begin
      a0004.Caption:='';
      a0004.Font.Color:=clBlack;
    end;
    if not query3.fieldbyname('a2').isnull then begin
      a0005.Caption:=query3.fieldbyname('a2').asstring;
      if query3.fieldbyname('a2').value<0 then a0005.Font.Color:=clRed
      else if query3.fieldbyname('a2').value>0 then a0005.Font.Color:=clGreen
      else a0005.Font.color:=clBlack;
    end else begin
      a0005.Caption:='';
      a0005.Font.Color:=clBlack;
    end;
    if not query3.fieldbyname('a3').isnull then begin
      if query3.fieldbyname('a3').value>0 then
      a0006.Caption:=query3.fieldbyname('a3').AsString
      else a0006.Caption:='--';
    end else a0006.Caption:='--';
    if not query3.fieldbyname('a4').isnull then begin
      if query3.fieldbyname('a4').value>0 then
      a0007.Caption:=query3.fieldbyname('a4').AsString
      else a0007.Caption:='--';
    end else a0007.Caption:='--';
    if not query3.fieldbyname('a5').isnull then
      a0008.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('a5').value)
    else a0008.Caption:='';
    if not query3.fieldbyname('a6').IsNull then
      a0009.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('a6').value)
    else a0009.Caption:='';
    if not query3.fieldbyname('a7').isnull then
      a0010.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('a7').value)
    else a0010.Caption:='';
    if not query3.fieldbyname('a8').IsNull then
      a0011.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('a8').value)
    else a0011.Caption:='';
end;

procedure Tfrmqnsum.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s1,sum(eff2*(csect+ceot))/sum(csect+ceot) as s2 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and csect+ceot>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;//date-1;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then b0002.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else b0002.Caption:='0.00';
    if not fieldbyname('s2').isnull then b0003.Caption:=formatfloat('0.00',fieldbyname('s2').value)
    else b0003.Caption:='0.00';
    if strtofloat(b0002.Caption)>strtofloat(b0003.Caption) then b0003.Font.Color:=clRed
    else if strtofloat(b0002.Caption)<strtofloat(b0003.Caption) then b0003.Font.Color:=clGreen
    else b0003.Font.Color:=clBlack;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
      commandtext:='select count(distinct cstyle) as c1,count(distinct j_no) as p2 '
                  +'from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;//date-1;
    params[1].asdate:=dateedit2.Date;
    open;
    b0001.Caption:='project :  '+fieldbyname('p2').asstring+'    '+'cust style :  '+fieldbyname('c1').asstring;
  end;
end;

procedure Tfrmqnsum.ppDetailBand4BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s5,sum(eff2*(csect+ceot))/sum(csect+ceot) as s6 from line_shjs where cstyle=:x1 and dt1>=:x2 and flag=''0'' and csect+ceot>0 and dt1<=:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asstring:=query7.fieldbyname('cstyle').value;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s5').isnull then
    a002.Caption:=formatfloat('0.00',fieldbyname('s5').value) else a002.Caption:='0.00';
    if not fieldbyname('s6').isnull then
    a003.Caption:=formatfloat('0.00',fieldbyname('s6').value) else a003.Caption:='0.00';
    if strtofloat(a003.caption)<strtofloat(a002.caption) then a003.Font.Color:=clRed else a003.Font.Color:=clGreen;
  end;
  //a004,a005,a006,a007,a008,a009,a010,a011
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select min(a.rqxc) as a1,max(a.rqxc) as a2,min(a.qrxc) as a3,max(a.qrxc) as a4,min(a.tzlcrq) as a5,max(a.tzlcrq) as a6,min(a.yqlcrq) as a7,max(a.yqlcrq) as a8 '
                  +'from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq and a.cstyle=:x1 and b.dt1>=:x2 and b.dt1<=:x3 and b.flag=''0''';
      if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if combobox3.text>'' then commandtext:=commandtext+' and a.j_no like '''+combobox3.text+'%''';
      if edit1.text>'' then commandtext:=commandtext+' and a.cstyle='''+edit1.text+'''';
      if edit2.text>'' then commandtext:=commandtext+' and a.acol='''+edit2.text+'''';
      params[0].asstring:=query7.fieldbyname('cstyle').value;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      open;
    end;
    if not query3.fieldbyname('a1').isnull then begin
      a004.Caption:=query3.fieldbyname('a1').asstring;
      if query3.fieldbyname('a1').value<0 then a004.Font.Color:=clRed
      else if query3.fieldbyname('a1').value>0 then a004.Font.Color:=clGreen
      else a004.Font.color:=clBlack;
    end else begin
      a004.Caption:='';
      a004.Font.Color:=clBlack;
    end;
    if not query3.fieldbyname('a2').isnull then begin
      a005.Caption:=query3.fieldbyname('a2').asstring;
      if query3.fieldbyname('a2').value<0 then a005.Font.Color:=clRed
      else if query3.fieldbyname('a2').value>0 then a005.Font.Color:=clGreen
      else a005.Font.color:=clBlack;
    end else begin
      a005.Caption:='';
      a005.Font.Color:=clBlack;
    end;
    if not query3.fieldbyname('a3').isnull then begin
      if query3.fieldbyname('a3').value>0 then
      a006.Caption:=query3.fieldbyname('a3').AsString
      else a006.Caption:='--';
    end else a006.Caption:='--';
    if not query3.fieldbyname('a4').isnull then begin
      if query3.fieldbyname('a4').value>0 then
      a007.Caption:=query3.fieldbyname('a4').AsString
      else a007.Caption:='--';
    end else a007.Caption:='--';
    if not query3.fieldbyname('a5').isnull then
      a008.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('a5').value)
    else a008.Caption:='';
    if not query3.fieldbyname('a6').IsNull then
      a009.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('a6').value)
    else a009.Caption:='';
    if not query3.fieldbyname('a7').isnull then
      a010.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('a7').value)
    else a010.Caption:='';
    if not query3.fieldbyname('a8').IsNull then
      a011.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('a8').value)
    else a011.Caption:='';
end;

procedure Tfrmqnsum.ppSummaryBand4BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s1,sum(eff2*(csect+ceot))/sum(csect+ceot) as s2 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and csect+ceot>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;//date-1;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then b002.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else b002.Caption:='0.00';
    if not fieldbyname('s2').isnull then b003.Caption:=formatfloat('0.00',fieldbyname('s2').value)
    else b003.Caption:='0.00';
    if strtofloat(b002.Caption)>strtofloat(b003.Caption) then b003.Font.Color:=clRed
    else if strtofloat(b002.Caption)<strtofloat(b003.Caption) then b003.Font.Color:=clGreen
    else b003.Font.Color:=clBlack;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
      commandtext:='select count(distinct cstyle) as c1 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
    if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
    params[0].asdate:=dateedit1.date;//date-1;
    params[1].asdate:=dateedit2.Date;
    open;
    b001.Caption:='cust style :  '+fieldbyname('c1').asstring;
  end;
end;

end.
 