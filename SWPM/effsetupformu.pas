unit effsetupformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridBandedTableView,
  cxGridDBBandedTableView, StdCtrls, Buttons, DBClient, cxGridExportLink,
  cxRichEdit, cxMemo;

type
  Tfrmeffsetup = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    tbleffmaster: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    cxGrid1DBBandedTableView1FTY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WS_TYPE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TEAM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_LGEFF: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_WFEFF: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_WF_Q: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_SAH: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_WTIME: TcxGridDBBandedColumn;
    SaveDialog1: TSaveDialog;
    cxGrid1DBBandedTableView1D_WTIME1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_CULOST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_WTIME2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_NETCAP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_CAPBUFF: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_CAPBUFFP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_NETCAP_WS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D_NETCAP_WSTYPE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TIMEU: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BKU: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PCUST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1C1R: TcxGridDBBandedColumn;
    Panel2: TPanel;
    Label1: TLabel;
    query1: TClientDataSet;
    DataSource2: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Column4: TcxGridDBBandedColumn;
    Splitter1: TSplitter;
    cxGrid1DBBandedTableView1CAP_K: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FTY_SEQ: TcxGridDBBandedColumn;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbleffmasterAfterOpen(DataSet: TDataSet);
    procedure tbleffmasterfty1change(Sender: TField);
    procedure tbleffmasterwstypechange(Sender: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure tbleffmasterAfterPost(DataSet: TDataSet);
    procedure tbleffmasterd_wfqchange(Sender: TField);
    procedure tbleffmasterNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBBandedTableView1FTYCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBBandedTableView1WS_TYPECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBBandedTableView1WSCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure query1AfterPost(DataSet: TDataSet);
    procedure cxGrid2DBBandedTableView1Column1CompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure BitBtn6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeffsetup: Tfrmeffsetup;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmeffsetup.BitBtn1Click(Sender: TObject);
begin
  cxgrid1.setfocus;
  tbleffmaster.append;
end;

procedure Tfrmeffsetup.BitBtn2Click(Sender: TObject);
begin
  if application.messagebox('確定刪除此記錄?','確定',mb_iconquestion+mb_yesno)=idyes then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='delete from tbl_eff_master where seq=:x1 and ver=:x2';
      params[0].asinteger:=tbleffmaster.fieldbyname('seq').value;
      params[1].asinteger:=tbleffmaster.fieldbyname('ver').value;
      execute;
    end;
    tbleffmaster.delete;
  end;
end;

procedure Tfrmeffsetup.BitBtn3Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    if (tbleffmaster.state=dsinsert) or (tbleffmaster.state=dsedit) then tbleffmaster.post;
    if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_swpm_updeffmaster_new('''+tbleffmaster.fieldbyname('fty').value+''','+tbleffmaster.fieldbyname('ver').asstring+')';
      execute;
    end;
    with tbleffmaster do begin
      close;
      params.clear;
      commandtext:='select * from tbl_eff_master';
      open;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmeffsetup.BitBtn5Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmeffsetup.BitBtn6Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with tbleffmaster do begin
    close;
    params.clear;
    commandtext:='select * from tbl_eff_master';
    if bitbtn6.caption='摘要' then begin
      commandtext:=commandtext+' where fty_seq>=10';
      tbleffmaster.readonly:=true;
      bitbtn6.caption:='細節';
    end else begin
      commandtext:=commandtext+' where fty_seq<10';
      tbleffmaster.readonly:=false;
      bitbtn6.caption:='摘要';
    end;
    open;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmeffsetup.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  seqi:integer;
begin
  seqi:=AViewInfo.GridRecord.Values[TcxGridDBBandedTableView(Sender).GetColumnByFieldName('fty_seq').index];
  if (seqi>=10) then
  acanvas.Canvas.Brush.Color:=$00CDFCFB;
end;

procedure Tfrmeffsetup.cxGrid1DBBandedTableView1FTYCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid1DBBandedTableView1fty.Index] = ARow2.Values[cxGrid1DBBandedTableView1fty.Index] then
     AAreEqual := True
   else
     AAreEqual := False;
end;

procedure Tfrmeffsetup.cxGrid1DBBandedTableView1WSCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid1DBBandedTableView1ws.Index] = ARow2.Values[cxGrid1DBBandedTableView1ws.Index] then
     AAreEqual := True
   else
     AAreEqual := False;
end;

procedure Tfrmeffsetup.cxGrid1DBBandedTableView1WS_TYPECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid1DBBandedTableView1ws_type.Index] = ARow2.Values[cxGrid1DBBandedTableView1ws_type.Index] then
     AAreEqual := True
   else
     AAreEqual := False;
