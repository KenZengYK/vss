unit dfgxly2u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ppMemo, ppCtrls, ppBands, ppStrtch, ppRegion,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppDBBDE, ppViewr, Txcomp;

type
  Tfrmdfgxly2 = class(TForm)
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppRegion1: TppRegion;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppLine14: TppLine;
    ppLabel13: TppLabel;
    ppLine16: TppLine;
    ppLine19: TppLine;
    ppLabel12: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine40: TppLine;
    ppLine47: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLabel14: TppLabel;
    ppLabel24: TppLabel;
    ppLine7: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine12: TppLine;
    ppLine50: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel11: TppLabel;
    ppLine51: TppLine;
    ppLabel31: TppLabel;
    ppLine53: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine5: TppLine;
    ppLine57: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine8: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBText36: TppDBText;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    zsj01: TppLabel;
    zsj02: TppLabel;
    zsj03: TppLabel;
    zsj04: TppLabel;
    zdj01: TppLabel;
    zdj02: TppLabel;
    zdj03: TppLabel;
    zdj04: TppLabel;
    ppLabel59: TppLabel;
    ppDBText37: TppDBText;
    ppLabel89: TppLabel;
    ppDBText52: TppDBText;
    ppLabel60: TppLabel;
    ppLabel99: TppLabel;
    ppDBText74: TppDBText;
    ppLabel149: TppLabel;
    ppDBText75: TppDBText;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppDBText76: TppDBText;
    ppLabel152: TppLabel;
    ppDBText77: TppDBText;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel62: TppLabel;
    ppDBText30: TppDBText;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppDBText5: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine6: TppLine;
    ppDBText10: TppDBText;
    ppLine13: TppLine;
    ppLine17: TppLine;
    ppDBText11: TppDBText;
    ppLine20: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine48: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText4: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText8: TppDBText;
    ppLine52: TppLine;
    ppLine56: TppLine;
    ppDBText9: TppDBText;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine75: TppLine;
    ppDBText31: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppRegion3: TppRegion;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLine21: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine49: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine95: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel61: TppLabel;
    ppLabel39: TppLabel;
    ppDBMemo1: TppDBMemo;
    zygx: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdfgxly2: Tfrmdfgxly2;

implementation

uses scgxu, cbgxu, scgxdyu, dlu;

{$R *.dfm}

procedure Tfrmdfgxly2.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmdfgxly2.ppHeaderBand1BeforePrint(Sender: TObject);
begin
        with frmdfgxly2.ClientDataSet1 do begin
          close;
          params.clear;
          commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 where seq='+frmdfgxly2.zygx.fieldbyname('seq').asstring;
          //commandtext:=commandtext+' and ((xz07=1) or (xz04=1) or (xz30=1 or xz31=1) or (xz40=1 or xz41=1 or xz42=1) or (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1))';
          open;
          frmdfgxly2.zsj01.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          frmdfgxly2.zsj02.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          frmdfgxly2.zdj01.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          frmdfgxly2.zdj02.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          close;
          params.clear;
          commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 where zb in (''AL'',''S-AL'') and seq='+frmdfgxly2.zygx.fieldbyname('seq').asstring;
          //commandtext:=commandtext+' and ((xz07=1) or (xz04=1) or (xz30=1 or xz31=1) or (xz40=1 or xz41=1 or xz42=1) or (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1))';
          open;
          frmdfgxly2.zsj03.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          frmdfgxly2.zsj04.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          frmdfgxly2.zdj03.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          frmdfgxly2.zdj04.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
        end;
end;

end.
