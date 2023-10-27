unit bglyu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, DBTables, StdCtrls, DBCtrls, Grids,
  DBGridEh, Buttons, wwdbdatetimepicker, Mask, ppCache, ppDB, ppDBPipe,
  ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppViewr,
  ppCtrls, ppPrnabl, ppStrtch, ppRichTx, RXCtrls, ppMemo, ppRegion,
  ComCtrls, wwriched, wwrichedspell, ppSubRpt, myChkBox;

type
  Tfrmbgly = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Edit1: TEdit;
    DateTimePicker1: TwwDBDateTimePicker;
    Label14: TLabel;
    DBComboBox2: TDBComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGridEh1: TDBGridEh;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    dsrmaster: TDataSource;
    dsrdetail: TDataSource;
    ppBDEPipeline2: TppBDEPipeline;
    ppBDEPipeline1: TppBDEPipeline;
    BitBtn6: TBitBtn;
    Label8: TLabel;
    lrmaster: TppBDEPipeline;
    ppReport2: TppReport;
    lrdetail: TppBDEPipeline;
    dslmaster: TDataSource;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppLabel57: TppLabel;
    ppDBText40: TppDBText;
    ppLabel58: TppLabel;
    gys: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    dslbg1: TDataSource;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel66: TppLabel;
    cgdh: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel86: TppLabel;
    ppShape28: TppShape;
    ppDBRichText3: TppDBRichText;
    ppLabel87: TppLabel;
    ppShape29: TppShape;
    pjfd: TppLabel;
    kgfd: TppLabel;
    fdqb: TppLabel;
    zhs: TppLabel;
    zcd: TppLabel;
    cdqb: TppLabel;
    pjmj: TppLabel;
    pjsh: TppLabel;
    ppLabel74: TppLabel;
    ppLabel79: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppShape47: TppShape;
    jdh8: TppLabel;
    jcd8: TppLabel;
    jdh7: TppLabel;
    jcd7: TppLabel;
    jdh6: TppLabel;
    jdh5: TppLabel;
    jcd5: TppLabel;
    jcd6: TppLabel;
    jdh4: TppLabel;
    jcd4: TppLabel;
    jdh3: TppLabel;
    jcd3: TppLabel;
    jdh1: TppLabel;
    jdh2: TppLabel;
    jcd1: TppLabel;
    jcd2: TppLabel;
    jdh9: TppLabel;
    jdh10: TppLabel;
    jcd9: TppLabel;
    jcd10: TppLabel;
    jdh11: TppLabel;
    jcd11: TppLabel;
    jdh12: TppLabel;
    jcd12: TppLabel;
    jdh13: TppLabel;
    jcd13: TppLabel;
    jdh14: TppLabel;
    jcd14: TppLabel;
    jdh15: TppLabel;
    jcd15: TppLabel;
    jdh16: TppLabel;
    jcd16: TppLabel;
    jff91: TppLabel;
    jff92: TppLabel;
    jff93: TppLabel;
    jff94: TppLabel;
    jff101: TppLabel;
    jff102: TppLabel;
    jff103: TppLabel;
    jff104: TppLabel;
    jff111: TppLabel;
    jff112: TppLabel;
    jff113: TppLabel;
    jff114: TppLabel;
    jff121: TppLabel;
    jff122: TppLabel;
    jff123: TppLabel;
    jff124: TppLabel;
    jff131: TppLabel;
    jff132: TppLabel;
    jff133: TppLabel;
    jff134: TppLabel;
    jff144: TppLabel;
    jff141: TppLabel;
    jff142: TppLabel;
    jff143: TppLabel;
    jff151: TppLabel;
    jff152: TppLabel;
    jff153: TppLabel;
    jff154: TppLabel;
    jff161: TppLabel;
    jff162: TppLabel;
    jff163: TppLabel;
    jff164: TppLabel;
    jff11: TppLabel;
    jff12: TppLabel;
    jff13: TppLabel;
    jff14: TppLabel;
    jff21: TppLabel;
    jff22: TppLabel;
    jff23: TppLabel;
    jff24: TppLabel;
    jff31: TppLabel;
    jff32: TppLabel;
    jff33: TppLabel;
    jff34: TppLabel;
    jff41: TppLabel;
    jff42: TppLabel;
    jff43: TppLabel;
    jff44: TppLabel;
    jff51: TppLabel;
    jff52: TppLabel;
    jff53: TppLabel;
    jff54: TppLabel;
    jff61: TppLabel;
    jff62: TppLabel;
    jff63: TppLabel;
    jff64: TppLabel;
    jff71: TppLabel;
    jff72: TppLabel;
    jff73: TppLabel;
    jff74: TppLabel;
    jff81: TppLabel;
    jff82: TppLabel;
    jff83: TppLabel;
    jff84: TppLabel;
    fdh5: TppLabel;
    fcd5: TppLabel;
    cas5: TppLabel;
    js5: TppLabel;
    fdh6: TppLabel;
    fcd6: TppLabel;
    cas6: TppLabel;
    js6: TppLabel;
    fdh7: TppLabel;
    fcd7: TppLabel;
    cas7: TppLabel;
    js7: TppLabel;
    fdh8: TppLabel;
    fcd8: TppLabel;
    cas8: TppLabel;
    js8: TppLabel;
    fdh1: TppLabel;
    fcd1: TppLabel;
    cas1: TppLabel;
    js1: TppLabel;
    fdh2: TppLabel;
    fcd2: TppLabel;
    cas2: TppLabel;
    js2: TppLabel;
    fdh3: TppLabel;
    fcd3: TppLabel;
    cas3: TppLabel;
    js3: TppLabel;
    fdh4: TppLabel;
    fcd4: TppLabel;
    cas4: TppLabel;
    js4: TppLabel;
    ppMemo1: TppMemo;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel106: TppLabel;
    ppDBText19: TppDBText;
    ppLabel107: TppLabel;
    ppDBText25: TppDBText;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine1: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    lblgys: TppLabel;
    ppLabel37: TppLabel;
    ppShape13: TppShape;
    ppLabel23: TppLabel;
    ppDBText18: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText20: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText22: TppDBText;
    ppLabel28: TppLabel;
    sqmsyl: TppDBText;
    ppDBText21: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    zf: TppLabel;
    ppLabel50: TppLabel;
    ppDBText35: TppDBText;
    ppLabel30: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel98: TppLabel;
    tgfd: TppLabel;
    ppLabel102: TppLabel;
    ppDBText26: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppRegion1: TppRegion;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape14: TppShape;
    ppDBText31: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel13: TppLabel;
    ppDBText15: TppDBText;
    ppLabel34: TppLabel;
    ppDBText28: TppDBText;
    ppLabel6: TppLabel;
    ppDBText14: TppDBText;
    ppLabel22: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape23: TppShape;
    ppLabel29: TppLabel;
    ppDBText16: TppDBText;
    ppLabel31: TppLabel;
    ppDBText17: TppDBText;
    ppLabel35: TppLabel;
    ppDBText29: TppDBText;
    ppLabel36: TppLabel;
    ppDBText30: TppDBText;
    ppRegion2: TppRegion;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppLabel48: TppLabel;
    ppDBText33: TppDBText;
    ppLabel49: TppLabel;
    ppDBText34: TppDBText;
    dh1: TppLabel;
    dh2: TppLabel;
    dh3: TppLabel;
    ppLine3: TppLine;
    dh4: TppLabel;
    dh5: TppLabel;
    fscd1: TppLabel;
    fscd2: TppLabel;
    fscd3: TppLabel;
    sbcd1: TppLabel;
    bz1: TppLabel;
    sbcd2: TppLabel;
    bz2: TppLabel;
    sbcd3: TppLabel;
    bz3: TppLabel;
    fscd4: TppLabel;
    fscd5: TppLabel;
    sbcd4: TppLabel;
    bz4: TppLabel;
    sbcd5: TppLabel;
    bz5: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText32: TppDBText;
    ppLabel96: TppLabel;
    ppDBRichText1: TppDBRichText;
    ppLabel97: TppLabel;
    ppShape22: TppShape;
    ppDBRichText2: TppDBRichText;
    ppLabel99: TppLabel;
    ld: TppLabel;
    scl: TppLabel;
    zsh: TppLabel;
    ppLabel103: TppLabel;
    ppDBText24: TppDBText;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    tgzl: TppLabel;
    ppLabel108: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    zsyl: TppLabel;
    ppShape48: TppShape;
    ppLabel112: TppLabel;
    ppDBRichText4: TppDBRichText;
    Label9: TLabel;
    ppLabel20: TppLabel;
    ppShape49: TppShape;
    ppDBRichText5: TppDBRichText;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    ppLabel21: TppLabel;
    myDBCheckBox4: TmyDBCheckBox;
    ppLabel113: TppLabel;
    DBRichEdit1: TwwDBRichEdit;
    DBRichEdit2: TwwDBRichEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppReport1BeforePrint(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbgly: Tfrmbgly;
  mifwd:integer;
  mifwt:double;
  ptype,pno:string;
implementation
uses ybjly5u, idcxu, zjcxu, pocx, impqcdm, fcu;
{$R *.DFM}

procedure Tfrmbgly.FormShow(Sender: TObject);
begin
  edit1.text:='';
end;

procedure Tfrmbgly.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmbgly.BitBtn3Click(Sender: TObject);
begin
 if (qcdm.yb1.recordcount>0) and (dbedit1.text<>'') then
 begin
    if frmybjly5=nil then frmybjly5:=tfrmybjly5.create(self);
    frmybjly5.pagecontrol1.activepage:=frmybjly5.tabsheet1;
    frmybjly5.show;
 end;
end;

procedure Tfrmbgly.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmbgly.Edit1Change(Sender: TObject);
begin
  {qcdm.yb1.EditKey;
  qcdm.yb1.IndexFieldnames:='rno';
  qcdm.yb1.setkey;}
  qcdm.yb1.findnearest([edit1.text]);
end;

procedure Tfrmbgly.BitBtn5Click(Sender: TObject);
begin
  if frmidcx=nil then frmidcx:=tfrmidcx.create(self);
  frmidcx.MaskEdit1.text:='      -S    ';
  frmidcx.label2.caption:='yb';
  frmidcx.show;
end;

procedure Tfrmbgly.BitBtn2Click(Sender: TObject);
begin
 screen.Cursor:=crhourglass;
 if qcdm.yb1.recordcount>0 then
 begin
  with qcdm.qry1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'rno',ptinput);
    commandtext:='select pname from yb1 where rno=:rno';
    params[0].asstring:=qcdm.yb1.fieldbyname('rno').value;
    open;
  end;
  if qcdm.qry1.recordcount>0 then
  begin
   ptype:=copy(qcdm.qry1.fieldbyname('pname').value,1,pos('-',qcdm.qry1.fieldbyname('pname').value)-1);
   pno:=copy(qcdm.qry1.fieldbyname('pname').value,pos('-',qcdm.qry1.fieldbyname('pname').value)+1,length(qcdm.qry1.fieldbyname('pname').value));
   with qcdm.qry2 do begin
     close;
     params.clear;
     params.createparam(ftstring,'ptype',ptinput);
     params.createparam(ftstring,'pno',ptinput);
     commandtext:='select pno,ptype from wl where ptype=:ptype and pno=:pno';
     params[0].asstring:=ptype;
     params[1].asstring:=pno;
     open;
   end;
   if qcdm.qry2.recordcount>0 then
   begin
     with qcdm.qry5 do begin
       close;
       params.clear;
       params.createparam(ftstring,'rno',ptinput);
       params.createparam(ftstring,'ptype',ptinput);
       params.createparam(ftstring,'pno',ptinput);
       commandtext:='select (yb3.ums-yb3.mtr)*100/yb3.mtr as jcsh,yb3.*,yb3.ums*(100-yb3.zlxs)/100 as yscd,yb3.ums*(100-yb3.zlxs)*(100-hsl)/10000 as hscd,'+
       'yb1.rrq,yb1.pno,yb1.pname,yb1.qc,yb1.sh,wl.ptype,wl.gys from yb3,yb1,wl '+
       'where yb3.rno=yb1.rno and yb1.rno=:rno and wl.ptype=:ptype and wl.pno=:pno order by yb3.jh asc';
       params[0].asstring:=qcdm.yb1.fieldbyname('rno').value;
       params[1].asstring:=ptype;
       params[2].asstring:=pno;
       open;
     end;
     lblgys.caption:=qcdm.qry5.fieldbyname('gys').value;
   end
   else
   begin
     with qcdm.qry5 do begin
       close;
       params.clear;
       params.createparam(ftstring,'rno',ptinput);
       commandtext:='select (yb3.ums-yb3.mtr)*100/yb3.mtr as jcsh,yb3.*,yb3.ums*(100-yb3.zlxs)/100 as yscd,'+
       'yb3.ums*(100-yb3.zlxs)*(100-hsl)/10000 as hscd,yb1.rrq,yb1.pno,yb1.pname,yb1.qc,yb1.sh from yb3,yb1 '+
       'where yb3.rno=yb1.rno and yb1.rno=:rno order by yb3.jh asc';
       params[0].asstring:=qcdm.yb1.fieldbyname('rno').value;
       open;
     end;
     lblgys.caption:='';
   end;
   if qcdm.qry5.recordcount>0 then
   begin
    with qcdm.qry6 do begin
      active:=false;
      params.clear;
      params.createparam(ftstring,'rno',ptinput);
      params.createparam(ftstring,'rch',ptinput);
      params.createparam(ftinteger,'jh',ptinput);
      commandtext:='select * from yb4 where rno=:rno1 and rch=:rch1 and jh=:jh1';
      params[0].asstring:=qcdm.qry5.fieldbyname('rno').value;
      params[1].asstring:=qcdm.qry5.fieldbyname('rch').value;
      params[2].asinteger:=qcdm.qry5.fieldbyname('jh').value;
      active:=true;
    end;
    if qcdm.qry6.recordcount>0 then
    begin
      ppdetailband1.DataPipeline:=ppbdepipeline2;
    end
    else
    begin
      ppdetailband1.DataPipeline:=nil;
    end;
    ppreport1.print;
   end;
  end;
 end;
 screen.Cursor:=crdefault;
