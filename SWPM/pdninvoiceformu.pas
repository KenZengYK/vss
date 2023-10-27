unit pdninvoiceformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons,
  DBCtrlsEh, DB, DBClient, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppCtrls, ppStrtch, ppMemo, ppPrnabl, ppBands, ppCache,
  ppViewr, ppParameter;

type
  Tfrmpdninvoice = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
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
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppShape2: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppShape3: TppShape;
    ppDBText11: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel27: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel29: TppLabel;
    ttl001: TppLabel;
    ttl002: TppLabel;
    ppDBMemo5: TppDBMemo;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    pgfooter: TCheckBox;
    qty001: TppDBText;
    unit001: TppDBText;
    upric001: TppDBText;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ppLabel32: TppLabel;
    ppDBText27: TppDBText;
    memo003: TppMemo;
    wo0001: TppLabel;
    ppShape4: TppShape;
    ppDBText26: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel28: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
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
    procedure DBEdit2DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1Columns21EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function convertnumeric(const s:integer):string;
    function convert1(const s,i:integer):string;
  end;

var
  frmpdninvoice: Tfrmpdninvoice;

implementation

uses mainformu, pdnformu, shpadvice1formu, cust_invformu, pdninv_descriptionformu,
  cpyinvformu, pdninvoice_monoformu, pdninvoice_canaformu,
  pdninvoice_etamformu;

{$R *.dfm}

procedure Tfrmpdninvoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmpdninvoice_mono<>nil then frmpdninvoice_mono:=nil;
  if frmpdninvoice_cana<>nil then frmpdninvoice_cana:=nil;
  if frmpdninvoice_etam<>nil then frmpdninvoice_etam:=nil;
  action:=cafree;
  frmpdninvoice:=nil;
end;

procedure Tfrmpdninvoice.SpeedButton1Click(Sender: TObject);
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

procedure Tfrmpdninvoice.BitBtn1Click(Sender: TObject);
begin
  if query2.state=dsedit then query2.post;
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmpdninvoice.Query1AfterOpen(DataSet: TDataSet);
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

procedure Tfrmpdninvoice.Query1AfterPost(DataSet: TDataSet);
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
      commandtext:='update tbl_pdn_inv set addr=:x1,memo1=:x2,invdt=:x3,payterm=:x4,incoterm=:x5,country=:x6,'
                  +'shpm=:x7,vessel=:x8,departdt=:x9,lport=:x10,dport=:x11 '
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
      str1:=str1+'dport='''+query1.fieldbyname('dport').value+''' '
      else str1:=str1+'dport='''' ';
      str1:=str1+'where inv='''+query1.fieldbyname('inv').value+''' and tplant='''+query1.fieldbyname('tplant').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

end;

