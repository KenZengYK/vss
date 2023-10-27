unit airsummaryformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppReport, ppSubRpt, ppClass, ppCtrls, ppStrtch,
  ppRichTx, ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, DBClient, ppViewr, ppMemo, StdCtrls, ppParameter;

type
  Tfrmairsummary = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    f001: TppLabel;
    w001: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc2: TppDBCalc;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query5: TClientDataSet;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText7: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel11: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppShape2: TppShape;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel9: TppLabel;
    ppLabel19: TppLabel;
    x001: TppLabel;
    x004: TppLabel;
    x005: TppLabel;
    x006: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    query6: TClientDataSet;
    query7: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    DataSource4: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    DataSource5: TDataSource;
    ppDBPipeline5: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppShape3: TppShape;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel41: TppLabel;
    ppDBText14: TppDBText;
    ppLabel42: TppLabel;
    ppDBText15: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    sa003: TppLabel;
    ppShape4: TppShape;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLabel47: TppLabel;
    sa004: TppLabel;
    sa005: TppLabel;
    sa006: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    sa001: TppLabel;
    sa002: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppHeaderBand3: TppHeaderBand;
    ppShape5: TppShape;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel56: TppLabel;
    ppDBText16: TppDBText;
    ppLabel61: TppLabel;
    ppDBText18: TppDBText;
    ppLabel62: TppLabel;
    ppDBText19: TppDBText;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    sb003: TppLabel;
    sb001: TppLabel;
    sb002: TppLabel;
    ppShape6: TppShape;
    ppDBCalc7: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel69: TppLabel;
    sb004: TppLabel;
    sb005: TppLabel;
    sb006: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppHeaderBand4: TppHeaderBand;
    ppShape7: TppShape;
    ppLabel48: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText17: TppDBText;
    ppLabel85: TppLabel;
    ppDBText20: TppDBText;
    ppLabel86: TppLabel;
    ppDBText21: TppDBText;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    sc003: TppLabel;
    sc001: TppLabel;
    sc002: TppLabel;
    ppShape8: TppShape;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel93: TppLabel;
    sc004: TppLabel;
    sc005: TppLabel;
    sc006: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppDBText22: TppDBText;
    ppLabel104: TppLabel;
    ppDBMemo1: TppDBMemo;
    w0002: TppLabel;
    ppLabel66: TppLabel;
    ppDBText23: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel67: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel68: TppLabel;
    ppDBText24: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    x0001: TppLabel;
    ppLabel72: TppLabel;
    ppLine2: TppLine;
    ppDBText25: TppDBText;
    ppLabel17: TppLabel;
    ppDBText26: TppDBText;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    x00001: TppLabel;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    a0001: TppLabel;
    ppLabel108: TppLabel;
    a0002: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppLabel107: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    a0003: TppLabel;
    a0004: TppLabel;
    a0005: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    sa007: TppLabel;
    ppLabel123: TppLabel;
    sa008: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel122: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    sc007: TppLabel;
    ppLabel133: TppLabel;
    sc008: TppLabel;
    ppLabel132: TppLabel;
    sb007: TppLabel;
    ppLabel135: TppLabel;
    sb008: TppLabel;
    ppShape9: TppShape;
    Label1: TLabel;
    ftycost001: TppLabel;
    ppShape10: TppShape;
    ftycost002: TppLabel;
    ppShape11: TppShape;
    ftycost0002: TppLabel;
    ppShape12: TppShape;
    ftycost003: TppLabel;
    ppShape13: TppShape;
    ftycost0003: TppLabel;
    ppShape14: TppShape;
    ftycost004: TppLabel;
    ppShape15: TppShape;
    ftycost0004: TppLabel;
    ppLabel134: TppLabel;
    sd004: TppLabel;
    sd005: TppLabel;
    sd006: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmairsummary: Tfrmairsummary;

implementation

uses mainformu, pdnpastformu;

{$R *.dfm}

