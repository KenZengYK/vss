unit pdninvoice_lardformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  StdCtrls, Buttons, GridsEh, DBGridEh, DBCtrlsEh, DBCtrls, Mask, ExtCtrls,
  ppViewr, ppParameter;

type
  Tfrmpdninvoice_LARD = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBEdit2: TDBEdit;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    pgfooter: TCheckBox;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    title003: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppShape2: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    title001: TppLabel;
    title002: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape3: TppShape;
    ppDBText11: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    unit001: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppDBText26: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ttl001: TppLabel;
    ttl002: TppLabel;
    ppDBMemo5: TppDBMemo;
    ppDBText27: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText13: TppDBText;
    ppLabel34: TppLabel;
    ppDBText14: TppDBText;
    ppLabel35: TppLabel;
    ppDBText28: TppDBText;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    memo001: TppMemo;
    memo002: TppMemo;
    x0001: TppLabel;
    x00002: TppLabel;
    x00003: TppLabel;
    x00004: TppLabel;
    x00005: TppLabel;
    x00006: TppLabel;
    x00008: TppLabel;
    x00009: TppLabel;
    x00010: TppLabel;
    x00011: TppLabel;
    wo00001: TppLabel;
    qty001: TppLabel;
    curr001: TppLabel;
    upx001: TppLabel;
    curr011: TppLabel;
    amt001: TppLabel;
    qty002: TppLabel;
    unit002: TppLabel;
    curr002: TppLabel;
    upx002: TppLabel;
    curr012: TppLabel;
    amt002: TppLabel;
    memo003: TppMemo;
    ttlamt001: TppLabel;
    qty003: TppLabel;
    unit003: TppLabel;
    curr003: TppLabel;
    upx003: TppLabel;
    curr013: TppLabel;
    amt003: TppLabel;
    artno001: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ttlqty001: TppLabel;
    DBNumberEditEh1: TDBNumberEditEh;
    Label12: TLabel;
    mim001: TppMemo;
    mim002: TppMemo;
    ppLine15: TppLine;
    mim003: TppMemo;
    ppLine16: TppLine;
    jno001: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query2AfterPost(DataSet: TDataSet);
    procedure DBGridEh1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure QueryQtyChange(Sender: TField);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure DBGridEh1Columns23EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    function convertnumeric(const s:integer):string;
    function convert1(const s,i:integer):string;
  public
    { Public declarations }
  end;

var
  frmpdninvoice_LARD: Tfrmpdninvoice_LARD;

implementation

uses mainformu, pdnformu, shpadvice1formu, cust_invformu, pdninv_descriptionformu,
  cpyinvformu;

{$R *.dfm}

procedure Tfrmpdninvoice_lard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdninvoice_lard:=nil;
end;

procedure Tfrmpdninvoice_lard.SpeedButton1Click(Sender: TObject);
begin
  if frmcust_inv=nil then frmcust_inv:=tfrmcust_inv.create(nil);
  with frmcust_inv.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select * from tbl_inv_cust where cust=:x1 and tplant=:x2';
    params[0].asstring:=query1.fieldbyname('cust').value;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    open;
  end;
  frmcust_inv.Show;
end;

procedure Tfrmpdninvoice_lard.BitBtn1Click(Sender: TObject);
begin
  if query2.state=dsedit then query2.post;
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmpdninvoice_lard.Query1AfterOpen(DataSet: TDataSet);
begin
  if not query1.fieldbyname('inv').isnull then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_inv1 where inv='''+query1.fieldbyname('inv').value+''' and tplant='''+query1.fieldbyname('tplant').value+'''';
      open;
    end;
  end;
end;

