unit fcdyu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, myChkBox, ppCtrls, ppStrtch, ppRegion, ppBands, ppClass,
  ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, ppViewr, ppMemo, ADODB, ppParameter;

type
  Tfrmfcdy = class(TForm)
    ppBDEPipeline2: TppBDEPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel35: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel36: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel42: TppLabel;
    ppDBText20: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppRegion1: TppRegion;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppDBText2: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel55: TppLabel;
    ppDBText16: TppDBText;
    ppLabel27: TppLabel;
    ppLine1: TppLine;
    ppLabel28: TppLabel;
    ppLine7: TppLine;
    ppDBText13: TppDBText;
    ppLabel29: TppLabel;
    ppDBText15: TppDBText;
    ppLine9: TppLine;
    ppLabel30: TppLabel;
    ppLine15: TppLine;
    ppLabel34: TppLabel;
    ppLine16: TppLine;
    ppLabel39: TppLabel;
    ppLine17: TppLine;
    ppLabel40: TppLabel;
    ppLine18: TppLine;
    ppDBText14: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
    myDBCheckBox6: TmyDBCheckBox;
    myDBCheckBox7: TmyDBCheckBox;
    myDBCheckBox8: TmyDBCheckBox;
    myDBCheckBox9: TmyDBCheckBox;
    myDBCheckBox10: TmyDBCheckBox;
    myDBCheckBox11: TmyDBCheckBox;
    myDBCheckBox12: TmyDBCheckBox;
    myDBCheckBox13: TmyDBCheckBox;
    myDBCheckBox14: TmyDBCheckBox;
    myDBCheckBox15: TmyDBCheckBox;
    tm: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText17: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel41: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    js: TppLabel;
    ppLabel26: TppLabel;
    mjjs: TppLabel;
    khfooterband: TppGroupFooterBand;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    cm1: TppLabel;
    cm2: TppLabel;
    cm3: TppLabel;
    cm4: TppLabel;
    cm5: TppLabel;
    cm6: TppLabel;
    cm7: TppLabel;
    cm8: TppLabel;
    cm9: TppLabel;
    cm10: TppLabel;
    cm11: TppLabel;
    cm12: TppLabel;
    cm13: TppLabel;
    cm14: TppLabel;
    cm15: TppLabel;
    cm16: TppLabel;
    cm17: TppLabel;
    cm18: TppLabel;
    cm19: TppLabel;
    cm20: TppLabel;
    cm21: TppLabel;
    cm22: TppLabel;
    dz1: TppLabel;
    dz2: TppLabel;
    dz3: TppLabel;
    dz4: TppLabel;
    dz5: TppLabel;
    dz6: TppLabel;
    dz7: TppLabel;
    dz8: TppLabel;
    dz9: TppLabel;
    dz10: TppLabel;
    dz11: TppLabel;
    dz12: TppLabel;
    dz13: TppLabel;
    dz14: TppLabel;
    dz15: TppLabel;
    dz16: TppLabel;
    dz17: TppLabel;
    dz18: TppLabel;
    dz19: TppLabel;
    dz20: TppLabel;
    dz21: TppLabel;
    dz22: TppLabel;
    ppLine3: TppLine;
    cm23: TppLabel;
    cm24: TppLabel;
    cm25: TppLabel;
    cm26: TppLabel;
    cm27: TppLabel;
    cm28: TppLabel;
    cm29: TppLabel;
    cm30: TppLabel;
    cm31: TppLabel;
    cm32: TppLabel;
    cm33: TppLabel;
    dz23: TppLabel;
    dz24: TppLabel;
    dz25: TppLabel;
    dz26: TppLabel;
    dz27: TppLabel;
    dz28: TppLabel;
    dz29: TppLabel;
    dz30: TppLabel;
    dz31: TppLabel;
    dz32: TppLabel;
    dz33: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    dsfcjh: TDataSource;
    ppMemo1: TppMemo;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    cm34: TppLabel;
    cm35: TppLabel;
    cm36: TppLabel;
    cm37: TppLabel;
    cm38: TppLabel;
    cm39: TppLabel;
    cm40: TppLabel;
    cm41: TppLabel;
    cm42: TppLabel;
    cm43: TppLabel;
    cm44: TppLabel;
    dz34: TppLabel;
    dz35: TppLabel;
    dz36: TppLabel;
    dz37: TppLabel;
    dz38: TppLabel;
    dz39: TppLabel;
    dz40: TppLabel;
    dz41: TppLabel;
    dz42: TppLabel;
    dz43: TppLabel;
    dz44: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    cm012: TppLabel;
    cm024: TppLabel;
    dz012: TppLabel;
    dz024: TppLabel;
    cm036: TppLabel;
    dz036: TppLabel;
    cm048: TppLabel;
    dz048: TppLabel;
    cm45: TppLabel;
    cm46: TppLabel;
    cm47: TppLabel;
    cm48: TppLabel;
    cm49: TppLabel;
    cm50: TppLabel;
    cm51: TppLabel;
    cm52: TppLabel;
    cm53: TppLabel;
    cm54: TppLabel;
    cm55: TppLabel;
    dz45: TppLabel;
    dz46: TppLabel;
    dz47: TppLabel;
    dz48: TppLabel;
    dz49: TppLabel;
    dz50: TppLabel;
    dz51: TppLabel;
    dz52: TppLabel;
    dz53: TppLabel;
    dz54: TppLabel;
    dz55: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    cm060: TppLabel;
    dz060: TppLabel;
    cm56: TppLabel;
    cm57: TppLabel;
    cm58: TppLabel;
    cm59: TppLabel;
    cm60: TppLabel;
    cm61: TppLabel;
    cm62: TppLabel;
    cm63: TppLabel;
    cm64: TppLabel;
    cm65: TppLabel;
    cm66: TppLabel;
    dz56: TppLabel;
    dz57: TppLabel;
    dz58: TppLabel;
    dz59: TppLabel;
    dz60: TppLabel;
    dz61: TppLabel;
    dz62: TppLabel;
    dz63: TppLabel;
    dz64: TppLabel;
    dz65: TppLabel;
    dz66: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    cm072: TppLabel;
    dz072: TppLabel;
    fcjh: TADOQuery;
    fcjh1: TADOQuery;
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure khfooterbandBeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfcdy: Tfrmfcdy;

