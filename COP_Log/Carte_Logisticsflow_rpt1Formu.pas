unit Carte_Logisticsflow_rpt1Formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, ppParameter, ppBands, ppClass, ppReport, ppSubRpt, ppCtrls,
  ppStrtch, ppRichTx, ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, ppViewr;

type
  TfrmCarte_Logisticsflow_rpt1 = class(TForm)
    ADODataSet3: TADODataSet;
    DataSource4: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine15: TppLine;
    ppLabel8: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    pdx01: TppLabel;
    pdx02: TppLabel;
    pdx03: TppLabel;
    pdx04: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    pdn001: TppLabel;
    wk001: TppLabel;
    fromto001: TppLabel;
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
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel42: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLine29: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine30: TppLine;
    ppLine33: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine34: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine37: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine44: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLine48: TppLine;
    ppLabel70: TppLabel;
    ppLine49: TppLine;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine52: TppLine;
    ppLabel73: TppLabel;
    ppLabel75: TppLabel;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLine60: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLine61: TppLine;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine70: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLine71: TppLine;
    ppLabel104: TppLabel;
    ppLine72: TppLine;
    ppLabel105: TppLabel;
    ppLine73: TppLine;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel111: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine89: TppLine;
    ppRichText1: TppRichText;
    ppLabel1: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    log001: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBText14: TppDBText;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine41: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppDBText21: TppDBText;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine56: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLine74: TppLine;
    ppDBText27: TppDBText;
    pdnqty001: TppLabel;
    prod001: TppDBText;
    ppDBText7: TppDBText;
    aqlno001: TppLabel;
    ppLine55: TppLine;
    pakno3001: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppLabel36: TppLabel;
    ppDBText35: TppDBText;
    ppParameterList1: TppParameterList;
    ppDBPipeline2: TppDBPipeline;
    DataSource3: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery1: TADOQuery;
    aql2001: TppLabel;
    aql2002: TppLabel;
    aqlno002: TppLabel;
    keycode001: TppLabel;
    pdngrade001: TppLabel;
    pdnqty002: TppLabel;
    pdnqty2001: TppLabel;
    ppLine57: TppLine;
    ppLine88: TppLine;
    ppShape4: TppShape;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel133: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppShape5: TppShape;
    ppLabel115: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine86: TppLine;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape14: TppShape;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine87: TppLine;
    ppDBText20: TppDBText;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppSummaryBand3: TppSummaryBand;
    short001: TppLabel;
    waqlp001: TppLabel;
    wpakdel001: TppLabel;
    wpdn001: TppLabel;
    wpdn3001: TppLabel;
    wpdn3002: TppLabel;
    wpdn3003: TppLabel;
    wshpdel001: TppLabel;
    title3001: TppLabel;
    ppLabel74: TppLabel;
    ppLabel113: TppLabel;
    aql_f1001: TppLabel;
    aql_f2001: TppLabel;
    aql_p1001: TppLabel;
    aql_p2001: TppLabel;
    ppLabel44: TppLabel;
    ppLabel114: TppLabel;
    wkday1001: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Logisticsflow_rpt1: TfrmCarte_Logisticsflow_rpt1;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu, Carte_LogisticsflowFormu;

{$R *.dfm}

procedure TfrmCarte_Logisticsflow_rpt1.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
  if adodataset2.fieldbyname('org_a').value>0 then pdnqty001.caption:=adodataset2.fieldbyname('org_a').asstring+'*'
  else pdnqty001.caption:=adodataset2.fieldbyname('org_o').asstring;
  if (adodataset2.fieldbyname('aql_no').value>0) or (adodataset2.fieldbyname('aql_no1').value>0) then begin
    if adodataset2.fieldbyname('org_a').value>0 then pdnqty001.caption:=inttostr(adodataset2.fieldbyname('org_a').value-adodataset2.fieldbyname('aql_no').value-adodataset2.fieldbyname('aql_no1').value)+'*'
    else pdnqty001.caption:=inttostr(adodataset2.fieldbyname('org_o').value-adodataset2.fieldbyname('aql_no').value-adodataset2.fieldbyname('aql_no1').value)+'*';
  end;
  if adodataset2.fieldbyname('aql_no1').value>0 then aqlno001.caption:=inttostr(adodataset2.fieldbyname('aql_no').value+adodataset2.fieldbyname('aql_no1').value)+'*'
  else aqlno001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_no').value);
  if adodataset2.fieldbyname('pak_no1').value>0 then pakno3001.caption:=inttostr(adodataset2.fieldbyname('pak_no').value+adodataset2.fieldbyname('pak_no1').value)+'*'
  else pakno3001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('pak_no').value);
  if adodataset2.fieldbyname('cmp5').value=true then log001.font.style:=[fsBold]
  else log001.font.style:=[];
  aql_p1001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_p1').value+adodataset2.fieldbyname('aql_p01').value);
  aql_p2001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_p2').value+adodataset2.fieldbyname('aql_p02').value);
  aql_f1001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_f1').value+adodataset2.fieldbyname('aql_f01').value);
  aql_f2001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_f2').value+adodataset2.fieldbyname('aql_f02').value);
  if adodataset2.fieldbyname('aql_p01').value>0 then aql_p1001.font.color:=clred else aql_p1001.font.color:=clblack;
  if adodataset2.fieldbyname('aql_p02').value>0 then aql_p2001.font.color:=clred else aql_p2001.font.color:=clblack;
  if adodataset2.fieldbyname('aql_f01').value>0 then aql_f1001.font.color:=clred else aql_f1001.font.color:=clblack;
  if adodataset2.fieldbyname('aql_f02').value>0 then aql_f2001.font.color:=clred else aql_f2001.font.color:=clblack;
  if not adodataset2.fieldbyname('wkday1').isnull then begin
    if not adodataset2.fieldbyname('wkday').isnull then begin
      if adodataset2.fieldbyname('wkday1').value>adodataset2.fieldbyname('wkday').value then
        wkday1001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('wkday1').value)+'*'
      else wkday1001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('wkday1').value)+'**';
    end else wkday1001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('wkday1').value);
  end else begin
    if not adodataset2.fieldbyname('wkday').isnull then
    wkday1001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('wkday').value)
    else wkday1001.caption:='';
  end;
