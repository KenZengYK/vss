unit pdnrpt7formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar,
  ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  ppViewr, ppMemo, ppRichTx, myChkBox, ppRegion, ppParameter;

type
  Tfrmpdnrpt7 = class(TForm)
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
    ppLabel37: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    title002: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBPipeline3: TppDBPipeline;
    DataSource3: TDataSource;
    Query5: TClientDataSet;
    ppShape6: TppShape;
    ppLabel109: TppLabel;
    exdttm002: TppLabel;
    ppLabel90: TppLabel;
    truck001: TppLabel;
    ppLabel89: TppLabel;
    indttm001: TppLabel;
    ppLabel94: TppLabel;
    ppLabel98: TppLabel;
    ppLabel101: TppLabel;
    ondt001: TppLabel;
    vess001: TppLabel;
    lport001: TppLabel;
    ppLabel123: TppLabel;
    voyn001: TppLabel;
    ppLabel125: TppLabel;
    ppLabel127: TppLabel;
    exdt001: TppLabel;
    ppLabel129: TppLabel;
    exdt002: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppShape16: TppShape;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    cpo001: TppLabel;
    ppLabel56: TppLabel;
    ppLabel91: TppLabel;
    ppLabel112: TppLabel;
    ppLabel114: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    box001: TppLabel;
    wght001: TppLabel;
    cbm001: TppLabel;
    y005: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel97: TppLabel;
    ppLabel100: TppLabel;
    ppLabel110: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    y004: TppDBText;
    y001: TppDBText;
    y002: TppDBText;
    y003: TppDBText;
    ppDBText5: TppDBText;
    ppDBText12: TppDBText;
    ppDBText33: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText24: TppDBText;
    ppDBText27: TppDBText;
    ppShape17: TppShape;
    ppLabel102: TppLabel;
    sum001: TppLabel;
    sqty001: TppDBCalc;
    poqty001: TppLabel;
    s001: TppLabel;
    ppLabel1: TppLabel;
    poqty002: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel3: TppLabel;
    x001: TppLabel;
    x002: TppLabel;
    x005: TppLabel;
    x003: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    x004: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    com001: TppLabel;
    com002: TppLabel;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel11: TppLabel;
    ppLabel6: TppLabel;
    exfty002: TppLabel;
    ppLabel13: TppLabel;
    ppLine20: TppLine;
    ppLabel12: TppLabel;
    ppLine21: TppLine;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    shipmode001: TppLabel;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel14: TppLabel;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppTitleBand1: TppTitleBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape8: TppShape;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppLabel24: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
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
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine24: TppLine;
    ppLabel16: TppLabel;
    ppLine25: TppLine;
    ppLabel29: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel71: TppLabel;
    ppLabel73: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel34: TppLabel;
    ppLabel39: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText7: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    sdd01: TppDBText;
    sdbcn: TppLabel;
    ppDBText1: TppDBText;
    st1001: TppDBText;
    ppDBText3: TppDBText;
    st2001: TppDBText;
    saq001: TppDBText;
    st3001: TppDBText;
    st4001: TppDBText;
    ppDBText10: TppDBText;
    ppDBText2: TppDBText;
    ppDBText14: TppDBText;
    sdp01: TppLabel;
    grade001: TppLabel;
    shpm001: TppLabel;
    exfty003: TppLabel;
    extm002: TppLabel;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    stt001: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppShape9: TppShape;
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
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    grade002: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel15: TppLabel;
    xxx001: TppLabel;
    ppLabel55: TppLabel;
    ppLabel57: TppLabel;
    ppDBText26: TppDBText;
    ppDBCalc12: TppDBCalc;
    pdn002: TppLabel;
    ppShape10: TppShape;
    ppShape11: TppShape;
    swing001: TppLabel;
    swing002: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    rair001: TppLabel;
    ppLine26: TppLine;
    ppLabel58: TppLabel;
    ppLabel61: TppLabel;
    ppLabel65: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    oth001: TppLabel;
    oth002: TppLabel;
    ppLabel70: TppLabel;
    ppLabel72: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel78: TppLabel;
    ppLabel80: TppLabel;
    ppLabel83: TppLabel;
    oth003: TppLabel;
    oth004: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    oth005: TppLabel;
    oth006: TppLabel;
    ppLabel95: TppLabel;
    ppLabel99: TppLabel;
    ppLabel62: TppLabel;
    ppLabel111: TppLabel;
    ppLabel113: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand5BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnrpt7: Tfrmpdnrpt7;

