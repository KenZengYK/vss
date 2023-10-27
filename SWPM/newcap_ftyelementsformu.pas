unit newcap_ftyelementsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls,
  ppBands, ppCache, ppVar, ppViewr, ExtCtrls, ppParameter;

type
  Tfrmnewcap_ftyelements = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    dt001: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape2: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText10: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    wf001: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    wf002: TppDBText;
    wf00001: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText14: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText15: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText16: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
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
    ppLine15: TppLine;
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
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    lb01: TppLabel;
    wfb01: TppLabel;
    lk01: TppLabel;
    lu01: TppLabel;
    wfk01: TppLabel;
    wfu01: TppLabel;
    wfb02: TppLabel;
    wfk02: TppLabel;
    wfu02: TppLabel;
    wfb03: TppLabel;
    wfk03: TppLabel;
    wfu03: TppLabel;
    sb01: TppLabel;
    sk01: TppLabel;
    su01: TppLabel;
    eb01: TppLabel;
    ek01: TppLabel;
    eu01: TppLabel;
    pb01: TppLabel;
    pk01: TppLabel;
    pu01: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ttlsah001: TppDBCalc;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    dt002: TppLabel;
    ppLabel49: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel50: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppShape4: TppShape;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel60: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText19: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine44: TppLine;
    ppDBText25: TppDBText;
    wf0001: TppDBText;
    wf00002: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    x201: TppDBText;
    x302: TppDBText;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape5: TppShape;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine50: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine34: TppLine;
    ppLabel48: TppLabel;
    ppLine37: TppLine;
    ppDBText20: TppDBText;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    x301: TppDBText;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppDBCalc5: TppDBCalc;
    rg01: TRadioGroup;
    subtitle001: TppLabel;
    ppLine51: TppLine;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppDBText13: TppDBText;
    ppLabel65: TppLabel;
    gb01: TppLabel;
    gk01: TppLabel;
    gu01: TppLabel;
    ppLine52: TppLine;
    ppLabel66: TppLabel;
    ppDBText21: TppDBText;
    subtitle002: TppLabel;
    ppLabel59: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_ftyelements: Tfrmnewcap_ftyelements;
  tm:tdatetime;

implementation

uses mainformu, newcapformu;

{$R *.dfm}

procedure Tfrmnewcap_ftyelements.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_ftyelements:=nil;
end;

procedure Tfrmnewcap_ftyelements.FormShow(Sender: TObject);
begin
  dateedit1.date:=date;
  dateedit2.date:=date;
end;

procedure Tfrmnewcap_ftyelements.BitBtn1Click(Sender: TObject);
var
  wkno:integer;
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='execute procedure sp_cap_genftyelements_new(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      if rg01.ItemIndex=0 then params[1].asstring:='NOT'
      else if rg01.ItemIndex=1 then params[1].asstring:='ALL';
      params[2].asdate:=dateedit1.date;
      params[3].asdate:=dateedit2.date;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select count(distinct wkno) as s1 from week52 where date1>=:x1 and date1<=:x2 and line=''T001U''';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      open;
      if not fieldbyname('s1').isnull then wkno:=fieldbyname('s1').value else wkno:=1;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_cap_fty_elements where tm=:x1';
      if combobox1.text<>'ALL' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      commandtext:=commandtext+' order by tplant,grp,cust,flag6';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        subtitle001.Caption:='('+rg01.Items[rg01.itemindex]+')';
        dt001.Caption:='Date from '+formatdatetime('yyyy-MM-dd',dateedit1.date)+' to '+formatdatetime('yyyy-MM-dd',dateedit2.date)+' (# of week: '+inttostr(wkno)+')';
        ppReport1.Print;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftyelements.BitBtn2Click(Sender: TObject);
var
  wkno:integer;
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='execute procedure sp_cap_genftyelements_new(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      if rg01.ItemIndex=0 then params[1].asstring:='NOT'
      else if rg01.ItemIndex=1 then params[1].asstring:='ALL';
      params[2].asdate:=dateedit1.date;
      params[3].asdate:=dateedit2.date;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select count(distinct wkno) as s1 from week52 where date1>=:x1 and date1<=:x2 and line=''T001U''';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      open;
      if not fieldbyname('s1').isnull then wkno:=fieldbyname('s1').value else wkno:=1;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_cap_fty_elements where tm=:x1 and rk3 is not null';
      if combobox1.text<>'ALL' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      commandtext:=commandtext+' order by grp,cust,flag6,tplant';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        subtitle002.Caption:='('+rg01.Items[rg01.itemindex]+')';
        dt002.Caption:='Date from '+formatdatetime('yyyy-MM-dd',dateedit1.date)+' to '+formatdatetime('yyyy-MM-dd',dateedit2.date)+' (# of week: '+inttostr(wkno)+')';
        ppReport2.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftyelements.ppDetailBand1BeforePrint(Sender: TObject);
