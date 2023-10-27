unit printlinebanace;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls, DBClient;

type
  Tfrmprintline = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape43: TQRShape;
    QRLabel55: TQRLabel;
    QRShape1: TQRShape;
    QRLabel20: TQRLabel;
    QRShape5: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape22: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape44: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel53: TQRLabel;
    TitleBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRDBText36: TQRDBText;
    QRShape15: TQRShape;
    QRShape9: TQRShape;
    QRShape23: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape45: TQRShape;
    SummaryBand1: TQRBand;
    QRLabel15: TQRLabel;
    zsj: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    zrs: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabel9: TQRLabel;
    zjsj: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel60: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText38: TQRDBText;
    DataSource1: TDataSource;
    QRLabel12: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape30: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel61: TQRLabel;
    QRDBText10: TQRDBText;
    zygx: TClientDataSet;
    zygx1: TClientDataSet;
    procedure zygxFilterRecord1(DataSet: TDataSet; var Accept: Boolean);
    procedure zygxFilterRecord2(DataSet: TDataSet; var Accept: Boolean);
    procedure zygxAfterOpen(DataSet: TDataSet);
    procedure zygx1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprintline: Tfrmprintline;

implementation

uses scgxu, cbgxu, dlu;

{$R *.DFM}

procedure Tfrmprintline.zygxFilterRecord1(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept:=dataset['seq']=frmscgx.zygx.fieldbyname('seq').value;
end;

procedure Tfrmprintline.zygxFilterRecord2(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept:=dataset['seq']=frmcbgx.zygx.fieldbyname('seq').value;
end;

procedure Tfrmprintline.zygxAfterOpen(DataSet: TDataSet);
begin
  (zygx.fieldbyname('mb') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('zsl') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('mbxs') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('wcqj') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('gzxl') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('sdz') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('ssz') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('ssb') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sjg') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sdc') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('srs') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sqt') as tintegerfield).displayformat:='#####0;;''';
end;

procedure Tfrmprintline.zygx1AfterOpen(DataSet: TDataSet);
begin
  (zygx1.fieldbyname('sj') as tfloatfield).displayformat:='#####0.00000';
  (zygx1.fieldbyname('sxrs') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('dz') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('sz') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('rz') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('snz') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('jg') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('rs') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('qt') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('fyl') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('bzsj') as tfloatfield).displayformat:='#####0.00000';
  (zygx1.fieldbyname('jhl') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('bzsj1') as tfloatfield).displayformat:='#####0.00000';
end;

end.
