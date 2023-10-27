unit summaryform7u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppCtrls, jpeg, ppVar, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, ppViewr,
  ppParameter;

type
  Tfrmsummary7 = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape5: TppShape;
    ppShape1: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
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
    week001: TppLabel;
    ppLabel18: TppLabel;
    ppLabel26: TppLabel;
    ppLine2: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine47: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine49: TppLine;
    ppLabel6: TppLabel;
    ppLabel37: TppLabel;
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
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine78: TppLine;
    ppLabel71: TppLabel;
    ppLine79: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel44: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine102: TppLine;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText2: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
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
    ppLine48: TppLine;
    ppLine50: TppLine;
    ppLine9: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine24: TppLine;
    ttl001: TppLabel;
    y001: TppLabel;
    y002: TppLabel;
    ppLine67: TppLine;
    ppLine71: TppLine;
    def003: TppLabel;
    def005: TppLabel;
    ppLine19: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    y003: TppLabel;
    y004: TppLabel;
    ppLine103: TppLine;
    ppDBText20: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
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
    ppLine46: TppLine;
    ppLine51: TppLine;
    ppLine58: TppLine;
    ppLine64: TppLine;
    x003: TppLabel;
    ppLine68: TppLine;
    ppLine72: TppLine;
    def004: TppLabel;
    def006: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel21: TppLabel;
    dx001: TppLabel;
    ppLabel61: TppLabel;
    ppLine82: TppLine;
    ppLine83: TppLine;
    style001: TppLabel;
    po001: TppLabel;
    adt001: TppLabel;
    acc001: TppLabel;
    rej001: TppLabel;
    ppLine104: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel87: TppLabel;
    ppDBText21: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape20: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppLabel88: TppLabel;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    def02: TppLabel;
    fpy01: TppLabel;
    ppLine115: TppLine;
    ppLine116: TppLine;
    x04: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLine117: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    x03: TppLabel;
    ppLine126: TppLine;
    ppLine127: TppLine;
    def04: TppLabel;
    def06: TppLabel;
    ppLine128: TppLine;
    ppLine129: TppLine;
    style01: TppLabel;
    po01: TppLabel;
    adt01: TppLabel;
    acc01: TppLabel;
    rej01: TppLabel;
    ppLine130: TppLine;
    ppDBCalc16: TppDBCalc;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel27: TppLabel;
    ppDBText7: TppDBText;
    ppLine6: TppLine;
    ppLine27: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    rep001: TppLabel;
    ppDBCalc4: TppDBCalc;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsummary7: Tfrmsummary7;

implementation

uses aqlmainformu, summaryformu;

{$R *.dfm}

procedure Tfrmsummary7.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmsummary7.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    //commandtext:='select sum(major) as q1,sum(minor) as q2 from tbl_aql_s4 where seq=:x1';
    commandtext:='select sum(majr) as q1,sum(minr) as q2 from tbl_aql_s0 where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then def001.Caption:=fieldbyname('q1').asstring
    else def001.Caption:='0';
    if not fieldbyname('q2').isnull then def003.Caption:=fieldbyname('q2').asstring
    else def003.caption:='0';
    if not fieldbyname('q1').isnull then begin
      if fieldbyname('q1').value<=query1.fieldbyname('sqty1').value then begin
        x001.Visible:=true;
        x002.Visible:=false;
        y003.Visible:=true;
        y004.Visible:=false;
      end else begin
        x001.Visible:=false;
        x002.Visible:=true;
        y003.Visible:=false;
        y004.Visible:=true;
      end;
    end else begin
      x001.Visible:=true;
      x002.Visible:=false;
      y003.Visible:=true;
      y004.Visible:=false;
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
  else if query1.fieldbyname('audit4').value=true then audit001.Caption:='4th'
  else if query1.FieldByName('audit5').value=true then audit001.Caption:='5th'
  else audit001.Caption:='1st';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(major) as q1 from tbl_aql_s5 where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then begin
      if fieldbyname('q1').value<=0 then begin
        y001.Visible:=true;
        y002.Visible:=false;
        //y003.Visible:=true;
        //y004.Visible:=false;
      end else begin
        y001.Visible:=false;
        y002.Visible:=true;
        //y003.Visible:=false;
        //y004.Visible:=true;
      end;
    end else begin
      y001.Visible:=true;
      y002.Visible:=false;
      //y003.Visible:=true;
      //y004.Visible:=false;
    end;
  end;
  ttl001.Caption:=inttostr(query1.fieldbyname('col1').value*query1.fieldbyname('size1').value);
  if (query1.fieldbyname('col1').value*query1.fieldbyname('size1').value>0) then
  //ttl002.Caption:=formatfloat('0.0',query1.fieldbyname('case1').value/(query1.fieldbyname('col1').value*query1.fieldbyname('size1').value))
  //else ttl002.Caption:='0.0';
