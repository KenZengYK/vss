unit DMfcu;

interface

uses
  Windows, Messages, Bde, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDMfcjh = class(TDataModule)
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    Query4: TQuery;
    Query5: TQuery;
    fcjh7: TTable;
    dsfcjh7: TDataSource;
    dsfcjy1: TDataSource;
    dsfcjy2: TDataSource;
    dslbjh1: TDataSource;
    dslbjh2: TDataSource;
    dslbjh3: TDataSource;
    tablefilter: TQuery;
    tbllbtz: TTable;
    aitem1: TTable;
    dsaitem1: TDataSource;
    aitem2: TTable;
    dsaitem2: TDataSource;
    aitem2Stylno: TStringField;
    aitem2Aitem: TStringField;
    aitem2Uwidth: TFloatField;
    aitem2Uom: TStringField;
    aitem2Q1: TFloatField;
    aitem2Q2: TFloatField;
    aitem2Q3: TFloatField;
    aitem2Q4: TFloatField;
    aitem2Mem: TStringField;
    fcjy1: TQuery;
    fcjy1Prjno: TStringField;
    fcjy1Seq: TIntegerField;
    fcjy1Wl: TStringField;
    fcjy1Xh: TIntegerField;
    fcjy1Lbzs: TIntegerField;
    fcjy1Scys: TIntegerField;
    fcjy1Zsj: TIntegerField;
    fcjy1Zys: TIntegerField;
    fcjy1No: TIntegerField;
    fcjy1Zjc: TIntegerField;
    fcjy1Jyyl: TFloatField;
    fcjy1Zyl: TFloatField;
    dscgjh1: TDataSource;
    dscgjh2: TDataSource;
    cgylfx: TTable;
    dscgylfx: TDataSource;
    cgylfxPrjno: TStringField;
    cgylfxWl: TStringField;
    cgylfxGch: TStringField;
    cgylfxZdh: TStringField;
    cgylfxKh: TStringField;
    cgylfxSh: TStringField;
    cgylfxYsfd: TFloatField;
    cgylfxSyfd: TFloatField;
    cgylfxZds: TIntegerField;
    cgylfxYcs: TIntegerField;
    cgylfxDc: TFloatField;
    cgylfxCacyl: TFloatField;
    cgylfxJhyl: TFloatField;
    cgylfxYlxc: TFloatField;
    cgslfx: TTable;
    dscgslfx: TDataSource;
    cgslfxPrjno: TStringField;
    cgslfxKh: TStringField;
    cgslfxId: TAutoIncField;
    cgslfxZdh: TStringField;
    cgslfxGch: TStringField;
    cgslfxSh: TStringField;
    cgslfxCm: TStringField;
    cgslfxZds: TIntegerField;
    cgslfxYcs: TIntegerField;
    cgslfxDc: TIntegerField;
    cgslfxDcp: TFloatField;
    cgylfxYbl: TFloatField;
    cgylfxHsl: TFloatField;
    cgylfxScsh: TFloatField;
    cgylfxCutyl: TFloatField;
    cgjh3: TTable;
    dscgjh3: TDataSource;
    dscgbg1: TDataSource;
    dscgbg2: TDataSource;
    cgbgylfx: TTable;
    dscgbgylfx: TDataSource;
    cgbgslfx: TTable;
    dscgbgslfx: TDataSource;
    cgbg3: TTable;
    dscgbg3: TDataSource;
    cgbgylfxPrjno: TStringField;
    cgbgylfxWl: TStringField;
    cgbgylfxGch: TStringField;
    cgbgylfxZdh: TStringField;
    cgbgylfxKh: TStringField;
    cgbgylfxSh: TStringField;
    cgbgylfxYsfd: TFloatField;
    cgbgylfxSyfd: TFloatField;
    cgbgylfxZds: TIntegerField;
    cgbgylfxYcs: TIntegerField;
    cgbgylfxDc: TFloatField;
    cgbgylfxCacyl: TFloatField;
    cgbgylfxJhyl: TFloatField;
    cgbgylfxYlxc: TFloatField;
    cgbgylfxYbl: TFloatField;
    cgbgylfxHsl: TFloatField;
    cgbgylfxScsh: TFloatField;
    cgbgylfxCutyl: TFloatField;
    cgbgslfxPrjno: TStringField;
    cgbgslfxKh: TStringField;
    cgbgslfxGch: TStringField;
    cgbgslfxZdh: TStringField;
    cgbgslfxSh: TStringField;
    cgbgslfxId: TAutoIncField;
    cgbgslfxCm: TStringField;
    cgbgslfxZds: TIntegerField;
    cgbgslfxYcs: TIntegerField;
    cgbgslfxDc: TIntegerField;
    cgbgslfxDcp: TFloatField;
    cgjh3Prjno: TStringField;
    cgjh3Wl: TStringField;
    cgjh3Idno: TStringField;
    cgjh3Oaps: TStringField;
    cgjh3Oacm: TStringField;
    cgjh3Rq: TDateField;
    cgjh3Tm: TTimeField;
    cgjh3Qr: TBooleanField;
    cgbg3Prjno: TStringField;
    cgbg3Wl: TStringField;
    cgbg3Idno: TStringField;
    cgbg3Oaps: TStringField;
    cgbg3Oacm: TStringField;
    cgbg3Rq: TDateField;
    cgbg3Tm: TTimeField;
    cgbg3Qr: TBooleanField;
    cgjh3Cs: TIntegerField;
    cgbg3Cs: TIntegerField;
    cgbgylfxSjyl: TFloatField;
    lbjh1: TQuery;
    lbjh1Prjno: TStringField;
    lbjh1Wl: TStringField;
    lbjh1Xh: TIntegerField;
    lbjh1Lbzs: TIntegerField;
    lbjh1Sjlb: TIntegerField;
    lbjh1Pjmjfd: TFloatField;
    lbjh1Ybl: TFloatField;
    lbjh1Mjzcd: TFloatField;
    lbjh1Mjypzbzc: TFloatField;
    lbjh1Jhdzlbzc: TFloatField;
    lbjh1Jhwlzc: TFloatField;
    lbjh1Jhcgzsj: TFloatField;
    lbjh1Jhscsh: TFloatField;
    lbjh1Sjdzlbzc: TFloatField;
    lbjh1Sjwlzc: TFloatField;
    lbjh1Sjcgzsj: TFloatField;
    lbjh1Sjscsh: TFloatField;
    lbjh1Mjyl: TFloatField;
    lbjh1Zjs: TIntegerField;
    lbjh1Pbl: TFloatField;
    lbjh1Hsl: TFloatField;
    lbjh1Zdypcd: TFloatField;
    lbjh1Ysmjfd: TFloatField;
    lbjh1Zp: TBooleanField;
    lbjh1Dzmjps: TIntegerField;
    lbjh1Mjstatus: TStringField;
    lbjh1Rq: TDateField;
    lbjh2: TQuery;
    lbjh2Prjno: TStringField;
    lbjh2Xh: TIntegerField;
    lbjh2Wl: TStringField;
    lbjh2Kh: TStringField;
    lbjh2Id: TAutoIncField;
    lbjh2Cm: TStringField;
    lbjh2Gch: TStringField;
    lbjh2Zdh: TStringField;
    lbjh2Sh: TStringField;
    lbjh2Mjjs: TIntegerField;
    lbjh2Mjs: TFloatField;
    lbjh2Zds: TIntegerField;
    lbjh2Ys: TIntegerField;
    lbjh2Jc: TIntegerField;
    lbjh2Bz: TStringField;
    lbjh2Cacyl: TFloatField;
    lbjh3: TQuery;
    cgjh1: TQuery;
    cgjh1Prjno: TStringField;
    cgjh1Wl: TStringField;
    cgjh1Xh: TIntegerField;
    cgjh1Mjh: TStringField;
    cgjh1Lbzs: TIntegerField;
    cgjh1Lbzs1: TIntegerField;
    cgjh1Lbzs2: TIntegerField;
    cgjh1Scmjcd: TFloatField;
    cgjh1Ysmjfd: TFloatField;
    cgjh1Scmjfd: TFloatField;
    cgjh1Dzmjps: TIntegerField;
    cgjh1Scmjyl: TFloatField;
    cgjh1Ybl: TFloatField;
    cgjh1Cgsj: TFloatField;
    cgjh1Scmjzc: TFloatField;
    cgjh1Zdypcd: TFloatField;
    cgjh1Mjjs: TFloatField;
    cgjh1Mjstatus: TStringField;
    cgjh1Zp: TBooleanField;
    cgjh1Rq: TDateField;
    cgjh1Bzmj: TBooleanField;
    cgjh1Zbmj: TBooleanField;
    cgjh1Twmj: TBooleanField;
    cgjh1Pzx: TBooleanField;
    cgjh1Yymj: TBooleanField;
    cgjh1Dk: TBooleanField;
    cgjh1Hk: TBooleanField;
    cgjh1Ds: TBooleanField;
    cgjh1Hs: TBooleanField;
    cgjh1Dzd: TBooleanField;
    cgjh1Hzd: TBooleanField;
    cgjh1Ldz: TBooleanField;
    cgjh1Lhz: TBooleanField;
    cgjh1Yqxg: TBooleanField;
    cgjh1Zysc: TBooleanField;
    cgjh1Oaps: TStringField;
    cgjh1Scmjcd1: TFloatField;
    cgjh1Scmjcd2: TFloatField;
    cgjh1Ysmjfd1: TFloatField;
    cgjh1Ysmjfd2: TFloatField;
    cgjh1Scmjfd1: TFloatField;
    cgjh1Scmjfd2: TFloatField;
    cgjh1Ybl1: TFloatField;
    cgjh1Ybl2: TFloatField;
    cgjh1Cgsj1: TFloatField;
    cgjh1Cgsj2: TFloatField;
    cgjh1Scmjzc1: TFloatField;
    cgjh1Scmjzc2: TFloatField;
    cgjh1Tm: TTimeField;
    cgjh2: TQuery;
    cgjh2Prjno: TStringField;
    cgjh2Wl: TStringField;
    cgjh2Xh: TIntegerField;
    cgjh2Kh: TStringField;
    cgjh2Id: TAutoIncField;
    cgjh2Gch: TStringField;
    cgjh2Zdh: TStringField;
    cgjh2Sh: TStringField;
    cgjh2Cm: TStringField;
    cgjh2Mjjs: TIntegerField;
    cgjh2Mjs: TFloatField;
    cgjh2Ymjjs: TIntegerField;
    cgbg1: TQuery;
    cgbg1Prjno: TStringField;
    cgbg1Wl: TStringField;
    cgbg1Xh: TIntegerField;
    cgbg1Mjh: TStringField;
    cgbg1Lbzs: TIntegerField;
    cgbg1Lbzs1: TIntegerField;
    cgbg1Lbzs2: TIntegerField;
    cgbg1Scmjcd: TFloatField;
    cgbg1Ysmjfd: TFloatField;
    cgbg1Scmjfd: TFloatField;
    cgbg1Dzmjps: TIntegerField;
    cgbg1Scmjyl: TFloatField;
    cgbg1Ybl: TFloatField;
    cgbg1Cgsj: TFloatField;
    cgbg1Scmjzc: TFloatField;
    cgbg1Zdypcd: TFloatField;
    cgbg1Mjjs: TFloatField;
    cgbg1Mjstatus: TStringField;
    cgbg1Zp: TBooleanField;
    cgbg1Rq: TDateField;
    cgbg1Bzmj: TBooleanField;
    cgbg1Zbmj: TBooleanField;
    cgbg1Twmj: TBooleanField;
    cgbg1Pzx: TBooleanField;
    cgbg1Yymj: TBooleanField;
    cgbg1Dk: TBooleanField;
    cgbg1Hk: TBooleanField;
    cgbg1Ds: TBooleanField;
    cgbg1Hs: TBooleanField;
    cgbg1Dzd: TBooleanField;
    cgbg1Hzd: TBooleanField;
    cgbg1Ldz: TBooleanField;
    cgbg1Lhz: TBooleanField;
    cgbg1Yqxg: TBooleanField;
    cgbg1Zysc: TBooleanField;
    cgbg1Oaps: TStringField;
    cgbg1Scmjcd1: TFloatField;
    cgbg1Scmjcd2: TFloatField;
    cgbg1Ysmjfd1: TFloatField;
    cgbg1Ysmjfd2: TFloatField;
    cgbg1Scmjfd1: TFloatField;
    cgbg1Scmjfd2: TFloatField;
    cgbg1Ybl1: TFloatField;
    cgbg1Ybl2: TFloatField;
    cgbg1Cgsj1: TFloatField;
    cgbg1Cgsj2: TFloatField;
    cgbg1Scmjzc1: TFloatField;
    cgbg1Scmjzc2: TFloatField;
    cgbg1Cfm: TBooleanField;
    cgbg1Yxh: TIntegerField;
    cgbg1Tm: TTimeField;
    cgbg2: TQuery;
    cgbg2Prjno: TStringField;
    cgbg2Wl: TStringField;
    cgbg2Xh: TIntegerField;
    cgbg2Kh: TStringField;
    cgbg2Id: TAutoIncField;
    cgbg2Gch: TStringField;
    cgbg2Zdh: TStringField;
    cgbg2Sh: TStringField;
    cgbg2Cm: TStringField;
    cgbg2Mjjs: TIntegerField;
    cgbg2Mjs: TFloatField;
    cgbg2Ymjjs: TIntegerField;
    lbjh3Prjno: TStringField;
    lbjh3Xh: TIntegerField;
    lbjh3Wl: TStringField;
    lbjh3Mjh: TStringField;
    lbjh3Mjfd: TIntegerField;
    lbjh3Ysmjfd: TIntegerField;
    lbjh3Mjcd: TFloatField;
    lbjh3Mjypzbc: TFloatField;
    lbjh3Jhlbzs: TIntegerField;
    lbjh3Jhdzlbcd: TFloatField;
    lbjh3Jhwlcd: TFloatField;
    lbjh3Sjlbzs: TIntegerField;
    lbjh3Sjdzlbcd: TFloatField;
    lbjh3Sjwlcd: TFloatField;
    lbjh3Ybl: TFloatField;
    lbjh3Jhcgsj: TFloatField;
    lbjh3Jhscsh: TFloatField;
    lbjh3Sjcgsj: TFloatField;
    lbjh3Sjscsh: TFloatField;
    lbjh3Pbl: TFloatField;
    lbjh3Hsl: TFloatField;
    fcjy2: TTable;
    fcjy2Prjno: TStringField;
    fcjy2Wl: TStringField;
    fcjy2Xh: TIntegerField;
    fcjy2Kh: TStringField;
    fcjy2Id: TAutoIncField;
    fcjy2Gch: TStringField;
    fcjy2Zdh: TStringField;
    fcjy2Sh: TStringField;
    fcjy2Cm: TStringField;
    fcjy2Zds: TIntegerField;
    fcjy2Jy: TFloatField;
    fcjy2Sj: TFloatField;
    fcjy2Ys: TIntegerField;
    fcjy2Jc: TIntegerField;
    fcjy2Bz: TStringField;
    fcjy2No: TIntegerField;
    fcjy2Gm: TIntegerField;
    fcjy2Cacyl: TFloatField;
    fcjy2Gmc: TStringField;
    fcjy2Gmt: TStringField;
    cgbg1Ylbzs: TIntegerField;
    cgbg1Ylbzs1: TIntegerField;
    cgbg1Ylbzs2: TIntegerField;
    cgd1: TQuery;
    dscgd1: TDataSource;
    cgd2: TQuery;
    dscgd2: TDataSource;
    cgd3: TQuery;
    dscgd3: TDataSource;
    cgdwl: TQuery;
    dscgdwl: TDataSource;
    cgd2Prjno: TStringField;
    cgd2Xh: TIntegerField;
    cgd2Wl: TStringField;
    cgd2Kh: TStringField;
    cgd2Id: TAutoIncField;
    cgd2Cm: TStringField;
    cgd2Gch: TStringField;
    cgd2Zdh: TStringField;
    cgd2Sh: TStringField;
    cgd2Mjjs: TIntegerField;
    cgd2Mjs: TFloatField;
    cgd2Zds: TIntegerField;
    cgd2Ys: TIntegerField;
    cgd2Jc: TIntegerField;
    cgd2Bz: TStringField;
    cgd2Cacyl: TFloatField;
    cgbgylfxYfsl: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure fcjh7AfterPost(DataSet: TDataSet);
    procedure fcjy1AfterPost(DataSet: TDataSet);
    procedure fcjy2AfterPost(DataSet: TDataSet);
    procedure fcjy2JcChange(Sender: TField);
    procedure fcjy2SjChange(Sender: TField);
    procedure fcjy2AfterScroll(DataSet: TDataSet);
    procedure lbjh1AfterPost(DataSet: TDataSet);
    procedure lbjh2AfterPost(DataSet: TDataSet);
    procedure lbjh3AfterPost(DataSet: TDataSet);
    procedure fcjy1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure lbjh2MjsChange(Sender: TField);
    procedure lbjh1LbzsChange(Sender: TField);
    procedure tbllbtzAfterPost(DataSet: TDataSet);
    procedure aitem2Q1Change(Sender: TField);
    procedure aitem1AfterPost(DataSet: TDataSet);
    procedure aitem2AfterPost(DataSet: TDataSet);
    procedure lbjh1BeforePost(DataSet: TDataSet);
    procedure cgjh2AfterPost(DataSet: TDataSet);
    procedure cgjh1AfterPost(DataSet: TDataSet);
    procedure cgjh1BeforePost(DataSet: TDataSet);
    procedure cgjh1LbzsChange(Sender: TField);
    procedure cgjh2MjsChange(Sender: TField);
    procedure cgylfxAfterPost(DataSet: TDataSet);
    procedure cgslfxAfterPost(DataSet: TDataSet);
    procedure cgylfxYblChange(Sender: TField);
    procedure cgjh3AfterPost(DataSet: TDataSet);
    procedure cgbg1LbzsChange(Sender: TField);
    procedure cgbg1AfterPost(DataSet: TDataSet);
    procedure cgbg1BeforePost(DataSet: TDataSet);
    procedure cgbg2AfterPost(DataSet: TDataSet);
    procedure cgbgylfxAfterPost(DataSet: TDataSet);
    procedure cgbgslfxAfterPost(DataSet: TDataSet);
    procedure cgbg3AfterPost(DataSet: TDataSet);
    procedure cgjh3QrChange(Sender: TField);
    procedure cgbg3QrChange(Sender: TField);
    procedure cgjh3BeforeDelete(DataSet: TDataSet);
    procedure cgbg3BeforeDelete(DataSet: TDataSet);
    procedure cgylfxBeforeDelete(DataSet: TDataSet);
    procedure cgbgslfxBeforeDelete(DataSet: TDataSet);
    procedure cgjh3BeforeEdit(DataSet: TDataSet);
    procedure cgbg3BeforeEdit(DataSet: TDataSet);
    procedure fcjy2NewRecord(DataSet: TDataSet);
    procedure lbjh2NewRecord(DataSet: TDataSet);
    procedure lbjh3NewRecord(DataSet: TDataSet);
    procedure cgjh2NewRecord(DataSet: TDataSet);
    procedure cgbg2NewRecord(DataSet: TDataSet);
    procedure cgbgylfxYblChange(Sender: TField);
    procedure cgd1AfterPost(DataSet: TDataSet);
    procedure cgd2AfterPost(DataSet: TDataSet);
    procedure cgd3AfterPost(DataSet: TDataSet);
    procedure cgdwlAfterPost(DataSet: TDataSet);
    procedure cgd2MjsChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMfcjh: TDMfcjh;

