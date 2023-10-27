unit lineeffformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, ppMemo, ppCtrls, ppBands,
  ppClass, ppReport, ppStrtch, ppSubRpt, myChkBox, ppVar, ppPrnabl,
  ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  ppViewr, Spin, DateUtils, Series, cxControls, cxSSheet, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  ppParameter;

type
  Tfrmlineeff = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLabel3: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine3: TppLine;
    ppLine23: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel20: TppLabel;
    fty001: TppLabel;
    shop001: TppLabel;
    ppLabel24: TppLabel;
    date001: TppLabel;
    ppLine30: TppLine;
    ppLabel67: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel72: TppLabel;
    ppLabel75: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLine8: TppLine;
    ppLabel85: TppLabel;
    ppLine9: TppLine;
    ppLabel88: TppLabel;
    ppLine34: TppLine;
    ppLabel90: TppLabel;
    ppLine35: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLabel14: TppLabel;
    ppLine20: TppLine;
    ppLabel28: TppLabel;
    ppLabel71: TppLabel;
    ppLabel13: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel73: TppLabel;
    ppLabel98: TppLabel;
    ppLine21: TppLine;
    ppLabel99: TppLabel;
    ppLine36: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape10: TppShape;
    ppShape8: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape13: TppShape;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText25: TppDBText;
    ppDBText31: TppDBText;
    ppDBText23: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppLabel15: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText32: TppDBText;
    ppDBText34: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppShape14: TppShape;
    ppDBText1: TppDBText;
    eff2002: TppLabel;
    date1001: TppLabel;
    ppDBText2: TppDBText;
    dbxl01: TppLabel;
    pcflag1: TppLabel;
    scqty01: TppLabel;
    bal001: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    total001: TppLabel;
    ppLabel89: TppLabel;
    ppLabel93: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel6: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    ppDBCalc19: TppDBCalc;
    dbxl02: TppLabel;
    lstr01: TppLabel;
    trs01: TppLabel;
    sjrs101: TppLabel;
    sjrs201: TppLabel;
    sjrs01: TppLabel;
    sjyc01: TppLabel;
    ppLabel16: TppLabel;
    date002: TppLabel;
    BitBtn3: TBitBtn;
    Query3: TClientDataSet;
    xh1: TRadioButton;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    xh2: TRadioButton;
    Label5: TLabel;
    Edit1: TSpinEdit;
    Edit2: TSpinEdit;
    Label6: TLabel;
    Edit3: TSpinEdit;
    Edit4: TSpinEdit;
    xh3: TRadioButton;
    Label7: TLabel;
    Edit5: TSpinEdit;
    Edit6: TSpinEdit;
    Label8: TLabel;
    Edit7: TSpinEdit;
    Edit8: TSpinEdit;
    Label9: TLabel;
    ComboBox3: TComboBox;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    ComboBox4: TComboBox;
    BitBtn4: TBitBtn;
    sSheet1: TcxSpreadSheet;
    SaveDialog1: TSaveDialog;
    Label12: TLabel;
    Edit10: TEdit;
    xh4: TRadioButton;
    GroupBox1: TGroupBox;
    ComboBox5: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    ComboBox6: TComboBox;
    xh5: TCheckBox;
    xh6: TCheckBox;
    sah001: TppLabel;
    sah002: TppLabel;
    Label15: TLabel;
    Edit11: TEdit;
    sumdiff01: TppLabel;
    sumaqty1: TppLabel;
    sumaqty: TppLabel;
    chk1: TCheckBox;
    subtitle001: TppLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure xh3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure calc_wkno1(const TM: TDateTime);
    procedure calc_wkno2(const TM: TDateTime);
  public
    { Public declarations }
    procedure printeffchart(const fmt: string);
    procedure Previewclick;
  end;

var
  frmlineeff: Tfrmlineeff;

implementation

uses mainformu, analysisformu, salleffformu, salleff1formu, effchartformu,
  effchart1formu, lineeffchartformu, lineeff_1formu;

{$R *.dfm}

procedure Tfrmlineeff.PreviewClick;
var
  dt1,dt2:tdate;
begin
  screen.Cursor:=crSQLWait;
  try
  if xh1.Checked then begin
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date;
  end else if xh2.Checked then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as dt1 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit1.Value;
      params[1].asinteger:=edit2.value;
      open;
      dt1:=fieldbyname('dt1').value;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit3.Value;
      params[1].asinteger:=edit4.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end else if xh3.Checked then begin
    dt1:=encodedate(edit5.value,edit6.value,1);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and f_month(date1)=:x2';
      params[0].asinteger:=edit7.Value;
      params[1].asinteger:=edit8.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='update line_shjs set csect=0 where csect is null and dt1>=:x1 and dt1<=:x2';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      Execute;
    end;
  if (combobox1.text>'') or (combobox2.text>'') or (edit10.text>'') then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select * from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox3.text>'' then commandtext:=commandtext+' and substr(j_no,1,4)='''+combobox3.text+'''';
      if edit9.text>'' then commandtext:=commandtext+' and cstyle like '''+edit9.text+'%''';
      if edit10.text>'' then commandtext:=commandtext+' and j_no like '''+edit10.text+'%''';
      if combobox4.text>'' then commandtext:=commandtext+' and substr(flag6,1,1)='''+combobox4.text+'''';
      if edit11.text>'' then commandtext:=commandtext+' and j2_job='''+edit11.text+'''';
      commandtext:=commandtext+' order by tplant,tshop,pline,dt1';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      open;
    end;
  end;
  if query1.Recordcount>0 then begin
    fty001.Caption:=combobox1.text;
    shop001.Caption:=combobox2.Text;
    date001.Caption:=formatdatetime('yyyy/MM/dd',dt1);
    date002.Caption:=formatdatetime('yyyy/MM/dd',dt2);
    if chk1.Checked then begin
      subtitle001.Caption:='Assembly Line';
      ppdbtext31.DataField:='CSECT_SP';
      ppdbcalc11.DataField:='CSECT_SP';
      ppdbtext20.DataField:='AQTY_SP';
      ppdbcalc5.DataField:='AQTY_SP';
      ppdbtext21.DataField:='AQTY1_SP';
      ppdbtext22.DataField:='DIFF_SP';
      ppdbtext2.DataField:='CEOT_SP';
      ppdbcalc19.DataField:='CEOT_SP';
    end else begin
      subtitle001.Caption:='End Phase Ws ';
      ppdbtext31.DataField:='CSECT';
      ppdbcalc11.DataField:='CSECT';
      ppdbtext20.DataField:='AQTY';
      ppdbcalc5.DataField:='AQTY';
      ppdbtext21.DataField:='AQTY1';
      ppdbtext22.DataField:='DIFF';
      ppdbtext2.DataField:='CEOT';
      ppdbcalc19.DataField:='CEOT';
    end;

    ppReport1.Print;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmlineeff.ppDetailBand1BeforePrint(Sender: TObject);
var
  pc001:string;
  sc001,ba001:double;
begin
  if chk1.Checked then begin
  if query1.fieldbyname('eff2_sp').value>0 then eff2002.Caption:=formatfloat('0.00',query1.fieldbyname('eff2_sp').value)
  else eff2002.Caption:='--';
  end else begin
  if query1.fieldbyname('eff2').value>0 then eff2002.Caption:=formatfloat('0.00',query1.fieldbyname('eff2').value)
  else eff2002.Caption:='--';
  end;
  if not query1.fieldbyname('date1').isnull then date1001.Caption:=formatdatetime('yy/MM/dd',query1.fieldbyname('date1').value)
  else date1001.Caption:='--';

  if chk1.Checked then begin
  if query1.fieldbyname('dbxl_sp').value=0 then dbxl01.Caption:='--'
  else dbxl01.caption:=formatfloat('0.00',query1.fieldbyname('dbxl_sp').value);
  end else begin
  if query1.fieldbyname('dbxl').value=0 then dbxl01.Caption:='--'
  else dbxl01.caption:=formatfloat('0.00',query1.fieldbyname('dbxl').value);
  end;

  with Query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select lbact from tblline where pline=:x1';
    params[0].asstring:=Query1.fieldbyname('pline').value;
    open;
    if fieldbyname('lbact').value=false then ppDBText29.Font.Style:=[fsBold]
    else ppDBText29.Font.Style:=[];
  end;
  //pcflag1 & scqty1 & bal001
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cfmd from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=Query1.fieldbyname('pline').value;
    params[1].asinteger:=Query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cfmd').isnull then pc001:='0'
    else if fieldbyname('cfmd').value=true then pc001:='1'
    else pc001:='0';
 end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(pqty) as q1,sum(tqty) as q2 from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=Query1.fieldbyname('pline').value;
    params[1].asinteger:=Query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then begin
      if pc001='0' then sc001:=fieldbyname('q1').value
      else sc001:=fieldbyname('q2').value;
    end else sc001:=query1.fieldbyname('scqty').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(diff) as q3,sum(diff_sp) as q30 from line_shjs where pline=:x1 and seq=:x2 and dt1<=:x3 and flag=''0''';
    params[0].asstring:=Query1.fieldbyname('pline').value;
    params[1].asinteger:=Query1.fieldbyname('seq').value;
    params[2].asdate:=Query1.fieldbyname('dt1').value;
    open;
    if chk1.Checked then begin
    if not fieldbyname('q30').isnull then ba001:=fieldbyname('q30').value
    else ba001:=0;
    end else begin
    if not fieldbyname('q3').isnull then ba001:=fieldbyname('q3').value
    else ba001:=0;
    end;
  end;
  if pc001='0' then pcflag1.Caption:='p'
  else pcflag1.Caption:='C';
  scqty01.Caption:=formatfloat('#0',sc001);
  bal001.Caption:=formatfloat('#0',sc001-ba001);