end;

procedure Tfrmbgly.BitBtn6Click(Sender: TObject);
begin
 screen.cursor:=crhourglass;
 gys.Caption:='';cgdh.caption:='';
 if qcdm.yb1.recordcount>0 then
 begin
  if not qcdm.yb1.fieldbyname('pname').isnull then
  begin
    ptype:=copy(qcdm.yb1.fieldbyname('pname').value,1,pos('-',qcdm.yb1.fieldbyname('pname').value)-1);
    pno:=copy(qcdm.yb1.fieldbyname('pname').value,pos('-',qcdm.yb1.fieldbyname('pname').value)+1,15);
  end;
  with qcdm.qry1 do begin
   close;
   params.clear;
   params.createparam(ftstring,'ptype',ptinput);
   params.createparam(ftstring,'pno',ptinput);
   commandtext:='select gys from wl where ptype=:ptype and pno=:pno';
   params[0].asstring:=ptype;
   params[1].asstring:=pno;
   open;
  end;
  if not qcdm.qry1.fieldbyname('gys').isnull then gys.caption:=qcdm.qry1.fieldbyname('gys').value;
  qcdm.qry4.close;
  qcdm.qry4.params.clear;
  qcdm.qry4.commandtext:='delete from lbg1';
  qcdm.qry4.Execute;
  with qcdm.qry1 do begin
   close;
   params.clear;
   params.createparam(ftstring,'rno',ptinput);
   commandtext:='select rno,color,rch,zldj,btbfd,mfd,mtr,hsl,shl,gh from yb3 where rno=:rno';
   params[0].asstring:=qcdm.yb1.fieldbyname('rno').value;
   open;
  end;
  if qcdm.qry1.recordcount>0 then
  begin
    qcdm.qry1.first;
    while not qcdm.qry1.eof do
    begin
      qcdm.qry4.close;
      qcdm.qry4.params.clear;
      qcdm.qry4.commandtext:='select * from lbg1';
      qcdm.qry4.open;
      qcdm.qry4.append;
      qcdm.qry4.fieldbyname('rno').value:=qcdm.qry1.fieldbyname('rno').value;
      qcdm.qry4.fieldbyname('color').value:=qcdm.qry1.fieldbyname('color').value;
      qcdm.qry4.fieldbyname('rch').value:=qcdm.qry1.fieldbyname('rch').value;
      if not qcdm.qry1.fieldbyname('zldj').isnull then
      qcdm.qry4.fieldbyname('zldj').value:=qcdm.qry1.fieldbyname('zldj').value;
      qcdm.qry4.fieldbyname('ztfd').value:=qcdm.qry1.fieldbyname('btbfd').value;
      qcdm.qry4.fieldbyname('jymj').value:=qcdm.qry1.fieldbyname('mfd').value;
      qcdm.qry4.fieldbyname('hscd').value:=qcdm.qry1.fieldbyname('mtr').value*(100-qcdm.qry1.fieldbyname('hsl').value)/100;
      qcdm.qry4.fieldbyname('zshl').value:=qcdm.qry1.fieldbyname('shl').value;
      if not qcdm.qry1.fieldbyname('gh').isnull then
      qcdm.qry4.fieldbyname('gh').value:=qcdm.qry1.fieldbyname('gh').value;
      qcdm.qry4.fieldbyname('mtr').value:=qcdm.qry1.fieldbyname('mtr').value;
      qcdm.qry4.post;
      qcdm.qry4.applyupdates(-1);
      qcdm.qry1.next;
    end;
  end;
  qcdm.qry2.close;
  qcdm.qry2.params.clear;
  qcdm.qry2.commandtext:='delete from lbg2';
  qcdm.qry2.execute;
  with qcdm.qry1 do begin
   close;
   params.clear;
   params.createparam(ftstring,'rno',ptinput);
   commandtext:='select yb3.rno,yb3.gh,yb3.color,yb4.bh,yb4.cd,sum(yb4.ff1) as ff1,sum(yb4.ff11) as ff2,'+
   'sum(yb4.ff12) as ff3,sum(yb4.ff13) as ff4 from yb3,yb4 where yb4.rno=yb3.rno and yb4.rch=yb3.rch '+
   'and yb4.jh=yb3.jh and yb3.rno=:rno group by rno,gh,color,bh,cd';
   params[0].asstring:=qcdm.yb1.fieldbyname('rno').value;
   open;
  end;
  if qcdm.qry1.recordcount>0 then
  begin
    qcdm.qry1.first;
    while not qcdm.qry1.eof do
    begin
      qcdm.qry2.close;
      qcdm.qry2.params.clear;
      qcdm.qry2.commandtext:='select * from lbg2';
      qcdm.qry2.open;
      qcdm.qry2.append;
      qcdm.qry2.fieldbyname('rno').value:=qcdm.qry1.fieldbyname('rno').value;
      if not qcdm.qry1.fieldbyname('gh').isnull then
      qcdm.qry2.fieldbyname('gh').value:=qcdm.qry1.fieldbyname('gh').value;
      qcdm.qry2.fieldbyname('color').value:=qcdm.qry1.fieldbyname('color').value;
      if not qcdm.qry1.fieldbyname('bh').isnull then
      qcdm.qry2.fieldbyname('bh').value:=qcdm.qry1.fieldbyname('bh').value;
      if not qcdm.qry1.fieldbyname('cd').isnull then
      qcdm.qry2.fieldbyname('cd').value:=qcdm.qry1.fieldbyname('cd').value;
      qcdm.qry2.fieldbyname('ff1').value:=qcdm.qry1.fieldbyname('ff1').value;
      qcdm.qry2.fieldbyname('ff2').value:=qcdm.qry1.fieldbyname('ff2').value;
      qcdm.qry2.fieldbyname('ff3').value:=qcdm.qry1.fieldbyname('ff3').value;
      qcdm.qry2.fieldbyname('ff4').value:=qcdm.qry1.fieldbyname('ff4').value;
      qcdm.qry2.post;
      qcdm.qry2.applyupdates(-1);
      qcdm.qry1.next;
    end;
  end;
  qcdm.qry3.close;
  qcdm.qry3.params.clear;
  qcdm.qry3.commandtext:='delete from lbg3';
  qcdm.qry3.execute;
  with qcdm.qry1 do begin
   close;
   params.clear;
   params.createparam(ftstring,'rno',ptinput);
   commandtext:='select yb3.rno,yb3.gh,yb3.color,yb2.bh,yb2.cd,yb2.qw,yb2.zd,yb2.yz,count(yb3.rno) as js from yb3,yb2 '+
   'where yb2.rno=yb3.rno and yb2.rch=yb3.rch and yb2.jh=yb3.jh and yb3.rno=:rno group by rno,gh,color,bh,cd,qw,zd,yz';
   params[0].asstring:=qcdm.yb1.fieldbyname('rno').value;
   open;
  end;
  if qcdm.qry1.recordcount>0 then
  begin
    qcdm.qry1.first;
    while not qcdm.qry1.Eof do
    begin
      qcdm.qry3.close;
      qcdm.qry3.params.clear;
      qcdm.qry3.commandtext:='select * from lbg3';
      qcdm.qry3.open;
      qcdm.qry3.append;
      qcdm.qry3.fieldbyname('rno').value:=qcdm.qry1.fieldbyname('rno').value;
      if not qcdm.qry1.fieldbyname('gh').isnull then
      qcdm.qry3.fieldbyname('gh').value:=qcdm.qry1.fieldbyname('gh').value;
      qcdm.qry3.fieldbyname('color').value:=qcdm.qry1.fieldbyname('color').value;
      if not qcdm.qry1.fieldbyname('bh').isnull then
      qcdm.qry3.fieldbyname('bh').value:=qcdm.qry1.fieldbyname('bh').value;
      if not qcdm.qry1.fieldbyname('cd').isnull then
      qcdm.qry3.fieldbyname('cd').value:=qcdm.qry1.fieldbyname('cd').value;
      if qcdm.qry1.fieldbyname('qw').value=true then
      qcdm.qry3.fieldbyname('cas').value:='淮稬';
      if qcdm.qry1.fieldbyname('zd').value=true then
      qcdm.qry3.fieldbyname('cas').value:='い单';
      if qcdm.qry1.fieldbyname('yz').value=true then
      qcdm.qry3.fieldbyname('cas').value:='腨';
      qcdm.qry3.fieldbyname('js').value:=qcdm.qry1.fieldbyname('js').value;
      qcdm.qry3.post;
      qcdm.qry3.applyupdates(-1);
      qcdm.qry1.next;
    end;
  end;
  with qcdm.qry7 do begin
   close;
   params.clear;
   params.createparam(ftstring,'rno',ptinput);
   commandtext:='select yb1.rno,yb1.qc,yb1.sh,yb1.qaps,yb3.color,yb3.ph,yb1.pname,yb1.pno,yb1.bz,yb1.oyes,yb1.cano,count(rno) as jh from yb1,yb3 '+
   'where yb3.rno=yb1.rno and yb1.rno=:rno group by rno,color,qc,sh,qaps,ph,pno,pname,bz,oyes,cano';
   params[0].asstring:=dbedit1.text;//qcdm.yb1.fieldbyname('rno').value;
   open;
  end;
  if qcdm.qry7.recordcount>0 then
  begin
    if not qcdm.qry7.fieldbyname('ph').isnull then cgdh.caption:=qcdm.qry7.fieldbyname('ph').value;
    with qcdm.qry8 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select * from lbg1 where rno=:rno and color=:color';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    ppreport2.print;
  end;
 end;
 screen.cursor:=crdefault;
