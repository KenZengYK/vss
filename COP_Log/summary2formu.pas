unit summary2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, ppViewr,
  ppStrtch, ppRichTx, jpeg, ppParameter;

type
  Tfrmsummary2 = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape13: TppShape;
    ppShape12: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppImage3: TppImage;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel15: TppLabel;
    dt001: TppLabel;
    ppLabel17: TppLabel;
    dt002: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    x0001: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel23: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText13: TppDBText;
    ppLabel18: TppLabel;
    ppLabel26: TppLabel;
    ppLine2: TppLine;
    ppLabel27: TppLabel;
    ppLine27: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine47: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine49: TppLine;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppLine52: TppLine;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine11: TppLine;
    ppLine33: TppLine;
    ppLine5: TppLine;
    ppShape4: TppShape;
    ppLabel52: TppLabel;
    ppLine65: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine66: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLabel57: TppLabel;
    ppImage7: TppImage;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppShape16: TppShape;
    ppShape14: TppShape;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText2: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText14: TppDBText;
    ppDBText5: TppDBText;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    audit001: TppLabel;
    def001: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    x001: TppLabel;
    x002: TppLabel;
    ppDBText6: TppDBText;
    ppLine15: TppLine;
    ppLine44: TppLine;
    ppLine48: TppLine;
    ppLine50: TppLine;
    ppLine55: TppLine;
    ppDBText7: TppDBText;
    ppLine9: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine24: TppLine;
    y001: TppLabel;
    y002: TppLabel;
    ppLine67: TppLine;
    ppLine71: TppLine;
    def003: TppLabel;
    def005: TppLabel;
    ppLine19: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppShape17: TppShape;
    ppShape15: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
    ppLabel5: TppLabel;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    def002: TppLabel;
    fpy001: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    x004: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine25: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine51: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine59: TppLine;
    ppLine58: TppLine;
    ppLine64: TppLine;
    x003: TppLabel;
    ppLine68: TppLine;
    ppLine72: TppLine;
    def004: TppLabel;
    ppLabel21: TppLabel;
    dx001: TppLabel;
    ppLabel61: TppLabel;
    ppLabel60: TppLabel;
    yr001: TppLabel;
    ppLabel62: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    style001: TppLabel;
    po001: TppLabel;
    ppLabel65: TppLabel;
    ppLine53: TppLine;
    ppLabel35: TppLabel;
    ppLine6: TppLine;
    ppLine54: TppLine;
    wk001: TppLabel;
    adt001: TppLabel;
    x005: TppLabel;
    x006: TppLabel;
    max001: TppLabel;
    max002: TppLabel;
    ppShape5: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    maj001: TppLabel;
    f001: TppLabel;
    ppLine79: TppLine;
    ppLine80: TppLine;
    rej001: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppDBCalc10: TppDBCalc;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    acc001: TppLabel;
    ppLine88: TppLine;
    ppLine89: TppLine;
    min001: TppLabel;
    dpm001: TppLabel;
    s001: TppLabel;
    p001: TppLabel;
    a001: TppLabel;
    acc002: TppLabel;
    rej002: TppLabel;
    col001: TppLabel;
    siz001: TppLabel;
    ppDBCalc11: TppDBCalc;
    arj001: TppLabel;
    maj002: TppLabel;
    ppLabel34: TppLabel;
    maj003: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLabel41: TppLabel;
    ppLine94: TppLine;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel58: TppLabel;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    acc003: TppLabel;
    rej003: TppLabel;
    acc004: TppLabel;
    rej004: TppLabel;
    ppShape22: TppShape;
    ppLabel59: TppLabel;
    ppRichText1: TppRichText;
    ppLabel63: TppLabel;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppImage4: TppImage;
    ppImage5: TppImage;
    ppImage6: TppImage;
    ap01: TppLabel;
    ppLabel67: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel68: TppLabel;
    ppDBText10: TppDBText;
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsummary2: Tfrmsummary2;