implementation
uses fcjyu, zdlru, fcu;
{$R *.DFM}

procedure TDMfcjh.DataModuleCreate(Sender: TObject);
begin
  fcjy1.refresh;
  fcjy2.refresh;
  (fcjy2.fieldbyname('jy') as tfloatfield).displayformat:='#####0.00';
  (fcjy1.fieldbyname('jyyl') as tfloatfield).displayformat:='#####0.0000';
  (lbjh1.fieldbyname('jhcgzsj') as tfloatfield).displayformat:='#####0.00';
  (lbjh1.fieldbyname('sjcgzsj') as tfloatfield).displayformat:='#####0.00';
  (lbjh3.fieldbyname('jhcgsj') as tfloatfield).displayformat:='####0.00';
  (lbjh3.fieldbyname('jhwlcd') as tfloatfield).displayformat:='#####0.0000';
  (cgd1.fieldbyname('jhcgzsj') as tfloatfield).displayformat:='#####0.00';
  (cgd1.fieldbyname('sjcgzsj') as tfloatfield).displayformat:='#####0.00';
  (cgd3.fieldbyname('jhcgsj') as tfloatfield).displayformat:='####0.00';
  (cgd3.fieldbyname('jhwlcd') as tfloatfield).displayformat:='#####0.0000';
  {(cgjh1.fieldbyname('lbzs1') as tintegerfield).displayformat:='#0;;''';
  (cgjh1.fieldbyname('lbzs2') as tintegerfield).displayformat:='#0;;''';
  (cgjh1.fieldbyname('scmjcd1') as tfloatfield).displayformat:='#0.0000;;''';
  (cgjh1.fieldbyname('scmjcd2') as tfloatfield).displayformat:='#0.0000;;''';
  (cgjh1.fieldbyname('scmjfd1') as tfloatfield).displayformat:='#0;;''';
  (cgjh1.fieldbyname('scmjfd2') as tfloatfield).displayformat:='#0;;''';
  (cgjh1.fieldbyname('ysmjfd1') as tfloatfield).displayformat:='#0;;''';
  (cgjh1.fieldbyname('ysmjfd2') as tfloatfield).displayformat:='#0;;''';
  (cgjh1.fieldbyname('ybl1') as tfloatfield).displayformat:='#0.00;;''';
  (cgjh1.fieldbyname('ybl2') as tfloatfield).displayformat:='#0.00;;''';
  (cgjh1.fieldbyname('cgsj1') as tfloatfield).displayformat:='#0.00;;''';
  (cgjh1.fieldbyname('cgsj2') as tfloatfield).displayformat:='#0.00;;''';
  (cgjh1.fieldbyname('scmjzc1') as tfloatfield).displayformat:='#0.0;;''';
  (cgjh1.fieldbyname('scmjzc2') as tfloatfield).displayformat:='#0.0;;''';}
  (cgbg1.fieldbyname('lbzs1') as tintegerfield).displayformat:='#0;;''';
  (cgbg1.fieldbyname('lbzs2') as tintegerfield).displayformat:='#0;;''';
  (cgbg1.fieldbyname('scmjcd1') as tfloatfield).displayformat:='#0.0000;;''';
  (cgbg1.fieldbyname('scmjcd2') as tfloatfield).displayformat:='#0.0000;;''';
  (cgbg1.fieldbyname('scmjfd1') as tfloatfield).displayformat:='#0;;''';
  (cgbg1.fieldbyname('scmjfd2') as tfloatfield).displayformat:='#0;;''';
  (cgbg1.fieldbyname('ysmjfd1') as tfloatfield).displayformat:='#0;;''';
  (cgbg1.fieldbyname('ysmjfd2') as tfloatfield).displayformat:='#0;;''';
  (cgbg1.fieldbyname('ybl1') as tfloatfield).displayformat:='#0.00;;''';
  (cgbg1.fieldbyname('ybl2') as tfloatfield).displayformat:='#0.00;;''';
  (cgbg1.fieldbyname('cgsj1') as tfloatfield).displayformat:='#0.00;;''';
  (cgbg1.fieldbyname('cgsj2') as tfloatfield).displayformat:='#0.00;;''';
  (cgbg1.fieldbyname('scmjzc1') as tfloatfield).displayformat:='#0.0;;''';
  (cgbg1.fieldbyname('scmjzc2') as tfloatfield).displayformat:='#0.0;;''';