end;

procedure Tfrmeffsetup.cxGrid2DBBandedTableView1Column1CompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid2DBBandedTableView1Column1.Index] = ARow2.Values[cxGrid2DBBandedTableView1Column1.Index] then
     AAreEqual := True
   else
     AAreEqual := False;
end;

procedure Tfrmeffsetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmeffsetup:=nil;
end;

procedure Tfrmeffsetup.query1AfterPost(DataSet: TDataSet);
var
  upd:string;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_eff_master_marks where seq=:x1 and ver=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('ver').value;
    open;
    if not fieldbyname('seq').isnull then begin
      upd:='update tbl_eff_master_marks set ';
      if not query1.fieldbyname('fty').isnull then
      upd:=upd+'fty='''+query1.fieldbyname('fty').value+''','
      else upd:=upd+'fty='''',';
      if not query1.fieldbyname('ws_type').isnull then
      upd:=upd+'ws_type='''+query1.fieldbyname('ws_type').value+''','
      else upd:=upd+'ws_type='''',';
      if not query1.fieldbyname('ws').isnull then
      upd:=upd+'ws='''+query1.fieldbyname('ws').value+''','
      else upd:=upd+'ws='''',';
      if not query1.fieldbyname('marks').isnull then
      upd:=upd+'marks='''+query1.fieldbyname('marks').value+''' '
      else upd:=upd+'marks='''' ';
      upd:=upd+'where seq='+query1.fieldbyname('seq').asstring+' ';
      upd:=upd+'and ver='+query1.fieldbyname('ver').asstring;
      if frmmain.PHService.UpdateLWPM(upd)=0 then showmessage('Can not save!');
    end;
  end;
end;