procedure Tfrmpdninvoice_lard.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftdate,'x9',ptinput);
      params.createparam(ftstring,'x10',ptinput);
      params.createparam(ftstring,'x11',ptinput);
      params.createparam(ftfloat,'x12',ptinput);
      commandtext:='update tbl_pdn_inv set addr=:x1,memo1=:x2,invdt=:x3,payterm=:x4,incoterm=:x5,country=:x6,'
                  +'shpm=:x7,vessel=:x8,departdt=:x9,lport=:x10,dport=:x11,mp=:x12 '
                  +'where inv='''+query1.fieldbyname('inv').value+''' and tplant='''+query1.fieldbyname('tplant').value+'''';
      if not query1.fieldbyname('addr').isnull then
      params[0].asstring:=query1.fieldbyname('addr').value
      else params[0].asstring:='';
      if not query1.fieldbyname('memo1').isnull then
      params[1].asstring:=query1.fieldbyname('memo1').value
      else params[1].asstring:='';
      if not query1.fieldbyname('invdt').isnull then
      params[2].asdate:=query1.fieldbyname('invdt').value
      else params[2].asdate:=date;
      if not query1.fieldbyname('payterm').isnull then
      params[3].asstring:=query1.fieldbyname('payterm').value
      else params[3].asstring:='';
      if not query1.fieldbyname('incoterm').isnull then
      params[4].asstring:=query1.fieldbyname('incoterm').value
      else params[4].asstring:='';
      if not query1.fieldbyname('country').isnull then
      params[5].asstring:=query1.fieldbyname('country').value
      else params[5].asstring:='';
      if not query1.fieldbyname('shpm').isnull then
      params[6].asstring:=query1.fieldbyname('shpm').value
      else params[6].asstring:='';
      if not query1.fieldbyname('vessel').isnull then
      params[7].asstring:=query1.fieldbyname('vessel').value
      else params[7].asstring:='';
      if not query1.fieldbyname('departdt').isnull then
      params[8].asdate:=query1.fieldbyname('departdt').value
      else params[8].asdate:=date;
      if not query1.fieldbyname('lport').isnull then
      params[9].asstring:=query1.fieldbyname('lport').value
      else params[9].asstring:='';
      if not query1.fieldbyname('dport').isnull then
      params[10].asstring:=query1.fieldbyname('dport').value
      else params[10].asstring:='';
      if not query1.fieldbyname('mp').isnull then
      params[11].asfloat:=query1.fieldbyname('mp').value
      else params[11].asfloat:=85.0;
      execute;
    end;
  end;
  }
      str1:='update tbl_pdn_inv set ';
      if not query1.fieldbyname('addr').isnull then
      str1:=str1+'addr='''+query1.fieldbyname('addr').value+''','
      else str1:=str1+'addr='''',';
      if not query1.fieldbyname('memo1').isnull then
      str1:=str1+'memo1='''+query1.fieldbyname('memo1').value+''','
      else str1:=str1+'memo1='''',';
      if not query1.fieldbyname('invdt').isnull then
      str1:=str1+'invdt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('invdt').value)+''','
      else str1:=str1+'invdt='''+formatdatetime('yyyy-MM-dd',date)+''',';
      if not query1.fieldbyname('payterm').isnull then
      str1:=str1+'payterm='''+query1.fieldbyname('payterm').value+''','
      else str1:=str1+'payterm='''',';
      if not query1.fieldbyname('incoterm').isnull then
      str1:=str1+'incoterm='''+query1.fieldbyname('incoterm').value+''','
      else str1:=str1+'incoterm='''',';
      if not query1.fieldbyname('country').isnull then
      str1:=str1+'country='''+query1.fieldbyname('country').value+''','
      else str1:=str1+'country='''',';
      if not query1.fieldbyname('shpm').isnull then
      str1:=str1+'shpm='''+query1.fieldbyname('shpm').value+''','
      else str1:=str1+'shpm='''',';
      if not query1.fieldbyname('vessel').isnull then
      str1:=str1+'vessel='''+query1.fieldbyname('vessel').value+''','
      else str1:=str1+'vessel='''',';
      if not query1.fieldbyname('departdt').isnull then
      str1:=str1+'departdt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('departdt').value)+''','
      else str1:=str1+'departdt='''+formatdatetime('yyyy-MM-dd',date)+''',';
      if not query1.fieldbyname('lport').isnull then
      str1:=str1+'lport='''+query1.fieldbyname('lport').value+''','
      else str1:=str1+'lport='''',';
      if not query1.fieldbyname('dport').isnull then
      str1:=str1+'dport='''+query1.fieldbyname('dport').value+''','
      else str1:=str1+'dport='''',';
      if not query1.fieldbyname('mp').isnull then
      str1:=str1+'mp='+query1.fieldbyname('mp').asstring+' '
      else str1:=str1+'mp=85.0 ';
      str1:=str1+'where inv='''+query1.fieldbyname('inv').value+''' and tplant='''+query1.fieldbyname('tplant').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

end;

