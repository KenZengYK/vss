unit rwotransformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, Mask, rxToolEdit,
  DBCtrls, ExtCtrls, DB, DBClient, Grids;

type
  Tfrmrwotrans = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Label5: TLabel;
    DBText5: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
    procedure sp_rtrs2(const ttype:string);
  public
    { Public declarations }
  end;

var
  frmrwotrans: Tfrmrwotrans;

implementation

uses mainformu, worksheet, pdnformu, trans_rwoformu;

{$R *.dfm}

procedure Tfrmrwotrans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmrwotrans:=nil;
end;

procedure Tfrmrwotrans.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmtrans_rwo=nil then frmtrans_rwo:=tfrmtrans_rwo.Create(nil);
  frmtrans_rwo.Caption:='cPacked Qty - by RWO';
    frmtrans_rwo.dbtext1.DataSource:=frmrwotrans.dbtext1.DataSource;
    frmtrans_rwo.dbtext2.DataSource:=frmrwotrans.dbtext2.DataSource;
    frmtrans_rwo.dbtext3.DataSource:=frmrwotrans.dbtext3.DataSource;
    frmtrans_rwo.dbtext4.DataSource:=frmrwotrans.dbtext4.DataSource;
    frmtrans_rwo.dbtext5.DataSource:=frmrwotrans.dbtext5.DataSource;
    frmtrans_rwo.ltype.Caption:='1';
    sp_rtrs2('1');
    frmtrans_rwo.dbgrideh1.columns[7].title.caption:='cPacked Ttl Qty';
    frmtrans_rwo.DBGridEh1.Columns[6].Visible:=false;
    frmtrans_rwo.dbgrideh1.columns[8].title.caption:='cPacked Qty';
  frmtrans_rwo.show;
end;

procedure Tfrmrwotrans.DBGridEh1Columns8EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmtrans_rwo=nil then frmtrans_rwo:=tfrmtrans_rwo.Create(nil);
  frmtrans_rwo.Caption:='Ex-fty Qty - by RWO';
    frmtrans_rwo.dbtext1.DataSource:=frmrwotrans.dbtext1.DataSource;
    frmtrans_rwo.dbtext2.DataSource:=frmrwotrans.dbtext2.DataSource;
    frmtrans_rwo.dbtext3.DataSource:=frmrwotrans.dbtext3.DataSource;
    frmtrans_rwo.dbtext4.DataSource:=frmrwotrans.dbtext4.DataSource;
    frmtrans_rwo.dbtext5.DataSource:=frmrwotrans.dbtext5.DataSource;
    frmtrans_rwo.ltype.Caption:='2';
    sp_rtrs2('2');
    frmtrans_rwo.DBGridEh1.Columns[6].Visible:=true;
    frmtrans_rwo.dbgrideh1.columns[6].title.caption:='T3 Qty';
    frmtrans_rwo.dbgrideh1.columns[7].title.caption:='Ex-fty Ttl Qty';
    frmtrans_rwo.dbgrideh1.columns[8].title.caption:='Ex-fty Qty';
  frmtrans_rwo.show;
end;

procedure Tfrmrwotrans.DBGridEh1Columns9EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmtrans_rwo=nil then frmtrans_rwo:=tfrmtrans_rwo.Create(nil);
  frmtrans_rwo.Caption:='Invoiced Qty - by RWO';
    frmtrans_rwo.dbtext1.DataSource:=frmrwotrans.dbtext1.DataSource;
    frmtrans_rwo.dbtext2.DataSource:=frmrwotrans.dbtext2.DataSource;
    frmtrans_rwo.dbtext3.DataSource:=frmrwotrans.dbtext3.DataSource;
    frmtrans_rwo.dbtext4.DataSource:=frmrwotrans.dbtext4.DataSource;
    frmtrans_rwo.dbtext5.DataSource:=frmrwotrans.dbtext5.DataSource;
    frmtrans_rwo.ltype.Caption:='3';
    sp_rtrs2('3');
    frmtrans_rwo.DBGridEh1.Columns[6].Visible:=true;
    frmtrans_rwo.dbgrideh1.columns[6].title.caption:='Ex-fty Qty';
    frmtrans_rwo.dbgrideh1.columns[7].title.caption:='Invoiced Ttl Qty';
    frmtrans_rwo.dbgrideh1.columns[8].title.caption:='Invoiced Qty';
  frmtrans_rwo.show;