end;

procedure TDMfcjh.fcjh7AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(fcjh7.handle);
end;

procedure TDMfcjh.fcjy1AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(fcjy1.handle);
end;

procedure TDMfcjh.fcjy2AfterPost(DataSet: TDataSet);
var
  value1:integer;
begin
  if fcjy1.state=dsedit then fcjy1.post;
  if not fcjy1.fieldbyname('lbzs').isnull then value1:=fcjy1.fieldbyname('lbzs').value
  else value1:=0;
  dbisavechanges(fcjy2.handle);
  if fcjy2.recordcount>0 then
  begin
   if not fcjy1.fieldbyname('wl').isnull then begin
    query4.close;
    query4.sql.clear;
    query4.sql.add('select sum(zds)+sum(jc) as scys,sum(jc) as zjc,sum(ys) as zys,sum(sj) as zsj,sum(cacyl) as jyyl from fcjy2 where prjno=:gch and xh=:xh and wl=:wl');
    query4.prepare;
    query4.params[0].asstring:=fcjy1.fieldbyname('prjno').value;
    query4.params[1].asinteger:=fcjy1.fieldbyname('xh').value;
    query4.params[2].asstring:=fcjy1.fieldbyname('wl').value;
    query4.open;
    query3.close;
    query3.sql.clear;
    query3.sql.add('select * from fcjy1 where prjno=:prjno and xh=:xh and wl=:wl');
    query3.prepare;
    query3.params[0].asstring:=fcjy1.fieldbyname('prjno').value;
    query3.params[1].asinteger:=fcjy1.fieldbyname('xh').value;
    query3.params[2].asstring:=fcjy1.fieldbyname('wl').value;
    query3.open;
    query3.edit;
    query3.fieldbyname('scys').value:=query4.fieldbyname('scys').value;
    query3.fieldbyname('zys').value:=query4.fieldbyname('zys').value;
    query3.fieldbyname('zjc').value:=query4.fieldbyname('zjc').value;
    query3.fieldbyname('zsj').value:=query3.fieldbyname('scys').value-query3.fieldbyname('zys').value;
    //query3.fieldbyname('zsj').asinteger:=round(query4.fieldbyname('zsj').value*value1);
    query3.fieldbyname('jyyl').value:=query4.fieldbyname('jyyl').value;
    query3.post;
   end
   else begin
    query4.close;
    query4.sql.clear;
    query4.sql.add('select sum(zds)+sum(jc) as scys,sum(jc) as zjc,sum(ys) as zys,sum(cacyl) as jyyl from fcjy2 where prjno=:gch and xh=:xh');
    query4.prepare;
    query4.params[0].asstring:=fcjy1.fieldbyname('prjno').value;
    query4.params[1].asinteger:=fcjy1.fieldbyname('xh').value;
    query4.open;
    query3.close;
    query3.sql.clear;
    query3.sql.add('select * from fcjy1 where prjno=:prjno and xh=:xh and wl=:wl');
    query3.prepare;
    query3.params[0].asstring:=fcjy1.fieldbyname('prjno').value;
    query3.params[1].asinteger:=fcjy1.fieldbyname('xh').value;
    query3.params[2].asstring:=fcjy1.fieldbyname('wl').value;
    query3.open;
    query3.edit;
    query3.fieldbyname('scys').value:=query4.fieldbyname('scys').value;
    query3.fieldbyname('zys').value:=query4.fieldbyname('zys').value;
    query3.fieldbyname('zjc').value:=query4.fieldbyname('zjc').value;
    if (not query3.fieldbyname('lbzs').isnull) and (query3.fieldbyname('lbzs').value>0) then
    query3.fieldbyname('zsj').value:=query3.fieldbyname('scys').value-query4.fieldbyname('zys').value
    else query3.fieldbyname('zsj').value:=0;
    query3.fieldbyname('jyyl').value:=query4.fieldbyname('jyyl').value;
    query3.post;
   end;
   fcjy1.refresh;
  end;