end;

procedure Tfrmlineeff.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    if chk1.Checked then
    commandtext:='select sum(eff1*csect_sp)/sum(csect_sp) as s1,sum(eff2_sp*csect_sp)/sum(csect_sp) as s2 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and csect_sp>0'
    else
    commandtext:='select sum(eff1*csect)/sum(csect) as s1,sum(eff2*csect)/sum(csect) as s2 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and csect>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and substr(j_no,1,4)='''+combobox3.text+'''';
    if edit9.text>'' then commandtext:=commandtext+' and cstyle like '''+edit9.text+'%''';
    if combobox4.text>'' then commandtext:=commandtext+' and substr(flag6,1,1)='''+combobox4.text+'''';
    if edit10.text>'' then commandtext:=commandtext+' and j_no like '''+edit10.text+'%''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s1').isnull then x002.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else x002.Caption:='N.A.';
    if not fieldbyname('s2').isnull then x003.Caption:=formatfloat('0.00',fieldbyname('s2').value)
    else x003.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    if chk1.Checked then
    commandtext:='select sum(lstr*0.5*(csect_sp+ceot_sp))/sum(xjs*(csect_sp+ceot_sp)) as s1,sum((csect_sp+ceot_sp)*0.5*sjrs)/sum(diff_sp) as s2,sum(lstr*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as x01 '
                +'from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and csect_sp+ceot_sp>0'
    else
    commandtext:='select sum(lstr*0.5*(csect+ceot))/sum(xjs*(csect+ceot)) as s1,sum((csect+ceot)*0.5*sjrs)/sum(diff) as s2,sum(lstr*(csect+ceot))/sum(csect+ceot) as x01 '
                +'from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and csect+ceot>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and substr(j_no,1,4)='''+combobox3.text+'''';
    if edit9.text>'' then commandtext:=commandtext+' and cstyle like '''+edit9.text+'%''';
    if combobox4.text>'' then commandtext:=commandtext+' and substr(flag6,1,1)='''+combobox4.text+'''';
    if edit10.text>'' then commandtext:=commandtext+' and j_no like '''+edit10.text+'%''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s1').isnull then sah001.Caption:='Def SAH: '+formatfloat('0.0000',fieldbyname('s1').value)
    else sah001.Caption:='Def SAH: ';
    if not fieldbyname('s2').isnull then sah002.Caption:='Actual SAH:  '+formatfloat('0.0000',fieldbyname('s2').Value)
    else sah002.Caption:='Actual SAH: ';
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    if chk1.Checked then
    commandtext:='select sum(aqty_sp) as s1,sum(aqty1_sp) as s2,sum(diff_sp) as s3 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and diff_sp>=1.0'
    else
    commandtext:='select sum(aqty) as s1,sum(aqty1) as s2,sum(diff) as s3 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and diff>=1.0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and substr(j_no,1,4)='''+combobox3.text+'''';
    if edit9.text>'' then commandtext:=commandtext+' and cstyle like '''+edit9.text+'%''';
    if combobox4.text>'' then commandtext:=commandtext+' and substr(flag6,1,1)='''+combobox4.text+'''';
    if edit10.text>'' then commandtext:=commandtext+' and j_no like '''+edit10.text+'%''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    sumaqty.Caption:=formatfloat('#0',fieldbyname('s1').value);
    sumaqty1.Caption:=formatfloat('#0',fieldbyname('s2').value);
    sumdiff01.Caption:=formatfloat('#0',fieldbyname('s3').value);
  end;
end;

procedure Tfrmlineeff.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlineeff.FormShow(Sender: TObject);
begin
  combobox2.items.clear;
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where lactive=1 and tshop is not null';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct substr(j_no,1,4) as cust from tblshedule where yzh=0';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
  dateedit1.date:=date;
  dateedit2.date:=date;
  edit1.Value:=currentyear;
  edit2.Value:=weekof(date);
  edit3.Value:=yearof(date);
  edit4.Value:=weekof(date);
  edit5.value:=yearof(date);
  edit6.Value:=monthof(date);
  edit7.Value:=yearof(date);
  edit8.Value:=monthof(date);
  xh1.Checked:=true;
  dateedit1.Enabled:=true;
  dateedit2.Enabled:=true;
  edit1.Enabled:=false;
  edit2.Enabled:=false;
  edit3.Enabled:=false;
  edit4.Enabled:=false;
  edit5.Enabled:=false;
  edit6.Enabled:=false;
  edit7.Enabled:=false;
  edit8.Enabled:=false;