implementation
uses mainu, fcjyu;
{$R *.DFM}

procedure Tfrmfcdy.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmfcdy.khfooterbandBeforePrint(Sender: TObject);
var
  i:integer;
begin
  cm1.caption:='';cm2.caption:='';cm3.caption:='';cm4.caption:='';
  cm5.caption:='';cm6.caption:='';cm7.caption:='';cm8.caption:='';
  cm9.caption:='';cm10.caption:='';cm11.caption:=''; cm012.caption:='';
  cm12.caption:='';cm13.caption:='';cm14.caption:='';cm15.caption:='';
  cm16.caption:='';cm17.caption:='';cm18.caption:='';cm19.caption:='';
  cm20.caption:='';cm21.caption:='';cm22.caption:=''; cm024.Caption:='';
  cm23.caption:='';cm24.caption:='';cm25.caption:='';cm26.caption:='';
  cm27.caption:='';cm28.caption:='';cm29.caption:='';cm30.caption:='';
  cm31.caption:='';cm32.caption:='';cm33.caption:=''; cm036.Caption:='';
  cm34.caption:='';cm35.caption:='';cm36.caption:='';cm37.caption:='';
  cm38.caption:='';cm39.caption:='';cm40.caption:='';cm41.caption:='';
  cm42.caption:='';cm43.caption:='';cm44.caption:=''; cm048.Caption:='';
  cm45.Caption:='';cm46.Caption:='';cm47.Caption:='';cm48.Caption:='';
  cm49.Caption:='';cm50.Caption:='';cm51.Caption:='';cm52.Caption:='';
  cm53.Caption:='';cm54.Caption:='';cm55.Caption:=''; cm060.Caption:='';
  cm56.Caption:='';cm57.Caption:='';cm58.Caption:='';cm59.Caption:='';
  cm60.Caption:='';cm61.Caption:='';cm62.Caption:='';cm63.Caption:='';
  cm64.Caption:='';cm65.Caption:='';cm66.Caption:=''; cm072.Caption:='';
  dz1.caption:='';dz2.caption:='';dz3.caption:='';dz4.caption:='';
  dz5.caption:='';dz6.caption:='';dz7.caption:='';dz8.caption:='';
  dz9.caption:='';dz10.caption:='';dz11.caption:=''; dz012.Caption:='';
  dz12.caption:='';dz13.caption:='';dz14.caption:='';dz15.caption:='';
  dz16.caption:='';dz17.caption:='';dz18.caption:='';dz19.caption:='';
  dz20.caption:='';dz21.caption:='';dz22.caption:=''; dz024.Caption:='';
  dz23.caption:='';dz24.caption:='';dz25.caption:='';dz26.caption:='';
  dz27.caption:='';dz28.caption:='';dz29.caption:='';dz30.caption:='';
  dz31.caption:='';dz32.caption:='';dz33.caption:=''; dz036.Caption:='';
  dz34.caption:='';dz35.caption:='';dz36.caption:='';dz37.caption:='';
  dz38.caption:='';dz39.caption:='';dz40.caption:='';dz41.caption:='';
  dz42.caption:='';dz43.caption:='';dz44.caption:=''; dz048.Caption:='';
  dz45.Caption:='';dz46.Caption:='';dz47.Caption:='';dz48.Caption:='';
  dz49.Caption:='';dz50.Caption:='';dz51.Caption:='';dz52.Caption:='';
  dz53.Caption:='';dz54.Caption:='';dz55.Caption:=''; dz060.Caption:='';
  dz56.Caption:='';dz57.Caption:='';dz58.Caption:='';dz59.Caption:='';
  dz60.Caption:='';dz61.Caption:='';dz62.Caption:='';dz63.Caption:='';
  dz64.Caption:='';dz65.Caption:='';dz66.Caption:=''; dz072.Caption:='';
  i:=0;
  with fcjh1 do begin
    close;
    sql.text:='select id,cm,sj as dzs from cut_fcjy2 where prjno=:prjno and wl=:wl and xh=:xh and kh=:kh and sj>0';
    parameters[0].value:=fcjh.fieldbyname('prjno').value;
    parameters[1].value:=fcjh.fieldbyname('wl').value;
    parameters[2].value:=fcjh.fieldbyname('xh').value;
    parameters[3].value:=fcjh.fieldbyname('kh').value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        cm1.Caption:=fieldbyname('cm').value;
        dz1.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=2 then begin
        cm2.Caption:=fieldbyname('cm').value;
        dz2.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=3 then begin
        cm3.Caption:=fieldbyname('cm').value;
        dz3.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=4 then begin
        cm4.Caption:=fieldbyname('cm').value;
        dz4.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=5 then begin
        cm5.Caption:=fieldbyname('cm').value;
        dz5.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=6 then begin
        cm6.Caption:=fieldbyname('cm').value;
        dz6.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=7 then begin
        cm7.Caption:=fieldbyname('cm').value;
        dz7.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=8 then begin
        cm8.Caption:=fieldbyname('cm').value;
        dz8.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=9 then begin
        cm9.Caption:=fieldbyname('cm').value;
        dz9.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=10 then begin
        cm10.Caption:=fieldbyname('cm').value;
        dz10.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=11 then begin
        cm11.Caption:=fieldbyname('cm').value;
        dz11.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=12 then begin
        cm012.Caption:=fieldbyname('cm').value;
        dz012.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=13 then begin
        cm12.Caption:=fieldbyname('cm').value;
        dz12.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=14 then begin
        cm13.Caption:=fieldbyname('cm').value;
        dz13.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=15 then begin
        cm14.Caption:=fieldbyname('cm').value;
        dz14.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=16 then begin
        cm15.Caption:=fieldbyname('cm').value;
        dz15.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=17 then begin
        cm16.Caption:=fieldbyname('cm').value;
        dz16.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=18 then begin
        cm17.Caption:=fieldbyname('cm').value;
        dz17.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=19 then begin
        cm18.Caption:=fieldbyname('cm').value;
        dz18.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=20 then begin
        cm19.Caption:=fieldbyname('cm').value;
        dz19.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=21 then begin
        cm20.Caption:=fieldbyname('cm').value;
        dz20.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=22 then begin
        cm21.Caption:=fieldbyname('cm').value;
        dz21.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=23 then begin
        cm22.Caption:=fieldbyname('cm').value;
        dz22.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=24 then begin
        cm024.Caption:=fieldbyname('cm').value;
        dz024.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=25 then begin
        cm23.Caption:=fieldbyname('cm').value;
        dz23.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=26 then begin
        cm24.Caption:=fieldbyname('cm').value;
        dz24.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=27 then begin
        cm25.Caption:=fieldbyname('cm').value;
        dz25.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=28 then begin
        cm26.Caption:=fieldbyname('cm').value;
        dz26.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=29 then begin
        cm27.Caption:=fieldbyname('cm').value;
        dz27.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=30 then begin
        cm28.Caption:=fieldbyname('cm').value;
        dz28.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=31 then begin
        cm29.Caption:=fieldbyname('cm').value;
        dz29.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=32 then begin
        cm30.Caption:=fieldbyname('cm').value;
        dz30.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=33 then begin
        cm31.Caption:=fieldbyname('cm').value;
        dz31.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=34 then begin
        cm32.Caption:=fieldbyname('cm').value;
        dz32.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=35 then begin
        cm33.Caption:=fieldbyname('cm').value;
        dz33.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=36 then begin
        cm036.Caption:=fieldbyname('cm').value;
        dz036.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=37 then begin
        cm34.Caption:=fieldbyname('cm').value;
        dz34.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=38 then begin
        cm35.Caption:=fieldbyname('cm').value;
        dz35.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=39 then begin
        cm36.Caption:=fieldbyname('cm').value;
        dz36.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=40 then begin
        cm37.Caption:=fieldbyname('cm').value;
        dz37.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=41 then begin
        cm38.Caption:=fieldbyname('cm').value;
        dz38.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=42 then begin
        cm39.Caption:=fieldbyname('cm').value;
        dz39.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=43 then begin
        cm40.Caption:=fieldbyname('cm').value;
        dz40.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=44 then begin
        cm41.Caption:=fieldbyname('cm').value;
        dz41.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=45 then begin
        cm42.Caption:=fieldbyname('cm').value;
        dz42.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=46 then begin
        cm43.Caption:=fieldbyname('cm').value;
        dz43.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=47 then begin
        cm44.Caption:=fieldbyname('cm').value;
        dz44.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=48 then begin
        cm048.Caption:=fieldbyname('cm').value;
        dz048.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=49 then begin
        cm45.Caption:=fieldbyname('cm').value;
        dz45.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=50 then begin
        cm46.Caption:=fieldbyname('cm').value;
        dz46.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=51 then begin
        cm47.Caption:=fieldbyname('cm').value;
        dz47.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=52 then begin
        cm48.Caption:=fieldbyname('cm').value;
        dz48.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=53 then begin
        cm49.Caption:=fieldbyname('cm').value;
        dz49.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=54 then begin
        cm50.Caption:=fieldbyname('cm').value;
        dz50.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=55 then begin
        cm51.Caption:=fieldbyname('cm').value;
        dz51.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=56 then begin
        cm52.Caption:=fieldbyname('cm').value;
        dz52.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=57 then begin
        cm53.Caption:=fieldbyname('cm').value;
        dz53.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=58 then begin
        cm54.Caption:=fieldbyname('cm').value;
        dz54.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=59 then begin
        cm55.Caption:=fieldbyname('cm').value;
        dz55.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=60 then begin
        cm060.Caption:=fieldbyname('cm').value;
        dz060.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=61 then begin
        cm56.Caption:=fieldbyname('cm').value;
        dz56.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=62 then begin
        cm57.Caption:=fieldbyname('cm').value;
        dz57.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=63 then begin
        cm58.Caption:=fieldbyname('cm').value;
        dz58.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=64 then begin
        cm59.Caption:=fieldbyname('cm').value;
        dz59.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=65 then begin
        cm60.Caption:=fieldbyname('cm').value;
        dz60.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=66 then begin
        cm61.Caption:=fieldbyname('cm').value;
        dz61.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=67 then begin
        cm62.Caption:=fieldbyname('cm').value;
        dz62.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=68 then begin
        cm63.Caption:=fieldbyname('cm').value;
        dz63.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=69 then begin
        cm64.Caption:=fieldbyname('cm').value;
        dz64.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=70 then begin
        cm65.Caption:=fieldbyname('cm').value;
        dz65.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=71 then begin
        cm66.Caption:=fieldbyname('cm').value;
        dz66.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;
      if i=72 then begin
        cm072.Caption:=fieldbyname('cm').value;
        dz072.Caption:=formatfloat('0.0',fieldbyname('dzs').value);
      end;

      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmfcdy.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  with frmfcjy.aquery1 do begin
    close;
    sql.text:='select tm from cut_lbtz where prjno=:prjno and xh=:xh and wl=:wl';
    parameters[0].value:=fcjh.fieldbyname('prjno').value;
    parameters[1].value:=fcjh.fieldbyname('xh').value;
    parameters[2].value:=fcjh.fieldbyname('wl').value;
    open;
    if recordcount>0 then begin
      tm.Caption:='�q�X';
    end
    else begin
      tm.caption:='';
    end;
  end;
