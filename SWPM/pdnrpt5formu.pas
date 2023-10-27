unit pdnrpt5formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar,
  ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  ppViewr, ppMemo, ppRichTx, dateUtils, ppParameter;

type
  Tfrmpdnrpt5 = class(TForm)
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
    ppLabel21: TppLabel;
    week01: TppLabel;
    ppLabel27: TppLabel;
    fty001: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText13: TppDBText;
    sdd01: TppDBText;
    sdbcn: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel71: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLabel96: TppLabel;
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
    ttl001: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    Query4TM: TDateTimeField;
    Query4SEQ: TIntegerField;
    Query4PDN: TStringField;
    Query4SEQ1: TIntegerField;
    Query4BCN: TStringField;
    Query4QTY: TIntegerField;
    Query4SQTY: TIntegerField;
    Query4T1QTY: TIntegerField;
    Query4T2QTY: TIntegerField;
    Query4T3QTY: TIntegerField;
    Query4AQQTY: TIntegerField;
    Query4EQTY: TIntegerField;
    Query4SHPQTY: TIntegerField;
    Query4BAL1: TIntegerField;
    Query4BAL2: TIntegerField;
    Query4DIFF: TIntegerField;
    Query4DP: TFloatField;
    st1009: TppDBText;
    st1001: TppDBText;
    st1005: TppDBText;
    st2001: TppDBText;
    saq001: TppDBText;
    st3001: TppDBText;
    st4001: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    sdp01: TppLabel;
    grade001: TppLabel;
    ppLabel4: TppLabel;
    ppMemo1: TppMemo;
    ppLabel5: TppLabel;
    ppMemo2: TppMemo;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    exfty001: TppLabel;
    ppLabel9: TppLabel;
    exfty002: TppLabel;
    grade002: TppLabel;
    pdn001: TppLabel;
    ppMemo3: TppMemo;
    pdn002: TppLabel;
    ppMemo4: TppMemo;
    pdn003: TppLabel;
    shpm001: TppLabel;
    exfty003: TppLabel;
    extm002: TppLabel;
    ppDBText5: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBText6: TppDBText;
    ppShape14: TppShape;
    ppRichText1: TppRichText;
    stt001: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBText15: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppDBText17: TppDBText;
    ppDBCalc11: TppDBCalc;
    diff001: TppLabel;
    diff002: TppLabel;
    ttl002: TppLabel;
    ppShape1: TppShape;
    ttl003: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel36: TppLabel;
    ppLabel39: TppLabel;
    ppLabel43: TppLabel;
    ttl005: TppLabel;
    ppLabel45: TppLabel;
    ttl010: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ttl006: TppLabel;
    ppLabel51: TppLabel;
    ttl011: TppLabel;
    ppLabel53: TppLabel;
    ttl007: TppLabel;
    ppLabel55: TppLabel;
    ttl012: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ttl008: TppLabel;
    ppLabel62: TppLabel;
    ttl013: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ttl004: TppLabel;
    ttl009: TppLabel;
    ttl014: TppLabel;
    ppLabel56: TppLabel;
    ppLine11: TppLine;
    ppLabel61: TppLabel;
    ppLabel65: TppLabel;
    ppLabel72: TppLabel;
    ttl017: TppLabel;
    ttl016: TppLabel;
    ttl015: TppLabel;
    v001: TppLabel;
    v003: TppLabel;
    xy01: TppLabel;
    xy02: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc12: TppDBCalc;
    title002: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    pkf001: TppLabel;
    t1f001: TppLabel;
    t2f001: TppLabel;
    t3f001: TppLabel;
    aqf001: TppLabel;
    exf001: TppLabel;
    pdn004: TppLabel;
    pdn005: TppLabel;
    pdn006: TppLabel;
    ppMemo5: TppMemo;
    ppMemo6: TppMemo;
    ppMemo7: TppMemo;
    ppMemo8: TppMemo;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBText9: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppShape2: TppShape;
    ppLabel74: TppLabel;
    ppLine44: TppLine;
    ppLabel75: TppLabel;
    ppLine45: TppLine;
    ppLabel78: TppLabel;
    ppLabel82: TppLabel;
    ppLine46: TppLine;
    ppLabel83: TppLabel;
    ppLine47: TppLine;
    ppLabel84: TppLabel;
    ppLine48: TppLine;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel97: TppLabel;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine51: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine52: TppLine;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLine53: TppLine;
    ppLabel105: TppLabel;
    ppLine54: TppLine;
    ppLabel106: TppLabel;
    ppLine55: TppLine;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLine63: TppLine;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLine64: TppLine;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLine65: TppLine;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLine66: TppLine;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLine67: TppLine;
    ppLabel128: TppLabel;
    ppLine68: TppLine;
    ppLabel129: TppLabel;
    ppLine69: TppLine;
    ppLabel130: TppLabel;
    ppLine70: TppLine;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLine71: TppLine;
    ppLabel134: TppLabel;
    ppLine72: TppLine;
    ppLabel135: TppLabel;
    ppLine73: TppLine;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLine76: TppLine;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLabel146: TppLabel;
    ppLine79: TppLine;
    ppLabel147: TppLabel;
    ppLine80: TppLine;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLine81: TppLine;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLine82: TppLine;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape15: TppShape;
    ppLine83: TppLine;
    ppLabel33: TppLabel;
    SEWGG01: TppLabel;
    SEWSL01: TppLabel;
    SEWSL02: TppLabel;
    SEWGG02: TppLabel;
    ppDBText11: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLabel1: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand9BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnrpt5: Tfrmpdnrpt5;