implementation

uses aqlmainformu, summaryformu;

{$R *.dfm}

procedure Tfrmsummary2.ppSummaryBand1BeforePrint(Sender: TObject);
var
  dft,dft1,x1,x2,i:integer;
begin
  dft:=0;dft1:=0;x1:=0;x2:=0;i:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,sum(a.major) as q1,sum(a.minor) as q2 from tbl_aql_s4 a,tbl_aql_s0 b '
                +'where b.hun_check=0 and b.endline=0 and dailyaql=0 and dailyaql1=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      dft:=dft+fieldbyname('q1').value;
      dft1:=dft1+fieldbyname('q2').value;
      if fieldbyname('q1').value<=fieldbyname('sqty1').value then begin
        x1:=x1+1;
        if fieldbyname('audit1').value=true then x2:=x2+1;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  def002.Caption:=inttostr(dft);
  def004.Caption:=inttostr(dft1);

  if ppdbcalc3.Value>0 then dx001.Caption:=formatfloat('#,0',dft*1000000.0/ppdbcalc3.Value)
  else dx001.Caption:='0';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(distinct wk) as q1,count(distinct cstyle) as q2,count(distinct pono) as q3,count(distinct aud) as q4,max(col1) as q5,max(size1) as q6 from tbl_aql_s0 '
                +'where hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+frmsummary.combobox2.text+'''';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    if not fieldbyname('q1').isnull then wk001.Caption:=fieldbyname('q1').asstring;
    if not fieldbyname('q2').isnull then style001.Caption:=fieldbyname('q2').AsString;
    if not fieldbyname('q3').isnull then po001.Caption:=fieldbyname('q3').AsString;
    if not fieldbyname('q4').isnull then adt001.Caption:=fieldbyname('q4').asstring;
    if not fieldbyname('q5').IsNull then max001.Caption:=fieldbyname('q5').asstring;
    if not fieldbyname('q6').isnull then max002.Caption:=fieldbyname('q6').asstring;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(*) as q1 from tbl_aql_s0 a where hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3 and not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and a.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    x1:=x1+fieldbyname('q1').value;
    x2:=x2+fieldbyname('q1').value;
    i:=i+fieldbyname('q1').value;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct sum(a.major) as q1 from tbl_aql_s5 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and dailyaql=0 and dailyaql1=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    params.ParamByName('x1').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x2').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    if not fieldbyname('q1').isnull then maj003.Caption:=fieldbyname('q1').asstring
    else maj003.Caption:='0';
  end;

  x003.Caption:=inttostr(x1);
  x004.Caption:=inttostr(i-x1);

  rej004.Caption:=x004.Caption;

  if i>0 then
  fpy001.Caption:=formatfloat('0.00%',x2*100.00/i)
  else fpy001.Caption:='0.00%';
  x005.Caption:=x003.Caption;
  x006.Caption:=x004.Caption;
  if frmsummary.SpinEdit1.value=2009 then begin
    if (frmsummary.ComboBox1.text='SALL') or (frmsummary.ComboBox1.text='AFGH') then begin
      acc004.Caption:=inttostr(strtoint(x005.Caption)-28);
      po001.Caption:=acc004.Caption;
      max001.Caption:='10';
    end;
  end else begin
    acc004.caption:=x003.caption;
  end;
end;

procedure Tfrmsummary2.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  dft,dft1,x1,x2,i:integer;
begin
  dft:=0;dft1:=0;x1:=0;x2:=0;i:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,sum(a.major) as q1,sum(a.minor) as q2 from tbl_aql_s4 a,tbl_aql_s0 b '
                +'where b.hun_check=0 and b.endline=0 and dailyaql=0 and dailyaql1=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' and b.ws='''+query1.fieldbyname('ws').value+'''';
    commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
    params.ParamByName('x1').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x2').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      dft:=dft+fieldbyname('q1').value;
      dft1:=dft1+fieldbyname('q2').value;
      if fieldbyname('q1').value<=fieldbyname('sqty1').value then begin
        x1:=x1+1;
        if fieldbyname('audit1').value=true then x2:=x2+1;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  maj001.Caption:=inttostr(dft);
  min001.Caption:=inttostr(dft1);

  if ppdbcalc7.Value>0 then dpm001.Caption:=formatfloat('#,0',dft*1000000.0/ppdbcalc7.Value)
  else dpm001.Caption:='0';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(distinct cstyle) as q2,count(distinct pono) as q3,count(distinct aud) as q4,max(col1) as q5,max(size1) as q6 from tbl_aql_s0 '
                +'where hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' and ws='''+query1.fieldbyname('ws').value+'''';
    params.ParamByName('x1').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x2').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    if not fieldbyname('q2').isnull then s001.Caption:=fieldbyname('q2').AsString;
    if not fieldbyname('q3').isnull then p001.Caption:=fieldbyname('q3').AsString;
    if not fieldbyname('q4').isnull then a001.Caption:=fieldbyname('q4').asstring;
    if not fieldbyname('q5').IsNull then col001.Caption:=fieldbyname('q5').asstring;
    if not fieldbyname('q6').isnull then siz001.Caption:=fieldbyname('q6').asstring;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(*) as q1 from tbl_aql_s0 a where hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3 and not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and a.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' and a.ws='''+query1.fieldbyname('ws').value+'''';
    params.ParamByName('x1').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x2').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    x1:=x1+fieldbyname('q1').value;
    x2:=x2+fieldbyname('q1').value;
    i:=i+fieldbyname('q1').value;
  end;

  acc001.Caption:=inttostr(x1);
  rej001.Caption:=inttostr(i-x1);

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct sum(a.major) as q1 from tbl_aql_s5 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and dailyaql=0 and dailyaql1=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' and b.ws='''+query1.fieldbyname('ws').value+'''';
    params.ParamByName('x1').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x2').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    if not fieldbyname('q1').isnull then maj002.Caption:=fieldbyname('q1').asstring
    else maj002.Caption:='0';
  end;

    acc002.Caption:=acc001.Caption;
    rej002.Caption:=rej001.Caption;

    acc003.Caption:=acc001.Caption;
    rej003.Caption:=rej001.Caption;

    if (frmsummary.ComboBox1.text='SALL') or (frmsummary.ComboBox1.text='AFGH') then begin
      if ((frmsummary.SpinEdit1.value=2009) and (query1.fieldbyname('wk').value=2)) then begin
        p001.Caption:='60';col001.Caption:='8';acc001.Caption:='60';acc002.Caption:='60';acc003.Caption:='60';
      end else if ((frmsummary.SpinEdit1.value=2009) and (query1.fieldbyname('wk').value=10)) then begin
        p001.Caption:='16';col001.Caption:='10';acc001.Caption:='16';acc002.Caption:='16';acc003.Caption:='16';
      end else if ((frmsummary.SpinEdit1.value=2009) and (query1.fieldbyname('wk').value=11)) then begin
        p001.Caption:='18';col001.Caption:='10';acc001.Caption:='18';acc002.Caption:='18';acc003.Caption:='18';
      end else if ((frmsummary.SpinEdit1.value=2009) and (query1.fieldbyname('wk').value=12)) then begin
        p001.Caption:='42';col001.Caption:='8';acc001.Caption:='42';acc002.Caption:='42';acc003.Caption:='42';
      end else if ((frmsummary.SpinEdit1.value=2009) and (query1.fieldbyname('wk').value=21)) then begin
        p001.Caption:='7';col001.Caption:='8';acc001.Caption:='7';acc002.Caption:='7';acc003.Caption:='7';
      end;
    end;

    if i>0 then
    f001.Caption:=formatfloat('0.00%',x2*100.00/i)
    else f001.Caption:='0.00%';
    arj001.Caption:=inttostr(ppDBCalc11.Value+1);
end;

procedure Tfrmsummary2.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.

