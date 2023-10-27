unit ybjly5u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGridEh,
  Buttons, Db, DBTables, ComCtrls, wwriched, wwrichedspell, Menus, ppBands,
  ppClass, ppCache, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd,
  ppReport, ppPrnabl, ppCtrls, ppStrtch, ppMemo, ppRegion, ppViewr, Math,
  ppVar, ppRichTx, myChkBox, TXComp;

type
  Tfrmybjly5 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn4: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label27: TLabel;
    DBEdit25: TDBEdit;
    TabSheet5: TTabSheet;
    DBGrid1: TDBGridEh;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit13: TDBEdit;
    DBEdit10: TDBEdit;
    Label34: TLabel;
    DBEdit32: TDBEdit;
    Label35: TLabel;
    DBEdit33: TDBEdit;
    Label36: TLabel;
    DBEdit34: TDBEdit;
    Label37: TLabel;
    DBEdit35: TDBEdit;
    Label38: TLabel;
    DBEdit36: TDBEdit;
    Label39: TLabel;
    DBEdit37: TDBEdit;
    Label40: TLabel;
    DBEdit38: TDBEdit;
    Label41: TLabel;
    DBEdit39: TDBEdit;
    Label42: TLabel;
    DBEdit40: TDBEdit;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Label54: TLabel;
    DBEdit52: TDBEdit;
    Label55: TLabel;
    DBEdit53: TDBEdit;
    Label57: TLabel;
    DBEdit55: TDBEdit;
    Label29: TLabel;
    DBEdit27: TDBEdit;
    TabSheet6: TTabSheet;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label28: TLabel;
    Label53: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit51: TDBEdit;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    Label60: TLabel;
    DBEdit58: TDBEdit;
    Label61: TLabel;
    Label62: TLabel;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    Label69: TLabel;
    DBEdit67: TDBEdit;
    DBGridEh1: TDBGridEh;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Label70: TLabel;
    DBEdit68: TDBEdit;
    DBGridEh2: TDBGridEh;
    DataSource1: TDataSource;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label15: TLabel;
    DBEdit18: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit20: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit22: TDBEdit;
    TabSheet7: TTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    Label22: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    zl: TLabel;
    hd: TLabel;
    sxld: TLabel;
    mcld: TLabel;
    hzld: TLabel;
    Label75: TLabel;
    DBEdit71: TDBEdit;
    jhs: TLabel;
    whs: TLabel;
    jsc: TLabel;
    wsc: TLabel;
    jsh: TLabel;
    wsh: TLabel;
    xx1: TCheckBox;
    xx4: TCheckBox;
    xx3: TCheckBox;
    xx5: TCheckBox;
    xx2: TCheckBox;
    xx6: TCheckBox;
    xx7: TCheckBox;
    xx8: TCheckBox;
    xx9: TCheckBox;
    xx10: TCheckBox;
    xx11: TCheckBox;
    xx12: TCheckBox;
    xx13: TCheckBox;
    Label76: TLabel;
    Label77: TLabel;
    Shape1: TShape;
    Label78: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    dsrmaster: TDataSource;
    dsrdetail: TDataSource;
    ppBDEPipeline2: TppBDEPipeline;
    ppBDEPipeline1: TppBDEPipeline;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label56: TLabel;
    Label79: TLabel;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape23: TppShape;
    ppLabel21: TppLabel;
    ppDBText16: TppDBText;
    ppLabel22: TppLabel;
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
    ppLabel31: TppLabel;
    ppLabel38: TppLabel;
    ppDBText32: TppDBText;
    ppLabel39: TppLabel;
    ppDBRichText1: TppDBRichText;
    ppLabel20: TppLabel;
    ppShape22: TppShape;
    ppDBRichText2: TppDBRichText;
    ppLabel99: TppLabel;
    ld: TppLabel;
    scl: TppLabel;
    zsh: TppLabel;
    ppLabel29: TppLabel;
    ppDBText24: TppDBText;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    tgzl: TppLabel;
    ppLabel103: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    Label80: TLabel;
    DBEdit19: TDBEdit;
    Label81: TLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    zsyl: TppLabel;
    TabSheet8: TTabSheet;
    Label12: TLabel;
    wwDBRichEditMSWord1: TwwDBRichEditMSWord;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit21: TDBEdit;
    DBEdit54: TDBEdit;
    Label84: TLabel;
    wwDBRichEditMSWord2: TwwDBRichEditMSWord;
    ppShape24: TppShape;
    ppLabel55: TppLabel;
    ppDBRichText3: TppDBRichText;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport1StartPage(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmybjly5: Tfrmybjly5;
  mifwd:integer;
  mifwt:double;
  ptype,pno:string;

implementation
uses bglyu, idcxu, impqcdm;
{$R *.DFM}

procedure Tfrmybjly5.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmybjly5.FormShow(Sender: TObject);
begin
  (qcdm.yb3.fieldbyname('pff') as tfloatfield).displayformat:='#####0';
  (qcdm.yb3.fieldbyname('bgzl') as tfloatfield).displayformat:='#####0.00';
  (qcdm.yb3.fieldbyname('shl') as tfloatfield).displayformat:='#####0.00';
  (qcdm.yb3.fieldbyname('ubl') as tfloatfield).displayformat:='#####0.00';
  (qcdm.yb3.fieldbyname('jcsh') as tfloatfield).displayformat:='#####0.00';
end;

procedure Tfrmybjly5.BitBtn3Click(Sender: TObject);
begin
  if frmidcx=nil then frmidcx:=tfrmidcx.create(self);
  frmidcx.MaskEdit1.text:='      -S    ';
  frmidcx.label2.caption:='yb';   
  frmidcx.show;
end;

procedure Tfrmybjly5.BitBtn5Click(Sender: TObject);
begin
 screen.cursor:=crhourglass;
 if qcdm.yb3.recordcount>0 then
 begin
  qcdm.qry1.close;
  qcdm.qry1.params.clear;
  qcdm.qry1.params.createparam(ftstring,'rno',ptinput);
  qcdm.qry1.commandtext:='select pname from yb1 where rno=:rno';
  qcdm.qry1.params[0].asstring:=qcdm.yb3.fieldbyname('rno').value;
  qcdm.qry1.open;
  if qcdm.qry1.recordcount>0 then
  begin
   ptype:=copy(qcdm.qry1.fieldbyname('pname').value,1,pos('-',qcdm.qry1.fieldbyname('pname').value)-1);
   pno:=copy(qcdm.qry1.fieldbyname('pname').value,pos('-',qcdm.qry1.fieldbyname('pname').value)+1,length(qcdm.qry1.fieldbyname('pname').value));
   qcdm.qry2.close;
   qcdm.qry2.params.clear;
   qcdm.qry2.params.createparam(ftstring,'ptype',ptinput);
   qcdm.qry2.params.createparam(ftstring,'pno',ptinput);
   qcdm.qry2.commandtext:='select ptype from wl where ptype=:ptype and pno=:pno';
   qcdm.qry2.params[0].asstring:=ptype;
   qcdm.qry2.params[1].asstring:=pno;
   qcdm.qry2.open;
   if qcdm.qry2.recordcount>0 then
   begin
     qcdm.qry5.close;
     qcdm.qry5.params.clear;
     qcdm.qry5.params.createparam(ftstring,'rch',ptinput);
     qcdm.qry5.params.createparam(ftstring,'ptype',ptinput);
     qcdm.qry5.params.createparam(ftstring,'pno',ptinput);
     qcdm.qry5.commandtext:='select (yb3.ums-yb3.mtr)*100/yb3.mtr as jcsh,yb3.*,yb3.ums*(100-yb3.zlxs)/100 as yscd,yb3.ums*(100-yb3.zlxs)*(100-hsl)/10000 as hscd,'+
     'yb1.rrq,yb1.pno,yb1.pname,yb1.qc,yb1.sh,wl.gys from yb3,yb1,wl '+
     'where yb3.rno=yb1.rno and yb3.rch=:rch and wl.ptype=:ptype and wl.pno=:pno';
     qcdm.qry5.params[0].asstring:=qcdm.yb3.fieldbyname('rch').value;
     qcdm.qry5.params[1].asstring:=ptype;
     qcdm.qry5.params[2].asstring:=pno;
     qcdm.qry5.open;
     lblgys.caption:=qcdm.qry5.fieldbyname('gys').value;
   end
   else
   begin
     qcdm.qry5.close;
     qcdm.qry5.params.clear;
     qcdm.qry5.params.createparam(ftstring,'rch',ptinput);
     qcdm.qry5.commandtext:='select (yb3.ums-yb3.mtr)*100/yb3.mtr as jcsh,yb3.*,yb3.ums*(100-yb3.zlxs)/100 as yscd,'+
     'yb3.ums*(100-yb3.zlxs)*(100-hsl)/10000 as hscd,yb1.rrq,yb1.pno,yb1.pname,yb1.qc,yb1.sh from yb3,yb1 '+
     'where yb3.rno=yb1.rno and yb3.rch=:rch';
     qcdm.qry5.params[0].asstring:=qcdm.yb3.fieldbyname('rch').value;
     qcdm.qry5.open;
     lblgys.caption:='';
   end;
   if qcdm.qry5.recordcount>0 then
   begin
    qcdm.qry6.active:=false;
    qcdm.qry6.params.clear;
    qcdm.qry6.params.createparam(ftstring,'rno',ptinput);
    qcdm.qry6.params.createparam(ftstring,'rch',ptinput);
    qcdm.qry6.params.createparam(ftinteger,'jh',ptinput);
    qcdm.qry6.commandtext:='select * from yb4 where rno=:rno and rch=:rch and jh=:jh';
    qcdm.qry6.params[0].asstring:=qcdm.qry5.fieldbyname('rno').value;
    qcdm.qry6.params[1].asstring:=qcdm.qry5.fieldbyname('rch').value;
    qcdm.qry6.params[2].asinteger:=qcdm.qry5.fieldbyname('jh').value;
    qcdm.qry6.active:=true;
    if qcdm.qry6.recordcount>0 then
    begin
      ppdetailband1.DataPipeline:=ppbdepipeline2;
    end
    else
    begin
      ppdetailband1.datapipeline:=nil;
    end;
    //ppreport1.AllowPrintToFile:=true;
    //ppreport1.TextFileName:='c:\my documents\testxls.xls';
    //ppreport1.DeviceType:='Excelfiel';
    ppreport1.print;
   end;
  end;
 end;
 screen.cursor:=crdefault;
end;

procedure Tfrmybjly5.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.windowstate:=wsmaximized;
  tppviewer(ppreport1.PreviewForm.Viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmybjly5.ppReport1StartPage(Sender: TObject);
var
  qw,zd,yz:string;
  sxld,mcld,hzld:integer;
  hsl,txscl,ssl,hsl1,txscl1,ssl1:double;
  sldi,scli:string;
begin
 zsh.caption:='';tgfd.caption:='';tgzl.caption:='';zsyl.Caption:='';
 ld.caption:='';scl.Caption:='';zf.caption:='';
 dh1.caption:='';dh2.caption:='';dh3.caption:='';
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
  qcdm.qry3.close;
  qcdm.qry3.params.clear;
  qcdm.qry3.params.createparam(ftstring,'ptype',ptinput);
  qcdm.qry3.params.createparam(ftstring,'pno',ptinput);
  qcdm.qry3.commandtext:='select mifwd,mifwt,miflh,mcld,hzld,warp,txscj,sslj,warp_1,txscj_1,sslj_1 '+
  'from wl1 where ptype=:ptype and pno=:pno';
  qcdm.qry3.params[0].asstring:=ptype;
  qcdm.qry3.params[1].asstring:=pno;
  qcdm.qry3.open;
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
   qcdm.qry3.close;
   qcdm.qry3.params.clear;
   qcdm.qry3.params.createparam(ftstring,'ptype',ptinput);
   qcdm.qry3.params.createparam(ftstring,'pno',ptinput);
   qcdm.qry3.commandtext:='select mifwd,mifwt,miflh,mcld,hzld,warp,txscj,sslj,warp_1,txscj_1,sslj_1 '+
   'from wl2 where ptype=:ptype and pno=:pno';
   qcdm.qry3.params[0].asstring:=ptype;
   qcdm.qry3.params[1].asstring:=pno;
   qcdm.qry3.open;
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
    qcdm.qry3.close;
    qcdm.qry3.params.clear;
    qcdm.qry3.params.createparam(ftstring,'ptype',ptinput);
    qcdm.qry3.params.createparam(ftstring,'pno',ptinput);
    qcdm.qry3.commandtext:='select mifwd,mifwt,miflh,mcld,hzld,warp,txscj,sslj,warp_1,txscj_1,sslj_1 '+
    'from wl3 where ptype=:ptype and pno=:pno';
    qcdm.qry3.params[0].asstring:=ptype;
    qcdm.qry3.params[1].asstring:=pno;
    qcdm.qry3.open;
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
  if mifwd>0 then
  begin
   tgfd.caption:=inttostr(mifwd);
   if mifwd-qcdm.qry5.fieldbyname('btbfd').asinteger<>0 then
   zf.caption:=formatfloat('#####0.0',(mifwd-qcdm.qry5.fieldbyname('btbfd').asinteger)*100/mifwd)+'%'
   else zf.caption:='0.0%';
  end
  else
  begin
    zf.caption:='0.0%';
    tgfd.caption:='0';
  end;
 end;
end;

end.
