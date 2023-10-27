unit hbbgu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, DBTables, StdCtrls, DBCtrls, Grids,
  DBGridEh, Buttons, wwdbdatetimepicker, Mask, ppCache, ppDB, ppDBPipe,
  ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppViewr,
  ppCtrls, ppPrnabl, ppStrtch, ppRichTx, RXCtrls, ppMemo, ppRegion,
  ComCtrls, wwriched, wwrichedspell, ppSubRpt, myChkBox;

type
  Tfrmhbbg = class(TForm)
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
    DataSource1: TDataSource;
    Label14: TLabel;
    DBComboBox2: TDBComboBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGridEh1: TDBGridEh;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    BitBtn6: TBitBtn;
    Label8: TLabel;
    lmaster: TQuery;
    lbg1: TQuery;
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
    ppLabel65: TppLabel;
    lbg2: TQuery;
    lbg3: TQuery;
    dslbg1: TDataSource;
    ppDBText47: TppDBText;
    ppLabel66: TppLabel;
    cgdh: TppLabel;
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
    ppLabel86: TppLabel;
    ppShape28: TppShape;
    ppDBRichText3: TppDBRichText;
    ppLabel87: TppLabel;
    ppShape29: TppShape;
    ppLabel74: TppLabel;
    ppLabel79: TppLabel;
    ppLabel88: TppLabel;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
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
    jff91: TppLabel;
    jff101: TppLabel;
    jff111: TppLabel;
    jff121: TppLabel;
    jff11: TppLabel;
    jff21: TppLabel;
    jff31: TppLabel;
    jff41: TppLabel;
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
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    cdhj: TppLabel;
    cpcd: TppLabel;
    yjsh: TppLabel;
    shpercent: TppLabel;
    ppLabel11: TppLabel;
    Label9: TLabel;
    ppLabel13: TppLabel;
    ppShape1: TppShape;
    ppDBRichText1: TppDBRichText;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel14: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel15: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    cdsh: TppLabel;
    ppLabel24: TppLabel;
    ppLabel23: TppLabel;
    zcd: TppLabel;
    ppLabel26: TppLabel;
    ppLabel25: TppLabel;
    yjshl1: TppLabel;
    ppLabel29: TppLabel;
    yjsh1: TppLabel;
    ppLabel31: TppLabel;
    ppLabel27: TppLabel;
    yjshl2: TppLabel;
    BitBtn2: TBitBtn;
    BitBtn8: TBitBtn;
    DBRichEdit1: TwwDBRichEdit;
    DBRichEdit2: TwwDBRichEdit;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmhbbg: Tfrmhbbg;
  mifwd:integer;
  mifwt:double;
  ptype,pno:string;
implementation
uses hbjlu, idcxu, zjcxu, pocx, impqcdm;
{$R *.DFM}

procedure Tfrmhbbg.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmhbbg.BitBtn3Click(Sender: TObject);
begin
 if (qcdm.yhb1.recordcount>0) and (dbedit1.text<>'') then
 begin
    if frmhbjl=nil then frmhbjl:=tfrmhbjl.create(self);
    frmhbjl.pagecontrol1.activepage:=frmhbjl.tabsheet1;
    frmhbjl.show;
 end;
end;

procedure Tfrmhbbg.Edit1Change(Sender: TObject);
begin
  qcdm.yhb1.findnearest([edit1.text]);
end;

procedure Tfrmhbbg.BitBtn5Click(Sender: TObject);
begin
  if frmidcx=nil then frmidcx:=tfrmidcx.create(self);
  frmidcx.MaskEdit1.text:='      -S    ';
  frmidcx.label2.caption:='yhb';   
  frmidcx.show;
end;

