unit wkfsum2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, ppStrtch, ppMemo, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, DB, DBClient, myChkBox, ppViewr, ppParameter;

type
  Tfrmwkfsum2 = class(TForm)
    Query1: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine10: TppLine;
    ppLine18: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLine19: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine22: TppLine;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLine46: TppLine;
    ppLabel17: TppLabel;
    ppLabel49: TppLabel;
    ppLine50: TppLine;
    ppLine55: TppLine;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLine58: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel11: TppLabel;
    ppLabel68: TppLabel;
    ppLabel71: TppLabel;
    ppLabel22: TppLabel;
    ppLine12: TppLine;
    ppLabel51: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLine14: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine70: TppLine;
    ppLine72: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel55: TppLabel;
    ppLine29: TppLine;
    ppLabel94: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel95: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine26: TppLine;
    ppLabel8: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel110: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLabel27: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel29: TppLabel;
    ppLabel32: TppLabel;
    ppLabel43: TppLabel;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel57: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine47: TppLine;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape10: TppShape;
    ppShape7: TppShape;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine34: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine51: TppLine;
    ppLine57: TppLine;
    ppDBText22: TppDBText;
    ppDBText26: TppDBText;
    ppLine64: TppLine;
    ppDBText27: TppDBText;
    ppDBText31: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText6: TppDBText;
    ppDBText29: TppDBText;
    ppLine71: TppLine;
    ppDBText7: TppDBText;
    ppDBText35: TppDBText;
    ppLine73: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine24: TppLine;
    ppDBText11: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText1: TppDBText;
    ppLine33: TppLine;
    ppLine15: TppLine;
    ppLine20: TppLine;
    ppDBText5: TppDBText;
    ppShape5: TppShape;
    cwfttl01: TppLabel;
    cwfdiff01: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    swf003: TppLabel;
    swf004: TppLabel;
    swf005: TppLabel;
    mwf002: TppLabel;
    mwf003: TppLabel;
    avg001: TppLabel;
    avg002: TppLabel;
    avg003: TppLabel;
    avg004: TppLabel;
    avg005: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    mc002: TppLabel;
    ppDBCalc4: TppDBCalc;
    swf007: TppLabel;
    avg006: TppLabel;
    avg007: TppLabel;
    ppDBCalc5: TppDBCalc;
    mwf006: TppLabel;
    tswf003: TppLabel;
    tswf004: TppLabel;
    ppShape2: TppShape;
    ttl001: TppLabel;
    ppMemo1: TppMemo;
    ppDBCalc3: TppDBCalc;
    ppShape3: TppShape;
    ppMemo2: TppMemo;
    ppDBCalc6: TppDBCalc;
    ppShape11: TppShape;
    ppMemo3: TppMemo;
    tlwf001: TppLabel;
    lwf001: TppLabel;
    tcwf001: TppLabel;
    cwf001: TppLabel;
    cwf002: TppLabel;
    tcwf002: TppLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ppLabel58: TppLabel;
    dt0001: TppLabel;
    ppLabel59: TppLabel;
    dt0002: TppLabel;
    mychk01: TmyCheckBox;
    ppLabel62: TppLabel;
    wk001: TppLabel;
    ppLabel63: TppLabel;
    wk002: TppLabel;
    mychk02: TmyCheckBox;
    ppLabel64: TppLabel;
    mon001: TppLabel;
    ppLabel65: TppLabel;
    mon002: TppLabel;
    mychk03: TmyCheckBox;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape6: TppShape;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    swf0003: TppLabel;
    swf0004: TppLabel;
    swf0005: TppLabel;
    mwf0002: TppLabel;
    mwf0003: TppLabel;
    avg0001: TppLabel;
    avg0002: TppLabel;
    avg0003: TppLabel;
    avg0004: TppLabel;
    avg0005: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    mc0002: TppLabel;
    ppDBCalc18: TppDBCalc;
    swf0007: TppLabel;
    avg0006: TppLabel;
    avg0007: TppLabel;
    ppDBCalc19: TppDBCalc;
    mwf0006: TppLabel;
    tswf0003: TppLabel;
    tswf0004: TppLabel;
    ttl0001: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    tlwf0001: TppLabel;
    lwf0001: TppLabel;
    tcwf0001: TppLabel;
    cwf0001: TppLabel;
    cwf0002: TppLabel;
    tcwf0002: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel18: TppLabel;
    tdiff001: TppLabel;
    diff001: TppLabel;
    tdiff0001: TppLabel;
    diff0001: TppLabel;
    title001: TppLabel;
    ppLabel1: TppLabel;
    ppLabel47: TppLabel;
    title002: TppLabel;
    ppLabel69: TppLabel;
    peff001: TppLabel;
    ttl002: TppLabel;
    ppLabel70: TppLabel;
    peff0001: TppLabel;
    ttl0002: TppLabel;
    ppLabel72: TppLabel;
    peff002: TppLabel;
    ppLabel73: TppLabel;
    peff0002: TppLabel;
    ppLabel74: TppLabel;
    ttlmwf001: TppLabel;
    ppLabel76: TppLabel;
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwkfsum2: Tfrmwkfsum2;

