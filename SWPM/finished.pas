unit finished;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, Db, DBTables, Grids, DBGridEh, Buttons, Menus,
  DBClient, MConnect, SConnect, ComCtrls, ExtCtrls, DBCtrls, Spin, filectrl,
  Variants, GridsEh, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxButtonEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridStdPopupMenu,
  cxDropDownEdit, cxGridDBTableView, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TMenuStringForCxGrid = class(TObject)
  class procedure HeaderMenuProc(Sender:TObject);  
  end;  
  
type
  Tfrmfinished = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    tblshedule: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ClientDataSet4: TClientDataSet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    PopupMenu1: TPopupMenu;
    Removeshipped1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle4: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle5: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    ExpandAll1: TMenuItem;
    Closed1: TMenuItem;
    CancelSorting1: TMenuItem;
    N1: TMenuItem;
    cxStyle6: TcxStyle;
    cxGrid1: TcxGrid;
    cxView1: TcxGridDBBandedTableView;
    cxView1PLINE: TcxGridDBBandedColumn;
    cxView1FLAG1: TcxGridDBBandedColumn;
    cxView1J_NO: TcxGridDBBandedColumn;
    cxView1J2_JOB: TcxGridDBBandedColumn;
    cxView1CWO: TcxGridDBBandedColumn;
    cxView1RWO: TcxGridDBBandedColumn;
    cxView1FCCS: TcxGridDBBandedColumn;
    cxView1FLAG6: TcxGridDBBandedColumn;
    cxView1CSTYLE: TcxGridDBBandedColumn;
    cxView1JHRS: TcxGridDBBandedColumn;
    cxView1QTY: TcxGridDBBandedColumn;
    cxView1ACOL: TcxGridDBBandedColumn;
    cxView1DBZS: TcxGridDBBandedColumn;
    cxView1FLAG4: TcxGridDBBandedColumn;
    cxView1SCQTY: TcxGridDBBandedColumn;
    cxView1LSTRS: TcxGridDBBandedColumn;
    cxView1SJRS: TcxGridDBBandedColumn;
    cxView1TRS: TcxGridDBBandedColumn;
    cxView1SJYC: TcxGridDBBandedColumn;
    cxView1TBU: TcxGridDBBandedColumn;
    cxView1FLAG2: TcxGridDBBandedColumn;
    cxView1TMU: TcxGridDBBandedColumn;
    cxView1JXJS: TcxGridDBBandedColumn;
    cxView1PHISZJS: TcxGridDBBandedColumn;
    cxView1FLAG7: TcxGridDBBandedColumn;
    cxView1LFLAG: TcxGridDBBandedColumn;
    cxView1SHJS: TcxGridDBBandedColumn;
    cxView1ZJS: TcxGridDBBandedColumn;
    cxView1PLAN_DATE: TcxGridDBBandedColumn;
    cxView1CPLAN: TcxGridDBBandedColumn;
    cxView1XC4: TcxGridDBBandedColumn;
    cxView1FYFS: TcxGridDBBandedColumn;
    cxView1UNBAL: TcxGridDBBandedColumn;
    cxView1XC1: TcxGridDBBandedColumn;
    cxView1WEEK: TcxGridDBBandedColumn;
    cxView1FLAG3: TcxGridDBBandedColumn;
    cxView1CFKSRQ: TcxGridDBBandedColumn;
    cxView1CFKSJS: TcxGridDBBandedColumn;
    cxView1ZKTD: TcxGridDBBandedColumn;
    cxView1SCLHJS: TcxGridDBBandedColumn;
    cxView1QYJS: TcxGridDBBandedColumn;
    cxView1ZHJS: TcxGridDBBandedColumn;
    cxView1BCJS: TcxGridDBBandedColumn;
    cxView1DBXL: TcxGridDBBandedColumn;
    cxView1CFWCRQ: TcxGridDBBandedColumn;
    cxView1CKJS: TcxGridDBBandedColumn;
    cxView1NSHJS: TcxGridDBBandedColumn;
    cxView1KDJS: TcxGridDBBandedColumn;
    cxView1BZJS: TcxGridDBBandedColumn;
    cxView1TZLCRQ: TcxGridDBBandedColumn;
    cxView1YQLCRQ: TcxGridDBBandedColumn;
    cxView1RQXC: TcxGridDBBandedColumn;
    cxView1FLAG5: TcxGridDBBandedColumn;
    cxView1QRXC: TcxGridDBBandedColumn;
    cxView1XC2: TcxGridDBBandedColumn;
    cxView1XC3: TcxGridDBBandedColumn;
    cxView1YSJHL: TcxGridDBBandedColumn;
    cxView1JHL: TcxGridDBBandedColumn;
    cxView1YZH: TcxGridDBBandedColumn;
    cxView1PD8: TcxGridDBBandedColumn;
    cxView1DSQN: TcxGridDBBandedColumn;
    cxView1IECLS: TcxGridDBBandedColumn;
    cxView1IECLS1: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure tblsheduleAfterPost(DataSet: TDataSet);
    procedure tblsheduleReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblsheduleAfterOpen(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Removeshipped1Click(Sender: TObject);
    procedure DBGridEh1Columns40EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure cxView1ColumnHeaderClick(
      Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cxView1SCQTYPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridPopupMenu1Popup(ASenderMenu: TComponent;
      AHitTest: TcxCustomGridHitTest; X, Y: Integer;
      var AllowPopup: Boolean);
    procedure ExpandAll1Click(Sender: TObject);
    procedure Closed1Click(Sender: TObject);
    procedure CancelSorting1Click(Sender: TObject);
    procedure cxView1SCLHJSPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfinished: Tfrmfinished;
  function  PopCxGridMenuProc(ASenderMenu: TComponent):boolean;  

implementation
uses mainformu, printschedule1u, loginu, flagformu, trs_woformu,
  trsummaryformu, lwoformu, zktdformu;

{$R *.DFM}

procedure Tfrmfinished.SpeedButton1Click(Sender: TObject);
var
  cust,pline,styleno,cstyle:string;
  si:integer;
begin
  screen.cursor:=crSQLWait;
  for si:=0 to cxView1.SortedItemCount-1 do begin
    cxView1.SortedItems[si].SortOrder:=soNone;
  end;
  if tblshedule.state=dsedit then tblshedule.post;
  cust:=edit1.text;
  pline:=edit2.text;
  styleno:=edit3.text;
  cstyle:=edit4.text;
  with tblshedule do begin
    close;
    params.clear;
    commandtext:='select * from tblshedule where yzh=1';
    if pline>'' then commandtext:=commandtext+' and pline='''+pline+'''';
    if cust>'' then commandtext:=commandtext+' and j_no like '''+cust+'%''';
    if styleno>'' then commandtext:=commandtext+' and artno like '''+styleno+'%''';
    if cstyle>'' then commandtext:=commandtext+' and cstyle like '''+cstyle+'%''';
    open;
    editkey;
    indexname:='idx1';
    setkey;
    first;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmfinished.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    speedbutton1click(self);
  end;
end;

procedure Tfrmfinished.tblsheduleAfterPost(DataSet: TDataSet);
begin
  //if tblshedule.changecount>0 then tblshedule.applyupdates(0);
  if tblshedule.applyupdates(-1)>0 then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='update tblshedule set pd8=:x1 where pline=:x2 and seq=:x3';
      if not tblshedule.fieldbyname('pd8').isnull then
      params[0].asdate:=tblshedule.fieldbyname('pd8').value;
      params[1].asstring:=tblshedule.fieldbyname('pline').value;
      params[2].asinteger:=tblshedule.fieldbyname('seq').value;
      execute;
    end;
  end;
end;

procedure Tfrmfinished.tblsheduleReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  showmessage(E.Message);
end;

procedure Tfrmfinished.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmfinished:=nil;
end;

procedure Tfrmfinished.tblsheduleAfterOpen(DataSet: TDataSet);
begin
  //(tblshedule.fieldbyname('lstrs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('phiszjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('zjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('zktd') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('sclhjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('shjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('qyjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('zhjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('jxjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('sjrs') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('sjyc') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('tbu') as tfloatfield).displayformat:='#0.00';
  (tblshedule.fieldbyname('jhl') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('ckjs') as tfloatfield).DisplayFormat:='#0.0;;''';
  (tblshedule.fieldbyname('ysjhl') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('tmu') as tfloatfield).DisplayFormat:='#0.0000;;''';
  (tblshedule.fieldbyname('cfksjs') as tfloatfield).DisplayFormat:='#0.0';
end;

procedure Tfrmfinished.BitBtn4Click(Sender: TObject);
begin
  if frmtrs_wo=nil then frmtrs_wo:=tfrmtrs_wo.create(nil);
  //
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='execute procedure sp_gen_trs_wo(:x1)';
    params[0].asstring:=tblshedule.fieldbyname('j_no').value;
    execute;
  end;
  //
  with frmtrs_wo.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from trs_wo where j_no=:x1';
    params[0].asstring:=tblshedule.fieldbyname('j_no').value;
    open;
  end;
  frmtrs_wo.show;
end;

procedure Tfrmfinished.BitBtn1Click(Sender: TObject);
begin
  if tblshedule.Active then begin
    if not tblshedule.fieldbyname('pline').isnull then begin
      if frmtrsummary=nil then frmtrsummary:=tfrmtrsummary.Create(nil);
      frmtrsummary.Edit1.Text:=tblshedule.fieldbyname('j_no').value;
      frmtrsummary.Edit2.Text:=tblshedule.fieldbyname('j2_job').value;
      frmtrsummary.Edit3.Text:=tblshedule.fieldbyname('rwo').value;
      frmtrsummary.Show;
    end;
  end;
end;

procedure Tfrmfinished.FormShow(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r36 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r36').Value=true then removeshipped1.Visible:=true
    else removeshipped1.Visible:=false;
  end;
end;

procedure Tfrmfinished.Removeshipped1Click(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='update tblshedule set yzh=0 where yzh=1 and pline=:x1 and seq=:x2';
    params[0].asstring:=tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=tblshedule.fieldbyname('seq').value;
    execute;
  end;
end;

procedure Tfrmfinished.DBGridEh1Columns40EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt1:tdate;
  tm:tdatetime;
begin
  if not tblshedule.fieldbyname('flag3').isnull then begin
    if (tblshedule.fieldbyname('flag3').value>'') then begin
      tm:=now;

      if not tblshedule.fieldbyname('cfwcrq').isnull then begin
        if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
        with frmzktd.query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
          params[0].asstring:=tblshedule.fieldbyname('pline').value;
          params[1].asinteger:=tblshedule.fieldbyname('seq').value;
          open;
        end;
        frmzktd.DBText1.DataSource:=datasource1;
        frmzktd.DBText2.DataSource:=datasource1;
        frmzktd.DBText3.DataSource:=datasource1;
        frmzktd.DBText4.DataSource:=datasource1;
        frmzktd.DBText5.DataSource:=datasource1;
        frmzktd.DBText6.DataSource:=datasource1;
        frmzktd.DBText7.DataSource:=datasource1;
        frmzktd.DBText8.DataSource:=datasource1;
        frmzktd.Show;
      end;
    end;
  end;
end;

procedure Tfrmfinished.cxView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    r26:=fieldbyname('r26').value;
    r27:=fieldbyname('r27').value;
    r28:=fieldbyname('r28').value;
    r29:=fieldbyname('r29').value;
    r30:=fieldbyname('r30').value;
    r31:=fieldbyname('r31').value;
    r32:=fieldbyname('r32').value;
    r33:=fieldbyname('r33').value;
    r34:=fieldbyname('r34').value;
    r35:=fieldbyname('r35').value;
  end;
  if AColumn=cxView1.Columns[1] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='1';
    frmflag.Caption:='Flag Explanation - Project Process/工程流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if Acolumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r26 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[7] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='6';
    frmflag.Caption:='Flag explanation - Style prefix:- Product Categories / 款字首:- 產品種類';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if AColumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r27 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[12] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='9';
    frmflag.Caption:='Flag Explanation - Impact Code/衝擊顯示';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if AColumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r28 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[13] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='10';
    frmflag.Caption:='Flag Explanation - QN Transit Process/數頁交收流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if AColumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r29 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[20] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='2';
    frmflag.Caption:='Flag Explanation - SAH & BOO Process/SAH & BOO流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if AColumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r30 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[25] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='4';
    frmflag.Caption:='Flag Explanation - Default phase of line eff.(opt perf)/預設段拉效率(制作中表現)';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if AColumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r31 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[31] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='12';
    frmflag.Caption:='Flag Explanation - RWO Fty Start Date(Locked Diff Process)/輪製單廠開始日期(鎖定差距流程)';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if AColumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r35 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[35] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='3';
    frmflag.Caption:='Flag Explanation - QN/SQN Dynamic Process at workshop / 數頁/游數頁動力流程-車間';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if AColumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r32 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[24] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='14';
    frmflag.Caption:='Flag Explanation - Ref for default phase of line eff(opt perf) / 預設段拉效率參考(制作中表現)';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if AColumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r32 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[52] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='5';
    frmflag.Caption:='Flag Explanation - Locked Diff Process/鎖定差距流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if AColumn=cxView1.Columns[1] then
      params[0].asinteger:=1
      else if AColumn=cxView1.Columns[20] then params[0].asinteger:=2
      else if AColumn=cxView1.Columns[35] then params[0].asinteger:=3
      else if AColumn=cxView1.Columns[25] then params[0].AsInteger:=4
      else if AColumn=cxView1.Columns[52] then params[0].asinteger:=5
      else if AColumn=cxView1.Columns[7] then params[0].asinteger:=6
      else if AColumn=cxView1.Columns[12] then params[0].asinteger:=9
      else if AColumn=cxView1.Columns[31] then params[0].asinteger:=12
      else if AColumn=cxView1.Columns[24] then params[0].asinteger:=14
      else if AColumn=cxView1.Columns[13] then params[0].asinteger:=10
      else if AColumn=cxView1.Columns[9] then params[0].asinteger:=16;
      open;
    end;
    if r32 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1.Columns[9] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='16';
    frmflag.Caption:='Flag explanation - Style suffix:- Season# & Range Name / 款字尾:- 季節#及系列名稱';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    if r26 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=true;
    frmflag.Show;
    frmflag.ComboBox1.SetFocus;
  end else begin
  end;
  except
    abort;
  end;
end;

procedure Tfrmfinished.cxView1SCQTYPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  screen.Cursor:=crSQLWait;
  try
    if frmlwo=nil then frmlwo:=tfrmlwo.create(nil);
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_tbllwo1(:x1,:x2)';
      params[0].asstring:=tblshedule.fieldbyname('pline').value;
      params[1].asinteger:=tblshedule.fieldbyname('seq').value;
      execute;
    end;
    with frmlwo.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=tblshedule.fieldbyname('pline').value;
      params[1].asinteger:=tblshedule.fieldbyname('seq').value;
      open;
    end;
    frmlwo.dbtext1.DataSource:=DataSource1;
    frmlwo.dbtext2.DataSource:=DataSource1;
    frmlwo.dbtext3.DataSource:=DataSource1;
    frmlwo.dbtext4.DataSource:=DataSource1;
    frmlwo.dbtext5.DataSource:=DataSource1;
    frmlwo.dbtext6.DataSource:=DataSource1;
    frmlwo.dbtext7.DataSource:=DataSource1;
    frmlwo.show;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmfinished.cxGridPopupMenu1Popup(ASenderMenu: TComponent;
  AHitTest: TcxCustomGridHitTest; X, Y: Integer; var AllowPopup: Boolean);
begin
  PopCxGridMenuProc(ASenderMenu);  
end;

class procedure TMenuStringForCxGrid.HeaderMenuProc(Sender: TObject);  
var  
  HM:TcxGridStdHeaderMenu;  
begin  
  HM:=TcxGridStdHeaderMenu(Sender);  
  if HM.Items.Count<>17 then exit;  
  HM.Items[0].Caption:='&'+'遞增排序';//
  HM.Items[1].Caption:='&'+'遞減排序';//  
  HM.Items[2].Caption:='&'+'取消排序';//  
  
  HM.Items[4].Caption:='&'+'以此欄位分組';//  
  HM.Items[5].Caption:='&'+'分組視窗';//  
  HM.Items[6].Visible:=false;  
  HM.Items[7].Visible:=false;  
  HM.Items[8].Visible:=false;  
  
  HM.Items[10].Caption:='&'+'隱藏此欄位';//  
  HM.Items[11].Caption:='&'+'欄位選擇視窗';//  
  
  HM.Items[13].Visible:=false;  
  HM.Items[14].Caption:='&'+'最適欄寬';//  
  HM.Items[15].Visible:=false;  
  HM.Items[16].Caption:='&'+'最適欄寬(所有欄位)';//  
  
end;  
  
function PopCxGridMenuProc(ASenderMenu: TComponent):boolean;  
begin  
  if ASenderMenu is TcxGridStdHeaderMenu then  
    TcxGridStdHeaderMenu(ASenderMenu).OnPopup := TMenuStringForCxGrid.HeaderMenuProc;  
  result:=true;  
end;  

procedure Tfrmfinished.ExpandAll1Click(Sender: TObject);
begin
  cxView1.ViewData.Expand(True);
end;

procedure Tfrmfinished.Closed1Click(Sender: TObject);
begin
  cxView1.ViewData.Collapse(True);
end;

procedure Tfrmfinished.CancelSorting1Click(Sender: TObject);
begin
  if cxView1.SortedItemCount>0 then
    cxView1.SortedItems[0].SortOrder:=soNone;
end;

procedure Tfrmfinished.cxView1SCLHJSPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  dt1:tdate;
  tm:tdatetime;
  r12,r36:boolean;
  pstr:string;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').isnull then r12:=false else r12:=fieldbyname('r12').value;
    if fieldbyname('r36').isnull then r36:=false else r36:=fieldbyname('r36').value;
  end;
  if r36=true then begin
      tm:=now;

    if not tblshedule.fieldbyname('cfwcrq').isnull then begin
      if ((tblshedule.fieldbyname('flag3').isnull) or (tblshedule.FieldByName('flag3').value<'x')) then begin
        WITH CLIENTDATASET1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          params.createparam(ftdatetime,'x3',ptinput);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_DIVIDEDSHJS(:X1,:X2,:x3)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          params[2].asdatetime:=tm;
          EXECUTE;
        END;
        WITH CLIENTDATASET1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjs_001(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
      end;
        WITH CLIENTDATASET1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjslst(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
    end;
        if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
        with frmzktd.query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
          params[0].asstring:=tblshedule.fieldbyname('pline').value;
          params[1].asinteger:=tblshedule.fieldbyname('seq').value;
          open;
        end;
        frmzktd.DBText1.DataSource:=datasource1;
        frmzktd.DBText2.DataSource:=datasource1;
        frmzktd.DBText3.DataSource:=datasource1;
        frmzktd.DBText4.DataSource:=datasource1;
        frmzktd.DBText5.DataSource:=datasource1;
        frmzktd.DBText6.DataSource:=datasource1;
        frmzktd.DBText7.DataSource:=datasource1;
        frmzktd.DBText8.DataSource:=datasource1;
        frmzktd.Show;
    {
    pstr:='5 '+tblshedule.fieldbyname('pline').value+' '+tblshedule.fieldbyname('seq').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
  end else begin

  if not tblshedule.fieldbyname('flag3').isnull then begin
      tm:=now;

    if ((tblshedule.fieldbyname('flag3').value<'x') and (tblshedule.fieldbyname('flag3').value>'')) then begin
      if not tblshedule.fieldbyname('cfwcrq').isnull then begin
        if r12=true then begin
        WITH CLIENTDATASET1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          params.createparam(ftdatetime,'x3',ptinput);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_DIVIDEDSHJS(:X1,:X2,:x3)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          params[2].asdatetime:=tm;
          EXECUTE;
        END;
        WITH CLIENTDATASET1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjs_001(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
        WITH CLIENTDATASET1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjslst(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
        end;
      end;
    end;
        {
    pstr:='5 '+tblshedule.fieldbyname('pline').value+' '+tblshedule.fieldbyname('seq').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }

        if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
        with frmzktd.query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
          params[0].asstring:=tblshedule.fieldbyname('pline').value;
          params[1].asinteger:=tblshedule.fieldbyname('seq').value;
          open;
        end;
        frmzktd.DBText1.DataSource:=datasource1;
        frmzktd.DBText2.DataSource:=datasource1;
        frmzktd.DBText3.DataSource:=datasource1;
        frmzktd.DBText4.DataSource:=datasource1;
        frmzktd.DBText5.DataSource:=datasource1;
        frmzktd.DBText6.DataSource:=datasource1;
        frmzktd.DBText7.DataSource:=datasource1;
        frmzktd.DBText8.DataSource:=datasource1;
        frmzktd.Show;
  end;

  end;
end;

procedure Tfrmfinished.BitBtn3Click(Sender: TObject);
begin
  //
end;

end.