end;

procedure TDMfcjh.fcjy2JcChange(Sender: TField);
begin
  if (not fcjy2jc.IsNull) and (fcjy1.fieldbyname('lbzs').value>0) then
  begin
    fcjy2jy.value:=(fcjy2zds.asinteger+fcjy2jc.asinteger)/fcjy1.fieldbyname('lbzs').asinteger;
    fcjy2sj.value:=int(fcjy2jy.value);
    fcjy2ys.asinteger:=fcjy2zds.asinteger+fcjy2jc.asinteger-round(fcjy2sj.value*fcjy1.fieldbyname('lbzs').value);
  end;
end;

procedure TDMfcjh.fcjy2SjChange(Sender: TField);
begin
  if (not fcjy2sj.IsNull) and (fcjy1.fieldbyname('lbzs').value>0) then
  begin
    with query1 do begin
      close;
      sql.clear;
      sql.add('select jyl from fcjy3 where prjno=:prjno and wl=:wl and kh=:kh');
      prepare;
      params[0].asstring:=fcjy2.fieldbyname('prjno').value;
      params[1].asstring:=fcjy2.fieldbyname('wl').value;
      params[2].asstring:=fcjy2.fieldbyname('kh').value;
      open;
    end;
    fcjy2ys.asinteger:=fcjy2zds.asinteger+fcjy2jc.asinteger-round(fcjy2sj.value*fcjy1.fieldbyname('lbzs').value);
    fcjy2cacyl.asfloat:=fcjy2sj.asfloat*query1.fieldbyname('jyl').asfloat;
  end
  else
  begin
    fcjy2sj.value:=0.00;
    fcjy2ys.value:=fcjy2zds.value+fcjy2jc.value;
  end;