end;

procedure Tfrmsummary7.ppSummaryBand1BeforePrint(Sender: TObject);
var
  dft,dft1,x1,x2:integer;
begin
  dft:=0;dft1:=0;x1:=0;x2:=0;
  with query2 do begin
    close;
    params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,b.majr as q1,b.minr as q2 from tbl_aql_s4 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.CheckBox2.Checked then commandtext:=commandtext+' and b.dailyaql=1'
    else if frmsummary.CheckBox5.Checked then commandtext:=commandtext+' and b.dailyaql1=1';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+'''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    if (frmsummary.ComboBox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+frmsummary.ComboBox4.text+''''; 
    //commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
      params[0].asinteger:=frmsummary.spinedit2.value;
      params[1].asinteger:=frmsummary.spinedit3.Value;
      params[2].asinteger:=frmsummary.spinedit1.value;
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
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct sum(a.major) as q1 from tbl_aql_s5 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.CheckBox2.Checked then commandtext:=commandtext+' and b.dailyaql=1'
    else if frmsummary.CheckBox5.Checked then commandtext:=commandtext+' and b.dailyaql1=1';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+'''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    if (frmsummary.ComboBox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+frmsummary.ComboBox4.text+''''; 
      params[0].asinteger:=frmsummary.spinedit2.value;
      params[1].asinteger:=frmsummary.spinedit3.Value;
      params[2].asinteger:=frmsummary.spinedit1.value;
    open;
    if not fieldbyname('q1').isnull then def006.Caption:=fieldbyname('q1').asstring
    else def006.Caption:='0';
  end;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select count(distinct cstyle) as q1,count(distinct pono) as q2,count(distinct aud) as q3 from tbl_aql_s0 a where a.hun_check=0 and a.endline=0 and a.wk>=:x1 and a.wk<=:x2 and f_year(a.dt)=:x3';
      if frmsummary.CheckBox2.Checked then commandtext:=commandtext+' and a.dailyaql=1'
      else if frmsummary.CheckBox5.Checked then commandtext:=commandtext+' and a.dailyaql1=1';
      if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+'''';
      if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
      if (frmsummary.ComboBox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+frmsummary.ComboBox4.text+'''';
      params[0].asinteger:=frmsummary.spinedit2.value;
      params[1].asinteger:=frmsummary.spinedit3.Value;
      params[2].asinteger:=frmsummary.spinedit1.value;
      open;
      if not fieldbyname('q1').isnull then
      style001.Caption:=fieldbyname('q1').asstring
      else style001.caption:='0';
      if not fieldbyname('q2').isnull then
      po001.Caption:=fieldbyname('q2').asstring
      else po001.caption:='0';
      if not fieldbyname('q3').isnull then
      adt001.Caption:=fieldbyname('q3').asstring
      else adt001.caption:='0';
    end;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select count(*) as q1 from tbl_aql_s0 a where a.hun_check=0 and a.endline=0 and a.wk>=:x1 and a.wk<=:x2 and f_year(a.dt)=:x3 and not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
      if frmsummary.CheckBox2.Checked then commandtext:=commandtext+' and a.dailyaql=1'
      else if frmsummary.CheckBox5.Checked then commandtext:=commandtext+' and a.dailyaql1=1';
      if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+'''';
      if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
      if (frmsummary.ComboBox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+frmsummary.ComboBox4.text+'''';
      params[0].asinteger:=frmsummary.spinedit2.value;
      params[1].asinteger:=frmsummary.spinedit3.Value;
      params[2].asinteger:=frmsummary.spinedit1.value;
      open;
      if not fieldbyname('q1').isnull then begin
        x1:=x1+fieldbyname('q1').value;
        x2:=x2+fieldbyname('q1').value;
      end;
    end;

    x003.Caption:=inttostr(x1);
    x004.Caption:=inttostr(ppdbcalc1.Value-x1);

    acc001.Caption:=inttostr(x1);//po001.Caption;
    rej001.Caption:=x004.Caption;

    if ppdbcalc1.Value>0 then
    fpy001.Caption:=formatfloat('0.00%',x1*100.00/ppdbcalc1.Value)
    else fpy001.Caption:='0.00%';

    with query2 do begin
      close;
      params.clear;
      commandtext:='select frep from tbl_aql_ftyrep where fqa=''QA''';
      open;
      rep001.caption:=fieldbyname('frep').value;
    end;
end;

