unit pdnrpt9formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar,
  ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  ppViewr, ppMemo, ppRichTx, ppParameter;

type
  Tfrmpdnrpt9 = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    DataSource2: TDataSource;
    Query4: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppLabel35: TppLabel;
    pdn001: TppLabel;
    ppLabel36: TppLabel;
    exfty001: TppLabel;
    ppLabel21: TppLabel;
    week01: TppLabel;
    ppLabel27: TppLabel;
    fty001: TppLabel;
    ppLabel28: TppLabel;
    exfty002: TppLabel;
    ppLabel34: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    sdd01: TppDBText;
    sd103: TppLabel;
    sd104: TppLabel;
    sd106: TppLabel;
    sd108: TppLabel;
    sd101: TppLabel;
    sdp01: TppLabel;
    sd107: TppLabel;
    cstyle001: TppDBText;
    sd011: TppDBText;
    sd102: TppLabel;
    sd008: TppDBText;
    sd009: TppLabel;
    sd010: TppLabel;
    sd012: TppLabel;
    sd013: TppLabel;
    sdbcn: TppLabel;
    sdcast: TppLabel;
    sdpo: TppLabel;
    sdcolor: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    dd001: TppDBText;
    d1003: TppLabel;
    d1004: TppLabel;
    d1006: TppLabel;
    d1008: TppLabel;
    d2003: TppLabel;
    d2004: TppLabel;
    d2006: TppLabel;
    d2008: TppLabel;
    d3003: TppLabel;
    d3004: TppLabel;
    d3006: TppLabel;
    d3008: TppLabel;
    ppDBText9: TppDBText;
    d1001: TppLabel;
    d1002: TppLabel;
    d2002: TppLabel;
    d2001: TppLabel;
    d3001: TppLabel;
    d3002: TppLabel;
    dp001: TppLabel;
    d1007: TppLabel;
    d2007: TppLabel;
    d3007: TppLabel;
    ppDBText3: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppShape5: TppShape;
    ppLabel46: TppLabel;
    ppDBCalc3: TppDBCalc;
    tbq001: TppDBCalc;
    tbd001: TppDBCalc;
    tb1003: TppDBCalc;
    tb1004: TppDBCalc;
    tb1006: TppDBCalc;
    tb1008: TppDBCalc;
    tb2003: TppDBCalc;
    tb2004: TppDBCalc;
    tb2006: TppDBCalc;
    tb2008: TppDBCalc;
    tb3003: TppDBCalc;
    tb3004: TppDBCalc;
    tb3006: TppDBCalc;
    tb3008: TppDBCalc;
    tb1001: TppDBCalc;
    tb1002: TppDBCalc;
    tb2001: TppDBCalc;
    tb2002: TppDBCalc;
    tb3001: TppDBCalc;
    tb3002: TppDBCalc;
    tbp001: TppLabel;
    tb1007: TppDBCalc;
    tb2007: TppDBCalc;
    tb3007: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel13: TppLabel;
    ppDBCalc1: TppDBCalc;
    bq001: TppDBCalc;
    bd001: TppDBCalc;
    b1003: TppDBCalc;
    b1004: TppDBCalc;
    b1006: TppDBCalc;
    b1008: TppDBCalc;
    b2003: TppDBCalc;
    b2004: TppDBCalc;
    b2006: TppDBCalc;
    b2008: TppDBCalc;
    b3003: TppDBCalc;
    b3004: TppDBCalc;
    b3006: TppDBCalc;
    b3008: TppDBCalc;
    b1001: TppDBCalc;
    b1002: TppDBCalc;
    b2001: TppDBCalc;
    b2002: TppDBCalc;
    b3001: TppDBCalc;
    b3002: TppDBCalc;
    bp001: TppLabel;
    b1007: TppDBCalc;
    b2007: TppDBCalc;
    b3007: TppDBCalc;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    s3003: TppLabel;
    s3004: TppLabel;
    s3006: TppLabel;
    s3008: TppLabel;
    rwo003: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    s3108: TppLabel;
    s3001: TppLabel;
    s3002: TppLabel;
    s3102: TppLabel;
    ppLabel39: TppLabel;
    s3101: TppLabel;
    s3007: TppLabel;
    s3107: TppLabel;
    s3103: TppLabel;
    s3104: TppLabel;
    s3106: TppLabel;
    rwo001: TppLabel;
    rwo002: TppLabel;
    s1001: TppLabel;
    s1002: TppLabel;
    s1003: TppLabel;
    s1004: TppLabel;
    s1006: TppLabel;
    s1007: TppLabel;
    s1008: TppLabel;
    s2001: TppLabel;
    s2002: TppLabel;
    s2003: TppLabel;
    s2004: TppLabel;
    s2006: TppLabel;
    s2007: TppLabel;
    s2008: TppLabel;
    s1101: TppLabel;
    s1102: TppLabel;
    s1103: TppLabel;
    s1104: TppLabel;
    s1106: TppLabel;
    s1107: TppLabel;
    s1108: TppLabel;
    s2101: TppLabel;
    s2102: TppLabel;
    s2103: TppLabel;
    s2104: TppLabel;
    s2106: TppLabel;
    s2107: TppLabel;
    s2108: TppLabel;
    ppLabel4: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel47: TppLabel;
    srwo01: TppLabel;
    ss101: TppLabel;
    ss103: TppLabel;
    ss104: TppLabel;
    ss106: TppLabel;
    ss107: TppLabel;
    ss108: TppLabel;
    ss111: TppLabel;
    ss113: TppLabel;
    ss114: TppLabel;
    ss116: TppLabel;
    ss117: TppLabel;
    ss118: TppLabel;
    ppLabel19: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel53: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine5: TppLine;
    ppLabel1: TppLabel;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel72: TppLabel;
    ppLabel71: TppLabel;
    ppLabel73: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLabel96: TppLabel;
    ppDBCalc2: TppDBCalc;
    sbq01: TppDBCalc;
    sbd01: TppDBCalc;
    sb103: TppDBCalc;
    sb104: TppDBCalc;
    sb106: TppDBCalc;
    sb108: TppDBCalc;
    sb101: TppDBCalc;
    sbp01: TppLabel;
    sb107: TppDBCalc;
    sb102: TppDBCalc;
    ppLabel30: TppLabel;
    ppMemo1: TppMemo;
    ppLabel31: TppLabel;
    ppMemo2: TppMemo;
    sb011: TppDBCalc;
    sb008: TppDBCalc;
    sb009: TppDBCalc;
    sb010: TppLabel;
    sb012: TppLabel;
    sb013: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    grade002: TppLabel;
    acted001: TppLabel;
    ppShape14: TppShape;
    ppRichText1: TppRichText;
    grade001: TppLabel;
    ppLabel43: TppLabel;
    ttl001: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel48: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand7BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnrpt9: Tfrmpdnrpt9;