end;

procedure Tfrmbgly.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmbgly.ppGroupHeaderBand3BeforePrint(Sender: TObject);
begin
  ppmemo1.Lines.clear;fdh1.caption:='';fdh2.caption:='';fdh3.Caption:='';fdh4.caption:='';fdh5.caption:='';fdh6.caption:='';fdh7.caption:='';fdh8.caption:='';
  fcd1.caption:='';fcd2.caption:='';fcd3.caption:='';fcd4.caption:='';fcd5.caption:='';fcd6.caption:='';fcd7.caption:='';fcd8.caption:='';
  cas1.caption:='';cas2.caption:='';cas3.caption:='';cas4.caption:='';cas5.caption:='';cas6.caption:='';cas7.caption:='';cas8.caption:='';
  js1.caption:='';js2.caption:='';js3.caption:='';js4.caption:='';js5.caption:='';js6.caption:='';js7.caption:='';js8.caption:='';
  jdh1.caption:='';jdh2.caption:='';jdh3.Caption:='';jdh4.caption:='';jdh5.caption:='';jdh6.caption:='';jdh7.caption:='';jdh8.caption:='';
  jdh9.caption:='';jdh10.caption:='';jdh11.Caption:='';jdh12.caption:='';jdh13.caption:='';jdh14.caption:='';jdh15.caption:='';jdh16.caption:='';
  jcd1.caption:='';jcd2.caption:='';jcd3.Caption:='';jcd4.caption:='';jcd5.caption:='';jcd6.caption:='';jcd7.caption:='';jcd8.caption:='';
  jcd9.caption:='';jcd10.caption:='';jcd11.Caption:='';jcd12.caption:='';jcd13.caption:='';jcd14.caption:='';jcd15.caption:='';jcd16.caption:='';
  jff11.caption:='';jff12.caption:='';jff13.caption:='';jff14.caption:='';
  jff21.caption:='';jff22.caption:='';jff23.caption:='';jff24.caption:='';
  jff31.caption:='';jff32.caption:='';jff33.caption:='';jff34.caption:='';
  jff41.caption:='';jff42.caption:='';jff43.caption:='';jff44.caption:='';
  jff51.caption:='';jff52.caption:='';jff53.caption:='';jff54.caption:='';
  jff61.caption:='';jff62.caption:='';jff63.caption:='';jff64.caption:='';
  jff71.caption:='';jff72.caption:='';jff73.caption:='';jff74.caption:='';
  jff81.caption:='';jff82.caption:='';jff83.caption:='';jff84.caption:='';
  jff91.caption:='';jff92.caption:='';jff93.caption:='';jff94.caption:='';
  jff101.caption:='';jff102.caption:='';jff103.caption:='';jff104.caption:='';
  jff111.caption:='';jff112.caption:='';jff113.caption:='';jff114.caption:='';
  jff121.caption:='';jff122.caption:='';jff123.caption:='';jff124.caption:='';
  jff131.caption:='';jff132.caption:='';jff133.caption:='';jff134.caption:='';
  jff141.caption:='';jff142.caption:='';jff143.caption:='';jff144.caption:='';
  jff151.caption:='';jff152.caption:='';jff153.caption:='';jff154.caption:='';
  jff161.caption:='';jff162.caption:='';jff163.caption:='';jff164.caption:='';
  if qcdm.qry7.recordcount>0 then
  begin
    with qcdm.qry3 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select rno,color,gjcl,count(rno) as zs from yb3 where rno=:rno and color=:color group by rno,color,gjcl';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
    //qcdm.qry3.params[1].asstring:=qcdm.qry7.fieldbyname('gh').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    if qcdm.qry3.recordcount>0 then
    begin
      qcdm.qry3.first;
      while not qcdm.qry3.eof do
      begin
        if not qcdm.qry3.fieldbyname('gjcl').isnull then
        ppmemo1.Lines.add(qcdm.qry3.fieldbyname('gjcl').value+'    '+inttostr(qcdm.qry3.fieldbyname('zs').value)+'');
        qcdm.qry3.next;
      end;
    end;
    with qcdm.qry2 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select * from lbg2 where rno=:rno and color=:color';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    if qcdm.qry2.recordcount>0 then
    begin
      qcdm.qry2.first;
      if not qcdm.qry2.fieldbyname('bh').isnull then jdh1.caption:=qcdm.qry2.fieldbyname('bh').value;
      jcd1.caption:=qcdm.qry2.fieldbyname('cd').value;
      if qcdm.qry2.fieldbyname('ff1').value>0 then
      jff11.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
      if qcdm.qry2.fieldbyname('ff2').value>0 then
      jff12.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
      if qcdm.qry2.fieldbyname('ff3').value>0 then
      jff13.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
      if qcdm.qry2.fieldbyname('ff4').value>0 then
      jff14.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
      qcdm.qry2.next;
      if not qcdm.qry2.eof then
      begin
       if not qcdm.qry2.fieldbyname('bh').isnull then jdh2.caption:=qcdm.qry2.fieldbyname('bh').value;
       jcd2.caption:=qcdm.qry2.fieldbyname('cd').value;
       if qcdm.qry2.fieldbyname('ff1').value>0 then
       jff21.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
       if qcdm.qry2.fieldbyname('ff2').value>0 then
       jff22.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
       if qcdm.qry2.fieldbyname('ff3').value>0 then
       jff23.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
       if qcdm.qry2.fieldbyname('ff4').value>0 then
       jff24.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
       qcdm.qry2.next;
       if not qcdm.qry2.eof then
       begin
        if not qcdm.qry2.fieldbyname('bh').isnull then jdh3.caption:=qcdm.qry2.fieldbyname('bh').value;
        jcd3.caption:=qcdm.qry2.fieldbyname('cd').value;
        if qcdm.qry2.fieldbyname('ff1').value>0 then
        jff31.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
        if qcdm.qry2.fieldbyname('ff2').value>0 then
        jff32.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
        if qcdm.qry2.fieldbyname('ff3').value>0 then
        jff33.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
        if qcdm.qry2.fieldbyname('ff4').value>0 then
        jff34.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
        qcdm.qry2.next;
        if not qcdm.qry2.eof then
        begin
         if not qcdm.qry2.fieldbyname('bh').isnull then jdh4.caption:=qcdm.qry2.fieldbyname('bh').value;
         jcd4.caption:=qcdm.qry2.fieldbyname('cd').value;
         if qcdm.qry2.fieldbyname('ff1').value>0 then
         jff41.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
         if qcdm.qry2.fieldbyname('ff2').value>0 then
         jff42.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
         if qcdm.qry2.fieldbyname('ff3').value>0 then
         jff43.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
         if qcdm.qry2.fieldbyname('ff4').value>0 then
         jff44.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
         qcdm.qry2.next;
         if not qcdm.qry2.eof then
         begin
          if not qcdm.qry2.fieldbyname('bh').isnull then jdh5.caption:=qcdm.qry2.fieldbyname('bh').value;
          jcd5.caption:=qcdm.qry2.fieldbyname('cd').value;
          if qcdm.qry2.fieldbyname('ff1').value>0 then
          jff51.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
          if qcdm.qry2.fieldbyname('ff2').value>0 then
          jff52.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
          if qcdm.qry2.fieldbyname('ff3').value>0 then
          jff53.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
          if qcdm.qry2.fieldbyname('ff4').value>0 then
          jff54.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
          qcdm.qry2.next;
          if not qcdm.qry2.eof then
          begin
           if not qcdm.qry2.fieldbyname('bh').isnull then jdh6.caption:=qcdm.qry2.fieldbyname('bh').value;
           jcd6.caption:=qcdm.qry2.fieldbyname('cd').value;
           if qcdm.qry2.fieldbyname('ff1').value>0 then
           jff61.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
           if qcdm.qry2.fieldbyname('ff2').value>0 then
           jff62.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
           if qcdm.qry2.fieldbyname('ff3').value>0 then
           jff63.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
           if qcdm.qry2.fieldbyname('ff4').value>0 then
           jff64.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
           qcdm.qry2.next;
           if not qcdm.qry2.eof then
           begin
            if not qcdm.qry2.fieldbyname('bh').isnull then jdh7.caption:=qcdm.qry2.fieldbyname('bh').value;
            jcd7.caption:=qcdm.qry2.fieldbyname('cd').value;
            if qcdm.qry2.fieldbyname('ff1').value>0 then
            jff71.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
            if qcdm.qry2.fieldbyname('ff2').value>0 then
            jff72.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
            if qcdm.qry2.fieldbyname('ff3').value>0 then
            jff73.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
            if qcdm.qry2.fieldbyname('ff4').value>0 then
            jff74.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
            qcdm.qry2.next;
            if not qcdm.qry2.eof then
            begin
             if not qcdm.qry2.fieldbyname('bh').isnull then jdh8.caption:=qcdm.qry2.fieldbyname('bh').value;
             jcd8.caption:=qcdm.qry2.fieldbyname('cd').value;
             if qcdm.qry2.fieldbyname('ff1').value>0 then
             jff81.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
             if qcdm.qry2.fieldbyname('ff2').value>0 then
             jff82.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
             if qcdm.qry2.fieldbyname('ff3').value>0 then
             jff83.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
             if qcdm.qry2.fieldbyname('ff4').value>0 then
             jff84.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
             qcdm.qry2.next;
             if not qcdm.qry2.eof then
             begin
              if not qcdm.qry2.fieldbyname('bh').isnull then jdh9.caption:=qcdm.qry2.fieldbyname('bh').value;
              jcd9.caption:=qcdm.qry2.fieldbyname('cd').value;
              if qcdm.qry2.fieldbyname('ff1').value>0 then
              jff91.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
              if qcdm.qry2.fieldbyname('ff2').value>0 then
              jff92.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
              if qcdm.qry2.fieldbyname('ff3').value>0 then
              jff93.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
              if qcdm.qry2.fieldbyname('ff4').value>0 then
              jff94.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
              qcdm.qry2.next;
              if not qcdm.qry2.eof then
              begin
               if not qcdm.qry2.fieldbyname('bh').isnull then jdh10.caption:=qcdm.qry2.fieldbyname('bh').value;
               jcd10.caption:=qcdm.qry2.fieldbyname('cd').value;
               if qcdm.qry2.fieldbyname('ff1').value>0 then
               jff101.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
               if qcdm.qry2.fieldbyname('ff2').value>0 then
               jff102.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
               if qcdm.qry2.fieldbyname('ff3').value>0 then
               jff103.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
               if qcdm.qry2.fieldbyname('ff4').value>0 then
               jff104.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
               qcdm.qry2.next;
               if not qcdm.qry2.eof then
               begin
                if not qcdm.qry2.fieldbyname('bh').isnull then jdh11.caption:=qcdm.qry2.fieldbyname('bh').value;
                jcd11.caption:=qcdm.qry2.fieldbyname('cd').value;
                if qcdm.qry2.fieldbyname('ff1').value>0 then
                jff111.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
                if qcdm.qry2.fieldbyname('ff2').value>0 then
                jff112.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
                if qcdm.qry2.fieldbyname('ff3').value>0 then
                jff113.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
                if qcdm.qry2.fieldbyname('ff4').value>0 then
                jff114.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
                qcdm.qry2.next;
                if not qcdm.qry2.eof then
                begin
                 if not qcdm.qry2.fieldbyname('bh').isnull then jdh12.caption:=qcdm.qry2.fieldbyname('bh').value;
                 jcd12.caption:=qcdm.qry2.fieldbyname('cd').value;
                 if qcdm.qry2.fieldbyname('ff1').value>0 then
                 jff121.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
                 if qcdm.qry2.fieldbyname('ff2').value>0 then
                 jff122.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
                 if qcdm.qry2.fieldbyname('ff3').value>0 then
                 jff123.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
                 if qcdm.qry2.fieldbyname('ff4').value>0 then
                 jff124.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
                 qcdm.qry2.next;
                 if not qcdm.qry2.eof then
                 begin
                  if not qcdm.qry2.fieldbyname('bh').isnull then jdh13.caption:=qcdm.qry2.fieldbyname('bh').value;
                  jcd13.caption:=qcdm.qry2.fieldbyname('cd').value;
                  if qcdm.qry2.fieldbyname('ff1').value>0 then
                  jff131.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
                  if qcdm.qry2.fieldbyname('ff2').value>0 then
                  jff132.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
                  if qcdm.qry2.fieldbyname('ff3').value>0 then
                  jff133.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
                  if qcdm.qry2.fieldbyname('ff4').value>0 then
                  jff134.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
                  qcdm.qry2.next;
                  if not qcdm.qry2.eof then
                  begin
                   if not qcdm.qry2.fieldbyname('bh').isnull then jdh14.caption:=qcdm.qry2.fieldbyname('bh').value;
                   jcd14.caption:=qcdm.qry2.fieldbyname('cd').value;
                   if qcdm.qry2.fieldbyname('ff1').value>0 then
                   jff141.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
                   if qcdm.qry2.fieldbyname('ff2').value>0 then
                   jff142.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
                   if qcdm.qry2.fieldbyname('ff3').value>0 then
                   jff143.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
                   if qcdm.qry2.fieldbyname('ff4').value>0 then
                   jff144.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
                   qcdm.qry2.next;
                   if not qcdm.qry2.eof then
                   begin
                    if not qcdm.qry2.fieldbyname('bh').isnull then jdh15.caption:=qcdm.qry2.fieldbyname('bh').value;
                    jcd15.caption:=qcdm.qry2.fieldbyname('cd').value;
                    if qcdm.qry2.fieldbyname('ff1').value>0 then
                    jff151.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
                    if qcdm.qry2.fieldbyname('ff2').value>0 then
                    jff152.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
                    if qcdm.qry2.fieldbyname('ff3').value>0 then
                    jff153.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
                    if qcdm.qry2.fieldbyname('ff4').value>0 then
                    jff154.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
                    qcdm.qry2.next;
                    if not qcdm.qry2.eof then
                    begin
                     if not qcdm.qry2.fieldbyname('bh').isnull then jdh16.caption:=qcdm.qry2.fieldbyname('bh').value;
                     jcd16.caption:=qcdm.qry2.fieldbyname('cd').value;
                     if qcdm.qry2.fieldbyname('ff1').value>0 then
                     jff161.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
                     if qcdm.qry2.fieldbyname('ff2').value>0 then
                     jff162.caption:=inttostr(qcdm.qry2.fieldbyname('ff2').value);
                     if qcdm.qry2.fieldbyname('ff3').value>0 then
                     jff163.caption:=inttostr(qcdm.qry2.fieldbyname('ff3').value);
                     if qcdm.qry2.fieldbyname('ff4').value>0 then
                     jff164.caption:=inttostr(qcdm.qry2.fieldbyname('ff4').value);
                    end;
                   end;
                  end;
                 end;
                end;
               end;
              end;
             end;
            end;
           end;
          end;
         end;
        end;
       end;
      end;
    end;
    with qcdm.qry3 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select * from lbg3 where rno=:rno and color=:color';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    if qcdm.qry3.recordcount>0 then
    begin
      qcdm.qry3.first;
      if not qcdm.qry3.fieldbyname('bh').isnull then fdh1.caption:=qcdm.qry3.fieldbyname('bh').value;
      fcd1.caption:=qcdm.qry3.fieldbyname('cd').value;
      cas1.caption:=qcdm.qry3.fieldbyname('cas').value;
      js1.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
      qcdm.qry3.next;
      if not qcdm.qry3.eof then
      begin
       if not qcdm.qry3.fieldbyname('bh').isnull then fdh2.caption:=qcdm.qry3.fieldbyname('bh').value;
       fcd2.caption:=qcdm.qry3.fieldbyname('cd').value;
       cas2.caption:=qcdm.qry3.fieldbyname('cas').value;
       js2.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
       qcdm.qry3.next;
       if not qcdm.qry3.eof then
       begin
        if not qcdm.qry3.fieldbyname('bh').isnull then fdh3.caption:=qcdm.qry3.fieldbyname('bh').value;
        fcd3.caption:=qcdm.qry3.fieldbyname('cd').value;
        cas3.caption:=qcdm.qry3.fieldbyname('cas').value;
        js3.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
        qcdm.qry3.next;
        if not qcdm.qry3.eof then
        begin
         if not qcdm.qry3.fieldbyname('bh').isnull then fdh4.caption:=qcdm.qry3.fieldbyname('bh').value;
         fcd4.caption:=qcdm.qry3.fieldbyname('cd').value;
         cas4.caption:=qcdm.qry3.fieldbyname('cas').value;
         js4.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
         qcdm.qry3.next;
         if not qcdm.qry3.eof then
         begin
          if not qcdm.qry3.fieldbyname('bh').isnull then fdh5.caption:=qcdm.qry3.fieldbyname('bh').value;
          fcd5.caption:=qcdm.qry3.fieldbyname('cd').value;
          cas5.caption:=qcdm.qry3.fieldbyname('cas').value;
          js5.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
          qcdm.qry3.next;
          if not qcdm.qry3.eof then
          begin
           if not qcdm.qry3.fieldbyname('bh').isnull then fdh6.caption:=qcdm.qry3.fieldbyname('bh').value;
           fcd6.caption:=qcdm.qry3.fieldbyname('cd').value;
           cas6.caption:=qcdm.qry3.fieldbyname('cas').value;
           js6.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
           qcdm.qry3.next;
           if not qcdm.qry3.eof then
           begin
            if not qcdm.qry3.fieldbyname('bh').isnull then fdh7.caption:=qcdm.qry3.fieldbyname('bh').value;
            fcd7.caption:=qcdm.qry3.fieldbyname('cd').value;
            cas7.caption:=qcdm.qry3.fieldbyname('cas').value;
            js7.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
            qcdm.qry3.next;
            if not qcdm.qry3.eof then
            begin
             if not qcdm.qry3.fieldbyname('bh').isnull then fdh8.caption:=qcdm.qry3.fieldbyname('bh').value;
             fcd8.caption:=qcdm.qry3.fieldbyname('cd').value;
             cas8.caption:=qcdm.qry3.fieldbyname('cas').value;
             js8.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
            end;
           end;
          end;
         end;
        end;
       end;
      end;
    end;
  end;