end;

procedure Tfrmrwotrans.DBGridEh1Columns7EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmtrans_rwo=nil then frmtrans_rwo:=tfrmtrans_rwo.Create(nil);
  frmtrans_rwo.Caption:='T3 Qty - by RWO';
    frmtrans_rwo.dbtext1.DataSource:=frmrwotrans.dbtext1.DataSource;
    frmtrans_rwo.dbtext2.DataSource:=frmrwotrans.dbtext2.DataSource;
    frmtrans_rwo.dbtext3.DataSource:=frmrwotrans.dbtext3.DataSource;
    frmtrans_rwo.dbtext4.DataSource:=frmrwotrans.dbtext4.DataSource;
    frmtrans_rwo.dbtext5.DataSource:=frmrwotrans.dbtext5.DataSource;
    frmtrans_rwo.ltype.Caption:='1';
    sp_rtrs2('1');
    frmtrans_rwo.DBGridEh1.Columns[6].Visible:=true;
    frmtrans_rwo.dbgrideh1.columns[6].title.caption:='cPacked Qty';
    frmtrans_rwo.dbgrideh1.columns[7].title.caption:='T3 Ttl Qty';
    frmtrans_rwo.dbgrideh1.columns[8].title.caption:='T3 Qty';
  frmtrans_rwo.show;
end;

procedure Tfrmrwotrans.sp_rtrs2(const ttype:string);
var
  dt,etm:tdatetime;
  epdn,bcn:string;
  pstr:string;
begin
   with query2 do begin
     close;
     params.clear;
     params.createparam(ftstring,'x1',ptinput);
     params.createparam(ftstring,'x2',ptinput);
     params.createparam(ftstring,'x3',ptinput);
     params.createparam(ftstring,'x4',ptinput);
     params.createparam(ftstring,'x5',ptinput);
     commandtext:='execute procedure sp_rtrs2(:x1,:x2,:x3,:x4,:x5)';
     params[0].asstring:=query1.fieldbyname('tplant').value;
     params[1].asstring:=query1.fieldbyname('j_no').value;
     params[2].asstring:=query1.fieldbyname('j2_job').value;
     params[3].asstring:=query1.fieldbyname('rwo').value;
     params[4].asstring:=ttype;
     execute;
   end;
   {
    pstr:='13 B '+query1.fieldbyname('tplant').value+' '+query1.fieldbyname('j_no').value+' '+query1.fieldbyname('j2_job').value+' '+query1.fieldbyname('rwo').value+' '+ttype;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
   with frmtrans_rwo.query1 do begin
     close;
     params.clear;
     params.createparam(ftstring,'x1',ptinput);
     params.createparam(ftstring,'x2',ptinput);
     params.createparam(ftstring,'x3',ptinput);
     params.createparam(ftstring,'x4',ptinput);
     params.createparam(ftstring,'x5',ptinput);
     commandtext:='select * from tbl_rtrs2 where tplant=:x1 and j_no=:x2 and j2_job=:x3 and rwo=:x4 and ttype=:x5';
     params[0].asstring:=query1.fieldbyname('tplant').value;
     params[1].asstring:=query1.fieldbyname('j_no').value;
     params[2].asstring:=query1.fieldbyname('j2_job').value;
     params[3].asstring:=query1.fieldbyname('rwo').value;
     params[4].asstring:=ttype;
     open;
   end;
  with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt1) as dt,max(pdn1) as epdn,max(bcn1) as bcn,max(tm1) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=ttype;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    if not fieldbyname('epdn').isnull then epdn:=fieldbyname('epdn').value;
    if not fieldbyname('bcn').isnull then bcn:=fieldbyname('bcn').value;
    if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
  end;
      if frmtrans_rwo=nil then frmtrans_rwo:=tfrmtrans_rwo.create(nil);
      frmtrans_rwo.DBGridEh1.Columns[8].Field:=frmtrans_rwo.query1.fieldbyname('q1');
      if dt>0 then
      frmtrans_rwo.dateedit1.date:=dt;
      frmtrans_rwo.Edit1.Text:=epdn;
      frmtrans_rwo.Edit2.text:=bcn;
      frmtrans_rwo.timeedit1.Time:=etm;
      frmtrans_rwo.lblcs.Caption:='The first time';
      frmtrans_rwo.BitBtn1.Enabled:=false;
end;

end.
 