implementation

uses mainformu, pdnformu, pdnreportformu;

{$R *.dfm}

procedure Tfrmpdnrpt9.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnrpt9.ppGroupHeaderBand4BeforePrint(Sender: TObject);
begin
  srwo01.Caption:='123';

  ss101.Visible:=false;ss103.Visible:=false;ss104.Visible:=false;ss106.Visible:=false;ss107.Visible:=false;ss108.Visible:=false;
  //ss201.Visible:=false;ss203.Visible:=false;ss204.Visible:=false;ss206.Visible:=false;ss207.Visible:=false;ss208.Visible:=false;
  //ss301.Visible:=false;ss303.Visible:=false;ss304.Visible:=false;ss306.Visible:=false;ss307.Visible:=false;ss308.Visible:=false;
  ss111.Visible:=false;ss113.Visible:=false;ss114.Visible:=false;ss116.Visible:=false;ss117.Visible:=false;ss118.Visible:=false;
  //ss211.Visible:=false;ss213.Visible:=false;ss214.Visible:=false;ss216.Visible:=false;ss217.Visible:=false;ss218.Visible:=false;
  //ss311.Visible:=false;ss313.Visible:=false;ss314.Visible:=false;ss316.Visible:=false;ss317.Visible:=false;ss318.Visible:=false;

  if srwo01.Caption>'' then begin
    ss101.Visible:=true;ss103.Visible:=true;ss104.Visible:=true;ss106.Visible:=true;ss107.Visible:=true;ss108.Visible:=true;
    ss111.Visible:=true;ss113.Visible:=true;ss114.Visible:=true;ss116.Visible:=true;ss117.Visible:=true;ss118.Visible:=true;
  end;
  {
  if srwo02.Caption>'' then begin
    ss201.Visible:=true;ss203.Visible:=true;ss204.Visible:=true;ss206.Visible:=true;ss207.Visible:=true;ss208.Visible:=true;
    ss211.Visible:=true;ss213.Visible:=true;ss214.Visible:=true;ss216.Visible:=true;ss217.Visible:=true;ss218.Visible:=true;
  end;
  if srwo03.Caption>'' then begin
    ss301.Visible:=true;ss303.Visible:=true;ss304.Visible:=true;ss306.Visible:=true;ss307.Visible:=true;ss308.Visible:=true;
    ss311.Visible:=true;ss313.Visible:=true;ss314.Visible:=true;ss316.Visible:=true;ss317.Visible:=true;ss318.Visible:=true;
  end;
  }
end;

