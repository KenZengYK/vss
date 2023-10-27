unit calendar_sumformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, DB, DBClient, ppViewr,
  ppParameter;

type
  Tfrmcalendar_sum = class(TForm)
    ClientDataSet3: TClientDataSet;
    DataSource2: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    pline01: TppLabel;
    ppLabel55: TppLabel;
    ddt01: TppLabel;
    ppLabel57: TppLabel;
    ddt02: TppLabel;
    ppLabel59: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel60: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel61: TppLabel;
    ppShape4: TppShape;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLine16: TppLine;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    y001: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine27: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine29: TppLine;
    ppLabel66: TppLabel;
    ppLine30: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    y002: TppDBText;
    ppDBText30: TppDBText;
    docu01: TppLabel;
    ddcu01: TppLabel;
    ppDBText22: TppDBText;
    dbcu01: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel54: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    y005: TppDBCalc;
    aocu01: TppLabel;
    adcu01: TppLabel;
    ppDBCalc37: TppDBCalc;
    abcu01: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel106: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    y004: TppDBCalc;
    tocu01: TppLabel;
    tdcu01: TppLabel;
    lines003: TppLabel;
    ppDBCalc36: TppDBCalc;
    tbcu01: TppLabel;
    ppLine31: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    y003: TppDBCalc;
    socu01: TppLabel;
    sdcu01: TppLabel;
    ppDBCalc35: TppDBCalc;
    sbcu01: TppLabel;
    ClientDataSet2: TClientDataSet;
    Query1: TClientDataSet;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    date01: TppLabel;
    ppLabel16: TppLabel;
    date02: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel20: TppLabel;
    ppShape2: TppShape;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel33: TppLabel;
    x001: TppLabel;
    ppLine9: TppLine;
    ppLine7: TppLine;
    ppLabel24: TppLabel;
    ppLabel47: TppLabel;
    ppLabel49: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine18: TppLine;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppLine28: TppLine;
    ppLabel65: TppLabel;
    ppLabel22: TppLabel;
    fty001: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText15: TppDBText;
    x002: TppDBText;
    ppDBText19: TppDBText;
    docu001: TppLabel;
    ddcu001: TppLabel;
    ppDBText21: TppDBText;
    dbcu001: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLabel48: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    x004: TppDBCalc;
    tocu001: TppLabel;
    tdcu001: TppLabel;
    ppDBCalc34: TppDBCalc;
    tbcu001: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    S01: TppLabel;
    S02: TppLabel;
    s03: TppLabel;
    x003: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    socu001: TppLabel;
    sdcu001: TppLabel;
    ppDBCalc33: TppDBCalc;
    sbcu001: TppLabel;
    ppLabel26: TppLabel;
    s04: TppLabel;
    o001: TppLabel;
    b001: TppLabel;
    d001: TppLabel;
    n1001: TppLabel;
    n2001: TppLabel;
    o1001: TppLabel;
    o2001: TppLabel;
    oc001: TppLabel;
    bc001: TppLabel;
    dc001: TppLabel;
    o002: TppLabel;
    b002: TppLabel;
    d002: TppLabel;
    n1002: TppLabel;
    n2002: TppLabel;
    o1002: TppLabel;
    o2002: TppLabel;
    oc002: TppLabel;
    bc002: TppLabel;
    dc002: TppLabel;
    o003: TppLabel;
    b003: TppLabel;
    d003: TppLabel;
    n1003: TppLabel;
    n2003: TppLabel;
    o1003: TppLabel;
    o2003: TppLabel;
    oc003: TppLabel;
    bc003: TppLabel;
    dc003: TppLabel;
    ppLine4: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    lines002: TppLabel;
    ppLabel3: TppLabel;
    ave001: TppLabel;
    ave002: TppLabel;
    ave003: TppLabel;
    ave004: TppLabel;
    ave005: TppLabel;
    ave006: TppLabel;
    ave007: TppLabel;
    ave008: TppLabel;
    ave009: TppLabel;
    ave010: TppLabel;
    ppDBText1: TppDBText;
    wks001: TppLabel;
    lines001: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppReport2BeforePrint(Sender: TObject);
    procedure ppReport3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcalendar_sum: Tfrmcalendar_sum;

implementation

uses mainformu, calendarformu;

{$R *.dfm}

