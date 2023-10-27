unit summary1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DB, DBClient, ppViewr,
  StdCtrls, Mask, rxToolEdit, jpeg, ppParameter;

type
  Tfrmsummary1 = class(TForm)
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
    ppShape5: TppShape;
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
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel23: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine38: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText13: TppDBText;
    week001: TppLabel;
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
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel38: TppLabel;
    ppLine52: TppLine;
    ppLabel43: TppLabel;
    ppLine53: TppLine;
    ppLine54: TppLine;
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
    x001: TppLabel;
    x002: TppLabel;
    ppDBText6: TppDBText;
    ppLine15: TppLine;
    ppLine44: TppLine;
    ppLine48: TppLine;
    ppLine50: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBText7: TppDBText;
    ppLine9: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine24: TppLine;
    ttl001: TppLabel;
    ttl002: TppLabel;
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
    ppDBCalc1: TppDBCalc;
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
    x004: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine25: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine51: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine58: TppLine;
    ppLine64: TppLine;
    x003: TppLabel;
    ppLine68: TppLine;
    ppLine72: TppLine;
    def004: TppLabel;
    def006: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ppLabel21: TppLabel;
    dx001: TppLabel;
    ppLabel61: TppLabel;
    ppImage4: TppImage;
    ppLine39: TppLine;
    ppLabel60: TppLabel;
    ppLine41: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine43: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    style001: TppLabel;
    po001: TppLabel;
    adt001: TppLabel;
    acc001: TppLabel;
    rej001: TppLabel;
    ppDBText10: TppDBText;
    ppDBCalc7: TppDBCalc;
    y003: TppLabel;
    y004: TppLabel;
    ppImage5: TppImage;
    ppImage6: TppImage;
    ppImage7: TppImage;
    ap01: TppLabel;
    ppLabel44: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel68: TppLabel;
    ppDBText11: TppDBText;
    rep001: TppLabel;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsummary1: Tfrmsummary1;

implementation

uses aqlmainformu, summaryformu;

{$R *.dfm}

procedure Tfrmsummary1.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(major) as q1,sum(minor) as q2 from tbl_aql_s4 where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then def001.Caption:=fieldbyname('q1').asstring
    else def001.Caption:='0';
    if not fieldbyname('q2').isnull then def003.Caption:=fieldbyname('q2').asstring
    else def003.caption:='0';
    if fieldbyname('q1').value<=query1.fieldbyname('sqty1').value then begin
      x001.Visible:=true;
      x002.Visible:=false;
    end else begin
      x001.Visible:=false;
      x002.Visible:=true;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(major) as q1 from tbl_aql_s5 where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then def005.Caption:=fieldbyname('q1').asstring
    else def005.Caption:='0';
  end;

  if query1.FieldByName('audit1').value=true then audit001.Caption:='1st'
  else if query1.fieldbyname('audit2').value=true then audit001.Caption:='2nd'
  else if query1.FieldByName('audit3').value=true then audit001.Caption:='3rd'
  else audit001.Caption:='1st';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(major) as q1 from tbl_aql_s5 where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('q1').value<=0 then begin
      y001.Visible:=true;
      y002.Visible:=false;
      y003.Visible:=true;
      y004.Visible:=false;
    end else begin
      y001.Visible:=false;
      y002.Visible:=true;
      y003.Visible:=false;
      y004.Visible:=true;
    end;
  end;
  ttl001.Caption:=inttostr(query1.fieldbyname('col1').value*query1.fieldbyname('size1').value);
  if (query1.fieldbyname('col1').value*query1.fieldbyname('size1').value>0) then
  ttl002.Caption:=formatfloat('0.0',query1.fieldbyname('case1').value/(query1.fieldbyname('col1').value*query1.fieldbyname('size1').value))
  else ttl002.Caption:='0.0';
end;

procedure Tfrmsummary1.ppSummaryBand1BeforePrint(Sender: TObject);
var
  dft,dft1,x1,x2:integer;
begin
  dft:=0;dft1:=0;x1:=0;x2:=0;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
    if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,sum(a.major) as q1,sum(a.minor) as q2 from tbl_aql_s4 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and dailyaql=0 and dailyaql1=0 and a.seq=b.seq';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    if dateedit1.date>0 then commandtext:=commandtext+' and b.dt>=:x1';
    if dateedit2.date>0 then commandtext:=commandtext+' and b.dt<=:x2';
    commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
    if dateedit1.date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
    if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.Date;
    open;
    first;
    while not eof do begin
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
    if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
    if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(a.major) as q1 from tbl_aql_s5 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and dailyaql=0 and dailyaql1=0 and a.seq=b.seq';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    if dateedit1.date>0 then commandtext:=commandtext+' and b.dt>=:x1';
    if dateedit2.date>0 then commandtext:=commandtext+' and b.dt<=:x2';
    if dateedit1.date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
    if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.Date;
    open;
    if not fieldbyname('q1').isnull then def006.Caption:=fieldbyname('q1').asstring
    else def006.Caption:='0';
  end;

    with query2 do begin
      close;
      params.clear;
      if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
      if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
      commandtext:='select count(distinct cstyle) as q1,count(distinct pono) as q2,count(distinct aud) as q3 from tbl_aql_s0 a where hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0';
      if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+''''
      else commandtext:=commandtext+' and a.cust=''SALL''';
      if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
      if dateedit1.date>0 then commandtext:=commandtext+' and a.dt>=:x1';
      if dateedit2.date>0 then commandtext:=commandtext+' and a.dt<=:x2';
      if dateedit1.date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
      if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.Date;
      open;
      style001.Caption:=fieldbyname('q1').asstring;
      po001.Caption:=fieldbyname('q2').asstring;
      adt001.Caption:=fieldbyname('q3').asstring;
    end;

    with query2 do begin
      close;
      params.clear;
      if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
      if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
      commandtext:='select count(*) as q1 from tbl_aql_s0 a where not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
      if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+''''
      else commandtext:=commandtext+' and a.cust=''SALL''';
      if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
      if dateedit1.date>0 then commandtext:=commandtext+' and a.dt>=:x1';
      if dateedit2.date>0 then commandtext:=commandtext+' and a.dt<=:x2';
      if dateedit1.date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
      if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.Date;
      open;
      x1:=x1+fieldbyname('q1').value;
      x2:=x2+fieldbyname('q1').value;
    end;

    x003.Caption:=inttostr(x1);
    x004.Caption:=inttostr(ppdbcalc1.Value-x1);

    acc001.Caption:=po001.Caption;
    rej001.Caption:=x004.Caption;

    if ppdbcalc1.Value>0 then
    fpy001.Caption:=formatfloat('0.00%',x2*100.00/ppdbcalc1.Value)
    else fpy001.Caption:='0.00%';

    with query2 do begin
      close;
      params.clear;
      commandtext:='select frep from tbl_aql_ftyrep where fqa=''QA''';
      open;
      rep001.caption:=fieldbyname('frep').value;
    end;
end;

procedure Tfrmsummary1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

end.
 