procedure Tfrmpdnrpt9.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if srwo01.Caption>'' then begin
    sd101.Caption:=query4.fieldbyname('r1qty').asstring;
    sd102.Caption:=query4.fieldbyname('r1pqty').asstring;
    sd103.Caption:=query4.fieldbyname('r1t1qty').asstring;
    sd104.Caption:=query4.fieldbyname('r1t2qty').asstring;
    sd106.Caption:=query4.fieldbyname('r1t3qty').asstring;
    sd107.Caption:=query4.fieldbyname('r1aqqty').asstring;
    sd108.Caption:=query4.fieldbyname('r1t4qty').asstring;
  end else begin
   sd101.Caption:='';sd102.caption:='';sd103.Caption:='';sd104.Caption:='';
   sd106.Caption:='';sd107.Caption:='';sd108.Caption:='';
  end;
  sd009.Caption:=sd101.Caption;
  sd012.Caption:=inttostr(query4.fieldbyname('qty').value-query4.fieldbyname('sqty').value);
  sd013.Caption:=inttostr(query4.fieldbyname('r1qty').value-query4.fieldbyname('sqty').value);
  sd010.Caption:='0';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bcn,castl,cname,custpo from tbl_pdn_rwo where seq=:x1 and j_no=:x2 and j2_job=:x3 and acol=:x4';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asstring:=query4.fieldbyname('j_no').value;
    params[2].asstring:=query4.fieldbyname('j2_job').value;
    params[3].asstring:=query4.fieldbyname('acol').value;
    open;
    if not fieldbyname('bcn').isnull then sdbcn.Caption:=fieldbyname('bcn').value else sdbcn.Caption:='';
    if not fieldbyname('castl').isnull then sdcast.Caption:=fieldbyname('castl').value else sdcast.Caption:='';
    if not fieldbyname('cname').isnull then sdcolor.Caption:=fieldbyname('cname').value else sdcolor.Caption:='';
    if not fieldbyname('custpo').isnull then sdpo.Caption:=fieldbyname('custpo').value else sdpo.Caption:='';
  end;
  //sd012.Caption:=inttostr(sd008.FieldValue-strintoint(sd010.caption)-sd011.FieldValue);
  //sd013.Caption:=inttostr(strtoint(sd009.caption)-strintoint(sd010.caption)-sd011.FieldValue);
  {
  if srwo02.Caption>'' then begin
    sd201.Caption:=query4.fieldbyname('r2qty').asstring;
    sd203.Caption:=query4.fieldbyname('r2t1qty').asstring;
    sd204.Caption:=query4.fieldbyname('r2t2qty').asstring;
    sd206.Caption:=query4.fieldbyname('r2t3qty').asstring;
    sd207.Caption:=query4.fieldbyname('r2aqqty').asstring;
    sd208.Caption:=query4.fieldbyname('r2t4qty').asstring;
  end else begin
   sd201.Caption:='';sd203.Caption:='';sd204.Caption:='';
   sd206.Caption:='';sd207.Caption:='';sd208.Caption:='';
  end;
  if srwo03.Caption>'' then begin
    sd301.Caption:=query4.fieldbyname('r3qty').asstring;
    sd303.Caption:=query4.fieldbyname('r3t1qty').asstring;
    sd304.Caption:=query4.fieldbyname('r3t2qty').asstring;
    sd306.Caption:=query4.fieldbyname('r3t3qty').asstring;
    sd307.Caption:=query4.fieldbyname('r3aqqty').asstring;
    sd308.Caption:=query4.fieldbyname('r3t4qty').asstring;
  end else begin
   sd301.Caption:='';sd303.Caption:='';sd304.Caption:='';
   sd306.Caption:='';sd307.Caption:='';sd308.Caption:='';
  end;
  }
  //QN 1
  if query4.fieldbyname('r1aqqty').value>query4.fieldbyname('r1t4qty').value then sd108.Font.color:=clRed
  else if query4.fieldbyname('r1aqqty').value=query4.fieldbyname('r1t4qty').value then sd108.Font.color:=clBlack
  else sd108.Font.color:=clGreen;
  if query4.fieldbyname('r1t3qty').value>query4.fieldbyname('r1aqqty').value then sd107.Font.color:=clRed
  else if query4.fieldbyname('r1t3qty').value=query4.fieldbyname('r1aqqty').value then sd107.Font.color:=clBlack
  else sd107.Font.color:=clGreen;
  if query4.fieldbyname('r1t2qty').value>query4.fieldbyname('r1t3qty').value then sd106.Font.color:=clRed
  else if query4.fieldbyname('r1t2qty').value=query4.fieldbyname('r1t3qty').value then sd106.Font.color:=clBlack
  else sd106.Font.color:=clGreen;
  if query4.fieldbyname('r1t1qty').value>query4.fieldbyname('r1t2qty').value then sd104.Font.color:=clRed
  else if query4.fieldbyname('r1t1qty').value=query4.fieldbyname('r1t2qty').value then sd104.Font.color:=clBlack
  else sd104.Font.color:=clGreen;
  if query4.fieldbyname('r1pqty').value>query4.fieldbyname('r1t1qty').value then sd103.Font.color:=clRed
  else if query4.fieldbyname('r1pqty').value=query4.fieldbyname('r1t1qty').value then sd103.Font.color:=clBlack
  else sd103.Font.color:=clGreen;
{
  //QN 2
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2t4qty').value then sd208.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2t4qty').value then sd208.Font.color:=clBlack
  else sd208.Font.color:=clGreen;
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2aqqty').value then sd207.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2aqqty').value then sd207.Font.color:=clBlack
  else sd207.Font.color:=clGreen;
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2t3qty').value then sd206.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2t3qty').value then sd206.Font.color:=clBlack
  else sd206.Font.color:=clGreen;
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2t2qty').value then sd204.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2t2qty').value then sd204.Font.color:=clBlack
  else sd204.Font.color:=clGreen;
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2t1qty').value then sd203.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2t1qty').value then sd203.Font.color:=clBlack
  else sd203.Font.color:=clGreen;

  //QN 3
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3t4qty').value then sd308.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3t4qty').value then sd308.Font.color:=clBlack
  else sd308.Font.color:=clGreen;
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3aqqty').value then sd307.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3aqqty').value then sd307.Font.color:=clBlack
  else sd307.Font.color:=clGreen;
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3t3qty').value then sd306.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3t3qty').value then sd306.Font.color:=clBlack
  else sd306.Font.color:=clGreen;
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3t2qty').value then sd304.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3t2qty').value then sd304.Font.color:=clBlack
  else sd304.Font.color:=clGreen;
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3t1qty').value then sd303.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3t1qty').value then sd303.Font.color:=clBlack
  else sd303.Font.color:=clGreen;
}
  if query4.fieldbyname('diff').value<0 then begin
    sdd01.Font.color:=clRed;
    sdp01.Font.Color:=clRed;
  end else if query4.fieldbyname('diff').value=0 then begin
    sdd01.Font.Color:=clBlack;
    sdp01.Font.Color:=clBlack;
  end else begin
    sdd01.Font.Color:=clGreen;
    sdp01.Font.Color:=clGreen;
  end;
  if query4.fieldbyname('sqty').value>0 then
  sdp01.Caption:='('+formatfloat('0.0%',query4.fieldbyname('diff').value*100.0/query4.fieldbyname('sqty').value)+')'
  else sdp01.Caption:='(0.0%)';

  with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftdatetime,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        commandtext:='select cstyle from tbl_pdn_r_tmp_sum where seq=:x1 and tm=:x2 and ((j_no<:x3) or (j_no=:x3 and j2_job<:x4) or (j_no=:x3 and j2_job=:x4 and acol<:x5)) and cstyle=:x6';
        params[0].asinteger:=Query4.fieldbyname('seq').value;
        params[1].asdatetime:=query4.fieldbyname('tm').value;
        params[2].asstring:=query4.fieldbyname('j_no').value;
        params[3].asstring:=query4.fieldbyname('j2_job').value;
        params[4].asstring:=query4.fieldbyname('acol').value;
        params[5].asstring:=query4.fieldbyname('cstyle').value;
        open;
        if not fieldbyname('cstyle').isnull then cstyle001.Font.Color:=clBlue else cstyle001.Font.Color:=clBlack;
  end;
end;