procedure Tfrmairsummary.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmairsummary.ppSummaryBand1BeforePrint(Sender: TObject);
//var
//  fd1,fd2:double;
begin
  {
  fd1:=0;fd2:=0;
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct seq,seq1,factory_actcost,supplier_actcost from tbl_pdn_airsummary where tm=:x1';
    if (frmpdnpast.combobox2.text<>'ALL CUSTS') and (frmpdnpast.combobox2.text<>'CUST BY CUST') then
    commandtext:=commandtext+' and cust='''+frmpdnpast.combobox2.text+''' ';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      fd1:=fd1+fieldbyname('factory_actcost').value;
      fd2:=fd2+fieldbyname('supplier_actcost').value;
      application.ProcessMessages;
      next;
    end;
  end;
  x004.Caption:=formatfloat('0.00',fd1);
  x005.Caption:=formatfloat('0.00',fd2);
  x006.Caption:=formatfloat('0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2);
  }
  x004.Caption:=formatfloat('#,0.00',ppdbcalc5.Value-ppdbcalc6.Value);
  x006.Caption:=formatfloat('#,0.00',ppdbcalc5.Value-ppdbcalc6.Value+ppdbcalc14.Value);
end;

procedure Tfrmairsummary.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  fd1,fd2,fd3,sl02,kb02,fj02:double;
begin
  fd1:=0;fd2:=0;fd3:=0;
  sl02:=0; kb02:=0; fj02:=0;
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select factory_actcost,supplier_actcost,buyer_actcost,sl02,kb02,fj02 from tbl_pdn_airsummary where tm=:x1 and seq=:x2 and seq1=:x3';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('factory_actcost').isnull then fd1:=fieldbyname('factory_actcost').value;
    if not fieldbyname('supplier_actcost').isnull then fd2:=fieldbyname('supplier_actcost').value;
    if not fieldbyname('buyer_actcost').isnull then fd3:=fieldbyname('buyer_actcost').value;
    if not fieldbyname('sl02').isnull then sl02:=fieldbyname('sl02').value;
    if not fieldbyname('kb02').isnull then kb02:=fieldbyname('kb02').value;
    if not fieldbyname('fj02').isnull then fj02:=fieldbyname('fj02').value;
  end;
  x001.Caption:=formatfloat('#,0.00',ppdbcalc1.Value-ppdbcalc3.Value-fd1-fd2-fd3);
  x0001.Caption:=formatfloat('#,0.00',ppdbcalc1.Value-ppdbcalc3.Value);
  x00001.Caption:=formatfloat('#,0.00',ppdbcalc1.Value-ppdbcalc3.Value+ppdbcalc13.Value);
  ftycost001.Caption:='(SL: '+formatfloat('0.00',sl02)+'  GG: '+formatfloat('0.00',fj02)+'  RX: '+formatfloat('0.00',kb02)+')';
  //ftycost001.Caption:='(SL: '+formatfloat('0.00',sl02)+'  KB: '+formatfloat('0.00',kb02)+'  FJ: '+formatfloat('0.00',fj02)+')';
end;

procedure Tfrmairsummary.ppDetailBand2BeforePrint(Sender: TObject);
var
  fd1,fd2,fd3:double;
  sl02,kb02,fj02:double;
begin
  fd1:=0;fd2:=0;fd3:=0;
  sl02:=0; kb02:=0; fj02:=0;
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct seq,seq1,factory_actcost,supplier_actcost,buyer_actcost,sl02,fj02,kb02 from tbl_pdn_airsummary where tm=:x1 and cust='''+query2.fieldbyname('cust').value+''' and mth='''+query2.fieldbyname('mth').value+'''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      fd1:=fd1+fieldbyname('factory_actcost').value;
      fd2:=fd2+fieldbyname('supplier_actcost').value;
      fd3:=fd3+fieldbyname('buyer_actcost').value;
      sl02:=sl02+fieldbyname('sl02').value;
      fj02:=fj02+fieldbyname('fj02').value;
      kb02:=kb02+fieldbyname('kb02').value;
      application.ProcessMessages;
      next;
    end;
  end;
  sa001.Caption:=formatfloat('#,0.00',fd1);
  sa002.Caption:=formatfloat('#,0.00',fd2);
  sa007.Caption:=formatfloat('#,0.00',fd3);
  sa003.Caption:=formatfloat('#,0.00',query2.fieldbyname('ttlcost').value-query2.fieldbyname('bcost').value-fd1-fd2-fd3);
  ftycost002.Caption:='(SL: '+formatfloat('0.00',sl02)+'  GG: '+formatfloat('0.00',fj02)+'  RX: '+formatfloat('0.00',kb02)+')';
  //ftycost002.Caption:='(SL: '+formatfloat('0.00',sl02)+'  KB: '+formatfloat('0.00',kb02)+'  FJ: '+formatfloat('0.00',fj02)+')';
  if label1.Caption='PH' then begin
    pplabel45.Visible:=false; sa003.Visible:=false;
    sa001.Caption:=formatfloat('#,0.00',query2.fieldbyname('ttlcost').value-query2.fieldbyname('bcost').value-fd2-fd3);
  end;
end;

procedure Tfrmairsummary.ppSummaryBand2BeforePrint(Sender: TObject);
var
  fd1,fd2,fd3:double;
  sl02,kb02,fj02:double;
begin
  fd1:=0;fd2:=0;fd3:=0;
  sl02:=0; kb02:=0; fj02:=0;
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct seq,seq1,factory_actcost,supplier_actcost,buyer_actcost,sl02,fj02,kb02 from tbl_pdn_airsummary where tm=:x1';
    if (frmpdnpast.combobox2.text<>'ALL CUSTS') and (frmpdnpast.combobox2.text<>'CUST BY CUST') then
    commandtext:=commandtext+' and cust='''+frmpdnpast.combobox2.text+''' ';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      fd1:=fd1+fieldbyname('factory_actcost').value;
      fd2:=fd2+fieldbyname('supplier_actcost').value;
      fd3:=fd3+fieldbyname('buyer_actcost').value;
      sl02:=sl02+fieldbyname('sl02').value;
      fj02:=fj02+fieldbyname('fj02').value;
      kb02:=kb02+fieldbyname('kb02').value;
      application.ProcessMessages;
      next;
    end;
  end;
  //x004.Caption:=formatfloat('0.00',fd1);
  //x005.Caption:=formatfloat('0.00',fd2);
  //x006.Caption:=formatfloat('0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2);
  sa004.Caption:=formatfloat('#,0.00',fd1);
  sa005.Caption:=formatfloat('#,0.00',fd2);
  sa008.Caption:=formatfloat('#,0.00',fd3);
  sa006.Caption:=formatfloat('#,0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2-fd3);
  ftycost0002.Caption:='(SL: '+formatfloat('0.00',sl02)+'  GG: '+formatfloat('0.00',fj02)+'  RX: '+formatfloat('0.00',kb02)+')';
  //ftycost0002.Caption:='(SL: '+formatfloat('0.00',sl02)+'  KB: '+formatfloat('0.00',kb02)+'  FJ: '+formatfloat('0.00',fj02)+')';
  if label1.Caption='PH' then begin
    pplabel55.Visible:=false; sa006.Visible:=false;
    sa004.Caption:=formatfloat('#,0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd2-fd3);
  end;
end;

procedure Tfrmairsummary.ppDetailBand3BeforePrint(Sender: TObject);
var
  fd1,fd2,fd3:double;
  sl02,kb02,fj02:double;
begin
  fd1:=0;fd2:=0;fd3:=0;
  sl02:=0; kb02:=0; fj02:=0;
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct seq,seq1,factory_actcost,supplier_actcost,buyer_actcost,sl02,fj02,kb02 from tbl_pdn_airsummary where tm=:x1 and cust='''+query3.fieldbyname('cust').value+'''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      fd1:=fd1+fieldbyname('factory_actcost').value;
      fd2:=fd2+fieldbyname('supplier_actcost').value;
      fd3:=fd3+fieldbyname('buyer_actcost').value;
      sl02:=sl02+fieldbyname('sl02').value;
      fj02:=fj02+fieldbyname('fj02').value;
      kb02:=kb02+fieldbyname('kb02').value;
      application.ProcessMessages;
      next;
    end;
  end;
  sb001.Caption:=formatfloat('#,0.00',fd1);
  sb002.Caption:=formatfloat('#,0.00',fd2);
  sb007.Caption:=formatfloat('#,0.00',fd3);
  sb003.Caption:=formatfloat('#,0.00',query3.fieldbyname('ttlcost').value-query3.fieldbyname('bcost').value-fd1-fd2-fd3);
  ftycost003.Caption:='(SL: '+formatfloat('0.00',sl02)+'  GG: '+formatfloat('0.00',fj02)+'  RX: '+formatfloat('0.00',kb02)+')';
  //ftycost003.Caption:='(SL: '+formatfloat('0.00',sl02)+'  KB: '+formatfloat('0.00',kb02)+'  FJ: '+formatfloat('0.00',fj02)+')';
  if label1.Caption='PH' then begin
    pplabel65.Visible:=false; sb003.Visible:=false;
    sb001.Caption:=formatfloat('#,0.00',query3.fieldbyname('ttlcost').value-query3.fieldbyname('bcost').value-fd2-fd3);
  end;
end;

procedure Tfrmairsummary.ppDetailBand4BeforePrint(Sender: TObject);
var
  fd1,fd2,fd3:double;
  sl02,kb02,fj02:double;
begin
  fd1:=0;fd2:=0;fd3:=0;
  sl02:=0; kb02:=0; fj02:=0;
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct seq,seq1,factory_actcost,supplier_actcost,buyer_actcost,sl02,fj02,kb02 from tbl_pdn_airsummary where tm=:x1 and rcode='''+query4.fieldbyname('rcode').value+'''';
    if (frmpdnpast.combobox2.text<>'ALL CUSTS') and (frmpdnpast.combobox2.text<>'CUST BY CUST') then
    commandtext:=commandtext+' and cust='''+frmpdnpast.combobox2.text+''' ';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      fd1:=fd1+fieldbyname('factory_actcost').value;
      fd2:=fd2+fieldbyname('supplier_actcost').value;
      fd3:=fd3+fieldbyname('buyer_actcost').value;
      sl02:=sl02+fieldbyname('sl02').value;
      fj02:=fj02+fieldbyname('fj02').value;
      kb02:=kb02+fieldbyname('kb02').value;
      application.ProcessMessages;
      next;
    end;
  end;
  sc001.Caption:=formatfloat('#,0.00',fd1);
  sc002.Caption:=formatfloat('#,0.00',fd2);
  sc007.Caption:=formatfloat('#,0.00',fd3);
  sc003.Caption:=formatfloat('#,0.00',query4.fieldbyname('ttlcost').value-query4.fieldbyname('bcost').value-fd1-fd2-fd3);
  ftycost004.Caption:='(SL: '+formatfloat('0.00',sl02)+'  GG: '+formatfloat('0.00',fj02)+'  RX: '+formatfloat('0.00',kb02)+')';
  //ftycost004.Caption:='(SL: '+formatfloat('0.00',sl02)+'  KB: '+formatfloat('0.00',kb02)+'  FJ: '+formatfloat('0.00',fj02)+')';
  if label1.Caption='PH' then begin
    pplabel89.Visible:=false; sc003.Visible:=false;
    sc001.Caption:=formatfloat('#,0.00',query4.fieldbyname('ttlcost').value-query4.fieldbyname('bcost').value-fd2-fd3);
  end;
end;

procedure Tfrmairsummary.ppSummaryBand4BeforePrint(Sender: TObject);
var
  fd1,fd2,fd3:double;
  sl02,kb02,fj02:double;
begin
  fd1:=0;fd2:=0;fd3:=0;
  sl02:=0; kb02:=0; fj02:=0;
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct seq,seq1,factory_actcost,supplier_actcost,buyer_actcost,sl02,fj02,kb02 from tbl_pdn_airsummary where tm=:x1';
    if (frmpdnpast.combobox2.text<>'ALL CUSTS') and (frmpdnpast.combobox2.text<>'CUST BY CUST') then
    commandtext:=commandtext+' and cust='''+frmpdnpast.combobox2.text+''' ';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      fd1:=fd1+fieldbyname('factory_actcost').value;
      fd2:=fd2+fieldbyname('supplier_actcost').value;
      fd3:=fd3+fieldbyname('buyer_actcost').value;
      sl02:=sl02+fieldbyname('sl02').value;
      fj02:=fj02+fieldbyname('fj02').value;
      kb02:=kb02+fieldbyname('kb02').value;
      application.ProcessMessages;
      next;
    end;
  end;
  //x004.Caption:=formatfloat('0.00',fd1);
  //x005.Caption:=formatfloat('0.00',fd2);
  //x006.Caption:=formatfloat('0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2);
  sc004.Caption:=formatfloat('#,0.00',fd1);
  sc005.Caption:=formatfloat('#,0.00',fd2);
  sc008.Caption:=formatfloat('#,0.00',fd3);
  sc006.Caption:=formatfloat('#,0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2-fd3);
  ftycost0004.Caption:='(SL: '+formatfloat('0.00',sl02)+'  GG: '+formatfloat('0.00',fj02)+'  RX: '+formatfloat('0.00',kb02)+')';
  //ftycost0004.Caption:='(SL: '+formatfloat('0.00',sl02)+'  KB: '+formatfloat('0.00',kb02)+'  FJ: '+formatfloat('0.00',fj02)+')';
  if label1.Caption='PH' then begin
    pplabel101.Visible:=false; sc006.Visible:=false;
    sc004.Caption:=formatfloat('#,0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd2-fd3);
  end;
  if (ppdbcalc5.Value-ppdbcalc6.Value-fd3)>0 then begin
    sd004.caption:=formatfloat('#0.00',fd1*100.00/(fd1+fd2+ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2-fd3));
    sd005.caption:=formatfloat('#0.00',fd2*100.00/(fd1+fd2+ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2-fd3));
    sd006.caption:=formatfloat('#0.00',(ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2-fd3)*100.00/(fd1+fd2+ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2-fd3));
  end else begin
    sd004.caption:='0.00';
    sd005.caption:='0.00';
    sd006.caption:='0.00';
  end;
end;

procedure Tfrmairsummary.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  fd1,fd2,fd3:double;
  sl02,kb02,fj02:double;
begin
  fd1:=0;fd2:=0;fd3:=0;
  sl02:=0; kb02:=0; fj02:=0;
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct seq,seq1,factory_actcost,supplier_actcost,buyer_actcost,sl02,fj02,kb02 from tbl_pdn_airsummary where tm=:x1';
    if (frmpdnpast.combobox2.text<>'ALL CUSTS') and (frmpdnpast.combobox2.text<>'CUST BY CUST') then
    commandtext:=commandtext+' and cust='''+frmpdnpast.combobox2.text+''' ';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      fd1:=fd1+fieldbyname('factory_actcost').value;
      fd2:=fd2+fieldbyname('supplier_actcost').value;
      fd3:=fd3+fieldbyname('buyer_actcost').value;
      sl02:=sl02+fieldbyname('sl02').value;
      fj02:=fj02+fieldbyname('fj02').value;
      kb02:=kb02+fieldbyname('kb02').value;
      application.ProcessMessages;
      next;
    end;
  end;
  //x004.Caption:=formatfloat('0.00',fd1);
  //x005.Caption:=formatfloat('0.00',fd2);
  //x006.Caption:=formatfloat('0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2);
  sb004.Caption:=formatfloat('#,0.00',fd1);
  sb005.Caption:=formatfloat('#,0.00',fd2);
  sb008.Caption:=formatfloat('#,0.00',fd3);
  sb006.Caption:=formatfloat('#,0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd1-fd2-fd3);
  ftycost0003.Caption:='(SL: '+formatfloat('0.00',sl02)+'  GG: '+formatfloat('0.00',fj02)+'  RX: '+formatfloat('0.00',kb02)+')';
  //ftycost0003.Caption:='(SL: '+formatfloat('0.00',sl02)+'  KB: '+formatfloat('0.00',kb02)+'  FJ: '+formatfloat('0.00',fj02)+')';
  if label1.Caption='PH' then begin
    pplabel77.Visible:=false; sb006.Visible:=false;
    sb004.Caption:=formatfloat('#,0.00',ppdbcalc5.Value-ppdbcalc6.Value-fd2-fd3);
  end;
end;

procedure Tfrmairsummary.ppDetailBand1BeforePrint(Sender: TObject);
var
  ddt,ondt:tdatetime;
begin
  a0001.Caption:=formatfloat('#,0.00',query1.fieldbyname('ttlcost').value-query1.fieldbyname('bcost').value);
  a0002.Caption:=formatfloat('#,0.00',query1.fieldbyname('ttlcost').value-query1.fieldbyname('bcost').value+query1.fieldbyname('ocost').value);
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select ondt from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('ondt').isnull then begin
      a0004.Caption:=formatdatetime('yy-MM-dd',fieldbyname('ondt').value);
      ondt:=fieldbyname('ondt').value;
    end else a0004.Caption:='';
  end;
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select min(a.ddt) as ondt from tbl_erpsop a,tbl_erpcstyle b where a.sopno=b.sopno and a.ordline=b.ordline and a.j_no=:x1 and b.cstyle=:x2';
    params[0].asstring:=query1.fieldbyname('j_no').value;
    params[1].asstring:=query1.fieldbyname('cstyle').value;
    open;
    if not fieldbyname('ondt').isnull then begin
      a0003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('ondt').value);
      ddt:=fieldbyname('ondt').value;
    end else begin
      with query7 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='select min(ddt) as ondt from tbl_erpsop where j_no=:x1 and artno=:x2';
        params[0].asstring:=query1.fieldbyname('j_no').value;
        params[1].asstring:=query1.fieldbyname('cstyle').value;
        open;
        if not fieldbyname('ondt').isnull then begin
          a0003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('ondt').value);
          ddt:=fieldbyname('ondt').value;
        end else a0003.Caption:='';
      end;
    end;
  end;
  if a0004.Caption>'' then a0005.Caption:=formatfloat('0.0',trunc(ondt)-trunc(ddt));
end;

end.
 