implementation

uses mainformu, pdnformu, pdnreportformu, pdnprintformu;

{$R *.dfm}

procedure Tfrmpdnrpt7.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnrpt7.ppGroupHeaderBand1BeforePrint(Sender: TObject);
var
  box1:integer;
  wght1,cbm1:double;
begin
  //
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct cname) as s2,count(distinct j_no) as s3,count(distinct j2_job) as s4,'
                +'count(distinct custpo) as s5,sum(box) as s6,sum(wght) as s7,sum(cbm) as s8,sum(diff) as s9,sum(sqty) as s10 from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    if not fieldbyname('s6').isnull then box1:=fieldbyname('s6').value else box1:=0;
    if not fieldbyname('s7').isnull then wght1:=fieldbyname('s7').value else wght1:=0;
    if not fieldbyname('s8').isnull then cbm1:=fieldbyname('s8').value else cbm1:=0;
  end;
  if pos('PO',cpo001.Caption)>0 then begin
    box001.Caption:=inttostr(box1);
    wght001.Caption:=formatfloat('0.00',wght1);
    cbm001.Caption:=formatfloat('0.00',cbm1);
    y005.caption:='';
  end else begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select box,wght,cbm from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
      params[0].asinteger:=query5.fieldbyname('seq').value;
      params[1].asinteger:=query5.fieldbyname('seq1').value;
      open;
      box001.Caption:=fieldbyname('box').asstring;
      wght001.Caption:=formatfloat('0.00',fieldbyname('wght').value);
      cbm001.Caption:=formatfloat('0.00',fieldbyname('cbm').value);
    end;
    if not query5.fieldbyname('dest').isnull then
    y005.caption:=query5.fieldbyname('dest').value
    else y005.caption:='';
  end;
end;

procedure Tfrmpdnrpt7.ppDetailBand1BeforePrint(Sender: TObject);
var
  swing1,qty1,s1:integer;
begin
  if pos('PO',cpo001.Caption)>0 then begin
    y001.Visible:=true;
    y002.Visible:=true;
    y003.Visible:=true;
    y004.Visible:=true;
  end else begin
    y001.Visible:=false;
    y002.Visible:=false;
    y003.Visible:=false;
    y004.Visible:=false;
  end;
  com001.Caption:=inttostr(query5.fieldbyname('poqty').value-query5.fieldbyname('sqty').value-query5.fieldbyname('shpqty').value);
  if (query5.fieldbyname('poqty').value-query5.fieldbyname('sqty').value-query5.fieldbyname('shpqty').value>0) then com001.Font.Color:=clRed
  else if (query5.fieldbyname('poqty').value-query5.fieldbyname('sqty').value-query5.fieldbyname('shpqty').value=0) then com001.Font.Color:=clBlack
  else com001.Font.Color:=clGreen;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select swing,qty,spqty+writeoff+lstqty as s1 from tbl_pdn_wksum where seq=:x1 and seq1=:x2 and tm=:x3';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asstring:=query5.fieldbyname('seq1').value;
    params[2].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('swing').isnull then begin
      swing1:=fieldbyname('swing').value;
      qty1:=fieldbyname('qty').value;
      swing001.Caption:=formatfloat('#0',query5.fieldbyname('poqty').value*s1/qty1);
    end else swing001.Caption:='';
    if not fieldbyname('s1').isnull then begin
      s1:=fieldbyname('s1').value;
      qty1:=fieldbyname('qty').value;
      oth001.Caption:=formatfloat('#0',query5.fieldbyname('poqty').value*s1/qty1);
    end else oth001.Caption:='';
  end;
  //