procedure Tfrmpdnrpt9.ppGroupFooterBand4BeforePrint(Sender: TObject);
begin
  sb101.Visible:=false;sb103.Visible:=false;sb104.Visible:=false;sb106.Visible:=false;sb107.Visible:=false;sb108.Visible:=false;
  //sb201.Visible:=false;sb203.Visible:=false;sb204.Visible:=false;sb206.Visible:=false;sb207.Visible:=false;sb208.Visible:=false;
  //sb301.Visible:=false;sb303.Visible:=false;sb304.Visible:=false;sb306.Visible:=false;sb307.Visible:=false;sb308.Visible:=false;

  if srwo01.Caption>'' then begin
    sb101.Visible:=true;sb103.Visible:=true;sb104.Visible:=true;sb106.Visible:=true;sb107.Visible:=true;sb108.Visible:=true;
  end;
  //if srwo02.Caption>'' then begin
  //  sb201.Visible:=true;sb203.Visible:=true;sb204.Visible:=true;sb206.Visible:=true;sb207.Visible:=true;sb208.Visible:=true;
  //end;
  //if srwo03.Caption>'' then begin
  //  sb301.Visible:=true;sb303.Visible:=true;sb304.Visible:=true;sb306.Visible:=true;sb307.Visible:=true;sb308.Visible:=true;
  //end;
  //QN 1
  if sb102.Value>sb103.Value then sb103.Font.Color:=clRed
  else if sb102.Value=sb103.Value then sb103.Font.Color:=clBlack else sb103.Font.Color:=clGreen;
  if sb103.Value>sb104.Value then sb104.Font.Color:=clRed
  else if sb103.Value=sb104.Value then sb104.Font.Color:=clBlack else sb104.Font.Color:=clGreen;
  if sb104.Value>sb106.Value then sb106.Font.Color:=clRed
  else if sb104.Value=sb106.Value then sb106.Font.Color:=clBlack else sb106.Font.Color:=clGreen;
  if sb106.Value>sb107.Value then sb107.Font.Color:=clRed
  else if sb106.Value=sb107.Value then sb107.Font.Color:=clBlack else sb107.Font.Color:=clGreen;
  if sb107.Value>sb108.Value then sb108.Font.Color:=clRed
  else if sb107.Value=sb108.Value then sb108.Font.Color:=clBlack else sb108.Font.Color:=clGreen;
{
  //QN 2
  if sb202.Value>sb203.Value then sb203.Font.Color:=clRed
  else if sb202.Value=sb203.Value then sb203.Font.Color:=clBlack else sb203.Font.Color:=clGreen;
  if sb202.Value>sb204.Value then sb204.Font.Color:=clRed
  else if sb202.Value=sb204.Value then sb204.Font.Color:=clBlack else sb204.Font.Color:=clGreen;
  if sb202.Value>sb206.Value then sb206.Font.Color:=clRed
  else if sb202.Value=sb206.Value then sb206.Font.Color:=clBlack else sb206.Font.Color:=clGreen;
  if sb202.Value>sb207.Value then sb207.Font.Color:=clRed
  else if sb202.Value=sb207.Value then sb207.Font.Color:=clBlack else sb207.Font.Color:=clGreen;
  if sb202.Value>sb208.Value then sb208.Font.Color:=clRed
  else if sb202.Value=sb208.Value then sb208.Font.Color:=clBlack else sb208.Font.Color:=clGreen;

  //QN 3
  if sb302.Value>sb303.Value then sb303.Font.Color:=clRed
  else if sb302.Value=sb303.Value then sb303.Font.Color:=clBlack else sb303.Font.Color:=clGreen;
  if sb302.Value>sb304.Value then sb304.Font.Color:=clRed
  else if sb302.Value=sb304.Value then sb304.Font.Color:=clBlack else sb304.Font.Color:=clGreen;
  if sb302.Value>sb306.Value then sb306.Font.Color:=clRed
  else if sb302.Value=sb306.Value then sb306.Font.Color:=clBlack else sb306.Font.Color:=clGreen;
  if sb302.Value>sb307.Value then sb307.Font.Color:=clRed
  else if sb302.Value=sb307.Value then sb307.Font.Color:=clBlack else sb307.Font.Color:=clGreen;
  if sb302.Value>sb308.Value then sb308.Font.Color:=clRed
  else if sb302.Value=sb308.Value then sb308.Font.Color:=clBlack else sb308.Font.Color:=clGreen;
}
  sb012.Caption:=inttostr(sb008.Value-sb011.Value);
  sb013.Caption:=inttostr(sb009.value-sb011.Value);
  sb010.Caption:='0';

  if sbd01.Value<0 then begin
    sbd01.Font.Color:=clRed;
    sbp01.Font.Color:=clRed;
    grade001.Font.Color:=clRed;
  end else if sbd01.Value=0 then begin
    sbd01.Font.Color:=clBlack;
    sbp01.Font.Color:=clBlack;
    grade001.Font.Color:=clBlack;
  end else begin
    sbd01.Font.Color:=clGreen;
    sbp01.Font.Color:=clGreen;
    grade001.Font.Color:=clGreen;
  end;
  sbp01.Caption:='('+formatfloat('0.0%',sbd01.Value*100.0/sbq01.Value)+')';
  if sbq01.Value>0 then begin
    if (sbd01.Value*100.0/sbq01.value>=-1.0) and (sbd01.Value*100.0/sbq01.Value<=1.0) then grade001.Caption:='Grade: A'
    else if ((sbd01.Value*100.0/sbq01.value>=-2.0) and (sbd01.Value*100.0/sbq01.value<-1.0)) or ((sbd01.Value*100.0/sbq01.value>1.0) and (sbd01.Value*100.0/sbq01.value<=2.0)) then grade001.Caption:='Grade: B'
    else if ((sbd01.Value*100.0/sbq01.value>=-3.0) and (sbd01.Value*100.0/sbq01.value<-2.0)) or ((sbd01.Value*100.0/sbq01.value>2.0) and (sbd01.Value*100.0/sbq01.value<=3.0)) then grade001.Caption:='Grade: C'
    else if ((sbd01.Value*100.0/sbq01.value>=-4.0) and (sbd01.Value*100.0/sbq01.value<-3.0)) or ((sbd01.Value*100.0/sbq01.value>3.0) and (sbd01.Value*100.0/sbq01.value<=4.0)) then grade001.Caption:='Grade: D'
    else if ((sbd01.Value*100.0/sbq01.value>=-5.0) and (sbd01.Value*100.0/sbq01.value<-4.0)) or ((sbd01.Value*100.0/sbq01.value>4.0) and (sbd01.Value*100.0/sbq01.value<=5.0)) then grade001.Caption:='Grade: F'
    else grade001.Caption:='Grade: U';
  end else grade001.Caption:='Grade: A';
  grade002.Caption:=grade001.Caption;
  if not frmpdn.query1.fieldbyname('marks').isnull then
  ppmemo1.Text:=frmpdn.query1.fieldbyname('marks').value;
  if not frmpdn.query1.fieldbyname('marks1').isnull then
  ppmemo2.Text:=frmpdn.query1.fieldbyname('marks1').value;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select count(distinct j_no) as s1,count(distinct j2_job) as s2,count(distinct cstyle) as s3,count(distinct acol) as s4,count(distinct custpo) as s5,count(*) as s6 from tbl_pdn_rwo where seq=:x1';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ttl001.Caption:='Ttl:    Project='+fieldbyname('s1').asstring+'    Cust Style='+fieldbyname('s3').asstring+'    Clr='+fieldbyname('s4').asstring+'    WO='+fieldbyname('s2').asstring+'    Cust PO='+fieldbyname('s5').asstring+'    RWO='+fieldbyname('s6').asstring;
    end else ttl001.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select count(*) as s7 from tblshedule a,tbl_pdn_rwo b where a.j_no=b.j_no and a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol and b.seq=:x1';
    params[0].asinteger:=query4.fieldbyname('seq').Value;
    open;
    if not fieldbyname('s7').isnull then begin
      if ttl001.Caption>'' then ttl001.Caption:=ttl001.caption+'    QN='+fieldbyname('s7').asstring else ttl001.Caption:='QN='+fieldbyname('s7').asstring;
    end;
  end;