implementation

uses mainformu, pdnformu, pdnprintformu, selpdnformu;

{$R *.dfm}

procedure Tfrmpdnrpt5.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnrpt5.ppDetailBand1BeforePrint(Sender: TObject);
begin
  //QN 1
  if query1.fieldbyname('sqty').value>query1.fieldbyname('rqty').value then st1009.Font.color:=clRed
  else if query1.fieldbyname('sqty').value=query1.fieldbyname('rqty').value then st1009.Font.Color:=clBlack
  else st1009.Font.color:=clGreen;
  if query1.fieldbyname('pkqty').value>query1.fieldbyname('t1qty').value then st1001.Font.color:=clRed
  else if query1.fieldbyname('pkqty').value=query1.fieldbyname('t1qty').value then st1001.Font.Color:=clBlack
  else st1001.Font.color:=clGreen;
  if query1.fieldbyname('t1qty').value>query1.fieldbyname('t2qty').value then st2001.Font.color:=clRed
  else if query1.fieldbyname('t1qty').value=query1.fieldbyname('t2qty').value then st2001.Font.Color:=clBlack
  else st2001.Font.color:=clGreen;
  if query1.fieldbyname('t2qty').value>query1.fieldbyname('t3qty').value then st3001.Font.color:=clRed
  else if query1.fieldbyname('t2qty').value=query1.fieldbyname('t3qty').value then st3001.Font.Color:=clBlack
  else st3001.Font.color:=clGreen;
  if query1.fieldbyname('sqty').value>query1.fieldbyname('aqqty').value then saq001.Font.color:=clRed
  else if query1.fieldbyname('sqty').value=query1.fieldbyname('aqqty').value then saq001.Font.Color:=clBlack
  else saq001.Font.color:=clGreen;
  //if query1.fieldbyname('t3qty').value>query1.fieldbyname('aqqty').value then saq001.Font.color:=clRed
  //else if query1.fieldbyname('t3qty').value=query1.fieldbyname('aqqty').value then saq001.Font.Color:=clBlack
  //else saq001.Font.color:=clGreen;
  if query1.fieldbyname('aqqty').value>query1.fieldbyname('eqty').value then st4001.Font.color:=clRed
  else if query1.fieldbyname('aqqty').value=query1.fieldbyname('eqty').value then st4001.Font.Color:=clBlack
  else st4001.Font.color:=clGreen;

  if not query1.fieldbyname('bcn').isnull then sdbcn.caption:=query1.fieldbyname('bcn').value
  else sdbcn.caption:='';
  if not query1.fieldbyname('shpm').isnull then shpm001.Caption:=query1.fieldbyname('shpm').value
  else shpm001.Caption:='';
  if not query1.fieldbyname('exfty').isnull then exfty003.Caption:=formatdatetime('MM-dd',query1.fieldbyname('exfty').value)
  else exfty003.Caption:='';
  if not query1.fieldbyname('extm').isnull then extm002.Caption:=formatdatetime('hh:nn',query1.fieldbyname('extm').value)
  else extm002.Caption:='';

  if query1.fieldbyname('diff').value<0 then begin
    //sdd01.Font.color:=clRed;
    diff001.Font.color:=clRed;
    sdp01.Font.Color:=clRed;
    grade001.Font.Color:=clRed;
  end else if query1.fieldbyname('diff').value=0 then begin
    //sdd01.Font.Color:=clBlack;
    diff001.Font.Color:=clBlack;
    sdp01.Font.Color:=clBlack;
    grade001.Font.Color:=clBlack;
  end else begin
    //sdd01.Font.Color:=clGreen;
    diff001.Font.Color:=clGreen;
    sdp01.Font.Color:=clGreen;
    grade001.Font.Color:=clGreen;
  end;
  //if query1.fieldbyname('sqty').value>0 then
  //sdp01.Caption:='('+formatfloat('0.0%',query1.fieldbyname('dp').value)+')';
  sdp01.Caption:=formatfloat('0.00',100.00+query1.fieldbyname('dp').value);
  //else sdp01.caption:='0.0%';
  //if abs(query1.fieldbyname('diff').value)=query1.fieldbyname('sqty').value then
  //diff001.Caption:='--' else diff001.Caption:=query1.fieldbyname('diff').asstring;
  diff001.Caption:=query1.fieldbyname('diff').asstring;
  
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
      else if fieldbyname('status').value='20' then stt001.Caption:='3.3'
      else if fieldbyname('status').value='3' then stt001.Caption:='4.2'
      else if fieldbyname('status').value='4' then stt001.Caption:='4.3'
      else if fieldbyname('status').value='5' then stt001.Caption:='5.1'
      else if fieldbyname('status').value='6' then stt001.Caption:='5.2';
    end else stt001.Caption:='';
  end;
  v001.Caption:=inttostr(query1.fieldbyname('spqty').value+query1.fieldbyname('writeoff').value+query1.fieldbyname('lstqty').value);
  //v002.Caption:=v001.Caption;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from sp_pdn_wkconfirm(:x1)';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('o_s1').isnull then flg001.Caption:=fieldbyname('o_s1').value else flg001.Caption:='p';
  end;
  }
  //var001.caption:=inttostr(query1.fieldbyname('sqty').value-query1.fieldbyname('eqty').value-query1.fieldbyname('spqty1').value-query1.fieldbyname('writeoff').value-query1.fieldbyname('lstqty1').value-query1.fieldbyname('hqty1').value-query1.fieldbyname('swing').value);
  {if query1.fieldbyname('wk').value<=43 then xy01.Caption:='n.a. ' else }xy01.Caption:=query1.fieldbyname('bal2').asstring;
  pkf001.caption:=''; t1f001.caption:=''; t2f001.caption:=''; t3f001.caption:=''; aqf001.caption:=''; exf001.caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from sp_pdn_wkconfirm_new(:x1,:x2)';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('pkf').isnull then pkf001.caption:=fieldbyname('pkf').value;
    if not fieldbyname('t1f').isnull then t1f001.caption:=fieldbyname('t1f').value;
    if not fieldbyname('t2f').isnull then t2f001.caption:=fieldbyname('t2f').value;
    if not fieldbyname('t3f').isnull then t3f001.caption:=fieldbyname('t3f').value;
    if not fieldbyname('aqf').isnull then aqf001.caption:=fieldbyname('aqf').value;
    if not fieldbyname('exf').isnull then exf001.caption:=fieldbyname('exf').value;
  end;
  if (query1.fieldbyname('tplant').value='GG') or (query1.fieldbyname('tplant').value='RX') or (query1.fieldbyname('tplant').value='GX') then begin
    sewsl01.caption:='0';
    sewgg01.caption:=query1.fieldbyname('sewph').value;
  end else begin
    sewgg01.caption:='0';
    sewsl01.caption:=query1.fieldbyname('sewph').value;
  end;
