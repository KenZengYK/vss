unit pdnrpt11formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, ppViewr,
  ppStrtch, ppMemo, myChkBox, ppParameter;

type
  Tfrmpdnrpt11 = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    DataSource2: TDataSource;
    Query4: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBPipeline3: TppDBPipeline;
    DataSource3: TDataSource;
    Query5: TClientDataSet;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape1: TppShape;
    ppMemo1: TppMemo;
    ppShape2: TppShape;
    ppImage2: TppImage;
    ppLabel3: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    fty001: TppLabel;
    c001: TppLabel;
    t001: TppLabel;
    f001: TppLabel;
    e001: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppShape4: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    mychk1: TmyCheckBox;
    ppLabel20: TppLabel;
    mychk2: TmyCheckBox;
    ppLabel21: TppLabel;
    mychk3: TmyCheckBox;
    ppLabel22: TppLabel;
    ppLine8: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    myCheckBox4: TmyCheckBox;
    ppLabel28: TppLabel;
    myCheckBox5: TmyCheckBox;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    x003: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    x002: TppLabel;
    ppLine13: TppLine;
    x001: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    myCheckBox6: TmyCheckBox;
    ppLabel38: TppLabel;
    myCheckBox7: TmyCheckBox;
    ppLabel39: TppLabel;
    myCheckBox8: TmyCheckBox;
    ppLabel40: TppLabel;
    myCheckBox9: TmyCheckBox;
    ppLabel41: TppLabel;
    myCheckBox10: TmyCheckBox;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    myCheckBox11: TmyCheckBox;
    ppLabel44: TppLabel;
    myCheckBox12: TmyCheckBox;
    ppLabel45: TppLabel;
    myCheckBox13: TmyCheckBox;
    ppLabel46: TppLabel;
    ppLine14: TppLine;
    ppLabel47: TppLabel;
    myCheckBox14: TmyCheckBox;
    ppLabel48: TppLabel;
    myCheckBox15: TmyCheckBox;
    ppLabel49: TppLabel;
    myCheckBox16: TmyCheckBox;
    ppLabel50: TppLabel;
    ppShape5: TppShape;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
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
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
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
    ppShape6: TppShape;
    ppMemo2: TppMemo;
    ppLine28: TppLine;
    ppMemo3: TppMemo;
    ppLabel80: TppLabel;
    ppLine29: TppLine;
    ppLabel81: TppLabel;
    ppLine30: TppLine;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    fty002: TppLabel;
    a001: TppLabel;
    ppLabel88: TppLabel;
    c002: TppLabel;
    ppLabel90: TppLabel;
    t002: TppLabel;
    ppLabel92: TppLabel;
    f002: TppLabel;
    ppLine33: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppShape7: TppShape;
    ppDBText3: TppDBText;
    ppLabel94: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    manifest001: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppShape8: TppShape;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLabel33: TppLabel;
    ppLine58: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    pdn001: TppLabel;
    manifest002: TppLabel;
    ppDBText7: TppDBText;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    d0001: TppLabel;
    d0002: TppLabel;
    d0008: TppLabel;
    d0009: TppLabel;
    d0003: TppLabel;
    d0004: TppLabel;
    d0005: TppLabel;
    d0006: TppLabel;
    d0007: TppLabel;
    d0111: TppLabel;
    d0112: TppLabel;
    d0113: TppLabel;
    d0114: TppLabel;
    d0115: TppLabel;
    d0116: TppLabel;
    d0117: TppLabel;
    d0118: TppLabel;
    d0119: TppLabel;
    d0101: TppLabel;
    d0102: TppLabel;
    d0103: TppLabel;
    d0104: TppLabel;
    d0105: TppLabel;
    d0106: TppLabel;
    d0107: TppLabel;
    d0108: TppLabel;
    d0109: TppLabel;
    d0011: TppLabel;
    d0012: TppLabel;
    d0013: TppLabel;
    d0014: TppLabel;
    d0015: TppLabel;
    d0016: TppLabel;
    d0017: TppLabel;
    d0018: TppLabel;
    d0019: TppLabel;
    d0021: TppLabel;
    d0022: TppLabel;
    d0023: TppLabel;
    d0024: TppLabel;
    d0025: TppLabel;
    d0026: TppLabel;
    d0027: TppLabel;
    d0028: TppLabel;
    d0029: TppLabel;
    d0031: TppLabel;
    d0032: TppLabel;
    d0033: TppLabel;
    d0034: TppLabel;
    d0035: TppLabel;
    d0036: TppLabel;
    d0037: TppLabel;
    d0038: TppLabel;
    d0039: TppLabel;
    d0041: TppLabel;
    d0042: TppLabel;
    d0043: TppLabel;
    d0044: TppLabel;
    d0045: TppLabel;
    d0046: TppLabel;
    d0047: TppLabel;
    d0048: TppLabel;
    d0049: TppLabel;
    d0051: TppLabel;
    d0052: TppLabel;
    d0053: TppLabel;
    d0054: TppLabel;
    d0055: TppLabel;
    d0056: TppLabel;
    d0057: TppLabel;
    d0058: TppLabel;
    d0059: TppLabel;
    d0061: TppLabel;
    d0062: TppLabel;
    d0063: TppLabel;
    d0064: TppLabel;
    d0065: TppLabel;
    d0066: TppLabel;
    d0067: TppLabel;
    d0068: TppLabel;
    d0069: TppLabel;
    d0071: TppLabel;
    d0072: TppLabel;
    d0073: TppLabel;
    d0074: TppLabel;
    d0075: TppLabel;
    d0076: TppLabel;
    d0077: TppLabel;
    d0078: TppLabel;
    d0079: TppLabel;
    d0081: TppLabel;
    d0082: TppLabel;
    d0083: TppLabel;
    d0084: TppLabel;
    d0085: TppLabel;
    d0086: TppLabel;
    d0087: TppLabel;
    d0088: TppLabel;
    d0089: TppLabel;
    ppLabel9: TppLabel;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnrpt11: Tfrmpdnrpt11;