end;

procedure Tfrmpdnrpt9.ppGroupHeaderBand7BeforePrint(Sender: TObject);
begin
  rwo001.Caption:='';rwo002.Caption:='';rwo003.Caption:='';
  s1001.Visible:=false;s1002.Visible:=false;s1003.Visible:=false;s1004.Visible:=false;s1006.Visible:=false;s1007.Visible:=false;s1008.Visible:=false;
  s2001.Visible:=false;s2002.Visible:=false;s2003.Visible:=false;s2004.Visible:=false;s2006.Visible:=false;s2007.Visible:=false;s2008.Visible:=false;
  s3001.Visible:=false;s3002.Visible:=false;s3003.Visible:=false;s3004.Visible:=false;s3006.Visible:=false;s3007.Visible:=false;s3008.Visible:=false;
  s1101.Visible:=false;s1102.Visible:=false;s1103.Visible:=false;s1104.Visible:=false;s1106.Visible:=false;s1107.Visible:=false;s1108.Visible:=false;
  s2101.Visible:=false;s2102.Visible:=false;s2103.Visible:=false;s2104.Visible:=false;s2106.Visible:=false;s2107.Visible:=false;s2108.Visible:=false;
  s3101.Visible:=false;s3102.Visible:=false;s3103.Visible:=false;s3104.Visible:=false;s3106.Visible:=false;s3107.Visible:=false;s3108.Visible:=false;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftdatetime,'x2',ptinput);
    commandtext:='select * from tbl_pdn_r_tmp1 where seq=:x1 and tm=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and acol='''+query1.fieldbyname('acol').value+'''';// and rwo='''+query1.fieldbyname('rwo').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('r1').isnull then begin
      rwo001.Caption:='RWO #: '+query1.fieldbyname('j2_job').value+'-'+fieldbyname('r1').value;
      s1001.Visible:=true;s1002.Visible:=true;s1003.Visible:=true;s1004.Visible:=true;s1006.Visible:=true;s1007.Visible:=true;s1008.Visible:=true;
      s1101.Visible:=true;s1102.Visible:=true;s1103.Visible:=true;s1104.Visible:=true;s1106.Visible:=true;s1107.Visible:=true;s1108.Visible:=true;
    end;
    if not fieldbyname('r2').isnull then begin
      rwo002.Caption:='RWO #: '+query1.fieldbyname('j2_job').value+'-'+fieldbyname('r2').value;
      s2001.Visible:=true;s2002.Visible:=true;s2003.Visible:=true;s2004.Visible:=true;s2006.Visible:=true;s2007.Visible:=true;s2008.Visible:=true;
      s2101.Visible:=true;s2102.Visible:=true;s2103.Visible:=true;s2104.Visible:=true;s2106.Visible:=true;s2107.Visible:=true;s2108.Visible:=true;
    end;
    if not fieldbyname('r3').isnull then begin
      rwo003.Caption:='RWO #: '+query1.fieldbyname('j2_job').value+'-'+fieldbyname('r3').value;
      s3001.Visible:=true;s3002.Visible:=true;s3003.Visible:=true;s3004.Visible:=true;s3006.Visible:=true;s3007.Visible:=true;s3008.Visible:=true;
      s3101.Visible:=true;s3102.Visible:=true;s3103.Visible:=true;s3104.Visible:=true;s3106.Visible:=true;s3107.Visible:=true;s3108.Visible:=true;
    end;
  end;
end;