end;

procedure Tfrmbgly.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  pjfd.Caption:='';kgfd.Caption:='';fdqb.Caption:='';pjmj.Caption:='';
  zhs.Caption:='';zcd.Caption:='';cdqb.Caption:='';pjsh.Caption:='';
  if qcdm.qry7.recordcount>0 then
  begin
    with qcdm.qry2 do begin
     close;
     params.clear;
     params.createparam(ftstring,'ptype',ptinput);
     params.createparam(ftstring,'pno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select mifwd from wl1 where ptype=:ptype and pno=:pno and clr=:color';
     params[0].asstring:=ptype;
     params[1].asstring:=pno;
     params[2].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    if qcdm.qry2.recordcount>0 then
    begin
      kgfd.Caption:=inttostr(qcdm.qry2.fieldbyname('mifwd').value);
    end
    else
    begin
     with qcdm.qry2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'ptype',ptinput);
      params.createparam(ftstring,'pno',ptinput);
      params.createparam(ftstring,'color',ptinput);
      commandtext:='select mifwd from wl2 where ptype=:ptype and pno=:pno and clr=:color';
      params[0].asstring:=ptype;
      params[1].asstring:=pno;
      params[2].asstring:=qcdm.qry7.fieldbyname('color').value;
      open;
     end;
     if qcdm.qry2.recordcount>0 then
     begin
       kgfd.Caption:=inttostr(qcdm.qry2.fieldbyname('mifwd').value);
     end
     else
     begin
      with qcdm.qry2 do begin
       close;
       params.clear;
       params.createparam(ftstring,'ptype',ptinput);
       params.createparam(ftstring,'pno',ptinput);
       params.createparam(ftstring,'color',ptinput);
       commandtext:='select mifwd from wl3 where ptype=:ptype and pno=:pno and clr=:color';
       params[0].asstring:=ptype;
       params[1].asstring:=pno;
       params[2].asstring:=qcdm.qry7.fieldbyname('color').value;
       open;
      end;
      if qcdm.qry2.recordcount>0 then
      begin
        kgfd.Caption:=inttostr(qcdm.qry2.fieldbyname('mifwd').value);
      end
      else kgfd.caption:='';
     end;
    end;
    with qcdm.qry2 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select rno,color,sum(ztfd)/count(rno) as pjfd,sum(jymj)/count(rno) as pjmj,'+
     'sum(hscd) as zhs,sum(mtr) as zcd,sum(zshl)/count(rno) as pjsh from lbg1 where rno=:rno and color=:color group by rno,color';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
     //qcdm.qry2.params[1].asstring:=qcdm.qry7.fieldbyname('gh').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    pjfd.Caption:=formatfloat('#####0',qcdm.qry2.fieldbyname('pjfd').value);
    if kgfd.caption='' then kgfd.caption:=pjfd.caption;
    pjmj.Caption:=formatfloat('#####0',qcdm.qry2.fieldbyname('pjmj').value);
    zhs.Caption:=formatfloat('####0.0',qcdm.qry2.fieldbyname('zhs').value);
    zcd.Caption:=formatfloat('####0.0',qcdm.qry2.fieldbyname('zcd').value);
    pjsh.Caption:=formatfloat('#####0.0',qcdm.qry2.fieldbyname('pjsh').value);
    fdqb.Caption:=formatfloat('####0.0',(strtoint(kgfd.caption)-strtoint(pjfd.caption))*100/strtoint(kgfd.caption))+'%';
    cdqb.Caption:=formatfloat('####0.0',(strtofloat(zcd.caption)-strtofloat(zhs.caption))*100/strtofloat(zcd.caption))+'%';
  end;