procedure Tfrmpdninvoice_lard.Query2AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query2.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftfloat,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftstring,'x10',ptinput);
      params.createparam(ftfloat,'x11',ptinput);
      params.createparam(ftfloat,'x12',ptinput);
      params.createparam(ftfloat,'x13',ptinput);
      params.createparam(ftfloat,'x14',ptinput);
      params.createparam(ftstring,'x15',ptinput);
      params.createparam(ftstring,'x16',ptinput);
      params.createparam(ftstring,'x17',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      commandtext:='update tbl_pdn_inv1 set spmarks=:x1,styledes=:x2,tstyle=:x3,cert=:x4,qty=:x5,box=:x6,amt=:x8,qty1=:x9,unit1=:x10,upric1=:x11,'
                  +'vol1=:x12,gwght=:x13,nwght=:x14,remarks=:x15,custpo=:x16,hscode=:x17 where inv='''+query2.fieldbyname('inv').value+''' and tplant='''+query2.fieldbyname('tplant').value+''' and xh=:x7';
      if not query2.fieldbyname('spmarks').isnull then
      params[0].asstring:=query2.fieldbyname('spmarks').value
      else params[0].asstring:='';
      if not query2.fieldbyname('styledes').isnull then
      params[1].asstring:=query2.fieldbyname('styledes').value
      else params[1].asstring:='';
      if not query2.fieldbyname('tstyle').isnull then
      params[2].asstring:=query2.fieldbyname('tstyle').value
      else params[2].asstring:='';
      if not query2.fieldbyname('cert').isnull then
      params[3].asstring:=query2.fieldbyname('cert').value
      else params[3].asstring:='';
      if not query2.fieldbyname('qty').isnull then
      params[4].asinteger:=query2.fieldbyname('qty').value
      else params[4].asinteger:=0;
      if not query2.fieldbyname('box').isnull then
      params[5].asinteger:=query2.fieldbyname('box').value
      else params[5].asinteger:=0;
      if not query2.fieldbyname('amt').isnull then
      params[6].asfloat:=query2.fieldbyname('amt').value
      else params[6].asfloat:=0;
      if not query2.fieldbyname('qty1').isnull then
      params[7].asinteger:=query2.fieldbyname('qty1').value
      else params[7].asinteger:=0;
      if not query2.fieldbyname('unit1').isnull then
      params[8].asstring:=query2.fieldbyname('unit1').value
      else params[8].asstring:='';
      if not query2.fieldbyname('upric1').isnull then
      params[9].asfloat:=query2.fieldbyname('upric1').value
      else params[9].asfloat:=0;
      if not query2.fieldbyname('vol1').isnull then
      params[10].asfloat:=query2.fieldbyname('vol1').value
      else params[10].asfloat:=0;
      if not query2.fieldbyname('gwght').isnull then
      params[11].asfloat:=query2.fieldbyname('gwght').value
      else params[11].asfloat:=0;
      if not query2.fieldbyname('nwght').isnull then
      params[12].asfloat:=query2.fieldbyname('nwght').value
      else params[12].asfloat:=0;
      if not query2.fieldbyname('remarks').isnull then
      params[13].asstring:=query2.fieldbyname('remarks').value
      else params[13].asstring:='';
      if not query2.fieldbyname('custpo').isnull then
      params[14].asstring:=query2.fieldbyname('custpo').value
      else params[14].asstring:='';
      if not query2.fieldbyname('hscode').isnull then
      params[15].asstring:=query2.fieldbyname('hscode').value
      else params[15].asstring:='';
      params[16].asinteger:=query2.fieldbyname('xh').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_pdn_inv1 set ';
      if not query2.fieldbyname('spmarks').isnull then
      str1:=str1+'spmarks='''+query2.fieldbyname('spmarks').value+''','
      else str1:=str1+'spmarks='''',';
      if not query2.fieldbyname('styledes').isnull then
      str1:=str1+'styledes='''+query2.fieldbyname('styledes').value+''','
      else str1:=str1+'styledes='''',';
      if not query2.fieldbyname('tstyle').isnull then
      str1:=str1+'tstyle='''+query2.fieldbyname('tstyle').value+''','
      else str1:=str1+'tstyle='''',';
      if not query2.fieldbyname('cert').isnull then
      str1:=str1+'cert='''+query2.fieldbyname('cert').value+''','
      else str1:=str1+'cert='''',';
      if not query2.fieldbyname('qty').isnull then
      str1:=str1+'qty='+query2.fieldbyname('qty').asstring+','
      else str1:=str1+'qty=0,';
      if not query2.fieldbyname('box').isnull then
      str1:=str1+'box='+query2.fieldbyname('box').asstring+','
      else str1:=str1+'box=0,';
      if not query2.fieldbyname('amt').isnull then
      str1:=str1+'amt='+query2.fieldbyname('amt').asstring+','
      else str1:=str1+'amt=0,';
      if not query2.fieldbyname('qty1').isnull then
      str1:=str1+'qty1='+query2.fieldbyname('qty1').asstring+','
      else str1:=str1+'qty1=0,';
      if not query2.fieldbyname('unit1').isnull then
      str1:=str1+'unit1='''+query2.fieldbyname('unit1').value+''','
      else str1:=str1+'unit1='''',';
      if not query2.fieldbyname('upric1').isnull then
      str1:=str1+'upric1='+query2.fieldbyname('upric1').asstring+','
      else str1:=str1+'upric1=0,';
      if not query2.fieldbyname('vol1').isnull then
      str1:=str1+'vol1='+query2.fieldbyname('vol1').asstring+','
      else str1:=str1+'vol1=0,';
      if not query2.fieldbyname('gwght').isnull then
      str1:=str1+'gwght='+query2.fieldbyname('gwght').asstring+','
      else str1:=str1+'gwght=0,';
      if not query2.fieldbyname('nwght').isnull then
      str1:=str1+'nwght='+query2.fieldbyname('nwght').asstring+','
      else str1:=str1+'nwght=0,';
      if not query2.fieldbyname('hscode').isnull then
      str1:=str1+'hscode='''+query2.fieldbyname('hscode').value+''','
      else str1:=str1+'hscode='''',';
      if not query2.fieldbyname('custpo').isnull then
      str1:=str1+'custpo='''+query2.fieldbyname('custpo').value+''','
      else str1:=str1+'custpo='''',';
      if not query2.fieldbyname('remarks').isnull then
      str1:=str1+'remarks='''+query2.fieldbyname('remarks').value+''' '
      else str1:=str1+'remarks='''' ';
      str1:=str1+'where inv='''+query2.fieldbyname('inv').value+''' and tplant='''+query2.fieldbyname('tplant').value+''' and xh='+query2.fieldbyname('xh').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

end;

procedure Tfrmpdninvoice_lard.DBGridEh1Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmpdninv_description=nil then frmpdninv_description:=tfrmpdninv_description.create(nil);
  frmpdninv_description.DBMemo1.DataSource:=datasource2;
  frmpdninv_description.DBMemo1.DataField:='SPMARKS';
  frmpdninv_description.Caption:='Shipping Marks';
  frmpdninv_description.Show;
end;

procedure Tfrmpdninvoice_lard.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmpdninv_description=nil then frmpdninv_description:=tfrmpdninv_description.create(nil);
  frmpdninv_description.DBMemo1.DataSource:=datasource2;
  frmpdninv_description.DBMemo1.DataField:='STYLEDES';
  frmpdninv_description.Caption:='Style Description';
  frmpdninv_description.Show;
end;

procedure Tfrmpdninvoice_lard.BitBtn2Click(Sender: TObject);
begin
  bitbtn1click(self);
  if not query1.fieldbyname('inv').isnull then begin
    with query5 do begin
      close;
      params.clear;
      commandtext:='select distinct a.tplant,a.inv,min(b.xh) as xh,b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,sum(b.vol1) as vol1,sum(b.gwght) as gwght,sum(b.nwght) as nwght '
                  +'from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value
                  +''' group by a.tplant,a.inv,b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode';
      open;
      if not fieldbyname('xh').isnull then begin
        title001.Caption:='P.H. Garment Mfg. CO., Ltd.';
        title002.Caption:='Unit 2101-3, Ever Gain Plaza, Tower 2, 88 Container Port Road, Kwai Chung, Hong Kong.';
        //title003.Caption:='COMMERCIAL INVOICE';
        if pgfooter.Checked then ppDBMemo5.Visible:=true
        else ppDBMemo5.Visible:=false;
        memo001.Visible:=true;
        memo002.Visible:=true;
        ppline2.Visible:=true;
        mim001.Visible:=false;
        mim002.Visible:=false;
        mim003.Visible:=false;
        ppline15.Visible:=false;
        ppline16.Visible:=false;
        memo001.Lines.Clear;
        memo001.Lines.add(query1.fieldbyname('addr').value);
        memo002.Lines.clear;
        memo002.Lines.add(query1.fieldbyname('memo1').value);
        x0001.Caption:=fieldbyname('inv').value;
        x00002.Caption:=formatdatetime('dd/MM/yyyy',query1.fieldbyname('invdt').value);
        if not query1.fieldbyname('payterm').isnull then
        x00003.Caption:=query1.fieldbyname('payterm').value
        else x00003.Caption:='';
        if not query1.fieldbyname('incoterm').isnull then
        x00004.Caption:=query1.fieldbyname('incoterm').value
        else x00004.Caption:='';
        if not query1.fieldbyname('country').isnull then
        x00005.Caption:=query1.fieldbyname('country').value
        else x00005.Caption:='';
        if not query1.fieldbyname('shpm').isnull then
        x00006.Caption:=query1.fieldbyname('shpm').value
        else x00006.Caption:='';
        if not query1.fieldbyname('vessel').isnull then
        x00008.Caption:=query1.fieldbyname('vessel').value
        else x00008.Caption:='';
        if not query1.fieldbyname('departdt').isnull then
        x00009.Caption:=formatdatetime('dd/MM/yyyy',query1.fieldbyname('departdt').value)
        else x00009.Caption:='';
        if not query1.fieldbyname('lport').isnull then
        x00010.Caption:=query1.fieldbyname('lport').value
        else x00010.Caption:='';
        if not query1.fieldbyname('dport').isnull then
        x00011.Caption:=query1.fieldbyname('dport').value
        else x00011.Caption:='';
        ppReport1.Print;
      end;
    end;
  end;
end;

procedure Tfrmpdninvoice_lard.Query2AfterOpen(DataSet: TDataSet);
begin
  query2.FieldByName('qty').onchange:=queryqtychange;
end;

procedure Tfrmpdninvoice_lard.QueryQtyChange(Sender: TField);
begin
  if not query2.fieldbyname('qty').isnull then
    query2.fieldbyname('amt').value:=query2.fieldbyname('qty').value*query2.fieldbyname('upric').value
  else query2.fieldbyname('amt').value:=0;
end;

procedure Tfrmpdninvoice_lard.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure Tfrmpdninvoice_lard.ppSummaryBand1BeforePrint(Sender: TObject);
var
  s:string;
  s1,s2,box:integer;
  amt,qty,qty1:double;
begin
  with query4 do begin
    close;
    params.clear;
    commandtext:='select sum(b.box) as x1,sum(b.amt) as x2,sum(b.qty) as x3,sum(b.qty1) as x4 from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value+''' order by b.xh';
    open;
    if not fieldbyname('x1').isnull then box:=fieldbyname('x1').value else box:=0;
    if not fieldbyname('x2').isnull then amt:=fieldbyname('x2').value else amt:=0;
    if not fieldbyname('x3').isnull then qty:=fieldbyname('x3').value else qty:=0;
    if not fieldbyname('x4').isnull then qty1:=fieldbyname('x4').value else qty1:=0;
  end;
  if ppline2.Visible=false then amt:=amt*query1.fieldbyname('mp').value/100.00;
  ttlamt001.Caption:=formatfloat('#,0.00',amt);
  if qty1=0 then
    ttlqty001.Caption:=formatfloat('#,0',qty)
  else ttlqty001.Caption:=formatfloat('#,0',qty1);
  ttl001.Caption:=convertnumeric(box)+' ('+inttostr(box)+') CARTONS ONLY***';
  s:=formatfloat('#0.00',amt);
  s1:=strtoint(copy(s,1,length(s)-3));
  s2:=strtoint(copy(s,length(s)-1,2));
  ttl002.Caption:='SAY TOTAL '+query5.fieldbyname('curr').value+' '+convertnumeric(s1);
  if s2>0 then ttl002.Caption:=ttl002.Caption+' AND CENTS '+convertnumeric(s2)+' ONLY***'
  else ttl002.Caption:=ttl002.Caption+' ONLY***';
end;

function Tfrmpdninvoice_lard.convertnumeric(const s: integer): string;
var
  s1,s2,s3,s4,s5:string;
begin
  if s=0 then result:=''
  else if s<20 then result:=convert1(s,1)
  else if s<100 then begin
    s1:=copy(inttostr(s),1,1);
    s2:=copy(inttostr(s),2,1);
    if s2>'0' then
    result:=convert1(strtoint(s1),2)+'-'+convert1(strtoint(s2),1)
    else result:=convert1(strtoint(s1),2);
  end else if s<1000 then begin
    s1:=copy(inttostr(s),1,1);
    s2:=copy(inttostr(s),2,2);
    result:=convert1(strtoint(s1),3)+' AND '+convertnumeric(strtoint(s2));
  end else if s<10000 then begin
    s1:=copy(inttostr(s),1,1);
    s2:=copy(inttostr(s),2,3);
    result:=convert1(strtoint(s1),1)+' THOUSAND '+convertnumeric(strtoint(s2));
  end else if s<100000 then begin
    s1:=copy(inttostr(s),1,2);
    s2:=copy(inttostr(s),3,3);
    result:=convertnumeric(strtoint(s1))+' THOUSAND '+convertnumeric(strtoint(s2));
  end else if s<1000000 then begin
    s1:=copy(inttostr(s),1,3);
    s2:=copy(inttostr(s),4,3);
    result:=convertnumeric(strtoint(s1))+' THOUSAND '+convertnumeric(strtoint(s2));
  end;
end;

function Tfrmpdninvoice_lard.convert1(const s, i: integer): string;
begin
  if i=1 then begin
    if s=1 then result:='ONE'
    else if s=2 then result:='TWO'
    else if s=3 then result:='THREE'
    else if s=4 then result:='FOUR'
    else if s=5 then result:='FIVE'
    else if s=6 then result:='SIX'
    else if s=7 then result:='SEVEN'
    else if s=8 then result:='EIGHT'
    else if s=9 then result:='NINE'
    else if s=10 then result:='TEN'
    else if s=11 then result:='ELEVEN'
    else if s=12 then result:='TWELVE'
    else if s=13 then result:='THIRTEEN'
    else if s=14 then result:='FORTEEN'
    else if s=15 then result:='FIFTEEN'
    else if s=16 then result:='SIXTEEN'
    else if s=17 then result:='SEVENTEEN'
    else if s=18 then result:='EIGHTEEN'
    else if s=19 then result:='NINETEEN';
  end else if i=2 then begin
    if s=2 then result:='TWENTY'
    else if s=3 then result:='THIRTY'
    else if s=4 then result:='FORTY'
    else if s=5 then result:='FIFTY'
    else if s=6 then result:='SIXTY'
    else if s=7 then result:='SEVENTY'
    else if s=8 then result:='EIGHTY'
    else if s=9 then result:='NINETY';
  end else if i=3 then begin
    if s=1 then result:='ONE HUNDRED'
    else if s=2 then result:='TWO HUNDRED'
    else if s=3 then result:='THREE HUNDRED'
    else if s=4 then result:='FOUR HUNDRED'
    else if s=5 then result:='FIVE HUNDRED'
    else if s=6 then result:='SIX HUNDRED'
    else if s=7 then result:='SEVEN HUNDRED'
    else if s=8 then result:='EIGHT HUNDRED'
    else if s=9 then result:='NINE HUNDRED';
  end;
end;

procedure Tfrmpdninvoice_lard.ppDetailBand1BeforePrint(Sender: TObject);
var
  jno1,job1,artno1,remarks:string;
  xs:double;
begin
  if not query5.fieldbyname('cert').isnull then begin
    if query5.fieldbyname('cert').value>'' then
    pplabel26.Visible:=true
    else pplabel26.Visible:=false;
  end else pplabel26.Visible:=false;

  qty001.Caption:='';unit001.Caption:='';curr001.Caption:='';upx001.Caption:='';curr011.Caption:='';amt001.Caption:='';
  qty002.Caption:='';unit002.Caption:='';curr002.Caption:='';upx002.Caption:='';curr012.Caption:='';amt002.Caption:='';
  qty003.Caption:='';unit003.Caption:='';curr003.Caption:='';upx003.Caption:='';curr013.Caption:='';amt003.Caption:='';
  jno1:=''; job1:=''; artno1:=''; remarks:='';

  if ppline2.Visible=false then xs:=query1.fieldbyname('mp').value/100.00 else xs:=1.0;

  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct j_no from tbl_pdn_inv1 '
                +'where tplant='''+query1.fieldbyname('tplant').value+''' and inv='''+query1.fieldbyname('inv').value+''' and cstyle='''+query5.fieldbyname('cstyle').value+'''';
    open;
    first;
    while not eof do begin
      if jno1>'' then jno1:=jno1+','+fieldbyname('j_no').value
      else jno1:=fieldbyname('j_no').value;
      application.ProcessMessages;
      next;
    end;
  end;
  jno001.Caption:=jno1;
  
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct artno from tbl_pdn_inv1 '
                +'where tplant='''+query1.fieldbyname('tplant').value+''' and inv='''+query1.fieldbyname('inv').value+''' and cstyle='''+query5.fieldbyname('cstyle').value+'''';
    open;
    first;
    while not eof do begin
      if artno1>'' then artno1:=artno1+','+fieldbyname('artno').value
      else artno1:=fieldbyname('artno').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct j2_job,qty,curr,upric,amt,qty1,unit1,upric1,remarks from tbl_pdn_inv1 '
                +'where tplant='''+query1.fieldbyname('tplant').value+''' and inv='''+query1.fieldbyname('inv').value+''' and cstyle='''+query5.fieldbyname('cstyle').value+'''';
    open;
    first;
    while not eof do begin
      if job1>'' then job1:=job1+','+fieldbyname('j2_job').value
      else job1:=fieldbyname('j2_job').value;
      if not fieldbyname('remarks').isnull then begin
        if remarks>'' then remarks:=remarks+' '+fieldbyname('remarks').value
        else remarks:=fieldbyname('remarks').value;
      end;
      if not fieldbyname('qty1').isnull then begin
        if fieldbyname('qty1').value>0 then begin
          if qty001.Caption='' then begin
            qty001.Caption:=fieldbyname('qty1').AsString;
            unit001.Caption:=fieldbyname('unit1').value;
            curr001.Caption:=fieldbyname('curr').value;
            upx001.Caption:=formatfloat('0.00',fieldbyname('upric1').value*xs);
            curr011.Caption:=fieldbyname('curr').value;
            amt001.Caption:=formatfloat('#,0.00',fieldbyname('amt').value*xs);
          end else if qty002.Caption='' then begin
            qty002.Caption:=fieldbyname('qty1').AsString;
            unit002.Caption:=fieldbyname('unit1').value;
            curr002.Caption:=fieldbyname('curr').value;
            upx002.Caption:=formatfloat('0.00',fieldbyname('upric1').value*xs);
            curr012.Caption:=fieldbyname('curr').value;
            amt002.Caption:=formatfloat('#,0.00',fieldbyname('amt').value*xs);
          end else if qty003.Caption='' then begin
            qty003.Caption:=fieldbyname('qty1').AsString;
            unit003.Caption:=fieldbyname('unit1').value;
            curr003.Caption:=fieldbyname('curr').value;
            upx003.Caption:=formatfloat('0.00',fieldbyname('upric1').value*xs);
            curr013.Caption:=fieldbyname('curr').value;
            amt003.Caption:=formatfloat('#,0.00',fieldbyname('amt').value*xs);
          end;
        end else begin
          if qty001.Caption='' then begin
            qty001.Caption:=fieldbyname('qty').AsString;
            unit001.Caption:='PCS';
            curr001.Caption:=fieldbyname('curr').value;
            upx001.Caption:=formatfloat('0.00',fieldbyname('upric').value*xs);
            curr011.Caption:=fieldbyname('curr').value;
            amt001.Caption:=formatfloat('#,0.00',fieldbyname('amt').value*xs);
          end else if qty002.Caption='' then begin
            qty002.Caption:=fieldbyname('qty').AsString;
            unit002.Caption:='PCS';
            curr002.Caption:=fieldbyname('curr').value;
            upx002.Caption:=formatfloat('0.00',fieldbyname('upric').value*xs);
            curr012.Caption:=fieldbyname('curr').value;
            amt002.Caption:=formatfloat('#,0.00',fieldbyname('amt').value*xs);
          end else if qty003.Caption='' then begin
            qty003.Caption:=fieldbyname('qty').AsString;
            unit003.Caption:='PCS';
            curr003.Caption:=fieldbyname('curr').value;
            upx003.Caption:=formatfloat('0.00',fieldbyname('upric').value*xs);
            curr013.Caption:=fieldbyname('curr').value;
            amt003.Caption:=formatfloat('#,0.00',fieldbyname('amt').value*xs);
          end;
        end;
      end else begin
        if qty001.Caption='' then begin
          qty001.Caption:=fieldbyname('qty').AsString;
          unit001.Caption:='PCS';
          curr001.Caption:=fieldbyname('curr').value;
          upx001.Caption:=formatfloat('0.00',fieldbyname('upric').value*xs);
          curr011.Caption:=fieldbyname('curr').value;
          amt001.Caption:=formatfloat('#,0.00',fieldbyname('amt').value*xs);
        end else if qty002.Caption='' then begin
          qty002.Caption:=fieldbyname('qty').AsString;
          unit002.Caption:='PCS';
          curr002.Caption:=fieldbyname('curr').value;
          upx002.Caption:=formatfloat('0.00',fieldbyname('upric').value*xs);
          curr012.Caption:=fieldbyname('curr').value;
          amt002.Caption:=formatfloat('#,0.00',fieldbyname('amt').value*xs);
        end else if qty003.Caption='' then begin
          qty003.Caption:=fieldbyname('qty').AsString;
          unit003.Caption:='PCS';
          curr003.Caption:=fieldbyname('curr').value;
          upx003.Caption:=formatfloat('0.00',fieldbyname('upric').value*xs);
          curr013.Caption:=fieldbyname('curr').value;
          amt003.Caption:=formatfloat('#,0.00',fieldbyname('amt').value*xs);
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  wo00001.caption:=job1;
  artno001.Caption:=artno1;
  memo003.Lines.clear;
  memo003.Lines.Add(remarks);
  {
  if not query5.fieldbyname('qty1').isnull then begin
    if query5.fieldbyname('qty1').value>0 then begin
      qty001.Visible:=true;
      unit001.Visible:=true;
      upric001.Visible:=true;
    end else begin
      qty001.Visible:=false;
      unit001.Visible:=false;
      upric001.Visible:=false;
    end;
  end else begin
    qty001.Visible:=false;
    unit001.Visible:=false;
    upric001.Visible:=false;
  end;
  }
end;

procedure Tfrmpdninvoice_LARD.DBGridEh1Columns23EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if frmpdninv_description=nil then frmpdninv_description:=tfrmpdninv_description.create(nil);
  frmpdninv_description.DBMemo1.DataSource:=datasource2;
  frmpdninv_description.DBMemo1.DataField:='REMARKS';
  frmpdninv_description.Caption:='Remark (if neccessary)';
  frmpdninv_description.Show;
end;

procedure Tfrmpdninvoice_LARD.DBEdit2DblClick(Sender: TObject);
var
  ninv:string;
begin
  ninv:=inputbox('Amend Invoice #','Please input a new invoice #:','');
  if ninv>'' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_pdn_updinvno(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('shpno').value;
      params[2].asstring:=query1.fieldbyname('inv').value;
      params[3].asstring:=uppercase(ninv);
      execute;
    end;
    query1.edit;
    query1.fieldbyname('inv').value:=ninv;
    with frmshpadvice1.Query1 do begin
      edit;
      fieldbyname('inv').value:=ninv;
    end;
    showmessage('Amended successfully!');
  end;
end;

procedure Tfrmpdninvoice_LARD.BitBtn5Click(Sender: TObject);
begin
  if frmcpyinv=nil then frmcpyinv:=tfrmcpyinv.create(nil);
  with frmcpyinv.query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_pdn_inv where cust='''+query1.fieldbyname('cust').value+''' and tplant='''+query1.fieldbyname('tplant').value+'''';
    open;
  end;
  frmcpyinv.label1.caption:='LARD';
  frmcpyinv.show;
end;

procedure Tfrmpdninvoice_LARD.BitBtn3Click(Sender: TObject);
begin
  bitbtn1click(self);
  if not query1.fieldbyname('inv').isnull then begin
    with query5 do begin
      close;
      params.clear;
      commandtext:='select distinct a.tplant,a.inv,min(b.xh) as xh,b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,sum(b.vol1) as vol1,sum(b.gwght) as gwght,sum(b.nwght) as nwght '
                  +'from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value
                  +''' group by a.tplant,a.inv,b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode';
      open;
      if not fieldbyname('xh').isnull then begin
        with query3 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_pdn_inv_ph';
          open;
          title001.Caption:=fieldbyname('title001').value;
          title002.Caption:=fieldbyname('title002').value;
          //title003.Caption:=fieldbyname('title003').value;
        end;
        if pgfooter.Checked then ppDBMemo5.Visible:=true
        else ppDBMemo5.Visible:=false;
        memo001.Visible:=false;
        memo002.Visible:=false;
        ppline2.Visible:=false;
        mim001.Visible:=true;
        mim002.Visible:=true;
        mim003.Visible:=true;
        ppline15.Visible:=true;
        ppline16.Visible:=true;
        mim001.Lines.Clear;
        mim001.Lines.add('Seller: '+title001.Caption);
        mim001.Lines.Add(title002.Caption);
        mim002.Lines.clear;
        mim002.Lines.add('Buyer: P.H. Garment Mfg. CO., Ltd.');
        mim002.Lines.add('Unit 2101-3, Ever Gain Plaza, Tower 2, 88 Container Port Road, Kwai Chung, Hong Kong.');
        mim003.Lines.clear;
        mim003.Lines.add('Ultimate Consignee: '+query1.fieldbyname('addr').value);
        {
        memo001.Lines.Clear;
        memo001.Lines.add(query1.fieldbyname('addr').value);
        memo002.Lines.clear;
        memo002.Lines.add(query1.fieldbyname('memo1').value);
        }
        x0001.Caption:=fieldbyname('inv').value;
        x00002.Caption:=formatdatetime('dd/MM/yyyy',query1.fieldbyname('invdt').value);
        if not query1.fieldbyname('payterm').isnull then
        x00003.Caption:=query1.fieldbyname('payterm').value
        else x00003.Caption:='';
        if not query1.fieldbyname('incoterm').isnull then
        x00004.Caption:=query1.fieldbyname('incoterm').value
        else x00004.Caption:='';
        if not query1.fieldbyname('country').isnull then
        x00005.Caption:=query1.fieldbyname('country').value
        else x00005.Caption:='';
        if not query1.fieldbyname('shpm').isnull then
        x00006.Caption:=query1.fieldbyname('shpm').value
        else x00006.Caption:='';
        if not query1.fieldbyname('vessel').isnull then
        x00008.Caption:=query1.fieldbyname('vessel').value
        else x00008.Caption:='';
        if not query1.fieldbyname('departdt').isnull then
        x00009.Caption:=formatdatetime('dd/MM/yyyy',query1.fieldbyname('departdt').value)
        else x00009.Caption:='';
        if not query1.fieldbyname('lport').isnull then
        x00010.Caption:=query1.fieldbyname('lport').value
        else x00010.Caption:='';
        if not query1.fieldbyname('dport').isnull then
        x00011.Caption:=query1.fieldbyname('dport').value
        else x00011.Caption:='';
        ppReport1.Print;
      end;
    end;
  end;
end;

end.
 