end;

procedure Tfrmpdnrpt7.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  pqty,s1:integer;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct cname) as s2,count(distinct j_no) as s3,count(distinct j2_job) as s4,'
                +'count(distinct custpo) as s5 from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    sum001.Caption:='Ttl:    Project='+fieldbyname('s3').asstring+'    Cust Style='+fieldbyname('s1').asstring+'    Style Clr Code='+fieldbyname('s2').asstring+'    Cust Clr Name='+fieldbyname('s2').asstring;
    sum001.Caption:=sum001.Caption+'    Cust PO='+fieldbyname('s5').asstring+'    WO='+fieldbyname('s4').asstring;
  end;
  pqty:=0; s1:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct j_no,j2_job,poqty,shpqty from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').Value;
    params[1].asinteger:=query5.fieldbyname('seq1').Value;
    open;
    first;
    while not eof do begin
      pqty:=pqty+fieldbyname('poqty').value;
      s1:=s1+fieldbyname('shpqty').value;
      application.ProcessMessages;
      next;
    end;
  end;
  poqty001.Caption:=inttostr(pqty);
  poqty002.Caption:=inttostr(pqty);
  com002.Caption:=inttostr(pqty-sqty001.Value-s1);
  s001.Caption:=inttostr(s1);
  if (pqty-sqty001.Value-s1>0) then com002.Font.Color:=clRed
  else if (pqty-sqty001.Value-s1=0) then com002.Font.Color:=clBlack
  else com002.Font.Color:=clGreen;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select swing,spqty+writeoff+lstqty as s1 from tbl_pdn_wksum where seq=:x1 and seq1=:x2 and tm=:x3';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asstring:=query5.fieldbyname('seq1').value;
    params[2].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('swing').isnull then begin
      swing002.Caption:=fieldbyname('swing').asstring;
    end else swing002.Caption:='0';
    if not fieldbyname('s1').isnull then begin
      oth002.Caption:=fieldbyname('s1').asstring;
    end else oth002.Caption:='0';
  end;
  //
end;

procedure Tfrmpdnrpt7.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  {
            with frmpdnrpt7.query1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='select distinct seq,seq1,j_no,custpo,cstyle,acol from tbl_pdn_pack where seq=:x1 and seq1=:x2 order by seq1,j_no,custpo,cstyle,acol';
              params[0].asinteger:=Query5.fieldbyname('seq').value;
              params[1].asinteger:=Query5.fieldbyname('seq1').value;
              open;
            end;
  }
end;

procedure Tfrmpdnrpt7.ppGroupHeaderBand4BeforePrint(Sender: TObject);
var
  dt1:string;
begin
  if pos('Final',title002.Caption)>0 then begin
    dt1:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value-3);
  end else dt1:='';
  if frmpdnprint.xh13.Enabled then
  frmpdnrpt7.title002.Caption:=' - Preliminary'
  else if (frmpdnprint.xh14.Enabled or frmpdnprint.xh15.Enabled or frmpdnprint.xh16.Enabled or frmpdnprint.xh17.Enabled or frmpdnprint.xh18.Enabled) then
  frmpdnrpt7.title002.Caption:=' - Final';
  title002.Caption:=title002.Caption+' - '+query5.fieldbyname('memo1').value;

  if pos('TM',pdn001.Caption)>0 then begin
    x001.Caption:='Contact: Felix Kwok';
    x002.Caption:='Telephone: 852 - 2610 3351';
    x003.Caption:='Email: FelixKwok@phgmt.com.hk';
    x004.Caption:='Submission Date: '+dt1;
    x005.Caption:='Fax: 852 - 2494 3591';
  end else begin
    x001.Caption:='Contact: Samuel Leung';
    x002.Caption:='Telephone: 852 - 2610 3340';
    x003.Caption:='Email: SamuelLeung@phgmt.com.hk';
    x004.Caption:='Submission Date: '+dt1;
    x005.Caption:='Fax: 852 - 2494 3500';
  end;