begin
  //if query1.fieldbyname('wf').value>query1.fieldbyname('wf1').value then
  //wf002.Font.Color:=clRed
  //else wf002.Font.Color:=clBlack;
  if query1.fieldbyname('bwf').value>2.0 then wf00001.Font.Color:=clRed
  else if query1.fieldbyname('bwf').value<-2.0 then wf00001.Font.Color:=clBlue
  else wf00001.Font.Color:=clGreen;
end;

procedure Tfrmnewcap_ftyelements.ppGroupFooterBand1BeforePrint(
  Sender: TObject);
begin
  lb01.Caption:=''; lk01.Caption:=''; lu01.Caption:='';
  wfb01.Caption:=''; wfk01.Caption:=''; wfu01.Caption:='';
  wfb02.Caption:=''; wfk02.Caption:=''; wfu02.Caption:='';
  wfb03.Caption:=''; wfk03.Caption:=''; wfu03.Caption:='';
  sb01.Caption:=''; sk01.Caption:=''; su01.Caption:='';
  eb01.Caption:=''; ek01.Caption:=''; eu01.Caption:='';
  pb01.Caption:=''; pk01.Caption:=''; pu01.Caption:='';
  gb01.Caption:=''; gk01.Caption:=''; gu01.Caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select distinct flag6,sum(line*sah) as s1,sum(wf1*sah)/sum(sah) as s2,sum(wf*sah)/sum(sah) as s3,'
                +'sum(bwf*sah)/sum(sah) as s4,sum(gsd*sah)/sum(sah) as s5,sum(eff1*sah)/sum(sah) as s6,'
                +'sum(peff*sah)/sum(sah) as s7,sum(gai*sah)/sum(sah) as s8 from tbl_cap_fty_elements where tm=:x1 and tplant=:x2 group by flag6';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    open;
    while not eof do begin
      if fieldbyname('flag6').value='B' then begin
        if not fieldbyname('s1').isnull then
        lb01.Caption:=formatfloat('0.00',fieldbyname('s1').value/ttlsah001.Value);
        if not fieldbyname('s2').isnull then
        wfb01.Caption:=formatfloat('0.00',fieldbyname('s2').value);
        if not fieldbyname('s3').isnull then
        wfb02.Caption:=formatfloat('0.00',fieldbyname('s3').value);
        if not fieldbyname('s4').isnull then
        wfb03.Caption:=formatfloat('0.00',fieldbyname('s4').value);
        if not fieldbyname('s5').isnull then
        sb01.Caption:=formatfloat('0.0000',fieldbyname('s5').value);
        if not fieldbyname('s6').isnull then
        eb01.Caption:=formatfloat('0.00',fieldbyname('s6').value);
        if not fieldbyname('s7').isnull then
        pb01.Caption:=formatfloat('0.00',fieldbyname('s7').value);
        if not fieldbyname('s8').isnull then
        gb01.Caption:=formatfloat('0.00',fieldbyname('s8').value);

        if fieldbyname('s4').value>2 then wfb03.Font.Color:=clRed
        else if fieldbyname('s4').value<-2 then wfb03.Font.Color:=clBlue
        else wfb03.Font.Color:=clGreen;
      end else if fieldbyname('flag6').value='K' then begin
        if not fieldbyname('s1').isnull then
        lk01.Caption:=formatfloat('0.00',fieldbyname('s1').value/ttlsah001.Value);
        if not fieldbyname('s2').isnull then
        wfk01.Caption:=formatfloat('0.00',fieldbyname('s2').value);
        if not fieldbyname('s3').isnull then
        wfk02.Caption:=formatfloat('0.00',fieldbyname('s3').value);
        if not fieldbyname('s4').isnull then
        wfk03.Caption:=formatfloat('0.00',fieldbyname('s4').value);
        if not fieldbyname('s5').isnull then
        sk01.Caption:=formatfloat('0.0000',fieldbyname('s5').value);
        if not fieldbyname('s6').isnull then
        ek01.Caption:=formatfloat('0.00',fieldbyname('s6').value);
        if not fieldbyname('s7').isnull then
        pk01.Caption:=formatfloat('0.00',fieldbyname('s7').value);
        if not fieldbyname('s8').isnull then
        gk01.Caption:=formatfloat('0.00',fieldbyname('s8').value);

        if fieldbyname('s4').value>2 then wfk03.Font.Color:=clRed
        else if fieldbyname('s4').value<-2 then wfk03.Font.Color:=clBlue
        else wfk03.Font.Color:=clGreen;
      end else if fieldbyname('flag6').value='U' then begin
        if not fieldbyname('s1').isnull then
        lu01.Caption:=formatfloat('0.00',fieldbyname('s1').value/ttlsah001.Value);
        if not fieldbyname('s2').isnull then
        wfu01.Caption:=formatfloat('0.00',fieldbyname('s2').value);
        if not fieldbyname('s3').isnull then
        wfu02.Caption:=formatfloat('0.00',fieldbyname('s3').value);
        if not fieldbyname('s4').isnull then
        wfu03.Caption:=formatfloat('0.00',fieldbyname('s4').value);
        if not fieldbyname('s5').isnull then
        su01.Caption:=formatfloat('0.0000',fieldbyname('s5').value);
        if not fieldbyname('s6').isnull then
        eu01.Caption:=formatfloat('0.00',fieldbyname('s6').value);
        if not fieldbyname('s7').isnull then
        pu01.Caption:=formatfloat('0.00',fieldbyname('s7').value);
        if not fieldbyname('s8').isnull then
        gu01.Caption:=formatfloat('0.00',fieldbyname('s8').value);

        if fieldbyname('s4').value>2 then wfu03.Font.Color:=clRed
        else if fieldbyname('s4').value<-2 then wfu03.Font.Color:=clBlue
        else wfu03.Font.Color:=clGreen;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_ftyelements.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.previewform.WindowState:=wsmaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmnewcap_ftyelements.ppDetailBand2BeforePrint(Sender: TObject);
begin
  //if query1.fieldbyname('wf').value>query1.fieldbyname('wf1').value then
  //wf0001.Font.Color:=clRed
  //else wf0001.Font.Color:=clBlack;
  if query1.fieldbyname('bwf').value>2.0 then wf00002.Font.Color:=clRed
  else if query1.fieldbyname('bwf').value<-2.0 then wf00002.Font.Color:=clBlue
  else wf00002.Font.Color:=clGreen;
  if query1.fieldbyname('rk3').value=2 then begin
    x201.Visible:=true; x301.Visible:=false; x302.Visible:=false;
  end else if query1.fieldbyname('rk3').value=3 then begin
    x201.Visible:=false; x301.Visible:=true; x302.Visible:=true;
  end else begin
    x201.Visible:=false; x301.Visible:=false; x302.Visible:=false;
  end;
end;

procedure Tfrmnewcap_ftyelements.ppReport2PreviewFormCreate(
  Sender: TObject);
begin
  ppReport2.previewform.WindowState:=wsmaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