end;

procedure Tfrmlineeff.BitBtn1Click(Sender: TObject);
begin
  if frmlineeff_1=nil then frmlineeff_1:=tfrmlineeff_1.Create(nil);
  frmlineeff_1.Show;
end;

procedure Tfrmlineeff.BitBtn2Click(Sender: TObject);
begin
  if frmlineeffchart=nil then frmlineeffchart:=tfrmlineeffchart.create(nil);
  frmlineeffchart.show;
end;

procedure Tfrmlineeff.calc_wkno1(const TM: TDateTime);
var
  i1:integer;
  s1:string;
begin
  i1:=0;
  frmeffchart.wkno01.Caption:='';
  frmeffchart.wkno02.Caption:='';
  frmeffchart.wkno03.Caption:='';
  frmeffchart.wkno04.Caption:='';
  frmeffchart.wkno05.Caption:='';
  frmeffchart.wkno06.Caption:='';
  frmeffchart.wkno07.Caption:='';
  frmeffchart.wkno08.Caption:='';
  frmeffchart.wkno09.Caption:='';
  frmeffchart.wkno10.Caption:='';
  frmeffchart.wkno11.Caption:='';
  frmeffchart.wkno12.Caption:='';
  frmeffchart.wkno13.Caption:='';
  frmeffchart.wk01.Caption:='';
  frmeffchart.wk02.Caption:='';
  frmeffchart.wk03.Caption:='';
  frmeffchart.wk04.Caption:='';
  frmeffchart.wk05.Caption:='';
  frmeffchart.wk06.Caption:='';
  frmeffchart.wk07.Caption:='';
  frmeffchart.wk08.Caption:='';
  frmeffchart.wk09.Caption:='';
  frmeffchart.wk10.Caption:='';
  frmeffchart.wk11.Caption:='';
  frmeffchart.wk12.Caption:='';
  frmeffchart.wk13.Caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct dt1,min(seq) as sq from line_shjs_eff0 where tm=:x1 group by dt1 order by sq,dt1';
    params[0].asdatetime:=tm;
    open;
    first;
    while not eof do begin
      s1:=fieldbyname('dt1').value;
      i1:=i1+1;
      if i1=1 then begin
        frmeffchart.wkno01.Caption:=s1;
        frmeffchart.wk01.Caption:=s1;
      end else if i1=2 then begin
        frmeffchart.wkno02.Caption:=s1;
        frmeffchart.wk02.Caption:=s1;
      end else if i1=3 then begin
        frmeffchart.wkno03.Caption:=s1;
        frmeffchart.wk03.Caption:=s1;
      end else if i1=4 then begin
        frmeffchart.wkno04.Caption:=s1;
        frmeffchart.wk04.Caption:=s1;
      end else if i1=5 then begin
        frmeffchart.wkno05.Caption:=s1;
        frmeffchart.wk05.Caption:=s1;
      end else if i1=6 then begin
        frmeffchart.wkno06.Caption:=s1;
        frmeffchart.wk06.Caption:=s1;
      end else if i1=7 then begin
        frmeffchart.wkno07.Caption:=s1;
        frmeffchart.wk07.Caption:=s1;
      end else if i1=8 then begin
        frmeffchart.wkno08.Caption:=s1;
        frmeffchart.wk08.Caption:=s1;
      end else if i1=9 then begin
        frmeffchart.wkno09.Caption:=s1;
        frmeffchart.wk09.Caption:=s1;
      end else if i1=10 then begin
        frmeffchart.wkno10.Caption:=s1;
        frmeffchart.wk10.Caption:=s1;
      end else if i1=11 then begin
        frmeffchart.wkno11.Caption:=s1;
        frmeffchart.wk11.Caption:=s1;
      end else if i1=12 then begin
        frmeffchart.wkno12.Caption:=s1;
        frmeffchart.wk12.Caption:=s1;
      end else if i1=13 then begin
        frmeffchart.wkno13.Caption:=s1;
        frmeffchart.wk13.Caption:=s1;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmlineeff.calc_wkno2(const TM: TDateTime);
var
  i1:integer;
  s1:string;
begin
  i1:=0;
  frmeffchart1.wkno01.Caption:='';
  frmeffchart1.wkno02.Caption:='';
  frmeffchart1.wkno03.Caption:='';
  frmeffchart1.wkno04.Caption:='';
  frmeffchart1.wkno05.Caption:='';
  frmeffchart1.wkno06.Caption:='';
  frmeffchart1.wkno07.Caption:='';
  frmeffchart1.wkno08.Caption:='';
  frmeffchart1.wk01.Caption:='';
  frmeffchart1.wk02.Caption:='';
  frmeffchart1.wk03.Caption:='';
  frmeffchart1.wk04.Caption:='';
  frmeffchart1.wk05.Caption:='';
  frmeffchart1.wk06.Caption:='';
  frmeffchart1.wk07.Caption:='';
  frmeffchart1.wk08.Caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct dt1,min(seq) as sq from line_shjs_eff0 where tm=:x1 group by dt1 order by sq,dt1';
    params[0].asdatetime:=tm;
    open;
    first;
    while not eof do begin
      s1:=fieldbyname('dt1').value;
      i1:=i1+1;
      if i1=1 then begin
        frmeffchart1.wkno01.Caption:=s1;
        frmeffchart1.wk01.Caption:=s1;
      end else if i1=2 then begin
        frmeffchart1.wkno02.Caption:=s1;
        frmeffchart1.wk02.Caption:=s1;
      end else if i1=3 then begin
        frmeffchart1.wkno03.Caption:=s1;
        frmeffchart1.wk03.Caption:=s1;
      end else if i1=4 then begin
        frmeffchart1.wkno04.Caption:=s1;
        frmeffchart1.wk04.Caption:=s1;
      end else if i1=5 then begin
        frmeffchart1.wkno05.Caption:=s1;
        frmeffchart1.wk05.Caption:=s1;
      end else if i1=6 then begin
        frmeffchart1.wkno06.Caption:=s1;
        frmeffchart1.wk06.Caption:=s1;
      end else if i1=7 then begin
        frmeffchart1.wkno07.Caption:=s1;
        frmeffchart1.wk07.Caption:=s1;
      end else if i1=8 then begin
        frmeffchart1.wkno08.Caption:=s1;
        frmeffchart1.wk08.Caption:=s1;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmlineeff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmeffchart1<>nil then frmeffchart1:=nil;
  action:=cafree;
  frmlineeff:=nil;
end;

procedure Tfrmlineeff.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    dateedit1.Enabled:=true;
    dateedit2.Enabled:=true;
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    edit5.Enabled:=false;
    edit6.Enabled:=false;
    edit7.Enabled:=false;
    edit8.Enabled:=false;
  end;
end;

procedure Tfrmlineeff.xh2Click(Sender: TObject);
begin
  if xh2.Checked then begin
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    edit1.Enabled:=true;
    edit2.Enabled:=true;
    edit3.Enabled:=true;
    edit4.Enabled:=true;
    edit5.Enabled:=false;
    edit6.Enabled:=false;
    edit7.Enabled:=false;
    edit8.Enabled:=false;
  end;
