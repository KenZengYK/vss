unit scgxly1_1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls, ppDB, DBClient, ppCtrls,
  ppBands, ppMemo, ppStrtch, ppRegion, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, Txcomp, ppViewr;

type
  Tfrmscgxly1_1 = class(TForm)
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
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppRegion1: TppRegion;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel20: TppLabel;
    ppLine11: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine12: TppLine;
    ppLabel29: TppLabel;
    ppLine13: TppLine;
    C49: TppLabel;
    ppLabel31: TppLabel;
    C47: TppLabel;
    ppLabel33: TppLabel;
    C45: TppLabel;
    ppLabel35: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine62: TppLine;
    ppLabel55: TppLabel;
    C43: TppLabel;
    firstc: TppLabel;
    lastc: TppLabel;
    diffc: TppLabel;
    vc1: TppLabel;
    first1: TppLabel;
    last1: TppLabel;
    diff1: TppLabel;
    v1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppDBText5: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
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
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
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
    ppLine63: TppLine;
    ppDBText40: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppRegion3: TppRegion;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel44: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppDBText28: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLabel51: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppDBText38: TppDBText;
    ppLabel56: TppLabel;
    ppDBText39: TppDBText;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine48: TppLine;
    zygx: TClientDataSet;
    ppLabel8: TppLabel;
    ppLabel28: TppLabel;
    ppLine64: TppLine;
    ppDBText16: TppDBText;
    ppLine65: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLine66: TppLine;
    Stand1: TppLabel;
    stand2: TppLabel;
    ppc1: TppLabel;
    ppc2: TppLabel;
    diffp1: TppLabel;
    diffp2: TppLabel;
    sah001: TppLabel;
    ppLabel30: TppLabel;
    ClientDataSet1: TClientDataSet;
    ppLabel32: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure zygxAfterOpen(DataSet: TDataSet);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmscgxly1_1: Tfrmscgxly1_1;

implementation
uses scgxu, cbgxu, scgxdyu, dlu;
{$R *.DFM}

procedure Tfrmscgxly1_1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmscgxly1_1.zygxAfterOpen(DataSet: TDataSet);
begin
  (zygx.fieldbyname('mb') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('zsl') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('mbxs') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('wcqj') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('gzxl') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('dj') as tfloatfield).displayformat:='#####0.000;;''';
  (zygx.fieldbyname('sxrs') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('dz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('sz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('rz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('snz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('jg') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('rs') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('qt') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('sdz') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('ssz') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('ssb') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sjg') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sdc') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('srs') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sqt') as tintegerfield).displayformat:='#####0;;''';
end;

procedure Tfrmscgxly1_1.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(bzsj) as zsj from ie_zygx1 where zb<>''O'' and seq=:x1';
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('zsj').isnull then sah001.Caption:=formatfloat('#0.0000',fieldbyname('zsj').value)
    else sah001.Caption:='0.0000';
  end;
end;

end.