end;

procedure TfrmCarte_Logisticsflow_rpt1.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Logisticsflow_rpt1.ppSummaryBand1BeforePrint(
  Sender: TObject);
var
  cnt,qty1,q1,q2,q3,q4,q5,q6,q7,q8:integer;
  s1:double;
  cmp5:boolean;
begin
  cnt:=0; qty1:=0; q1:=0; q2:=0; q3:=0; q4:=0; q5:=0; q6:=0; q7:=0; q8:=0;
  with adoquery1 do begin
    close;
    sql.text:='select distinct keycode5,(pdn_qty+wpdn_ttl) as x1,waql_p,wpak_del,wshp_del,wpdn_short,wpdn_ttl,wpdn_aqlno,wpdn_aqlf,wpdn_pakno from tbl_carte_sopc5 where hide5=0';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    parameters[0].value:=frmCarte_Logisticsflow.dateedit4.date;
    parameters[1].value:=frmCarte_Logisticsflow.dateedit5.date;
    open;
    first;
    while not eof do begin
      cnt:=cnt+1;
      qty1:=qty1+fieldbyname('x1').value;
      q1:=q1+fieldbyname('waql_p').value;
      q2:=q2+fieldbyname('wpak_del').value;
      q3:=q3+fieldbyname('wshp_del').value;
      q4:=q4+fieldbyname('wpdn_short').value;
      q5:=q5+fieldbyname('wpdn_ttl').value;
      q6:=q6+fieldbyname('wpdn_aqlno').value;
      q7:=q7+fieldbyname('wpdn_aqlf').value;
      q8:=q8+fieldbyname('wpdn_pakno').value;
      application.processmessages;
      next;
    end;
  end;
  keycode001.caption:=inttostr(cnt);
  pdnqty002.caption:=inttostr(qty1);
  waqlp001.caption:=inttostr(q1);
  wpakdel001.caption:=inttostr(q2);
  wshpdel001.caption:=inttostr(q3);
  short001.caption:=inttostr(q4);
  wpdn001.caption:=inttostr(q5);
  wpdn3001.caption:='('+inttostr(q6);
  wpdn3002.caption:=inttostr(q7);
  wpdn3003.caption:=inttostr(q8)+')';

  cmp5:=true;
  with adoquery1 do begin
    close;
    sql.text:='select distinct cmp5 from tbl_carte_sopc5 where hide5=0 and cmp5=0';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    parameters[0].value:=frmCarte_Logisticsflow.dateedit4.date;
    parameters[1].value:=frmCarte_Logisticsflow.dateedit5.date;
    open;
    if not fieldbyname('cmp5').isnull then cmp5:=false;
  end;
  if cmp5=true then begin
    //pdngrade001.caption:='PDN Garding: ';
    s1:=(q4+q5)*100.00/(qty1*1.00);
    if s1<=1.0 then pdngrade001.caption:='PDN Grading: A'
    else if s1<=2.0 then pdngrade001.caption:='PDN Grading: B'
    else if s1<=3.0 then pdngrade001.caption:='PDN Grading: C'
    else if s1<=4.0 then pdngrade001.caption:='PDN Grading: D'
    else if s1<=5.0 then pdngrade001.caption:='PDN Grading: F'
    else pdngrade001.caption:='PDN Grading: U'
  end else begin
    pdngrade001.caption:='';
  end;

  qty1:=0; q1:=0; q2:=0; q3:=0;
  with adoquery1 do begin
    close;
    sql.text:='select distinct wkday,sum(case when org_a>0 then org_a else org_o end) as x1,'
             +'sum(aql_p2) as x3,sum(aql_f2) as x4,sum(aql_no+aql_no1) as x5 from tbl_carte_sopc5 where hide5=0';;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2 group by wkday order by wkday';
    parameters[0].value:=frmCarte_Logisticsflow.dateedit4.date;
    parameters[1].value:=frmCarte_Logisticsflow.dateedit5.date;
    open;
    first;
    while not eof do begin
      qty1:=qty1+fieldbyname('x1').value-fieldbyname('x5').value;
      q2:=q2+fieldbyname('x3').value;
      q3:=q3+fieldbyname('x4').value;
      application.processmessages;
      next;
    end;
  end;
  pdnqty2001.caption:=inttostr(qty1);
  aql2001.caption:=inttostr(q2);
  aql2002.caption:=inttostr(q3);
  q1:=0;
  with adoquery1 do begin
    close;
    sql.text:='select distinct wkday,sum(aql_no+aql_no1) as x2 from tbl_carte_sopc5 a where hide5=0 and wkday=(select max(wkday) from tbl_carte_sopc5 b where a.seq=b.seq and b.wkday<:x0)';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2 group by wkday order by wkday';
    parameters[0].value:=date;
    parameters[1].value:=frmCarte_Logisticsflow.dateedit4.date;
    parameters[2].value:=frmCarte_Logisticsflow.dateedit5.date;
    open;
    first;
    while not eof do begin
      q1:=q1+fieldbyname('x2').value;
      application.processmessages;
      next;
    end;
  end;
  aqlno002.caption:=inttostr(q1);
end;

end.