end;

procedure Tfrmlineeff.xh3Click(Sender: TObject);
begin
  if xh3.Checked then begin
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    edit5.Enabled:=true;
    edit6.Enabled:=true;
    edit7.Enabled:=true;
    edit8.Enabled:=true;
  end;
end;

procedure Tfrmlineeff.BitBtn3Click(Sender: TObject);
var
  cobject: TcxSSCellObject;
  dt1,dt2:tdate;
  i:integer;
begin
  screen.cursor:=crHourglass;
  try
  if xh1.Checked then begin
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date;
  end else if xh2.Checked then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as dt1 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit1.Value;
      params[1].asinteger:=edit2.value;
      open;
      dt1:=fieldbyname('dt1').value;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit3.Value;
      params[1].asinteger:=edit4.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end else if xh3.Checked then begin
    dt1:=encodedate(edit5.value,edit6.value,1);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and f_month(date1)=:x2';
      params[0].asinteger:=edit7.Value;
      params[1].asinteger:=edit8.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end;
  savedialog1.InitialDir:=extractfiledir(application.ExeName);
  sSheet1.LoadFromFile(extractfilepath(application.ExeName)+'LWPM_IE_EFF.xls');
  cobject:=sSheet1.Sheet.GetCellObject(66,2);
  cobject.text:='Clr Code';
  i:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and diff>0 and csect+ceot>=0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and substr(j_no,1,4)='''+combobox3.text+'''';
    if edit9.text>'' then commandtext:=commandtext+' and cstyle like '''+edit9.text+'%''';
    if edit10.text>'' then commandtext:=commandtext+' and j_no like '''+edit10.text+'%''';
    if combobox4.text>'' then commandtext:=commandtext+' and substr(flag6,1,1)='''+combobox4.text+'''';
    commandtext:=commandtext+' order by tplant,tshop,pline,dt1';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      cobject:=sSheet1.Sheet.GetCellObject(0,4+i);
      cobject.text:=formatdatetime('yyyy-MM-dd',fieldbyname('dt1').value);
      cobject:=sSheet1.Sheet.GetCellObject(1,4+i);
      if not fieldbyname('tshop').isnull then
      cobject.text:=fieldbyname('tshop').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(2,4+i);
      if not fieldbyname('pline').isnull then
      cobject.text:=fieldbyname('pline').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(3,4+i);
      if not fieldbyname('j_no').isnull then
      cobject.text:=copy(fieldbyname('j_no').value,1,4)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(4,4+i);
      if not fieldbyname('j_no').isnull then
      cobject.text:=fieldbyname('j_no').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(5,4+i);
      if not fieldbyname('flag6').isnull then begin
        if copy(fieldbyname('flag6').Value,1,1)='B' then
          cobject.text:='bra'
        else if copy(fieldbyname('flag6').value,1,1)='K' then
          cobject.Text:='brief'
        else cobject.Text:='other';
      end else cobject.Text:='other';
      cobject:=sSheet1.Sheet.GetCellObject(6,4+i);
      if not fieldbyname('flag6').isnull then
      cobject.text:=fieldbyname('flag6').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(7,4+i);
      if not fieldbyname('cstyle').isnull then begin
        if (copy(fieldbyname('cstyle').value,length(fieldbyname('cstyle').value)-1,2)>='E1') and (copy(fieldbyname('cstyle').value,length(fieldbyname('cstyle').value)-1,2)<='E9') then
          cobject.text:=''''+fieldbyname('cstyle').value
        else cobject.text:=fieldbyname('cstyle').asstring;
      end else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(8,4+i);
      if (not fieldbyname('j2_job').isnull) and (not fieldbyname('rwo').isnull) then
      cobject.text:=fieldbyname('j2_job').value+'-'+fieldbyname('rwo').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(9,4+i);
      if fieldbyname('xjs').value>0 then
      cobject.text:=formatfloat('0.0000',fieldbyname('lstr').value/2.0/fieldbyname('xjs').value)
      else cobject.Text:='0.0000';
      cobject:=sSheet1.Sheet.GetCellObject(10,4+i);
      if not fieldbyname('xjs').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('xjs').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(11,4+i);
      if not fieldbyname('psect').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('psect').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(12,4+i);
      if not fieldbyname('csect').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('csect').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(13,4+i);
      if not fieldbyname('lstr').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('lstr').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(14,4+i);
      if not fieldbyname('trs').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('trs').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(15,4+i);
      //if not fieldbyname('sjrs1').isnull then begin
        //if fieldbyname('sjrs1').value>0 then
        cobject.text:=formatfloat('0.00',fieldbyname('sjrs1').value);
        //else cobject.Text:='';
      //end else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(16,4+i);
      //if not fieldbyname('sjrs2').isnull then begin
        //if fieldbyname('sjrs2').value>0 then
        cobject.text:=formatfloat('0.00',fieldbyname('sjrs2').value);
        //else cobject.text:='';
      //end else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(17,4+i);
      //if not fieldbyname('sjrs').isnull then begin
      //  if fieldbyname('sjrs').value>0 then
        cobject.text:=formatfloat('0.00',fieldbyname('sjrs').value);
      //  else cobject.text:='';
      //end else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(18,4+i);
      //if not fieldbyname('sjyc').isnull then begin
      //  if fieldbyname('sjyc').isnull then
        cobject.text:=formatfloat('0.00',fieldbyname('sjyc').value);
      //  else cobject.text:='';
      //end else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(19,4+i);
      if not fieldbyname('pqty').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('pqty').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(20,4+i);
      if not fieldbyname('aqty').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('aqty').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(21,4+i);
      if not fieldbyname('aqty1').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('aqty1').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(22,4+i);
      if not fieldbyname('diff').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('diff').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(23,4+i);
      if not fieldbyname('zhjs').IsNull then
      cobject.text:=formatfloat('0.00',fieldbyname('zhjs').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(24,4+i);
      if not fieldbyname('ceot').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('ceot').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(25,4+i);
      //if not fieldbyname('dbxl').isnull then begin
        //if fieldbyname('dbxl').value>0 then
        cobject.text:=formatfloat('0.00',fieldbyname('dbxl').value);
        //else cobject.text:='';
      //end else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(26,4+i);
      if not fieldbyname('eff1').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('eff1').value)
      else cobject.Text:='0.00';
      cobject:=sSheet1.Sheet.GetCellObject(27,4+i);
      if not fieldbyname('eff2').isnull then
      cobject.text:=formatfloat('0.00',fieldbyname('eff2').value)
      else cobject.Text:='0.00';
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        commandtext:='select a2,b2,c2,d2,e2,f2,g2,h2 from qn_calendar where pline=:x1 and seq=:x2 and dt1=:x3';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asdate:=query1.fieldbyname('dt1').value;
        open;
        cobject:=sSheet1.Sheet.GetCellObject(43,4+i);
        if not fieldbyname('a2').isnull then
          cobject.text:=fieldbyname('a2').asstring
        else cobject.Text:='';
        cobject:=sSheet1.Sheet.GetCellObject(44,4+i);
        if not fieldbyname('b2').isnull then
          cobject.text:=fieldbyname('b2').asstring
        else cobject.Text:='';
        cobject:=sSheet1.Sheet.GetCellObject(45,4+i);
        if not fieldbyname('c2').isnull then
          cobject.text:=fieldbyname('c2').asstring
        else cobject.Text:='';
        cobject:=sSheet1.Sheet.GetCellObject(46,4+i);
        if not fieldbyname('d2').isnull then
          cobject.text:=fieldbyname('d2').asstring
        else cobject.Text:='';
        cobject:=sSheet1.Sheet.GetCellObject(47,4+i);
        if not fieldbyname('e2').isnull then
          cobject.text:=fieldbyname('e2').asstring
        else cobject.Text:='';
        cobject:=sSheet1.Sheet.GetCellObject(48,4+i);
        if not fieldbyname('f2').isnull then
          cobject.text:=fieldbyname('f2').asstring
        else cobject.Text:='';
        cobject:=sSheet1.Sheet.GetCellObject(49,4+i);
        if not fieldbyname('g2').isnull then
          cobject.text:=fieldbyname('g2').asstring
        else cobject.Text:='';
        cobject:=sSheet1.Sheet.GetCellObject(50,4+i);
        if not fieldbyname('h2').isnull then
          cobject.text:=fieldbyname('h2').asstring
        else cobject.Text:='';
      end;
      cobject:=sSheet1.Sheet.GetCellObject(64,4+i);
      if not fieldbyname('marks').isnull then
        cobject.text:=fieldbyname('marks').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(65,4+i);
      cobject.Text:=formatfloat('0.00',fieldbyname('eff2').value*fieldbyname('csect').value);
      cobject:=sSheet1.Sheet.GetCellObject(66,4+i);
      cobject.Text:=fieldbyname('acol').value;
      i:=i+1;
      application.ProcessMessages;
      next;
    end;
  end;
  savedialog1.Execute;
  if pos('XLS',uppercase(savedialog1.FileName))>0 then
  sSheet1.savetofile(savedialog1.FileName)
  else sSheet1.SaveToFile(savedialog1.FileName+'.xls');
  finally
    cobject.Free;
    screen.cursor:=crDefault
  end;