procedure Tfrmeffsetup.tbleffmasterAfterOpen(DataSet: TDataSet);
begin
  (tbleffmaster.fieldbyname('d_lgeff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('d_leff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('d_wfeff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('d_wf_q') as tfloatfield).displayformat:='0.0;;''''';
  (tbleffmaster.fieldbyname('d_sah') as tfloatfield).displayformat:='0.0000;;''''';
  (tbleffmaster.fieldbyname('d_wtime') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('d_wtime1') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('d_culost') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('d_wtime2') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('d_feff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('d_grcap') as tfloatfield).displayformat:='0.0;;''''';
  (tbleffmaster.fieldbyname('d_netcap') as tfloatfield).displayformat:='0.0;;''''';
  (tbleffmaster.fieldbyname('d_netcap_ws') as tfloatfield).displayformat:='0.0;;''''';
  (tbleffmaster.fieldbyname('d_netcap_wstype') as tfloatfield).displayformat:='0.0;;''''';
  (tbleffmaster.fieldbyname('d_capbuff') as tfloatfield).displayformat:='0.0;;''''';
  (tbleffmaster.fieldbyname('d_capbuffp') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('a_lgeff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('a_leff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('a_wfeff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('a_wf_q') as tfloatfield).displayformat:='0.0;;''''';
  (tbleffmaster.fieldbyname('a_sah') as tfloatfield).displayformat:='0.0000;;''''';
  (tbleffmaster.fieldbyname('a_wtime') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('a_feff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('c_lgeff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('c_leff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('c_wfeff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('c_wf_q') as tfloatfield).displayformat:='0.0;;''''';
  (tbleffmaster.fieldbyname('c_sah') as tfloatfield).displayformat:='0.0000;;''''';
  (tbleffmaster.fieldbyname('c_wtime') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('c_feff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('p_lgeff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('p_leff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('p_wfeff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('p_wf_q') as tfloatfield).displayformat:='0.0;;''''';
  (tbleffmaster.fieldbyname('p_sah') as tfloatfield).displayformat:='0.0000;;''''';
  (tbleffmaster.fieldbyname('p_wtime') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('p_feff') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('timeu') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('c1r') as tfloatfield).displayformat:='0.00;;''''';
  (tbleffmaster.fieldbyname('cap_k') as tfloatfield).displayformat:='0.00;;''''';
  tbleffmaster.fieldbyname('fty').onchange:=tbleffmasterfty1change;
  tbleffmaster.fieldbyname('ws_type').onchange:=tbleffmasterwstypechange;
  tbleffmaster.fieldbyname('d_wf_q').onchange:=tbleffmasterd_wfqchange;
  tbleffmaster.fieldbyname('d_sah').onchange:=tbleffmasterd_wfqchange;
  tbleffmaster.fieldbyname('d_wtime1').onchange:=tbleffmasterd_wfqchange;
  //tbleffmaster.fieldbyname('d_culost').onchange:=tbleffmasterd_wfqchange;
  tbleffmaster.fieldbyname('d_lgeff').onchange:=tbleffmasterd_wfqchange;
  tbleffmaster.fieldbyname('d_wfeff').onchange:=tbleffmasterd_wfqchange;
end;

procedure Tfrmeffsetup.tbleffmasterAfterPost(DataSet: TDataSet);
var
  upd:string;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_eff_master where seq=:x1 and ver=:x2';
    params[0].asinteger:=tbleffmaster.fieldbyname('seq').value;
    params[1].asinteger:=tbleffmaster.fieldbyname('ver').value;
    open;
    if not fieldbyname('seq').isnull then begin
      upd:='update tbl_eff_master set ';
      if not tbleffmaster.fieldbyname('fty').isnull then
      upd:=upd+'fty='''+tbleffmaster.fieldbyname('fty').value+''','
      else upd:=upd+'fty='''',';
      if not tbleffmaster.fieldbyname('fty_seq').isnull then
      upd:=upd+'fty_seq='+tbleffmaster.fieldbyname('fty_seq').asstring+',';
      //else upd:=upd+'fty_seq=0,';
      if not tbleffmaster.fieldbyname('ws_type').isnull then
      upd:=upd+'ws_type='''+tbleffmaster.fieldbyname('ws_type').value+''','
      else upd:=upd+'ws_type='''',';
      if not tbleffmaster.fieldbyname('ws_type_seq').isnull then
      upd:=upd+'ws_type_seq='+tbleffmaster.fieldbyname('ws_type_seq').asstring+',';
      //else upd:=upd+'ws_type_seq=0,';
      if not tbleffmaster.fieldbyname('ws_type_q').isnull then
      upd:=upd+'ws_type_q='+tbleffmaster.fieldbyname('ws_type_q').asstring+','
      else upd:=upd+'ws_type_q=0,';
      if not tbleffmaster.fieldbyname('ws').isnull then
      upd:=upd+'ws='''+tbleffmaster.fieldbyname('ws').value+''','
      else upd:=upd+'ws='''',';
      if not tbleffmaster.fieldbyname('ws_q').isnull then
      upd:=upd+'ws_q='+tbleffmaster.fieldbyname('ws_q').asstring+','
      else upd:=upd+'ws_q=0,';
      if not tbleffmaster.fieldbyname('team_q').isnull then
      upd:=upd+'team_q='+tbleffmaster.fieldbyname('team_q').asstring+','
      else upd:=upd+'team_q=0,';
      if not tbleffmaster.fieldbyname('bku').isnull then
      upd:=upd+'bku='''+tbleffmaster.fieldbyname('bku').value+''','
      else upd:=upd+'bku='''',';
      if not tbleffmaster.fieldbyname('pcust').isnull then
      upd:=upd+'pcust='''+tbleffmaster.fieldbyname('pcust').value+''','
      else upd:=upd+'pcust='''',';
      if not tbleffmaster.fieldbyname('c1r').isnull then
      upd:=upd+'c1r='+tbleffmaster.fieldbyname('c1r').asstring+','
      else upd:=upd+'c1r=0,';
      if not tbleffmaster.fieldbyname('d_lgeff').isnull then
      upd:=upd+'d_lgeff='+tbleffmaster.fieldbyname('d_lgeff').asstring+','
      else upd:=upd+'d_lgeff=0,';
      if not tbleffmaster.fieldbyname('d_leff').isnull then
      upd:=upd+'d_leff='+tbleffmaster.fieldbyname('d_leff').asstring+','
      else upd:=upd+'d_leff=0,';
      if not tbleffmaster.fieldbyname('d_wfeff').isnull then
      upd:=upd+'d_wfeff='+tbleffmaster.fieldbyname('d_wfeff').asstring+','
      else upd:=upd+'d_wfeff=0,';
      if not tbleffmaster.fieldbyname('d_wf_q').isnull then
      upd:=upd+'d_wf_q='+tbleffmaster.fieldbyname('d_wf_q').asstring+','
      else upd:=upd+'d_wf_q=0,';
      if not tbleffmaster.fieldbyname('d_sah').isnull then
      upd:=upd+'d_sah='+tbleffmaster.fieldbyname('d_sah').asstring+','
      else upd:=upd+'d_sah=0,';
      if not tbleffmaster.fieldbyname('d_wtime').isnull then
      upd:=upd+'d_wtime='+tbleffmaster.fieldbyname('d_wtime').asstring+','
      else upd:=upd+'d_wtime=0,';
      if not tbleffmaster.fieldbyname('d_feff').isnull then
      upd:=upd+'d_feff='+tbleffmaster.fieldbyname('d_feff').asstring+','
      else upd:=upd+'d_feff=0,';
      if not tbleffmaster.fieldbyname('d_wtime1').isnull then
      upd:=upd+'d_wtime1='+tbleffmaster.fieldbyname('d_wtime1').asstring+','
      else upd:=upd+'d_wtime1=0,';
      if not tbleffmaster.fieldbyname('d_culost').isnull then
      upd:=upd+'d_culost='+tbleffmaster.fieldbyname('d_culost').asstring+','
      else upd:=upd+'d_culost=0,';
      if not tbleffmaster.fieldbyname('d_wtime2').isnull then
      upd:=upd+'d_wtime2='+tbleffmaster.fieldbyname('d_wtime2').asstring+','
      else upd:=upd+'d_wtime2=0,';
      if not tbleffmaster.fieldbyname('d_grcap').isnull then
      upd:=upd+'d_grcap='+tbleffmaster.fieldbyname('d_grcap').asstring+','
      else upd:=upd+'d_grcap=0,';
      if not tbleffmaster.fieldbyname('d_netcap').isnull then
      upd:=upd+'d_netcap='+tbleffmaster.fieldbyname('d_netcap').asstring+','
      else upd:=upd+'d_netcap=0,';
      if not tbleffmaster.fieldbyname('d_netcap_ws').isnull then
      upd:=upd+'d_netcap_ws='+tbleffmaster.fieldbyname('d_netcap_ws').asstring+','
      else upd:=upd+'d_netcap_ws=0,';
      if not tbleffmaster.fieldbyname('d_netcap_wstype').isnull then
      upd:=upd+'d_netcap_wstype='+tbleffmaster.fieldbyname('d_netcap_wstype').asstring+','
      else upd:=upd+'d_netcap_wstype=0,';
      if not tbleffmaster.fieldbyname('a_lgeff').isnull then
      upd:=upd+'a_lgeff='+tbleffmaster.fieldbyname('a_lgeff').asstring+','
      else upd:=upd+'a_lgeff=0,';
      if not tbleffmaster.fieldbyname('a_leff').isnull then
      upd:=upd+'a_leff='+tbleffmaster.fieldbyname('a_leff').asstring+','
      else upd:=upd+'a_leff=0,';
      if not tbleffmaster.fieldbyname('a_wfeff').isnull then
      upd:=upd+'a_wfeff='+tbleffmaster.fieldbyname('a_wfeff').asstring+','
      else upd:=upd+'a_wfeff=0,';
      if not tbleffmaster.fieldbyname('a_wf_q').isnull then
      upd:=upd+'a_wf_q='+tbleffmaster.fieldbyname('a_wf_q').asstring+','
      else upd:=upd+'a_wf_q=0,';
      if not tbleffmaster.fieldbyname('a_sah').isnull then
      upd:=upd+'a_sah='+tbleffmaster.fieldbyname('a_sah').asstring+','
      else upd:=upd+'a_sah=0,';
      if not tbleffmaster.fieldbyname('a_wtime').isnull then
      upd:=upd+'a_wtime='+tbleffmaster.fieldbyname('a_wtime').asstring+','
      else upd:=upd+'a_wtime=0,';
      if not tbleffmaster.fieldbyname('a_feff').isnull then
      upd:=upd+'a_feff='+tbleffmaster.fieldbyname('a_feff').asstring+','
      else upd:=upd+'a_feff=0,';
      if not tbleffmaster.fieldbyname('c_lgeff').isnull then
      upd:=upd+'c_lgeff='+tbleffmaster.fieldbyname('c_lgeff').asstring+','
      else upd:=upd+'c_lgeff=0,';
      if not tbleffmaster.fieldbyname('c_leff').isnull then
      upd:=upd+'c_leff='+tbleffmaster.fieldbyname('c_leff').asstring+','
      else upd:=upd+'c_leff=0,';
      if not tbleffmaster.fieldbyname('c_wfeff').isnull then
      upd:=upd+'c_wfeff='+tbleffmaster.fieldbyname('c_wfeff').asstring+','
      else upd:=upd+'c_wfeff=0,';
      if not tbleffmaster.fieldbyname('c_wf_q').isnull then
      upd:=upd+'c_wf_q='+tbleffmaster.fieldbyname('c_wf_q').asstring+','
      else upd:=upd+'c_wf_q=0,';
      if not tbleffmaster.fieldbyname('c_sah').isnull then
      upd:=upd+'c_sah='+tbleffmaster.fieldbyname('c_sah').asstring+','
      else upd:=upd+'c_sah=0,';
      if not tbleffmaster.fieldbyname('c_wtime').isnull then
      upd:=upd+'c_wtime='+tbleffmaster.fieldbyname('c_wtime').asstring+','
      else upd:=upd+'c_wtime=0,';
      if not tbleffmaster.fieldbyname('c_feff').isnull then
      upd:=upd+'c_feff='+tbleffmaster.fieldbyname('c_feff').asstring+','
      else upd:=upd+'c_feff=0,';
      if not tbleffmaster.fieldbyname('p_lgeff').isnull then
      upd:=upd+'p_lgeff='+tbleffmaster.fieldbyname('p_lgeff').asstring+','
      else upd:=upd+'p_lgeff=0,';
      if not tbleffmaster.fieldbyname('p_leff').isnull then
      upd:=upd+'p_leff='+tbleffmaster.fieldbyname('p_leff').asstring+','
      else upd:=upd+'p_leff=0,';
      if not tbleffmaster.fieldbyname('p_wfeff').isnull then
      upd:=upd+'p_wfeff='+tbleffmaster.fieldbyname('p_wfeff').asstring+','
      else upd:=upd+'p_wfeff=0,';
      if not tbleffmaster.fieldbyname('p_wf_q').isnull then
      upd:=upd+'p_wf_q='+tbleffmaster.fieldbyname('p_wf_q').asstring+','
      else upd:=upd+'p_wf_q=0,';
      if not tbleffmaster.fieldbyname('p_sah').isnull then
      upd:=upd+'p_sah='+tbleffmaster.fieldbyname('p_sah').asstring+','
      else upd:=upd+'p_sah=0,';
      if not tbleffmaster.fieldbyname('p_wtime').isnull then
      upd:=upd+'p_wtime='+tbleffmaster.fieldbyname('p_wtime').asstring+','
      else upd:=upd+'p_wtime=0,';
      if not tbleffmaster.fieldbyname('p_feff').isnull then
      upd:=upd+'p_feff='+tbleffmaster.fieldbyname('p_feff').asstring+','
      else upd:=upd+'p_feff=0,';
      if not tbleffmaster.fieldbyname('timeu').isnull then
      upd:=upd+'timeu='+tbleffmaster.fieldbyname('timeu').asstring+','
      else upd:=upd+'timeu=0,';
      if not tbleffmaster.fieldbyname('d_capbuff').isnull then
      upd:=upd+'d_capbuff='+tbleffmaster.fieldbyname('d_capbuff').asstring+','
      else upd:=upd+'d_capbuff=0,';
      if not tbleffmaster.fieldbyname('d_capbuffp').isnull then
      upd:=upd+'d_capbuffp='+tbleffmaster.fieldbyname('d_capbuffp').asstring+','
      else upd:=upd+'d_capbuffp=0,';
      if not tbleffmaster.fieldbyname('team').isnull then
      upd:=upd+'team='''+tbleffmaster.fieldbyname('team').value+''' '
      else upd:=upd+'team='''' ';
      upd:=upd+'where seq='+tbleffmaster.fieldbyname('seq').asstring+' ';
      upd:=upd+'and ver='+tbleffmaster.fieldbyname('ver').asstring;
      //showmessage(upd);
      if frmmain.PHService.UpdateLWPM(upd)=0 then showmessage('Can not save!');
    end else begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        params.createparam(ftinteger,'x7',ptinput);
        params.createparam(ftstring,'x8',ptinput);
        params.createparam(ftinteger,'x9',ptinput);
        params.createparam(ftfloat,'x10',ptinput);
        params.createparam(ftfloat,'x11',ptinput);
        params.createparam(ftfloat,'x12',ptinput);
        params.createparam(ftfloat,'x13',ptinput);
        params.createparam(ftfloat,'x14',ptinput);
        params.createparam(ftfloat,'x15',ptinput);
        params.createparam(ftfloat,'x16',ptinput);
        params.createparam(ftfloat,'x17',ptinput);
        params.createparam(ftfloat,'x18',ptinput);
        params.createparam(ftfloat,'x19',ptinput);
        params.createparam(ftfloat,'x20',ptinput);
        params.createparam(ftfloat,'x21',ptinput);
        params.createparam(ftfloat,'x22',ptinput);
        params.createparam(ftfloat,'x23',ptinput);
        params.createparam(ftfloat,'x24',ptinput);
        params.createparam(ftfloat,'x25',ptinput);
        params.createparam(ftfloat,'x26',ptinput);
        params.createparam(ftfloat,'x27',ptinput);
        params.createparam(ftfloat,'x28',ptinput);
        params.createparam(ftfloat,'x29',ptinput);
        params.createparam(ftfloat,'x30',ptinput);
        params.createparam(ftfloat,'x31',ptinput);
        params.createparam(ftfloat,'x32',ptinput);
        params.createparam(ftfloat,'x33',ptinput);
        params.createparam(ftfloat,'x34',ptinput);
        params.createparam(ftfloat,'x35',ptinput);
        params.createparam(ftfloat,'x36',ptinput);
        params.createparam(ftfloat,'x37',ptinput);
        params.createparam(ftfloat,'x38',ptinput);
        params.createparam(ftfloat,'x39',ptinput);
        params.createparam(ftfloat,'x40',ptinput);
        params.createparam(ftfloat,'x41',ptinput);
        params.createparam(ftfloat,'x42',ptinput);
        params.createparam(ftfloat,'x43',ptinput);
        params.createparam(ftfloat,'x44',ptinput);
        params.createparam(ftfloat,'x46',ptinput);
        params.createparam(ftfloat,'x47',ptinput);
        params.createparam(ftinteger,'x45',ptinput);
        commandtext:='insert into tbl_eff_master(fty,fty_seq,ws_type,ws_type_seq,ws_type_q,ws,ws_q,team,team_q,d_lgeff,d_leff,d_wfeff,d_wf_q,d_sah,d_wtime,d_feff,'
                    +'a_lgeff,a_leff,a_wfeff,a_wf_q,a_sah,a_wtime,a_feff,c_lgeff,c_leff,c_wfeff,c_wf_q,c_sah,c_wtime,c_feff,p_lgeff,p_leff,p_wfeff,p_wf_q,p_sah,p_wtime,p_feff,'
                    +'d_wtime1,d_culost,d_wtime2,d_grcap,d_netcap,d_capbuff,d_capbuffp,d_netcap_ws,d_netcap_wstype,seq) '
                    +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22,:x23,'
                    +':x24,:x25,:x26,:x27,:x28,:x29,:x30,:x31,:x32,:x33,:x34,:x35,:x36,:x37,:x38,:x39,:x40,:x41,:x42,:x43,:x44,:x46,:x47,:x45)';
        if not tbleffmaster.fieldbyname('fty').isnull then
        params[0].asstring:=tbleffmaster.fieldbyname('fty').value
        else params[0].asstring:='';
        if not tbleffmaster.fieldbyname('fty_seq').isnull then
        params[1].asinteger:=tbleffmaster.fieldbyname('fty_seq').value;
        //else params[1].asinteger:=0;
        if not tbleffmaster.fieldbyname('ws_type').isnull then
        params[2].asstring:=tbleffmaster.fieldbyname('ws_type').value
        else params[2].asstring:='';
        if not tbleffmaster.fieldbyname('ws_type_seq').isnull then
        params[3].asinteger:=tbleffmaster.fieldbyname('ws_type_seq').value;
        //else params[3].asinteger:=0;
        if not tbleffmaster.fieldbyname('ws_type_q').isnull then
        params[4].asinteger:=tbleffmaster.fieldbyname('ws_type_q').value
        else params[4].asinteger:=0;
        if not tbleffmaster.fieldbyname('ws').isnull then
        params[5].asstring:=tbleffmaster.fieldbyname('ws').value
        else params[5].asstring:='';
        if not tbleffmaster.fieldbyname('ws_q').isnull then
        params[6].asinteger:=tbleffmaster.fieldbyname('ws_q').value
        else params[6].asinteger:=0;
        if not tbleffmaster.fieldbyname('team').isnull then
        params[7].asstring:=tbleffmaster.fieldbyname('team').value
        else params[7].asstring:='';
        if not tbleffmaster.fieldbyname('team_q').isnull then
        params[8].asinteger:=tbleffmaster.fieldbyname('team_q').value
        else params[8].asinteger:=0;
        if not tbleffmaster.fieldbyname('d_lgeff').isnull then
        params[9].asfloat:=tbleffmaster.fieldbyname('d_lgeff').value
        else params[9].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_leff').isnull then
        params[10].asfloat:=tbleffmaster.fieldbyname('d_leff').value
        else params[10].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_wfeff').isnull then
        params[11].asfloat:=tbleffmaster.fieldbyname('d_wfeff').value
        else params[11].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_wf_q').isnull then
        params[12].asfloat:=tbleffmaster.fieldbyname('d_wf_q').value
        else params[12].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_sah').isnull then
        params[13].asfloat:=tbleffmaster.fieldbyname('d_sah').value
        else params[13].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_wtime').isnull then
        params[14].asfloat:=tbleffmaster.fieldbyname('d_wtime').value
        else params[14].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_feff').isnull then
        params[15].asfloat:=tbleffmaster.fieldbyname('d_feff').value
        else params[15].asfloat:=0;
        if not tbleffmaster.fieldbyname('a_lgeff').isnull then
        params[16].asfloat:=tbleffmaster.fieldbyname('a_lgeff').value
        else params[16].asfloat:=0;
        if not tbleffmaster.fieldbyname('a_leff').isnull then
        params[17].asfloat:=tbleffmaster.fieldbyname('a_leff').value
        else params[17].asfloat:=0;
        if not tbleffmaster.fieldbyname('a_wfeff').isnull then
        params[18].asfloat:=tbleffmaster.fieldbyname('a_wfeff').value
        else params[18].asfloat:=0;
        if not tbleffmaster.fieldbyname('a_wf_q').isnull then
        params[19].asfloat:=tbleffmaster.fieldbyname('a_wf_q').value
        else params[19].asfloat:=0;
        if not tbleffmaster.fieldbyname('a_sah').isnull then
        params[20].asfloat:=tbleffmaster.fieldbyname('a_sah').value
        else params[20].asfloat:=0;
        if not tbleffmaster.fieldbyname('a_wtime').isnull then
        params[21].asfloat:=tbleffmaster.fieldbyname('a_wtime').value
        else params[21].asfloat:=0;
        if not tbleffmaster.fieldbyname('a_feff').isnull then
        params[22].asfloat:=tbleffmaster.fieldbyname('a_feff').value
        else params[22].asfloat:=0;
        if not tbleffmaster.fieldbyname('c_lgeff').isnull then
        params[23].asfloat:=tbleffmaster.fieldbyname('c_lgeff').value
        else params[23].asfloat:=0;
        if not tbleffmaster.fieldbyname('c_leff').isnull then
        params[24].asfloat:=tbleffmaster.fieldbyname('c_leff').value
        else params[24].asfloat:=0;
        if not tbleffmaster.fieldbyname('c_wfeff').isnull then
        params[25].asfloat:=tbleffmaster.fieldbyname('c_wfeff').value
        else params[25].asfloat:=0;
        if not tbleffmaster.fieldbyname('c_wf_q').isnull then
        params[26].asfloat:=tbleffmaster.fieldbyname('c_wf_q').value
        else params[26].asfloat:=0;
        if not tbleffmaster.fieldbyname('c_sah').isnull then
        params[27].asfloat:=tbleffmaster.fieldbyname('c_sah').value
        else params[27].asfloat:=0;
        if not tbleffmaster.fieldbyname('c_wtime').isnull then
        params[28].asfloat:=tbleffmaster.fieldbyname('c_wtime').value
        else params[28].asfloat:=0;
        if not tbleffmaster.fieldbyname('c_feff').isnull then
        params[29].asfloat:=tbleffmaster.fieldbyname('c_feff').value
        else params[29].asfloat:=0;
        if not tbleffmaster.fieldbyname('p_lgeff').isnull then
        params[30].asfloat:=tbleffmaster.fieldbyname('p_lgeff').value
        else params[30].asfloat:=0;
        if not tbleffmaster.fieldbyname('p_leff').isnull then
        params[31].asfloat:=tbleffmaster.fieldbyname('p_leff').value
        else params[31].asfloat:=0;
        if not tbleffmaster.fieldbyname('p_wfeff').isnull then
        params[32].asfloat:=tbleffmaster.fieldbyname('p_wfeff').value
        else params[32].asfloat:=0;
        if not tbleffmaster.fieldbyname('p_wf_q').isnull then
        params[33].asfloat:=tbleffmaster.fieldbyname('p_wf_q').value
        else params[33].asfloat:=0;
        if not tbleffmaster.fieldbyname('p_sah').isnull then
        params[34].asfloat:=tbleffmaster.fieldbyname('p_sah').value
        else params[34].asfloat:=0;
        if not tbleffmaster.fieldbyname('p_wtime').isnull then
        params[35].asfloat:=tbleffmaster.fieldbyname('p_wtime').value
        else params[35].asfloat:=0;
        if not tbleffmaster.fieldbyname('p_feff').isnull then
        params[36].asfloat:=tbleffmaster.fieldbyname('p_feff').value
        else params[36].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_wtime1').isnull then
        params[37].asfloat:=tbleffmaster.fieldbyname('d_wtime1').value
        else params[37].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_culost').isnull then
        params[38].asfloat:=tbleffmaster.fieldbyname('d_culost').value
        else params[38].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_wtime2').isnull then
        params[39].asfloat:=tbleffmaster.fieldbyname('d_wtime2').value
        else params[39].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_grcap').isnull then
        params[40].asfloat:=tbleffmaster.fieldbyname('d_grcap').value
        else params[40].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_netcap').isnull then
        params[41].asfloat:=tbleffmaster.fieldbyname('d_netcap').value
        else params[41].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_capbuff').isnull then
        params[42].asfloat:=tbleffmaster.fieldbyname('d_capbuff').value
        else params[42].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_capbuffp').isnull then
        params[43].asfloat:=tbleffmaster.fieldbyname('d_capbuffp').value
        else params[43].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_netcap_ws').isnull then
        params[44].asfloat:=tbleffmaster.fieldbyname('d_netcap_ws').value
        else params[44].asfloat:=0;
        if not tbleffmaster.fieldbyname('d_netcap_wstype').isnull then
        params[45].asfloat:=tbleffmaster.fieldbyname('d_netcap_wstype').value
        else params[45].asfloat:=0;
        params[46].asinteger:=tbleffmaster.fieldbyname('seq').value;
        execute;
      end;
    end;
  end;
end;

procedure Tfrmeffsetup.tbleffmasterd_wfqchange(Sender: TField);
var
  wfq,sah,wtime,wtime1,lgeff,wfeff:double;
begin
  if not tbleffmaster.fieldbyname('d_wf_q').isnull then
  wfq:=tbleffmaster.fieldbyname('d_wf_q').value else wfq:=0;
  if not tbleffmaster.fieldbyname('d_sah').isnull then
  sah:=tbleffmaster.fieldbyname('d_sah').value else sah:=0;
  if not tbleffmaster.fieldbyname('d_wtime').isnull then
  wtime:=tbleffmaster.fieldbyname('d_wtime').value else wtime:=0;
  if not tbleffmaster.fieldbyname('d_wtime1').isnull then
  wtime1:=tbleffmaster.fieldbyname('d_wtime1').value else wtime1:=0;
  if not tbleffmaster.fieldbyname('d_lgeff').isnull then
  lgeff:=tbleffmaster.fieldbyname('d_lgeff').value else lgeff:=0;
  if not tbleffmaster.fieldbyname('d_wfeff').isnull then
  wfeff:=tbleffmaster.fieldbyname('d_wfeff').value else wfeff:=0;

  if wtime>0 then tbleffmaster.fieldbyname('timeu').value:=wtime1*100.00/wtime;

  if sah>0 then begin
    tbleffmaster.fieldbyname('d_grcap').value:=wfq*wtime1/sah;
    if lgeff>0 then
    tbleffmaster.fieldbyname('d_netcap').value:=wfq*wtime1/sah*lgeff/100.00
    else if wfeff>0 then
    tbleffmaster.fieldbyname('d_netcap').value:=wfq*wtime1/sah*wfeff/100.00;
  end;
end;

procedure Tfrmeffsetup.tbleffmasterfty1change(Sender: TField);
begin
  if not tbleffmaster.fieldbyname('fty').isnull then begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select fty_seq from tbl_fty_seq where fty='''+tbleffmaster.fieldbyname('fty').value+'''';
      open;
      if not fieldbyname('fty_seq').isnull then tbleffmaster.fieldbyname('fty_seq').value:=fieldbyname('fty_seq').value;
    end;
  end else tbleffmaster.fieldbyname('fty_seq').value:=null;
end;

procedure Tfrmeffsetup.tbleffmasterNewRecord(DataSet: TDataSet);
var
  ver,seq:integer;
begin
  ver:=tbleffmaster.fieldbyname('ver').value;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select max(seq) as q1 from tbl_eff_master where ver=:x1';
    params[0].asinteger:=ver;
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1
    else seq:=1;
  end;
  tbleffmaster.fieldbyname('ver').value:=ver;
  tbleffmaster.fieldbyname('seq').value:=seq;
end;

procedure Tfrmeffsetup.tbleffmasterwstypechange(Sender: TField);
begin
  if not tbleffmaster.fieldbyname('ws_type').isnull then begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select ws_type_seq from tbl_ws_type_seq where ws_type='''+tbleffmaster.fieldbyname('ws_type').value+'''';
      open;
      if not fieldbyname('ws_type_seq').isnull then tbleffmaster.fieldbyname('ws_type_seq').value:=fieldbyname('ws_type_seq').value;
    end;
  end else tbleffmaster.fieldbyname('ws_type_seq').value:=null;
end;

end.