end;

procedure Tfrmfcdy.ppGroupHeaderBand3BeforePrint(Sender: TObject);
begin
  js.caption:='';mjjs.Caption:='';
  with frmfcjy.aquery1 do begin
    close;
    sql.text:='select xh from cut_fcjy2 where prjno=:prjno and wl=:wl order by xh desc';
    parameters[0].value:=fcjh.fieldbyname('prjno').value;
    parameters[1].value:=fcjh.fieldbyname('wl').value;
    open;
    if not fieldbyname('xh').isnull then js.Caption:=fieldbyname('xh').value;
    {close;
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    params.createparam(ftstring,'wl',ptinput);
    params.createparam(ftinteger,'xh',ptinput);
    params.createparam(ftstring,'kh',ptinput);
    commandtext:='select sum(sj) as mjjs from fcjy2 where prjno=:prjno and wl=:wl and xh=:xh and kh=:kh';
    params[0].asstring:=fcjh.fieldbyname('prjno').value;
    params[1].asstring:=fcjh.fieldbyname('wl').value;
    params[2].asinteger:=fcjh.fieldbyname('xh').value;
    params[3].asstring:=fcjh.fieldbyname('kh').value;
    open;
    if not fieldbyname('mjjs').isnull then mjjs.caption:=formatfloat('#0.0',fieldbyname('mjjs').asfloat);}
  end;
  with fcjh1 do begin
    close;
    sql.text:='select sum(zds+jc-ys) as mjjs from cut_fcjy2 where prjno=:prjno and wl=:wl and xh=:xh and kh=:kh';
    parameters[0].value:=fcjh.fieldbyname('prjno').value;
    parameters[1].value:=fcjh.fieldbyname('wl').value;
    parameters[2].value:=fcjh.fieldbyname('xh').value;
    parameters[3].value:=fcjh.fieldbyname('kh').value;
    open;
    if not fieldbyname('mjjs').isnull then
    mjjs.caption:=formatfloat('#0.0',fieldbyname('mjjs').asfloat)
    else mjjs.caption:='0.0';
  end;
  //mjjs.caption:=formatfloat('#0.0',fcjh.fieldbyname('mjjs').asfloat);
end;

end.
