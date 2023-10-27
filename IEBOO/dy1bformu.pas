unit dy1bformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ppMemo, ppCtrls, ppBands, ppStrtch, ppRegion,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppDBBDE, ppViewr;

type
  Tfrmdy1b = class(TForm)
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
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
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
    ppLabel11: TppLabel;
    ppLine51: TppLine;
    ppLabel31: TppLabel;
    ppLine53: TppLine;
    ppLabel32: TppLabel;
    ppLine58: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine8: TppLine;
    ppDBText33: TppDBText;
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
    ppDBText32: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
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
    ppDBText8: TppDBText;
    ppLine52: TppLine;
    ppLine56: TppLine;
    ppDBText9: TppDBText;
    ppLine63: TppLine;
    ppDBText31: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppRegion3: TppRegion;
    ppLine10: TppLine;
    ppLine21: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine49: TppLine;
    ppLine66: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel61: TppLabel;
    ppLabel39: TppLabel;
    ppDBMemo1: TppDBMemo;
    zygx: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    zh001: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    ppLabel14: TppLabel;
    ppDBText21: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel24: TppLabel;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLabel25: TppLabel;
    ppLine12: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine13: TppLine;
    ppLabel30: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine16: TppLine;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLine17: TppLine;
    ppLabel41: TppLabel;
    ppLine18: TppLine;
    ppLine39: TppLine;
    ppLine50: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine57: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    jb01: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText5: TppDBText;
    ppLine67: TppLine;
    ppLine69: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText27: TppDBText;
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdy1b: Tfrmdy1b;

implementation

uses scgxu, zhxzformu, dlu;

{$R *.dfm}

procedure Tfrmdy1b.ppHeaderBand1BeforePrint(Sender: TObject);
begin
      zh001.caption:=frmzhxz.rg01.Items[frmzhxz.rg01.itemindex];
      with ClientDataSet1 do begin
        close;
        params.clear;
        commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 b where seq='+zygx.fieldbyname('seq').asstring;
        if frmzhxz.rg01.itemindex=0 then commandtext:=commandtext+' and b.xz04=1'
        else if frmzhxz.rg01.itemindex=1 then commandtext:=commandtext+' and b.xz30=1'
        else if frmzhxz.rg01.itemindex=2 then commandtext:=commandtext+' and b.xz31=1'
        else if frmzhxz.rg01.itemindex=3 then commandtext:=commandtext+' and b.xz40=1'
        else if frmzhxz.rg01.itemindex=4 then commandtext:=commandtext+' and b.xz41=1'
        else if frmzhxz.rg01.itemindex=5 then commandtext:=commandtext+' and b.xz42=1'
        else if frmzhxz.rg01.itemindex=6 then commandtext:=commandtext+' and b.xz01=1'
        else if frmzhxz.rg01.itemindex=7 then commandtext:=commandtext+' and b.xz03=1'
        else if frmzhxz.rg01.itemindex=8 then commandtext:=commandtext+' and b.xz06=1'
        else if frmzhxz.rg01.itemindex=9 then commandtext:=commandtext+' and b.xz05=1'
        else if frmzhxz.rg01.itemindex=10 then commandtext:=commandtext+' and b.xz08=1'
        else if frmzhxz.rg01.itemindex=11 then commandtext:=commandtext+' and b.xz09=1';
        open;
        zsj01.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
        zsj02.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
        zdj01.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
        zdj02.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
        close;
        params.clear;
        commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 b where zb in (''A'',''B'',''C'') and seq='+zygx.fieldbyname('seq').asstring;
        if frmzhxz.rg01.itemindex=0 then commandtext:=commandtext+' and b.xz04=1'
        else if frmzhxz.rg01.itemindex=1 then commandtext:=commandtext+' and b.xz30=1'
        else if frmzhxz.rg01.itemindex=2 then commandtext:=commandtext+' and b.xz31=1'
        else if frmzhxz.rg01.itemindex=3 then commandtext:=commandtext+' and b.xz40=1'
        else if frmzhxz.rg01.itemindex=4 then commandtext:=commandtext+' and b.xz41=1'
        else if frmzhxz.rg01.itemindex=5 then commandtext:=commandtext+' and b.xz42=1'
        else if frmzhxz.rg01.itemindex=6 then commandtext:=commandtext+' and b.xz01=1'
        else if frmzhxz.rg01.itemindex=7 then commandtext:=commandtext+' and b.xz03=1'
        else if frmzhxz.rg01.itemindex=8 then commandtext:=commandtext+' and b.xz06=1'
        else if frmzhxz.rg01.itemindex=9 then commandtext:=commandtext+' and b.xz05=1'
        else if frmzhxz.rg01.itemindex=10 then commandtext:=commandtext+' and b.xz08=1'
        else if frmzhxz.rg01.itemindex=11 then commandtext:=commandtext+' and b.xz09=1';
        open;
        zsj03.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
        zsj04.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
        zdj03.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
        zdj04.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
      end;
end;

procedure Tfrmdy1b.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmdy1b.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if not zygx.fieldbyname('jb').IsNull then begin
    if zygx.FieldByName('jb').value=true then jb01.caption:='Y'
    else jb01.caption:=' ';
  end else jb01.caption:=' ';
end;

end.
 