procedure Tfrmsummary7.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  dft,dft1,x1,x2:integer;
begin
  dft:=0;dft1:=0;x1:=0;x2:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,b.majr as q1,b.minr as q2 from tbl_aql_s4 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.CheckBox2.Checked then commandtext:=commandtext+' and b.dailyaql=1'
    else if frmsummary.CheckBox5.Checked then commandtext:=commandtext+' and b.dailyaql1=1';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+'''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' and b.ws='''+query1.fieldbyname('ws').value+'''';
    if (frmsummary.ComboBox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+frmsummary.ComboBox4.text+''''; 
    //commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
      params[0].asinteger:=frmsummary.spinedit2.value;
      params[1].asinteger:=frmsummary.spinedit3.Value;
      params[2].asinteger:=frmsummary.spinedit1.value;
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
    def02.Caption:=inttostr(dft);
    def04.Caption:=inttostr(dft1);

    //if ppdbcalc3.Value>0 then dx001.Caption:=formatfloat('#,0',dft*1000000.0/ppdbcalc3.Value)
    //else dx001.Caption:='0';

  with query2 do begin
    close;
    params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct sum(a.major) as q1 from tbl_aql_s5 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.CheckBox2.Checked then commandtext:=commandtext+' and b.dailyaql=1'
    else if frmsummary.CheckBox5.Checked then commandtext:=commandtext+' and b.dailyaql1=1';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+'''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' and b.ws='''+query1.fieldbyname('ws').value+'''';
    if (frmsummary.ComboBox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+frmsummary.ComboBox4.text+''''; 
      params[0].asinteger:=frmsummary.spinedit2.value;
      params[1].asinteger:=frmsummary.spinedit3.Value;
      params[2].asinteger:=frmsummary.spinedit1.value;
    open;
    if not fieldbyname('q1').isnull then def06.Caption:=fieldbyname('q1').asstring
    else def06.Caption:='0';
  end;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select count(distinct cstyle) as q1,count(distinct pono) as q2,count(distinct aud) as q3 from tbl_aql_s0 a where a.hun_check=0 and a.endline=0 and a.wk>=:x1 and a.wk<=:x2 and f_year(a.dt)=:x3';
      if frmsummary.CheckBox2.Checked then commandtext:=commandtext+' and a.dailyaql=1'
      else if frmsummary.CheckBox5.Checked then commandtext:=commandtext+' and a.dailyaql1=1';
      if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+'''';
      if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
      commandtext:=commandtext+' and a.ws='''+query1.fieldbyname('ws').value+'''';
      if (frmsummary.ComboBox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+frmsummary.ComboBox4.text+'''';
      params[0].asinteger:=frmsummary.spinedit2.value;
      params[1].asinteger:=frmsummary.spinedit3.Value;
      params[2].asinteger:=frmsummary.spinedit1.value;
      open;
      if not fieldbyname('q1').isnull then
      style01.Caption:=fieldbyname('q1').asstring
      else style01.caption:='0';
      if not fieldbyname('q2').isnull then
      po01.Caption:=fieldbyname('q2').asstring
      else po01.caption:='0';
      if not fieldbyname('q3').isnull then
      adt01.Caption:=fieldbyname('q3').asstring
      else adt01.caption:='0';
    end;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select count(*) as q1 from tbl_aql_s0 a where a.hun_check=0 and a.endline=0 and a.wk>=:x1 and a.wk<=:x2 and f_year(a.dt)=:x3 and not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
      if frmsummary.CheckBox2.Checked then commandtext:=commandtext+' and a.dailyaql=1'
      else if frmsummary.CheckBox5.Checked then commandtext:=commandtext+' and a.dailyaql1=1';
      if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+'''';
      if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
      commandtext:=commandtext+' and a.ws='''+query1.fieldbyname('ws').value+'''';
      if (frmsummary.ComboBox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+frmsummary.ComboBox4.text+''''; 
      params[0].asinteger:=frmsummary.spinedit2.value;
      params[1].asinteger:=frmsummary.spinedit3.Value;
      params[2].asinteger:=frmsummary.spinedit1.value;
      open;
      if not fieldbyname('q1').isnull then begin
        x1:=x1+fieldbyname('q1').value;
        x2:=x2+fieldbyname('q1').value;
      end;
    end;

    x03.Caption:=inttostr(x1);
    x04.Caption:=inttostr(ppdbcalc4.Value-x1);

    acc01.Caption:=inttostr(x1);//po001.Caption;
    rej01.Caption:=x04.Caption;

    if ppdbcalc16.Value>0 then
    fpy01.Caption:=formatfloat('0.00%',x1*100.00/ppdbcalc16.Value)
    else fpy01.Caption:='0.00%';
end;

end.
 