end;

procedure Tfrmpdnrpt5.ppSummaryBand2BeforePrint(Sender: TObject);
var
  i:integer;
  r63:boolean;
  qncnt:integer;
  str1:string;
begin
{
  if sbq01.Value>sb101.Value then sb101.Font.Color:=clRed
  else if sbq01.Value=sb101.Value then sb101.Font.Color:=clBlack else sb101.Font.Color:=clGreen;
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
    //sbd01.Font.Color:=clRed;
    diff002.Font.Color:=clRed;
    sbp01.Font.Color:=clRed;
    grade002.Font.Color:=clRed;
  end else if sbd01.Value=0 then begin
    //sbd01.Font.Color:=clBlack;
    diff002.Font.Color:=clBlack;
    sbp01.Font.Color:=clBlack;
    grade002.Font.Color:=clBlack;
  end else begin
    //sbd01.Font.Color:=clGreen;
    diff002.Font.Color:=clGreen;
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
  diff002.Caption:=inttostr(sbd01.Value);

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select seq from tbl_pdn_wksum where tm=:x1 and stt<>''PDN acted''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('seq').isnull then grade002.Caption:='';
  end;
  }
  with query2 do begin
    close;
    params.clear;
    {
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct a.seq) as s0,count(distinct a.j_no) as s1,count(distinct a.j2_job) as s2,count(distinct a.cstyle) as s3,'
                +'count(distinct a.acol) as s4,count(distinct a.custpo) as s5,count(*) as s6 from tbl_pdn_rwo a,tbl_pdn_m b,tbl_pdn_wksum c '
                +'where a.seq=b.seq and a.seq=c.seq and c.tm=:x1';
    params[0].asdatetime:=query1.fieldbyname('tm').value;//frmselpdn.wEdit1.Value;
    }
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select count(distinct a.seq) as s0,count(distinct a.j_no) as s1,count(distinct a.j2_job) as s2,count(distinct a.cstyle) as s3,'
                +'count(distinct a.acol) as s4,count(distinct a.custpo) as s5,count(*) as s6 from tbl_pdn_rwo a,tbl_pdn_m b,tbl_pdn_wksum c '
                +'where a.seq=b.seq and a.seq=c.seq and c.tmc=:x1';
    params[0].asstring:=query1.fieldbyname('tmc').value;
    open;
    if not fieldbyname('s0').isnull then begin
      ttl001.Caption:='Grand Ttl:    PDN = '+fieldbyname('s0').asstring+'    Project = '+fieldbyname('s1').asstring+'    Cust Style = '+fieldbyname('s3').asstring+'    Clr = '+fieldbyname('s4').asstring+'    WO = '+fieldbyname('s2').asstring+'    Cust PO = '+fieldbyname('s5').asstring;//+'    RWO='+fieldbyname('s6').asstring;
    end else ttl001.Caption:='';
  end;
  {
  qncnt:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select distinct a.j_no,a.j2_job,a.rwo from tbl_pdn_rwo a,tbl_pdn_m b,tbl_pdn_wksum c '
                +'where a.seq=b.seq and a.seq=c.seq and c.tmc=:x1';
    params[0].asstring:=query1.fieldbyname('tmc').value;
    open;
    first;
    while not eof do begin
      qncnt:=qncnt+1;
      application.ProcessMessages;
      next;
    end;
  end;
      if ttl001.Caption>'' then ttl001.Caption:=ttl001.caption+'    CWO='+inttostr(qncnt) else ttl001.Caption:='CWO='+inttostr(qncnt);
  }
  qncnt:=0;
  with query2 do begin
    close;
    params.clear;
    {
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct a.pline,a.seq from tblshedule a,tbl_pdn_rwo b,tbl_pdn_wksum c '
                +'where b.seq=c.seq and a.j_no=b.j_no and a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol and c.tm=:x1';//c.wk=:x1 and c.tplant='''+frmselpdn.combobox1.text+'''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;//frmselpdn.wEdit1.Value;
    }
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select distinct a.pline,a.seq from tblshedule a,tbl_pdn_rwo b,tbl_pdn_wksum c '
                +'where b.seq=c.seq and a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol and c.tmc=:x1';//c.wk=:x1 and c.tplant='''+frmselpdn.combobox1.text+'''';
    params[0].asstring:=query1.fieldbyname('tmc').value;
    open;
    first;
    while not eof do begin
      qncnt:=qncnt+1;
      application.ProcessMessages;
      next;
    end;
  end;
    //if not fieldbyname('s7').isnull then begin
      if ttl001.Caption>'' then ttl001.Caption:=ttl001.caption+'    QN = '+inttostr(qncnt) else ttl001.Caption:='QN='+inttostr(qncnt);
    //end;
  //end;

  i:=0;
  ppmemo1.Lines.clear;
  ppmemo2.Lines.clear;
  ppmemo3.Lines.clear;
  ppmemo4.Lines.clear;
  ppmemo5.Lines.clear;
  ppmemo6.Lines.clear;
  ppmemo7.Lines.clear;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select distinct a.pdn,a.marks1 from tbl_pdn_m a,tbl_pdn_wksum b where a.seq=b.seq and b.tmc=:x1 and a.marks1>'''' order by a.pdn';//tplant='''+frmselpdn.ComboBox1.text+''' and wk=:x1 and marks1>'''' order by pdn';
    params[0].asstring:=query1.fieldbyname('tmc').value;//frmselpdn.wEdit1.Value;
    open;
    first;
    while not eof do begin
      ppmemo2.Lines.add(fieldbyname('pdn').value+':  '+fieldbyname('marks1').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r63 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if not fieldbyname('r63').isnull then r63:=fieldbyname('r63').value else r63:=false;
  end;
  ttl002.Caption:=query1.fieldbyname('cap').asstring;
  ttl005.Caption:=formatfloat('0.00',query1.fieldbyname('psah').value);
  with query2 do begin
    close;
    params.clear;
    {
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(sqty) as sqty,sum(eqty) as eqty,sum(pval) as s1,sum(eval) as s2,sum(ssah) as s3,sum(tsah) as s4 from tbl_pdn_wksum where tm=:x1';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    }
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select sum(sqty) as sqty,sum(eqty) as eqty,sum(pval) as s1,sum(eval) as s2,sum(ssah) as s3,sum(tsah) as s4 from tbl_pdn_wksum where tmc=:x1';
    params[0].asstring:=query1.fieldbyname('tmc').value;
    open;
    if query1.fieldbyname('cap').value>0 then
    ttl003.Caption:=inttostr(fieldbyname('sqty').value-query1.fieldbyname('cap').value)+' ('+formatfloat('0.00%',(fieldbyname('sqty').value-query1.fieldbyname('cap').value)*100.00/query1.fieldbyname('cap').value)+')'
    else ttl003.Caption:=inttostr(fieldbyname('sqty').value-query1.fieldbyname('cap').value)+' (na)';

    if fieldbyname('sqty').value>query1.fieldbyname('cap').value then ttl003.Font.Color:=clGreen
    else if fieldbyname('sqty').value=query1.fieldbyname('cap').value then ttl003.Font.Color:=clBlack else ttl003.Font.Color:=clRed;
    if fieldbyname('sqty').value>0 then
    ttl004.Caption:=inttostr(fieldbyname('eqty').value-fieldbyname('sqty').value)+' ('+formatfloat('0.00%',(fieldbyname('eqty').value-fieldbyname('sqty').value)*100.00/fieldbyname('sqty').value)+')'
    else ttl004.Caption:=inttostr(fieldbyname('eqty').value-fieldbyname('sqty').value)+' (0.00%)';
    if fieldbyname('eqty').value>fieldbyname('sqty').value then ttl004.Font.Color:=clGreen
    else if fieldbyname('eqty').value=fieldbyname('sqty').value then ttl004.Font.Color:=clBlack else ttl004.Font.Color:=clRed;

    if query1.fieldbyname('cap').value>0 then
    ttl015.Caption:=inttostr(fieldbyname('eqty').value-query1.fieldbyname('cap').value)+' ('+formatfloat('0.00%',(fieldbyname('eqty').value-query1.fieldbyname('cap').value)*100.00/query1.fieldbyname('cap').value)+')'
    else ttl015.Caption:=inttostr(fieldbyname('eqty').value-query1.fieldbyname('cap').value)+' (na)';

    if fieldbyname('eqty').value>query1.fieldbyname('cap').value then ttl015.Font.Color:=clGreen
    else if fieldbyname('eqty').value=query1.fieldbyname('cap').value then ttl015.Font.Color:=clBlack else ttl015.Font.Color:=clRed;

    if not fieldbyname('s1').isnull then ttl011.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else ttl011.Caption:='0.00';
    if not fieldbyname('s2').isnull then ttl012.Caption:=formatfloat('0.00',fieldbyname('s2').value)
    else ttl012.Caption:='0.00';

    ttl006.Caption:=formatfloat('0.00',fieldbyname('s3').value);
    ttl007.Caption:=formatfloat('0.00',fieldbyname('s4').value);
    if query1.fieldbyname('psah').value>0 then begin
      ttl008.Caption:=formatfloat('0.00',query1.fieldbyname('psah').value-fieldbyname('s3').value)+' ('+formatfloat('0.00%',(query1.fieldbyname('psah').value-fieldbyname('s3').value)*100.00/query1.fieldbyname('psah').value)+')';
      ttl016.Caption:=formatfloat('0.00',query1.fieldbyname('psah').value-fieldbyname('s4').value)+' ('+formatfloat('0.00%',(query1.fieldbyname('psah').value-fieldbyname('s4').value)*100.00/query1.fieldbyname('psah').value)+')';
    end else begin
      ttl008.Caption:='n.a. (n.a.%)';
      ttl016.Caption:='n.a. (n.a.%)';
    end;

    if fieldbyname('s3').value>0 then
    ttl009.Caption:=formatfloat('0.00',fieldbyname('s3').value-fieldbyname('s4').value)+' ('+formatfloat('0.00%',(fieldbyname('s3').value-fieldbyname('s4').value)*100.00/fieldbyname('s3').value)+')'
    else ttl009.Caption:='n.a. (n.a.%)';

    if r63=true then begin
      ttl014.Caption:=formatfloat('0.00',fieldbyname('s2').value-fieldbyname('s1').value);
      if fieldbyname('s1').value>0 then begin
        ttl014.Caption:=ttl014.Caption+' ('+formatfloat('0.00%',(fieldbyname('s2').value-fieldbyname('s1').value)*100.00/fieldbyname('s1').value)+')';
        if fieldbyname('s2').value>fieldbyname('s1').value then ttl014.Font.color:=clGreen
        else if fieldbyname('s2').value=fieldbyname('s1').value then ttl014.Font.Color:=clBlack else ttl014.Font.color:=clRed;
      end else begin
        ttl014.Caption:=ttl014.Caption+' (0.00%)';
        ttl014.Font.Color:=clBlack;
      end;
    end else begin
      if fieldbyname('s1').value>0 then begin
        ttl014.Caption:='('+formatfloat('0.00%',(fieldbyname('s2').value-fieldbyname('s1').value)*100.00/fieldbyname('s1').value)+')';
        if fieldbyname('s2').value>fieldbyname('s1').value then ttl014.Font.color:=clGreen
        else if fieldbyname('s2').value=fieldbyname('s1').value then ttl014.Font.Color:=clBlack else ttl014.Font.color:=clRed;
      end else begin
        ttl014.Caption:='(0.00%)';
        ttl014.Font.Color:=clBlack;
      end;
    end;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(qty*uprc) as s1 from tbl_pdn_salesplan where tm=:x1';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ttl010.Caption:=formatfloat('0.00',fieldbyname('s1').value);
      if r63=true then begin
        ttl013.Caption:=formatfloat('0.00',strtofloat(ttl011.caption)-fieldbyname('s1').value);
        if fieldbyname('s1').value>0 then ttl013.Caption:=ttl013.Caption+' ('+formatfloat('0.00%',(strtofloat(ttl011.caption)-fieldbyname('s1').value)*100.00/fieldbyname('s1').value)+')'
        else ttl013.Caption:=ttl013.Caption+' (0.00%)';

        ttl017.Caption:=formatfloat('0.00',strtofloat(ttl012.caption)-fieldbyname('s1').value);
        if fieldbyname('s1').value>0 then ttl017.Caption:=ttl017.Caption+' ('+formatfloat('0.00%',(strtofloat(ttl012.caption)-fieldbyname('s1').value)*100.00/fieldbyname('s1').value)+')'
        else ttl017.Caption:=ttl017.Caption+' (0.00%)';
      end else begin
        if fieldbyname('s1').value>0 then ttl013.Caption:='('+formatfloat('0.00%',(strtofloat(ttl011.caption)-fieldbyname('s1').value)*100.00/fieldbyname('s1').value)+')'
        else ttl013.Caption:='(0.00%)';

        if fieldbyname('s1').value>0 then ttl017.Caption:='('+formatfloat('0.00%',(strtofloat(ttl012.caption)-fieldbyname('s1').value)*100.00/fieldbyname('s1').value)+')'
        else ttl017.Caption:='(0.00%)';
      end;
      if strtofloat(ttl011.Caption)>fieldbyname('s1').value then ttl013.Font.Color:=clGreen
      else if strtofloat(ttl011.Caption)=fieldbyname('s1').value then ttl013.Font.Color:=clBlack else ttl013.Font.Color:=clRed;

      if strtofloat(ttl012.Caption)>fieldbyname('s1').value then ttl017.Font.Color:=clGreen
      else if strtofloat(ttl012.Caption)=fieldbyname('s1').value then ttl017.Font.Color:=clBlack else ttl017.Font.Color:=clRed;
    end;
  end;
  }
  ttl010.Caption:='n.a. '; ttl013.Caption:='n.a. '; ttl017.Caption:='n.a. ';
  if r63=false then begin
      ttl010.Caption:='n.a. ';
      ttl011.Caption:='n.a. ';
      ttl012.Caption:='n.a. ';
  end;
  {
  v003.Caption:=inttostr(ppdbcalc5.Value+ppdbcalc6.Value+ppdbcalc10.value);
  v004.Caption:=v003.Caption;
  ttl010.Caption:='n.a. ';
  ttl013.Caption:='n.a. ';
  ttl017.Caption:='n.a. ';
  if query1.fieldbyname('wk').value<=43 then xy02.Caption:='n.a. ' else xy02.Caption:=inttostr(ppdbcalc4.Value);
  }
end;

procedure Tfrmpdnrpt5.ppGroupFooterBand6BeforePrint(Sender: TObject);
begin
  if sbq01.Value>sb101.Value then sb101.Font.Color:=clRed
  else if sbq01.Value=sb101.Value then sb101.Font.Color:=clBlack else sb101.Font.Color:=clGreen;
  if sb102.Value>sb103.Value then sb103.Font.Color:=clRed
  else if sb102.Value=sb103.Value then sb103.Font.Color:=clBlack else sb103.Font.Color:=clGreen;
  if sb103.Value>sb104.Value then sb104.Font.Color:=clRed
  else if sb103.Value=sb104.Value then sb104.Font.Color:=clBlack else sb104.Font.Color:=clGreen;
  if sb104.Value>sb106.Value then sb106.Font.Color:=clRed
  else if sb104.Value=sb106.Value then sb106.Font.Color:=clBlack else sb106.Font.Color:=clGreen;
  if sbq01.Value>sb107.Value then sb107.Font.Color:=clRed
  else if sbq01.Value=sb107.Value then sb107.Font.Color:=clBlack else sb107.Font.Color:=clGreen;
  //if sb106.Value>sb107.Value then sb107.Font.Color:=clRed
  //else if sb106.Value=sb107.Value then sb107.Font.Color:=clBlack else sb107.Font.Color:=clGreen;
  if sb107.Value>sb108.Value then sb108.Font.Color:=clRed
  else if sb107.Value=sb108.Value then sb108.Font.Color:=clBlack else sb108.Font.Color:=clGreen;

  if sbd01.Value<0 then begin
    //sbd01.Font.Color:=clRed;
    diff002.Font.Color:=clRed;
    sbp01.Font.Color:=clRed;
    grade002.Font.Color:=clRed;
  end else if sbd01.Value=0 then begin
    //sbd01.Font.Color:=clBlack;
    diff002.Font.Color:=clBlack;
    sbp01.Font.Color:=clBlack;
    grade002.Font.Color:=clBlack;
  end else begin
    //sbd01.Font.Color:=clGreen;
    diff002.Font.Color:=clGreen;
    sbp01.Font.Color:=clGreen;
    grade002.Font.Color:=clGreen;
  end;
  if sbq01.Value>0 then begin
    //sbp01.Caption:='('+formatfloat('0.0%',sbd01.Value*100.0/sbq01.Value)+')';
    sbp01.Caption:=formatfloat('0.00',100.00+sbd01.Value*100.0/sbq01.Value);
    if (sbd01.Value*100.0/sbq01.value>=-1.0) and (sbd01.Value*100.0/sbq01.Value<=1.0) then grade002.Caption:='A'
    else if ((sbd01.Value*100.0/sbq01.value>=-2.0) and (sbd01.Value*100.0/sbq01.value<-1.0)) or ((sbd01.Value*100.0/sbq01.value>1.0) and (sbd01.Value*100.0/sbq01.value<=2.0)) then grade002.Caption:='B'
    else if ((sbd01.Value*100.0/sbq01.value>=-3.0) and (sbd01.Value*100.0/sbq01.value<-2.0)) or ((sbd01.Value*100.0/sbq01.value>2.0) and (sbd01.Value*100.0/sbq01.value<=3.0)) then grade002.Caption:='C'
    else if ((sbd01.Value*100.0/sbq01.value>=-4.0) and (sbd01.Value*100.0/sbq01.value<-3.0)) or ((sbd01.Value*100.0/sbq01.value>3.0) and (sbd01.Value*100.0/sbq01.value<=4.0)) then grade002.Caption:='D'
    else if ((sbd01.Value*100.0/sbq01.value>=-5.0) and (sbd01.Value*100.0/sbq01.value<-4.0)) or ((sbd01.Value*100.0/sbq01.value>4.0) and (sbd01.Value*100.0/sbq01.value<=5.0)) then grade002.Caption:='F'
    else grade002.Caption:='U';
  end else begin
    sbp01.Caption:='0.00';
    grade002.Caption:='A';
  end;
  diff002.Caption:=inttostr(sbd01.Value);
  //var002.caption:=inttostr(-1*(ppdbcalc7.Value+ppdbcalc6.Value+ppdbcalc9.value+sbd01.Value+ppdbcalc11.value+ppdbcalc12.value));

  with query2 do begin
    close;
    params.clear;
    {
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select seq from tbl_pdn_wksum where tm=:x1 and stt<>''PDN acted''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    }
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select seq from tbl_pdn_wksum where tmc=:x1 and stt<>''PDN acted''';
    params[0].asstring:=query1.fieldbyname('tmc').value;
    open;
    if not fieldbyname('seq').isnull then grade002.Caption:='';
  end;

  v003.Caption:=inttostr(ppdbcalc7.Value+ppdbcalc6.Value+ppdbcalc9.value);
  //v004.Caption:=v003.Caption;
  ttl010.Caption:='n.a. ';
  ttl013.Caption:='n.a. ';
  ttl017.Caption:='n.a. ';
  if query1.fieldbyname('wk').value<=43 then xy02.Caption:='n.a. ' else xy02.Caption:=inttostr(ppdbcalc4.Value);
  //dpdnpk.caption:=inttostr(sb102.value-sbq01.value);
  //dpkt1.caption:=inttostr(sb103.value-sb102.value);
  //dt1sewn.caption:=inttostr(ppdbcalc10.value-sb103.value);
  //dsewnt2.caption:=inttostr(sb104.value-ppdbcalc10.value);
  //dt2t3.caption:=inttostr(sb106.value-sb104.value);
  //dt3pass.caption:=inttostr(sb107.value-sb106.value);
  if (query1.fieldbyname('tplant').value='GG') or (query1.fieldbyname('tplant').value='RX') or (query1.fieldbyname('tplant').value='GX') then begin
    sewsl02.caption:='0';
    sewgg02.caption:=inttostr(ppdbcalc5.value);
  end else begin
    sewgg02.caption:='0';
    sewsl02.caption:=inttostr(ppdbcalc5.value);
  end;
end;

procedure Tfrmpdnrpt5.ppGroupFooterBand9BeforePrint(Sender: TObject);
var
  str1:string;
begin
  ppmemo8.Lines.clear;
  pdn001.Caption:='';
  pdn002.Caption:='';
  pdn003.Caption:='';
  pdn004.Caption:='';
  pdn005.Caption:='';
  pdn006.Caption:='';
  str1:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select distinct a.pdn,a.marks from tbl_pdn_m a,tbl_pdn_wksum b where a.seq=b.seq and b.tmc=:x1 and a.marks>'''' order by a.pdn';//tplant='''+frmselpdn.ComboBox1.text+''' and wk=:x1 and marks1>'''' order by pdn';
    params[0].asstring:=query1.fieldbyname('tmc').value;//frmselpdn.wEdit1.Value;
    open;
    first;
    while not eof do begin
      if str1>'' then str1:=str1+chr(13)+chr(20)+fieldbyname('pdn').value+':  '+fieldbyname('marks').value
      else str1:=fieldbyname('pdn').value+':  '+fieldbyname('marks').value;
      application.ProcessMessages;
      next;
    end;
  end;
  ppmemo8.Lines.add(str1);
end;

end.