procedure Tfrmpdnrpt9.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if rwo001.Caption>'' then begin
    d1001.Caption:=query1.fieldbyname('r1qty').asstring;
    d1002.Caption:=query1.fieldbyname('r1pqty').asstring;
    d1003.Caption:=query1.fieldbyname('r1t1qty').asstring;
    d1004.Caption:=query1.fieldbyname('r1t2qty').asstring;
    d1006.Caption:=query1.fieldbyname('r1t3qty').asstring;
    d1007.Caption:=query1.fieldbyname('r1aqqty').asstring;
    d1008.Caption:=query1.fieldbyname('r1t4qty').asstring;
  end else begin
   d1001.Caption:='';d1002.Caption:='';d1003.Caption:='';d1004.Caption:='';
   d1006.Caption:='';d1007.Caption:='';d1008.Caption:='';
  end;
  if rwo002.Caption>'' then begin
    d2001.Caption:=query1.fieldbyname('r2qty').asstring;
    d2002.Caption:=query1.fieldbyname('r2pqty').asstring;
    d2003.Caption:=query1.fieldbyname('r2t1qty').asstring;
    d2004.Caption:=query1.fieldbyname('r2t2qty').asstring;
    d2006.Caption:=query1.fieldbyname('r2t3qty').asstring;
    d2007.Caption:=query1.fieldbyname('r2aqqty').asstring;
    d2008.Caption:=query1.fieldbyname('r2t4qty').asstring;
  end else begin
   d2001.Caption:='';d2002.Caption:='';d2003.Caption:='';d2004.Caption:='';
   d2006.Caption:='';d2007.Caption:='';d2008.Caption:='';
  end;
  if rwo003.Caption>'' then begin
    d3001.Caption:=query1.fieldbyname('r3qty').asstring;
    d3002.Caption:=query1.fieldbyname('r3pqty').asstring;
    d3003.Caption:=query1.fieldbyname('r3t1qty').asstring;
    d3004.Caption:=query1.fieldbyname('r3t2qty').asstring;
    d3006.Caption:=query1.fieldbyname('r3t3qty').asstring;
    d3007.Caption:=query1.fieldbyname('r3aqqty').asstring;
    d3008.Caption:=query1.fieldbyname('r3t4qty').asstring;
  end else begin
   d3001.Caption:='';d3002.Caption:='';d3003.Caption:='';d3004.Caption:='';
   d3006.Caption:='';d3007.Caption:='';d3008.Caption:='';
  end;
  //QN 1
  if query1.fieldbyname('r1aqqty').value>query1.fieldbyname('r1t4qty').value then d1008.Font.color:=clRed
  else if query1.fieldbyname('r1aqqty').value=query1.fieldbyname('r1t4qty').value then d1008.Font.color:=clBlack
  else d1008.Font.color:=clGreen;
  if query1.fieldbyname('r1t3qty').value>query1.fieldbyname('r1aqqty').value then d1007.Font.color:=clRed
  else if query1.fieldbyname('r1t3qty').value=query1.fieldbyname('r1aqqty').value then d1007.Font.color:=clBlack
  else d1007.Font.color:=clGreen;
  if query1.fieldbyname('r1t2qty').value>query1.fieldbyname('r1t3qty').value then d1006.Font.color:=clRed
  else if query1.fieldbyname('r1t2qty').value=query1.fieldbyname('r1t3qty').value then d1006.Font.color:=clBlack
  else d1006.Font.color:=clGreen;
  if query1.fieldbyname('r1t1qty').value>query1.fieldbyname('r1t2qty').value then d1004.Font.color:=clRed
  else if query1.fieldbyname('r1t1qty').value=query1.fieldbyname('r1t2qty').value then d1004.Font.color:=clBlack
  else d1004.Font.color:=clGreen;
  if query1.fieldbyname('r1pqty').value>query1.fieldbyname('r1t1qty').value then d1003.Font.color:=clRed
  else if query1.fieldbyname('r1pqty').value=query1.fieldbyname('r1t1qty').value then d1003.Font.color:=clBlack
  else d1003.Font.color:=clGreen;

  //QN 2
  if query1.fieldbyname('r2aqqty').value>query1.fieldbyname('r2t4qty').value then d2008.Font.color:=clRed
  else if query1.fieldbyname('r2aqqty').value=query1.fieldbyname('r2t4qty').value then d2008.Font.color:=clBlack
  else d2008.Font.color:=clGreen;
  if query1.fieldbyname('r2t3qty').value>query1.fieldbyname('r2aqqty').value then d2007.Font.color:=clRed
  else if query1.fieldbyname('r2t3qty').value=query1.fieldbyname('r2aqqty').value then d2007.Font.color:=clBlack
  else d2007.Font.color:=clGreen;
  if query1.fieldbyname('r2t2qty').value>query1.fieldbyname('r2t3qty').value then d2006.Font.color:=clRed
  else if query1.fieldbyname('r2t2qty').value=query1.fieldbyname('r2t3qty').value then d2006.Font.color:=clBlack
  else d2006.Font.color:=clGreen;
  if query1.fieldbyname('r2t1qty').value>query1.fieldbyname('r2t2qty').value then d2004.Font.color:=clRed
  else if query1.fieldbyname('r2t1qty').value=query1.fieldbyname('r2t2qty').value then d2004.Font.color:=clBlack
  else d2004.Font.color:=clGreen;
  if query1.fieldbyname('r2pqty').value>query1.fieldbyname('r2t1qty').value then d2003.Font.color:=clRed
  else if query1.fieldbyname('r2pqty').value=query1.fieldbyname('r2t1qty').value then d2003.Font.color:=clBlack
  else d2003.Font.color:=clGreen;

  //QN 3
  if query1.fieldbyname('r3aqqty').value>query1.fieldbyname('r3t4qty').value then d3008.Font.color:=clRed
  else if query1.fieldbyname('r3aqqty').value=query1.fieldbyname('r3t4qty').value then d3008.Font.color:=clBlack
  else d3008.Font.color:=clGreen;
  if query1.fieldbyname('r3t3qty').value>query1.fieldbyname('r3aqqty').value then d3007.Font.color:=clRed
  else if query1.fieldbyname('r3t3qty').value=query1.fieldbyname('r3aqqty').value then d3007.Font.color:=clBlack
  else d3007.Font.color:=clGreen;
  if query1.fieldbyname('r3t2qty').value>query1.fieldbyname('r3t3qty').value then d3006.Font.color:=clRed
  else if query1.fieldbyname('r3t2qty').value=query1.fieldbyname('r3t3qty').value then d3006.Font.color:=clBlack
  else d3006.Font.color:=clGreen;
  if query1.fieldbyname('r3t1qty').value>query1.fieldbyname('r3t2qty').value then d3004.Font.color:=clRed
  else if query1.fieldbyname('r3t1qty').value=query1.fieldbyname('r3t2qty').value then d3004.Font.color:=clBlack
  else d3004.Font.color:=clGreen;
  if query1.fieldbyname('r3pqty').value>query1.fieldbyname('r3t1qty').value then d3003.Font.color:=clRed
  else if query1.fieldbyname('r3pqty').value=query1.fieldbyname('r3t1qty').value then d3003.Font.color:=clBlack
  else d3003.Font.color:=clGreen;

  if query1.fieldbyname('diff').value<0 then begin
    dd001.Font.color:=clRed;
    dp001.Font.Color:=clRed;
  end else if query1.fieldbyname('diff').value=0 then begin
    dd001.Font.Color:=clBlack;
    dp001.Font.Color:=clBlack;
  end else begin
    dd001.Font.Color:=clGreen;
    dp001.Font.Color:=clGreen;
  end;
  dp001.Caption:='';//'('+formatfloat('0.00%',query1.fieldbyname('diff').value*100.0/query1.fieldbyname('sqty').value)+')';
