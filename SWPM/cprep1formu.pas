unit cprep1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, ppViewr, ppParameter;

type
  Tfrmcprep1 = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    Query2: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    title003: TppLabel;
    dt001: TppLabel;
    ppLabel4: TppLabel;
    dt002: TppLabel;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel19: TppLabel;
    title002: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel27: TppLabel;
    ppLine17: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine18: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine19: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine20: TppLine;
    ppLabel42: TppLabel;
    ppLabel24: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    q0001: TppDBText;
    s0001: TppDBText;
    dt003: TppLabel;
    ppLabel20: TppLabel;
    dt004: TppLabel;
    av001: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    diff01: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape2: TppShape;
    v001: TppDBCalc;
    v002: TppDBCalc;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    q001: TppLabel;
    s001: TppLabel;
    q002: TppLabel;
    s002: TppLabel;
    q003: TppLabel;
    s003: TppLabel;
    q004: TppLabel;
    s004: TppLabel;
    q005: TppLabel;
    s005: TppLabel;
    wavg01: TppLabel;
    ttl001: TppLabel;
    ppLabel18: TppLabel;
    ppLabel13: TppLabel;
    p001: TppLabel;
    p002: TppLabel;
    p003: TppLabel;
    p004: TppLabel;
    p005: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    v003: TppDBCalc;
    diff03: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel26: TppLabel;
    dv001: TppDBCalc;
    dv002: TppDBCalc;
    dv003: TppDBCalc;
    diff02: TppLabel;
    av002: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcprep1: Tfrmcprep1;

implementation

uses mainformu, cpreportformu;

{$R *.dfm}

procedure Tfrmcprep1.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select min(yqlcrq) as s1,max(yqlcrq) as s2 from tmp_grpplan where dt=:x1';
    if not query1.fieldbyname('grp').isnull then
    commandtext:=commandtext+' and grp='''+query1.fieldbyname('grp').value+'''';
    if not query1.fieldbyname('cust').isnull then
    commandtext:=commandtext+' and cust='''+query1.fieldbyname('cust').value+'''';
    if not query1.fieldbyname('ny').isnull then
    commandtext:=commandtext+' and ny='''+query1.fieldbyname('ny').value+'''';
    if not query1.fieldbyname('f6').isnull then
    commandtext:=commandtext+' and f6='''+query1.fieldbyname('f6').value+'''';
    commandtext:=commandtext+' and wk='+query1.fieldbyname('wk').asstring;
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('s1').isnull then
    dt003.Caption:=formatdatetime('yyyy/MM/dd',fieldbyname('s1').value)
    else dt003.Caption:=query1.fieldbyname('ny').value+'-01';
    if not fieldbyname('s2').isnull then
    dt004.Caption:=formatdatetime('yyyy/MM/dd',fieldbyname('s2').value)
    else dt004.Caption:=query1.fieldbyname('ny').value+'-30';
  end;
  diff01.Caption:=formatfloat('#0',query1.fieldbyname('qty').value-query1.fieldbyname('qty1').value-query1.fieldbyname('qty01').value);
  if (query1.fieldbyname('qty').value>=query1.fieldbyname('qty1').value+query1.fieldbyname('qty01').value) then
  diff01.Font.Color:=clBlack else diff01.Font.Color:=clRed
end;

procedure Tfrmcprep1.ppGroupFooterBand4BeforePrint(Sender: TObject);
var
  s1,s2:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag=''S'' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q001.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q001.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag=''X'' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q002.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q002.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag=''W'' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q003.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q003.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag=''1'' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q004.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q004.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag='''' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q005.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q005.caption:='0';
  end;
  if v001.Value>0 then begin
    p001.Caption:=formatfloat('0.00%',strtofloat(q001.Caption)*100.0/v001.Value);
    p002.Caption:=formatfloat('0.00%',strtofloat(q002.Caption)*100.0/v001.Value);
    p003.Caption:=formatfloat('0.00%',strtofloat(q003.Caption)*100.0/v001.Value);
    p004.Caption:=formatfloat('0.00%',strtofloat(q004.Caption)*100.0/v001.Value);
    p005.Caption:=formatfloat('0.00%',strtofloat(q005.Caption)*100.0/v001.Value);
  end else begin
    p001.Caption:='0.00%';
    p002.Caption:='0.00%';
    p003.Caption:='0.00%';
    p004.Caption:='0.00%';
    p005.Caption:='0.00%';
  end;
  {
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2 from tblshedule where tplant='''+query1.fieldbyname('tplant').value+'''';
    commandtext:=commandtext+' and grp='''+query1.fieldbyname('grp').value+'''';
    commandtext:=commandtext+' and substr(j_no,1,4)='''+query1.fieldbyname('cust').value+'''';
    commandtext:=commandtext+' and cast(f_year(yqlcrq) as varchar(4))='''+copy(query1.fieldbyname('ny').value,1,4)+'''';
    commandtext:=commandtext+' and cast(f_month(yqlcrq) as varchar(2))='''+inttostr(strtoint(copy(query1.fieldbyname('ny').value,6,2)))+'''';
    open;
    s1:=fieldbyname('cnt1').asstring;
    s2:=fieldbyname('cnt2').asstring;
  end;
  ttl001.Caption:='Ttl # of cust style : '+s1+'     Ttl # of line : '+s2;
  }
  ttl001.Caption:='';
  if v003.Value+ppdbcalc6.value<v001.Value+ppdbcalc2.value+ppdbcalc4.value then begin
    diff03.Caption:='+'+formatfloat('#0',v001.value+ppdbcalc2.value+ppdbcalc4.value-v003.value-ppdbcalc6.value);
    diff03.Font.Color:=clBlack;
  end else begin
    diff03.Caption:=formatfloat('#0',v001.Value-v003.Value-ppdbcalc6.value);
    diff03.Font.Color:=clRed;
  end;
end;

procedure Tfrmcprep1.ppGroupFooterBand5BeforePrint(Sender: TObject);
begin
  diff02.Caption:=formatfloat('#0',dv001.Value-dv002.Value-ppdbcalc5.value);
  if (dv001.value>=dv002.value+ppdbcalc5.value) then
  diff02.Font.Color:=clBlack else diff02.Font.Color:=clRed
end;

procedure Tfrmcprep1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 