end;

procedure TDMfcjh.fcjy2AfterScroll(DataSet: TDataSet);
begin
  if fcjy2.state=dsinsert then
   if fcjy2zdh.IsNull then
    fcjy2.cancel;
end;

procedure TDMfcjh.lbjh1AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(lbjh1.handle);
end;

procedure TDMfcjh.lbjh2AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(lbjh2.handle);
end;

procedure TDMfcjh.lbjh3AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(lbjh3.handle);
  query1.close;
  query1.sql.clear;
  query1.sql.add('select sum(mjfd*jhlbzs)/sum(jhlbzs) as pjmjfd,sum(pbl*jhlbzs)/sum(jhlbzs) as pbl,sum(ybl*jhlbzs)/sum(jhlbzs) as ybl,');
  query1.sql.add('sum(hsl*jhlbzs)/sum(jhlbzs) as hsl,sum(mjcd*jhlbzs)/sum(jhlbzs) as mjzcd,sum(mjypzbc) as mjypzbzc, sum(jhdzlbcd) as jhdzlbzc,sum(jhdzlbcd*jhlbzs) as jhwlzc,');
  query1.sql.add('sum(jhcgsj) as jhcgzsj,sum(jhscsh) as jhscsh,sum(sjdzlbcd) as sjdzlbzc,sum(sjwlcd) as sjwlzc,');
  query1.sql.add('sum(sjcgsj) as sjcgzsj,sum(sjscsh) as sjscsh from lbjh3 where prjno=:prjno and xh=:xh and wl=:wl');
  query1.prepare;
  query1.params[0].asstring:=dmfcjh.lbjh1.fieldbyname('prjno').value;
  query1.params[1].asinteger:=dmfcjh.lbjh1.fieldbyname('xh').value;
  query1.params[2].asstring:=dmfcjh.lbjh1.fieldbyname('wl').value;
  query1.open;
  if query1.recordcount>0 then
  begin
    dmfcjh.lbjh1.edit;
    if not query1.fieldbyname('pbl').isnull then
    dmfcjh.lbjh1.fieldbyname('pbl').value:=query1.fieldbyname('pbl').value;
    if not query1.fieldbyname('hsl').isnull then
    dmfcjh.lbjh1.fieldbyname('hsl').value:=query1.fieldbyname('hsl').value;
    if not query1.fieldbyname('pjmjfd').isnull then
    dmfcjh.lbjh1.fieldbyname('pjmjfd').value:=query1.fieldbyname('pjmjfd').value;
    if not query1.fieldbyname('ybl').isnull then
    dmfcjh.lbjh1.fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
    dmfcjh.lbjh1.fieldbyname('mjzcd').value:=query1.fieldbyname('mjzcd').value;
    dmfcjh.lbjh1.fieldbyname('mjypzbzc').value:=query1.fieldbyname('mjypzbzc').value;
    dmfcjh.lbjh1.fieldbyname('jhdzlbzc').value:=query1.fieldbyname('jhdzlbzc').value;
    dmfcjh.lbjh1.fieldbyname('jhwlzc').value:=query1.fieldbyname('jhwlzc').value;
    dmfcjh.lbjh1.fieldbyname('jhcgzsj').value:=query1.fieldbyname('jhcgzsj').value;
    dmfcjh.lbjh1.fieldbyname('jhscsh').value:=query1.fieldbyname('jhscsh').value;
    dmfcjh.lbjh1.fieldbyname('sjdzlbzc').value:=query1.fieldbyname('sjdzlbzc').value;
    dmfcjh.lbjh1.fieldbyname('sjwlzc').value:=query1.fieldbyname('sjwlzc').value;
    dmfcjh.lbjh1.fieldbyname('sjcgzsj').value:=query1.fieldbyname('sjcgzsj').value;
    dmfcjh.lbjh1.fieldbyname('sjscsh').value:=query1.fieldbyname('sjscsh').value;
    dmfcjh.lbjh1.post;
  end;