end;

procedure Tfrmlineeff.printeffchart(const fmt: string);
var
  tm:tdatetime;
  s1,s2,s3,s4,s5,s6,s0,s01:string;
  mi1,ma1,mi2,ma2,mi3,ma3,mi4,ma4:integer;
  i:integer;
  dt1,dt2:tdate;
  tplant:string;
begin
  if xh4.Checked then begin
    //if combobox3.text='SALL' then begin
    if combobox3.text>'' then begin
      if xh6.Checked then begin
      if frmsalleff1=nil then frmsalleff1:=tfrmsalleff1.Create(nil);
      if xh5.Checked then begin
        with frmsalleff1.Query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''C'' and eff>0 and typ1 in (''T'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query3 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''F'' and eff>0 and typ1 in (''T'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query4 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''O'' and eff>0 and typ1 in (''T'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query5 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''C'' and eff>0 and typ1 in (''T'',''D'') and mn=''1'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query6 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''F'' and eff>0 and typ1 in (''T'',''D'') and mn=''1'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query7 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''O'' and eff>0 and typ1 in (''T'',''D'') and mn=''1'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
      end else begin
        with frmsalleff1.Query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''C'' and eff>0 and typ1 in (''C'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query3 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''F'' and eff>0 and typ1 in (''C'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query4 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''O'' and eff>0 and typ1 in (''C'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query5 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''C'' and eff>0 and typ1 in (''C'',''D'') and mn=''1'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query6 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''F'' and eff>0 and typ1 in (''C'',''D'') and mn=''1'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff1.Query7 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''O'' and eff>0 and typ1 in (''C'',''D'') and mn=''1'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
      end;
      s1:='c:\temp\'+formatdatetime('hhnnss',tm)+'SALL1.bmp';
      s2:='c:\temp\'+formatdatetime('hhnnss',tm)+'SALL2.bmp';
      s3:='c:\temp\'+formatdatetime('hhnnss',tm)+'SALL3.bmp';
      s4:='c:\temp\'+formatdatetime('hhnnss',tm)+'SALL4.bmp';
      s5:='c:\temp\'+formatdatetime('hhnnss',tm)+'SALL5.bmp';
      s6:='c:\temp\'+formatdatetime('hhnnss',tm)+'SALL6.bmp';
      frmsalleff1.dbchart1.SaveToBitmapFile(s1);
      frmsalleff1.dbchart2.SaveToBitmapFile(s2);
      frmsalleff1.dbchart3.SaveToBitmapFile(s3);
      frmsalleff1.dbchart4.SaveToBitmapFile(s4);
      frmsalleff1.dbchart5.SaveToBitmapFile(s5);
      frmsalleff1.dbchart6.SaveToBitmapFile(s6);
      frmsalleff1.ppimage1.Picture.LoadFromFile(s1);
      frmsalleff1.ppimage2.Picture.LoadFromFile(s2);
      frmsalleff1.ppimage3.Picture.LoadFromFile(s3);
      frmsalleff1.ppimage4.Picture.LoadFromFile(s4);
      frmsalleff1.ppimage5.Picture.LoadFromFile(s5);
      frmsalleff1.ppimage6.Picture.LoadFromFile(s6);
      if combobox3.text='SALL' then begin
        if combobox5.text='81' then s0:='Spr/Sum 08'
        else if combobox5.text='83' then s0:='BTS 08'
        else if combobox5.text='84' then s0:='Xmas 08'
        else if combobox5.text='91' then s0:='Spr 09'
        else if combobox5.text='92' then s0:='Sum 09'
        else if combobox5.text='93' then s0:='BTS 09'
        else if combobox5.Text='94' then s0:='Xmas 09';
      end else begin
        if combobox5.text='81' then s0:='Spr 08'
        else if combobox5.text='82' then s0:='Sum 08'
        else if combobox5.text='83' then s0:='Aut 08'
        else if combobox5.text='84' then s0:='Win 08'
        else if combobox5.text='91' then s0:='Spr 09'
        else if combobox5.text='92' then s0:='Sum 09'
        else if combobox5.text='93' then s0:='Aut 09'
        else if combobox5.Text='94' then s0:='Win 09';
      end;
      frmsalleff1.x001.Caption:='Season :  '+s0;
      frmsalleff1.title002.Caption:='- '+combobox3.text;
      frmsalleff1.x002.Caption:='Factory :  '+combobox1.text;//'# of Season : -   4 ';
      frmsalleff1.ppReport1.Print;
      end else begin
      if frmsalleff=nil then frmsalleff:=tfrmsalleff.Create(nil);
      if xh5.Checked then begin
        with frmsalleff.Query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''C'' and eff>0 and typ1 in (''T'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff.Query3 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''F'' and eff>0 and typ1 in (''T'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff.Query4 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''O'' and eff>0 and typ1 in (''T'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
      end else begin
        with frmsalleff.Query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''C'' and eff>0 and typ1 in (''C'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff.Query3 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''F'' and eff>0 and typ1 in (''C'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
        with frmsalleff.Query4 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_sall_eff1 where jhrs>='''+combobox5.Text+''' and jhrs<='''+combobox6.text+''' and typ=''O'' and eff>0 and typ1 in (''C'',''D'') and mn=''0'' '
                      +'and cust='''+combobox3.text+''' and tplant='''+combobox1.text+''' order by seq';
          open;
        end;
      end;
      s1:='c:\temp\'+formatdatetime('hhnnss',tm)+'SALL1.bmp';
      s2:='c:\temp\'+formatdatetime('hhnnss',tm)+'SALL2.bmp';
      s3:='c:\temp\'+formatdatetime('hhnnss',tm)+'SALL3.bmp';
      frmsalleff.dbchart1.SaveToBitmapFile(s1);
      frmsalleff.dbchart2.SaveToBitmapFile(s2);
      frmsalleff.dbchart3.SaveToBitmapFile(s3);
      frmsalleff.ppimage1.Picture.LoadFromFile(s1);
      frmsalleff.ppimage2.Picture.LoadFromFile(s2);
      frmsalleff.ppimage3.Picture.LoadFromFile(s3);
      if combobox3.text='SALL' then begin
        if combobox5.text='81' then s0:='Spr/Sum 08'
        else if combobox5.text='83' then s0:='BTS 08'
        else if combobox5.text='84' then s0:='Xmas 08'
        else if combobox5.text='91' then s0:='Spr 09'
        else if combobox5.text='92' then s0:='Sum 09'
        else if combobox5.text='93' then s0:='BTS 09'
        else if combobox5.Text='94' then s0:='Xmas 09';
      end else begin
        if combobox5.text='81' then s0:='Spr 08'
        else if combobox5.text='82' then s0:='Sum 08'
        else if combobox5.text='83' then s0:='Aut 08'
        else if combobox5.text='84' then s0:='Win 08'
        else if combobox5.text='91' then s0:='Spr 09'
        else if combobox5.text='92' then s0:='Sum 09'
        else if combobox5.text='93' then s0:='Aut 09'
        else if combobox5.Text='94' then s0:='Win 09';
      end;
      if combobox3.text='SALL' then begin
        if combobox6.text='81' then s01:='Spr/Sum 08'
        else if combobox6.text='83' then s01:='BTS 08'
        else if combobox6.text='84' then s01:='Xmas 08'
        else if combobox6.text='91' then s01:='Spr 09'
        else if combobox6.text='92' then s01:='Sum 09'
        else if combobox6.text='93' then s01:='BTS 09'
        else if combobox6.Text='94' then s01:='Xmas 09';
      end else begin
        if combobox6.text='81' then s01:='Spr 08'
        else if combobox6.text='82' then s01:='Sum 08'
        else if combobox6.text='83' then s01:='Aut 08'
        else if combobox6.text='84' then s01:='Win 08'
        else if combobox6.text='91' then s01:='Spr 09'
        else if combobox6.text='92' then s01:='Sum 09'
        else if combobox6.text='93' then s01:='Aut 09'
        else if combobox6.Text='94' then s01:='Win 09';
      end;
      frmsalleff.x001.Caption:='Season Range : -  from  '+s0+'  to  '+s01;
      frmsalleff.title002.Caption:='- '+combobox3.text;
      frmsalleff.x002.Caption:='Factory :  '+combobox1.text;//'# of Season : -   4 ';
      frmsalleff.ppReport1.Print;
      end;
    end;
  end else begin
  if combobox1.text>'' then tplant:=combobox1.text
  else if combobox2.text>'' then begin
    with query3 do begin
      close;
      params.clear;
      commandtext:='select tplant from tblline where tshop='''+combobox2.Text+'''';
      open;
      if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value
      else tplant:='';
    end;
  end;
  end;
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
  if not xh4.Checked then begin
  if xh1.Checked then begin
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date;
  end else if xh2.Checked then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as dt1 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit1.Value;
      params[1].asinteger:=edit2.value;
      open;
      dt1:=fieldbyname('dt1').value;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit3.Value;
      params[1].asinteger:=edit4.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end else if xh3.Checked then begin
    dt1:=encodedate(edit5.value,edit6.value,1);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and f_month(date1)=:x2';
      params[0].asinteger:=edit7.Value;
      params[1].asinteger:=edit8.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end;
  if ((combobox1.text>'') or (combobox2.text>'') or (combobox3.text>'') or (edit9.Text>'')) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      //commandtext:='execute procedure sp_gen_effchart_new(:x1,:x2,:x3,:x4,:x5,:x6)';
      if fmt='1' then begin
        if chk1.checked then
        commandtext:='execute procedure sp_gen_effchart_jno_spe(:x1,:x2,:x3,:x7,:x8,:x4,:x5,:x6,:x9)'
        else
        commandtext:='execute procedure sp_gen_effchart_jno(:x1,:x2,:x3,:x7,:x8,:x4,:x5,:x6,:x9)'
      end else if fmt='0' then begin
        if chk1.checked then
        commandtext:='execute procedure sp_gen_effchart_flag6_spe(:x1,:x2,:x3,:x7,:x8,:x4,:x5,:x6,:x9)'
        else
        commandtext:='execute procedure sp_gen_effchart_flag6(:x1,:x2,:x3,:x7,:x8,:x4,:x5,:x6,:x9)';
      end;
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.Text;
      params[2].asstring:=combobox2.text;
      if fmt='1' then begin
        if edit10.Text>'' then params[3].asstring:=edit10.Text
        else params[3].asstring:=combobox3.text;
      end else
      params[3].asstring:=combobox3.text;
      params[4].asstring:=edit9.Text;
      params[5].asdate:=dt1;
      params[6].asdate:=dt2;
      if xh1.Checked then params[7].asinteger:=1
      else if xh2.Checked then params[7].asinteger:=2
      else if xh3.Checked then params[7].asinteger:=3;
      params[8].asstring:=combobox4.text;
      execute;
    end;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select min(eff1) as x1,max(eff1) as x2,min(eff2) as x3,max(eff2) as x4,min(dbxl) as x5,max(dbxl) as x6,min(eff) as x7,max(eff) as x8 from line_shjs_eff0 where tm=:x1';
      params[0].asdatetime:=tm;
      open;
      if fieldbyname('x1').value>=5 then
      mi1:=(round(fieldbyname('x1').value-5) div 10) *10
      else mi1:=(round(fieldbyname('x1').value-0) div 10) *10;
      ma1:=(round(fieldbyname('x2').value+10) div 10) *10;
      if fieldbyname('x3').value>=5 then
      mi2:=(round(fieldbyname('x3').value-5) div 10) *10
      else mi2:=(round(fieldbyname('x3').value-0) div 10) *10;
      ma2:=(round(fieldbyname('x4').value+10) div 10) *10;
      if fieldbyname('x5').value>=5 then
      mi3:=(round(fieldbyname('x5').value-5) div 10) *10
      else mi3:=(round(fieldbyname('x5').value-0) div 10) *10;
      ma3:=(round(fieldbyname('x6').value+10) div 10) *10;
      if fieldbyname('x7').value>=5 then
      mi4:=(round(fieldbyname('x7').value-5) div 10) *10
      else mi4:=(round(fieldbyname('x7').value-0) div 10) *10;
      ma4:=(round(fieldbyname('x8').value+10) div 10) *10;
    end;
    if fmt='0' then begin
    if frmeffchart=nil then frmeffchart:=tfrmeffchart.Create(nil);
    frmeffchart.DateEdit1.Date:=dt1;
    frmeffchart.DateEdit2.Date:=dt2;
    frmeffchart.dbchart1.LeftAxis.Maximum:=ma3;
    frmeffchart.dbchart1.LeftAxis.Minimum:=mi3;
    frmeffchart.dbchart2.LeftAxis.Maximum:=ma2;
    frmeffchart.dbchart2.LeftAxis.Minimum:=mi2;
    frmeffchart.dbchart3.LeftAxis.Maximum:=ma1;
    frmeffchart.dbchart3.LeftAxis.Minimum:=mi1;
    frmeffchart.dbchart4.LeftAxis.Maximum:=ma4;
    frmeffchart.dbchart4.LeftAxis.Minimum:=mi4;
    with frmeffchart.Query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from line_shjs_eff0 where tm=:x1 and seq<9999';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmeffchart.Query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from line_shjs_eff0 where tm=:x1 and seq=10000';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmeffchart.Query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from line_shjs_eff01 where tm=:x1 and seq<10000 order by seq,tshop';
      params[0].asdatetime:=tm;
      open;
    end;
    frmeffchart.DBChart1.Series[0].Pen.Width:=5;
    frmeffchart.DBChart2.Series[0].Pen.Width:=5;
    frmeffchart.DBChart3.Series[0].Pen.Width:=5;
    frmeffchart.DBChart4.Series[0].Pen.Width:=5;
    for i:=1 to frmeffchart.DBChart1.SeriesCount-1 do begin
      frmeffchart.DBChart1.Series[i].Pen.Width:=1;
    end;
    for i:=1 to frmeffchart.DBChart2.SeriesCount-1 do begin
      frmeffchart.DBChart2.Series[i].Pen.Width:=1;
    end;
    for i:=1 to frmeffchart.DBChart3.SeriesCount-1 do begin
      frmeffchart.DBChart3.Series[i].Pen.Width:=2;
    end;
    for i:=1 to frmeffchart.DBChart4.SeriesCount-1 do begin
      frmeffchart.DBChart4.Series[i].Pen.Width:=1;
    end;

    s1:='c:\temp\'+formatdatetime('hhnnss',tm)+'DF.bmp';
    s2:='c:\temp\'+formatdatetime('hhnnss',tm)+'CU.bmp';
    s3:='c:\temp\'+formatdatetime('hhnnss',tm)+'DF1.bmp';
    s4:='c:\temp\'+formatdatetime('hhnnss',tm)+'CU1.bmp';
    frmeffchart.dbchart1.SaveToBitmapFile(s1);
    frmeffchart.dbchart2.SaveToBitmapFile(s2);
    frmeffchart.dbchart3.SaveToBitmapFile(s3);
    frmeffchart.dbchart4.SaveToBitmapFile(s4);
    if frmeffchart.query1.Active then begin
       if combobox2.Text>'' then frmeffchart.title001.Caption:='Workshop''s Line opt perf efficiency Analysis report by line'
       else if combobox1.Text>'' then frmeffchart.title001.caption:='Factory''s Line opt perf efficiency Analysis report by workshop - customer independent';
       if combobox3.Text>'' then begin
         if combobox2.text>'' then s0:='Workshop''s ' else if combobox1.text>'' then s0:='Factory''s ' else s0:='Group ';
         if edit9.text>'' then frmeffchart.title001.Caption:=s0+'Line opt perf efficiency comparison'
         else frmeffchart.title001.Caption:=s0+'Line opt perf efficiency comparison';
         if combobox2.Text>'' then frmeffchart.title001.Caption:=frmeffchart.title001.Caption+' by line'
         else if combobox1.Text>'' then frmeffchart.title001.Caption:=frmeffchart.title001.Caption+' by workshop'
         else frmeffchart.title001.Caption:=frmeffchart.title001.Caption+' by factory';
         frmeffchart.title001.Caption:=frmeffchart.title001.Caption+' - customer dependent';
       end else if edit9.Text>'' then begin
         if combobox2.text>'' then s0:='Workshop''s ' else if combobox1.text>'' then s0:='Factory''s ' else s0:='Group ';
         frmeffchart.title001.Caption:=s0+'Line opt perf efficiency comparison';
         if combobox2.Text>'' then frmeffchart.title001.Caption:=frmeffchart.title001.Caption+' by line'
         else if combobox1.Text>'' then frmeffchart.title001.Caption:=frmeffchart.title001.Caption+' by workshop'
         else frmeffchart.title001.Caption:=frmeffchart.title001.Caption+' by factory';
         frmeffchart.title001.Caption:=frmeffchart.title001.Caption+' - cust style dependent';
       end;
      frmeffchart.fty001.Caption:=tplant;
      frmeffchart.shop001.Caption:=combobox2.text;
      frmeffchart.cust001.Caption:=combobox3.text;
      frmeffchart.cstyle001.Caption:=edit9.Text;
      frmeffchart.ptype01.Caption:=combobox4.text;
      if xh1.Checked then begin
        frmeffchart.mychk01.Checked:=true;
        frmeffchart.from001.Caption:=formatdatetime('yyyy-MM-dd',dt1);
        frmeffchart.to001.Caption:=formatdatetime('yyyy-MM-dd',dt2);
      end else begin
        frmeffchart.mychk01.Checked:=false;
        frmeffchart.from001.Caption:='';
        frmeffchart.to001.Caption:='';
      end;
      if xh2.Checked then begin
        frmeffchart.mychk02.Checked:=true;
        frmeffchart.from002.Caption:=inttostr(edit1.Value)+'-'+inttostr(edit2.Value);
        frmeffchart.to002.Caption:=inttostr(edit3.Value)+'-'+inttostr(edit4.Value);
      end else begin
        frmeffchart.mychk02.Checked:=false;
        frmeffchart.from002.Caption:='';
        frmeffchart.to002.Caption:='';
      end;
      if xh3.Checked then begin
        frmeffchart.mychk03.Checked:=true;
        frmeffchart.from003.Caption:=inttostr(edit5.Value)+'-'+inttostr(edit6.Value);
        frmeffchart.to003.Caption:=inttostr(edit7.Value)+'-'+inttostr(edit8.Value);
      end else begin
        frmeffchart.mychk03.Checked:=false;
        frmeffchart.from003.Caption:='';
        frmeffchart.to003.Caption:='';
      end;
      calc_wkno1(tm);
      frmeffchart.ppimage1.Picture.LoadFromFile(s3);
      frmeffchart.ppimage2.Picture.LoadFromFile(s2);
      frmeffchart.ppimage3.Picture.LoadFromFile(s1);
      frmeffchart.ppimage4.Picture.LoadFromFile(s4);
      frmeffchart.ppReport1.Print;
    end;
    end else if fmt='1' then begin
    if frmeffchart1=nil then frmeffchart1:=tfrmeffchart1.Create(nil);
    frmeffchart1.DateEdit1.Date:=dt1;
    frmeffchart1.DateEdit2.Date:=dt2;
    frmeffchart1.dbchart1.LeftAxis.Maximum:=ma3;
    frmeffchart1.dbchart1.LeftAxis.Minimum:=mi3;
    frmeffchart1.dbchart2.LeftAxis.Maximum:=ma2;
    frmeffchart1.dbchart2.LeftAxis.Minimum:=mi2;
    frmeffchart1.dbchart3.LeftAxis.Maximum:=ma1;
    frmeffchart1.dbchart3.LeftAxis.Minimum:=mi1;
    frmeffchart1.dbchart4.LeftAxis.Maximum:=ma4;
    frmeffchart1.dbchart4.LeftAxis.Minimum:=mi4;
    with frmeffchart1.Query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from line_shjs_eff0 where tm=:x1 and seq<9999';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmeffchart1.Query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from line_shjs_eff0 where tm=:x1 and seq=10000';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmeffchart1.Query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from line_shjs_eff01 where tm=:x1 and seq<10000 order by seq,tshop';
      params[0].asdatetime:=tm;
      open;
    end;
    frmeffchart1.DBChart1.Series[0].Pen.Width:=5;
    frmeffchart1.DBChart2.Series[0].Pen.Width:=5;
    frmeffchart1.DBChart3.Series[0].Pen.Width:=5;
    frmeffchart1.DBChart4.Series[0].Pen.Width:=5;
    for i:=1 to frmeffchart1.DBChart1.SeriesCount-1 do begin
      frmeffchart1.DBChart1.Series[i].Pen.Width:=1;
    end;
    for i:=1 to frmeffchart1.DBChart2.SeriesCount-1 do begin
      frmeffchart1.DBChart2.Series[i].Pen.Width:=1;
    end;
    for i:=1 to frmeffchart1.DBChart3.SeriesCount-1 do begin
      frmeffchart1.DBChart3.Series[i].Pen.Width:=2;
    end;
    for i:=1 to frmeffchart1.DBChart4.SeriesCount-1 do begin
      frmeffchart1.DBChart4.Series[i].Pen.Width:=1;
    end;

    s1:='c:\temp\'+formatdatetime('hhnnss',tm)+'DF.bmp';
    s2:='c:\temp\'+formatdatetime('hhnnss',tm)+'CU.bmp';
    s3:='c:\temp\'+formatdatetime('hhnnss',tm)+'DF1.bmp';
    s4:='c:\temp\'+formatdatetime('hhnnss',tm)+'CU1.bmp';
    frmeffchart1.dbchart1.SaveToBitmapFile(s1);
    frmeffchart1.dbchart2.SaveToBitmapFile(s2);
    frmeffchart1.dbchart3.SaveToBitmapFile(s3);
    frmeffchart1.dbchart4.SaveToBitmapFile(s4);
    if frmeffchart1.query1.Active then begin
       if combobox2.Text>'' then frmeffchart1.title001.Caption:='Workshop''s Line opt perf efficiency Analysis report by line'
       else if combobox1.Text>'' then frmeffchart1.title001.caption:='Factory''s Line opt perf efficiency Analysis report by workshop - customer independent';
       if combobox3.Text>'' then begin
         if combobox2.text>'' then s0:='Workshop''s ' else if combobox1.text>'' then s0:='Factory''s ' else s0:='Group ';
         if edit9.text>'' then frmeffchart1.title001.Caption:=s0+'Line opt perf efficiency comparison'
         else frmeffchart1.title001.Caption:=s0+'Line opt perf efficiency comparison';
         if combobox2.Text>'' then frmeffchart1.title001.Caption:=frmeffchart1.title001.Caption+' by line'
         else if combobox1.Text>'' then frmeffchart1.title001.Caption:=frmeffchart1.title001.Caption+' by workshop'
         else frmeffchart1.title001.Caption:=frmeffchart1.title001.Caption+' by factory';
         frmeffchart1.title001.Caption:=frmeffchart1.title001.Caption+' - customer dependent';
       end else if edit9.Text>'' then begin
         if combobox2.text>'' then s0:='Workshop''s ' else if combobox1.text>'' then s0:='Factory''s ' else s0:='Group ';
         frmeffchart1.title001.Caption:=s0+'Line opt perf efficiency comparison';
         if combobox2.Text>'' then frmeffchart1.title001.Caption:=frmeffchart1.title001.Caption+' by line'
         else if combobox1.Text>'' then frmeffchart1.title001.Caption:=frmeffchart1.title001.Caption+' by workshop'
         else frmeffchart1.title001.Caption:=frmeffchart1.title001.Caption+' by factory';
         frmeffchart1.title001.Caption:=frmeffchart1.title001.Caption+' - cust style dependent';
       end;
      frmeffchart1.fty001.Caption:=tplant;
      frmeffchart1.shop001.Caption:=combobox2.text;
      frmeffchart1.cust001.Caption:=combobox3.text;
      frmeffchart1.cstyle001.Caption:=edit9.Text;
      frmeffchart1.ptype01.Caption:=combobox4.text;
      frmeffchart1.prj001.Caption:=edit10.Text;
      if xh1.Checked then begin
        frmeffchart1.mychk01.Checked:=true;
        frmeffchart1.from001.Caption:=formatdatetime('yyyy-MM-dd',dt1);
        frmeffchart1.to001.Caption:=formatdatetime('yyyy-MM-dd',dt2);
      end else begin
        frmeffchart1.mychk01.Checked:=false;
        frmeffchart1.from001.Caption:='';
        frmeffchart1.to001.Caption:='';
      end;
      if xh2.Checked then begin
        frmeffchart1.mychk02.Checked:=true;
        frmeffchart1.from002.Caption:=inttostr(edit1.Value)+'-'+inttostr(edit2.Value);
        frmeffchart1.to002.Caption:=inttostr(edit3.Value)+'-'+inttostr(edit4.Value);
      end else begin
        frmeffchart1.mychk02.Checked:=false;
        frmeffchart1.from002.Caption:='';
        frmeffchart1.to002.Caption:='';
      end;
      if xh3.Checked then begin
        frmeffchart1.mychk03.Checked:=true;
        frmeffchart1.from003.Caption:=inttostr(edit5.Value)+'-'+inttostr(edit6.Value);
        frmeffchart1.to003.Caption:=inttostr(edit7.Value)+'-'+inttostr(edit8.Value);
      end else begin
        frmeffchart1.mychk03.Checked:=false;
        frmeffchart1.from003.Caption:='';
        frmeffchart1.to003.Caption:='';
      end;
      calc_wkno2(tm);
      frmeffchart1.ppimage1.Picture.LoadFromFile(s3);
      frmeffchart1.ppimage2.Picture.LoadFromFile(s2);
      frmeffchart1.ppimage3.Picture.LoadFromFile(s1);
      frmeffchart1.ppimage4.Picture.LoadFromFile(s4);
      frmeffchart1.ppReport1.Print;
    end;
    end;
  end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