end;

procedure Tfrmbgly.ppHeaderBand1BeforePrint(Sender: TObject);
begin
 tgfd.caption:='';zf.caption:='';
 if qcdm.qry5.recordcount>0 then
 begin
  if mifwd>0 then
  begin
   tgfd.caption:=inttostr(mifwd);
   if mifwd-qcdm.qry5.fieldbyname('btbfd').asinteger<>0 then
   zf.caption:=formatfloat('#####0.0',(qcdm.qry5.fieldbyname('btbfd').asinteger-mifwd)*100/mifwd)+'%'
   else zf.caption:='0.0%';
  end
  else
  begin
    zf.caption:='0.0%';
    tgfd.caption:='0';
  end;
 end;
end;

procedure Tfrmbgly.ppReport1BeforePrint(Sender: TObject);
var
  qw,zd,yz:string;
  sxld,mcld,hzld:integer;
  hsl,txscl,ssl,hsl1,txscl1,ssl1:double;
  sldi,scli:string;
begin
 zsh.caption:='';tgzl.caption:='';ld.caption:='';scl.Caption:='';
 dh1.caption:='';dh2.caption:='';dh3.caption:='';zsyl.caption:='';
 dh4.caption:='';dh5.caption:='';
 fscd1.caption:='';fscd2.caption:='';fscd3.caption:='';
 fscd4.caption:='';fscd5.caption:='';
 sbcd1.caption:='';sbcd2.caption:='';sbcd3.caption:='';
 sbcd4.caption:='';sbcd5.caption:='';
 bz1.caption:='';bz2.caption:='';bz3.caption:='';
 bz4.caption:='';bz5.caption:='';
 if qcdm.qry5.active=true then
 begin
  with qcdm.qry3 do begin
   close;
   params.clear;
   params.createparam(ftstring,'rno',ptinput);
   params.createparam(ftstring,'rch',ptinput);
   params.createparam(ftinteger,'jh',ptinput);
   commandtext:='select bh,cd,qw,zd,yz,bz from yb2 where rno=:rno and rch=:rch and jh=:jh';
   params[0].asstring:=qcdm.qry5.fieldbyname('rno').value;
   params[1].asstring:=qcdm.qry5.fieldbyname('rch').value;
   params[2].asinteger:=qcdm.qry5.fieldbyname('jh').value;
   open;
  end;
  if qcdm.qry3.recordcount>0 then
  begin
    qcdm.qry3.first;
    if qcdm.qry3.fieldbyname('qw').value=true then
    begin
      qw:='淮稬';zd:='';yz:='';
    end
    else
    begin
      if qcdm.qry3.fieldbyname('zd').value=true then
      begin
       qw:='';zd:='い单';yz:='';
      end
      else
      begin qw:='';zd:='';yz:='腨';end;
    end;
    if not qcdm.qry3.fieldbyname('bh').isnull then dh1.caption:=qcdm.qry3.fieldbyname('bh').value;
    if not qcdm.qry3.fieldbyname('cd').isnull then fscd1.caption:=qcdm.qry3.fieldbyname('cd').value;
    if not qcdm.qry3.fieldbyname('bz').isnull then bz1.caption:=qcdm.qry3.fieldbyname('bz').value;
    sbcd1.caption:=qw+zd+yz;
    qcdm.qry3.next;
    if not qcdm.qry3.eof then
    begin
     if qcdm.qry3.fieldbyname('qw').value=true then
     begin
      qw:='淮稬';zd:='';yz:='';
     end
     else
     begin
      if qcdm.qry3.fieldbyname('zd').value=true then
      begin
       qw:='';zd:='い单';yz:='';
      end
      else
      begin qw:='';zd:='';yz:='腨';end;
     end;
     if not qcdm.qry3.fieldbyname('bh').isnull then dh2.caption:=qcdm.qry3.fieldbyname('bh').value;
     if not qcdm.qry3.fieldbyname('cd').isnull then fscd2.caption:=qcdm.qry3.fieldbyname('cd').value;
     if not qcdm.qry3.fieldbyname('bz').isnull then bz2.caption:=qcdm.qry3.fieldbyname('bz').value;
     sbcd2.caption:=qw+zd+yz;
     qcdm.qry3.next;
     if not qcdm.qry3.eof then
     begin
      if qcdm.qry3.fieldbyname('qw').value=true then
      begin
        qw:='淮稬';zd:='';yz:='';
      end
      else
      begin
        if qcdm.qry3.fieldbyname('zd').value=true then
        begin
         qw:='';zd:='い单';yz:='';
        end
        else
        begin qw:='';zd:='';yz:='腨';end;
      end;
      if not qcdm.qry3.fieldbyname('bh').isnull then dh3.caption:=qcdm.qry3.fieldbyname('bh').value;
      if not qcdm.qry3.fieldbyname('cd').isnull then fscd3.caption:=qcdm.qry3.fieldbyname('cd').value;
      if not qcdm.qry3.fieldbyname('bz').isnull then bz3.caption:=qcdm.qry3.fieldbyname('bz').value;
      sbcd3.caption:=qw+zd+yz;
      qcdm.qry3.next;
      if not qcdm.qry3.eof then
      begin
       if qcdm.qry3.fieldbyname('qw').value=true then
       begin
        qw:='淮稬';zd:='';yz:='';
       end
       else
       begin
        if qcdm.qry3.fieldbyname('zd').value=true then
        begin
         qw:='';zd:='い单';yz:='';
        end
        else
        begin qw:='';zd:='';yz:='腨';end;
       end;
       if not qcdm.qry3.fieldbyname('bh').isnull then dh4.caption:=qcdm.qry3.fieldbyname('bh').value;
       if not qcdm.qry3.fieldbyname('cd').isnull then fscd4.caption:=qcdm.qry3.fieldbyname('cd').value;
       if not qcdm.qry3.fieldbyname('bz').isnull then bz4.caption:=qcdm.qry3.fieldbyname('bz').value;
       sbcd4.caption:=qw+zd+yz;
       qcdm.qry3.next;
       if not qcdm.qry3.eof then
       begin
        if qcdm.qry3.fieldbyname('qw').value=true then
        begin
         qw:='淮稬';zd:='';yz:='';
        end
        else
        begin
         if qcdm.qry3.fieldbyname('zd').value=true then
         begin
          qw:='';zd:='い单';yz:='';
         end
         else
         begin qw:='';zd:='';yz:='腨';end;
        end;
        if not qcdm.qry3.fieldbyname('bh').isnull then dh5.caption:=qcdm.qry3.fieldbyname('bh').value;
        if not qcdm.qry3.fieldbyname('cd').isnull then fscd5.caption:=qcdm.qry3.fieldbyname('cd').value;
        if not qcdm.qry3.fieldbyname('bz').isnull then bz5.caption:=qcdm.qry3.fieldbyname('bz').value;
        sbcd5.caption:=qw+zd+yz;
       end;
      end;
     end;
    end;
  end;
  with qcdm.qry3 do begin
   close;
   params.clear;
   params.createparam(ftstring,'ptype',ptinput);
   params.createparam(ftstring,'pno',ptinput);
   commandtext:='select mifwd,mifwt,miflh,mcld,hzld,warp,txscj,sslj,warp_1,txscj_1,sslj_1 '+
   'from wl1 where ptype=:ptype and pno=:pno';
   params[0].asstring:=ptype;
   params[1].asstring:=pno;
   open;
  end;
  if qcdm.qry3.recordcount>0 then
  begin
    mifwd:=qcdm.qry3.fieldbyname('mifwd').asinteger;
    mifwt:=qcdm.qry3.fieldbyname('mifwt').asfloat;
    sxld:=qcdm.qry3.fieldbyname('miflh').value;
    mcld:=qcdm.qry3.fieldbyname('mcld').value;
    hzld:=qcdm.qry3.fieldbyname('hzld').value;
    hsl:=qcdm.qry3.fieldbyname('warp').value;
    hsl1:=qcdm.qry3.fieldbyname('warp_1').value;
    txscl:=qcdm.qry3.fieldbyname('txscj').value;
    txscl1:=qcdm.qry3.fieldbyname('txscj_1').value;
    ssl:=qcdm.qry3.fieldbyname('sslj').value;
    ssl1:=qcdm.qry3.fieldbyname('sslj_1').value;
  end
  else
  begin
   with qcdm.qry3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'ptype',ptinput);
    params.createparam(ftstring,'pno',ptinput);
    commandtext:='select mifwd,mifwt,miflh,mcld,hzld,warp,txscj,sslj,warp_1,txscj_1,sslj_1 '+
    'from wl2 where ptype=:ptype and pno=:pno';
    params[0].asstring:=ptype;
    params[1].asstring:=pno;
    open;
   end;
   if qcdm.qry3.recordcount>0 then
   begin
    mifwd:=qcdm.qry3.fieldbyname('mifwd').asinteger;
    mifwt:=qcdm.qry3.fieldbyname('mifwt').asfloat;
    sxld:=qcdm.qry3.fieldbyname('miflh').value;
    mcld:=qcdm.qry3.fieldbyname('mcld').value;
    hzld:=qcdm.qry3.fieldbyname('hzld').value;
    hsl:=qcdm.qry3.fieldbyname('warp').value;
    hsl1:=qcdm.qry3.fieldbyname('warp_1').value;
    txscl:=qcdm.qry3.fieldbyname('txscj').value;
    txscl1:=qcdm.qry3.fieldbyname('txscj_1').value;
    ssl:=qcdm.qry3.fieldbyname('sslj').value;
    ssl1:=qcdm.qry3.fieldbyname('sslj_1').value;
   end
   else
   begin
    with qcdm.qry3 do begin
     close;
     params.clear;
     params.createparam(ftstring,'ptype',ptinput);
     params.createparam(ftstring,'pno',ptinput);
     commandtext:='select mifwd,mifwt,miflh,mcld,hzld,warp,txscj,sslj,warp_1,txscj_1,sslj_1 '+
     'from wl3 where ptype=:ptype and pno=:pno';
     params[0].asstring:=ptype;
     params[1].asstring:=pno;
     open;
    end;
    if qcdm.qry3.recordcount>0 then
    begin
     mifwd:=qcdm.qry3.fieldbyname('mifwd').asinteger;
     mifwt:=qcdm.qry3.fieldbyname('mifwt').asfloat;
     sxld:=qcdm.qry3.fieldbyname('miflh').value;
     mcld:=qcdm.qry3.fieldbyname('mcld').value;
     hzld:=qcdm.qry3.fieldbyname('hzld').value;
     hsl:=qcdm.qry3.fieldbyname('warp').value;
     hsl1:=qcdm.qry3.fieldbyname('warp_1').value;
     txscl:=qcdm.qry3.fieldbyname('txscj').value;
     txscl1:=qcdm.qry3.fieldbyname('txscj_1').value;
     ssl:=qcdm.qry3.fieldbyname('sslj').value;
     ssl1:=qcdm.qry3.fieldbyname('sslj_1').value;
    end
    else
    begin
     mifwd:=0;
     mifwt:=0.00;
     sxld:=0;
     mcld:=0;
     hzld:=0;
     hsl:=0.00;
     hsl1:=0.00;
     txscl:=0.00;
     txscl1:=0.00;
     ssl:=0.00;
     ssl1:=0.00;
    end;
   end;
  end;
  if sxld>qcdm.qry5.fieldbyname('zlcs2').value then
  sldi:=sldi+' 瑍╟ '+inttostr(qcdm.qry5.fieldbyname('zlcs2').value)+' 夹非 '+inttostr(sxld);
  if mcld>qcdm.qry5.fieldbyname('zlcs3').value then
  sldi:=sldi+' 集揽╟ '+inttostr(qcdm.qry5.fieldbyname('zlcs3').value)+' 夹非 '+inttostr(mcld);
  if hzld>qcdm.qry5.fieldbyname('zlcs4').value then
  sldi:=sldi+' 簕╟ '+inttostr(qcdm.qry5.fieldbyname('zlcs4').value)+' 夹非 '+inttostr(hzld);
  if sldi<>'' then ld.Caption:='︹╟: '+sldi;
  if abs(hsl-qcdm.qry5.fieldbyname('hsl').value)>hsl1 then
  scli:=scli+' 罽瞯 '+floattostr(qcdm.qry5.fieldbyname('hsl').value)+' 夹非 '+floattostr(hsl);
  if abs(txscl-qcdm.qry5.fieldbyname('hsl2').value)>txscl1 then
  scli:=scli+' 紆┦瞯 '+floattostr(qcdm.qry5.fieldbyname('hsl2').value)+' 夹非 '+floattostr(txscl);
  if abs(ssl-qcdm.qry5.fieldbyname('hsl4').value)>ssl1 then
  scli:=scli+' 瑍罽瞯 '+floattostr(qcdm.qry5.fieldbyname('hsl4').value)+' 夹非 '+floattostr(ssl);
  if scli<>'' then scl.Caption:=scli;
  zsh.caption:=formatfloat('####0.0',qcdm.qry5.fieldbyname('jbshl').value+qcdm.qry5.fieldbyname('fsshl').value)+'%';
  zsyl.caption:=formatfloat('####0.0',strtofloat(copy(sqmsyl.text,1,length(sqmsyl.text)-1))-strtofloat(copy(zsh.caption,1,length(zsh.caption)-1)))+'%';
  tgzl.caption:=floattostr(mifwt);
 end;
end;

procedure Tfrmbgly.BitBtn8Click(Sender: TObject);
begin
  if frmzjcx=nil then frmzjcx:=tfrmzjcx.create(self);
  frmzjcx.label3.caption:='yb';
  if not frmfc.dbgrideh1.fields[0].isnull then
    frmzjcx.combobox1.text:=frmfc.dbgrideh1.fields[0].value;
  frmzjcx.show;
end;

procedure Tfrmbgly.BitBtn9Click(Sender: TObject);
begin
  if frmpocx=nil then frmpocx:=tfrmpocx.create(self);
  frmpocx.label2.caption:='yb';
  frmpocx.show;
end;

end.
