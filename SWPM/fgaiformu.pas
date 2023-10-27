unit fgaiformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppMemo, ppBands, ppClass, ppReport, ppStrtch, ppSubRpt,
  myChkBox, ppVar, ppPrnabl, ppCache, ppProd, ppDB, ppComm, ppRelatv,
  ppDBPipe, DB, DBClient, StdCtrls, Mask, rxToolEdit, Buttons, ppViewr,
  dateutils, ppParameter;

type
  Tfrmfgai = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel81: TppLabel;
    fty001: TppLabel;
    dt001: TppLabel;
    ppLabel24: TppLabel;
    dt002: TppLabel;
    title001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ppShape5: TppShape;
    ppMemo2: TppMemo;
    ppShape7: TppShape;
    ppMemo3: TppMemo;
    ppShape1: TppShape;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel45: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine3: TppLine;
    ppLine26: TppLine;
    ppLabel32: TppLabel;
    ppLine29: TppLine;
    ppLabel53: TppLabel;
    ppLine8: TppLine;
    ppLabel85: TppLabel;
    ppLine9: TppLine;
    ppLabel88: TppLabel;
    ppLine34: TppLine;
    ppLabel14: TppLabel;
    ppLine20: TppLine;
    ppLabel28: TppLabel;
    ppLabel71: TppLabel;
    ppLabel15: TppLabel;
    ppLabel63: TppLabel;
    ppLabel73: TppLabel;
    ppLine1: TppLine;
    ppLine11: TppLine;
    ppLabel29: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine13: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel98: TppLabel;
    ppLine55: TppLine;
    ppLabel30: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine5: TppLine;
    ppLabel31: TppLabel;
    ppLabel39: TppLabel;
    ppLabel42: TppLabel;
    ppShape23: TppShape;
    ppShape15: TppShape;
    ppShape10: TppShape;
    ppShape8: TppShape;
    ppShape6: TppShape;
    ppShape12: TppShape;
    ppShape11: TppShape;
    ppShape3: TppShape;
    ppShape13: TppShape;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    r01: TppDBText;
    j01: TppDBText;
    r02: TppDBText;
    j02: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText31: TppDBText;
    ppDBText23: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppLabel48: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText32: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppShape14: TppShape;
    ppDBText1: TppDBText;
    eff2002: TppLabel;
    date1001: TppLabel;
    ppDBText2: TppDBText;
    dbxl01: TppLabel;
    ppDBText24: TppDBText;
    pcflag1: TppLabel;
    scqty01: TppLabel;
    bal001: TppLabel;
    ppDBText15: TppDBText;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    phase001: TppLabel;
    ksjs1001: TppLabel;
    lst1001: TppLabel;
    ppLine61: TppLine;
    prj001: TppLabel;
    prj002: TppLabel;
    prj003: TppLabel;
    lflag1001: TppLabel;
    lflag1002: TppLabel;
    lflag1003: TppLabel;
    ppDBText7: TppDBText;
    lflag1004: TppLabel;
    ppLabel7: TppLabel;
    wkno01: TppLabel;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    total001: TppLabel;
    ppLabel93: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel6: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    ppDBCalc19: TppDBCalc;
    dbxl02: TppLabel;
    lstr01: TppLabel;
    trs01: TppLabel;
    sjrs101: TppLabel;
    sjrs201: TppLabel;
    sjrs01: TppLabel;
    sjyc01: TppLabel;
    ttl002: TppLabel;
    peff001: TppLabel;
    lflag01: TppLabel;
    x0001: TppLabel;
    x0002: TppLabel;
    ppDBText26: TppDBText;
    ppDBText38: TppDBText;
    xttl02: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    x005: TppLabel;
    ppShape4: TppShape;
    lflag001: TppLabel;
    x00001: TppLabel;
    x00002: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    xttl002: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    x1005: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    total0001: TppLabel;
    ppLabel20: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLabel21: TppLabel;
    x1002: TppLabel;
    x1003: TppLabel;
    ppDBCalc22: TppDBCalc;
    dbxl002: TppLabel;
    lstr001: TppLabel;
    trs001: TppLabel;
    sjrs1001: TppLabel;
    sjrs2001: TppLabel;
    sjrs001: TppLabel;
    sjyc001: TppLabel;
    ttl0002: TppLabel;
    peff0001: TppLabel;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ck01: TmyCheckBox;
    ck02: TmyCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBandBeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfgai: Tfrmfgai;

implementation

uses mainformu, achievingformu;

{$R *.dfm}

procedure Tfrmfgai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmfgai:=nil;
end;