end;

procedure Tfrmpdnrpt7.ppGroupHeaderBand5BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    if not fieldbyname('exfty').isnull then exdt001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('exfty').value)
    else exdt001.Caption:='';
    if not fieldbyname('extm').isnull then exdt002.Caption:=formatdatetime('hh:nn',fieldbyname('extm').value)
    else exdt002.Caption:='';
    if not fieldbyname('actdt').isnull then exdttm002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('actdt').value)+' / '
    else exdttm002.Caption:='';
    if not fieldbyname('acttm').isnull then exdttm002.Caption:=exdttm002.Caption+formatdatetime('hh:nn',fieldbyname('acttm').value);
    if not fieldbyname('truck').isnull then truck001.Caption:=fieldbyname('truck').value else truck001.Caption:='';
    if not fieldbyname('indt').isnull then indttm001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('indt').value)+' / '
    else indttm001.Caption:='';
    if not fieldbyname('intm').isnull then indttm001.Caption:=indttm001.Caption+formatdatetime('hh:nn',fieldbyname('intm').value);
    if not fieldbyname('ondt').isnull then ondt001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('ondt').value)
    else ondt001.Caption:='';
    if not fieldbyname('shpm').isnull then shipmode001.Caption:=fieldbyname('shpm').value else shipmode001.Caption:='';
    if not fieldbyname('vess').isnull then vess001.Caption:=fieldbyname('vess').value else vess001.Caption:='';
    if not fieldbyname('lport').isnull then lport001.Caption:=fieldbyname('lport').value else lport001.Caption:='';
    if not fieldbyname('voyn').isnull then voyn001.Caption:=fieldbyname('voyn').value else voyn001.Caption:='';
    if not fieldbyname('rair').isnull then rair001.Caption:=fieldbyname('rair').value else rair001.Caption:='';
  end;
end;