end;

procedure TDMfcjh.fcjy1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  tablefilter.close;
  tablefilter.sql.clear;
  tablefilter.sql.add('select prjno from fcjy1 where prjno=:prjno');
  tablefilter.prepare;
  tablefilter.params[0].asstring:=frmfcjy.dbedit7.text;
  tablefilter.open;
  if tablefilter.recordcount>0 then
  begin
    accept:=dataset['prjno']=tablefilter.fieldbyname('prjno').value;
  end;
end;

procedure TDMfcjh.lbjh2MjsChange(Sender: TField);
begin
  if not lbjh2mjs.isnull then
  begin
    query1.close;
    query1.sql.clear;
    query1.sql.add('select lbzs from lbjh1 where prjno=:prjno and xh=:xh and wl=:wl');
    query1.prepare;
    query1.params[0].asstring:=lbjh2prjno.value;
    query1.params[1].asinteger:=lbjh2xh.Value;
    query1.params[2].asstring:=lbjh2wl.value;
    query1.open;
    lbjh2mjjs.value:=round(query1.fieldbyname('lbzs').value*lbjh2mjs.value);
  end;
end;

procedure TDMfcjh.lbjh1LbzsChange(Sender: TField);
begin
  if (not lbjh1lbzs.isnull) and (lbjh1.state=dsedit) then
  begin
    query5.close;
    query5.sql.clear;
    query5.sql.add('select * from lbjh2 where prjno=:prjno and xh=:xh and wl=:wl');
    query5.prepare;
    query5.params[0].asstring:=lbjh1prjno.Value;
    query5.params[1].asinteger:=lbjh1xh.Value;
    query5.params[2].asstring:=lbjh1wl.value;
    query5.open;
    query5.first;
    while not query5.eof do
    begin
      query5.edit;
      query5.fieldbyname('mjjs').asinteger:=round(query5.fieldbyname('mjs').asfloat*lbjh1lbzs.asinteger);
      query5.post;
      application.ProcessMessages;
      query5.next;
    end;
    lbjh2.refresh;
    query5.close;
    query5.sql.clear;
    query5.sql.add('select * from lbjh3 where prjno=:prjno and xh=:xh and wl=:wl');
    query5.prepare;
    query5.params[0].asstring:=lbjh1prjno.value;
    query5.params[1].asinteger:=lbjh1xh.value;
    query5.params[2].asstring:=lbjh1wl.value;
    query5.open;
    query5.first;
    while not query5.eof do
    begin
      query5.edit;
      query5.fieldbyname('jhlbzs').value:=lbjh1lbzs.value;
      query5.fieldbyname('jhwlcd').value:=query5.fieldbyname('jhlbzs').value*query5.fieldbyname('jhdzlbcd').value*(100+query5.fieldbyname('jhscsh').value)/100;
      query5.post;
      application.ProcessMessages;
      query5.next;
    end;
  end;
end;

procedure TDMfcjh.tbllbtzAfterPost(DataSet: TDataSet);
begin
  dbisavechanges(tbllbtz.handle);
end;

procedure TDMfcjh.aitem2Q1Change(Sender: TField);
begin
  if (not aitem2q1.IsNull) and (not aitem2q2.IsNull) then
    aitem2q3.value:=aitem2q1.value+aitem2q2.value; 
end;

procedure TDMfcjh.aitem1AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(aitem1.handle);
end;

procedure TDMfcjh.aitem2AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(aitem2.handle);
end;

procedure TDMfcjh.lbjh1BeforePost(DataSet: TDataSet);
begin
  if lbjh1.state=dsedit then begin
    lbjh1.edit;
    lbjh1.fieldbyname('rq').value:=date;
  end;
end;

procedure TDMfcjh.cgjh2MjsChange(Sender: TField);
begin
  {if not cgjh2mjs.isnull then
  begin
    query1.close;
    query1.sql.clear;
    query1.sql.add('select lbzs from lbjh1 where prjno=:prjno and xh=:xh and wl=:wl');
    query1.prepare;
    query1.params[0].asstring:=cgjh2prjno.value;
    query1.params[1].asinteger:=cgjh2xh.Value;
    query1.params[2].asstring:=cgjh2wl.value;
    query1.open;
    cgjh2mjjs.value:=round(query1.fieldbyname('lbzs').value*cgjh2mjs.value);
  end;}