end;

procedure Tfrmpdnrpt9.ppGroupFooterBand6BeforePrint(Sender: TObject);
begin
  b1001.Visible:=false;b1002.Visible:=false;b1003.Visible:=false;b1004.Visible:=false;b1006.Visible:=false;b1007.Visible:=false;b1008.Visible:=false;
  b2001.Visible:=false;b2002.Visible:=false;b2003.Visible:=false;b2004.Visible:=false;b2006.Visible:=false;b2007.Visible:=false;b2008.Visible:=false;
  b3001.Visible:=false;b3002.Visible:=false;b3003.Visible:=false;b3004.Visible:=false;b3006.Visible:=false;b3007.Visible:=false;b3008.Visible:=false;

  if rwo001.Caption>'' then begin
    b1001.Visible:=true;b1002.Visible:=true;b1003.Visible:=true;b1004.Visible:=true;b1006.Visible:=true;b1007.Visible:=true;b1008.Visible:=true;
  end;
  if rwo002.Caption>'' then begin
    b2001.Visible:=true;b2002.Visible:=true;b2003.Visible:=true;b2004.Visible:=true;b2006.Visible:=true;b2007.Visible:=true;b2008.Visible:=true;
  end;
  if rwo003.Caption>'' then begin
    b3001.Visible:=true;b3002.Visible:=true;b3003.Visible:=true;b3004.Visible:=true;b3006.Visible:=true;b3007.Visible:=true;b3008.Visible:=true;
  end;
  //QN 1
  if b1002.Value>b1003.Value then b1003.Font.Color:=clRed
  else if b1002.Value=b1003.Value then b1003.Font.Color:=clBlack else b1003.Font.Color:=clGreen;
  if b1003.Value>b1004.Value then b1004.Font.Color:=clRed
  else if b1003.Value=b1004.Value then b1004.Font.Color:=clBlack else b1004.Font.Color:=clGreen;
  if b1004.Value>b1006.Value then b1006.Font.Color:=clRed
  else if b1004.Value=b1006.Value then b1006.Font.Color:=clBlack else b1006.Font.Color:=clGreen;
  if b1006.Value>b1007.Value then b1007.Font.Color:=clRed
  else if b1006.Value=b1007.Value then b1007.Font.Color:=clBlack else b1007.Font.Color:=clGreen;
  if b1007.Value>b1008.Value then b1008.Font.Color:=clRed
  else if b1007.Value=b1008.Value then b1008.Font.Color:=clBlack else b1008.Font.Color:=clGreen;

  //QN 2
  if b2002.Value>b2003.Value then b2003.Font.Color:=clRed
  else if b2002.Value=b2003.Value then b2003.Font.Color:=clBlack else b2003.Font.Color:=clGreen;
  if b2003.Value>b2004.Value then b2004.Font.Color:=clRed
  else if b2003.Value=b2004.Value then b2004.Font.Color:=clBlack else b2004.Font.Color:=clGreen;
  if b2004.Value>b2006.Value then b2006.Font.Color:=clRed
  else if b2004.Value=b2006.Value then b2006.Font.Color:=clBlack else b2006.Font.Color:=clGreen;
  if b2006.Value>b2007.Value then b2007.Font.Color:=clRed
  else if b2006.Value=b2007.Value then b2007.Font.Color:=clBlack else b2007.Font.Color:=clGreen;
  if b2007.Value>b2008.Value then b2008.Font.Color:=clRed
  else if b2007.Value=b2008.Value then b2008.Font.Color:=clBlack else b2008.Font.Color:=clGreen;

  //QN 3
  if b3002.Value>b3003.Value then b3003.Font.Color:=clRed
  else if b3002.Value=b3003.Value then b3003.Font.Color:=clBlack else b3003.Font.Color:=clGreen;
  if b3003.Value>b3004.Value then b3004.Font.Color:=clRed
  else if b3003.Value=b3004.Value then b3004.Font.Color:=clBlack else b3004.Font.Color:=clGreen;
  if b3004.Value>b3006.Value then b3006.Font.Color:=clRed
  else if b3004.Value=b3006.Value then b3006.Font.Color:=clBlack else b3006.Font.Color:=clGreen;
  if b3006.Value>b3007.Value then b3007.Font.Color:=clRed
  else if b3006.Value=b3007.Value then b3007.Font.Color:=clBlack else b3007.Font.Color:=clGreen;
  if b3007.Value>b3008.Value then b3008.Font.Color:=clRed
  else if b3007.Value=b3008.Value then b3008.Font.Color:=clBlack else b3008.Font.Color:=clGreen;

  if bd001.Value<0 then begin
    bd001.Font.Color:=clRed;
    bp001.Font.Color:=clRed;
  end else if bd001.Value=0 then begin
    bd001.Font.Color:=clBlack;
    bp001.Font.Color:=clBlack;
  end else begin
    bd001.Font.Color:=clGreen;
    bp001.Font.Color:=clBlack;
  end;
  bp001.Caption:='('+formatfloat('0.0%',bd001.Value*100.0/bq001.Value)+')';
