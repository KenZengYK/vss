unit print00formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppViewr,
  Db, DBClient, ppParameter;

type
  Tfrmprint00 = class(TForm)
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel59: TppLabel;
    xx03: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    subtitle01: TppLabel;
    ppLabel6: TppLabel;
    dt01: TppLabel;
    ppLabel8: TppLabel;
    dt02: TppLabel;
    ppLabel7: TppLabel;
    project1: TppLabel;
    ppLabel9: TppLabel;
    pline: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    artno2: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel39: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLabel44: TppLabel;
    ppLine34: TppLine;
    ppLabel53: TppLabel;
    ppLabel74: TppLabel;
    ppLabel78: TppLabel;
    ppLine54: TppLine;
    ppLine62: TppLine;
    ppLabel89: TppLabel;
    xdhq: TppLabel;
    ppLabel25: TppLabel;
    ppLine70: TppLine;
    ppLabel80: TppLabel;
    ppLabel87: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel116: TppLabel;
    ppLabel122: TppLabel;
    ppLabel126: TppLabel;
    ppLine67: TppLine;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel135: TppLabel;
    ppLabel134: TppLabel;
    ppLabel138: TppLabel;
    ppLabel142: TppLabel;
    ppLabel150: TppLabel;
    ppLine73: TppLine;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel136: TppLabel;
    ppLabel156: TppLabel;
    ppLine76: TppLine;
    ppLine79: TppLine;
    ppLine40: TppLine;
    ppLabel19: TppLabel;
    ppLabel42: TppLabel;
    ppLine37: TppLine;
    ppLabel23: TppLabel;
    ppLabel65: TppLabel;
    ppLine83: TppLine;
    ppLabel77: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine85: TppLine;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel60: TppLabel;
    ppLabel15: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLine13: TppLine;
    ppLine93: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel21: TppLabel;
    ppLine68: TppLine;
    ppLine72: TppLine;
    ppLabel55: TppLabel;
    ppLabel69: TppLabel;
    ppLabel22: TppLabel;
    ppLabel27: TppLabel;
    ppLine14: TppLine;
    ppLabel71: TppLabel;
    ppLabel83: TppLabel;
    ppLabel93: TppLabel;
    ppLine75: TppLine;
    ppLabel68: TppLabel;
    wks001: TppLabel;
    xx01: TppLabel;
    xx02: TppLabel;
    ppLabel111: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppShape16: TppShape;
    ppShape15: TppShape;
    ppShape14: TppShape;
    ppShape10: TppShape;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppLine4: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    artno1: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine30: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine35: TppLine;
    ppDBText12: TppDBText;
    ppLine55: TppLine;
    ppLine57: TppLine;
    ppDBText28: TppDBText;
    ppLine59: TppLine;
    ppDBText29: TppDBText;
    ppLine56: TppLine;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine63: TppLine;
    ppDBText9: TppDBText;
    ppLine71: TppLine;
    ppLine44: TppLine;
    ppLine74: TppLine;
    ppDBText36: TppDBText;
    ppDBText39: TppDBText;
    ppLine29: TppLine;
    ppDBText35: TppDBText;
    ppLine45: TppLine;
    ppDBText34: TppDBText;
    ppLine66: TppLine;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLine36: TppLine;
    ppDBText43: TppDBText;
    ppLine82: TppLine;
    ppDBText8: TppDBText;
    ppLine84: TppLine;
    ppDBText45: TppDBText;
    ppLine86: TppLine;
    ppDBText48: TppDBText;
    ppLine90: TppLine;
    ppDBText49: TppDBText;
    ppLine94: TppLine;
    ppDBText22: TppDBText;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine95: TppLine;
    ppDBText44: TppDBText;
    ppLine16: TppLine;
    ppLine31: TppLine;
    ppDBText27: TppDBText;
    ppDBText50: TppDBText;
    ppLine65: TppLine;
    ppDBText38: TppDBText;
    ppDBText37: TppDBText;
    ppDBText51: TppDBText;
    ppLine96: TppLine;
    ppDBText52: TppDBText;
    ppLabel108: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    zphisjs: TppDBCalc;
    zzjs: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    pttl1: TppLabel;
    pttl2: TppLabel;
    ppDBCalc4: TppDBCalc;
    pttl3: TppLabel;
    avgtmu: TppLabel;
    ppLabel2: TppLabel;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLabel28: TppLabel;
    ppLabel31: TppLabel;
    ppDBText3: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText4: TppDBText;
    ppLine28: TppLine;
    ppLine38: TppLine;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppDBText11: TppDBText;
    ppLabel48: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppDBText18: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText23: TppDBText;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel61: TppLabel;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel62: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprint00: Tfrmprint00;

implementation

uses worksheet, printscheduleu;

{$R *.dfm}

procedure Tfrmprint00.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmprint00.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  {
  with frmprintschedule.ClientDataSet4 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if frmprintschedule.checkbox2.Checked then begin
      commandtext:='select sum(ysjhl*zjs)/sum(zjs) as jhl0 from tempshedule_sqn where dt=:x1 and zjs>0';
    end else begin
      commandtext:='select sum(ysjhl*zjs)/sum(zjs) as jhl0 from tempshedule where dt=:x1 and zjs>0';
    end;
    params[0].asdatetime:=frmprintschedule.ClientDataSet1.fieldbyname('dt').value;
    open;
    if not fieldbyname('jhl0').isnull then pjys01.Caption:=formatfloat('0.0',fieldbyname('jhl0').value)
    else pjys01.Caption:='0.0';
  end;
  with frmprintschedule.ClientDataSet4 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if frmprintschedule.checkbox2.Checked then begin
      commandtext:='select sum(jhl*zjs)/sum(zjs) as jhl1 from tempshedule_sqn where dt=:x1 and jhl>0 and zjs>0';
    end else begin
      commandtext:='select sum(jhl*zjs)/sum(zjs) as jhl1 from tempshedule where dt=:x1 and jhl>0 and zjs>0';
    end;
    params[0].asdatetime:=frmprintschedule.ClientDataSet1.fieldbyname('dt').value;
    open;
    if not fieldbyname('jhl1').isnull then pjjhl.Caption:=formatfloat('0.0',fieldbyname('jhl1').value)
    else pjjhl.Caption:='0.0';
  end;
  }
end;

end.
 