end;

procedure TDMfcjh.cgjh2AfterPost(DataSet: TDataSet);
//var
//  mjjs:double;
begin
  dbisavechanges(cgjh2.handle);
  {with query5 do begin
    close;
    sql.clear;
    sql.add('select sum(mjs) as mjjs from cgjh2 where prjno=:prjno and xh=:xh and wl=:wl');
    prepare;
    params[0].asstring:=cgjh1prjno.value;
    params[1].asinteger:=cgjh1xh.value;
    params[2].asstring:=cgjh1wl.value;
    open;
    if not fieldbyname('mjjs').isnull then mjjs:=fieldbyname('mjjs').value
    else mjjs:=0.00;
  end;
  cgjh1.edit;
  cgjh1.fieldbyname('mjjs').value:=mjjs;
  cgjh1.post;}
end;

procedure TDMfcjh.cgjh1AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgjh1.handle);
end;

procedure TDMfcjh.cgjh1BeforePost(DataSet: TDataSet);
begin
  if cgjh1.state=dsedit then begin
    cgjh1.edit;
    cgjh1.fieldbyname('rq').value:=date;
    cgjh1.fieldbyname('tm').value:=time;
  end;
end;

procedure TDMfcjh.cgjh1LbzsChange(Sender: TField);
var
  mjdiv:integer;
begin
  if cgjh1.state=dsedit then begin
    if cgjh1lbzs.isnull then cgjh1lbzs.value:=0;
    if cgjh1lbzs1.isnull then cgjh1lbzs1.value:=0;
    if cgjh1lbzs2.isnull then cgjh1lbzs2.value:=0;
  end;
  if (not cgjh1lbzs.isnull) and (not cgjh1lbzs1.isnull) and (not cgjh1lbzs2.isnull) and (cgjh1.state=dsedit) then
  begin
    mjdiv:=1;
    if not cgjh1mjstatus.IsNull then begin
      if copy(cgjh1mjstatus.value,1,4)='封度' then begin
        if copy(cgjh1mjstatus.value,7,2)='半' then mjdiv:=2
        else if copy(cgjh1mjstatus.value,7,2)='四' then mjdiv:=4
        else mjdiv:=strtoint(copy(cgjh1mjstatus.value,7,1));
      end;
    end;
    cgjh1scmjyl.Value:=(cgjh1lbzs.value*cgjh1scmjcd.value+cgjh1lbzs1.value*cgjh1scmjcd1.Value+cgjh1lbzs2.value*cgjh1scmjcd2.value)/mjdiv;
    query5.close;
    query5.sql.clear;
    query5.sql.add('select * from cgjh2 where prjno=:prjno and xh=:xh and wl=:wl');
    query5.prepare;
    query5.params[0].asstring:=cgjh1prjno.Value;
    query5.params[1].asinteger:=cgjh1xh.Value;
    query5.params[2].asstring:=cgjh1wl.value;
    query5.open;
    query5.first;
    while not query5.eof do
    begin
      query5.edit;
      query5.fieldbyname('mjjs').asinteger:=round(query5.fieldbyname('mjs').asfloat*(cgjh1lbzs.asinteger+cgjh1lbzs1.asinteger+cgjh1lbzs2.asinteger));
      query5.post;
      application.ProcessMessages;
      query5.next;
    end;
    cgjh2.refresh;
  end;
end;

procedure TDMfcjh.cgylfxAfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgylfx.handle);
end;

procedure TDMfcjh.cgslfxAfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgslfx.handle);
end;

procedure TDMfcjh.cgylfxYblChange(Sender: TField);
begin
  if not cgylfxybl.isnull then begin
    if not cgylfxhsl.IsNull then begin
      if not cgylfxscsh.IsNull then begin
        cgylfxcutyl.value:=cgylfxjhyl.Value*100*100*100/((100-cgylfxybl.value)*(100-cgylfxhsl.value)*(100-cgylfxscsh.value));
        cgylfxylxc.Value:=cgylfxcacyl.Value-cgylfxcutyl.Value;
      end;
    end;
  end;
end;

procedure TDMfcjh.cgjh3AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgjh3.handle);
end;

procedure TDMfcjh.cgbg1LbzsChange(Sender: TField);
var
  mjdiv:integer;
begin
  if cgbg1.state=dsedit then begin
    if cgbg1lbzs.isnull then cgbg1lbzs.value:=0;
    if cgbg1lbzs1.isnull then cgbg1lbzs1.value:=0;
    if cgbg1lbzs2.isnull then cgbg1lbzs2.value:=0;
    if cgbg1scmjcd.isnull then cgbg1scmjcd.value:=0.00;
    if cgbg1scmjcd1.isnull then cgbg1scmjcd1.value:=0.00;
    if cgbg1scmjcd2.isnull then cgbg1scmjcd2.value:=0.00;
  end;
  if (not cgbg1lbzs.isnull) and (not cgbg1lbzs1.isnull) and (not cgbg1lbzs2.isnull) and (cgbg1.state=dsedit)
     and (not cgbg1scmjcd.isnull) and (not cgbg1scmjcd1.isnull) and (not cgbg1scmjcd2.isnull) then
  begin
    mjdiv:=1;
    if not cgbg1mjstatus.IsNull then begin
      if copy(cgbg1mjstatus.value,1,4)='封度' then begin
        if copy(cgbg1mjstatus.value,7,2)='半' then mjdiv:=2
        else if copy(cgbg1mjstatus.value,7,2)='四' then mjdiv:=4
        else mjdiv:=strtoint(copy(cgbg1mjstatus.value,7,1));
      end;
    end;
    cgbg1scmjyl.Value:=(cgbg1lbzs.value*cgbg1scmjcd.value+cgbg1lbzs1.value*cgbg1scmjcd1.Value+cgbg1lbzs2.value*cgbg1scmjcd2.value)/mjdiv;
    query5.close;
    query5.sql.clear;
    query5.sql.add('select * from cgbg2 where prjno=:prjno and xh=:xh and wl=:wl');
    query5.prepare;
    query5.params[0].asstring:=cgbg1prjno.Value;
    query5.params[1].asinteger:=cgbg1xh.Value;
    query5.params[2].asstring:=cgbg1wl.value;
    query5.open;
    query5.first;
    while not query5.eof do
    begin
      query5.edit;
      query5.fieldbyname('mjjs').asinteger:=round(query5.fieldbyname('mjs').asfloat*(cgbg1lbzs.asinteger+cgbg1lbzs1.asinteger+cgbg1lbzs2.asinteger));
      query5.post;
      application.ProcessMessages;
      query5.next;
    end;
    cgbg2.refresh;
  end;
