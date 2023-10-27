unit Carte_Logisticsflow_rpt2Formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppParameter, ppBands, ppClass, ppReport, ppSubRpt, ppCtrls, ppStrtch,
  ppRichTx, ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe,
  ADODB, DB, ppViewr;

type
  TfrmCarte_Logisticsflow_rpt2 = class(TForm)
    ADODataSet3: TADODataSet;
    DataSource4: TDataSource;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
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
    title3001: TppLabel;
    ppLabel112: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel113: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline3: TppDBPipeline;
    ADOQuery1: TADOQuery;
    ppLabel41: TppLabel;
    reduceqty001: TppLabel;
    ppDBText1: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText28: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText65: TppDBText;
    prod001: TppDBText;
    ppDBText67: TppDBText;
    ppLabel93: TppLabel;
    ppLine115: TppLine;
    ppLine130: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppShape12: TppShape;
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
    short001: TppLabel;
    waqlp001: TppLabel;
    wpakdel001: TppLabel;
    wpdn001: TppLabel;
    wpdn3001: TppLabel;
    wpdn3002: TppLabel;
    wpdn3003: TppLabel;
    wshpdel001: TppLabel;
    aql1001: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Logisticsflow_rpt2: TfrmCarte_Logisticsflow_rpt2;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu, Carte_LogisticsflowFormu;

{$R *.dfm}

procedure TfrmCarte_Logisticsflow_rpt2.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Logisticsflow_rpt2.ppSummaryBand1BeforePrint(
  Sender: TObject);
var
  cnt,qty1,q1,q2,q3,q4,q5,q6,q7,q8,q10:integer;
  s1:double;
  cmp5:boolean;
begin
  cnt:=0; qty1:=0; q1:=0; q2:=0; q3:=0; q4:=0; q5:=0; q6:=0; q7:=0; q8:=0; q10:=0;
  with adoquery1 do begin
    close;
    sql.text:='select distinct keycode5,pdn_qty as x1,waql_p,wpak_del,wshp_del,wpdn_short,wpdn_ttl,wpdn_aqlno,wpdn_aqlf,wpdn_pakno from tbl_carte_sopc5 where hide5=0';
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
    if frmCarte_Ordprocessing.combobox4.text>'' then sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
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
      q10:=q10+fieldbyname('wpdn_ttl').value;
      q6:=q6+fieldbyname('wpdn_aqlno').value;
      q7:=q7+fieldbyname('wpdn_aqlf').value;
      q8:=q8+fieldbyname('wpdn_pakno').value;
      application.processmessages;
      next;
    end;
  end;
  //pdnqty002.caption:=inttostr(qty1);
  waqlp001.caption:=inttostr(q1);
  wpakdel001.caption:=inttostr(q2);
  wshpdel001.caption:=inttostr(q3);
  short001.caption:=inttostr(q4);
  wpdn001.caption:=inttostr(q10);
  wpdn3001.caption:='('+inttostr(q6);
  wpdn3002.caption:=inttostr(q7);
  wpdn3003.caption:=inttostr(q8)+')';

  q5:=0;
  with adoquery1 do begin
    close;
    sql.text:='select count(*) as cnt,sum(wpdn_ttl) as x1 from tbl_carte_sopc5_transfer where 0=0';
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
    if frmCarte_Ordprocessing.combobox4.text>'' then sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
    parameters[0].value:=frmCarte_Logisticsflow.dateedit4.date;
    parameters[1].value:=frmCarte_Logisticsflow.dateedit5.date;
    open;
    q5:=q5+fieldbyname('x1').value;
    cnt:=cnt+fieldbyname('cnt').value;
  end;
  keycode001.caption:=inttostr(cnt);
  reduceqty001.caption:=inttostr(q5)+' pcs';
  pdnqty002.caption:=inttostr(qty1+q5);

  pdngrade001.caption:='PDN Grading: U';

  qty1:=0; q1:=0; q2:=0; q3:=0;
  with adoquery1 do begin
    close;
    sql.text:='select distinct wkday,sum(case when org_a>0 then org_a else org_o end) as x1,sum(aql_p1) as x2,'
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
    if frmCarte_Ordprocessing.combobox4.text>'' then sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2 group by wkday order by wkday';
    parameters[0].value:=frmCarte_Logisticsflow.dateedit4.date;
    parameters[1].value:=frmCarte_Logisticsflow.dateedit5.date;
    open;
    first;
    while not eof do begin
      qty1:=qty1+fieldbyname('x1').value-fieldbyname('x5').value;
      q1:=q1+fieldbyname('x2').value;
      q2:=q2+fieldbyname('x3').value;
      q3:=q3+fieldbyname('x4').value;
      application.processmessages;
      next;
    end;
  end;
  pdnqty2001.caption:=inttostr(qty1);
  aql1001.caption:=inttostr(q1);
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
    if frmCarte_Ordprocessing.combobox4.text>'' then sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
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
