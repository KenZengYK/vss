unit wkf02formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppStrtch, ppMemo, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  ppViewr, ppParameter;

type
  Tfrmwkf02 = class(TForm)
    Query1: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel3: TppLabel;
    shop001: TppLabel;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLine10: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine44: TppLine;
    ppLabel47: TppLabel;
    ppLine46: TppLine;
    ppLine50: TppLine;
    ppLine55: TppLine;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel11: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLine66: TppLine;
    ppLine68: TppLine;
    ppLabel70: TppLabel;
    ppLabel74: TppLabel;
    ppLabel18: TppLabel;
    dt001: TppLabel;
    ppLabel22: TppLabel;
    ppLabel94: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel95: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine26: TppLine;
    ppLabel8: TppLabel;
    ppLabel98: TppLabel;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel107: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel23: TppLabel;
    ppLine11: TppLine;
    ppLabel27: TppLabel;
    title001: TppLabel;
    ppLabel1: TppLabel;
    ppLabel64: TppLabel;
    title002: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine47: TppLine;
    ppShape10: TppShape;
    ppShape7: TppShape;
    ppLine30: TppLine;
    ppLine34: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine51: TppLine;
    ppLine57: TppLine;
    ppDBText22: TppDBText;
    ppDBText26: TppDBText;
    ppLine64: TppLine;
    ppDBText27: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText29: TppDBText;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText1: TppDBText;
    ppLine15: TppLine;
    phase001: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBCalc1: TppDBCalc;
    avg003: TppLabel;
    avg004: TppLabel;
    ppDBCalc17: TppDBCalc;
    avg006: TppLabel;
    ppLine13: TppLine;
    ppShape2: TppShape;
    ttl001: TppLabel;
    ppMemo1: TppMemo;
    ppDBCalc3: TppDBCalc;
    ppShape3: TppShape;
    ppMemo2: TppMemo;
    ppDBCalc6: TppDBCalc;
    ppShape11: TppShape;
    ppMemo3: TppMemo;
    ppLabel65: TppLabel;
    peff001: TppLabel;
    ttl002: TppLabel;
    ppLabel66: TppLabel;
    peff002: TppLabel;
    ppLabel67: TppLabel;
    ttlmwf001: TppLabel;
    Query2: TClientDataSet;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLabel5: TppLabel;
    ppLabel13: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine12: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine14: TppLine;
    ppLabel32: TppLabel;
    ppLine16: TppLine;
    ppLabel33: TppLabel;
    ppLine17: TppLine;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel42: TppLabel;
    ppLine18: TppLine;
    ppLine20: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel48: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine25: TppLine;
    ppLabel53: TppLabel;
    ppLabel55: TppLabel;
    ppLine28: TppLine;
    ppLabel57: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    diff02: TppLabel;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    tlwf001: TppLabel;
    lwf001: TppLabel;
    tswf003: TppLabel;
    swf003: TppLabel;
    ppDBCalc12: TppDBCalc;
    mwf002: TppLabel;
    ppDBCalc13: TppDBCalc;
    mwf003: TppLabel;
    tcwf002: TppLabel;
    cwf002: TppLabel;
    tdiff001: TppLabel;
    diff001: TppLabel;
    ppDBCalc21: TppDBCalc;
    mc002: TppLabel;
    cwfttl01: TppLabel;
    cwfdiff01: TppLabel;
    diff01: TppLabel;
    tcwf001: TppLabel;
    cwf001: TppLabel;
    ppDBText5: TppDBText;
    tmwflb001: TppLabel;
    mwflb001: TppLabel;
    tgsdm001: TppLabel;
    gsdm001: TppLabel;
    tgsdmttl001: TppLabel;
    gsdmttl001: TppLabel;
    tdiff002: TppLabel;
    diff002: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    gr01: TppLabel;
    gr02: TppLabel;
    bwfa001: TppLabel;
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwkf02: Tfrmwkf02;

implementation

uses mainformu, wkfformu;

{$R *.dfm}