end;

procedure Tfrmpdnrpt9.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  tb1001.Visible:=false;tb1002.Visible:=false;tb1003.Visible:=false;tb1004.Visible:=false;tb1006.Visible:=false;tb1007.Visible:=false;tb1008.Visible:=false;
  tb2001.Visible:=false;tb2002.Visible:=false;tb2003.Visible:=false;tb2004.Visible:=false;tb2006.Visible:=false;tb2007.Visible:=false;tb2008.Visible:=false;
  tb3001.Visible:=false;tb3002.Visible:=false;tb3003.Visible:=false;tb3004.Visible:=false;tb3006.Visible:=false;tb3007.Visible:=false;tb3008.Visible:=false;

  if rwo001.Caption>'' then begin
    tb1001.Visible:=true;tb1002.Visible:=true;tb1003.Visible:=true;tb1004.Visible:=true;tb1006.Visible:=true;tb1007.Visible:=true;tb1008.Visible:=true;
  end;
  if rwo002.Caption>'' then begin
    tb2001.Visible:=true;tb2002.Visible:=true;tb2003.Visible:=true;tb2004.Visible:=true;tb2006.Visible:=true;tb2007.Visible:=true;tb2008.Visible:=true;
  end;
  if rwo003.Caption>'' then begin
    tb3001.Visible:=true;tb3002.Visible:=true;tb3003.Visible:=true;tb3004.Visible:=true;tb3006.Visible:=true;tb3007.Visible:=true;tb3008.Visible:=true;
  end;
  //QN 1
  if tb1002.Value>tb1003.Value then tb1003.Font.Color:=clRed
  else if tb1002.Value=tb1003.Value then tb1003.Font.Color:=clBlack else tb1003.Font.Color:=clGreen;
  if tb1003.Value>tb1004.Value then tb1004.Font.Color:=clRed
  else if tb1003.Value=tb1004.Value then tb1004.Font.Color:=clBlack else tb1004.Font.Color:=clGreen;
  if tb1004.Value>tb1006.Value then tb1006.Font.Color:=clRed
  else if tb1004.Value=tb1006.Value then tb1006.Font.Color:=clBlack else tb1006.Font.Color:=clGreen;
  if tb1006.Value>tb1007.Value then tb1007.Font.Color:=clRed
  else if tb1006.Value=tb1007.Value then tb1007.Font.Color:=clBlack else tb1007.Font.Color:=clGreen;
  if tb1007.Value>tb1008.Value then tb1008.Font.Color:=clRed
  else if tb1007.Value=tb1008.Value then tb1008.Font.Color:=clBlack else tb1008.Font.Color:=clGreen;

  //QN 2
  if tb2002.Value>tb2003.Value then tb2003.Font.Color:=clRed
  else if tb2002.Value=tb2003.Value then tb2003.Font.Color:=clBlack else tb2003.Font.Color:=clGreen;
  if tb2003.Value>tb2004.Value then tb2004.Font.Color:=clRed
  else if tb2003.Value=tb2004.Value then tb2004.Font.Color:=clBlack else tb2004.Font.Color:=clGreen;
  if tb2004.Value>tb2006.Value then tb2006.Font.Color:=clRed
  else if tb2004.Value=tb2006.Value then tb2006.Font.Color:=clBlack else tb2006.Font.Color:=clGreen;
  if tb2006.Value>tb2007.Value then tb2007.Font.Color:=clRed
  else if tb2006.Value=tb2007.Value then tb2007.Font.Color:=clBlack else tb2007.Font.Color:=clGreen;
  if tb2007.Value>tb2008.Value then tb2008.Font.Color:=clRed
  else if tb2007.Value=tb2008.Value then tb2008.Font.Color:=clBlack else tb2008.Font.Color:=clGreen;

  //QN 1
  if tb3002.Value>tb3003.Value then tb3003.Font.Color:=clRed
  else if tb3002.Value=tb3003.Value then tb3003.Font.Color:=clBlack else tb3003.Font.Color:=clGreen;
  if tb3003.Value>tb3004.Value then tb3004.Font.Color:=clRed
  else if tb3003.Value=tb3004.Value then tb3004.Font.Color:=clBlack else tb3004.Font.Color:=clGreen;
  if tb3004.Value>tb3006.Value then tb3006.Font.Color:=clRed
  else if tb3004.Value=tb3006.Value then tb3006.Font.Color:=clBlack else tb3006.Font.Color:=clGreen;
  if tb3006.Value>tb3007.Value then tb3007.Font.Color:=clRed
  else if tb3006.Value=tb3007.Value then tb3007.Font.Color:=clBlack else tb3007.Font.Color:=clGreen;
  if tb3007.Value>tb3008.Value then tb3008.Font.Color:=clRed
  else if tb3007.Value=tb3008.Value then tb3008.Font.Color:=clBlack else tb3008.Font.Color:=clGreen;

  if tbd001.Value<0 then begin
    tbd001.Font.Color:=clRed;
    tbp001.Font.Color:=clRed;
  end else if bd001.Value=0 then begin
    tbd001.Font.Color:=clBlack;
    tbp001.Font.Color:=clBlack;
  end else begin
    tbd001.Font.Color:=clGreen;
    tbp001.Font.Color:=clBlack;
  end;
  tbp001.Caption:='('+formatfloat('0.0%',tbd001.Value*100.0/tbq001.Value)+')';
end;

end.