procedure Tfrmcalendar_sum.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if clientdataset3.fieldbyname('ottl').value>0 then
    docu001.Caption:=formatfloat('0.00',clientdataset3.fieldbyname('csect').value*100.0/clientdataset3.fieldbyname('ottl').value-100.00)
  else docu001.Caption:='--';
  if clientdataset3.FieldByName('csect').Value>0 then
    ddcu001.Caption:='100.00'
  else ddcu001.Caption:='--';
  if clientdataset3.FieldByName('workero').Value>0 then
    dbcu001.Caption:=formatfloat('0.00',clientdataset3.fieldbyname('csect').value*100.0/clientdataset3.fieldbyname('workero').value-100.00)
  else dbcu001.Caption:='--';
end;

procedure Tfrmcalendar_sum.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  s01.Caption:='';
  s02.Caption:='';
  s03.Caption:='';
  s04.Caption:='';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(distinct date1) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3,sum(sectt) as n4,sum(sectt1) as n5,'
                +'sum(sectc) as n6,sum(osect) as n7 from week52 where tshop=:x1 and date1>=:x2 and date1<=:x3 and wday=''S'' and tshop>'''' and lactive=1';
    params[0].asstring:=clientdataset3.fieldbyname('tshop').value;
    params[1].asdate:=frmcalendar.dateedit1.date;
    params[2].asdate:=frmcalendar.dateedit2.date;
    open;
    s01.Caption:=formatfloat('#0',fieldbyname('cnt').asfloat);
    if not fieldbyname('n1').isnull then begin
      o002.Caption:=formatfloat('0.0',fieldbyname('n1').value);
      b002.Caption:=formatfloat('0.0',fieldbyname('n2').value);
      d002.Caption:=formatfloat('0.0',fieldbyname('n3').value);
      n1002.Caption:=formatfloat('0.0',fieldbyname('n4').value);
      n2002.Caption:=formatfloat('0.0',fieldbyname('n5').value);
      o1002.Caption:=formatfloat('0.0',fieldbyname('n6').value);
      o2002.Caption:=formatfloat('0.0',fieldbyname('n7').value);
      if fieldbyname('n1').value>0 then oc002.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n1').value-100.00)
      else oc002.Caption:='--';
      if fieldbyname('n3').value>0 then dc002.Caption:='100.00' else dc002.Caption:='--';
      if fieldbyname('n2').value>0 then bc002.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n2').value-100.00)
      else bc002.Caption:='--';
    end else begin
      o002.Caption:='0.0';
      b002.Caption:='0.0';
      d002.Caption:='0.0';
      n1002.Caption:='0.0';
      n2002.Caption:='0.0';
      o1002.Caption:='0.0';
      o2002.Caption:='0.0';
      oc002.Caption:='--';
      dc002.Caption:='--';
      bc002.Caption:='--';
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(distinct date1) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3,sum(sectt) as n4,sum(sectt1) as n5,'
                +'sum(sectc) as n6,sum(osect) as n7 from week52 where tshop=:x1 and date1>=:x2 and date1<=:x3 and wday=''H'' and tshop>'''' and lactive=1';
    params[0].asstring:=clientdataset3.fieldbyname('tshop').value;
    params[1].asdate:=frmcalendar.dateedit1.date;
    params[2].asdate:=frmcalendar.dateedit2.date;
    open;
    s02.Caption:=formatfloat('#0',fieldbyname('cnt').asfloat);
    if not fieldbyname('n1').isnull then begin
      o003.Caption:=formatfloat('0.0',fieldbyname('n1').value);
      b003.Caption:=formatfloat('0.0',fieldbyname('n2').value);
      d003.Caption:=formatfloat('0.0',fieldbyname('n3').value);
      n1003.Caption:=formatfloat('0.0',fieldbyname('n4').value);
      n2003.Caption:=formatfloat('0.0',fieldbyname('n5').value);
      o1003.Caption:=formatfloat('0.0',fieldbyname('n6').value);
      o2003.Caption:=formatfloat('0.0',fieldbyname('n7').value);
      if fieldbyname('n1').value>0 then oc003.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n1').value-100.00)
      else oc003.Caption:='--';
      if fieldbyname('n3').value>0 then dc003.Caption:='100.00' else dc003.Caption:='--';
      if fieldbyname('n2').value>0 then bc003.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n2').value-100.00)
      else bc003.Caption:='--';
    end else begin
      o003.Caption:='0.0';
      b003.Caption:='0.0';
      d003.Caption:='0.0';
      n1003.Caption:='0.0';
      n2003.Caption:='0.0';
      o1003.Caption:='0.0';
      o2003.Caption:='0.0';
      oc003.Caption:='--';
      dc003.Caption:='--';
      bc003.Caption:='--';
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(distinct date1) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3,sum(sectt) as n4,sum(sectt1) as n5,'
                +'sum(sectc) as n6,sum(osect) as n7 from week52 where tshop=:x1 and date1>=:x2 and date1<=:x3 and wday=''W'' and tshop>'''' and lactive=1';
    params[0].asstring:=clientdataset3.fieldbyname('tshop').value;
    params[1].asdate:=frmcalendar.dateedit1.date;
    params[2].asdate:=frmcalendar.dateedit2.date;
    open;
    s03.Caption:=formatfloat('#0',fieldbyname('cnt').asfloat);
    if not fieldbyname('n1').isnull then begin
      o001.Caption:=formatfloat('0.0',fieldbyname('n1').value);
      b001.Caption:=formatfloat('0.0',fieldbyname('n2').value);
      d001.Caption:=formatfloat('0.0',fieldbyname('n3').value);
      n1001.Caption:=formatfloat('0.0',fieldbyname('n4').value);
      n2001.Caption:=formatfloat('0.0',fieldbyname('n5').value);
      o1001.Caption:=formatfloat('0.0',fieldbyname('n6').value);
      o2001.Caption:=formatfloat('0.0',fieldbyname('n7').value);
      if fieldbyname('n1').value>0 then oc001.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n1').value-100.00)
      else oc001.Caption:='--';
      if fieldbyname('n3').value>0 then dc001.Caption:='100.00' else dc001.Caption:='--';
      if fieldbyname('n2').value>0 then bc001.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n2').value-100.00)
      else bc001.Caption:='--';
    end else begin
      o001.Caption:='0.0';
      b001.Caption:='0.0';
      d001.Caption:='0.0';
      n1001.Caption:='0.0';
      n2001.Caption:='0.0';
      o1001.Caption:='0.0';
      o2001.Caption:='0.0';
      oc001.Caption:='--';
      dc001.Caption:='--';
      bc001.Caption:='--';
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(distinct date1) as cnt from week52 where tshop=:x1 and date1>=:x2 and date1<=:x3 and csect>0 and tshop>'''' and lactive=1';
    params[0].asstring:=clientdataset3.fieldbyname('tshop').value;
    params[1].asdate:=frmcalendar.dateedit1.date;
    params[2].asdate:=frmcalendar.dateedit2.date;
    open;
    s04.Caption:=fieldbyname('cnt').asstring;
  end;

  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select distinct sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3 from week52 where tshop=:x1 and date1>=:x2 and date1<=:x3 and tshop>'''' and lactive=1';
    params[0].asstring:=clientdataset3.fieldbyname('tshop').value;
    params[1].asdate:=frmcalendar.dateedit1.date;
    params[2].asdate:=frmcalendar.dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then begin
      socu001.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.00);
      sdcu001.Caption:='100.00';
    end else begin
      socu001.Caption:='--';
      sdcu001.Caption:='--';
    end;
    if not fieldbyname('s3').isnull then
      sbcu001.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.00)
    else sbcu001.Caption:='--';
  end;
end;

procedure Tfrmcalendar_sum.ppSummaryBand2BeforePrint(Sender: TObject);
var
  tplant:string;
begin
  if frmcalendar.combobox1.text<>'KBT' then tplant:=frmcalendar.combobox1.text else tplant:='KB';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select distinct sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3,count(distinct tshop) as s4,count(distinct line) as s5 from week52 where date1>=:x2 and date1<=:x3 and tshop>'''' and lactive=1';
    if frmcalendar.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+tplant+'''';
    params[0].asdate:=frmcalendar.dateedit1.date;
    params[1].asdate:=frmcalendar.dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then begin
      tocu001.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.00);
      tdcu001.Caption:='100.00';
    end else begin
      tocu001.Caption:='--';
      tdcu001.Caption:='--';
    end;
    if not fieldbyname('s3').isnull then
      tbcu001.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.00)
    else tbcu001.Caption:='--';
    lines001.Caption:='# of workshop:  '+fieldbyname('s4').AsString+'    # of line:  '+fieldbyname('s5').asstring;
  end;
end;

procedure Tfrmcalendar_sum.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmcalendar_sum.ppSummaryBand3BeforePrint(Sender: TObject);
var
  tplant:string;
begin
  if frmcalendar.combobox1.text<>'KBT' then tplant:=frmcalendar.combobox1.text else tplant:='KB';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3,count(distinct line) as cnt,sum(sectt) as s4,'
                +'sum(sectt1) as s5,sum(sectc) as s6,sum(osect) as s7,count(distinct tshop) as cnt1 from week52 where date1>=:x2 and date1<=:x3 and tshop>'''' and lactive=1';
    if frmcalendar.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+tplant+'''';
    params[0].asdate:=frmcalendar.dateedit1.date;
    params[1].asdate:=frmcalendar.dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then begin
      tocu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.00);
      aocu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.00);
      tdcu01.Caption:='100.00';
      adcu01.Caption:='100.00';
      ave008.caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.00);
      ave010.caption:='100.00';
    end else begin
      tocu01.Caption:='--';
      tdcu01.Caption:='--';
      aocu01.Caption:='--';
      adcu01.Caption:='--';
      ave008.Caption:='--';
      ave010.caption:='--';
    end;
    if not fieldbyname('cnt').isnull then lines003.Caption:=fieldbyname('cnt').asstring else lines003.Caption:='0';
    if not fieldbyname('cnt1').isnull then wks001.Caption:=fieldbyname('cnt1').asstring else wks001.Caption:='0';
    if not fieldbyname('s3').isnull then begin
      tbcu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.00);
      abcu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.00);
      ave009.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.00);
    end else begin
      tbcu01.Caption:='--';
      abcu01.Caption:='--';
      ave009.Caption:='--';
    end;
    ave001.Caption:=formatfloat('0.0',fieldbyname('s1').value/fieldbyname('cnt').value);
    ave002.Caption:=formatfloat('0.0',fieldbyname('s3').value/fieldbyname('cnt').value);
    ave003.Caption:=formatfloat('0.0',fieldbyname('s2').value/fieldbyname('cnt').value);
    ave004.Caption:=formatfloat('0.0',fieldbyname('s4').value/fieldbyname('cnt').value);
    ave005.Caption:=formatfloat('0.0',fieldbyname('s5').value/fieldbyname('cnt').value);
    ave006.Caption:=formatfloat('0.0',fieldbyname('s6').value/fieldbyname('cnt').value);
    ave007.Caption:=formatfloat('0.0',fieldbyname('s7').value/fieldbyname('cnt').value);
  end;
end;

procedure Tfrmcalendar_sum.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppreport3.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport3.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmcalendar_sum.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  tplant:string;
begin
  if frmcalendar.combobox1.text<>'KBT' then tplant:=frmcalendar.combobox1.text else tplant:='KB';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select distinct sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3,count(distinct line) as s4 from week52 where date1>=:x1 and date1<=:x2 and tshop=:x3 and tshop>'''' and lactive=1';
    if frmcalendar.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+tplant+'''';
    params[0].asdate:=frmcalendar.dateedit1.date;
    params[1].asdate:=frmcalendar.dateedit2.date;
    params[2].asstring:=clientdataset3.fieldbyname('tshop').value;
    open;
    if not fieldbyname('s1').isnull then begin
      socu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.00);
      sdcu01.Caption:='100.00';
    end else begin
      socu01.Caption:='--';
      sdcu01.Caption:='--';
    end;
    if not fieldbyname('s1').isnull then
      sbcu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.00)
    else sbcu01.Caption:='--';
    if not fieldbyname('s4').isnull then lines002.Caption:=fieldbyname('s4').asstring else lines002.Caption:='0';
  end;
end;

procedure Tfrmcalendar_sum.ppReport2BeforePrint(Sender: TObject);
begin
  if clientdataset3.fieldbyname('tplant').value='KB' then begin
    x001.Visible:=false;x002.Visible:=false;x003.Visible:=false;x004.Visible:=false;
    o2001.Visible:=false;o2002.Visible:=false;o2003.Visible:=false;
  end else begin
    x001.Visible:=true;x002.Visible:=true;x003.Visible:=true;x004.Visible:=true;
    o2001.Visible:=true;o2002.Visible:=true;o2003.Visible:=true;
  end;
end;

procedure Tfrmcalendar_sum.ppReport3BeforePrint(Sender: TObject);
begin
  if clientdataset3.fieldbyname('tplant').value='KB' then begin
    y001.Visible:=false;y002.Visible:=false;y003.Visible:=false;y004.Visible:=false;y005.Visible:=false;ave007.Visible:=false;
  end else begin
    y001.Visible:=true;y002.Visible:=true;y003.Visible:=true;y004.Visible:=true;y005.Visible:=true;ave007.Visible:=true;
  end;
end;

end.
 