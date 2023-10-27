unit dailyqnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ppDB, ppDBPipe, ppDBBDE, ppBands, ppClass,
  ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppParameter;

type
  Tfrmdailyqn = class(TForm)
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    line01: TppLabel;
    ppLabel14: TppLabel;
    date01: TppLabel;
    ppLabel16: TppLabel;
    date02: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel30: TppLabel;
    sj01: TppLabel;
    ppLabel31: TppLabel;
    sj02: TppLabel;
    ppLabel32: TppLabel;
    sj03: TppLabel;
    ppLabel34: TppLabel;
    sj04: TppLabel;
    ppLabel35: TppLabel;
    sj05: TppLabel;
    ppLabel37: TppLabel;
    sj11: TppLabel;
    ppLabel39: TppLabel;
    sj12: TppLabel;
    ppLabel41: TppLabel;
    sj13: TppLabel;
    ppLabel43: TppLabel;
    sj14: TppLabel;
    ppLabel45: TppLabel;
    sj15: TppLabel;
    ppLabel38: TppLabel;
    tshop01: TppLabel;
    ppShape2: TppShape;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine5: TppLine;
    ppLabel29: TppLabel;
    ppLabel33: TppLabel;
    ppLine6: TppLine;
    ppLabel36: TppLabel;
    ppLabel46: TppLabel;
    ppLine8: TppLine;
    ppLabel47: TppLabel;
    ppLine9: TppLine;
    ppLabel48: TppLabel;
    ppLine10: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine16: TppLine;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine7: TppLine;
    ppLabel24: TppLabel;
    ppLine19: TppLine;
    tst01: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine22: TppLine;
    ppLabel57: TppLabel;
    ppLabel60: TppLabel;
    ppLabel69: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    wday1: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ottl002: TppDBCalc;
    gross002: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ttl002: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    OCU002: TppLabel;
    DCU002: TppLabel;
    ppLabel63: TppLabel;
    ppLine25: TppLine;
    ppLabel65: TppLabel;
    ppMemo1: TppMemo;
    ppLabel68: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    gross001: TppDBCalc;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    S01: TppLabel;
    S02: TppLabel;
    s03: TppLabel;
    ppDBCalc7: TppDBCalc;
    ttl001: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ottl001: TppDBCalc;
    ocu001: TppLabel;
    dcu001: TppLabel;
    DataSource2: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ClientDataSet3: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine26: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine27: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBText3: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel10: TppLabel;
    ppLine28: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppDBText4: TppDBText;
    bcu001: TppLabel;
    bcu002: TppLabel;
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdailyqn: Tfrmdailyqn;

implementation

uses mainformu, currcalformu;

{$R *.dfm}

procedure Tfrmdailyqn.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmdailyqn.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(ttl*100.0)/sum(ottl) as ocu,sum(ttl*100.0)/sum(csect) as dcu,sum(ttl*100.0)/sum(workero) as bcu from week52_tmp_1 where tm=:x1';
    params[0].asdatetime:=clientdataset3.fieldbyname('tm').value;
    open;
    if not fieldbyname('ocu').isnull then ocu002.Caption:=formatfloat('0.00',fieldbyname('ocu').Value) else ocu002.Caption:='0.00';
    if not fieldbyname('dcu').isnull then dcu002.Caption:=formatfloat('0.00',fieldbyname('dcu').Value) else dcu002.Caption:='0.00';
    if not fieldbyname('bcu').isnull then bcu002.Caption:=formatfloat('0.00',fieldbyname('bcu').Value) else bcu002.Caption:='0.00';
  end;
  ppmemo1.Lines.Clear;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct line,date1,emarks from week52_tmp_1 where tm=:x1 and emarks>''''';
    commandtext:=commandtext+' order by line,date1';
    params[0].asdatetime:=clientdataset3.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      ppmemo1.Lines.Add(fieldbyname('line').value+'  '+formatdatetime('yy/MM/dd',fieldbyname('date1').value)+': '+fieldbyname('emarks').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmdailyqn.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  s01.Caption:='';
  s02.Caption:='';
  s03.Caption:='';
{
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x0',ptinput);
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct wday,count(distinct date1) as cnt from week52_tmp_1 where line=:x0 and tm=:x1 group by wday';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdatetime:=clientdataset3.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('wday').value='S' then s01.Caption:=fieldbyname('cnt').asstring
      else if fieldbyname('wday').value='P' then s02.Caption:=fieldbyname('cnt').asstring
      else if fieldbyname('wday').value='-' then s03.Caption:=fieldbyname('cnt').asstring;
      application.ProcessMessages;
      next;
    end;
  end;
}

  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select distinct count(*) as cnt from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and wday=''S''';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=frmcurrcal.dateedit1.date;
    params[2].asdate:=frmcurrcal.dateedit2.date;
    open;
    s01.Caption:=fieldbyname('cnt').asstring;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select distinct count(*) as cnt from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and wday=''P''';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=frmcurrcal.dateedit1.date;
    params[2].asdate:=frmcurrcal.dateedit2.date;
    open;
    s02.Caption:=fieldbyname('cnt').asstring;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select distinct count(*) as cnt from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and csect>0';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=frmcurrcal.dateedit1.date;
    params[2].asdate:=frmcurrcal.dateedit2.date;
    open;
    s03.Caption:=fieldbyname('cnt').asstring;
  end;

  //ocu & dcu
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select sum(ttl*100.0)/sum(ottl) as ocu,sum(ttl*100.0)/sum(csect) as dcu,sum(ttl*100.0)/sum(workero) as bcu from week52_tmp_1 where tm=:x1 and line=:x2';
    params[0].asdatetime:=clientdataset3.fieldbyname('tm').value;
    params[1].asstring:=clientdataset3.fieldbyname('line').value;
    open;
    if not fieldbyname('ocu').isnull then ocu001.Caption:=formatfloat('0.00',fieldbyname('ocu').Value) else ocu001.Caption:='0.00';
    if not fieldbyname('dcu').isnull then dcu001.Caption:=formatfloat('0.00',fieldbyname('dcu').Value) else dcu001.Caption:='0.00';
    if not fieldbyname('bcu').isnull then bcu001.Caption:=formatfloat('0.00',fieldbyname('bcu').Value) else bcu001.Caption:='0.00';
  end;
end;

end.
 