implementation

uses mainformu, wkfformu;

{$R *.dfm}

procedure Tfrmwkfsum2.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,f11,p1,p2,p3,fn03:double;
  s1,s2,s3,s4:string;
  lt1,p4:double;
  dt1,dt2:tdate;
begin
  s1:='';s2:='';s3:='';s4:='';
  dt1:=dateedit1.date;
  dt2:=dateedit2.date;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('p2').isnull then s1:='project:  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style:  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line:  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN:  '+fieldbyname('s4').asstring+'    ';
  end;
  ttl0001.Caption:=s1+s2+s3+s4;
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;f06:=0;f07:=0;f08:=0;f09:=0;f10:=0;f11:=0;fn03:=0;

  with frmwkf.query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdtrs*(asect+csect))/sum(asect+csect) as gsdtrs,sum(cwfttl*(asect+csect))/sum(asect+csect) as cwfttl,'
                +'sum(cwfdiff*(asect+csect))/sum(asect+csect) as cwfdiff,sum(bwf*(asect+csect))/sum(asect+csect) as bwf,sum(bwfs*(asect+csect))/sum(asect+csect) as bwfs,'
                +'sum(bwfn*(asect+csect))/sum(asect+csect) as bwfn,sum(bwfa*(asect+csect))/sum(asect+csect) as bwfa,sum(bwfttl*(asect+csect))/sum(asect+csect) as bwfttl,'
                +'sum(mwflb*(asect+csect))/sum(asect+csect) as mwflb,sum(mwfttl*(asect+csect))/sum(asect+csect) as mwfttl,'
                +'sum(cwfttlc*(asect+csect))/sum(asect+csect) as cwfttlc,sum(cwfdiffc*(asect+csect))/sum(asect+csect) as cwfdiffc,sum(mwfttlc*(asect+csect))/sum(asect+csect) as mwfttlc '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect+csect>0';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    commandtext:=commandtext+' group by pline';
    //commandtext:='select distinct pline,gsdtrs,cwfttl,cwfdiff,bwf,bwfs,bwfn,bwfa,bwfttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect+csect>0';
    //commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f01:=f01+fieldbyname('gsdtrs').value;
      f02:=f02+fieldbyname('cwfttl').value;
      f03:=f03+fieldbyname('cwfdiff').value;
      if fieldbyname('cwfdiff').value+fieldbyname('bwfa').value<0 then
      fn03:=fn03+fieldbyname('cwfdiff').value+fieldbyname('bwfa').value;
      f04:=f04+fieldbyname('bwf').value;
      f05:=f05+fieldbyname('bwfs').value;
      f06:=f06+fieldbyname('bwfn').value;
      f07:=f07+fieldbyname('bwfa').value;
      f08:=f08+fieldbyname('bwfttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with frmwkf.query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdm*asect)/sum(asect) as gsdm,sum(gsdmttl*asect)/sum(asect) as gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with frmwkf.query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,gsdm,gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect=0 and csect>0';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  tlwf0001.Caption:=formatfloat('#0.0',f01);
  tcwf0001.Caption:=formatfloat('#0.0',f02+f07);
  tcwf0002.Caption:=formatfloat('#0.0',f03+f07);
  tswf0003.Caption:=formatfloat('#0.0',f07);
  tswf0004.Caption:=formatfloat('#0.0',f08);
  tdiff0001.Caption:=formatfloat('+#0.0;-#0.0',fn03);

  lt1:=0;
  with frmwkf.Query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(a.ltc_d) as ltc_d1 from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq and b.flag=''0'' and b.dt1>=:x1 and b.dt1<=:x2 and ((a.ltc_ksrq>=b.dt1 and a.ltc_ksrq<=b.dt1) or (a.ltc_ksrq<b.dt1 and a.cfwcrq=b.dt1))';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('ltc_d1').isnull then lt1:=fieldbyname('ltc_d1').value;
  end;

  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(gsdtrs*(asect))/sum(asect) as lwf1,sum(gsdbn*(asect))/sum(asect) as lwf2,'
                +'sum(gsdttl*(asect))/sum(asect) as lwf3,sum(bwf*(asect))/sum(asect) as swf1,sum(bwfs*(asect))/sum(asect) as swf2,'
                +'sum(bwfa*(asect))/sum(asect) as swf3,sum(bwfttl*(asect))/sum(asect) as swf4,sum(bwfa1*(asect))/sum(asect) as swf5,'
                +'sum(mwflb*(asect))/sum(asect) as mwf1,sum(mwfa*(asect))/sum(asect) as mwf2,sum(mwfbn*(asect))/sum(asect) as mwf3,'
                +'sum(mwfttl*(asect))/sum(asect) as mwf4,sum(lbwf1*(asect))/sum(asect) as avg1,sum(lbwf2*(asect))/sum(asect) as avg2,'
                +'sum(eff1*(asect))/sum(asect) as avg3,sum(eff2*(asect))/sum(asect) as avg4,sum(dbxl*(csect+asect))/sum(csect+asect) as avg5,'
                +'sum(bwfn*(asect))/sum(asect) as swf6,sum(mwfs*(asect))/sum(asect) as mwf5,sum((cwfttl+bwfa)*(asect))/sum(asect) as cwf1,'
                +'sum((cwfdiff+bwfa)*(asect))/sum(asect) as cwf2,sum(ulb*(asect))/sum(asect) as avg6,sum(gsdm*(asect))/sum(asect) as mc1,'
                +'sum(gsdmbn*(asect))/sum(asect) as mc2,sum(gsdmttl*(asect))/sum(asect) as mc3,sum(bwfac*(asect))/sum(asect) as swf7,'
                +'sum(mwfac*(asect))/sum(asect) as mwf6,sum(ulbac*(asect))/sum(asect) as avg7,sum(gsdmdiff*(asect))/sum(asect) as mc4 '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('lwf1').isnull then lwf0001.Caption:=formatfloat('0.00',fieldbyname('lwf1').value) else lwf0001.Caption:='0.00';
    if not fieldbyname('swf3').isnull then swf0003.Caption:=formatfloat('0.00',fieldbyname('swf3').value) else swf0003.Caption:='0.00';
    if not fieldbyname('swf4').isnull then swf0004.Caption:=formatfloat('0.00',fieldbyname('swf4').value) else swf0004.Caption:='0.00';
    if not fieldbyname('swf5').isnull then swf0005.Caption:=formatfloat('0.00',fieldbyname('swf5').value) else swf0005.Caption:='0.00';
    if not fieldbyname('swf7').isnull then swf0007.Caption:=formatfloat('0.00',fieldbyname('swf7').value) else swf0007.Caption:='0.00';
    if not fieldbyname('mwf2').isnull then mwf0002.Caption:=formatfloat('0.00',fieldbyname('mwf2').value) else mwf0002.Caption:='0.00';
    if not fieldbyname('mwf3').isnull then mwf0003.Caption:=formatfloat('0.00',fieldbyname('mwf3').value) else mwf0003.Caption:='0.00';
    if not fieldbyname('mwf6').isnull then mwf0006.Caption:=formatfloat('0.00',fieldbyname('mwf6').value) else mwf0006.Caption:='0.00';
    if not fieldbyname('cwf1').isnull then cwf0001.Caption:=formatfloat('0.00',fieldbyname('cwf1').value) else cwf0001.Caption:='0.00';
    if not fieldbyname('cwf2').isnull then cwf0002.Caption:=formatfloat('0.00',fieldbyname('cwf2').value) else cwf0002.Caption:='0.00';
    if not fieldbyname('avg1').isnull then avg0001.Caption:=formatfloat('0.00',fieldbyname('avg1').value) else avg0001.Caption:='0.00';
    if not fieldbyname('avg2').isnull then avg0002.Caption:=formatfloat('0.00',fieldbyname('avg2').value) else avg0002.Caption:='0.00';
    if not fieldbyname('avg3').isnull then avg0003.Caption:=formatfloat('0.00',fieldbyname('avg3').value) else avg0003.Caption:='0.00';
    if not fieldbyname('avg4').isnull then avg0004.Caption:=formatfloat('0.00',fieldbyname('avg4').value) else avg0004.Caption:='0.00';
    //if not fieldbyname('avg5').isnull then avg0005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg0005.Caption:='0.00';
    if not fieldbyname('avg6').isnull then avg0006.Caption:=formatfloat('0.00',fieldbyname('avg6').value) else avg0006.Caption:='0.00';
    if not fieldbyname('avg7').isnull then avg0007.Caption:=formatfloat('0.00',fieldbyname('avg7').value) else avg0007.Caption:='0.00';
    if not fieldbyname('mc2').isnull then mc0002.Caption:=formatfloat('0.00',fieldbyname('mc2').value) else mc0002.Caption:='0.00';
    if fieldbyname('avg3').value>fieldbyname('avg4').value then avg0004.Font.Color:=clRed
    else if fieldbyname('avg3').value=fieldbyname('avg4').value then avg0004.Font.Color:=clBlack
    else avg0004.Font.Color:=clGreen;
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(dbxl*(csect))/sum(csect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and csect>0';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('avg5').isnull then avg0005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg0005.Caption:='0.00';
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff2*asect)/sum(asect) as s1,sum(asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum((cwfdiff+bwf)*(asect))/sum(asect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0 and cwfdiff+bwfa<0';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('avg5').isnull then diff0001.Caption:=formatfloat('+#0.00;-#0.00',fieldbyname('avg5').value) else diff0001.Caption:='0.00';
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(msect-asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s2').isnull then p4:=fieldbyname('s2').value else p4:=0;
  end;
  p3:=0;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,tsect,dt1 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and tplant='''+frmwkf.query1.fieldbyname('tplant').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      p3:=p3+fieldbyname('tsect').value;
      application.ProcessMessages;
      next;
    end;
  end;
  ttl0002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3);//+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  if p3>0 then begin
    peff0001.Caption:=formatfloat('0.00',p1*p2/p3);
    if p1*p2/p3>82.45 then peff0001.Font.Color:=clGreen
    else if p1*p2/p3=82.45 then peff0001.Font.Color:=clBlack
    else peff0001.Font.Color:=clRed;
    peff0002.Caption:=formatfloat('0.00',p2*100.0/p3);
    if p2*100.0/p3>97.0 then peff0002.Font.Color:=clGreen
    else if p2*100.0/p3=97.0 then peff0002.Font.Color:=clBlack
    else peff0002.Font.Color:=clRed;
  end else begin
    peff0001.Caption:='0.00';
    peff0001.Font.Color:=clRed;
    peff0002.Caption:='0.00';
    peff0002.Font.Color:=clRed;
  end;

  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select count(*) as cnt from tblswfid where tplant=:x1 and smf=''2''';
    params[0].asstring:=frmwkf.Query1.fieldbyname('tplant').value;
    open;
    ttlmwf001.Caption:=fieldbyname('cnt').asstring;
  end;
end;

procedure Tfrmwkfsum2.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,f11,p1,p2,p3,fn03:double;
  s1,s2,s3,s4:string;
  lt1,p4:double;
  dt1,dt2:tdate;
begin
  s1:='';s2:='';s3:='';s4:='';
  dt1:=dateedit1.date;
  dt2:=dateedit2.date;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('p2').isnull then s1:='project:  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style:  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line:  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN:  '+fieldbyname('s4').asstring+'    ';
  end;
  ttl001.Caption:=s1+s2+s3+s4;
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;f06:=0;f07:=0;f08:=0;f09:=0;f10:=0;f11:=0;fn03:=0;

  with frmwkf.query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdtrs*(asect+csect))/sum(asect+csect) as gsdtrs,sum(cwfttl*(asect+csect))/sum(asect+csect) as cwfttl,'
                +'sum(cwfdiff*(asect+csect))/sum(asect+csect) as cwfdiff,sum(bwf*(asect+csect))/sum(asect+csect) as bwf,sum(bwfs*(asect+csect))/sum(asect+csect) as bwfs,'
                +'sum(bwfn*(asect+csect))/sum(asect+csect) as bwfn,sum(bwfa*(asect+csect))/sum(asect+csect) as bwfa,sum(bwfttl*(asect+csect))/sum(asect+csect) as bwfttl,'
                +'sum(mwflb*(asect+csect))/sum(asect+csect) as mwflb,sum(mwfttl*(asect+csect))/sum(asect+csect) as mwfttl,'
                +'sum(cwfttlc*(asect+csect))/sum(asect+csect) as cwfttlc,sum(cwfdiffc*(asect+csect))/sum(asect+csect) as cwfdiffc,sum(mwfttlc*(asect+csect))/sum(asect+csect) as mwfttlc '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect+csect>0';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    commandtext:=commandtext+' group by pline';
    //commandtext:='select distinct pline,gsdtrs,cwfttl,cwfdiff,bwf,bwfs,bwfn,bwfa,bwfttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect+csect>0';
    //commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f01:=f01+fieldbyname('gsdtrs').value;
      f02:=f02+fieldbyname('cwfttl').value;
      f03:=f03+fieldbyname('cwfdiff').value;
      if fieldbyname('cwfdiff').value+fieldbyname('bwfa').value<0 then
      fn03:=fn03+fieldbyname('cwfdiff').value+fieldbyname('bwfa').value;
      f04:=f04+fieldbyname('bwf').value;
      f05:=f05+fieldbyname('bwfs').value;
      f06:=f06+fieldbyname('bwfn').value;
      f07:=f07+fieldbyname('bwfa').value;
      f08:=f08+fieldbyname('bwfttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with frmwkf.query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdm*asect)/sum(asect) as gsdm,sum(gsdmttl*asect)/sum(asect) as gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with frmwkf.query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,gsdm,gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect=0 and csect>0';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  tlwf001.Caption:=formatfloat('#0.0',f01);
  tcwf001.Caption:=formatfloat('#0.0',f02+f07);
  tcwf002.Caption:=formatfloat('#0.0',f03+f07);
  tswf003.Caption:=formatfloat('#0.0',f07);
  tswf004.Caption:=formatfloat('#0.0',f08);
  tdiff001.Caption:=formatfloat('+#0.0;-#0.0',fn03);

  lt1:=0;
  with frmwkf.Query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(a.ltc_d) as ltc_d1 from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq and b.flag=''0'' and b.dt1>=:x1 and b.dt1<=:x2 and ((a.ltc_ksrq>=b.dt1 and a.ltc_ksrq<=b.dt1) or (a.ltc_ksrq<b.dt1 and a.cfwcrq=b.dt1))';
    commandtext:=commandtext+' and b.tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('ltc_d1').isnull then lt1:=fieldbyname('ltc_d1').value;
  end;

  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(gsdtrs*(asect))/sum(asect) as lwf1,sum(gsdbn*(asect))/sum(asect) as lwf2,'
                +'sum(gsdttl*(asect))/sum(asect) as lwf3,sum(bwf*(asect))/sum(asect) as swf1,sum(bwfs*(asect))/sum(asect) as swf2,'
                +'sum(bwfa*(asect))/sum(asect) as swf3,sum(bwfttl*(asect))/sum(asect) as swf4,sum(bwfa1*(asect))/sum(asect) as swf5,'
                +'sum(mwflb*(asect))/sum(asect) as mwf1,sum(mwfa*(asect))/sum(asect) as mwf2,sum(mwfbn*(asect))/sum(asect) as mwf3,'
                +'sum(mwfttl*(asect))/sum(asect) as mwf4,sum(lbwf1*(asect))/sum(asect) as avg1,sum(lbwf2*(asect))/sum(asect) as avg2,'
                +'sum(eff1*(asect))/sum(asect) as avg3,sum(eff2*(asect))/sum(asect) as avg4,sum(dbxl*(csect+asect))/sum(csect+asect) as avg5,'
                +'sum(bwfn*(asect))/sum(asect) as swf6,sum(mwfs*(asect))/sum(asect) as mwf5,sum((cwfttl+bwfa)*(asect))/sum(asect) as cwf1,'
                +'sum((cwfdiff+bwfa)*(asect))/sum(asect) as cwf2,sum(ulb*(asect))/sum(asect) as avg6,sum(gsdm*(asect))/sum(asect) as mc1,'
                +'sum(gsdmbn*(asect))/sum(asect) as mc2,sum(gsdmttl*(asect))/sum(asect) as mc3,sum(bwfac*(asect))/sum(asect) as swf7,'
                +'sum(mwfac*(asect))/sum(asect) as mwf6,sum(ulbac*(asect))/sum(asect) as avg7,sum(gsdmdiff*(asect))/sum(asect) as mc4 '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('lwf1').isnull then lwf001.Caption:=formatfloat('0.00',fieldbyname('lwf1').value) else lwf001.Caption:='0.00';
    if not fieldbyname('swf3').isnull then swf003.Caption:=formatfloat('0.00',fieldbyname('swf3').value) else swf003.Caption:='0.00';
    if not fieldbyname('swf4').isnull then swf004.Caption:=formatfloat('0.00',fieldbyname('swf4').value) else swf004.Caption:='0.00';
    if not fieldbyname('swf5').isnull then swf005.Caption:=formatfloat('0.00',fieldbyname('swf5').value) else swf005.Caption:='0.00';
    if not fieldbyname('swf7').isnull then swf007.Caption:=formatfloat('0.00',fieldbyname('swf7').value) else swf007.Caption:='0.00';
    if not fieldbyname('mwf2').isnull then mwf002.Caption:=formatfloat('0.00',fieldbyname('mwf2').value) else mwf002.Caption:='0.00';
    if not fieldbyname('mwf3').isnull then mwf003.Caption:=formatfloat('0.00',fieldbyname('mwf3').value) else mwf003.Caption:='0.00';
    if not fieldbyname('mwf6').isnull then mwf006.Caption:=formatfloat('0.00',fieldbyname('mwf6').value) else mwf006.Caption:='0.00';
    if not fieldbyname('cwf1').isnull then cwf001.Caption:=formatfloat('0.00',fieldbyname('cwf1').value) else cwf001.Caption:='0.00';
    if not fieldbyname('cwf2').isnull then cwf002.Caption:=formatfloat('0.00',fieldbyname('cwf2').value) else cwf002.Caption:='0.00';
    if not fieldbyname('avg1').isnull then avg001.Caption:=formatfloat('0.00',fieldbyname('avg1').value) else avg001.Caption:='0.00';
    if not fieldbyname('avg2').isnull then avg002.Caption:=formatfloat('0.00',fieldbyname('avg2').value) else avg002.Caption:='0.00';
    if not fieldbyname('avg3').isnull then avg003.Caption:=formatfloat('0.00',fieldbyname('avg3').value) else avg003.Caption:='0.00';
    if not fieldbyname('avg4').isnull then avg004.Caption:=formatfloat('0.00',fieldbyname('avg4').value) else avg004.Caption:='0.00';
    //if not fieldbyname('avg5').isnull then avg005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg005.Caption:='0.00';
    if not fieldbyname('avg6').isnull then avg006.Caption:=formatfloat('0.00',fieldbyname('avg6').value) else avg006.Caption:='0.00';
    if not fieldbyname('avg7').isnull then avg007.Caption:=formatfloat('0.00',fieldbyname('avg7').value) else avg007.Caption:='0.00';
    if not fieldbyname('mc2').isnull then mc002.Caption:=formatfloat('0.00',fieldbyname('mc2').value) else mc002.Caption:='0.00';
    if fieldbyname('avg3').value>fieldbyname('avg4').value then avg004.Font.Color:=clRed
    else if fieldbyname('avg3').value=fieldbyname('avg4').value then avg004.Font.Color:=clBlack
    else avg004.Font.Color:=clGreen;
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(dbxl*(csect))/sum(csect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and csect>0';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('avg5').isnull then avg005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg005.Caption:='0.00';
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff2*asect)/sum(asect) as s1,sum(asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum((cwfdiff+bwf)*(asect))/sum(asect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0 and cwfdiff+bwfa<0';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('avg5').isnull then diff001.Caption:=formatfloat('+#0.00;-#0.00',fieldbyname('avg5').value) else diff001.Caption:='0.00';
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(msect-asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s2').isnull then p4:=fieldbyname('s2').value else p4:=0;
  end;
  p3:=0;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,tsect,dt1 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and tshop='''+frmwkf.query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      p3:=p3+fieldbyname('tsect').value;
      application.ProcessMessages;
      next;
    end;
  end;
  ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3);//+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  if p3>0 then begin
    peff001.Caption:=formatfloat('0.00',p1*p2/p3);
    if p1*p2/p3>82.45 then peff001.Font.Color:=clGreen
    else if p1*p2/p3=82.45 then peff001.Font.Color:=clBlack
    else peff001.Font.Color:=clRed;
    peff002.Caption:=formatfloat('0.00',p2*100.0/p3);
    if p2*100.0/p3>97.0 then peff002.Font.Color:=clGreen
    else if p2*100.0/p3=97.0 then peff002.Font.Color:=clBlack
    else peff002.Font.Color:=clRed;
  end else begin
    peff001.Caption:='0.00';
    peff001.Font.Color:=clRed;
    peff002.Caption:='0.00';
    peff002.Font.Color:=clRed;
  end;
end;

procedure Tfrmwkfsum2.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 