end;

procedure TDMfcjh.cgbg1AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgbg1.handle);
end;

procedure TDMfcjh.cgbg1BeforePost(DataSet: TDataSet);
begin
  if cgbg1.state=dsedit then begin
    cgbg1.edit;
    cgbg1.fieldbyname('rq').value:=date;
    cgbg1.fieldbyname('tm').value:=time;
  end;
end;

procedure TDMfcjh.cgbg2AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgbg2.handle);
end;

procedure TDMfcjh.cgbgylfxAfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgbgylfx.handle);
end;

procedure TDMfcjh.cgbgslfxAfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgbgslfx.handle);
end;

procedure TDMfcjh.cgbg3AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgbg3.handle);
end;

procedure TDMfcjh.cgjh3QrChange(Sender: TField);
begin
  //if (not cgjh3idno.IsNull) and (not cgjh3oacm.IsNull) then begin
  if cgjh3qr.value=true then begin
    if (not cgjh3idno.IsNull) and (not cgjh3oacm.IsNull) then begin
      cgjh3rq.Value:=date;
      cgjh3tm.Value:=time;
    end
    else begin
      cgjh3qr.value:=false;
    end;
  end;
end;

procedure TDMfcjh.cgbg3QrChange(Sender: TField);
begin
  if cgbg3qr.value=true then begin
    if (not cgbg3idno.IsNull) and (not cgbg3oacm.IsNull) then begin
      cgbg3rq.Value:=date;
      cgbg3tm.Value:=time;
    end
    else begin
      cgbg3qr.value:=false;
    end;
  end;
end;

procedure TDMfcjh.cgjh3BeforeDelete(DataSet: TDataSet);
begin
  if cgjh3.fieldbyname('qr').value=true then abort;
end;

procedure TDMfcjh.cgbg3BeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TDMfcjh.cgylfxBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TDMfcjh.cgbgslfxBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TDMfcjh.cgjh3BeforeEdit(DataSet: TDataSet);
begin
  if cgjh3.fieldbyname('qr').value=true then abort;
end;

procedure TDMfcjh.cgbg3BeforeEdit(DataSet: TDataSet);
begin
  if cgbg3.fieldbyname('qr').value=true then abort;
end;

procedure TDMfcjh.fcjy2NewRecord(DataSet: TDataSet);
begin
  fcjy2.fieldbyname('prjno').value:=fcjy1.fieldbyname('prjno').value;
  fcjy2.fieldbyname('wl').value:=fcjy1.fieldbyname('wl').value;
  fcjy2.fieldbyname('xh').value:=fcjy1.fieldbyname('xh').value;
end;

procedure TDMfcjh.lbjh2NewRecord(DataSet: TDataSet);
begin
  lbjh2.fieldbyname('prjno').value:=lbjh1.fieldbyname('prjno').value;
  lbjh2.fieldbyname('xh').value:=lbjh1.fieldbyname('xh').value;
  lbjh2.fieldbyname('wl').value:=lbjh1.fieldbyname('wl').value;
end;

procedure TDMfcjh.lbjh3NewRecord(DataSet: TDataSet);
begin
  lbjh3.fieldbyname('prjno').value:=lbjh1.fieldbyname('prjno').value;
  lbjh3.fieldbyname('xh').value:=lbjh1.fieldbyname('xh').value;
  lbjh3.fieldbyname('wl').value:=lbjh1.fieldbyname('wl').value;
end;

procedure TDMfcjh.cgjh2NewRecord(DataSet: TDataSet);
begin
  cgjh2.fieldbyname('prjno').value:=cgjh1.fieldbyname('prjno').value;
  cgjh2.fieldbyname('wl').value:=cgjh1.fieldbyname('wl').value;
  cgjh2.fieldbyname('xh').value:=cgjh1.fieldbyname('xh').value;
end;

procedure TDMfcjh.cgbg2NewRecord(DataSet: TDataSet);
begin
  cgbg2.fieldbyname('prjno').value:=cgbg1.fieldbyname('prjno').value;
  cgbg2.fieldbyname('wl').value:=cgbg1.fieldbyname('wl').value;
  cgbg2.fieldbyname('xh').value:=cgbg1.fieldbyname('xh').value;
end;

procedure TDMfcjh.cgbgylfxYblChange(Sender: TField);
begin
  if not cgbgylfxybl.isnull then begin
    if not cgbgylfxhsl.IsNull then begin
      if not cgbgylfxscsh.IsNull then begin
       {if not cgbgylfxyfsl.isnull then begin
        cgbgylfxcutyl.value:=cgbgylfxsjyl.Value*100*100*100/((100-cgbgylfxybl.value)*(100-cgbgylfxhsl.value)*(100-cgbgylfxscsh.value));
        cgbgylfxylxc.Value:=cgbgylfxyfsl.value-cgbgylfxcutyl.value;//cgbgylfxcacyl.Value-cgbgylfxcutyl.Value;
       end;}
      end;
    end;
  end;
end;

procedure TDMfcjh.cgd1AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgd1.handle);
end;

procedure TDMfcjh.cgd2AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgd2.handle);
end;

procedure TDMfcjh.cgd3AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgd3.handle);
end;

procedure TDMfcjh.cgdwlAfterPost(DataSet: TDataSet);
begin
  dbisavechanges(cgdwl.handle);
end;

procedure TDMfcjh.cgd2MjsChange(Sender: TField);
var
  ylbzs:integer;
begin
  if cgd2.state=dsedit then begin
    if not cgd2.fieldbyname('mjs').isnull then begin
      ylbzs:=cgd1.fieldbyname('ylbzs').value;
      cgd2.fieldbyname('mjjs').asinteger:=round(cgd2.fieldbyname('mjs').value*ylbzs);
    end;
  end;
end;

end.
