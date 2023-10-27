unit summaryformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, DB, DBClient, ppBands,
  ppClass, ppMemo, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl,
  ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, ppVar, ppViewr,
  dateutils, Spin, jpeg, ppParameter;

type
  Tfrmsummary = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppImage3: TppImage;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppDBText13: TppDBText;
    ppLabel8: TppLabel;
    ppDBText14: TppDBText;
    ppLabel9: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    dt001: TppLabel;
    ppLabel17: TppLabel;
    dt002: TppLabel;
    ppLabel16: TppLabel;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    x0001: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppShape3: TppShape;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel23: TppLabel;
    ppSystemVariable2: TppSystemVariable;
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
    audit001: TppLabel;
    def001: TppLabel;
    def002: TppLabel;
    fpy001: TppLabel;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    x001: TppLabel;
    x002: TppLabel;
    x004: TppLabel;
    week001: TppLabel;
    ppLabel18: TppLabel;
    ppLabel26: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppLine2: TppLine;
    ppLine15: TppLine;
    ppLine25: TppLine;
    ppLabel27: TppLabel;
    ppLine27: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine46: TppLine;
    ppLabel30: TppLabel;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
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
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBText7: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLabel45: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine9: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine11: TppLine;
    ppLine24: TppLine;
    ppLine33: TppLine;
    ppLine5: TppLine;
    ppLine58: TppLine;
    ppLine64: TppLine;
    ttl001: TppLabel;
    ttl002: TppLabel;
    x003: TppLabel;
    y001: TppLabel;
    y002: TppLabel;
    ppShape4: TppShape;
    ppLabel52: TppLabel;
    ppShape5: TppShape;
    ppLine65: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine66: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLabel57: TppLabel;
    ppLine71: TppLine;
    ppLine72: TppLine;
    def003: TppLabel;
    def004: TppLabel;
    def005: TppLabel;
    def006: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    ppLabel21: TppLabel;
    dx001: TppLabel;
    BitBtn3: TBitBtn;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppImage4: TppImage;
    ppImage5: TppImage;
    ppImage6: TppImage;
    subtitle001: TppLabel;
    ppShape18: TppShape;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    dpm001: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    dpm002: TppLabel;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLabel60: TppLabel;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLabel61: TppLabel;
    ppImage7: TppImage;
    ppImage8: TppImage;
    Label5: TLabel;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    Label6: TLabel;
    SpinEdit3: TSpinEdit;
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
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    style001: TppLabel;
    po001: TppLabel;
    adt001: TppLabel;
    acc001: TppLabel;
    rej001: TppLabel;
    y003: TppLabel;
    y004: TppLabel;
    ppDBText17: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppImage9: TppImage;
    ppImage10: TppImage;
    ppImage11: TppImage;
    ap01: TppLabel;
    BitBtn4: TBitBtn;
    CheckBox3: TCheckBox;
    ppLabel44: TppLabel;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLine84: TppLine;
    sub001: TppLabel;
    ppShape19: TppShape;
    ppLine85: TppLine;
    cust001: TppLabel;
    styles001: TppLabel;
    pos001: TppLabel;
    shp001: TppLabel;
    sample001: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine86: TppLine;
    ppLabel86: TppLabel;
    def0001: TppLabel;
    def0002: TppLabel;
    ppLine87: TppLine;
    def0003: TppLabel;
    ppLine88: TppLine;
    def0004: TppLabel;
    ppLine89: TppLine;
    ppLine90: TppLine;
    def0005: TppLabel;
    ppLine91: TppLine;
    def0006: TppLabel;
    ppLine92: TppLine;
    def0007: TppLabel;
    ppLine93: TppLine;
    def0008: TppLabel;
    def0009: TppLabel;
    ppLine94: TppLine;
    def0010: TppLabel;
    ppLine95: TppLine;
    ppLine96: TppLine;
    def0011: TppLabel;
    ppLine97: TppLine;
    def0012: TppLabel;
    ppLine98: TppLine;
    def0013: TppLabel;
    ppLine99: TppLine;
    def0014: TppLabel;
    ppLine100: TppLine;
    ppLabel101: TppLabel;
    qty0001: TppLabel;
    qty0002: TppLabel;
    qty0003: TppLabel;
    qty0004: TppLabel;
    qty0005: TppLabel;
    qty0006: TppLabel;
    qty0007: TppLabel;
    qty0008: TppLabel;
    qty0010: TppLabel;
    qty0011: TppLabel;
    qty0012: TppLabel;
    qty0013: TppLabel;
    qty0014: TppLabel;
    qty0009: TppLabel;
    ttlqty001: TppLabel;
    ppLine101: TppLine;
    ppLabel78: TppLabel;
    p0001: TppLabel;
    p0002: TppLabel;
    p0003: TppLabel;
    p0004: TppLabel;
    p0005: TppLabel;
    p0006: TppLabel;
    p0007: TppLabel;
    p0008: TppLabel;
    p0009: TppLabel;
    p0010: TppLabel;
    p0011: TppLabel;
    p0012: TppLabel;
    p0013: TppLabel;
    p0014: TppLabel;
    ttlp001: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    BitBtn5: TBitBtn;
    ppLabel81: TppLabel;
    ppLine102: TppLine;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppDBText20: TppDBText;
    CheckBox4: TCheckBox;
    Label7: TLabel;
    Edit1: TEdit;
    Label8: TLabel;
    ComboBox2: TComboBox;
    Label9: TLabel;
    ComboBox3: TComboBox;
    CheckBox2: TCheckBox;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel87: TppLabel;
    ppDBText21: TppDBText;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
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
    ppDBCalc12: TppDBCalc;
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
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppDBCalc14: TppDBCalc;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLine123: TppLine;
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
    ppDBCalc15: TppDBCalc;
    ppLine130: TppLine;
    ppDBCalc16: TppDBCalc;
    ComboBox4: TComboBox;
    CheckBox5: TCheckBox;
    rep001: TppLabel;
    Label10: TLabel;
    ComboBox5: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtnClick(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsummary: Tfrmsummary;

implementation

uses aqlmainformu, summary1formu, summary2formu, summary3formu,
  summary4formu, summary5formu, defectsummaryformu, aqlnotepadformu,
  summary6formu, summaryform7u, summary8formu;

{$R *.dfm}

procedure Tfrmsummary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmsummary1<>nil then frmsummary1:=nil;
  if frmsummary2<>nil then frmsummary2:=nil;
  if frmsummary3<>nil then frmsummary3:=nil;
  if frmsummary4<>nil then frmsummary4:=nil;
  if frmsummary5<>nil then frmsummary5:=nil;
  if frmsummary6<>nil then frmsummary6:=nil;
  if frmsummary7<>nil then frmsummary7:=nil;
  if frmsummary8<>nil then frmsummary8:=nil;
  action:=cafree;
  frmsummary:=nil;
end;

procedure Tfrmsummary.FormShow(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  dateedit1.Date:=date;
  dateedit2.Date:=date;
  spinedit1.Value:=yearof(date);
  spinedit2.Value:=weekof(date);
  spinedit3.Value:=weekof(date);
  edit1.Enabled:=false;
  edit1.Text:='';
  combobox4.Enabled:=false;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_updaql_wkrpt_onewk(:x1,:x2)';
    params[0].asinteger:=yearof(date);
    params[1].asinteger:=weekof(date);
    execute;
  end;
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct fty from tbl_aql_s0 where fty is not null';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('fty').value);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct ws from tbl_aql_s0 where ws is not null and endline=0';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('ws').value);
      application.ProcessMessages;
      next;
    end;
  end;
  label10.Visible:=false;
  combobox5.Visible:=false;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmsummary.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_updaql_wkrpt_onewk(:x1,:x2)';
    params[0].asinteger:=spinedit1.value;
    params[1].asinteger:=spinedit2.value;
    execute;
  end;
 if (checkbox3.Checked=true) {or (checkbox2.Checked=true)} then begin
    if (spinedit3.value<>spinedit2.value) then spinedit3.value:=spinedit2.value;
    if frmsummary5=nil then frmsummary5:=tfrmsummary5.Create(nil);
    with frmsummary5.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      //params.createparam(ftboolean,'x4',ptinput);
      //params.createparam(ftboolean,'x5',ptinput);
      //params.createparam(ftboolean,'x6',ptinput);
      if checkbox3.checked then
      commandtext:='select * from tbl_aql_s0 where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3 and hun_check=1'
      else if checkbox4.checked then
      commandtext:='select * from tbl_aql_s0 where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3 and endline=1'
      else if checkbox2.checked then
      commandtext:='select * from tbl_aql_s0 where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3 and dailyaql=1';
      if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+combobox2.text+'''';
      if combobox5.Visible then commandtext:=commandtext+' and loc='''+combobox5.text+'''';
      commandtext:=commandtext+' order by ws,dt,pono';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
      //params[3].asboolean:=checkbox3.Checked;
      //params[4].asboolean:=checkbox4.Checked;
      //params[5].asboolean:=checkbox2.checked;
      open;
      if not fieldbyname('seq').isnull then begin
        frmsummary5.dt001.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date);
        frmsummary5.dt002.Caption:=formatdatetime('yyyy/MM/dd',dateedit2.date);
        frmsummary5.week001.Caption:='(Week:- '+inttostr(spinedit2.value)+')';
        frmsummary5.ppImage1.Visible:=false;
        frmsummary5.ppImage2.Visible:=false;
        frmsummary5.ppImage3.Visible:=false;
        frmsummary5.ppImage4.Visible:=false;//true;
        frmsummary5.ppImage5.Visible:=false;
        frmsummary5.ppImage6.Visible:=false;
        frmsummary5.ppImage7.Visible:=false;
        frmsummary5.ap01.Visible:=true;
        if (combobox1.text='APWS') or (combobox1.text='AGPO') then
        frmsummary5.ap01.caption:='Agent Provocateur'
        else if combobox1.text='ESSE' then
        frmsummary5.ap01.caption:='Essentie';
        if checkbox3.checked then
        frmsummary5.subtitle001.Caption:='Weekly Garments Off-line Full Audit Quality Performance Report Summary'
        else if checkbox2.checked then
        frmsummary5.subtitle001.Caption:='Weekly Garments In-line AQL Audit Quality Performance Report Summary';
        frmsummary5.subject01.Caption:='Audit ';
        frmsummary5.subject001.Caption:='QA Auditor ';
        frmsummary5.subject002.Caption:='(re-audit) ';
        frmsummary5.subject003.Caption:='(audited ttl) ';
        frmsummary5.ppReport1.Print;
      end else showmessage('沒有符合條件的記錄!');
    end;
 end else if (checkbox2.Checked=true) or (checkbox5.Checked) then begin
  if (spinedit2.value=spinedit3.value) then begin
    if frmsummary7=nil then frmsummary7:=tfrmsummary7.create(nil);
    with frmsummary7.query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from tbl_aql_s0 where hun_check=0 and endline=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
      if checkbox2.Checked then commandtext:=commandtext+' and dailyaql=1'
      else if checkbox5.Checked then commandtext:=commandtext+' and dailyaql1=1';
      if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+combobox2.text+'''';
      if (combobox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+combobox4.text+'''';
      commandtext:=commandtext+' order by ws,pline,j2_job,rwo,seq,dt,pono';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
      open;
      if not fieldbyname('seq').isnull then begin
        frmsummary7.dt001.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date);
        frmsummary7.dt002.Caption:=formatdatetime('yyyy/MM/dd',dateedit2.date);
        //week001.Caption:='(Week:- '+inttostr(weekof(dateedit1.date))+')';
        frmsummary7.week001.Caption:='(Week:- '+inttostr(spinedit2.value)+')';
        if checkbox2.Checked then
        frmsummary7.ppLabel14.Caption:='Weekly Garments Off-line AQL Audit Quality Performance Report Summary'
        else if checkbox5.Checked then
        frmsummary7.ppLabel14.Caption:='Weekly Garments In-line AQL Audit Quality Performance Report Summary';
        frmsummary7.ppReport1.Print;
      end else showmessage('沒有符合條件的記錄!');
    end;
  end else begin
    if frmsummary8=nil then frmsummary8:=tfrmsummary8.create(nil);
    with frmsummary8.query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from tbl_aql_s0 where hun_check=0 and endline=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
      if checkbox2.Checked then commandtext:=commandtext+' and dailyaql=1'
      else if checkbox5.Checked then commandtext:=commandtext+' and dailyaql1=1';
      if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+combobox2.text+'''';
      if (combobox4.text<>'1st - 5th Audit') then commandtext:=commandtext+' and auditr='''+combobox4.text+'''';
      commandtext:=commandtext+' order by ws,pline,j2_job,rwo,seq,dt,pono';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
      open;
      if not fieldbyname('seq').isnull then begin
        frmsummary8.yr001.Caption:=inttostr(spinedit1.value);
        frmsummary8.dt001.Caption:=inttostr(spinedit2.value);
        frmsummary8.dt002.Caption:=inttostr(spinedit3.value);
        if checkbox2.Checked then
        frmsummary8.ppLabel14.Caption:='Periodic Off-line AQL Audit Quality Performance Report Summary'
        else if checkbox5.Checked then
        frmsummary8.ppLabel14.Caption:='Periodic In-line AQL Audit Quality Performance Report Summary';
        frmsummary8.ppReport1.Print;
      end else showmessage('沒有符合條件的記錄!');
    end;
  end;
 end else if (checkbox4.Checked=true) then begin
   if (spinedit3.value<>spinedit2.value) then spinedit3.value:=spinedit2.value;
    if frmsummary6=nil then frmsummary6:=tfrmsummary6.Create(nil);
    with frmsummary6.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      //params.createparam(ftboolean,'x4',ptinput);
      //params.createparam(ftboolean,'x5',ptinput);
      commandtext:='select distinct dt,fty,ws,brand,flag6,cstyle,pline,j2_job,j2_job||''-''||rwo||''-''||flag60 as flag60,aud,'
                  +'sum(qty) as qty,max(col1) as col1,max(size1) as size1,sum(qr) as qr,sum(qr1) as qr1 '
                  +'from tbl_aql_s0 where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3 ';//and hun_check=:x4 and endline=:x5';
      if checkbox3.checked then commandtext:=commandtext+' and hun_check=1';
      if checkbox4.checked then commandtext:=commandtext+' and endline=1';
      if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by dt,fty,ws,brand,flag6,cstyle,pline,j2_job,rwo,flag60,aud ';
      commandtext:=commandtext+' order by ws,dt,cstyle,j2_job,flag60';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
      //params[3].asboolean:=checkbox3.Checked;
      //params[4].asboolean:=checkbox4.Checked;
      open;
      if not fieldbyname('dt').isnull then begin
        frmsummary6.dt001.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date);
        frmsummary6.dt002.Caption:=formatdatetime('yyyy/MM/dd',dateedit2.date);
        frmsummary6.week001.Caption:='(Week:- '+inttostr(spinedit2.value)+')';
        frmsummary6.ppImage1.Visible:=false;
        frmsummary6.ppImage2.Visible:=false;
        frmsummary6.ppImage3.Visible:=false;
        frmsummary6.ppImage4.Visible:=false;//true;
        frmsummary6.ppImage5.Visible:=false;
        frmsummary6.ppImage6.Visible:=false;
        frmsummary6.ppImage7.Visible:=false;
        frmsummary6.ap01.Visible:=true;
        frmsummary6.ppReport1.Print;
      end else showmessage('沒有符合條件的記錄!');
    end;
 end else begin
 if (spinedit2.Value=spinedit3.Value) then begin
  if checkbox1.Checked then begin
    if frmsummary1=nil then frmsummary1:=tfrmsummary1.Create(nil);
    frmsummary1.DateEdit1.date:=dateedit1.date;
    frmsummary1.DateEdit2.date:=dateedit2.date;
    with frmsummary1.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from tbl_aql_s0 where hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
      if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+''''
      else commandtext:=commandtext+' and cust=''SALL''';
      if combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+combobox2.text+'''';
      commandtext:=commandtext+' order by ws,dt,pono';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
      open;
      if not fieldbyname('seq').isnull then begin
        frmsummary1.dt001.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date);
        frmsummary1.dt002.Caption:=formatdatetime('yyyy/MM/dd',dateedit2.date);
        frmsummary1.week001.Caption:='(Week:- '+inttostr(spinedit2.value)+')';
        if (combobox1.text='AGPO') or (combobox1.text='APWS') then begin
          frmsummary1.ppImage1.Visible:=false;
          frmsummary1.ppImage2.Visible:=false;
          frmsummary1.ppImage3.Visible:=false;
          frmsummary1.ppImage4.Visible:=false;//true;
          frmsummary1.ppImage5.Visible:=false;
          frmsummary1.ppImage6.Visible:=false;
          frmsummary1.ppImage7.Visible:=false;
          frmsummary1.ap01.Visible:=true;
        end else if (combobox1.text='SALL') or (combobox1.text='AFGH') then begin
          frmsummary1.ppImage1.Visible:=true;
          frmsummary1.ppImage2.Visible:=true;
          frmsummary1.ppImage3.Visible:=true;
          frmsummary1.ppImage4.Visible:=false;
          frmsummary1.ppImage5.Visible:=false;
          frmsummary1.ppImage6.Visible:=false;
          frmsummary1.ppImage7.Visible:=false;
          frmsummary1.ap01.Visible:=false;
        end else if combobox1.text='EBIM' then begin
          frmsummary1.ppImage1.Visible:=false;
          frmsummary1.ppImage2.Visible:=false;
          frmsummary1.ppImage3.Visible:=false;
          frmsummary1.ppImage4.Visible:=false;
          frmsummary1.ppImage5.Visible:=true;
          frmsummary1.ppImage6.Visible:=false;
          frmsummary1.ppImage7.Visible:=false;
        end else if combobox1.text='TAMA' then begin
          frmsummary1.ppImage1.Visible:=false;
          frmsummary1.ppImage2.Visible:=false;
          frmsummary1.ppImage3.Visible:=false;
          frmsummary1.ppImage4.Visible:=false;
          frmsummary1.ppImage5.Visible:=false;
          frmsummary1.ppImage6.Visible:=true;
          frmsummary1.ppImage7.Visible:=false;
        end else if combobox1.text='BALE' then begin
          frmsummary1.ppImage1.Visible:=false;
          frmsummary1.ppImage2.Visible:=false;
          frmsummary1.ppImage3.Visible:=false;
          frmsummary1.ppImage4.Visible:=false;
          frmsummary1.ppImage5.Visible:=false;
          frmsummary1.ppImage7.Visible:=true;
          frmsummary1.ppImage6.Visible:=false;
        end;
        frmsummary1.ppReport1.Print;
      end else showmessage('沒有符合條件的記錄!');
    end;
  end else begin
  with query1 do begin
    close;
    params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_aql_s0 where hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+''''
    else commandtext:=commandtext+' and cust=''SALL''';
    if combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+combobox2.text+'''';
    commandtext:=commandtext+' order by ws,dt,pono';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('seq').isnull then begin
      dt001.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date);
      dt002.Caption:=formatdatetime('yyyy/MM/dd',dateedit2.date);
      //week001.Caption:='(Week:- '+inttostr(weekof(dateedit1.date))+')';
      week001.Caption:='(Week:- '+inttostr(spinedit2.value)+')';
      if (combobox1.text='AGPO') or (combobox1.text='APWS') then begin
        ppImage1.Visible:=false;
        ppImage2.Visible:=false;
        ppImage3.Visible:=false;
        ppImage7.Visible:=false;//true;
        ppImage9.Visible:=false;
        ppImage10.Visible:=false;
        ppImage11.Visible:=false;
        ap01.Visible:=true;
      end else if (combobox1.text='SALL') or (combobox1.text='AFGH') then begin
        ppImage1.Visible:=true;
        ppImage2.Visible:=true;
        ppImage3.Visible:=true;
        ppImage7.Visible:=false;
        ppImage9.Visible:=false;
        ppImage10.Visible:=false;
        ppImage11.Visible:=false;
        ap01.Visible:=false;
      end else if combobox1.text='EBIM' then begin
        ppImage1.Visible:=false;
        ppImage2.Visible:=false;
        ppImage3.Visible:=false;
        ppImage7.Visible:=false;
        ppImage9.Visible:=true;
        ppImage10.Visible:=false;
        ppImage11.Visible:=false;
      end else if combobox1.text='TAMA' then begin
        ppImage1.Visible:=false;
        ppImage2.Visible:=false;
        ppImage3.Visible:=false;
        ppImage7.Visible:=false;
        ppImage9.Visible:=false;
        ppImage10.Visible:=true;
        ppImage11.Visible:=false;
      end else if combobox1.text='BALE' then begin
        ppImage1.Visible:=false;
        ppImage2.Visible:=false;
        ppImage3.Visible:=false;
        ppImage7.Visible:=false;
        ppImage9.Visible:=false;
        ppImage11.Visible:=true;
        ppImage10.Visible:=false;
      end;
      ppReport1.Print;
    end else showmessage('沒有符合條件的記錄!');
  end;
  end;
 end else begin
   with query2 do begin
     //
   end;
   if checkbox1.Checked then begin
   if frmsummary3=nil then frmsummary3:=tfrmsummary3.Create(nil);
   with frmsummary3.Query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_aql_s0 where hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+''''
    else commandtext:=commandtext+' and cust=''SALL''';
    if combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+combobox2.text+'''';
    commandtext:=commandtext+' order by ws,wk,dt,pono';
    params.ParamByName('x1').Asinteger:=spinedit2.value;
    params.ParamByName('x2').Asinteger:=spinedit3.value;
    params.ParamByName('x3').AsInteger:=spinedit1.Value;
    open;
    if not fieldbyname('seq').isnull then begin
      frmsummary3.yr001.Caption:=inttostr(spinedit1.value);
      frmsummary3.dt001.Caption:=inttostr(spinedit2.value);
      frmsummary3.dt002.Caption:=inttostr(spinedit3.value);
      if (combobox1.text='AGPO') or (combobox1.text='APWS') then begin
        frmsummary3.ppImage1.Visible:=false;
        frmsummary3.ppImage2.Visible:=false;
        frmsummary3.ppImage3.Visible:=false;
        frmsummary3.ppImage7.Visible:=false;//true;
        frmsummary3.ppImage4.Visible:=false;
        frmsummary3.ppImage5.Visible:=false;
        frmsummary3.ppImage6.Visible:=false;
        frmsummary3.ap01.Visible:=true;
      end else if (combobox1.text='SALL') or (combobox1.text='AFGH') then begin
        frmsummary3.ppImage1.Visible:=true;
        frmsummary3.ppImage2.Visible:=true;
        frmsummary3.ppImage3.Visible:=true;
        frmsummary3.ppImage7.Visible:=false;
        frmsummary3.ppImage4.Visible:=false;
        frmsummary3.ppImage5.Visible:=false;
        frmsummary3.ppImage6.Visible:=false;
        frmsummary3.ap01.Visible:=false;
      end else if combobox1.text='EBIM' then begin
        frmsummary3.ppImage1.Visible:=false;
        frmsummary3.ppImage2.Visible:=false;
        frmsummary3.ppImage3.Visible:=false;
        frmsummary3.ppImage7.Visible:=false;
        frmsummary3.ppImage4.Visible:=true;
        frmsummary3.ppImage5.Visible:=false;
        frmsummary3.ppImage6.Visible:=false;
      end else if combobox1.text='TAMA' then begin
        frmsummary3.ppImage1.Visible:=false;
        frmsummary3.ppImage2.Visible:=false;
        frmsummary3.ppImage3.Visible:=false;
        frmsummary3.ppImage7.Visible:=false;
        frmsummary3.ppImage4.Visible:=false;
        frmsummary3.ppImage5.Visible:=true;
        frmsummary3.ppImage6.Visible:=false;
      end else if combobox1.text='BALE' then begin
        frmsummary3.ppImage1.Visible:=false;
        frmsummary3.ppImage2.Visible:=false;
        frmsummary3.ppImage3.Visible:=false;
        frmsummary3.ppImage7.Visible:=false;
        frmsummary3.ppImage4.Visible:=false;
        frmsummary3.ppImage6.Visible:=true;
        frmsummary3.ppImage5.Visible:=false;
      end;
      frmsummary3.ppReport1.Print;
    end else showmessage('沒有符合條件的記錄!');
   end;
   end else begin
   if frmsummary2=nil then frmsummary2:=tfrmsummary2.Create(nil);
   with frmsummary2.Query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_aql_s0 where hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0 and wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+''''
    else commandtext:=commandtext+' and cust=''SALL''';
    if combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+combobox2.text+'''';
    commandtext:=commandtext+' order by ws,wk,dt,pono';
    params.ParamByName('x1').Asinteger:=spinedit2.value;
    params.ParamByName('x2').Asinteger:=spinedit3.value;
    params.ParamByName('x3').AsInteger:=spinedit1.Value;
    open;
    if not fieldbyname('seq').isnull then begin
      frmsummary2.yr001.Caption:=inttostr(spinedit1.value);
      frmsummary2.dt001.Caption:=inttostr(spinedit2.value);
      frmsummary2.dt002.Caption:=inttostr(spinedit3.value);
      if (combobox1.text='AGPO') or (combobox1.text='APWS') then begin
        frmsummary2.ppImage1.Visible:=false;
        frmsummary2.ppImage2.Visible:=false;
        frmsummary2.ppImage3.Visible:=false;
        frmsummary2.ppImage4.Visible:=false;
        frmsummary2.ppImage5.Visible:=false;
        frmsummary2.ppImage7.Visible:=false;//true;
        frmsummary2.ppImage6.Visible:=false;
        frmsummary2.ap01.Visible:=true;
      end else if (combobox1.text='SALL') or (combobox1.text='AFGH') then begin
        frmsummary2.ppImage1.Visible:=true;
        frmsummary2.ppImage2.Visible:=true;
        frmsummary2.ppImage3.Visible:=true;
        frmsummary2.ppImage4.Visible:=false;
        frmsummary2.ppImage5.Visible:=false;
        frmsummary2.ppImage7.Visible:=false;
        frmsummary2.ppImage6.Visible:=false;
        frmsummary2.ap01.Visible:=false;
      end else if combobox1.text='EBIM' then begin
        frmsummary2.ppImage1.Visible:=false;
        frmsummary2.ppImage2.Visible:=false;
        frmsummary2.ppImage3.Visible:=false;
        frmsummary2.ppImage4.Visible:=true;
        frmsummary2.ppImage5.Visible:=false;
        frmsummary2.ppImage7.Visible:=false;
        frmsummary2.ppImage6.Visible:=false;
      end else if combobox1.text='TAMA' then begin
        frmsummary2.ppImage1.Visible:=false;
        frmsummary2.ppImage2.Visible:=false;
        frmsummary2.ppImage3.Visible:=false;
        frmsummary2.ppImage4.Visible:=false;
        frmsummary2.ppImage5.Visible:=true;
        frmsummary2.ppImage7.Visible:=false;
        frmsummary2.ppImage6.Visible:=false;
      end else if combobox1.text='BALE' then begin
        frmsummary2.ppImage1.Visible:=false;
        frmsummary2.ppImage2.Visible:=false;
        frmsummary2.ppImage3.Visible:=false;
        frmsummary2.ppImage4.Visible:=false;
        frmsummary2.ppImage6.Visible:=true;
        frmsummary2.ppImage5.Visible:=false;
        frmsummary2.ppImage7.Visible:=false;
      end;
      frmsummary2.ppReport1.Print;
    end else showmessage('沒有符合條件的記錄!');
   end;
   end;
 end;
 end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmsummary.ppDetailBand1BeforePrint(Sender: TObject);
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
    if not fieldbyname('q1').isnull then begin
      if fieldbyname('q1').value<=query1.fieldbyname('sqty1').value then begin
        x001.Visible:=true;
        x002.Visible:=false;
      end else begin
        x001.Visible:=false;
        x002.Visible:=true;
      end;
    end else begin
      x001.Visible:=true;
      x002.Visible:=false;
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
    if not fieldbyname('q1').isnull then begin
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
    end else begin
      y001.Visible:=true;
      y002.Visible:=false;
      y003.Visible:=true;
      y004.Visible:=false;
    end;
  end;
  ttl001.Caption:=inttostr(query1.fieldbyname('col1').value*query1.fieldbyname('size1').value);
  if (query1.fieldbyname('col1').value*query1.fieldbyname('size1').value>0) then
  ttl002.Caption:=formatfloat('0.0',query1.fieldbyname('case1').value/(query1.fieldbyname('col1').value*query1.fieldbyname('size1').value))
  else ttl002.Caption:='0.0';
end;

procedure Tfrmsummary.ppSummaryBand1BeforePrint(Sender: TObject);
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
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,sum(a.major) as q1,sum(a.minor) as q2 from tbl_aql_s4 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 '
                +'and dailyaql=0 and dailyaql1=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+combobox2.text+'''';
    commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
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
    commandtext:='select distinct sum(a.major) as q1 from tbl_aql_s5 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and dailyaql=0 and dailyaql1=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+combobox2.text+'''';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
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
      commandtext:='select count(distinct cstyle) as q1,count(distinct pono) as q2,count(distinct aud) as q3 from tbl_aql_s0 a where a.hun_check=0 and a.endline=0 '
                  +'and dailyaql=0 and dailyaql1=0 and a.wk>=:x1 and a.wk<=:x2 and f_year(a.dt)=:x3';
      if combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+combobox1.text+''''
      else commandtext:=commandtext+' and a.cust=''SALL''';
      if combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+combobox2.text+'''';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
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
      commandtext:='select count(*) as q1 from tbl_aql_s0 a where a.hun_check=0 and a.endline=0 and dailyaql=0 and dailyaql1=0 and a.wk>=:x1 and a.wk<=:x2 and f_year(a.dt)=:x3 and not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
      if combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+combobox1.text+''''
      else commandtext:=commandtext+' and a.cust=''SALL''';
      if combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+combobox2.text+'''';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
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

procedure Tfrmsummary.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmsummary.SpinEdit1Change(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.CreateParam(ftinteger,'x2',ptinput);
    commandtext:='select min(date1) as dt1,max(date1) as dt2 from week52 where f_year(date1)=:x1 and wkno=:x2 and tplant>''''';
    params[0].asinteger:=spinedit1.Value;
    params[1].asinteger:=spinedit2.Value;
    open;
    if not fieldbyname('dt1').isnull then dt1:=fieldbyname('dt1').value;
    if not fieldbyname('dt2').isnull then dt2:=fieldbyname('dt2').value;
  end;
  }
  if (checkbox3.Checked or checkbox4.Checked) then begin
    if (spinedit3.value<>spinedit2.value) then
    spinedit3.Value:=spinedit2.Value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    //commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_aql_s0 where wk=:x1 and f_year(dt)=:x2';
    commandtext:='select min(date1) as dt1,max(date1) as dt2 from tplant_wk52 where yrwk=:x1 and wkyr=:x2';
    params[0].asinteger:=spinedit2.value;
    params[1].asinteger:=spinedit1.value;
    {
    if (spinedit2.value>1) and (spinedit2.value<53) then begin
      params.createparam(ftinteger,'x1',ptinput);
      params.CreateParam(ftinteger,'x2',ptinput);
      commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_aql_s0 where f_year(dt)=:x1 and f_weekofyear(dt)=:x2';
      params[0].asinteger:=spinedit1.Value;
      params[1].asinteger:=spinedit2.Value;
    end else if spinedit2.value=1 then begin
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_aql_s0 where f_year(dt)=:x1 and f_weekofyear(dt)=53 and dt>=:x2 and dt<:x3';
      params[0].asinteger:=spinedit1.Value;
      params[1].asdate:=encodedate(spinedit1.value,1,1);
      params[2].asdate:=encodedate(spinedit1.value,1,4);
    end else if spinedit2.value=53 then begin
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_aql_s0 where f_year(dt)=:x1 and ((f_weekofyear(dt)=1) or (f_weekofyear(dt)=53)) and dt>=:x2 and dt<=:x3';
      params[0].asinteger:=spinedit1.Value;
      params[1].asdate:=encodedate(spinedit1.value,12,1);
      params[2].asdate:=encodedate(spinedit1.value,12,31);
    end;
    }
    open;
    if not fieldbyname('dt1').isnull then dateedit1.date:=fieldbyname('dt1').value else dateedit1.date:=encodedate(1900,1,1);
    if not fieldbyname('dt2').isnull then dateedit2.date:=fieldbyname('dt2').value else dateedit2.date:=encodedate(1900,1,1);
    //open;
  end;
end;

procedure Tfrmsummary.BitBtn2Click(Sender: TObject);
begin
  {
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select * from sp_aql_s0_new(:x1,:x2)';
    params[0].asinteger:=spinedit1.Value;
    params[1].asstring:=combobox1.text;
    open;
    if not fieldbyname('wkno').isnull then begin
      subtitle001.Caption:='DPM ( Year '+inttostr(spinedit1.value)+' )';
      if combobox1.text='NEXT' then begin
        ppImage4.Visible:=false;
        ppImage5.Visible:=false;
        ppImage6.Visible:=false;
        ppImage8.Visible:=true;
      end else if (combobox1.text='SALL') or (combobox1.text='AFGH') then begin
        ppImage4.Visible:=true;
        ppImage5.Visible:=true;
        ppImage6.Visible:=true;
        ppImage8.Visible:=false;
      end;
      ppReport2.Print;
    end;
  end;
  }
end;

procedure Tfrmsummary.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if query4.fieldbyname('q1').value>0 then dpm001.Caption:=formatfloat('#,0',query4.fieldbyname('q2').value*1000000.0/query4.fieldbyname('q1').value)
  else dpm001.Caption:='0';
end;

procedure Tfrmsummary.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  if ppdbcalc7.Value>0 then dpm002.Caption:=formatfloat('#,0',ppdbcalc8.Value*1000000.0/ppdbcalc7.Value)
  else dpm002.Caption:='0';
end;

procedure Tfrmsummary.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport2.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmsummary.BitBtnClick(Sender: TObject);
var
  i,qty:integer;
  tqty:double;
begin
  def0001.Caption:=''; def0002.caption:=''; def0003.Caption:=''; def0004.Caption:='';
  def0005.Caption:=''; def0006.caption:=''; def0007.Caption:=''; def0008.Caption:='';
  def0009.Caption:=''; def0010.caption:=''; def0011.Caption:=''; def0012.Caption:='';
  def0013.Caption:=''; def0014.caption:='';
  qty0001.Caption:=''; qty0002.caption:=''; qty0003.Caption:=''; qty0004.Caption:='';
  qty0005.Caption:=''; qty0006.caption:=''; qty0007.Caption:=''; qty0008.Caption:='';
  qty0009.Caption:=''; qty0010.caption:=''; qty0011.Caption:=''; qty0012.Caption:='';
  qty0013.Caption:=''; qty0014.caption:=''; ttlqty001.Caption:='';
  p0001.Caption:=''; p0002.caption:=''; p0003.Caption:=''; p0004.Caption:='';
  p0005.Caption:=''; p0006.caption:=''; p0007.Caption:=''; p0008.Caption:='';
  p0009.Caption:=''; p0010.caption:=''; p0011.Caption:=''; p0012.Caption:='';
  p0013.Caption:=''; p0014.caption:=''; ttlp001.Caption:='';
  if spinedit2.value>0 then begin
    cust001.Caption:='Customer: '+combobox1.text;
    if checkbox3.Checked then sub001.Caption:='Week '+inttostr(spinedit2.value)+' Major Defect On Full Audit Performance Report Summary'
    else sub001.Caption:='Week '+inttostr(spinedit2.value)+' Major Defect on AQL Performance Report Summary';
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(distinct cstyle) as x1,count(distinct pono) as x2,sum(qty) as x3,sum(qty1) as x4 '
                  +'from tbl_aql_s0 where cust='''+combobox1.text+''' and f_year(dt)='+inttostr(spinedit1.value)+' and wk='+inttostr(spinedit2.value);
      if checkbox3.Checked then commandtext:=commandtext+' and hun_check=1' else commandtext:=commandtext+' and hun_check=0 and endline=0';
      open;
      if not fieldbyname('x1').isnull then begin
        styles001.Caption:='Styles: '+fieldbyname('x1').asstring;
        pos001.Caption:='POs: '+fieldbyname('x2').asstring;
        if checkbox3.Checked then begin
          shp001.Caption:='Sewn Qty being Audit: '+fieldbyname('x3').asstring;
          sample001.Caption:='Sample Garments: '+fieldbyname('x3').asstring;
          tqty:=fieldbyname('x3').value;
        end else begin
          shp001.Caption:='Shipment Qty being Audit: '+fieldbyname('x3').asstring;
          sample001.Caption:='Sample Garments: '+fieldbyname('x4').asstring;
          tqty:=fieldbyname('x4').value;
        end;
      end else begin
        style001.Caption:='0';
        pos001.Caption:='0';
        shp001.Caption:='0';
        sample001.Caption:='0';
        tqty:=0;
      end;
    end;
    i:=0; qty:=0;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct b.edef,sum(b.major) as x1 from tbl_aql_s0 a,tbl_aql_s4 b where a.seq=b.seq '
                  +'and a.cust='''+combobox1.text+''' and f_year(a.dt)='+inttostr(spinedit1.value)+' and a.wk='+inttostr(spinedit2.value)
                  +' and b.edef>'''' and b.major is not null';
      if checkbox3.Checked then commandtext:=commandtext+' and hun_check=1' else commandtext:=commandtext+' and hun_check=0 and endline=0 and dailyaql=0 and dailyaql1=0';
      commandtext:=commandtext+' group by b.edef order by x1 desc,b.edef';
      open;
      first;
      while not eof do begin
        i:=i+1;
        qty:=qty+fieldbyname('x1').Value;
        if i=1 then begin
          def0001.Caption:=fieldbyname('edef').value;
          qty0001.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0001.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=2 then begin
          def0002.Caption:=fieldbyname('edef').value;
          qty0002.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0002.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=3 then begin
          def0003.Caption:=fieldbyname('edef').value;
          qty0003.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0003.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=4 then begin
          def0004.Caption:=fieldbyname('edef').value;
          qty0004.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0004.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=5 then begin
          def0005.Caption:=fieldbyname('edef').value;
          qty0005.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0005.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=6 then begin
          def0006.Caption:=fieldbyname('edef').value;
          qty0006.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0006.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=7 then begin
          def0007.Caption:=fieldbyname('edef').value;
          qty0007.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0007.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=8 then begin
          def0008.Caption:=fieldbyname('edef').value;
          qty0008.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0008.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=9 then begin
          def0009.Caption:=fieldbyname('edef').value;
          qty0009.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0009.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=10 then begin
          def0010.Caption:=fieldbyname('edef').value;
          qty0010.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0010.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=11 then begin
          def0011.Caption:=fieldbyname('edef').value;
          qty0011.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0011.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=12 then begin
          def0012.Caption:=fieldbyname('edef').value;
          qty0012.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0012.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=13 then begin
          def0013.Caption:=fieldbyname('edef').value;
          qty0013.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0013.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end else if i=14 then begin
          def0014.Caption:=fieldbyname('edef').value;
          qty0014.Caption:=fieldbyname('x1').asstring;
          if tqty>0 then p0014.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/tqty);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    ttlqty001.Caption:=inttostr(qty);
    if tqty>0 then ttlp001.Caption:=formatfloat('0.00',qty*100.00/tqty);
    ppReport3.Print;
  end;
