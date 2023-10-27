unit printform1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppDB, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppVar, ppViewr, Db, DBClient, ppParameter;

type
  Tfrmprint1 = class(TForm)
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
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
    ppLabel28: TppLabel;
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
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel44: TppLabel;
    ppLine34: TppLine;
    ppLine38: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel53: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel70: TppLabel;
    ppLine51: TppLine;
    ppLabel74: TppLabel;
    ppLabel78: TppLabel;
    ppLine54: TppLine;
    ppLine60: TppLine;
    ppLine62: TppLine;
    ppLabel89: TppLabel;
    xdhq: TppLabel;
    ppLabel25: TppLabel;
    ppLine49: TppLine;
    ppLabel67: TppLabel;
    ppLabel79: TppLabel;
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
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel119: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLine67: TppLine;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel135: TppLabel;
    ppLabel134: TppLabel;
    ppLabel138: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLine68: TppLine;
    ppLabel146: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLine73: TppLine;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel136: TppLabel;
    ppLabel156: TppLabel;
    ppLine76: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine40: TppLine;
    ppLabel19: TppLabel;
    ppLabel35: TppLabel;
    ppLine80: TppLine;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLine37: TppLine;
    ppLabel45: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel23: TppLabel;
    ppLine16: TppLine;
    ppLabel65: TppLabel;
    ppLabel75: TppLabel;
    ppLine83: TppLine;
    ppLabel77: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel85: TppLabel;
    ppLine85: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLabel86: TppLabel;
    ppLabel88: TppLabel;
    ppLabel91: TppLabel;
    ppLabel120: TppLabel;
    ppLabel128: TppLabel;
    ppLabel131: TppLabel;
    ppLabel137: TppLabel;
    ppLabel139: TppLabel;
    ppLabel147: TppLabel;
    ppLabel154: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel60: TppLabel;
    ppLabel15: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
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
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
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
    ppLine39: TppLine;
    ppDBText20: TppDBText;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText12: TppDBText;
    ppDBText11: TppDBText;
    ppLine53: TppLine;
    ppDBText26: TppDBText;
    ppLine55: TppLine;
    ppLine57: TppLine;
    ppDBText28: TppDBText;
    ppLine59: TppLine;
    ppDBText29: TppDBText;
    ppLine56: TppLine;
    ppLine58: TppLine;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLine61: TppLine;
    ppLine63: TppLine;
    ppDBText9: TppDBText;
    ppLine69: TppLine;
    ppDBText4: TppDBText;
    ppLine71: TppLine;
    ppDBText37: TppDBText;
    ppLine65: TppLine;
    ppLine44: TppLine;
    ppLine72: TppLine;
    ppLine74: TppLine;
    ppDBText21: TppDBText;
    ppDBText36: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText33: TppDBText;
    ppDBText27: TppDBText;
    ppLine29: TppLine;
    ppDBText35: TppDBText;
    ppLine45: TppLine;
    ppDBText34: TppDBText;
    ppLine64: TppLine;
    ppDBText40: TppDBText;
    ppLine66: TppLine;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLine81: TppLine;
    ppLine36: TppLine;
    ppDBText43: TppDBText;
    ppLine82: TppLine;
    ppDBText3: TppDBText;
    ppDBText8: TppDBText;
    ppLine84: TppLine;
    ppDBText45: TppDBText;
    ppLine86: TppLine;
    ppLine89: TppLine;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLine90: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    zphisjs: TppDBCalc;
    zzjs: TppDBCalc;
    zsclhjs: TppDBCalc;
    pjjhl: TppLabel;
    xx1: TppDBCalc;
    xx2: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    pttl1: TppLabel;
    pttl2: TppLabel;
    ppDBCalc4: TppDBCalc;
    zqyjs1: TppDBCalc;
    pttl3: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel166: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText25: TppDBText;
    ppLine75: TppLine;
    ppLine91: TppLine;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel76: TppLabel;
    ppLabel118: TppLabel;
    ppLabel144: TppLabel;
    ppDBText49: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText50: TppDBText;
    ppShape12: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape13: TppShape;
    ppLabel59: TppLabel;
    ppShape14: TppShape;
    avgtmu: TppLabel;
    ppLabel5: TppLabel;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLabel21: TppLabel;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLabel22: TppLabel;
    ppLabel41: TppLabel;
    ppLabel68: TppLabel;
    ppDBText22: TppDBText;
    pjys01: TppLabel;
    ppLine96: TppLine;
    ppDBText44: TppDBText;
    ppLine50: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine52: TppLine;
    ppLabel27: TppLabel;
    wks002: TppLabel;
    ppDBText18: TppDBText;
    ppLine77: TppLine;
    ppShape15: TppShape;
    ppDBText51: TppDBText;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel43: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprint1: Tfrmprint1;