procedure Tfrmwkf02.ppSummaryBand1BeforePrint(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,f11,p1,p2,p3,mf01,mf04,cf03,cf04,mf07,fn03:double;
  str1,str2:string;
  s1,s2,s3,s4,s5:string;
  lt1,p4,p5,x0:double;
  dt1,dt2:tdate;
begin
  s1:='';s2:='';s3:='';s4:='';s5:='';
  dt1:=frmwkf.DateEdit1.date;
  dt2:=frmwkf.DateEdit1.Date;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                +'from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('p2').isnull then s1:='project:  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style:  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line:  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN:  '+fieldbyname('s4').asstring+'    ';
    if not fieldbyname('s5').isnull then s5:='Clr :  '+fieldbyname('s5').asstring+'    ';
  end;
  ttl001.Caption:=s1+s2+s3+s4+s5;
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;f06:=0;f07:=0;f08:=0;f09:=0;f10:=0;f11:=0;mf01:=0;mf04:=0;mf07:=0;cf03:=0;cf04:=0;fn03:=0;

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
    //commandtext:='select distinct pline,gsdtrs,cwfttl,cwfdiff,bwf,bwfs,bwfn,bwfa,bwfttl,mwflb,mwfttl,cwfttlc,cwfdiffc,mwfttlc from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect+csect>0';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f01:=f01+fieldbyname('gsdtrs').value;
      f02:=f02+fieldbyname('cwfttl').value;
      f03:=f03+fieldbyname('cwfdiff').value;
      if fieldbyname('cwfdiff').value+fieldbyname('bwfa').value<0 then fn03:=fn03+fieldbyname('cwfdiff').value+fieldbyname('bwfa').value;
      f04:=f04+fieldbyname('bwf').value;
      f05:=f05+fieldbyname('bwfs').value;
      f06:=f06+fieldbyname('bwfn').value;
      f07:=f07+fieldbyname('bwfa').value;
      f08:=f08+fieldbyname('bwfttl').value;
      mf01:=mf01+fieldbyname('mwflb').value;
      mf04:=mf04+fieldbyname('mwfttl').value;
      mf07:=mf07+fieldbyname('mwfttlc').value;
      cf03:=cf03+fieldbyname('cwfttlc').value;
      cf04:=cf04+fieldbyname('cwfdiffc').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with frmwkf.query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdm*(asect))/sum(asect) as gsdm,sum(gsdmttl*(asect))/sum(asect) as gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      if fieldbyname('gsdmttl').value<fieldbyname('gsdm').value then
      f11:=f11+fieldbyname('gsdmttl').value-fieldbyname('gsdm').value;
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
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      if fieldbyname('gsdmttl').value<fieldbyname('gsdm').value then
      f11:=f11+fieldbyname('gsdmttl').value-fieldbyname('gsdm').value;
      application.ProcessMessages;
      next;
    end;
  end;

  x0:=0;
  with frmwkf.query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,p1 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      x0:=x0+fieldbyname('p1').value;
      application.ProcessMessages;
      next;
    end;
  end;
  gr01.Caption:=formatfloat('0.0',x0);
  gr02.Caption:=formatfloat('0.0',x0);

  tlwf001.Caption:=formatfloat('#0.0',f01);
  tcwf001.Caption:=formatfloat('#0.0',f02+f07);
  tcwf002.Caption:=formatfloat('#0.0',f03+f07);
  tswf003.Caption:=formatfloat('#0.0',f07);
  //tswf004.Caption:=formatfloat('#0.0',f08);
  tdiff001.Caption:=formatfloat('+#0.0;-#0.0',fn03);
  tdiff002.Caption:=formatfloat('#0',f11);
  tmwflb001.Caption:=formatfloat('#0.0',mf01);
  tgsdm001.Caption:=formatfloat('#0',f09);
  tgsdmttl001.Caption:=formatfloat('#0',f10);

  ppMemo1.Lines.Clear;
  ppMemo1.Lines.add('Linkage Time(LT):');
  lt1:=0;
  p5:=0;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select csect from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=frmwkf.query1.fieldbyname('pline').value;
    params[1].asdate:=frmwkf.query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('csect').isnull then p5:=fieldbyname('csect').value else p5:=0;
  end;
  //try
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x0',ptinput);
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftfloat,'x3',ptinput);
    commandtext:='select distinct pline,seq from tblshedule where ltc_ksrq=:x0';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    commandtext:=commandtext+' union select distinct pline,max(seq) as seq from tblshedule b where ((cfwcrq=:x1) or (ltc_ksrq=:x2)) and cfwcjs<:x3';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    commandtext:=commandtext+' and (ltc_ksrq is not null) group by pline';
    params[0].asdate:=frmwkf.Query1.fieldbyname('dt1').value;
    params[1].asdate:=frmwkf.Query1.fieldbyname('dt1').value;
    params[2].asdate:=frmwkf.Query1.fieldbyname('dt1').value;
    params[3].asfloat:=p5;
    open;
    first;
    while not eof do begin
      with frmwkf.Query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        commandtext:='select a.ltc_d,a.cfwcrq,a.cfwcjs,a.ltc_ksrq,a.ltc_ksjs,a.flag3,b.lst1 from tblshedule a,line_shjs b '
                    +'where a.pline=b.pline and a.seq=b.seq and a.pline=:x1 and seq=:x2 and b.flag=''0'' '
                    +'and b.dt1=:x3 and ((a.ltc_ksrq=b.dt1) or (a.ltc_ksrq<b.dt1 and a.cfwcrq=b.dt1))';
        params[0].asstring:=frmwkf.query2.fieldbyname('pline').value;
        params[1].asinteger:=frmwkf.query2.fieldbyname('seq').value;
        params[2].asdate:=frmwkf.Query1.fieldbyname('dt1').value;
        open;
        if not fieldbyname('lst1').isnull then str2:=fieldbyname('lst1').value else str2:='c';
        if not fieldbyname('flag3').isnull then begin
          if pos('x',fieldbyname('flag3').value)>0 then str2:='x';
        end;
        if not fieldbyname('ltc_d').isnull then begin
          lt1:=lt1+fieldbyname('ltc_d').value;
          str1:=frmwkf.query2.fieldbyname('pline').value+':  LT'+str2+' = '+formatfloat('0.0',fieldbyname('ltc_d').value)+' sect hr';
          str1:=str1+'  (from '+formatdatetime('yy/MM/dd',fieldbyname('cfwcrq').value)+'  '+formatfloat('0.0',fieldbyname('cfwcjs').value)+' sect hr';
          str1:=str1+'  to '+formatdatetime('yy/MM/dd',fieldbyname('ltc_ksrq').value)+'  '+formatfloat('0.0',fieldbyname('ltc_ksjs').value)+' sect hr)';
          ppmemo1.Lines.add(str1);
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //ppMemo1.Lines.add('Total Linkage Time: '+formatfloat('0.0',lt1));
  //
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(gsdtrs*(asect+csect))/sum(asect+csect) as lwf1,sum(gsdbn*(asect+csect))/sum(asect+csect) as lwf2,'
                +'sum(gsdttl*(asect+csect))/sum(asect+csect) as lwf3,sum(bwf*(asect+csect))/sum(asect+csect) as swf1,sum(bwfs*(asect+csect))/sum(asect+csect) as swf2,'
                +'sum(bwfa*(asect+csect))/sum(asect+csect) as swf3,sum(bwfttl*(asect+csect))/sum(asect+csect) as swf4,sum(bwfa1*(asect+csect))/sum(asect+csect) as swf5,'
                +'sum(mwflb*(asect+csect))/sum(asect+csect) as mwf1,sum(mwfa*(asect+csect))/sum(asect+csect) as mwf2,sum(mwfbn*(asect+csect))/sum(asect+csect) as mwf3,'
                +'sum(mwfttl*(asect+csect))/sum(asect+csect) as mwf4,sum(lbwf1*(asect+csect))/sum(asect+csect) as avg1,sum(lbwf2*(asect+csect))/sum(asect+csect) as avg2,'
                +'sum(eff1*(asect))/sum(asect) as avg3,sum(eff2*(asect))/sum(asect) as avg4,sum(dbxl*(asect+csect))/sum(asect+csect) as avg5,'
                +'sum(bwfn*(asect+csect))/sum(asect+csect) as swf6,sum(mwfs*(asect+csect))/sum(asect+csect) as mwf5,sum((cwfttl+bwfa)*(asect+csect))/sum(asect+csect) as cwf1,'
                +'sum((cwfdiff+bwfa)*(asect+csect))/sum(asect+csect) as cwf2,sum(ulb*(asect+csect))/sum(asect+csect) as avg6,sum(gsdm*(asect+csect))/sum(asect+csect) as mc1,'
                +'sum(gsdmbn*(asect+csect))/sum(asect+csect) as mc2,sum(gsdmttl*(asect+csect))/sum(asect+csect) as mc3,sum(bwfac*(asect+csect))/sum(asect+csect) as swf7,'
                +'sum(mwfac*(asect+csect))/sum(asect+csect) as mwf6,sum(ulbac*(asect+csect))/sum(asect+csect) as avg7,sum(gsdmdiff*(asect+csect))/sum(asect+csect) as mc4,'
                +'sum(cwfttlc*(asect+csect))/sum(asect+csect) as cf3,sum(cwfdiffc*(asect+csect))/sum(asect+csect) as cf4,sum(mwfttlc*(asect+csect))/sum(asect+csect) as mf7 '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and (asect+csect)>0';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('lwf1').isnull then lwf001.Caption:=formatfloat('0.00',fieldbyname('lwf1').value) else lwf001.Caption:='0.00';
    if not fieldbyname('swf3').isnull then swf003.Caption:=formatfloat('0.00',fieldbyname('swf3').value) else swf003.Caption:='0.00';
    //if not fieldbyname('swf4').isnull then swf004.Caption:=formatfloat('0.00',fieldbyname('swf4').value) else swf004.Caption:='0.00';
    //if not fieldbyname('swf5').isnull then swf005.Caption:=formatfloat('0.00',fieldbyname('swf5').value) else swf005.Caption:='0.00';
    //if not fieldbyname('swf7').isnull then swf007.Caption:=formatfloat('0.00',fieldbyname('swf7').value) else swf007.Caption:='0.00';
    if not fieldbyname('mwf1').isnull then mwflb001.Caption:=formatfloat('0.00',fieldbyname('mwf1').value) else mwflb001.Caption:='0.00';
    if not fieldbyname('mwf2').isnull then mwf002.Caption:=formatfloat('0.00',fieldbyname('mwf2').value) else mwf002.Caption:='0.00';
    if not fieldbyname('mwf3').isnull then mwf003.Caption:=formatfloat('0.00',fieldbyname('mwf3').value) else mwf003.Caption:='0.00';
    //if not fieldbyname('mwf6').isnull then mwf006.Caption:=formatfloat('0.00',fieldbyname('mwf6').value) else mwf006.Caption:='0.00';
    if not fieldbyname('cwf1').isnull then cwf001.Caption:=formatfloat('0.00',fieldbyname('cwf1').value) else cwf001.Caption:='0.00';
    if not fieldbyname('cwf2').isnull then cwf002.Caption:=formatfloat('0.00',fieldbyname('cwf2').value) else cwf002.Caption:='0.00';
    //if not fieldbyname('avg1').isnull then avg001.Caption:=formatfloat('0.00',fieldbyname('avg1').value) else avg001.Caption:='0.00';
    //if not fieldbyname('avg2').isnull then avg002.Caption:=formatfloat('0.00',fieldbyname('avg2').value) else avg002.Caption:='0.00';
    if not fieldbyname('avg3').isnull then avg003.Caption:=formatfloat('0.00',fieldbyname('avg3').value) else avg003.Caption:='0.00';
    if not fieldbyname('avg4').isnull then avg004.Caption:=formatfloat('0.00',fieldbyname('avg4').value) else avg004.Caption:='0.00';
    if not fieldbyname('avg6').isnull then avg006.Caption:=formatfloat('0.00',fieldbyname('avg6').value) else avg006.Caption:='0.00';
    //if not fieldbyname('avg7').isnull then avg007.Caption:=formatfloat('0.00',fieldbyname('avg7').value) else avg007.Caption:='0.00';
    if not fieldbyname('mc1').isnull then gsdm001.Caption:=formatfloat('0.00',fieldbyname('mc1').value) else gsdm001.Caption:='0.00';
    if not fieldbyname('mc2').isnull then mc002.Caption:=formatfloat('0.00',fieldbyname('mc2').value) else mc002.Caption:='0.00';
    if not fieldbyname('mc3').isnull then gsdmttl001.Caption:=formatfloat('0.00',fieldbyname('mc3').value) else gsdmttl001.Caption:='0.00';
    if fieldbyname('avg4').value<fieldbyname('avg3').value then avg004.Font.Color:=clRed else avg004.Font.Color:=clGreen;
    if fieldbyname('avg3').value>fieldbyname('avg4').value then avg004.Font.Color:=clRed
    else if fieldbyname('avg3').value=fieldbyname('avg4').value then avg004.Font.Color:=clBlack
    else avg004.Font.Color:=clGreen;
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(gsdmdiff*(asect+csect))/sum(asect+csect) as mc4 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and (asect+csect)>0 and gsdmdiff<0';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('mc4').isnull then diff002.Caption:=formatfloat('#0.00',fieldbyname('mc4').value) else diff002.Caption:='0.00';
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(dbxl*csect)/sum(csect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and csect>0';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    //if not fieldbyname('avg5').isnull then avg005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg005.Caption:='0.00';
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff2*asect)/sum(asect) as s1,sum(asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
    //if not fieldbyname('s3').isnull then p4:=fieldbyname('s3').value else p4:=0;
  end;
  with frmwkf.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum((cwfdiff+bwfa)*(asect+csect))/sum(asect+csect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect+csect>0 and cwfdiff+bwfa<0';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
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
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
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
    commandtext:='select distinct pline,tsect from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    if frmwkf.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmwkf.combobox1.text+'''';
    if frmwkf.combobox2.text>'' then commandtext:=commandtext+' and tshop='''+frmwkf.combobox2.text+'''';
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

procedure Tfrmwkf02.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if frmwkf.query1.fieldbyname('lb').value=false then ppDBText2.Font.Style:=[fsBold]
  else ppDBText2.Font.Style:=[];
  if frmwkf.query1.fieldbyname('eff2').value<frmwkf.query1.fieldbyname('eff1').value then
  ppDBText20.Font.Color:=clRed else ppDBText20.Font.Color:=clGreen;
  cwfttl01.Caption:=formatfloat('0.0',frmwkf.query1.fieldbyname('cwfttl').value+frmwkf.Query1.fieldbyname('bwfa').value);
  if not frmwkf.query1.fieldbyname('lflag').isnull then phase001.Caption:=frmwkf.Query1.fieldbyname('lflag').value
  else phase001.Caption:='';
  if frmwkf.Query1.fieldbyname('eff1').value>frmwkf.Query1.fieldbyname('eff2').value then ppdbtext20.Font.Color:=clRed
  else if frmwkf.Query1.fieldbyname('eff1').value=frmwkf.Query1.fieldbyname('eff2').value then ppdbtext20.Font.Color:=clBlack
  else ppdbtext20.Font.Color:=clGreen;
  //if frmwkf.query1.fieldbyname('cwfdiff').value<0 then diff01.Caption:=formatfloat('0.0',frmwkf.query1.fieldbyname('cwfdiff').value)
  //else diff01.Caption:='--';
  if (frmwkf.query1.fieldbyname('gsdmttl').value>0) and (frmwkf.query1.fieldbyname('gsdmdiff').value<0) then diff02.Caption:=formatfloat('#0',frmwkf.query1.fieldbyname('gsdmdiff').value)
  else diff02.Caption:='--';
  if not frmwkf.query1.Fieldbyname('asect').isnull then begin
    bwfa001.Caption:=formatfloat('0.0',frmwkf.query1.fieldbyname('bwfa').value);
    cwfdiff01.Caption:=formatfloat('0',frmwkf.query1.fieldbyname('cwfdiff').value+frmwkf.Query1.fieldbyname('bwfa').value);
    if frmwkf.query1.fieldbyname('cwfdiff').value+frmwkf.query1.fieldbyname('bwfa').value<0 then diff01.Caption:=formatfloat('+#0;-#0',frmwkf.Query1.fieldbyname('cwfdiff').value+frmwkf.query1.fieldbyname('bwfa').value)
    else diff01.Caption:='--';
  end else begin
    bwfa001.Caption:='--';
    cwfdiff01.Caption:='--';
    diff01.Caption:='--';
  end;
end;

procedure Tfrmwkf02.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