procedure Tfrmhbbg.BitBtn6Click(Sender: TObject);
begin
 screen.cursor:=crhourglass;
 gys.Caption:='';cgdh.caption:='';
 if qcdm.yhb1.recordcount>0 then
 begin
  if not qcdm.yhb1.fieldbyname('pname').isnull then
  begin
    ptype:=copy(qcdm.yhb1.fieldbyname('pname').value,1,pos('-',qcdm.yhb1.fieldbyname('pname').value)-1);
    pno:=copy(qcdm.yhb1.fieldbyname('pname').value,pos('-',qcdm.yhb1.fieldbyname('pname').value)+1,15);
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
  qcdm.qry6.close;
  qcdm.qry6.params.clear;
  qcdm.qry6.commandtext:='delete from lbg1';
  qcdm.qry6.execute;
  with qcdm.qry1 do begin
   close;
   params.clear;
   params.createparam(ftstring,'rno',ptinput);
   commandtext:='select rno,color,rch,zldj,btbfd,mfd,mtr,hsl,shl,gh from yhb3 where rno=:rno';
   params[0].asstring:=qcdm.yhb1.fieldbyname('rno').value;
   open;
  end;
  if qcdm.qry1.recordcount>0 then
  begin
    qcdm.qry1.first;
    while not qcdm.qry1.eof do
    begin
      qcdm.qry6.close;
      qcdm.qry6.params.clear;
      qcdm.qry6.commandtext:='select * from lbg1';
      qcdm.qry6.open;
      qcdm.qry6.append;
      qcdm.qry6.fieldbyname('rno').value:=qcdm.qry1.fieldbyname('rno').value;
      qcdm.qry6.fieldbyname('color').value:=qcdm.qry1.fieldbyname('color').value;
      qcdm.qry6.fieldbyname('rch').value:=qcdm.qry1.fieldbyname('rch').value;
      if not qcdm.qry1.fieldbyname('zldj').isnull then
      qcdm.qry6.fieldbyname('zldj').value:=qcdm.qry1.fieldbyname('zldj').value;
      qcdm.qry6.fieldbyname('ztfd').value:=qcdm.qry1.fieldbyname('btbfd').value;
      qcdm.qry6.fieldbyname('jymj').value:=qcdm.qry1.fieldbyname('mfd').value;
      if not qcdm.qry1.fieldbyname('gh').isnull then
      qcdm.qry6.fieldbyname('gh').value:=qcdm.qry1.fieldbyname('gh').value;
      qcdm.qry6.fieldbyname('mtr').value:=qcdm.qry1.fieldbyname('mtr').value;
      qcdm.qry6.post;
      qcdm.qry6.applyupdates(-1);
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
   commandtext:='select yhb3.rno,yhb3.gh,yhb3.color,yhb4.bh,yhb4.cd,sum(yhb4.ff1) as ff1 '+
   'from yhb3,yhb4 where yhb4.rno=yhb3.rno and yhb4.rch=yhb3.rch '+
   'and yhb4.jh=yhb3.jh and yhb3.rno=:rno group by rno,gh,color,bh,cd';
   params[0].asstring:=qcdm.yhb1.fieldbyname('rno').value;
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
      if not qcdm.qry1.fieldbyname('ff1').isnull then
      qcdm.qry2.fieldbyname('ff1').value:=qcdm.qry1.fieldbyname('ff1').value;
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
   commandtext:='select yhb3.rno,yhb3.gh,yhb3.color,yhb2.bh,yhb2.cd,yhb2.qw,yhb2.zd,yhb2.yz,count(yhb3.rno) as js,yhb2.cd1 from yhb3,yhb2 '+
   'where yhb2.rno=yhb3.rno and yhb2.rch=yhb3.rch and yhb2.jh=yhb3.jh and yhb3.rno=:rno '+
   'group by rno,gh,color,bh,cd,qw,zd,yz,cd1';
   params[0].asstring:=qcdm.yhb1.fieldbyname('rno').value;
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
      {if qcdm.qry1.fieldbyname('qw').value=true then
      qcdm.qry3.fieldbyname('cas').value:='輕微';
      if qcdm.qry1.fieldbyname('zd').value=true then
      qcdm.qry3.fieldbyname('cas').value:='中等';
      if qcdm.qry1.fieldbyname('yz').value=true then
      qcdm.qry3.fieldbyname('cas').value:='嚴重';}
      qcdm.qry3.fieldbyname('js').value:=qcdm.qry1.fieldbyname('js').value;
      qcdm.qry3.fieldbyname('cd1').value:=qcdm.qry1.fieldbyname('cd1').value;
      qcdm.qry3.post;
      qcdm.qry3.applyupdates(-1);
      qcdm.qry1.next;
    end;
  end;
  with qcdm.qry7 do begin
   close;
   params.clear;
   params.createparam(ftstring,'rno',ptinput);
   commandtext:='select yhb1.rno,yhb1.qc,yhb1.sh,yhb3.color,yhb3.ph,yhb1.pname,yhb1.pno,yhb1.bz,yhb1.qaps,yhb1.oyes,yhb1.noca,yhb1.rrq,count(yhb1.rno) as jh from yhb1,yhb3 '+
   'where yhb3.rno=yhb1.rno and yhb1.rno=:rno group by rno,color,qc,sh,ph,pno,pname,bz,qaps,oyes,noca,rrq';
   params[0].asstring:=qcdm.yhb1.fieldbyname('rno').value;
   open;
  end;
  if qcdm.qry7.recordcount>0 then
  begin
    if not qcdm.qry7.fieldbyname('ph').isnull then cgdh.caption:=qcdm.qry7.fieldbyname('ph').value;
    qcdm.qry8.close;
    qcdm.qry8.params.clear;
    qcdm.qry8.params.createparam(ftstring,'rno',ptinput);
    qcdm.qry8.params.createparam(ftstring,'color',ptinput);
    qcdm.qry8.commandtext:='select rch,btbfd,ufd,ums,shl,gh from yhb3 where rno=:rno and color=:color';
    qcdm.qry8.params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
    qcdm.qry8.params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
    qcdm.qry8.open;
    ppreport2.print;
  end;
 end;
 screen.cursor:=crdefault;