implementation

uses mainformu, pdnformu, pdnprintformu;

{$R *.dfm}

procedure Tfrmpdnrpt11.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct voyn from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    if not fieldbyname('voyn').isnull then begin
      manifest001.Caption:=fieldbyname('voyn').value;
    end else begin
      manifest001.Caption:='';
    end;
  end;
end;

procedure Tfrmpdnrpt11.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnrpt11.ppGroupHeaderBand1BeforePrint(Sender: TObject);
var
  i:integer;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct shpm,indt,lport from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    if not fieldbyname('shpm').isnull then begin
      if pos('BOAT',uppercase(fieldbyname('shpm').value))>0 then begin
        mychk1.checked:=true;
        mychk2.checked:=false;
        mychk3.checked:=false;
      end else if pos('CC',uppercase(fieldbyname('shpm').value))>0 then begin
        mychk3.checked:=true;
        mychk1.checked:=false;
        mychk2.checked:=false;
      end else if pos('PP',uppercase(fieldbyname('shpm').value))>0 then begin
        mychk2.checked:=true;
        mychk1.checked:=false;
        mychk3.checked:=false;
      end else begin
        mychk1.Checked:=false;
        mychk2.checked:=false;
        mychk3.checked:=false;
      end;
    end else begin
      mychk1.Checked:=false;
      mychk2.checked:=false;
      mychk3.checked:=false;
    end;
    if not fieldbyname('indt').isnull then x001.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('indt').value)
    else x001.Caption:='';
    if not fieldbyname('lport').isnull then x002.Caption:=fieldbyname('lport').value else x002.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct voyn,tplant from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    if not fieldbyname('voyn').isnull then begin
      if fieldbyname('voyn').value<>query5.fieldbyname('seq1').asstring then
      manifest001.Caption:=fieldbyname('voyn').value
      else manifest001.Caption:='';
      manifest002.Caption:='Manifest #  '+fieldbyname('voyn').value;
    end else begin
      manifest001.Caption:='';
      manifest002.Caption:='Manifest #  ';
    end;
    if not fieldbyname('tplant').isnull then begin
      if fieldbyname('tplant').value='SL' then begin
        fty001.Caption:='PH Garment / SL ';
        c001.Caption:='Caron Lam / Stellar Ye ';
        t001.Caption:='852 - 26103364/26103354 ';
        f001.Caption:='852 - 24943514 ';
        e001.Caption:='caronlam@phgmt.com.hk ';
        fty002.Caption:='Company Name : PH Garment Co. Ltd. ';
        a001.caption:='Address : Unit No. 1-5, 5/F, Star Centre, 443-451, Castle Peak Road, Kwai Chung, N.T. H.K  ';
        c002.Caption:='Samuel Leung ';t002.Caption:='852 - 26103340 ';f002.Caption:='852 - 24943350 ';
      end else if fieldbyname('tplant').value='KB' then begin
        fty001.Caption:='P.H. Garment Mfg / KB ';
        c001.Caption:='Emma ';
        t001.Caption:='037 - 290117-8 ';
        f001.Caption:='037 - 290119 ';
        e001.Caption:='emma@phgmt.com.hk ';
        fty002.Caption:='Company Name : P.H. Garment Mfg (Thailand) Co. Ltd. ';
        a001.caption:='Address : 217/1-7 Moo 5 Tambon Nonsi Amphur Kabinburi, Prochinburi 25110, Thailand ';
        c002.Caption:='Saranya ';t002.Caption:='037 - 290117-8 ';f002.Caption:='037 - 290119 ';
      end;
      //fty001.Caption:=fieldbyname('tplant').value else fty001.Caption:='';
    end else begin
    end;
  end;
  d0001.Caption:='';d0002.Caption:='';d0003.Caption:='';d0004.Caption:='';d0005.Caption:='';d0006.Caption:='';d0007.Caption:='';d0008.Caption:='';d0009.Caption:='';
  d0011.Caption:='';d0012.Caption:='';d0013.Caption:='';d0014.Caption:='';d0015.Caption:='';d0016.Caption:='';d0017.Caption:='';d0018.Caption:='';d0019.Caption:='';
  d0021.Caption:='';d0022.Caption:='';d0023.Caption:='';d0024.Caption:='';d0025.Caption:='';d0026.Caption:='';d0027.Caption:='';d0028.Caption:='';d0029.Caption:='';
  d0031.Caption:='';d0032.Caption:='';d0033.Caption:='';d0034.Caption:='';d0035.Caption:='';d0036.Caption:='';d0037.Caption:='';d0038.Caption:='';d0039.Caption:='';
  d0041.Caption:='';d0042.Caption:='';d0043.Caption:='';d0044.Caption:='';d0045.Caption:='';d0046.Caption:='';d0047.Caption:='';d0048.Caption:='';d0049.Caption:='';
  d0051.Caption:='';d0052.Caption:='';d0053.Caption:='';d0054.Caption:='';d0055.Caption:='';d0056.Caption:='';d0057.Caption:='';d0058.Caption:='';d0059.Caption:='';
  d0061.Caption:='';d0062.Caption:='';d0063.Caption:='';d0064.Caption:='';d0065.Caption:='';d0066.Caption:='';d0067.Caption:='';d0068.Caption:='';d0069.Caption:='';
  d0071.Caption:='';d0072.Caption:='';d0073.Caption:='';d0074.Caption:='';d0075.Caption:='';d0076.Caption:='';d0077.Caption:='';d0078.Caption:='';d0079.Caption:='';
  d0081.Caption:='';d0082.Caption:='';d0083.Caption:='';d0084.Caption:='';d0085.Caption:='';d0086.Caption:='';d0087.Caption:='';d0088.Caption:='';d0089.Caption:='';
  d0101.Caption:='';d0102.Caption:='';d0103.Caption:='';d0104.Caption:='';d0105.Caption:='';d0106.Caption:='';d0107.Caption:='';d0108.Caption:='';d0109.Caption:='';
  d0111.Caption:='';d0112.Caption:='';d0113.Caption:='';d0114.Caption:='';d0115.Caption:='';d0116.Caption:='';d0117.Caption:='';d0118.Caption:='';d0119.Caption:='';
  i:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct custpo,cstyle,sum(sqty) as q1,sum(box) as q2,sum(wght) as q3,sum(cbm) as q4,dest from tbl_pdn_pack '
                +'where seq=:x1 and seq1=:x2 group by custpo,cstyle,dest order by custpo';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        d0001.Caption:=fieldbyname('custpo').value;
        d0002.Caption:=fieldbyname('cstyle').value;
        d0003.Caption:=fieldbyname('q1').asstring;
        d0004.Caption:='EA';
        d0005.Caption:=fieldbyname('q2').asstring;
        d0006.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0007.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0008.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0009.Caption:=fieldbyname('dest').value;
      end else if i=2 then begin
        d0011.Caption:=fieldbyname('custpo').value;
        d0012.Caption:=fieldbyname('cstyle').value;
        d0013.Caption:=fieldbyname('q1').asstring;
        d0014.Caption:='EA';
        d0015.Caption:=fieldbyname('q2').asstring;
        d0016.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0017.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0018.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0019.Caption:=fieldbyname('dest').value;
      end else if i=3 then begin
        d0021.Caption:=fieldbyname('custpo').value;
        d0022.Caption:=fieldbyname('cstyle').value;
        d0023.Caption:=fieldbyname('q1').asstring;
        d0024.Caption:='EA';
        d0025.Caption:=fieldbyname('q2').asstring;
        d0026.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0027.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0028.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0029.Caption:=fieldbyname('dest').value;
      end else if i=4 then begin
        d0031.Caption:=fieldbyname('custpo').value;
        d0032.Caption:=fieldbyname('cstyle').value;
        d0033.Caption:=fieldbyname('q1').asstring;
        d0034.Caption:='EA';
        d0035.Caption:=fieldbyname('q2').asstring;
        d0036.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0037.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0038.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0039.Caption:=fieldbyname('dest').value;
      end else if i=5 then begin
        d0041.Caption:=fieldbyname('custpo').value;
        d0042.Caption:=fieldbyname('cstyle').value;
        d0043.Caption:=fieldbyname('q1').asstring;
        d0044.Caption:='EA';
        d0045.Caption:=fieldbyname('q2').asstring;
        d0046.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0047.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0048.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0049.Caption:=fieldbyname('dest').value;
      end else if i=6 then begin
        d0051.Caption:=fieldbyname('custpo').value;
        d0052.Caption:=fieldbyname('cstyle').value;
        d0053.Caption:=fieldbyname('q1').asstring;
        d0054.Caption:='EA';
        d0055.Caption:=fieldbyname('q2').asstring;
        d0056.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0057.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0058.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0059.Caption:=fieldbyname('dest').value;
      end else if i=7 then begin
        d0061.Caption:=fieldbyname('custpo').value;
        d0062.Caption:=fieldbyname('cstyle').value;
        d0063.Caption:=fieldbyname('q1').asstring;
        d0064.Caption:='EA';
        d0065.Caption:=fieldbyname('q2').asstring;
        d0066.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0067.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0068.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0069.Caption:=fieldbyname('dest').value;
      end else if i=8 then begin
        d0071.Caption:=fieldbyname('custpo').value;
        d0072.Caption:=fieldbyname('cstyle').value;
        d0073.Caption:=fieldbyname('q1').asstring;
        d0074.Caption:='EA';
        d0075.Caption:=fieldbyname('q2').asstring;
        d0076.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0077.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0078.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0079.Caption:=fieldbyname('dest').value;
      end else if i=9 then begin
        d0081.Caption:=fieldbyname('custpo').value;
        d0082.Caption:=fieldbyname('cstyle').value;
        d0083.Caption:=fieldbyname('q1').asstring;
        d0084.Caption:='EA';
        d0085.Caption:=fieldbyname('q2').asstring;
        d0086.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0087.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0088.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0089.Caption:=fieldbyname('dest').value;
      end else if i=10 then begin
        d0101.Caption:=fieldbyname('custpo').value;
        d0102.Caption:=fieldbyname('cstyle').value;
        d0103.Caption:=fieldbyname('q1').asstring;
        d0104.Caption:='EA';
        d0105.Caption:=fieldbyname('q2').asstring;
        d0106.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0107.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0108.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0109.Caption:=fieldbyname('dest').value;
      end else if i=11 then begin
        d0111.Caption:=fieldbyname('custpo').value;
        d0112.Caption:=fieldbyname('cstyle').value;
        d0113.Caption:=fieldbyname('q1').asstring;
        d0114.Caption:='EA';
        d0115.Caption:=fieldbyname('q2').asstring;
        d0116.Caption:=formatfloat('0.00',fieldbyname('q3').value);
        d0117.Caption:=formatfloat('0.00',fieldbyname('q4').value);
        d0118.caption:=manifest001.Caption;
        if not fieldbyname('dest').isnull then d0119.Caption:=fieldbyname('dest').value;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
 