procedure Tfrmpdnrpt7.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if query1.fieldbyname('sqty').value>query1.fieldbyname('t1qty').value then st1001.Font.color:=clRed
  else if query1.fieldbyname('sqty').value=query1.fieldbyname('t1qty').value then st1001.Font.Color:=clBlack
  else st1001.Font.color:=clGreen;
  if query1.fieldbyname('t1qty').value>query1.fieldbyname('t2qty').value then st2001.Font.color:=clRed
  else if query1.fieldbyname('t1qty').value=query1.fieldbyname('t2qty').value then st2001.Font.Color:=clBlack
  else st2001.Font.color:=clGreen;
  if query1.fieldbyname('t2qty').value>query1.fieldbyname('t3qty').value then st3001.Font.color:=clRed
  else if query1.fieldbyname('t2qty').value=query1.fieldbyname('t3qty').value then st3001.Font.Color:=clBlack
  else st3001.Font.color:=clGreen;
  if query1.fieldbyname('t3qty').value>query1.fieldbyname('aqqty').value then saq001.Font.color:=clRed
  else if query1.fieldbyname('t3qty').value=query1.fieldbyname('aqqty').value then saq001.Font.Color:=clBlack
  else saq001.Font.color:=clGreen;
  if query1.fieldbyname('aqqty').value>query1.fieldbyname('eqty').value then st4001.Font.color:=clRed
  else if query1.fieldbyname('aqqty').value=query1.fieldbyname('eqty').value then st4001.Font.Color:=clBlack
  else st4001.Font.color:=clGreen;

  if not query1.fieldbyname('bcn').isnull then sdbcn.caption:=query1.fieldbyname('bcn').value
  else sdbcn.caption:='';
  if not query1.fieldbyname('shpm').isnull then shpm001.Caption:=query1.fieldbyname('shpm').value
  else shpm001.Caption:='';
  if not query1.fieldbyname('exfty').isnull then exfty003.Caption:=formatdatetime('yy-MM-dd',query1.fieldbyname('exfty').value)
  else exfty003.Caption:='';
  if not query1.fieldbyname('extm').isnull then extm002.Caption:=formatdatetime('hh:nn',query1.fieldbyname('extm').value)
  else extm002.Caption:='';

  if query1.fieldbyname('diff').value<0 then begin
    sdd01.Font.color:=clRed;
    sdp01.Font.Color:=clRed;
    grade001.Font.Color:=clRed;
  end else if query1.fieldbyname('diff').value=0 then begin
    sdd01.Font.Color:=clBlack;
    sdp01.Font.Color:=clBlack;
    grade001.Font.Color:=clBlack;
  end else begin
    sdd01.Font.Color:=clGreen;
    sdp01.Font.Color:=clGreen;
    grade001.Font.Color:=clGreen;
  end;
  //if query1.fieldbyname('sqty').value>0 then
  sdp01.Caption:='('+formatfloat('0.0%',query1.fieldbyname('dp').value)+')';
  //else sdp01.caption:='0.0%';
  if query1.fieldbyname('stt').value='PDN acted' then begin
    if (query1.fieldbyname('dp').value>=-1.0) and (query1.fieldbyname('dp').value<=1.0) then grade001.Caption:='A'
    else if ((query1.fieldbyname('dp').value>=-2.0) and (query1.fieldbyname('dp').value<-1.0)) or ((query1.fieldbyname('dp').value>1.0) and (query1.fieldbyname('dp').value<=2.0)) then grade001.Caption:='B'
    else if ((query1.fieldbyname('dp').value>=-3.0) and (query1.fieldbyname('dp').value<-2.0)) or ((query1.fieldbyname('dp').value>2.0) and (query1.fieldbyname('dp').value<=3.0)) then grade001.Caption:='C'
    else if ((query1.fieldbyname('dp').value>=-4.0) and (query1.fieldbyname('dp').value<-3.0)) or ((query1.fieldbyname('dp').value>3.0) and (query1.fieldbyname('dp').value<=4.0)) then grade001.Caption:='D'
    else if ((query1.fieldbyname('dp').value>=-5.0) and (query1.fieldbyname('dp').value<-4.0)) or ((query1.fieldbyname('dp').value>4.0) and (query1.fieldbyname('dp').value<=5.0)) then grade001.Caption:='F'
    else grade001.Caption:='U';
  end else grade001.caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select status from tbl_pdn_m where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('status').isnull then begin
      if fieldbyname('status').value='0' then stt001.Caption:='1'
      else if fieldbyname('status').value='1' then stt001.Caption:='2.1'
      else if fieldbyname('status').value='2' then stt001.Caption:='3.1'
      else if fieldbyname('status').value='20' then stt001.Caption:='3.2'
      else if fieldbyname('status').value='3' then stt001.Caption:='4.2'
      else if fieldbyname('status').value='4' then stt001.Caption:='4.3'
      else if fieldbyname('status').value='5' then stt001.Caption:='5.1'
      else if fieldbyname('status').value='6' then stt001.Caption:='5.2';
    end else stt001.Caption:='';
  end;
  oth003.Caption:=inttostr(query1.fieldbyname('spqty').value+query1.fieldbyname('writeoff').value+query1.fieldbyname('lstqty').value);
  oth005.Caption:=oth003.caption;
end;