implementation

uses worksheet, printscheduleu;

{$R *.DFM}

procedure Tfrmprint1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmprint1.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  if worksheet1.speedbutton4.Visible=true then begin
    if worksheet1.edit1.text>'' then begin
      with frmprintschedule.ClientDataSet4 do begin
        close;
        params.clear;
        commandtext:='select sum(eff1*csect)/sum(csect) as s1,sum(eff2*csect)/sum(csect) as s2 from line_shjs where flag=''0'' and j_no='''+worksheet1.Edit1.text+''' and csect>0';
        open;
        if not fieldbyname('s1').isnull then pjys01.Caption:=formatfloat('0.00',fieldbyname('s1').value)
        else pjys01.Caption:='N.A.';
        if not fieldbyname('s2').isnull then pjjhl.Caption:=formatfloat('0.00',fieldbyname('s2').value)
        else pjjhl.Caption:='0.00';
      end;
    end else if (worksheet1.edit8.text>'') and (worksheet1.edit7.text>'') then begin
      with frmprintschedule.ClientDataSet4 do begin
        close;
        params.clear;
        commandtext:='select sum(eff1*csect)/sum(csect) as s1,sum(eff2*csect)/sum(csect) as s2 from v_ga_eff_new where cust='''+worksheet1.edit7.text+''' and jhrs='''+worksheet1.Edit8.text+''' and yzh=1 and csect>0';
        open;
        if not fieldbyname('s1').isnull then pjys01.Caption:=formatfloat('0.00',fieldbyname('s1').value)
        else pjys01.Caption:='N.A.';
        if not fieldbyname('s2').isnull then pjjhl.Caption:=formatfloat('0.00',fieldbyname('s2').value)
        else pjjhl.Caption:='0.00';
      end;
    end else begin
      with frmprintschedule.ClientDataSet4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        //commandtext:='select sum(ysjhl*zjs)/sum(zjs) as jhl0,sum(jhl*zjs)/sum(zjs) as jhl1 from tempshedule where dt=:x1';
        commandtext:='select sum(ysjhl*zjs)/sum(zjs) as jhl0 from tempshedule where dt=:x1';
        params[0].asdatetime:=frmprintschedule.ClientDataSet1.fieldbyname('dt').value;
        open;
        if not fieldbyname('jhl0').isnull then pjys01.Caption:=formatfloat('0.0',fieldbyname('jhl0').value)
        else pjys01.Caption:='0.0';
      end;
      with frmprintschedule.ClientDataSet4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select sum(jhl*zjs)/sum(zjs) as jhl1 from tempshedule where dt=:x1 and jhl>0';
        params[0].asdatetime:=frmprintschedule.ClientDataSet1.fieldbyname('dt').value;
        open;
        if not fieldbyname('jhl1').isnull then pjjhl.Caption:=formatfloat('0.0',fieldbyname('jhl1').value)
        else pjjhl.Caption:='0.0';
      end;
    end;
  end else begin
    with frmprintschedule.ClientDataSet4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select sum(ysjhl*zjs)/sum(zjs) as jhl0,sum(jhl*zjs)/sum(zjs) as jhl1 from tempshedule where dt=:x1';
      commandtext:='select sum(ysjhl*zjs)/sum(zjs) as jhl0 from tempshedule where dt=:x1';
      params[0].asdatetime:=frmprintschedule.ClientDataSet1.fieldbyname('dt').value;
      open;
      if not fieldbyname('jhl0').isnull then pjys01.Caption:=formatfloat('0.0',fieldbyname('jhl0').value)
      else pjys01.Caption:='0.0';
    end;
    with frmprintschedule.ClientDataSet4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select sum(jhl*zjs)/sum(zjs) as jhl1 from tempshedule where dt=:x1 and jhl>0';
      params[0].asdatetime:=frmprintschedule.ClientDataSet1.fieldbyname('dt').value;
      open;
      if not fieldbyname('jhl1').isnull then pjjhl.Caption:=formatfloat('0.0',fieldbyname('jhl1').value)
      else pjjhl.Caption:='0.0';
    end;
  end;
end;

end.