end;

procedure Tfrmsummary.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport3.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmsummary.BitBtn4Click(Sender: TObject);
begin
  if frmdefectsummary=nil then frmdefectsummary:=tfrmdefectsummary.create(nil);
  //frmdefectsummary.ComboBox1.Text:=combobox1.text;
  frmdefectsummary.SpinEdit1.Value:=spinedit1.value;
  frmdefectsummary.SpinEdit2.Value:=spinedit2.value;
  frmdefectsummary.SpinEdit5.Value:=spinedit1.value;
  frmdefectsummary.SpinEdit6.Value:=spinedit2.value;
  frmdefectsummary.SpinEdit7.Value:=spinedit1.value;
  frmdefectsummary.SpinEdit8.Value:=spinedit3.value;
  frmdefectsummary.SpinEdit3.Value:=monthof(date);
  if spinedit3.Value in [1,2,3] then
  frmdefectsummary.SpinEdit4.Value:=1
  else if spinedit3.value in [4,5,6] then
  frmdefectsummary.spinedit4.value:=2
  else if spinedit3.Value in [7,8,9] then
  frmdefectsummary.spinedit4.value:=3
  else frmdefectsummary.spinedit4.value:=4;
  frmdefectsummary.Show;
end;

procedure Tfrmsummary.BitBtn5Click(Sender: TObject);
begin
  if frmaqlnotepad=nil then frmaqlnotepad:=tfrmaqlnotepad.create(nil);
  with query2 do begin
    close;
    params.clear;
    if checkbox3.checked then
    commandtext:='select * from tbl_aql_marks_wk where tplant='''+combobox2.text+''' and cust='''+combobox1.text+''' and hun_check<>0 and ws='''+combobox3.text+''' and yr='+inttostr(spinedit1.value)+' and wk='+inttostr(spinedit2.value)
    else if checkbox4.checked then
    commandtext:='select * from tbl_aql_marks_wk where tplant='''+combobox2.text+''' and cust='''+combobox1.text+''' and endline<>0 and ws='''+combobox3.text+''' and yr='+inttostr(spinedit1.value)+' and wk='+inttostr(spinedit2.value)
    else if checkbox2.checked then
    commandtext:='select * from tbl_aql_marks_wk where tplant='''+combobox2.text+''' and cust='''+combobox1.text+''' and dailyaql<>0 and ws='''+combobox3.text+''' and yr='+inttostr(spinedit1.value)+' and wk='+inttostr(spinedit2.value);
    open;
    if fieldbyname('cust').isnull then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        if checkbox3.checked then
        commandtext:='insert into tbl_aql_marks_wk(cust,yr,wk,tplant,dt,ws,hun_check,endline,dailyaql) values(:x1,:x2,:x3,:x4,:x5,:x6,1,0,0)'
        else if checkbox4.checked then
        commandtext:='insert into tbl_aql_marks_wk(cust,yr,wk,tplant,dt,ws,hun_check,endline,dailyaql) values(:x1,:x2,:x3,:x4,:x5,:x6,0,1,0)'
        else if checkbox2.checked then
        commandtext:='insert into tbl_aql_marks_wk(cust,yr,wk,tplant,dt,ws,hun_check,endline,dailyaql) values(:x1,:x2,:x3,:x4,:x5,:x6,0,0,1)';
        params[0].asstring:=combobox1.text;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=spinedit2.value;
        params[3].asstring:=combobox2.text;
        params[4].asdate:=date;
        params[5].asstring:=combobox3.text;
        execute;
      end;
    end;
  end;

  with frmaqlnotepad.query1 do begin
    close;
    params.clear;
    //params.createparam(ftboolean,'x1',ptinput);
    //params.createparam(ftboolean,'x2',ptinput);
    //params.createparam(ftboolean,'x3',ptinput);
    if checkbox3.checked then
    commandtext:='select * from tbl_aql_marks_wk where tplant='''+combobox2.text+''' and cust='''+combobox1.text+''' and hun_check<>0 and ws='''+combobox3.text+''' and yr='+inttostr(spinedit1.value)+' and wk='+inttostr(spinedit2.value)
    else if checkbox4.checked then
    commandtext:='select * from tbl_aql_marks_wk where tplant='''+combobox2.text+''' and cust='''+combobox1.text+''' and endline<>0 and ws='''+combobox3.text+''' and yr='+inttostr(spinedit1.value)+' and wk='+inttostr(spinedit2.value)
    else if checkbox2.checked then
    commandtext:='select * from tbl_aql_marks_wk where tplant='''+combobox2.text+''' and cust='''+combobox1.text+''' and dailyaql<>0 and ws='''+combobox3.text+''' and yr='+inttostr(spinedit1.value)+' and wk='+inttostr(spinedit2.value);
    //params[0].asboolean:=checkbox3.Checked;
    //params[1].asboolean:=checkbox4.Checked;
    //params[2].asboolean:=checkbox2.Checked;
    open;
    {
    if fieldbyname('cust').isnull then begin
      append;
      fieldbyname('cust').value:=combobox1.text;
      fieldbyname('yr').value:=spinedit1.value;
      fieldbyname('wk').value:=spinedit2.value;
      fieldbyname('hun_check').value:=checkbox3.Checked;
      fieldbyname('endline').value:=checkbox4.Checked;
      fieldbyname('dailyaql').value:=checkbox2.Checked;
      fieldbyname('tplant').value:=combobox2.text;
      fieldbyname('dt').value:=date;
      fieldbyname('ws').value:=combobox3.text;
    end;
    }
  end;
  frmaqlnotepad.Show;
end;

procedure Tfrmsummary.CheckBox4Click(Sender: TObject);
begin
  if checkbox4.Checked then begin
    edit1.Enabled:=true;
    checkbox3.Checked:=false;
    checkbox2.Checked:=false;
    checkbox5.Checked:=false;
    spinedit3.value:=spinedit2.value;
    combobox4.Enabled:=false;
    label10.Visible:=false;
    combobox5.Visible:=false;
  end else begin
    edit1.Enabled:=false;
    edit1.text:='';
  end;
end;

procedure Tfrmsummary.CheckBox3Click(Sender: TObject);
begin
  if checkbox3.Checked then begin
    checkbox4.Checked:=false;
    checkbox2.Checked:=false;
    checkbox5.Checked:=false;
    edit1.Enabled:=false;
    edit1.Text:='';
    combobox4.Enabled:=false;
    spinedit3.value:=spinedit2.value;
    if combobox2.text='GG' then begin
      if label10.Visible=false then begin
        label10.Visible:=true;
        combobox5.Visible:=true;
      end;
    end;
  end else begin
    label10.Visible:=false;
    combobox5.Visible:=false;
  end;
end;

procedure Tfrmsummary.ppGroupFooterBand1BeforePrint(Sender: TObject);
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
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,sum(a.major) as q1,sum(a.minor) as q2 from tbl_aql_s4 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and dailyaql=0 and dailyaql1=0 '
                +'and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+combobox2.text+'''';
    commandtext:=commandtext+' and b.ws='''+query1.fieldbyname('ws').value+'''';
    commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
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
    commandtext:='select distinct sum(a.major) as q1 from tbl_aql_s5 a,tbl_aql_s0 b where b.hun_check=0 and b.endline=0 and dailyaql=0 and dailyaql1=0 and a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+combobox2.text+'''';
    commandtext:=commandtext+' and b.ws='''+query1.fieldbyname('ws').value+'''';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
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
      commandtext:='select count(distinct cstyle) as q1,count(distinct pono) as q2,count(distinct aud) as q3 from tbl_aql_s0 a where a.hun_check=0 and a.endline=0 and dailyaql=0 and dailyaql1=0 and a.wk>=:x1 and a.wk<=:x2 and f_year(a.dt)=:x3';
      if combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+combobox1.text+''''
      else commandtext:=commandtext+' and a.cust=''SALL''';
      if combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+combobox2.text+'''';
      commandtext:=commandtext+' and a.ws='''+query1.fieldbyname('ws').value+'''';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
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
      commandtext:='select count(*) as q1 from tbl_aql_s0 a where a.hun_check=0 and a.endline=0 and dailyaql=0 and dailyaql1=0 and a.wk>=:x1 and a.wk<=:x2 and f_year(a.dt)=:x3 and not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
      if combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+combobox1.text+''''
      else commandtext:=commandtext+' and a.cust=''SALL''';
      if combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+combobox2.text+'''';
      commandtext:=commandtext+' and a.ws='''+query1.fieldbyname('ws').value+'''';
      params[0].asinteger:=spinedit2.value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.value;
      open;
      if not fieldbyname('q1').isnull then begin
        x1:=x1+fieldbyname('q1').value;
        x2:=x2+fieldbyname('q1').value;
      end;
    end;

    x03.Caption:=inttostr(x1);
    x04.Caption:=inttostr(ppdbcalc1.Value-x1);

    acc01.Caption:=inttostr(x1);//po001.Caption;
    rej01.Caption:=x04.Caption;

    if ppdbcalc16.Value>0 then
    fpy01.Caption:=formatfloat('0.00%',x1*100.00/ppdbcalc16.Value)
    else fpy01.Caption:='0.00%';
end;

procedure Tfrmsummary.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked then begin
    checkbox3.Checked:=false;
    checkbox4.Checked:=false;
    combobox4.Enabled:=true;
    checkbox5.Checked:=false;
    label10.Visible:=false;
    combobox5.Visible:=false;
  end else combobox4.Enabled:=false;
end;

procedure Tfrmsummary.CheckBox5Click(Sender: TObject);
begin
  if checkbox5.Checked then begin
    checkbox3.Checked:=false;
    checkbox4.Checked:=false;
    combobox4.Enabled:=false;
    checkbox2.Checked:=false;
    label10.Visible:=false;
    combobox5.Visible:=false;
  end;
end;

procedure Tfrmsummary.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text<>'GG' then begin
    label10.Visible:=false;
    combobox5.Visible:=false;
  end else begin
    if checkbox3.Checked then begin
      label10.Visible:=true;
      combobox5.Visible:=true;
    end else begin
      label10.Visible:=false;
      combobox5.Visible:=false;
    end;
  end
end;

end.