procedure Tfrmpdninvoice.Query2AfterPost(DataSet: TDataSet);
var
  str1:string;
  n1:integer;
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
      params.createparam(ftstring,'x12',ptinput);
      params.createparam(ftstring,'x13',ptinput);
      params.createparam(ftstring,'x14',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      commandtext:='update tbl_pdn_inv1 set spmarks=:x1,styledes=:x2,tstyle=:x3,cert=:x4,qty=:x5,box=:x6,amt=:x8,qty1=:x9,unit1=:x10,upric1=:x11,hscode=:x12,custpo=:x13,remarks=:x14 '
                  +'where inv='''+query2.fieldbyname('inv').value+''' and tplant='''+query2.fieldbyname('tplant').value+''' and xh=:x7';

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
      if not query2.fieldbyname('hscode').isnull then
      params[10].asstring:=query2.fieldbyname('hscode').value
      else params[10].asstring:='';
      if not query2.fieldbyname('custpo').isnull then
      params[11].asstring:=query2.fieldbyname('custpo').value
      else params[11].asstring:='';
      if not query2.fieldbyname('remarks').isnull then
      params[12].asstring:=query2.fieldbyname('remarks').value
      else params[12].asstring:='';
      params[13].asinteger:=query2.fieldbyname('xh').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_pdn_inv1 set ';
      if not query2.fieldbyname('spmarks').isnull then
      str1:=str1+'spmarks='''+query2.fieldbyname('spmarks').value+''','
      else str1:=str1+'spmarks='''',';
      if not query2.fieldbyname('styledes').isnull then begin
        n1:=pos('LADIES''',query2.fieldbyname('styledes').value);
        if n1>0 then str1:=str1+'styledes=''LADIES'''''+copy(query2.fieldbyname('styledes').value,n1+7,length(query2.fieldbyname('styledes').value)-n1-6)+''','
        //n1:=pos('''',query2.fieldbyname('styledes').value);
        //if n1>0 then str1:=str1+'styledes='''+copy(query2.fieldbyname('styledes').value,1,n1-1)+''''+copy(query2.fieldbyname('styledes').value,n1+1,length(query2.fieldbyname('styledes').value)-n1)+''','
        else str1:=str1+'styledes='''+query2.fieldbyname('styledes').value+''','
      end else str1:=str1+'styledes='''',';
      if not query2.fieldbyname('tstyle').isnull then
      str1:=str1+'tstyle='''+query2.fieldbyname('tstyle').value+''','
      else str1:=str1+'tstyle='''',';
      if not query2.fieldbyname('cert').isnull then
      str1:=str1+'cert='''+query2.fieldbyname('cert').value+''','
      else str1:=str1+'cert='''',';
      if not query2.fieldbyname('qty').isnull then
      str1:=str1+'qty='+query2.fieldbyname('qty').asstring+','
      else str1:=str1+'qty=0,';
      if not query2.fieldbyname('upric').isnull then
      str1:=str1+'upric='+query2.fieldbyname('upric').asstring+','
      else str1:=str1+'upric=0,';
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
      if not query2.fieldbyname('ass_qty').isnull then
      str1:=str1+'ass_qty='+query2.fieldbyname('ass_qty').asstring+','
      else str1:=str1+'ass_qty=0,';
      if not query2.fieldbyname('ass_upx').isnull then
      str1:=str1+'ass_upx='+query2.fieldbyname('ass_upx').asstring+','
      else str1:=str1+'ass_upx=0,';
      if not query2.fieldbyname('hscode').isnull then
      str1:=str1+'hscode='''+query2.fieldbyname('hscode').value+''','
      else str1:=str1+'hscode='''',';
      if not query2.fieldbyname('custpo').isnull then
      str1:=str1+'custpo='''+query2.fieldbyname('custpo').value+''','
      else str1:=str1+'custpo='''',';
      if not query2.fieldbyname('bdc').isnull then
      str1:=str1+'bdc='''+query2.fieldbyname('bdc').value+''','
      else str1:=str1+'bdc='''',';
      if not query2.fieldbyname('remarks').isnull then
      str1:=str1+'remarks='''+query2.fieldbyname('remarks').value+''' '
      else str1:=str1+'remarks='''' ';
      str1:=str1+'where inv='''+query2.fieldbyname('inv').value+''' and tplant='''+query2.fieldbyname('tplant').value+''' and xh='+query2.fieldbyname('xh').asstring;
      //showmessage(str1);
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
end;

procedure Tfrmpdninvoice.DBGridEh1Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmpdninv_description=nil then frmpdninv_description:=tfrmpdninv_description.create(nil);
  frmpdninv_description.DBMemo1.DataSource:=datasource2;
  frmpdninv_description.DBMemo1.DataField:='SPMARKS';
  frmpdninv_description.Caption:='Shipping Marks';
  frmpdninv_description.speedbutton1.enabled:=true;
  frmpdninv_description.Show;
end;

procedure Tfrmpdninvoice.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmpdninv_description=nil then frmpdninv_description:=tfrmpdninv_description.create(nil);
  frmpdninv_description.DBMemo1.DataSource:=datasource2;
  frmpdninv_description.DBMemo1.DataField:='STYLEDES';
  frmpdninv_description.Caption:='Style Description';
  frmpdninv_description.speedbutton1.enabled:=false;
  frmpdninv_description.Show;
end;

procedure Tfrmpdninvoice.BitBtn2Click(Sender: TObject);
begin
  bitbtn1click(self);
  if not query1.fieldbyname('inv').isnull then begin
    if query1.fieldbyname('cust').value='MONO' then begin
      if frmpdninvoice_mono=nil then frmpdninvoice_mono:=tfrmpdninvoice_mono.Create(nil);
      with frmpdninvoice_mono.query5 do begin
        close;
        params.clear;
        //commandtext:='select * from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value+''' order by b.xh';
        commandtext:='select distinct a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                    +'min(b.xh) as xh,b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.j_no,b.bdc,b.artno,b.upric,b.unit1,b.upric1,b.remarks,'
                    +'sum(qty) as qty,sum(amt) as amt,sum(qty1) as qty1,sum(b.vol1) as vol1,sum(b.gwght) as gwght,sum(b.nwght) as nwght '
                    +'from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value
                    +''' group by a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                    +'b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.j_no,b.bdc,b.artno,b.upric,b.unit1,b.upric1,b.remarks';
        open;
        if not fieldbyname('xh').isnull then begin
          if pgfooter.Checked then frmpdninvoice_mono.ppDBMemo5.Visible:=true
          else frmpdninvoice_mono.ppDBMemo5.Visible:=false;
          frmpdninvoice_mono.ppLabel18.Visible:=false; frmpdninvoice_mono.ppDBText12.Visible:=false;
          frmpdninvoice_mono.ppLabel19.Visible:=false; frmpdninvoice_mono.ppDBText13.Visible:=false;
          frmpdninvoice_mono.ppLabel20.Caption:='P.O. No.'; frmpdninvoice_mono.ppLabel21.Caption:='Article No.';
          frmpdninvoice_mono.ppReport1.Print;
        end;
      end;
    end else if (query1.fieldbyname('cust').value='CANA') or (query1.fieldbyname('cust').value='HBIU') then begin
      if frmpdninvoice_cana=nil then frmpdninvoice_cana:=tfrmpdninvoice_cana.Create(nil);
      with frmpdninvoice_cana.query5 do begin
        close;
        params.clear;
        //commandtext:='select * from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value+''' order by b.xh';
        commandtext:='select distinct a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                    +'min(b.xh) as xh,b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.j_no,b.remarks,'
                    +'sum(qty) as qty,sum(amt) as amt,sum(qty1) as qty1,sum(b.vol1) as vol1,sum(b.gwght) as gwght,sum(b.nwght) as nwght '
                    +'from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value
                    +''' group by a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                    +'b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.j_no,b.remarks';
        open;
        if not fieldbyname('xh').isnull then begin
          if pgfooter.Checked then frmpdninvoice_cana.ppDBMemo5.Visible:=true
          else frmpdninvoice_cana.ppDBMemo5.Visible:=false;
          frmpdninvoice_cana.ppLabel20.Caption:='Purchase Order'; frmpdninvoice_cana.ppLabel21.Caption:='Item No.';
          frmpdninvoice_cana.ppReport1.Print;
        end;
      end;
    end else if query1.fieldbyname('cust').value='ETAM' then begin
      if frmpdninvoice_etam=nil then frmpdninvoice_etam:=tfrmpdninvoice_etam.Create(nil);
      with frmpdninvoice_etam.query5 do begin
        close;
        params.clear;
        //commandtext:='select * from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value+''' order by b.xh';
        if query2.fieldbyname('ass_qty').value>0 then begin
          commandtext:='select distinct a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                      +'min(b.xh) as xh,b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.bdc,b.artno,b.ass_upx as upric,b.unit1,b.upric1,b.remarks,'
                      +'sum(ass_qty) as qty,sum(amt) as amt,sum(qty1) as qty1,sum(b.vol1) as vol1,sum(b.gwght) as gwght,sum(b.nwght) as nwght '
                      +'from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value
                      +''' group by a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                      +'b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.bdc,b.artno,b.ass_upx,b.unit1,b.upric1,b.remarks';
        end else begin
          commandtext:='select distinct a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                      +'min(b.xh) as xh,b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.bdc,b.artno,b.upric,b.unit1,b.upric1,b.remarks,'
                      +'sum(qty) as qty,sum(amt) as amt,sum(qty1) as qty1,sum(b.vol1) as vol1,sum(b.gwght) as gwght,sum(b.nwght) as nwght '
                      +'from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value
                      +''' group by a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                      +'b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.bdc,b.artno,b.upric,b.unit1,b.upric1,b.remarks';
        end;
        open;
        if not fieldbyname('xh').isnull then begin
          //{
          if pgfooter.Checked then frmpdninvoice_etam.ppDBMemo5.Visible:=true
          else frmpdninvoice_etam.ppDBMemo5.Visible:=false;
          frmpdninvoice_etam.ppLabel18.Visible:=true; frmpdninvoice_etam.ppDBText12.Visible:=true;
          frmpdninvoice_etam.ppLabel19.Visible:=true; frmpdninvoice_etam.ppDBText13.Visible:=true;
          frmpdninvoice_etam.ppLabel20.Caption:='Order No.'; frmpdninvoice_etam.ppLabel21.Caption:='Item No.';
          frmpdninvoice_etam.ppDBText22.DisplayFormat:='0.000';
          frmpdninvoice_etam.upric001.DisplayFormat:='0.000';
          if query2.fieldbyname('ass_qty').value>0 then frmpdninvoice_etam.ut001.caption:='ASST'
          else frmpdninvoice_etam.ut001.caption:='PCS';
          frmpdninvoice_etam.ppReport1.Print;
          //}
          //frmpdninvoice_etam.frxReport1.ShowReport(true);
        end;
      end;
    end else begin
      with query5 do begin
        close;
        params.clear;
        //commandtext:='select * from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value+''' order by b.xh';
        commandtext:='select distinct a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                    +'min(b.xh) as xh,b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.j_no,b.bdc,b.artno,b.upric,b.unit1,b.upric1,b.remarks,'
                    +'sum(qty) as qty,sum(amt) as amt,sum(qty1) as qty1,sum(b.vol1) as vol1,sum(b.gwght) as gwght,sum(b.nwght) as nwght '
                    +'from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value
                    +''' group by a.tplant,a.inv,a.invdt,a.addr,a.memo1,a.payterm,a.incoterm,a.country,a.shpm,a.vessel,a.departdt,a.lport,a.dport,'
                    +'b.spmarks,b.styledes,b.custpo,b.cstyle,b.tstyle,b.cat,b.cert,b.curr,b.hscode,b.j_no,b.bdc,b.artno,b.upric,b.unit1,b.upric1,b.remarks';
        open;
        if not fieldbyname('xh').isnull then begin
          if pgfooter.Checked then ppDBMemo5.Visible:=true
          else ppDBMemo5.Visible:=false;
          {
          if query1.fieldbyname('cust').value='ETAM' then begin
            ppLabel18.Visible:=true; ppDBText12.Visible:=true;
            ppLabel19.Visible:=true; ppDBText13.Visible:=true;
            ppLabel20.Caption:='P/O No.'; ppLabel21.Caption:='Item No.';
            ppDBText22.DisplayFormat:='0.00';
            upric001.DisplayFormat:='0.00';
          end else if query1.fieldbyname('cust').value='MONO' then begin
            ppLabel18.Visible:=false; ppDBText12.Visible:=false;
            ppLabel19.Visible:=false; ppDBText13.Visible:=false;
            ppLabel20.Caption:='P.O. No.'; ppLabel21.Caption:='Article No.';
          end else if query1.fieldbyname('cust').value='CANA' then begin
            ppLabel18.Visible:=false; ppDBText12.Visible:=false;
            ppLabel19.Visible:=false; ppDBText13.Visible:=false;
            ppLabel20.Caption:='Purchase Order'; ppLabel21.Caption:='Item No.';
            ppDBText22.DisplayFormat:='0.000';
            upric001.DisplayFormat:='0.000';
          end else
          }
          if query1.fieldbyname('cust').value='QVCP' then begin
            ppLabel18.Visible:=false; ppDBText12.Visible:=false;
            ppLabel19.Visible:=false; ppDBText13.Visible:=false;
            ppLabel20.Caption:='Purchase Order'; ppLabel21.Caption:='Style No.';
            ppDBText22.DisplayFormat:='0.000';
            upric001.DisplayFormat:='0.000';
          end;
          ppReport1.Print;
        end;
      end;
    end;
  end;
end;

procedure Tfrmpdninvoice.Query2AfterOpen(DataSet: TDataSet);
begin
  query2.FieldByName('qty').onchange:=queryqtychange;
  query2.FieldByName('upric').onchange:=queryqtychange;
end;

procedure Tfrmpdninvoice.QueryQtyChange(Sender: TField);
var
  uprc:double;
  qty:integer;
begin
  if not query2.fieldbyname('upric').isnull then
    uprc:=query2.fieldbyname('upric').value else uprc:=0;
  if not query2.fieldbyname('qty').isnull then
    qty:=query2.fieldbyname('qty').value else qty:=0;
  query2.fieldbyname('amt').value:=uprc*qty;
end;

procedure Tfrmpdninvoice.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure Tfrmpdninvoice.ppSummaryBand1BeforePrint(Sender: TObject);
var
  s:string;
  s1,s2,box:integer;
  amt:double;
begin
  with query4 do begin
    close;
    params.clear;
    commandtext:='select sum(b.box) as x1,sum(b.amt) as x2 from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+query1.fieldbyname('inv').value+''' and a.tplant='''+query1.fieldbyname('tplant').value+''' order by b.xh';
    open;
    if not fieldbyname('x1').isnull then box:=fieldbyname('x1').value else box:=0;
    if not fieldbyname('x2').isnull then amt:=fieldbyname('x2').value else amt:=0;
  end;
  ttl001.Caption:=convertnumeric(box)+' ('+inttostr(box)+') CARTONS ONLY***';
  s:=formatfloat('#0.00',amt);
  s1:=strtoint(copy(s,1,length(s)-3));
  s2:=strtoint(copy(s,length(s)-1,2));
  ttl002.Caption:='SAY TOTAL '+query5.fieldbyname('curr').value+' '+convertnumeric(s1);
  if s2>0 then ttl002.Caption:=ttl002.Caption+' AND CENTS '+convertnumeric(s2)+' ONLY***'
  else ttl002.Caption:=ttl002.Caption+' ONLY***';
  if query1.fieldbyname('cust').value='ETAM' then begin
    ppDBCalc2.Visible:=true;
    ppDBCalc3.Visible:=false;
  end else begin
    if not query5.fieldbyname('qty1').isnull then begin
      if query5.fieldbyname('qty1').value>0 then begin
        ppDBCalc3.Visible:=true;
        ppDBCalc2.Visible:=false;
      end else begin
        ppDBCalc2.Visible:=true;
        ppDBCalc3.Visible:=false;
      end;
    end else begin
      ppDBCalc2.Visible:=true;
      ppDBCalc3.Visible:=false;
    end;
  end;
end;

function Tfrmpdninvoice.convertnumeric(const s: integer): string;
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
    if s2>'00' then
    result:=convert1(strtoint(s1),3)+' AND '+convertnumeric(strtoint(s2))
    else result:=convert1(strtoint(s1),3);
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

function Tfrmpdninvoice.convert1(const s, i: integer): string;
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

procedure Tfrmpdninvoice.ppDetailBand1BeforePrint(Sender: TObject);
var
  job1:string;
begin
  job1:='';
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct j2_job from tbl_pdn_inv1 '
                +'where tplant='''+query1.fieldbyname('tplant').value+''' and inv='''+query1.fieldbyname('inv').value+''' and cstyle='''+query5.fieldbyname('cstyle').value+'''';
    open;
    first;
    while not eof do begin
      if job1>'' then job1:=job1+','+fieldbyname('j2_job').value
      else job1:=fieldbyname('j2_job').value;
      application.ProcessMessages;
      next;
    end;
  end;
  wo0001.Caption:=job1;

  if not query5.fieldbyname('cert').isnull then begin
    if query5.fieldbyname('cert').value>'' then
    pplabel26.Visible:=true
    else pplabel26.Visible:=false;
  end else pplabel26.Visible:=false;
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
  memo003.Lines.clear;
  if not query5.fieldbyname('remarks').isnull then memo003.Lines.Add(query5.fieldbyname('remarks').value);
end;

procedure Tfrmpdninvoice.DBEdit2DblClick(Sender: TObject);
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

procedure Tfrmpdninvoice.BitBtn5Click(Sender: TObject);
begin
  if frmcpyinv=nil then frmcpyinv:=tfrmcpyinv.create(nil);
  with frmcpyinv.query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_pdn_inv where cust='''+query1.fieldbyname('cust').value+''' and tplant='''+query1.fieldbyname('tplant').value+'''';
    open;
  end;
  frmcpyinv.label1.caption:='ETAM';
  frmcpyinv.show;
end;

procedure Tfrmpdninvoice.BitBtn3Click(Sender: TObject);
begin
  //
end;

procedure Tfrmpdninvoice.DBGridEh1Columns21EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmpdninv_description=nil then frmpdninv_description:=tfrmpdninv_description.create(nil);
  frmpdninv_description.DBMemo1.DataSource:=datasource2;
  frmpdninv_description.DBMemo1.DataField:='REMARKS';
  frmpdninv_description.Caption:='Remark (if neccessary)';
  frmpdninv_description.Show;
end;

end.