procedure Tfrmfgai.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmfgai.BitBtn1Click(Sender: TObject);
begin
  {
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' order by tshop,tplant';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
  }
    if not query1.fieldbyname('tshop').isnull then begin
      if combobox1.text>'' then
      fty001.Caption:=combobox1.text
      else fty001.Caption:='';
      if dateedit1.date>0 then
      dt001.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date)
      else dt001.Caption:='    /  /  ';
      if dateedit2.Date>0 then begin
        dt002.Caption:=formatdatetime('yyyy/MM/dd',dateedit2.date);
        wkno01.Caption:=inttostr(weekof(dateedit2.date));
      end else begin
        dt002.Caption:='    /  /  ';
        wkno01.Caption:='';
      end;
      title001.Caption:='';
      if pos('test',application.ExeName)>0 then title001.Caption:=title001.Caption+'  - Test';
      if frmachieving.lbl850.Caption='SPE' then begin
        ppDBText20.DataField:='AQTY_SP';
        ppDBCalc5.DataField:='AQTY_SP';
        ppDBText21.DataField:='AQTY1_SP';
        ppDBCalc6.DataField:='AQTY1_SP';
        ppDBText22.DataField:='DIFF_SP';
        ppDBCalc7.DataField:='DIFF_SP';
        //ppDBText26.DataField:='EFF2_SP';
        ppDBText31.DataField:='CSECT_SP';
        ppDBCalc11.DataField:='CSECT_SP';
        ppDBText2.DataField:='CEOT_SP';
        ppDBCalc19.DataField:='CEOT_SP';
      end else begin
        ppDBText20.DataField:='AQTY';
        ppDBCalc5.DataField:='AQTY';
        ppDBText21.DataField:='AQTY1';
        ppDBCalc6.DataField:='AQTY1';
        ppDBText22.DataField:='DIFF';
        ppDBCalc7.DataField:='DIFF';
        //ppDBText26.DataField:='EFF2';
        ppDBText31.DataField:='CSECT';
        ppDBCalc11.DataField:='CSECT';
        ppDBText2.DataField:='CEOT';
        ppDBCalc19.DataField:='CEOT';
      end;
      ppReport1.Print;
    end;
  //end;
end;

procedure tfrmfgai.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,f11,p1,p2,p3:double;
  str1,str2:string;
  lt1,p4,p5:double;
  w1,w2:double;
  s1,s2,s3,s4,s5:string;