end;

procedure Tfrmhbbg.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmhbbg.ppGroupHeaderBand3BeforePrint(Sender: TObject);
begin
  ppmemo1.Lines.clear;fdh1.caption:='';fdh2.caption:='';fdh3.Caption:='';fdh4.caption:='';fdh5.caption:='';fdh6.caption:='';fdh7.caption:='';fdh8.caption:='';
  fcd1.caption:='';fcd2.caption:='';fcd3.caption:='';fcd4.caption:='';fcd5.caption:='';fcd6.caption:='';fcd7.caption:='';fcd8.caption:='';
  cas1.caption:='';cas2.caption:='';cas3.caption:='';cas4.caption:='';cas5.caption:='';cas6.caption:='';cas7.caption:='';cas8.caption:='';
  js1.caption:='';js2.caption:='';js3.caption:='';js4.caption:='';js5.caption:='';js6.caption:='';js7.caption:='';js8.caption:='';
  jdh1.caption:='';jdh2.caption:='';jdh3.Caption:='';jdh4.caption:='';
  jdh9.caption:='';jdh10.caption:='';jdh11.Caption:='';jdh12.caption:='';
  jcd1.caption:='';jcd2.caption:='';jcd3.Caption:='';jcd4.caption:='';
  jcd9.caption:='';jcd10.caption:='';jcd11.Caption:='';jcd12.caption:='';
  jff11.caption:='';jff21.caption:='';jff31.caption:='';jff41.caption:='';
  jff91.caption:='';jff101.caption:='';jff111.caption:='';jff121.caption:='';
  cdhj.caption:='0';cpcd.caption:='0.0';yjsh.caption:='0.00';shpercent.caption:='0.0%';
  zcd.caption:='0.00';cdsh.caption:='0.00';yjsh1.caption:='0.00';yjshl1.caption:='0.0%';yjshl2.caption:='0.0%';
  if qcdm.qry7.recordcount>0 then
  begin
    with qcdm.qry4 do begin
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
    if qcdm.qry4.recordcount>0 then
    begin
      //kgfd.Caption:=inttostr(qcdm.qry4.fieldbyname('mifwd').value);
    end
    else
    begin
     with qcdm.qry4 do begin
      close;
      params.clear;
      params.createparam(ftstring,'ptypt',ptinput);
      params.createparam(ftstring,'pno',ptinput);
      params.createparam(ftstring,'color',ptinput);
      commandtext:='select mifwd from wl2 where ptype=:ptype and pno=:pno and clr=:color';
      params[0].asstring:=ptype;
      params[1].asstring:=pno;
      params[2].asstring:=qcdm.qry7.fieldbyname('color').value;
      open;
     end;
     if qcdm.qry4.recordcount>0 then
     begin
       //kgfd.Caption:=inttostr(qcdm.qry4.fieldbyname('mifwd').value);
     end
     else
     begin
      with qcdm.qry4 do begin
       close;
       params.clear;
       params.createparam(ftstring,'ptypt',ptinput);
       params.createparam(ftstring,'pno',ptinput);
       params.createparam(ftstring,'color',ptinput);
       commandtext:='select mifwd from wl3 where ptype=:ptype and pno=:pno and clr=:color';
       params[0].asstring:=ptype;
       params[1].asstring:=pno;
       params[2].asstring:=qcdm.qry7.fieldbyname('color').value;
       open;
      end;
      if qcdm.qry4.recordcount>0 then
      begin
        //kgfd.Caption:=inttostr(qcdm.qry4.fieldbyname('mifwd').value);
      //end
      //else kgfd.caption:='0';
      end;
     end;
    end;
    with qcdm.qry4 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select sum(ums) as zcd from yhb3 where rno=:rno and color=:color';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    if qcdm.qry4.recordcount>0 then zcd.caption:=formatfloat('#####0.00',qcdm.qry4.fieldbyname('zcd').asfloat);
    with qcdm.qry4 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select sum(ff1) as cdhj from lbg2 where rno=:rno and color=:color';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    if qcdm.qry4.recordcount>0 then
    begin
      if not qcdm.qry4.fieldbyname('cdhj').isnull then cdhj.caption:=inttostr(qcdm.qry4.fieldbyname('cdhj').value);
    end;
    with qcdm.qry4 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select sum(zlxs)/count(rno) as cpcd from yhb3 where rno=:rno and color=:color';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    if qcdm.qry4.recordcount>0 then
    begin
      if not qcdm.qry4.fieldbyname('cpcd').isnull then
      cpcd.caption:=formatfloat('####0.0',qcdm.qry4.fieldbyname('cpcd').value);
    end;
    cdsh.caption:=formatfloat('####0.00',strtoint(cdhj.caption)*0.1);
    with qcdm.qry4 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select (sum(fsshl*ums)+sum(jbshl*ums))/100 as yjsh,(sum(fsshl*ums)+sum(jbshl*ums))/sum(ums) as shpercent '+
     'from yhb3 where rno=:rno and color=:color';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    if qcdm.qry4.recordcount>0 then
    begin
     if not qcdm.qry4.fieldbyname('yjsh').isnull then
     yjsh.caption:=formatfloat('####0.00',qcdm.qry4.fieldbyname('yjsh').value);
     if qcdm.qry4.fieldbyname('shpercent').asfloat<=100.00 then
       shpercent.caption:=formatfloat('####0.0',qcdm.qry4.fieldbyname('shpercent').value)+'%'
     else shpercent.caption:='100.0%';
    end;
    if strtofloat(cdsh.caption)*100/strtofloat(zcd.caption)<=100.00 then
      yjshl1.caption:=formatfloat('###0.0',strtofloat(cdsh.caption)*100/strtofloat(zcd.caption))+'%'
    else yjshl1.caption:='100.0%';
    yjsh1.caption:=formatfloat('####0.00',strtofloat(yjsh.caption)-strtofloat(cdsh.caption));
    if strtofloat(yjsh1.caption)*100/strtofloat(zcd.caption)<=100.00 then
      yjshl2.caption:=formatfloat('####0.0',strtofloat(yjsh1.caption)*100/strtofloat(zcd.caption))+'%'
    else yjshl2.caption:='100.0%';
    with qcdm.qry5 do begin
     close;
     params.clear;
     params.createparam(ftstring,'rno',ptinput);
     params.createparam(ftstring,'color',ptinput);
     commandtext:='select rno,color,gjcl,count(rno) as zs from yhb3 where rno=:rno and color=:color group by rno,color,gjcl';
     params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
     params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
     open;
    end;
    if qcdm.qry5.recordcount>0 then
    begin
      qcdm.qry5.first;
      while not qcdm.qry5.eof do
      begin
        if not qcdm.qry5.fieldbyname('gjcl').isnull then
        ppmemo1.Lines.add(qcdm.qry5.fieldbyname('gjcl').value+'    '+inttostr(qcdm.qry5.fieldbyname('zs').value)+'卷');
        qcdm.qry5.next;
      end;
    end; 
    qcdm.qry2.close;
    qcdm.qry2.params.clear;
    qcdm.qry2.params.createparam(ftstring,'rno',ptinput);
    qcdm.qry2.params.createparam(ftstring,'color',ptinput);
    qcdm.qry2.commandtext:='select * from lbg2 where rno=:rno and color=:color';
    qcdm.qry2.params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
    qcdm.qry2.params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
    qcdm.qry2.open;
    if qcdm.qry2.recordcount>0 then
    begin
      qcdm.qry2.first;
      if not qcdm.qry2.fieldbyname('bh').isnull then jdh1.caption:=qcdm.qry2.fieldbyname('bh').value;
      jcd1.caption:=qcdm.qry2.fieldbyname('cd').value;
      if qcdm.qry2.fieldbyname('ff1').value>0 then
      jff11.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
      qcdm.qry2.next;
      if not qcdm.qry2.eof then
      begin
       if not qcdm.qry2.fieldbyname('bh').isnull then jdh2.caption:=qcdm.qry2.fieldbyname('bh').value;
       jcd2.caption:=qcdm.qry2.fieldbyname('cd').value;
       if qcdm.qry2.fieldbyname('ff1').value>0 then
       jff21.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
       qcdm.qry2.next;
       if not qcdm.qry2.eof then
       begin
        if not qcdm.qry2.fieldbyname('bh').isnull then jdh3.caption:=qcdm.qry2.fieldbyname('bh').value;
        jcd3.caption:=qcdm.qry2.fieldbyname('cd').value;
        if qcdm.qry2.fieldbyname('ff1').value>0 then
        jff31.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
        qcdm.qry2.next;
        if not qcdm.qry2.eof then
        begin
         if not qcdm.qry2.fieldbyname('bh').isnull then jdh4.caption:=qcdm.qry2.fieldbyname('bh').value;
         jcd4.caption:=qcdm.qry2.fieldbyname('cd').value;
         if qcdm.qry2.fieldbyname('ff1').value>0 then
         jff41.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
         qcdm.qry2.next;
         if not qcdm.qry2.eof then
         begin
          if not qcdm.qry2.fieldbyname('bh').isnull then jdh9.caption:=qcdm.qry2.fieldbyname('bh').value;
          jcd9.caption:=qcdm.qry2.fieldbyname('cd').value;
          if qcdm.qry2.fieldbyname('ff1').value>0 then
          jff91.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
          qcdm.qry2.next;
          if not qcdm.qry2.eof then
          begin
           if not qcdm.qry2.fieldbyname('bh').isnull then jdh10.caption:=qcdm.qry2.fieldbyname('bh').value;
           jcd10.caption:=qcdm.qry2.fieldbyname('cd').value;
           if qcdm.qry2.fieldbyname('ff1').value>0 then
           jff101.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
           qcdm.qry2.next;
           if not qcdm.qry2.eof then
           begin
            if not qcdm.qry2.fieldbyname('bh').isnull then jdh11.caption:=qcdm.qry2.fieldbyname('bh').value;
            jcd11.caption:=qcdm.qry2.fieldbyname('cd').value;
            if qcdm.qry2.fieldbyname('ff1').value>0 then
            jff111.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
            qcdm.qry2.next;
            if not qcdm.qry2.eof then
            begin
             if not qcdm.qry2.fieldbyname('bh').isnull then jdh12.caption:=qcdm.qry2.fieldbyname('bh').value;
             jcd12.caption:=qcdm.qry2.fieldbyname('cd').value;
             if qcdm.qry2.fieldbyname('ff1').value>0 then
             jff121.caption:=inttostr(qcdm.qry2.fieldbyname('ff1').value);
            end;
           end;
          end;
         end;
        end;
       end;
      end;
    end;
    qcdm.qry3.close;
    qcdm.qry3.params.clear;
    qcdm.qry3.params.createparam(ftstring,'rno',ptinput);
    qcdm.qry3.params.createparam(ftstring,'color',ptinput);
    qcdm.qry3.commandtext:='select * from lbg3 where rno=:rno and color=:color';
    qcdm.qry3.params[0].asstring:=qcdm.qry7.fieldbyname('rno').value;
    qcdm.qry3.params[1].asstring:=qcdm.qry7.fieldbyname('color').value;
    qcdm.qry3.open;
    if qcdm.qry3.recordcount>0 then
    begin
      qcdm.qry3.first;
      if not qcdm.qry3.fieldbyname('bh').isnull then fdh1.caption:=qcdm.qry3.fieldbyname('bh').value;
      fcd1.caption:=qcdm.qry3.fieldbyname('cd').value;
      cas1.caption:=qcdm.qry3.fieldbyname('cd1').value;
      js1.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
      qcdm.qry3.next;
      if not qcdm.qry3.eof then
      begin
       if not qcdm.qry3.fieldbyname('bh').isnull then fdh2.caption:=qcdm.qry3.fieldbyname('bh').value;
       fcd2.caption:=qcdm.qry3.fieldbyname('cd').value;
       cas2.caption:=qcdm.qry3.fieldbyname('cd1').value;
       js2.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
       qcdm.qry3.next;
       if not qcdm.qry3.eof then
       begin
        if not qcdm.qry3.fieldbyname('bh').isnull then fdh3.caption:=qcdm.qry3.fieldbyname('bh').value;
        fcd3.caption:=qcdm.qry3.fieldbyname('cd').value;
        cas3.caption:=qcdm.qry3.fieldbyname('cd1').value;
        js3.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
        qcdm.qry3.next;
        if not qcdm.qry3.eof then
        begin
         if not qcdm.qry3.fieldbyname('bh').isnull then fdh4.caption:=qcdm.qry3.fieldbyname('bh').value;
         fcd4.caption:=qcdm.qry3.fieldbyname('cd').value;
         cas4.caption:=qcdm.qry3.fieldbyname('cd1').value;
         js4.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
         qcdm.qry3.next;
         if not qcdm.qry3.eof then
         begin
          if not qcdm.qry3.fieldbyname('bh').isnull then fdh5.caption:=qcdm.qry3.fieldbyname('bh').value;
          fcd5.caption:=qcdm.qry3.fieldbyname('cd').value;
          cas5.caption:=qcdm.qry3.fieldbyname('cd1').value;
          js5.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
          qcdm.qry3.next;
          if not qcdm.qry3.eof then
          begin
           if not qcdm.qry3.fieldbyname('bh').isnull then fdh6.caption:=qcdm.qry3.fieldbyname('bh').value;
           fcd6.caption:=qcdm.qry3.fieldbyname('cd').value;
           cas6.caption:=qcdm.qry3.fieldbyname('cd1').value;
           js6.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
           qcdm.qry3.next;
           if not qcdm.qry3.eof then
           begin
            if not qcdm.qry3.fieldbyname('bh').isnull then fdh7.caption:=qcdm.qry3.fieldbyname('bh').value;
            fcd7.caption:=qcdm.qry3.fieldbyname('cd').value;
            cas7.caption:=qcdm.qry3.fieldbyname('cd1').value;
            js7.caption:=inttostr(qcdm.qry3.fieldbyname('js').value);
            qcdm.qry3.next;
            if not qcdm.qry3.eof then
            begin
             if not qcdm.qry3.fieldbyname('bh').isnull then fdh8.caption:=qcdm.qry3.fieldbyname('bh').value;
             fcd8.caption:=qcdm.qry3.fieldbyname('cd').value;
             cas8.caption:=qcdm.qry3.fieldbyname('cd1').value;
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

procedure Tfrmhbbg.BitBtn2Click(Sender: TObject);
begin
  if frmzjcx=nil then frmzjcx:=tfrmzjcx.create(self);
  frmzjcx.label3.caption:='yhb';
  frmzjcx.show;
end;

procedure Tfrmhbbg.BitBtn8Click(Sender: TObject);
begin
  if frmpocx=nil then frmpocx:=tfrmpocx.create(self);
  frmpocx.label2.caption:='yhb';
  frmpocx.show;
end;

end.