procedure Tfrmpdnrpt7.ppSummaryBand1BeforePrint(Sender: TObject);
begin
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

  if sbd01.Value<0 then begin
    sbd01.Font.Color:=clRed;
    sbp01.Font.Color:=clRed;
    grade002.Font.Color:=clRed;
  end else if sbd01.Value=0 then begin
    sbd01.Font.Color:=clBlack;
    sbp01.Font.Color:=clBlack;
    grade002.Font.Color:=clBlack;
  end else begin
    sbd01.Font.Color:=clGreen;
    sbp01.Font.Color:=clGreen;
    grade002.Font.Color:=clGreen;
  end;
  if sbq01.Value>0 then begin
    sbp01.Caption:='('+formatfloat('0.0%',sbd01.Value*100.0/sbq01.Value)+')';
    if (sbd01.Value*100.0/sbq01.value>=-1.0) and (sbd01.Value*100.0/sbq01.Value<=1.0) then grade002.Caption:='A'
    else if ((sbd01.Value*100.0/sbq01.value>=-2.0) and (sbd01.Value*100.0/sbq01.value<-1.0)) or ((sbd01.Value*100.0/sbq01.value>1.0) and (sbd01.Value*100.0/sbq01.value<=2.0)) then grade002.Caption:='B'
    else if ((sbd01.Value*100.0/sbq01.value>=-3.0) and (sbd01.Value*100.0/sbq01.value<-2.0)) or ((sbd01.Value*100.0/sbq01.value>2.0) and (sbd01.Value*100.0/sbq01.value<=3.0)) then grade002.Caption:='C'
    else if ((sbd01.Value*100.0/sbq01.value>=-4.0) and (sbd01.Value*100.0/sbq01.value<-3.0)) or ((sbd01.Value*100.0/sbq01.value>3.0) and (sbd01.Value*100.0/sbq01.value<=4.0)) then grade002.Caption:='D'
    else if ((sbd01.Value*100.0/sbq01.value>=-5.0) and (sbd01.Value*100.0/sbq01.value<-4.0)) or ((sbd01.Value*100.0/sbq01.value>4.0) and (sbd01.Value*100.0/sbq01.value<=5.0)) then grade002.Caption:='F'
    else grade002.Caption:='U';
  end else begin
    sbp01.Caption:='0.0%';
    grade002.Caption:='A';
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select seq from tbl_pdn_wksum where tm=:x1 and stt<>''PDN acted''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('seq').isnull then grade002.Caption:='';
  end;

  oth004.Caption:=inttostr(ppdbcalc5.Value+ppdbcalc6.Value+ppdbcalc10.Value);
  oth006.Caption:=oth004.Caption;

{
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select count(distinct a.seq) as s0,count(distinct a.j_no) as s1,count(distinct a.j2_job) as s2,count(distinct a.cstyle) as s3,'
                +'count(distinct a.acol) as s4,count(distinct a.custpo) as s5,count(*) as s6 from tbl_pdn_rwo a,tbl_pdn_m b where a.seq=b.seq and b.wk=:x1 and b.tplant='''+frmpdn.combobox1.text+'''';
    params[0].asinteger:=frmpdn.wEdit1.Value;
    open;
    if not fieldbyname('s0').isnull then begin
      ttl001.Caption:='Ttl:    PDN='+fieldbyname('s0').asstring+'    Project='+fieldbyname('s1').asstring+'    Cust Style='+fieldbyname('s3').asstring+'    Clr='+fieldbyname('s4').asstring+'    WO='+fieldbyname('s2').asstring+'    Cust PO='+fieldbyname('s5').asstring+'    RWO='+fieldbyname('s6').asstring;
    end else ttl001.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select count(*) as s7 from tblshedule a,tbl_pdn_rwo b,tbl_pdn_m c where b.seq=c.seq and a.j_no=b.j_no and a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol and c.wk=:x1 and c.tplant='''+frmpdn.combobox1.text+'''';
    params[0].asinteger:=frmpdn.wEdit1.Value;
    open;
    if not fieldbyname('s7').isnull then begin
      if ttl001.Caption>'' then ttl001.Caption:=ttl001.caption+'    QN='+fieldbyname('s7').asstring else ttl001.Caption:='QN='+fieldbyname('s7').asstring;
    end;
  end;
}
end;

end.