begin
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.opt1.ItemIndex=0 then
      commandtext:='select distinct pline,lstr,trs,sjrs1,sjrs2,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null))'
      else commandtext:='select distinct pline,lstr,trs,sjrs1,sjrs2,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null)';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
      params[0].asdate:=date-1;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f01:=f01+fieldbyname('lstr').value;
        f03:=f03+fieldbyname('sjrs1').value;
        f04:=f04+fieldbyname('sjrs2').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.opt1.ItemIndex=0 then
      commandtext:='select distinct pline,trs,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and csect=0'
      else commandtext:='select distinct pline,trs,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect=0';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
      params[0].asdate:=date-1;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f02:=f02+fieldbyname('trs').value;
        f05:=f05+fieldbyname('sjyc').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  f01:=0;f03:=0;f04:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as trs,sum(sjyc*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as sjyc,'
                    +'sum(lstr*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1,sum(sjrs1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2,sum(sjrs2*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty_sp=0 and aqty1_sp=0 and (csect_sp>0 or csect_sp is null)) and (csect_sp+ceot_sp)>0'
        else
        commandtext:='select distinct pline,sum(trs*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as trs,sum(sjyc*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as sjyc,'
                    +'sum(lstr*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1,sum(sjrs1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2,sum(sjrs2*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (csect_sp+ceot_sp)>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*(csect+ceot))/sum(csect+ceot) as trs,sum(sjyc*(csect+ceot))/sum(csect+ceot) as sjyc,'
                    +'sum(lstr*(csect+ceot))/sum(csect+ceot) as s1,sum(sjrs1*(csect+ceot))/sum(csect+ceot) as s2,sum(sjrs2*(csect+ceot))/sum(csect+ceot) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and (csect+ceot)>0'
        else
        commandtext:='select distinct pline,sum(trs*(csect+ceot))/sum(csect+ceot) as trs,sum(sjyc*(csect+ceot))/sum(csect+ceot) as sjyc,'
                    +'sum(lstr*(csect+ceot))/sum(csect+ceot) as s1,sum(sjrs1*(csect+ceot))/sum(csect+ceot) as s2,sum(sjrs2*(csect+ceot))/sum(csect+ceot) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (csect+ceot)>0';
      end;
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
      commandtext:=commandtext+' group by pline';
      params[0].asdate:=date-1;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f01:=f01+fieldbyname('s1').value;
        f03:=f03+fieldbyname('s2').value;
        f04:=f04+fieldbyname('s3').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  f02:=0;f05:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*csect_sp)/sum(csect_sp) as trs,sum(sjyc*csect_sp)/sum(csect_sp) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) '
                    +'and (aqty_sp=0 and aqty1_sp=0 and (csect_sp>0 or csect_sp is null)) and csect_sp>0'
        else commandtext:='select distinct pline,sum(trs*csect_sp)/sum(csect_sp) as trs,sum(sjyc*csect_sp)/sum(csect_sp) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect_sp>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*csect)/sum(csect) as trs,sum(sjyc*csect)/sum(csect) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and csect>0'
        else commandtext:='select distinct pline,sum(trs*csect)/sum(csect) as trs,sum(sjyc*csect)/sum(csect) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect>0';
      end;
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
      commandtext:=commandtext+' group by pline';
      params[0].asdate:=date-1;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f02:=f02+fieldbyname('trs').value;
        f05:=f05+fieldbyname('sjyc').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;

  lstr01.Caption:=formatfloat('0.0',f01);
  trs01.Caption:=formatfloat('0.0',f02);
  sjrs101.Caption:=formatfloat('0.0',f03);
  sjrs201.Caption:=formatfloat('0.0',f04);
  sjrs01.Caption:=formatfloat('0.0',f03+f04);
  sjyc01.Caption:=formatfloat('0.0',f05);

  //ppMemo1.Lines.Clear;
  //ppMemo1.Lines.add('Linkage Time(LT):');
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
  //try
  with frmachieving.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x0',ptinput);
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftfloat,'x3',ptinput);
    commandtext:='select distinct pline,seq from tblshedule where ltc_ksrq=:x0';
    if frmachieving.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmachieving.combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    commandtext:=commandtext+' union select distinct pline,max(seq) as seq from tblshedule b where ((cfwcrq=:x1) or (ltc_ksrq=:x2)) and cfwcjs<:x3';
    if frmachieving.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmachieving.combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    commandtext:=commandtext+' and (ltc_ksrq is not null) group by pline';
    params[0].asdate:=Query1.fieldbyname('dt1').value;//frmachieving.dateedit1.Date+1;
    params[1].asdate:=Query1.fieldbyname('dt1').value;//frmachieving.dateedit1.date+1;
    params[2].asdate:=Query1.fieldbyname('dt1').value;//frmachieving.dateedit1.date+1;
    params[3].asfloat:=p5;
    open;
    first;
    while not eof do begin
      with frmachieving.Query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.Createparam(ftdate,'x3',ptinput);
        commandtext:='select a.ltc_d,a.cfwcrq,a.cfwcjs,a.ltc_ksrq,a.ltc_ksjs,a.flag3,b.lst1 from tblshedule a,line_shjs b '
                    +'where a.pline=b.pline and a.seq=b.seq and a.pline=:x1 and seq=:x2 and b.flag=''0'' '
                    +'and b.dt1<=:x3 and ((a.ltc_ksrq=b.dt1) or (a.ltc_ksrq>b.dt1 and b.lst1=''x''))';//and a.cfwcrq=b.dt1))';
        params[0].asstring:=frmachieving.query2.fieldbyname('pline').value;
        params[1].asinteger:=frmachieving.query2.fieldbyname('seq').value;
        params[2].asdate:=frmachieving.Query8.fieldbyname('dt1').value;
        open;
        if not fieldbyname('lst1').isnull then str2:=fieldbyname('lst1').value else str2:='c';
        if not fieldbyname('flag3').isnull then begin
          if pos('x',fieldbyname('flag3').value)>0 then str2:='x';
        end;
        if not fieldbyname('ltc_d').isnull then begin
          if (str2='x') and (fieldbyname('ltc_d').value<15) and (fieldbyname('ltc_d').value>=0) then begin
            if fieldbyname('cfwcrq').value>fieldbyname('ltc_ksrq').value then
            str1:=frmachieving.query2.fieldbyname('pline').value+':  LT'+str2+' = '+formatfloat('0.0',0)+' sect hr'
            else str1:=frmachieving.query2.fieldbyname('pline').value+':  LT'+str2+' = '+formatfloat('0.0',fieldbyname('ltc_d').value)+' sect hr';
            str1:=str1+'  (from '+formatdatetime('yy/MM/dd',fieldbyname('cfwcrq').value)+'  '+formatfloat('0.0',fieldbyname('cfwcjs').value)+' sect hr';
            str1:=str1+'  to '+formatdatetime('yy/MM/dd',fieldbyname('ltc_ksrq').value)+'  '+formatfloat('0.0',fieldbyname('ltc_ksjs').value)+' sect hr)';
            if fieldbyname('cfwcrq').value>fieldbyname('ltc_ksrq').value then lt1:=lt1+0
            else begin
              if fieldbyname('ltc_d').value<=fieldbyname('ltc_ksjs').value then
              lt1:=lt1+fieldbyname('ltc_d').value
              else lt1:=lt1+fieldbyname('ltc_ksjs').value;
            end;
            //ppmemo1.Lines.add(str1);
          end;
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if frmachieving.lbl850.caption='SPE' then begin
      commandtext:='select sum(eff2*csect_sp)/sum(csect_sp) as s1,sum(csect_sp) as s2 from line_shjs where dt1=:x1 and csect_sp>0 and flag=''0''';
    end else begin
      commandtext:='select sum(eff2*csect)/sum(csect) as s1,sum(csect) as s2 from line_shjs where dt1=:x1 and csect>0 and flag=''0''';
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if frmachieving.lbl850.caption='SPE' then begin
      commandtext:='select sum(csect_sp) as s2 from line_shjs where dt1=:x1 and flag=''0''';
    end else begin
      commandtext:='select sum(csect) as s2 from line_shjs where dt1=:x1 and flag=''0''';
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s2').isnull then p4:=fieldbyname('s2').value else p4:=0;
  end;

  w1:=0;w2:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct pline,psect,eot from tbl_line_shjs where tm=:x1';
    params[0].asdatetime:=query1.fieldbyname('tm1').value;
    open;
    first;
    while not eof do begin
      w1:=w1+fieldbyname('psect').value;
      w2:=w2+fieldbyname('eot').value;
      application.ProcessMessages;
      next;
    end;
  end;
  x0001.Caption:=formatfloat('0.0',w1);
  x0002.Caption:=formatfloat('0.0',w2);

  p3:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct line,csect from week52 where date1=:x1 and tplant>'''' and tshop>''''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dateedit1.date;
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
  //ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p3-p4)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  //else ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p3-p4)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  0.00';
  ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p3-p4)+'    Total Linkage Time(sect hr) = '+formatfloat('0.0',lt1)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  else ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p3-p4)+'    Total Linkage Time(sect hr) = '+formatfloat('0.0',lt1)+'    Capacity Utilization %:  0.00';
  //ppmemo1.Lines.add('Total Linkage Time(sect hr) = '+formatfloat('0.0',lt1)+'        as at  '+copy(date001.Caption,3,15));
  x0001.Caption:=formatfloat('0.0',p3);
  x0002.Caption:=formatfloat('0.0',p3);
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(floor(lflag1)*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty_sp=0 and aqty1_sp=0 and (ceot_sp>0 or csect_sp is null)) '
                    +'and (flag3 is null) and (ceot_sp+csect_sp)>0'
        else
        commandtext:='select sum(floor(lflag1)*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot_sp+csect_sp)>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(floor(lflag1)*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (ceot>0 or csect is null)) and (flag3 is null) and (ceot+csect)>0'
        else
        commandtext:='select sum(floor(lflag1)*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot+csect)>0';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then lflag01.Caption:=formatfloat('0.0',fieldbyname('s1').value)
    else lflag01.Caption:='0.0';
  end;
  ttl002.Caption:=ttl002.Caption+'    Current phase of line efficiency: '+lflag01.Caption;//+'    Curr LWs Date is as at that date';
  xttl02.Caption:='Curr LWs Date is as at  '+copy(dt002.Caption,3,15);

  s1:='';s2:='';s3:='';s4:='';s5:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty_sp=0 and aqty1_sp=0 and (csect_sp>0 or csect_sp is null)) and (flag3 is null)'
        else
        commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null)';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and (flag3 is null)'
        else
        commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null)';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('p2').isnull then s1:='project :  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style :  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line :  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN :  '+fieldbyname('s4').asstring+'    ';
    if not fieldbyname('s5').isnull then s5:='Clr :  '+fieldbyname('s5').asstring+'    ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(eff2_sp*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty_sp=0 and aqty1_sp=0 and (csect_sp+ceot_sp>0 or csect is null)) '
                    +'and (flag3 is null) and csect_sp+ceot_sp>0'
        else
        commandtext:='select sum(eff2_sp*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect_sp+ceot_sp>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(eff2*(csect+ceot))/sum(csect+ceot) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (csect+ceot>0 or csect is null)) and (flag3 is null) and csect+ceot>0'
        else
        commandtext:='select sum(eff2*(csect+ceot))/sum(csect+ceot) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect+ceot>0';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s2').isnull then x003.Caption:=formatfloat('0.00',fieldbyname('s2').value)
    else x003.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(eff1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and '
                    +'(aqty_sp=0 and aqty1_sp=0 and (csect_sp+ceot_sp>0 or csect_sp is null)) and (flag3 is null) and csect_sp+ceot_sp>0 and pqty>0'
        else
        commandtext:='select sum(eff1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect_sp+ceot_sp>0 and pqty>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (csect+ceot>0 or csect is null)) and (flag3 is null) and csect+ceot>0 and pqty>0'
        else
        commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect+ceot>0 and pqty>0';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then x002.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else x002.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(b.prj4*(a.csect_sp+a.ceot_sp))/sum(a.csect_sp+a.ceot_sp) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                    +'and (a.aqty_sp=0 and a.aqty1_sp=0 and (a.csect_sp+a.ceot_sp>0 or a.csect_sp is null)) and (a.flag3 is null) and a.csect_sp+a.ceot_sp>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3'
        else
        commandtext:='select sum(b.prj4*(a.csect_sp+a.ceot_sp))/sum(a.csect_sp+a.ceot_sp) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                    +'and (a.flag6 is not null) and a.csect_sp+a.ceot_sp>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(b.prj4*(a.csect+a.ceot))/sum(a.csect+a.ceot) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                    +'and (a.aqty=0 and a.aqty1=0 and (a.csect+a.ceot>0 or a.csect is null)) and (a.flag3 is null) and a.csect+a.ceot>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3'
        else
        commandtext:='select sum(b.prj4*(a.csect+a.ceot))/sum(a.csect+a.ceot) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                    +'and (a.flag6 is not null) and a.csect+a.ceot>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    params[2].asdatetime:=frmachieving.Query8.fieldbyname('tm1').value;
    open;
    if not fieldbyname('s1').isnull then x005.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else x005.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(dbxl_sp*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and '
                    +'(aqty_sp=0 and aqty1_sp=0 and (ceot_sp>0 or csect_sp is null)) and (flag3 is null) and (ceot_sp+csect_sp)>0 and dbxl_sp>0'
        else
        commandtext:='select sum(dbxl_sp*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot_sp+csect_sp)>0 and dbxl_sp>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(dbxl*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (ceot>0 or csect is null)) and (flag3 is null) and (ceot+csect)>0 and dbxl>0'
        else
        commandtext:='select sum(dbxl*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot+csect)>0 and dbxl>0';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then dbxl02.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else dbxl02.Caption:='0.00';
  end;
  total001.Caption:=s1+s2+s3+s4+s5;
  if strtofloat(x003.Caption)>strtofloat(x005.Caption) then x003.Font.Color:=clGreen
  else if strtofloat(x003.Caption)<strtofloat(x005.Caption) then x003.Font.Color:=clRed
  else x003.Font.Color:=clBlack;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.opt1.ItemIndex=0 then
      commandtext:='select cfm from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (aqty=0 and aqty1=0 and (ceot>0 or csect is null)) and (flag3 is null) and (ceot+csect)>0'
      else
      commandtext:='select cfm from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and (ceot+csect)>0';
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+''' and cfm=0';
    params[0].asdate:=dateedit1.date;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('cfm').isnull then ck01.Checked:=fieldbyname('cfm').value else ck01.Checked:=true;
  end;
end;

procedure Tfrmfgai.ppGroupFooterBandBeforePrint(Sender: TObject);
var
  s1,s2,s3,s4,s5:string;
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,f11,p1,p2,p3,lt1,p4:double;
begin
  s1:='';s2:='';s3:='';s4:='';s5:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('p2').isnull then s1:='project :  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style :  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line :  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN :  '+fieldbyname('s4').asstring+'    ';
    if not fieldbyname('s5').isnull then s5:='Clr :  '+fieldbyname('s5').asstring+'    ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff1*csect)/sum(csect) as s1,sum(eff2*csect)/sum(csect) as s2 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and csect>0';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then x002.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else x002.Caption:='0.00';
    if not fieldbyname('s2').isnull then x003.Caption:=formatfloat('0.00',fieldbyname('s2').value)
    else x003.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(dbxl*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and (ceot+csect)>0 and dbxl>0';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then dbxl02.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else dbxl02.Caption:='0.00';
  end;
  total001.Caption:=s1+s2+s3+s4+s5;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select cfm from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and cfm=0';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    //if not fieldbyname('cfm').isnull then chk01.Checked:=false else chk01.Checked:=true;
  end;

  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,lstr,trs,sjrs1,sjrs2,sjyc from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    first;
    while not eof do begin
      f01:=f01+fieldbyname('lstr').value;
      f03:=f03+fieldbyname('sjrs1').value;
      f04:=f04+fieldbyname('sjrs2').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,trs,sjyc from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and csect=0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    first;
    while not eof do begin
      f02:=f02+fieldbyname('trs').value;
      f05:=f05+fieldbyname('sjyc').value;
      application.ProcessMessages;
      next;
    end;
  end;

  f01:=0;f03:=0;f04:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(trs*(csect+ceot))/sum(csect+ceot) as trs,sum(sjyc*(csect+ceot))/sum(csect+ceot) as sjyc,'
                +'sum(lstr*(csect+ceot))/sum(csect+ceot) as s1,sum(sjrs1*(csect+ceot))/sum(csect+ceot) as s2,sum(sjrs2*(csect+ceot))/sum(csect+ceot) as s3 '
                +'from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and (csect+ceot)>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    first;
    while not eof do begin
      f01:=f01+fieldbyname('s1').value;
      f03:=f03+fieldbyname('s2').value;
      f04:=f04+fieldbyname('s3').value;
      application.ProcessMessages;
      next;
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(trs*csect)/sum(csect) as trs,sum(sjyc*csect)/sum(csect) as sjyc from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and csect>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
      open;
      first;
      while not eof do begin
        f02:=f02+fieldbyname('trs').value;
        f05:=f05+fieldbyname('sjyc').value;
        application.ProcessMessages;
        next;
      end;
  end;

  lstr01.Caption:=formatfloat('0.0',f01);
  trs01.Caption:=formatfloat('0.0',f02);
  sjrs101.Caption:=formatfloat('0.0',f03);
  sjrs201.Caption:=formatfloat('0.0',f04);
  sjrs01.Caption:=formatfloat('0.0',f03+f04);
  sjyc01.Caption:=formatfloat('0.0',f05);

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff2*csect)/sum(csect) as s1,sum(csect) as s2 from line_shjs where dt1>=:x1 and dt1<=:x2 and csect>0 and flag=''0''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
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
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
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
    commandtext:='select distinct line,csect from week52 where date1>=:x1 and date1<=:x2 and tplant>'''' and tshop>''''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
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

  lt1:=0;
  with Query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(a.ltc_d) as ltc_d1 from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq and b.flag=''0'' and b.dt1>=:x1 and b.dt1<=:x2 and ((a.ltc_ksrq>=b.dt1 and a.ltc_ksrq<=b.dt1) or (a.ltc_ksrq<b.dt1 and a.cfwcrq=b.dt1))';
    commandtext:=commandtext+' and b.tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('ltc_d1').isnull then lt1:=fieldbyname('ltc_d1').value;
  end;
  if p3>0 then
  ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  else ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  0.00';

  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(distinct pline) as s1 from tblline where lactive=1 and lbact=1 and tshop='''+query1.fieldbyname('tshop').value+'''';
    open;
    if not fieldbyname('s1').isnull then ttl002.caption:=ttl002.caption+'     LB Active: '+fieldbyname('s1').asstring else ttl002.caption:=ttl002.caption+'     LB Active: ';  
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(distinct pline) as s1 from tblline where lactive=1 and rfids=1 and tshop='''+query1.fieldbyname('tshop').value+'''';
    open;
    if not fieldbyname('s1').isnull then ttl002.caption:=ttl002.caption+'     RFID Active: '+fieldbyname('s1').asstring else ttl002.caption:=ttl002.caption+'     RFID Active: ';
  end;
end;

procedure Tfrmfgai.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,f11,p1,p2,p3:double;
  str1,str2:string;
  lt1,p4,p5:double;
  w1,w2:double;
  s1,s2,s3,s4,s5:string;
begin
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.opt1.ItemIndex=0 then
      commandtext:='select distinct pline,lstr,trs,sjrs1,sjrs2,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null))'
      else commandtext:='select distinct pline,lstr,trs,sjrs1,sjrs2,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null)';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      params[0].asdate:=date-1;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f01:=f01+fieldbyname('lstr').value;
        f03:=f03+fieldbyname('sjrs1').value;
        f04:=f04+fieldbyname('sjrs2').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.opt1.ItemIndex=0 then
      commandtext:='select distinct pline,trs,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and csect=0'
      else commandtext:='select distinct pline,trs,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect=0';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      params[0].asdate:=date-1;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f02:=f02+fieldbyname('trs').value;
        f05:=f05+fieldbyname('sjyc').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  f01:=0;f03:=0;f04:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as trs,sum(sjyc*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as sjyc,'
                    +'sum(lstr*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1,sum(sjrs1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2,sum(sjrs2*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty_sp=0 and aqty1_sp=0 and (csect_sp>0 or csect_sp is null)) and (csect_sp+ceot_sp)>0'
        else
        commandtext:='select distinct pline,sum(trs*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as trs,sum(sjyc*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as sjyc,'
                    +'sum(lstr*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1,sum(sjrs1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2,sum(sjrs2*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (csect_sp+ceot_sp)>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*(csect+ceot))/sum(csect+ceot) as trs,sum(sjyc*(csect+ceot))/sum(csect+ceot) as sjyc,'
                    +'sum(lstr*(csect+ceot))/sum(csect+ceot) as s1,sum(sjrs1*(csect+ceot))/sum(csect+ceot) as s2,sum(sjrs2*(csect+ceot))/sum(csect+ceot) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and (csect+ceot)>0'
        else
        commandtext:='select distinct pline,sum(trs*(csect+ceot))/sum(csect+ceot) as trs,sum(sjyc*(csect+ceot))/sum(csect+ceot) as sjyc,'
                    +'sum(lstr*(csect+ceot))/sum(csect+ceot) as s1,sum(sjrs1*(csect+ceot))/sum(csect+ceot) as s2,sum(sjrs2*(csect+ceot))/sum(csect+ceot) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (csect+ceot)>0';
      end;
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      commandtext:=commandtext+' group by pline';
      params[0].asdate:=date-1;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f01:=f01+fieldbyname('s1').value;
        f03:=f03+fieldbyname('s2').value;
        f04:=f04+fieldbyname('s3').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  f02:=0;f05:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*csect_sp)/sum(csect_sp) as trs,sum(sjyc*csect_sp)/sum(csect_sp) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) '
                    +'and (aqty_sp=0 and aqty1_sp=0 and (csect_sp>0 or csect_sp is null)) and csect_sp>0'
        else commandtext:='select distinct pline,sum(trs*csect_sp)/sum(csect_sp) as trs,sum(sjyc*csect_sp)/sum(csect_sp) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect_sp>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*csect)/sum(csect) as trs,sum(sjyc*csect)/sum(csect) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and csect>0'
        else commandtext:='select distinct pline,sum(trs*csect)/sum(csect) as trs,sum(sjyc*csect)/sum(csect) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect>0';
      end;
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      commandtext:=commandtext+' group by pline';
      params[0].asdate:=date-1;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f02:=f02+fieldbyname('trs').value;
        f05:=f05+fieldbyname('sjyc').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;

  lstr001.Caption:=formatfloat('0.0',f01);
  trs001.Caption:=formatfloat('0.0',f02);
  sjrs1001.Caption:=formatfloat('0.0',f03);
  sjrs2001.Caption:=formatfloat('0.0',f04);
  sjrs001.Caption:=formatfloat('0.0',f03+f04);
  sjyc001.Caption:=formatfloat('0.0',f05);

  //ppMemo1.Lines.Clear;
  //ppMemo1.Lines.add('Linkage Time(LT):');
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
  //try
  with frmachieving.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x0',ptinput);
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftfloat,'x3',ptinput);
    commandtext:='select distinct pline,seq from tblshedule where ltc_ksrq=:x0';
    if frmachieving.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmachieving.combobox1.text+'''';
    commandtext:=commandtext+' union select distinct pline,max(seq) as seq from tblshedule b where ((cfwcrq=:x1) or (ltc_ksrq=:x2)) and cfwcjs<:x3';
    if frmachieving.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmachieving.combobox1.text+'''';
    commandtext:=commandtext+' and (ltc_ksrq is not null) group by pline';
    params[0].asdate:=Query1.fieldbyname('dt1').value;//frmachieving.dateedit1.Date+1;
    params[1].asdate:=Query1.fieldbyname('dt1').value;//frmachieving.dateedit1.date+1;
    params[2].asdate:=Query1.fieldbyname('dt1').value;//frmachieving.dateedit1.date+1;
    params[3].asfloat:=p5;
    open;
    first;
    while not eof do begin
      with frmachieving.Query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.Createparam(ftdate,'x3',ptinput);
        commandtext:='select a.ltc_d,a.cfwcrq,a.cfwcjs,a.ltc_ksrq,a.ltc_ksjs,a.flag3,b.lst1 from tblshedule a,line_shjs b '
                    +'where a.pline=b.pline and a.seq=b.seq and a.pline=:x1 and seq=:x2 and b.flag=''0'' '
                    +'and b.dt1<=:x3 and ((a.ltc_ksrq=b.dt1) or (a.ltc_ksrq>b.dt1 and b.lst1=''x''))';//and a.cfwcrq=b.dt1))';
        params[0].asstring:=frmachieving.query2.fieldbyname('pline').value;
        params[1].asinteger:=frmachieving.query2.fieldbyname('seq').value;
        params[2].asdate:=frmachieving.Query8.fieldbyname('dt1').value;
        open;
        if not fieldbyname('lst1').isnull then str2:=fieldbyname('lst1').value else str2:='c';
        if not fieldbyname('flag3').isnull then begin
          if pos('x',fieldbyname('flag3').value)>0 then str2:='x';
        end;
        if not fieldbyname('ltc_d').isnull then begin
          if (str2='x') and (fieldbyname('ltc_d').value<15) and (fieldbyname('ltc_d').value>=0) then begin
            if fieldbyname('cfwcrq').value>fieldbyname('ltc_ksrq').value then
            str1:=frmachieving.query2.fieldbyname('pline').value+':  LT'+str2+' = '+formatfloat('0.0',0)+' sect hr'
            else str1:=frmachieving.query2.fieldbyname('pline').value+':  LT'+str2+' = '+formatfloat('0.0',fieldbyname('ltc_d').value)+' sect hr';
            str1:=str1+'  (from '+formatdatetime('yy/MM/dd',fieldbyname('cfwcrq').value)+'  '+formatfloat('0.0',fieldbyname('cfwcjs').value)+' sect hr';
            str1:=str1+'  to '+formatdatetime('yy/MM/dd',fieldbyname('ltc_ksrq').value)+'  '+formatfloat('0.0',fieldbyname('ltc_ksjs').value)+' sect hr)';
            if fieldbyname('cfwcrq').value>fieldbyname('ltc_ksrq').value then lt1:=lt1+0
            else begin
              if fieldbyname('ltc_d').value<=fieldbyname('ltc_ksjs').value then
              lt1:=lt1+fieldbyname('ltc_d').value
              else lt1:=lt1+fieldbyname('ltc_ksjs').value;
            end;
            //ppmemo1.Lines.add(str1);
          end;
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if frmachieving.lbl850.caption='SPE' then begin
      commandtext:='select sum(eff2_sp*csect_sp)/sum(csect_sp) as s1,sum(csect_sp) as s2 from line_shjs where dt1=:x1 and csect_sp>0 and flag=''0''';
    end else begin
      commandtext:='select sum(eff2*csect)/sum(csect) as s1,sum(csect) as s2 from line_shjs where dt1=:x1 and csect>0 and flag=''0''';
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if frmachieving.lbl850.caption='SPE' then begin
      commandtext:='select sum(csect_sp) as s2 from line_shjs where dt1=:x1 and flag=''0''';
    end else begin
      commandtext:='select sum(csect) as s2 from line_shjs where dt1=:x1 and flag=''0''';
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s2').isnull then p4:=fieldbyname('s2').value else p4:=0;
  end;

  w1:=0;w2:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct pline,psect,eot from tbl_line_shjs where tm=:x1';
    params[0].asdatetime:=query1.fieldbyname('tm1').value;
    open;
    first;
    while not eof do begin
      w1:=w1+fieldbyname('psect').value;
      w2:=w2+fieldbyname('eot').value;
      application.ProcessMessages;
      next;
    end;
  end;
  x00001.Caption:=formatfloat('0.0',w1);
  x00002.Caption:=formatfloat('0.0',w2);

  p3:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct line,csect from week52 where date1=:x1 and tplant>'''' and tshop>''''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=dateedit1.date;
    open;
    first;
    while not eof do begin
      p3:=p3+fieldbyname('csect').value;
      application.ProcessMessages;
      next;
    end;
  end;
  if p3>0 then peff0001.Caption:='Productivity eff %: '+formatfloat('0.00',p1*p2/p3) else peff0001.Caption:='Productivity eff %: 0.00';
  if p3>0 then
  //ttl0002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',w2-p4)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  //else ttl0002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',w2-p4)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  0.00';
  ttl0002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',w2-p4)+'    Total Linkage Time(sect hr) = '+formatfloat('0.0',lt1)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  else ttl0002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',w2-p4)+'    Total Linkage Time(sect hr) = '+formatfloat('0.0',lt1)+'    Capacity Utilization %:  0.00';
  //ppmemo1.Lines.add('Total Linkage Time(sect hr) = '+formatfloat('0.0',lt1)+'        as at  '+copy(date001.Caption,3,15));
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(floor(lflag1)*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty_sp=0 and aqty1_sp=0 and (ceot_sp>0 or csect_sp is null)) '
                    +'and (flag3 is null) and (ceot_sp+csect_sp)>0'
        else
        commandtext:='select sum(floor(lflag1)*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot_sp+csect_sp)>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(floor(lflag1)*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (ceot>0 or csect is null)) and (flag3 is null) and (ceot+csect)>0'
        else
        commandtext:='select sum(floor(lflag1)*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot+csect)>0';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then lflag001.Caption:=formatfloat('0.0',fieldbyname('s1').value)
    else lflag001.Caption:='0.0';
  end;
  ttl0002.Caption:=ttl0002.Caption+'    Current phase of line efficiency: '+lflag001.Caption;//+'    Curr LWs Date is as at that date';
  xttl002.Caption:='Curr LWs Date is as at  '+copy(dt002.Caption,3,15);

  s1:='';s2:='';s3:='';s4:='';s5:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty_sp=0 and aqty1_sp=0 and (csect_sp>0 or csect_sp is null)) and (flag3 is null)'
        else
        commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null)';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and (flag3 is null)'
        else
        commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null)';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('p2').isnull then s1:='project :  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style :  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line :  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN :  '+fieldbyname('s4').asstring+'    ';
    if not fieldbyname('s5').isnull then s5:='Clr :  '+fieldbyname('s5').asstring+'    ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(eff2_sp*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and '
                    +'(aqty_sp=0 and aqty1_sp=0 and (csect_sp+ceot_sp>0 or csect_sp is null)) and (flag3 is null) and csect_sp+ceot_sp>0 and pqty>0'
        else
        commandtext:='select sum(eff2_sp*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect_sp+ceot_sp>0 and pqty>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(eff2*(csect+ceot))/sum(csect+ceot) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (csect+ceot>0 or csect is null)) and (flag3 is null) and csect+ceot>0 and pqty>0'
        else
        commandtext:='select sum(eff2*(csect+ceot))/sum(csect+ceot) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect+ceot>0 and pqty>0';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s2').isnull then x1003.Caption:=formatfloat('0.00',fieldbyname('s2').value)
    else x1003.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(eff1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and '
                    +'(aqty_sp=0 and aqty1_sp=0 and (csect_sp+ceot_sp>0 or csect_sp is null)) and (flag3 is null) and csect_sp+ceot_sp>0 and pqty>0'
        else
        commandtext:='select sum(eff1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect_sp+ceot_sp>0 and pqty>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (csect+ceot>0 or csect is null)) and (flag3 is null) and csect+ceot>0 and pqty>0'
        else
        commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect+ceot>0 and pqty>0';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then x1002.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else x1002.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(b.prj4*(a.csect_sp+a.ceot_sp))/sum(a.csect_sp+a.ceot_sp) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                    +'and (a.aqty_sp=0 and a.aqty1_sp=0 and (a.csect_sp+a.ceot_sp>0 or a.csect_sp is null)) and (a.flag3 is null) and a.csect_sp+a.ceot_sp>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3'
        else
        commandtext:='select sum(b.prj4*(a.csect_sp+a.ceot_sp))/sum(a.csect_sp+a.ceot_sp) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                    +'and (a.flag6 is not null) and a.csect_sp+a.ceot_sp>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(b.prj4*(a.csect+a.ceot))/sum(a.csect+a.ceot) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                    +'and (a.aqty=0 and a.aqty1=0 and (a.csect+a.ceot>0 or a.csect is null)) and (a.flag3 is null) and a.csect+a.ceot>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3'
        else
        commandtext:='select sum(b.prj4*(a.csect+a.ceot))/sum(a.csect+a.ceot) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                    +'and (a.flag6 is not null) and a.csect+a.ceot>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    params[2].asdatetime:=frmachieving.Query8.fieldbyname('tm1').value;
    open;
    if not fieldbyname('s1').isnull then x1005.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else x1005.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.lbl850.caption='SPE' then begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(dbxl_sp*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and '
                    +'(aqty_sp=0 and aqty1_sp=0 and (ceot_sp>0 or csect_sp is null)) and (flag3 is null) and (ceot_sp+csect_sp)>0 and dbxl_sp>0'
        else
        commandtext:='select sum(dbxl_sp*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot_sp+csect_sp)>0 and dbxl_sp>0';
      end else begin
        if frmachieving.opt1.ItemIndex=0 then
        commandtext:='select sum(dbxl*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (ceot>0 or csect is null)) and (flag3 is null) and (ceot+csect)>0 and dbxl>0'
        else
        commandtext:='select sum(dbxl*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot+csect)>0 and dbxl>0';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    params[0].asdate:=date-1;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then dbxl002.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else dbxl002.Caption:='0.00';
  end;
  total0001.Caption:=s1+s2+s3+s4+s5;
  if strtofloat(x1003.Caption)>strtofloat(x1005.Caption) then x1003.Font.Color:=clGreen
  else if strtofloat(x1003.Caption)<strtofloat(x1005.Caption) then x1003.Font.Color:=clRed
  else x1003.Font.Color:=clBlack;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.opt1.ItemIndex=0 then
      commandtext:='select cfm from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (ceot>0 or csect is null)) and (flag3 is null) and (ceot+csect)>0'
      else
      commandtext:='select cfm from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot+csect)>0';
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' and cfm=0';
    params[0].asdate:=dateedit1.date;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('cfm').isnull then ck02.Checked:=fieldbyname('cfm').value else ck02.Checked:=true;
  end;

  ppMemo3.Lines.clear;
  ppMemo3.Lines.Add('Factory Manager - Operations'' Notepad : - ');
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select distinct tshop,remarks from tbl_wksremarks where dt1>=:x1 and dt1<=:x2';
      commandtext:=commandtext+' and tplant='''+query1.fieldbyname('tplant').value+'''';
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
  ppMemo3.Lines.Add('');
end;

end.
