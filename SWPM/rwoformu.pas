unit rwoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBClient, StdCtrls, Buttons, ExtCtrls, Grids,
  DBGridEh, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr, GridsEh,
  shellapi, ADODB, ppParameter, QExport4, QExport4XLS, ppStrtch, ppSubRpt,
  siComp, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, cxGridExportLink;

type
  TfrmRWO = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label3: TLabel;
    SpeedButton5: TSpeedButton;
    Edit3: TEdit;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    tblsop: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ClientDataSet4: TClientDataSet;
    Query1: TClientDataSet;
    PopupMenu1: TPopupMenu;
    GetTMU1: TMenuItem;
    ModifyQty1: TMenuItem;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
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
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel20: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    x002: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ttl001: TppLabel;
    ppLabel22: TppLabel;
    ppDBCalc1: TppDBCalc;
    x202: TppDBCalc;
    ttl002: TppLabel;
    ttl003: TppLabel;
    ttl004: TppLabel;
    ttl005: TppLabel;
    ttl006: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    sub001: TppLabel;
    ppLabel24: TppLabel;
    ppDBCalc3: TppDBCalc;
    x201: TppDBCalc;
    sub002: TppLabel;
    sub003: TppLabel;
    sub004: TppLabel;
    sub005: TppLabel;
    sub006: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    x001: TppDBText;
    x101: TppDBCalc;
    x102: TppDBCalc;
    ppLabel29: TppLabel;
    x003: TppLabel;
    ppShape2: TppShape;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    sl001: TppLabel;
    sl002: TppLabel;
    sl003: TppLabel;
    sl004: TppLabel;
    sl006: TppLabel;
    sl005: TppLabel;
    sl007: TppLabel;
    sl008: TppLabel;
    sl009: TppLabel;
    kb001: TppLabel;
    kb002: TppLabel;
    kb003: TppLabel;
    kb004: TppLabel;
    kb006: TppLabel;
    kb005: TppLabel;
    kb007: TppLabel;
    kb008: TppLabel;
    kb009: TppLabel;
    ppLabel33: TppLabel;
    ppDBText14: TppDBText;
    sub010: TppLabel;
    ttl010: TppLabel;
    sl010: TppLabel;
    kb010: TppLabel;
    DataSet2: TADOQuery;
    CompleteProject1: TMenuItem;
    Label4: TLabel;
    GetdatafromRWO1: TMenuItem;
    GetdatafromRWOII1: TMenuItem;
    BitBtn2: TBitBtn;
    e4xls1: TQExport4XLS;
    dlgSave1: TSaveDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    ADOQuery1: TADOQuery;
    ppLabel34: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBText17: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    BitBtn3: TBitBtn;
    GetdataforPPWS1: TMenuItem;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDBPipeline2: TppDBPipeline;
    DataSource2: TDataSource;
    Query2: TClientDataSet;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText18: TppDBText;
    rqty000: TppDBText;
    ppShape3: TppShape;
    ppDBCalc2: TppDBCalc;
    ppShape4: TppShape;
    ppLabel30: TppLabel;
    ppLine1: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    fdt001: TppDBText;
    ppLabel41: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    rqty001: TppDBText;
    rqty002: TppDBText;
    rqty003: TppDBText;
    rqty004: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppShape5: TppShape;
    ppShape6: TppShape;
    GetDatafromERP1: TMenuItem;
    siLang1: TsiLang;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxGrid1DBTableView1Column13: TcxGridDBColumn;
    cxGrid1DBTableView1Column14: TcxGridDBColumn;
    cxGrid1DBTableView1Column15: TcxGridDBColumn;
    cxGrid1DBTableView1Column16: TcxGridDBColumn;
    cxGrid1DBTableView1Column17: TcxGridDBColumn;
    cxGrid1DBTableView1Column18: TcxGridDBColumn;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    rqty005: TppDBText;
    rqty006: TppDBText;
    rqty007: TppDBText;
    ppLabel49: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel51: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    rqty008: TppDBText;
    ppLabel45: TppLabel;
    ppLabel52: TppLabel;
    ppDBText19: TppDBText;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppShape7: TppShape;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    cust001: TppLabel;
    cwo001: TppLabel;
    cfdt001: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel57: TppLabel;
    ppDBText20: TppDBText;
    fty001: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    scfdt01: TppLabel;
    scust01: TppLabel;
    scwo01: TppLabel;
    ppLabel61: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppShape8: TppShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tblsopAfterPost(DataSet: TDataSet);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CompleteProject1Click(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Label4MouseEnter(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
    procedure GetdatafromRWO1Click(Sender: TObject);
    procedure GetdatafromRWOII1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GetdataforPPWS1Click(Sender: TObject);
    procedure GetDatafromERP1Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column2HeaderClick(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
    procedure confirmselect;
  public
    { Public declarations }
  end;

var
  frmrwo: Tfrmrwo;
  logseq:integer;

implementation

uses mainformu, worksheet, flagformu, clrlegendformu;

{$R *.DFM}

procedure Tfrmrwo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmrwo:=nil;
end;

procedure Tfrmrwo.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where pline is not null';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
  edit3.Text:='';
  with query1 do begin
    close;
    params.clear;
    commandtext:='update tbl_sop set iqty=qty-rqty';
    execute;
  end;
  with tblsop do begin
    close;
    params.clear;
    params.createparam(ftstring,'flag1',ptinput);
    commandtext:='select * from tbl_sop where flag1=:flag1 and rqty>0';
    params[0].asstring:='0';
    open;
  end;
end;

procedure TfrmRWO.GetdataforPPWS1Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  if edit3.Text>'' then begin
    //1. RWO Summary
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erprwo_tmp';
      if edit3.text>'' then commandtext:=commandtext+' where j_no='''+edit3.text+'''';
      execute;
    end;
    with dataset2 do begin
      close;
      sql.clear;
      sql.add('select distinct a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,rtrim(a.rwo)+''P'' as rwo,a.factoryworkstartdate,');
      sql.add('a.lclexftyshipcompleted as lclexftydate,a.fclexftyshipcompleted as fclexftydate,a.amenddate,sum(isnull(a.sampleqty,0)) as qty ');
      sql.add('from [ph.rwo1].dbo.view_woc_rwo_ppws a ');
      sql.add('where isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null and a.worevisedate>=''2014-03-01'' ');
      if edit3.text>'' then sql.add('and a.projectno='''+edit3.text+''' ');
      sql.add('group by a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwo,a.factoryworkstartdate,');
      sql.add('a.lclexftyshipcompleted,a.fclexftyshipcompleted,a.amenddate');
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.CreateParam(ftstring,'x2',ptinput);
          params.CreateParam(ftinteger,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.CreateParam(ftstring,'x5',ptinput);
          params.CreateParam(ftinteger,'x6',ptinput);
          params.CreateParam(ftstring,'x7',ptinput);
          params.CreateParam(ftdate,'x8',ptinput);
          params.CreateParam(ftdatetime,'x9',ptinput);
          params.CreateParam(ftstring,'x10',ptinput);
          params.CreateParam(ftinteger,'x11',ptinput);
          params.CreateParam(ftstring,'x12',ptinput);
          params.CreateParam(ftdate,'x13',ptinput);
          commandtext:='insert into tbl_erprwo_tmp(sopno,ordline,j2_job,rwo,rid,j_no,fdt,exfty,acol,qty,cwo,amenddate) '
                      +'values(:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13)';
          params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('workorderno').value;
          params[3].asstring:=dataset2.fieldbyname('rwo').value;
          params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwo').value,1,pos('/',dataset2.fieldbyname('rwo').value)-1));
          params[5].asstring:=dataset2.fieldbyname('projectno').value;
          if not dataset2.fieldbyname('factoryworkstartdate').isnull then
          params[6].asdate:=dataset2.fieldbyname('factoryworkstartdate').value
          else params[6].AsDate:=encodedate(1988,8,8);
          if copy(dataset2.fieldbyname('projectno').value,1,4)='TAMA' then begin
            if not dataset2.fieldbyname('fclexftydate').isnull then
            params[7].asdatetime:=dataset2.fieldbyname('fclexftydate').value
            else params[7].asdatetime:=encodedate(1988,8,8);
          end else begin
            if not dataset2.fieldbyname('lclexftydate').isnull then
            params[7].asdatetime:=dataset2.fieldbyname('lclexftydate').value
            else params[7].asdatetime:=encodedate(1988,8,8);
          end;
          params[8].asstring:=dataset2.fieldbyname('colorcode').value;
          params[9].asinteger:=dataset2.fieldbyname('qty').value;
          params[10].asstring:=dataset2.fieldbyname('woc').value;
          params[11].asdate:=dataset2.fieldbyname('amenddate').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    //2.RWO detail
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_lw00_tmp0';
      if edit3.text>'' then commandtext:=commandtext+' where j_no='''+edit3.text+'''';
      execute;
    end;
    i:=0;
    with dataset2 do begin
      close;
      sql.clear;
      sql.add('select distinct a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,rtrim(a.rwo)+''P'' as rwo,a.factoryworkstartdate,');
      sql.add('a.lclexftydate,a.fclexftydate,a.cuporder,a.sizeorder,a.custcup,a.custsize,isnull(a.sampleqty,0) as qty,isnull(a.sampleqty,0) as sampleqty ');
      sql.add('from [ph.rwo1].dbo.view_woc_rwo_ppws a ');
      sql.add('where isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null and a.worevisedate>=''2014-03-01'' ');
      if edit3.text>'' then sql.add('and a.projectno='''+edit3.text+''' ');
      open;
      first;
      while not eof do begin
        i:=i+1;
        with clientdataset2 do begin
          close;
          params.clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.CreateParam(ftinteger,'x5',ptinput);
          params.CreateParam(ftstring,'x6',ptinput);
          params.CreateParam(ftinteger,'x7',ptinput);
          params.CreateParam(ftstring,'x8',ptinput);
          params.CreateParam(ftstring,'x9',ptinput);
          params.CreateParam(ftinteger,'x10',ptinput);
          params.CreateParam(ftstring,'x11',ptinput);
          params.CreateParam(ftinteger,'x12',ptinput);
          params.CreateParam(ftstring,'x13',ptinput);
          commandtext:='insert into tbl_lw00_tmp0(j_no,ordline,j2_job,rwo,style,acol,did,cup,siz,qty,sopno,spqty,cwo,style) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,''1'')';
          params[0].asstring:=dataset2.fieldbyname('projectno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('workorderno').value;
          params[3].asstring:=dataset2.fieldbyname('rwo').value;
          params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwo').value,1,pos('/',dataset2.fieldbyname('rwo').value)-1));
          params[5].asstring:=dataset2.fieldbyname('colorcode').value;
          params[6].asinteger:=i;
          params[7].asstring:=dataset2.fieldbyname('custcup').value;
          params[8].asstring:=dataset2.fieldbyname('custsize').value;
          params[9].asinteger:=dataset2.fieldbyname('qty').value;
          params[10].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[11].asinteger:=dataset2.fieldbyname('sampleqty').value;
          params[12].asstring:=dataset2.fieldbyname('woc').asstring;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    with clientdataset2 do begin
      close;
      params.clear;
      if edit3.text>'' then
      commandtext:='execute procedure sp_updrwo_woc_ppws('''+edit3.text+''')'
      else commandtext:='execute procedure sp_updrwo_woc_ppws('''')';
      execute;
    end;

    with clientdataset2 do begin
      close;
      params.clear;
      if edit3.text>'' then
      commandtext:='execute procedure sp_updtbl_soprqty_ppws('''+edit3.text+''')'
      else commandtext:='execute procedure SP_UPDTBL_SOPRQTY_PPWS('''')';
      execute;
    end;

    showmessage('OK!');
  end else showmessage('Pls input a project #!');
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure TfrmRWO.GetDatafromERP1Click(Sender: TObject);
var
  s1:string;
begin
  screen.cursor:=crSQLWait;
  s1:=formatdatetime('yyyy-mm-dd',date-365);
  try
    //0.1 color name
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erpcolorname';
      if edit3.text>'' then commandtext:=commandtext+' where j_no='''+edit3.text+'''';
      execute;
    end;
    with frmmain.qry_erp do begin
      close;
      sql.clear;
      sql.add('select a.tref40,a.tlin40,b.cuso40 from ault2f1.inp40 a,ault4f1.oep40 b ');
      sql.add('where a.cono40=b.cono40 and a.tref40=b.ordn40 and a.cono40=''P1'' and a.ttyp40=''O'' and a.usgc40=''E'' and a.tlno40>=3 and b.dtlc40=0');
      if edit3.text>'' then sql.add(' and b.cuso40='''+edit3.text+'''');
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          commandtext:='insert into tbl_erpcolorname(sopno,acol,cname,j_no) '
                      +'values(:x1,:x2,:x3,:x4)';
          params[0].asstring:=frmmain.qry_erp.fieldbyname('tref40').value;
          params[1].asstring:=copy(frmmain.qry_erp.fieldbyname('tlin40').value,1,3);
          params[2].asstring:=trim(copy(frmmain.qry_erp.fieldbyname('tlin40').value,pos('=',frmmain.qry_erp.fieldbyname('tlin40').value)+1,30));
          params[3].asstring:=frmmain.qry_erp.fieldbyname('cuso40').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      if edit3.text>'' then
      commandtext:='execute procedure sp_pdn_updcustcolor_jno('''+edit3.text+''')'
      else commandtext:='execute procedure sp_pdn_updcolorname('''')';
      execute;
    end;

    //0.2 style cat
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erpstylecat';
      execute;
    end;
    with frmmain.qry_erp do begin
      close;
      sql.clear;
      sql.add('select distinct tref40,tlin40,tarc35,sdiv35 from ault2f1.inp40,ault2f1.inp35 where cono40=cono35 and tref40=pnum35 and cono40=''P1'' and usgc40=''D''');
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          commandtext:='insert into tbl_erpstylecat(artno,flag6,cat,brand) '
                      +'values(:x1,:x2,:x3,:x4)';
          params[0].asstring:=frmmain.qry_erp.fieldbyname('tref40').value;
          params[1].asstring:=copy(frmmain.qry_erp.fieldbyname('tlin40').value,1,3);
          params[2].asstring:=copy(frmmain.qry_erp.fieldbyname('tarc35').value,1,10);
          params[3].asstring:=frmmain.qry_erp.fieldbyname('sdiv35').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    //0.3 unit price
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erppric';
      if edit3.text>'' then commandtext:=commandtext+' where j_no='''+edit3.text+'''';
      execute;
    end;
    with frmmain.qry_erp do begin
      close;
      sql.clear;
      sql.add('select distinct cuso40,ordl55,curn40,curt40,uprc55,uprc55*curt40 as uprc,ordn40,catn55 from ault4f1.oep40,ault4f1.oep55 ');
      sql.add('where cono40=cono55 and ordn40=ordn55 and dtlc40=dtlc55 and cono40=''P1'' and dtlc40=0 and dtco40>=1150101 and substring(cuso40,1,2)<>''NO''');
      if edit3.text>'' then sql.add(' and cuso40='''+edit3.text+'''');
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftfloat,'x3',ptinput);
          params.CreateParam(ftfloat,'x4',ptinput);
          params.CreateParam(ftstring,'x5',ptinput);
          params.CreateParam(ftfloat,'x6',ptinput);
          params.CreateParam(ftstring,'x7',ptinput);
          params.CreateParam(ftstring,'x8',ptinput);
          commandtext:='insert into tbl_erppric(j_no,ordline,uprc,uprc55,curn40,curt40,sopno,artno) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
          params[0].asstring:=frmmain.qry_erp.fieldbyname('cuso40').value;
          params[1].asinteger:=frmmain.qry_erp.fieldbyname('ordl55').value;
          params[2].asfloat:=frmmain.qry_erp.fieldbyname('uprc').value;
          params[3].asfloat:=frmmain.qry_erp.fieldbyname('uprc55').value;
          params[4].asstring:=frmmain.qry_erp.fieldbyname('curn40').value;
          params[5].asfloat:=frmmain.qry_erp.fieldbyname('curt40').value;
          params[6].asstring:=frmmain.qry_erp.fieldbyname('ordn40').value;
          params[7].asstring:=frmmain.qry_erp.fieldbyname('catn55').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_cap_updrwoupx('''+s1+''')';
      execute;
    end;

    //0.4 ERP HS Code
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erphscode';
      execute;
    end;
    with frmmain.qry_erp do begin
      close;
      sql.clear;
      sql.add('select distinct tref40,tlin40 from ault2f1.inp40 where cono40=''P1'' and usgc40=''H''');
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          commandtext:='insert into tbl_erphscode(artno,hscode) '
                      +'values(:x1,:x2)';
          params[0].asstring:=frmmain.qry_erp.fieldbyname('tref40').value;
          params[1].asstring:=frmmain.qry_erp.fieldbyname('tlin40').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='update tbl_erphscode a set hsname=(select max(hsname) from tbl_hscode b '
                  +'where a.hscode=b.hscode) where exists (select hscode from tbl_hscode b where a.hscode=b.hscode)';
      execute;
    end;

    showmessage('OK!');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmRWO.GetdatafromRWO1Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  if edit3.Text>'' then begin
    //0.1 Project
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erpsop where j_no='''+edit3.text+'''';
      execute;
    end;
    with dataset2 do begin
      close;
      sql.clear;
      sql.text:='select distinct factory,salesorderno,salesorderline,projectno,customer,styleno,colorcode,sum(isnull(bulkqty,0)+isnull(originalsampleqty,0)) as qty,deliveryshipcompleted as deliverydate,workorderno,lclexftyshipcompleted as lclexftydate,shipmode '
               +'from [ph.rwo1]..view_woc_rwo where isnull(bulkqty,0)+isnull(originalsampleqty,0)>0 and factoryworkstartdate is not null '
               +'and projectno='''+edit3.text+''' '
               +'group by factory,salesorderno,salesorderline,projectno,customer,styleno,colorcode,deliveryshipcompleted,workorderno,lclexftyshipcompleted,shipmode';
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.CreateParam(ftstring,'x5',ptinput);
          params.CreateParam(ftstring,'x6',ptinput);
          params.CreateParam(ftinteger,'x7',ptinput);
          params.CreateParam(ftstring,'x8',ptinput);
          params.CreateParam(ftdate,'x9',ptinput);
          params.CreateParam(ftstring,'x12',ptinput);
          params.CreateParam(ftdate,'x13',ptinput);
          params.CreateParam(ftstring,'x14',ptinput);
          commandtext:='insert into tbl_erpsop(sopno,ordline,j_no,customer,artno,acol,qty,tplant,ddt,flag1,stat,j2_job,exfty,shpm) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,''0'',''0'',:x12,:x13,:x14)';
          params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('projectno').value;
          params[3].asstring:=dataset2.fieldbyname('customer').value;
          params[4].asstring:=dataset2.fieldbyname('styleno').value;
          params[5].asstring:=dataset2.fieldbyname('colorcode').value;
          params[6].asinteger:=dataset2.fieldbyname('qty').value;
          params[7].asstring:=dataset2.fieldbyname('factory').value;
          if not dataset2.fieldbyname('deliverydate').isnull then
          params[8].asdate:=dataset2.fieldbyname('deliverydate').value;
          params[9].asstring:=dataset2.fieldbyname('workorderno').value;
          if not dataset2.fieldbyname('lclexftydate').isnull then
          params[10].asdate:=dataset2.fieldbyname('lclexftydate').value;
          if not dataset2.fieldbyname('shipmode').isnull then begin
            if pos('AIR',dataset2.fieldbyname('shipmode').value)>0 then
            params[11].asstring:='AIR' else params[11].asstring:='BOAT';
          end else params[11].asstring:='BOAT';
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    //0.2 WO
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erpwo where j_no='''+edit3.text+'''';
      execute;
    end;
    with dataset2 do begin
      close;
      sql.clear;
      sql.text:='select distinct salesorderno,salesorderline,projectno,colorcode,sum(isnull(bulkqty,0)+isnull(originalsampleqty,0)) as qty,deliveryshipcompleted as deliverydate,workorderno,lclexftyshipcompleted as lclexftydate,wostatus '
               +'from [ph.rwo1]..view_woc_rwo where isnull(bulkqty,0)+isnull(originalsampleqty,0)>0 and factoryworkstartdate is not null '
               +'and projectno='''+edit3.text+''' '
               +'group by salesorderno,salesorderline,projectno,colorcode,deliveryshipcompleted,workorderno,lclexftyshipcompleted,wostatus';
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x6',ptinput);
          params.CreateParam(ftinteger,'x7',ptinput);
          params.CreateParam(ftdate,'x9',ptinput);
          params.CreateParam(ftstring,'x11',ptinput);
          params.CreateParam(ftstring,'x12',ptinput);
          params.CreateParam(ftdate,'x13',ptinput);
          commandtext:='insert into tbl_erpwo(sopno,ordline,j_no,acol,qty,ddt,flag1,stat,j2_job,cdt) '
                      +'values(:x1,:x2,:x3,:x6,:x7,:x9,''0'',:x11,:x12,:x13)';
          params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('projectno').value;
          params[3].asstring:=dataset2.fieldbyname('colorcode').value;
          params[4].asinteger:=dataset2.fieldbyname('qty').value;
          if not dataset2.fieldbyname('deliverydate').isnull then
          params[5].asdate:=dataset2.fieldbyname('deliverydate').value;
          params[6].asstring:=dataset2.fieldbyname('wostatus').value;
          params[7].asstring:=dataset2.fieldbyname('workorderno').value;
          if not dataset2.fieldbyname('lclexftydate').isnull then
          params[8].asdate:=dataset2.fieldbyname('lclexftydate').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    //0.3 Cust style
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erpcstyle where j_no='''' or j_no='''+edit3.text+'''';
      execute;
    end;
    with dataset2 do begin
      close;
      sql.clear;
      sql.text:='select distinct salesorderno,salesorderline,projectno,customerstyleno '
               +'from [ph.rwo1]..view_woc_rwo where isnull(bulkqty,0)+isnull(originalsampleqty,0)>0 and factoryworkstartdate is not null '
               +'and projectno='''+edit3.text+'''';
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          commandtext:='insert into tbl_erpcstyle(sopno,ordline,j_no,cstyle) '
                      +'values(:x1,:x2,:x3,:x4)';
          params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('projectno').value;
          params[3].asstring:=dataset2.fieldbyname('customerstyleno').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    //0.4 Cust PO
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erpsopo where j_no='''+edit3.text+'''';
      execute;
    end;
    with dataset2 do begin
      close;
      sql.clear;
      sql.text:='select distinct salesorderno,salesorderline,projectno,customerpo '
               +'from [ph.rwo1]..view_woc_rwo where isnull(bulkqty,0)+isnull(originalsampleqty,0)>0 and factoryworkstartdate is not null '
               +'and projectno='''+edit3.text+'''';
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          commandtext:='insert into tbl_erpsopo(sopno,ordline,j_no,pono) '
                      +'values(:x1,:x2,:x3,:x4)';
          params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('projectno').value;
          if not dataset2.fieldbyname('customerpo').isnull then
          params[3].asstring:=dataset2.fieldbyname('customerpo').value
          else params[3].asstring:='';
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_pdn_updcustpo_jno('''+edit3.text+''')';
      execute;
    end;

    //0.5 BDC
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erpetam_bdc_new where j_no='''+edit3.text+'''';
      execute;
    end;
    with dataset2 do begin
      close;
      sql.clear;
      sql.text:='select distinct salesorderno,salesorderline,dbc,projectno,workorderno '
               +'from [ph.rwo1]..view_woc_rwo where isnull(bulkqty,0)+isnull(originalsampleqty,0)>0 and factoryworkstartdate is not null '
               +'and projectno='''+edit3.text+'''';
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.CreateParam(ftstring,'x5',ptinput);
          commandtext:='insert into tbl_erpetam_bdc_new(sopno,ordline,j_no,bdc,j2_job) '
                      +'values(:x1,:x2,:x3,:x4,:x5)';
          params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('projectno').value;
          if not dataset2.fieldbyname('dbc').isnull then begin
            if dataset2.fieldbyname('dbc').value>'' then
            params[3].asstring:=copy(dataset2.fieldbyname('dbc').value,5,40)
            else params[3].asstring:='';
          end else params[3].asstring:='';
          params[4].asstring:=dataset2.fieldbyname('workorderno').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_updetam_bdc_1';
      execute;
    end;

    //0.6 Packing Method
    {
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erppackmethod where j_no='''+edit3.text+'''';
      execute;
    end;
    with dataset2 do begin
      close;
      sql.clear;
      sql.text:='select distinct salesorderno,salesorderline,packingmethod,projectno,workorderno '
               +'from [ph.rwo1]..view_woc_rwo where isnull(bulkqty,0)+isnull(originalsampleqty,0)>0 and factoryworkstartdate is not null '
               +'and projectno='''+edit3.text+'''';
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.CreateParam(ftstring,'x5',ptinput);
          commandtext:='insert into tbl_erppackmethod(sopno,ordline,j_no,pkm,j2_job) '
                      +'values(:x1,:x2,:x3,:x4,:x5)';
          params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('projectno').value;
          if not dataset2.fieldbyname('packingmethod').isnull then begin
            params[3].asstring:=dataset2.fieldbyname('packingmethod').value
          end else params[3].asstring:='';
          params[4].asstring:=dataset2.fieldbyname('workorderno').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_upd_erppkm_jno('''+edit3.text+''')';
      execute;
    end;
    }
    //1. RWO summary
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erprwo_tmp';
      execute;
    end;
    with dataset2 do begin
      close;
      sql.clear;
      sql.add('select distinct a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwo,a.factoryworkstartdate,');
      sql.add('a.lclexftyshipcompleted as lclexftydate,a.fclexftyshipcompleted as fclexftydate,a.amenddate,a.rwocreatedate,a.headerconfirmdate,sum(isnull(a.bulkqty,0)+isnull(a.sampleqty,0)) as qty ');
      sql.add('from [ph.rwo1].dbo.view_woc_rwo a ');
      sql.add('where isnull(a.bulkqty,0)+isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null ');
      if edit3.text>'' then sql.add('and a.projectno='''+edit3.text+''' ');
      sql.add('group by a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwo,a.factoryworkstartdate,');
      sql.add('a.lclexftyshipcompleted,a.fclexftyshipcompleted,a.amenddate,a.rwocreatedate,a.headerconfirmdate');
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x2',ptinput);
          params.CreateParam(ftinteger,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.CreateParam(ftstring,'x5',ptinput);
          params.CreateParam(ftinteger,'x6',ptinput);
          params.CreateParam(ftstring,'x7',ptinput);
          params.CreateParam(ftdate,'x8',ptinput);
          params.CreateParam(ftdatetime,'x9',ptinput);
          params.CreateParam(ftstring,'x10',ptinput);
          params.CreateParam(ftinteger,'x11',ptinput);
          params.CreateParam(ftstring,'x12',ptinput);
          params.CreateParam(ftdate,'x13',ptinput);
          params.CreateParam(ftdate,'x14',ptinput);
          params.CreateParam(ftdate,'x15',ptinput);
          commandtext:='insert into tbl_erprwo_tmp(sopno,ordline,j2_job,rwo,rid,j_no,fdt,exfty,acol,qty,cwo,amenddate,crdt,appdt) '
                      +'values(:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15)';
          params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('workorderno').value;
          params[3].asstring:=dataset2.fieldbyname('rwo').value;
          params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwo').value,1,pos('/',dataset2.fieldbyname('rwo').value)-1));
          params[5].asstring:=dataset2.fieldbyname('projectno').value;
          if not dataset2.fieldbyname('factoryworkstartdate').isnull then
          params[6].asdate:=dataset2.fieldbyname('factoryworkstartdate').value;
          //else params[6].AsDate:=encodedate(1988,8,8);
          if copy(dataset2.fieldbyname('projectno').value,1,4)='TAMA' then begin
            if not dataset2.fieldbyname('fclexftydate').isnull then
            params[7].asdatetime:=dataset2.fieldbyname('fclexftydate').value;
            //else params[7].asdatetime:=encodedate(1988,8,8);
          end else begin
            if not dataset2.fieldbyname('lclexftydate').isnull then
            params[7].asdatetime:=dataset2.fieldbyname('lclexftydate').value;
            //else params[7].asdatetime:=encodedate(1988,8,8);
          end;
          params[8].asstring:=dataset2.fieldbyname('colorcode').value;
          params[9].asinteger:=dataset2.fieldbyname('qty').value;
          params[10].asstring:=dataset2.fieldbyname('woc').value;
          params[11].asdate:=dataset2.fieldbyname('amenddate').value;
          params[12].asdate:=dataset2.fieldbyname('rwocreatedate').value;
          if not dataset2.fieldbyname('headerconfirmdate').isnull then
          params[13].asdate:=dataset2.fieldbyname('headerconfirmdate').value;
          //else params[13].asdatetime:=encodedate(1988,8,8);
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    //2. RWO detail
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_lw00_tmp0';
      execute;
    end;
    i:=0;
    with dataset2 do begin
      close;
      sql.clear;
      sql.add('select distinct a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwo,a.factoryworkstartdate,');
      sql.add('a.lclexftyshipcompleted as lclexftydate,a.fclexftyshipcompleted as fclexftydate,a.cuporder,a.sizeorder,a.custcup,a.custsize,isnull(a.bulkqty,0)+isnull(a.sampleqty,0) as qty,isnull(a.sampleqty,0) as sampleqty ');
      sql.add('from [ph.rwo1].dbo.view_woc_rwo a ');
      sql.add('where isnull(a.bulkqty,0)+isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null ');
      if edit3.text>'' then sql.add('and a.projectno='''+edit3.text+''' ');
      sql.add('order by a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwo,a.cuporder,a.sizeorder');
      open;
      first;
      while not eof do begin
        i:=i+1;
        with clientdataset2 do begin
          close;
          params.clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.CreateParam(ftinteger,'x5',ptinput);
          params.CreateParam(ftstring,'x6',ptinput);
          params.CreateParam(ftinteger,'x7',ptinput);
          params.CreateParam(ftstring,'x8',ptinput);
          params.CreateParam(ftstring,'x9',ptinput);
          params.CreateParam(ftinteger,'x10',ptinput);
          params.CreateParam(ftstring,'x11',ptinput);
          params.CreateParam(ftinteger,'x12',ptinput);
          params.CreateParam(ftstring,'x13',ptinput);
          commandtext:='insert into tbl_lw00_tmp0(j_no,ordline,j2_job,rwo,style,acol,did,cup,siz,qty,sopno,spqty,cwo,style) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,''1'')';
          params[0].asstring:=dataset2.fieldbyname('projectno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('workorderno').value;
          params[3].asstring:=dataset2.fieldbyname('rwo').value;
          params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwo').value,1,pos('/',dataset2.fieldbyname('rwo').value)-1));
          params[5].asstring:=dataset2.fieldbyname('colorcode').value;
          params[6].asinteger:=i;
          params[7].asstring:=dataset2.fieldbyname('custcup').value;
          params[8].asstring:=dataset2.fieldbyname('custsize').value;
          params[9].asinteger:=dataset2.fieldbyname('qty').value;
          params[10].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[11].asinteger:=dataset2.fieldbyname('sampleqty').value;
          params[12].asstring:=dataset2.fieldbyname('woc').asstring;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    with clientdataset2 do begin
      close;
      params.clear;
      params.CreateParam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_updrwo_woc_new(:x1)';
      params[0].asstring:=edit3.text;
      execute;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      params.CreateParam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_updtbl_soprqty(:x1)';
      params[0].asstring:=edit3.text;
      execute;
    end;
    showmessage('OK!');
  end else showmessage('Pls input a project #!');
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure TfrmRWO.GetdatafromRWOII1Click(Sender: TObject);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  if edit3.Text>'' then begin
    //1. RWO II summary
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_erprwo_tmp';
      execute;
    end;
    with dataset2 do begin
      close;
      sql.clear;
      sql.add('select distinct a.factory,a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwoii,a.factoryworkstartdate,');
      sql.add('a.lclexftydate,a.fclexftydate,a.amenddate,a.rwocreatedate,a.headerconfirmdate,sum(isnull(a.bulkqty,0)+isnull(a.sampleqty,0)) as qty ');
      sql.add('from [ph.rwo1].dbo.view_woc_rwoii a ');
      sql.add('where isnull(a.bulkqty,0)+isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null ');
      if edit3.text>'' then sql.add('and a.projectno='''+edit3.text+''' ');
      sql.add('group by a.factory,a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwoii,a.factoryworkstartdate,');
      sql.add('a.lclexftydate,a.fclexftydate,a.amenddate,a.rwocreatedate,a.headerconfirmdate');
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.CreateParam(ftstring,'x2',ptinput);
          params.CreateParam(ftinteger,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.CreateParam(ftstring,'x5',ptinput);
          params.CreateParam(ftinteger,'x6',ptinput);
          params.CreateParam(ftstring,'x7',ptinput);
          params.CreateParam(ftdate,'x8',ptinput);
          params.CreateParam(ftdatetime,'x9',ptinput);
          params.CreateParam(ftstring,'x10',ptinput);
          params.CreateParam(ftinteger,'x11',ptinput);
          params.CreateParam(ftstring,'x12',ptinput);
          params.CreateParam(ftdate,'x13',ptinput);
          params.CreateParam(ftstring,'x14',ptinput);
          params.CreateParam(ftdate,'x15',ptinput);
          params.CreateParam(ftdate,'x16',ptinput);
          commandtext:='insert into tbl_erprwo_tmp(sopno,ordline,j2_job,rwo,rid,j_no,fdt,exfty,acol,qty,cwo,amenddate,tplant,crdt,appdt) '
                      +'values(:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16)';
          params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('workorderno').value;
          params[3].asstring:=dataset2.fieldbyname('rwoii').value;
          params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwoii').value,1,pos('/',dataset2.fieldbyname('rwoii').value)-1));
          params[5].asstring:=dataset2.fieldbyname('projectno').value;
          if not dataset2.fieldbyname('factoryworkstartdate').isnull then
          params[6].asdate:=dataset2.fieldbyname('factoryworkstartdate').value
          else params[6].AsDate:=encodedate(1988,8,8);
          if copy(dataset2.fieldbyname('projectno').value,1,4)='TAMA' then begin
            if not dataset2.fieldbyname('fclexftydate').isnull then
            params[7].asdatetime:=dataset2.fieldbyname('fclexftydate').value
            else params[7].asdatetime:=encodedate(1988,8,8);
          end else begin
            if not dataset2.fieldbyname('lclexftydate').isnull then
            params[7].asdatetime:=dataset2.fieldbyname('lclexftydate').value
            else params[7].asdatetime:=encodedate(1988,8,8);
          end;
          params[8].asstring:=dataset2.fieldbyname('colorcode').value;
          params[9].asinteger:=dataset2.fieldbyname('qty').value;
          params[10].asstring:=dataset2.fieldbyname('woc').value;
          params[11].asdate:=dataset2.fieldbyname('amenddate').value;
          params[12].asstring:=dataset2.fieldbyname('factory').value;
          params[13].asdate:=dataset2.fieldbyname('rwocreatedate').value;
          if not dataset2.fieldbyname('headerconfirmdate').isnull then
          params[14].asdate:=dataset2.fieldbyname('headerconfirmdate').value
          else params[14].asdatetime:=encodedate(1988,8,8);
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    //2. RWO II detail
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_lw00_tmp0';
      execute;
    end;
    i:=0;
    with dataset2 do begin
      close;
      sql.clear;
      sql.add('select distinct a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwoii,a.factoryworkstartdate,');
      sql.add('a.lclexftydate,a.fclexftydate,a.cuporder,a.sizeorder,a.custcup,a.custsize,isnull(a.bulkqty,0)+isnull(a.sampleqty,0) as qty,isnull(a.sampleqty,0) as sampleqty ');
      sql.add('from [ph.rwo1].dbo.view_woc_rwoii a ');
      sql.add('where isnull(a.bulkqty,0)+isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null ');
      if edit3.text>'' then sql.add('and a.projectno='''+edit3.text+''' ');
      sql.add('order by a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwoii,a.cuporder,a.sizeorder');
      open;
      first;
      while not eof do begin
        i:=i+1;
        with clientdataset2 do begin
          close;
          params.clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftstring,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.CreateParam(ftinteger,'x5',ptinput);
          params.CreateParam(ftstring,'x6',ptinput);
          params.CreateParam(ftinteger,'x7',ptinput);
          params.CreateParam(ftstring,'x8',ptinput);
          params.CreateParam(ftstring,'x9',ptinput);
          params.CreateParam(ftinteger,'x10',ptinput);
          params.CreateParam(ftstring,'x11',ptinput);
          params.CreateParam(ftinteger,'x12',ptinput);
          params.CreateParam(ftstring,'x13',ptinput);
          commandtext:='insert into tbl_lw00_tmp0(j_no,ordline,j2_job,rwo,style,acol,did,cup,siz,qty,sopno,spqty,cwo,style) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,''1'')';
          params[0].asstring:=dataset2.fieldbyname('projectno').value;
          params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
          params[2].asstring:=dataset2.fieldbyname('workorderno').value;
          params[3].asstring:=dataset2.fieldbyname('rwoii').value;
          params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwoii').value,1,pos('/',dataset2.fieldbyname('rwoii').value)-1));
          params[5].asstring:=dataset2.fieldbyname('colorcode').value;
          params[6].asinteger:=i;
          params[7].asstring:=dataset2.fieldbyname('custcup').value;
          params[8].asstring:=dataset2.fieldbyname('custsize').value;
          params[9].asinteger:=dataset2.fieldbyname('qty').value;
          params[10].asstring:=dataset2.fieldbyname('salesorderno').value;
          params[11].asinteger:=dataset2.fieldbyname('sampleqty').value;
          params[12].asstring:=dataset2.fieldbyname('woc').asstring;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;

    with clientdataset2 do begin
      close;
      params.clear;
      params.CreateParam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_updrwo_woc_new_fj(:x1)';
      params[0].asstring:=edit3.text;
      execute;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      params.CreateParam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_updtbl_soprqty(:x1)';
      params[0].asstring:=edit3.text;
      execute;
    end;
    showmessage('OK!');
  end else showmessage('Pls input a project #!');
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmrwo.SpeedButton1Click(Sender: TObject);
var
  seq1,trs,ksjs,wcjs,week1,xjs,scqty,sctd,var1:integer;
  jxjs,phiszjs,zktd,sclhjs,shjs:double;
  tmu,fyl,ysjhl,float1,float2,var2,var3,var4,float3,lstrs:double;
  ksrq,wcrq,tzwcrq,plan_date:tdatetime;
  calcks,calcwc,tplant,tshop:string;
  artno,customer,sopno,acol,cstyle,rwo:string;
  ordline:integer;
begin
  screen.cursor:=crhourglass;
  if tblsop.state=dsedit then tblsop.post;
  //confirmselect;
  //speedbutton5click(self);
  screen.cursor:=crdefault;
end;

procedure Tfrmrwo.tblsopAfterPost(DataSet: TDataSet);
begin
  if tblsop.ApplyUpdates(-1)>0 then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftboolean,'sel',ptinput);
      params.createparam(ftstring,'pline',ptinput);
      params.createparam(ftdate,'x0',ptinput);
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftstring,'j_no',ptinput);
      params.createparam(ftinteger,'ordline',ptinput);
      PARAMS.CREATEPARAM(FTSTRING,'J2_JOB',PTINPUT);
      params.createparam(ftstring,'acol',ptinput);
      params.createparam(ftstring,'rwo',ptinput);
      commandtext:='update tbl_sop set sel=:sel,pline=:pline,fdt=:x0,exfty=:x1 where j_no=:j_no and ordline=:ordline AND J2_JOB=:J2_JOB and acol=:acol and rwo=:rwo';
      if not tblsop.fieldbyname('sel').isnull then
      params[0].asboolean:=tblsop.fieldbyname('sel').value
      else params[0].asboolean:=false;
      if not tblsop.fieldbyname('pline').isnull then
      params[1].asstring:=tblsop.fieldbyname('pline').value
      else begin
        if tblsop.fieldbyname('sel').value=true then
        params[1].asstring:=combobox1.text
        else params[1].asstring:='';
      end;
      if not tblsop.fieldbyname('fdt').isnull then
      params[2].asdate:=tblsop.fieldbyname('fdt').value;
      if not tblsop.fieldbyname('exfty').IsNull then
      params[3].asdate:=tblsop.fieldbyname('exfty').value;
      params[4].asstring:=tblsop.fieldbyname('j_no').value;
      params[5].asinteger:=tblsop.fieldbyname('ordline').value;
      PARAMS[6].ASSTRING:=TBLSOP.FIELDBYNAME('J2_JOB').VALUE;
      params[7].asstring:=tblsop.fieldbyname('acol').value;
      params[8].asstring:=tblsop.fieldbyname('rwo').value;
      execute;
    end;
  end;
end;

procedure Tfrmrwo.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton5click(self);
end;

procedure Tfrmrwo.SpeedButton5Click(Sender: TObject);
begin
  if edit3.text>'' then begin
    with tblsop do begin
      close;
      params.clear;
      params.createparam(ftstring,'flag1',ptinput);
      params.createparam(ftstring,'sopno',ptinput);
      commandtext:='select * from tbl_sop where flag1=:flag1 and j_no like :sopno and rqty>0 and rwo not like ''%P''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
      params[0].asstring:='0';
      params[1].asstring:=edit3.text+'%';
      open;
    end;
  end else begin
    with tblsop do begin
      close;
      params.clear;
      params.createparam(ftstring,'flag1',ptinput);
      commandtext:='select * from tbl_sop where flag1=:flag1 and rqty>0 and rwo not like ''%P''';
      //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
      params[0].asstring:='0';
      open;
    end;
  END;
end;

procedure TfrmRWO.confirmselect;
var
  seq1,trs,ksjs,wcjs,week1,xjs,scqty,sctd,var1:integer;
  jxjs,phiszjs,zktd,sclhjs,shjs:double;
  tmu,fyl,ysjhl,float1,float2,var2,var3,var4,float3,lstrs:double;
  ksrq,wcrq,tzwcrq,plan_date:tdatetime;
  calcks,calcwc,tplant,tshop:string;
  artno,customer,sopno,acol,cstyle,rwo:string;
  ordline:integer;
begin
  screen.cursor:=crhourglass;
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='update tbl_sop set pline=:x1 where sel=1 and ((pline is null) or (pline=:x2))';
      params[0].asstring:=combobox1.text;
      params[1].asstring:='';
      execute;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_sop where sel=1 order by j_no,ordline,j2_job,acol';
    open;
    first;
    while not eof do begin
      if pos('-',query1.fieldbyname('artno').value)>0 then begin
        artno:=copy(query1.fieldbyname('artno').value,1,5);
        artno:=artno+copy(query1.fieldbyname('artno').value,7,1);
        artno:=artno+copy(query1.fieldbyname('artno').value,11,1);
        artno:=artno+copy(query1.fieldbyname('artno').value,17,2);
      end else begin
        artno:=query1.fieldbyname('artno').value;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        commandtext:='select lstrs from ppc_gxrs where kh='''+artno+'''';
        open;
        if not fieldbyname('lstrs').isnull then lstrs:=fieldbyname('lstrs').value
        else lstrs:=0;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select cstyle from tblcstyle where sopno=:x1 and ordline=:x2';
        params[0].asstring:=query1.fieldbyname('sopno').value;
        params[1].asinteger:=query1.fieldbyname('ordline').value;
        open;
        if not fieldbyname('cstyle').IsNull then cstyle:=fieldbyname('cstyle').value
        else cstyle:=artno;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'pline',ptinput);
        commandtext:='select max(seq) as seq1 from tblshedule where pline=:pline';
        params[0].asstring:=query1.fieldbyname('pline').value;
        open;
        if fieldbyname('seq1').isnull then seq1:=1
        else seq1:=fieldbyname('seq1').value+1;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'pline',ptinput);
        commandtext:='select workert,ysjhl,tplant,tshop from tblline where upper(pline)=:pline';
        params[0].asstring:=query1.fieldbyname('pline').value;
        open;
        fyl:=1.00;
        if not fieldbyname('ysjhl').isnull then ysjhl:=fieldbyname('ysjhl').value else ysjhl:=100;
        if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='SL';
        if not fieldbyname('tshop').isnull then tshop:=fieldbyname('tshop').value else tshop:='';
      end;
      if lstrs=0 then lstrs:=25;
      customer:=query1.fieldbyname('customer').value;
      if not query1.fieldbyname('fdt').isnull then plan_date:=query1.fieldbyname('fdt').value
      else plan_date:=encodedate(1899,12,30);
      sopno:=query1.fieldbyname('sopno').value;
      ordline:=query1.fieldbyname('ordline').value;
      acol:=query1.fieldbyname('acol').value;
      if query1.fieldbyname('tmu').value>0 then tmu:=query1.fieldbyname('tmu').value
      else begin
        with clientdataset4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'kh',ptinput);
          commandtext:='select min(zsj) as zsj1 from ie_zygx where substr(kh,1,5)=:kh and zsj>0';
          params[0].asstring:=copy(artno,1,5);//copy(query1.fieldbyname('artno').value,1,5);
          open;
        end;
        if not clientdataset4.fieldbyname('zsj1').isnull then tmu:=clientdataset4.fieldbyname('zsj1').value
        else tmu:=0;
      end;
      scqty:=query1.fieldbyname('rqty').value;
      if tmu*fyl>0.00 then begin
        float1:=0.5*lstrs/(tmu*fyl);
        xjs:=ceiling(float1);
        jxjs:=float1;
        float2:=scqty*1.00/jxjs;
        float3:=scqty*100.00/jxjs/ysjhl;
        phiszjs:=float2;
        shjs:=float3-float2;
      end else begin
        xjs:=0;
        phiszjs:=0;
        shjs:=0;
      end;
      zktd:=0;
      sctd:=0;
      sclhjs:=0;
      with clientdataset3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'pline',ptinput);
        params.createparam(ftstring,'sopno',ptinput);
        params.createparam(ftinteger,'ordline',ptinput);
        params.createparam(ftstring,'j_no',ptinput);
        params.createparam(ftstring,'j2_job',ptinput);
        params.createparam(ftstring,'artno',ptinput);
        params.createparam(ftstring,'acol',ptinput);
        params.createparam(ftinteger,'seq',ptinput);
        params.createparam(ftinteger,'scqty',ptinput);
        params.createparam(ftfloat,'tmu',ptinput);
        params.createparam(ftinteger,'xjs',ptinput);
        params.createparam(ftfloat,'phiszjs',ptinput);
        params.createparam(ftinteger,'trs',ptinput);
        params.createparam(ftfloat,'ysjhl',ptinput);
        params.createparam(ftfloat,'fyl',ptinput);
        params.createparam(ftfloat,'zktd',ptinput);
        params.createparam(ftinteger,'sctd',ptinput);
        params.createparam(ftfloat,'sclhjs',ptinput);
        params.createparam(ftinteger,'kdjs',ptinput);
        params.createparam(ftfloat,'jhl',ptinput);
        params.createparam(ftdatetime,'yqlcrq',ptinput);
        params.createparam(ftinteger,'bzjs',ptinput);
        params.createparam(ftfloat,'zhjs',ptinput);
        params.createparam(ftinteger,'bcjs',ptinput);
        params.createparam(ftfloat,'dbxl',ptinput);
        params.createparam(ftstring,'flag1',ptinput);
        params.createparam(ftstring,'flag2',ptinput);
        params.createparam(ftboolean,'yzh',ptinput);
        params.createparam(ftstring,'cstyle',ptinput);
        params.createparam(ftfloat,'shjs',ptinput);
        params.createparam(ftdate,'pd4',ptinput);
        params.createparam(ftstring,'rwo',ptinput);
        params.createparam(ftinteger,'rid',ptinput);
        params.createparam(ftdate,'plan_date',ptinput);
        params.createparam(ftfloat,'jxjs',ptinput);
        params.createparam(ftfloat,'lstrs',ptinput);
        params.createparam(ftstring,'jhrs',ptinput);
        params.createparam(ftstring,'fccs',ptinput);
        params.createparam(ftstring,'tplant',ptinput);
        params.createparam(ftstring,'tshop',ptinput);
        commandtext:='insert into tblshedule(pline,sopno,ordline,j_no,j2_job,artno,acol,'
                    +'seq,scqty,tmu,xjs,phiszjs,trs,ysjhl,fyl,zktd,sctd,sclhjs,kdjs,jhl,'
                    +'yqlcrq,bzjs,zhjs,bcjs,dbxl,flag1,flag2,yzh,xs,cstyle,shjs,pd4,rwo,'
                    +'rid,plan_date,jxjs,lstrs,jhrs,fccs,tplant,tshop) '
                    +'values(:pline,:sopno,:ordline,:j_no,:j2_job,:artno,:acol,'
                    +':seq,:scqty,:tmu,:xjs,:phiszjs,:trs,:ysjhl,:fyl,:zktd,:sctd,:sclhjs,:kdjs,:jhl,'
                    +':yqlcrq,:bzjs,:zhjs,:bcjs,:dbxl,:flag1,:flag2,:yzh,1,:cstyle,:shjs,:pd4,:rwo,'
                    +':rid,:plan_date,:jxjs,:lstrs,:jhrs,:fccs,:tplant,:tshop)';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asstring:=query1.fieldbyname('sopno').value;
        params[2].asinteger:=query1.fieldbyname('ordline').value;
        params[3].asstring:=query1.fieldbyname('j_no').value;
        if not query1.fieldbyname('j2_job').isnull then
        params[4].asstring:=query1.fieldbyname('j2_job').value;
        params[5].asstring:=artno;
        params[6].asstring:=query1.fieldbyname('acol').value;
        params[7].asinteger:=seq1;
        params[8].asinteger:=scqty;
        params[9].asfloat:=tmu;
        params[10].asinteger:=xjs;
        params[11].asfloat:=phiszjs;
        params[12].asinteger:=round(lstrs);
        params[13].asfloat:=ysjhl;
        params[14].asfloat:=fyl;
        params[15].asfloat:=zktd;
        params[16].asinteger:=sctd;
        params[17].asfloat:=sclhjs;
        params[18].asinteger:=0;
        params[19].asfloat:=ysjhl;
        params[20].asdatetime:=query1.fieldbyname('dtso1').value;
        params[21].asinteger:=12;
        params[22].asfloat:=0;
        params[23].asinteger:=0;
        params[24].asfloat:=0;
        params[25].asstring:='0';
        params[26].asstring:='2';
        params[27].asboolean:=false;
        params[28].asstring:=cstyle;
        params[29].asfloat:=shjs;
        params[30].asdate:=query1.fieldbyname('ddt').value;
        if not query1.fieldbyname('rwo').isnull then
        params[31].asstring:=query1.fieldbyname('rwo').value
        else params[31].asstring:='1/1';
        params[32].asinteger:=query1.fieldbyname('rid').value;
        if plan_date>0 then params[33].asdate:=plan_date;
        params[34].asfloat:=jxjs;
        params[35].asfloat:=lstrs;
        params[36].asstring:='';
        params[37].asstring:='';
        params[38].asstring:=tplant;
        params[39].asstring:=tshop;
        execute;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='update tbl_sop set sel=0,rqty=0,pline=:x1 where sel=1';
    params[0].asstring:='';
    execute;
  end;
end;

procedure TfrmRWO.cxGrid1DBTableView1Column2HeaderClick(Sender: TObject);
begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='1';
    frmflag.Caption:='Flag Explanation - WO Process/製單流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].asinteger:=1;
      open;
    end;
    frmflag.DBGridEh1.ReadOnly:=true;
    frmflag.DBMemo1.ReadOnly:=true;
    frmflag.BitBtn1.Enabled:=false;
    frmflag.BitBtn2.Enabled:=false;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
end;

procedure TfrmRWO.SpeedButton2Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if tblsop.Active then begin
    if not tblsop.fieldbyname('j_no').isnull then begin
    with query2 do begin
      close;
      //commandtext:='select distinct cust,yr,mn,sum(rqty) as rqty from v_rwos group by cust,yr,mn order by cust,yr,mn';
      commandtext:='select * from sp_rwos order by tplant,cust,fdt';
      open;
    end;
    ppReport1.Print;
    end else showmessage('No any outstanding record!');
  end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TfrmRWO.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmRWO.ppSummaryBand1BeforePrint(Sender: TObject);
var
  f0,f1:integer;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select count(distinct customer) as c1,count(distinct j_no) as c2,count(distinct j2_job) as c3,count(distinct cstyle) as c4,count(*) as c5 from tbl_sop where rqty>0';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
    open;
    if not fieldbyname('c1').isnull then ttl001.Caption:=fieldbyname('c1').asstring else ttl001.Caption:='0';
    if not fieldbyname('c2').isnull then begin
      ttl002.Caption:=fieldbyname('c2').asstring;
      ttl003.Caption:=fieldbyname('c2').asstring;
    end else begin
      ttl002.Caption:='0';
      ttl003.Caption:='0';
    end;
    if not fieldbyname('c3').isnull then ttl004.Caption:=fieldbyname('c3').asstring else ttl004.Caption:='0';
    if not fieldbyname('c4').isnull then ttl005.Caption:=fieldbyname('c4').asstring else ttl005.Caption:='0';
    if not fieldbyname('c5').isnull then ttl004.Caption:=fieldbyname('c5').asstring else ttl004.Caption:='0';
  end;
  f0:=0;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct j_no,j2_job,count(distinct cwo) as c5 from tbl_sop where rqty>0';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
    commandtext:=commandtext+' group by j_no,j2_job';
    open;
    first;
    while not eof do begin
     if not fieldbyname('c5').isnull then f0:=f0+fieldbyname('c5').value;
     application.ProcessMessages;
     next;
    end;
  end;
  ttl010.Caption:=inttostr(f0);
  if x102.Value>0 then x102.Font.Color:=clGreen else x102.Font.Color:=clBlack;
  if x202.Value>0 then x202.Font.Color:=clRed else x202.Font.Color:=clBlack;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct tplant,count(distinct customer) as c1,count(distinct j_no) as c2,count(distinct j2_job) as c3,'
                +'count(distinct cstyle) as c4,count(*) as c5,sum(qty) as c7,sum(iqty) as c8,sum(rqty) as c9 '
                +'from tbl_sop where rqty>0 and tplant>'''' group by tplant order by tplant';
    //if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
    open;
    first;
    while not eof do begin
      if fieldbyname('tplant').value='SL' then begin
        if not fieldbyname('c1').isnull then sl001.Caption:=fieldbyname('c1').asstring else sl001.Caption:='0';
        if not fieldbyname('c2').isnull then begin
          sl002.Caption:=fieldbyname('c2').asstring;
          sl003.Caption:=fieldbyname('c2').asstring;
        end else begin
          sl002.Caption:='0';
          sl003.Caption:='0';
        end;
        if not fieldbyname('c3').isnull then sl004.Caption:=fieldbyname('c3').asstring else sl004.Caption:='0';
        if not fieldbyname('c4').IsNull then sl005.Caption:=fieldbyname('c4').asstring else sl005.Caption:='0';
        if not fieldbyname('c5').IsNull then sl006.Caption:=fieldbyname('c5').asstring else sl006.Caption:='0';
        if not fieldbyname('c7').isnull then sl007.Caption:=fieldbyname('c7').asstring else sl007.Caption:='0';
        if not fieldbyname('c8').IsNull then sl008.Caption:=fieldbyname('c8').asstring else sl008.Caption:='0';
        if not fieldbyname('c9').IsNull then sl009.Caption:=fieldbyname('c9').asstring else sl009.Caption:='0';
      end else begin
        if not fieldbyname('c1').isnull then kb001.Caption:=fieldbyname('c1').asstring else kb001.Caption:='0';
        if not fieldbyname('c2').isnull then begin
          kb002.Caption:=fieldbyname('c2').asstring;
          kb003.Caption:=fieldbyname('c2').asstring;
        end else begin
          kb002.Caption:='0';
          kb003.Caption:='0';
        end;
        if not fieldbyname('c3').isnull then kb004.Caption:=fieldbyname('c3').asstring else kb004.Caption:='0';
        if not fieldbyname('c4').IsNull then kb005.Caption:=fieldbyname('c4').asstring else kb005.Caption:='0';
        if not fieldbyname('c5').IsNull then kb006.Caption:=fieldbyname('c5').asstring else kb006.Caption:='0';
        if not fieldbyname('c7').isnull then kb007.Caption:=fieldbyname('c7').asstring else kb007.Caption:='0';
        if not fieldbyname('c8').IsNull then kb008.Caption:=fieldbyname('c8').asstring else kb008.Caption:='0';
        if not fieldbyname('c9').IsNull then kb009.Caption:=fieldbyname('c9').asstring else kb009.Caption:='0';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  f0:=0;f1:=0;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct tplant,j_no,j2_job,count(distinct cwo) as c5 from tbl_sop where rqty>0 and tplant>'''' group by tplant,j_no,j2_job';
    //if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
    open;
    first;
    while not eof do begin
     if fieldbyname('tplant').value='SL' then begin
       if not fieldbyname('c5').isnull then f0:=f0+fieldbyname('c5').value;
     end else if fieldbyname('tplant').value='KB' then begin
       if not fieldbyname('c5').isnull then f1:=f1+fieldbyname('c5').value;
     end;
     application.ProcessMessages;
     next;
    end;
  end;
  sl010.Caption:=inttostr(f0);
  kb010.Caption:=inttostr(f1);
end;

procedure TfrmRWO.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select count(distinct customer) as c1,count(distinct fdt01) as c2,count(*) as c5 from tbl_sop where rqty>0 ';//and tplant='''+tblsop.fieldbyname('tplant').value+'''';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
    open;
    if not fieldbyname('c1').isnull then cust001.Caption:=fieldbyname('c1').asstring else cust001.Caption:='0';
    if not fieldbyname('c2').isnull then cfdt001.Caption:=FieldByName('c2').AsString else cfdt001.Caption:='0';
    if not fieldbyname('c5').isnull then cwo001.Caption:=fieldbyname('c5').asstring else cwo001.Caption:='0';
  end;
end;

procedure TfrmRWO.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  f0:integer;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select count(distinct customer) as c1,count(distinct j_no) as c2,count(distinct j2_job) as c3,count(distinct cstyle) as c4,count(*) as c5 from tbl_sop where rqty>0 and tplant='''+tblsop.fieldbyname('tplant').value+'''';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
    open;
    if not fieldbyname('c1').isnull then sub001.Caption:=fieldbyname('c1').asstring else sub001.Caption:='0';
    if not fieldbyname('c2').isnull then begin
      sub002.Caption:=fieldbyname('c2').asstring;
      sub003.Caption:=fieldbyname('c2').asstring;
    end else begin
      sub002.Caption:='0';
      sub003.Caption:='0';
    end;
    if not fieldbyname('c3').isnull then sub004.Caption:=fieldbyname('c3').asstring else sub004.Caption:='0';
    if not fieldbyname('c4').isnull then sub005.Caption:=fieldbyname('c4').asstring else sub005.Caption:='0';
    if not fieldbyname('c5').isnull then sub004.Caption:=fieldbyname('c5').asstring else sub004.Caption:='0';
  end;
  f0:=0;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct j_no,j2_job,count(distinct cwo) as c5 from tbl_sop where rqty>0 and tplant='''+tblsop.fieldbyname('tplant').value+'''';// group by j_no,j2_job';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
    commandtext:=commandtext+' group by j_no,j2_job';
    open;
    first;
    while not eof do begin
     if not fieldbyname('c5').isnull then f0:=f0+fieldbyname('c5').value;
     application.ProcessMessages;
     next;
    end;
  end;
  sub010.Caption:=inttostr(f0);
  if x101.Value>0 then x101.Font.Color:=clGreen else x101.Font.Color:=clBlack;
  if x201.Value>0 then x201.Font.Color:=clRed else x201.Font.Color:=clBlack;
end;

procedure TfrmRWO.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select count(distinct customer) as c1,count(distinct fdt01) as c2,count(*) as c5 from tbl_sop where rqty>0 and tplant='''+query2.fieldbyname('tplant').value+'''';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
    open;
    if not fieldbyname('c1').isnull then scust01.Caption:=fieldbyname('c1').asstring else scust01.Caption:='0';
    if not fieldbyname('c2').isnull then scfdt01.Caption:=FieldByName('c2').AsString else scfdt01.Caption:='0';
    if not fieldbyname('c5').isnull then scwo01.Caption:=fieldbyname('c5').asstring else scwo01.Caption:='0';
  end;
end;

procedure TfrmRWO.DBGridEh1Columns8EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  str1:string;
begin
  str1:='P1 '+tblsop.fieldbyname('j_no').value+' '+tblsop.fieldbyname('ordline').asstring+' '+tblsop.fieldbyname('rwo').value;
  str1:=str1+' '+frmmain.tcpchannel.Host;
  //str1:=str1+' 10.2.1.7';
  shellexecute(0,'open','c:\temp\rwoprint.exe',pchar(str1),'c:\temp',sw_show);
  //winexec(pchar(str1),sw_show);
end;

procedure TfrmRWO.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if tblsop.fieldbyname('iqty').value>0 then x001.Font.Color:=clGreen
  else x001.Font.color:=clBlack;
  if tblsop.fieldbyname('rqty').value>0 then x002.Font.Color:=clRed
  else x002.Font.color:=clBlack;
  x003.Caption:=inttostr(trunc(tblsop.fieldbyname('ddt').value)-trunc(tblsop.fieldbyname('exfty').value));
  if tblsop.fieldbyname('exfty').value<tblsop.fieldbyname('ddt').value then x003.Font.Color:=clGreen
  else if tblsop.fieldbyname('exfty').value>tblsop.fieldbyname('ddt').value then x003.Font.Color:=clRed
  else x003.Font.Color:=clBlack;
end;

procedure TfrmRWO.ppDetailBand2BeforePrint(Sender: TObject);
var
  fdt1,fdt2:string;
begin
  fdt1:=formatdatetime('YYYY-MM',date);
  fdt2:=formatdatetime('YYYY-MM',date+28);
  if (fdt2=fdt1) then fdt2:=formatdatetime('YYYY-MM',date+31);
  if query2.fieldbyname('fdt').value<=fdt2 then begin
    fdt001.font.color:=clRed;
    rqty000.font.color:=clRed;
    rqty001.font.color:=clRed;
    rqty002.font.color:=clRed;
    rqty003.font.color:=clRed;
    rqty004.font.color:=clRed;
    rqty005.font.color:=clRed;
    rqty006.font.color:=clRed;
    rqty007.font.color:=clRed;
    rqty008.font.color:=clRed;
    //if query2.fieldbyname('rqty1').value>0 then rqty001.font.color:=clRed
    //else rqty001.font.color:=clBlack;
  end else begin
    fdt001.font.color:=clBlack;
    rqty000.font.color:=clBlack;
    rqty001.font.color:=clBlack;
    rqty002.font.color:=clBlack;
    rqty003.font.color:=clBlack;
    rqty004.font.color:=clBlack;
    rqty005.font.color:=clBlack;
    rqty006.font.color:=clBlack;
    rqty007.font.color:=clBlack;
    rqty008.font.color:=clBlack;
  end;
end;

procedure TfrmRWO.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure TfrmRWO.FormDestroy(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and dseq=:x3';
          params[0].AsDateTime:=now;
          params[1].asinteger:=frmmain.spinedit1.Value;
          params[2].asinteger:=logseq;
          execute;
        end;
end;

procedure TfrmRWO.BitBtn1Click(Sender: TObject);
begin
  {
  if edit3.text>'' then begin
    with ClientDataSet1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'flag1',ptinput);
      params.createparam(ftstring,'sopno',ptinput);
      commandtext:='select Customer,stat as "Project process",j_no as "Proj#",cwono1 as "Cop WO#",'
                  +'flag6 as "Prdt Category",cstyle as "Cust Style#",artno as "ERP Style#",acol as "ERP Clr Code",qty as "CWO Qty",'
                  +'iqty as "Sch. Qty",rqty as "Rest Qty",ddt as "Delivery dd",fdt as "FW Start dd",exfty as "Ex-fty dd",tplant as Fty '
                  +'from tbl_sop where flag1=:flag1 and j_no like :sopno and rqty>0 and rwo not like ''%P''';
      //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
      params[0].asstring:='0';
      params[1].asstring:=edit3.text+'%';
      open;
    end;
  end else begin
    with ClientDataSet1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'flag1',ptinput);
      commandtext:='select Customer,stat as "Project process",j_no as "Proj#",cwono1 as "Cop WO#",'
                  +'flag6 as "Prdt Category",cstyle as "Cust Style#",artno as "ERP Style#",acol as "ERP Clr Code",qty as "CWO Qty",'
                  +'iqty as "Sch. Qty",rqty as "Rest Qty",ddt as "Delivery dd",fdt as "FW Start dd",exfty as "Ex-fty dd",tplant as Fty '
                  +'from tbl_sop where flag1=:flag1 and rqty>0 and rwo not like ''%P''';
      //if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      if combobox2.text>'' then begin
        if combobox2.text<>'ALL' then
        commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
      end;
      params[0].asstring:='0';
      open;
    end;
  END;
  if not ClientDataSet1.fieldbyname('sopno').isnull then begin
    if dlgSave1.Execute then e4xls1.FileName:=dlgsave1.FileName;
    e4xls1.Execute;
  end;
  }
  //
  if dlgSave1.Execute then begin
    ExportGridToExcel(dlgSave1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmRWO.BitBtn2Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select c.sopno as "SO #",c.j_no as "Project #",c.ordline as "SO Line",a.j2_job as "WO #",c.ddt as "Delivery Date",a.acol as "Color Code",sum(a.qty) as Qty '
                  +'from tbl_erpwo a,tbl_erpsop c '
                  +'where a.sopno=c.sopno and a.ordline=c.ordline and a.acol=c.acol '
                  +'and not exists (select j2_job from tbl_cap_erprwo b '
                  +'where a.j2_job=b.j2_job) '
                  +'and a.ddt>=''2014-06-01'' and c.j_no not like ''ESSE%'' and c.j_no not like ''SPLE%'' and a.stat<>''8'' '
                  +'group by c.sopno,c.j_no,c.ordline,a.j2_job,c.ddt,a.acol order by ddt,j_no,j2_job';
      open;
    end;
    if not ClientDataSet1.fieldbyname('qty').isnull then begin
      if dlgSave1.Execute then e4xls1.FileName:=dlgsave1.FileName;
      e4xls1.Execute;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmRWO.CompleteProject1Click(Sender: TObject);
begin
  if application.MessageBox('Remove this project?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='insert into tbl_erpcmpsop(j_no) values(:x1)';
      params[0].asstring:=tblsop.fieldbyname('j_no').value;
      execute;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='update tbl_sop set rqty=0 where j_no=:x1 and rqty>0';
      params[0].asstring:=tblsop.fieldbyname('j_no').value;
      execute;
    end;
  end;
end;

procedure TfrmRWO.DBGridEh1TitleClick(Column: TColumnEh);
begin
  if column=dbgrideh1.Columns[5] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='1';
    frmflag.Caption:='Flag Explanation - Project Process/工程流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].asinteger:=1;
      open;
    end;
    frmflag.DBGridEh1.ReadOnly:=true;
    frmflag.DBMemo1.ReadOnly:=true;
    frmflag.BitBtn1.Enabled:=false;
    frmflag.BitBtn2.Enabled:=false;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if column=dbgrideh1.columns[16] then begin
    tblsop.EditKey;
    tblsop.IndexName:='idx2';
    tblsop.SetKey;
    tblsop.First;
  end else begin
    tblsop.EditKey;
    tblsop.IndexName:='idx1';
    tblsop.SetKey;
    tblsop.First;
  end;
end;

procedure TfrmRWO.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  diff:double;  
begin
  if not tblsop.fieldbyname('sopno').isnull then begin
    if tblsop.state=dsbrowse then begin
      if not tblsop.fieldbyname('ddt').isnull then begin
        diff:=trunc(tblsop.fieldbyname('ddt').value)-trunc(date);
        if (tblsop.FieldByName('cwo').value>'') or (diff<30) then AFont.Color:=clRed
        else if (diff>=30) and (diff<60) then AFont.Color:=clPurple
        else if (diff>=60) and (diff<90) then AFont.Color:=clGreen
        else AFont.Color:=clBlack;
      end else showmessage('No outstanding records!');
    end;
  end;
end;

procedure TfrmRWO.Label4MouseEnter(Sender: TObject);
begin
  if frmclrlegend=nil then frmclrlegend:=tfrmclrlegend.create(nil);
  frmclrlegend.Left:=self.Label4.Left-100;
  frmclrlegend.Top:=self.DBGridEh1.Height-100;
  frmclrlegend.show;
end;

procedure TfrmRWO.Label4MouseLeave(Sender: TObject);
begin
  //if frmclrlegend<>nil then frmclrlegend:=nil;
  frmclrlegend.Close;
end;

procedure TfrmRWO.N1Click(Sender: TObject);
var
  i:integer;
  prjno:string;
begin
  screen.Cursor:=crSQLWait;
  try
  //if edit3.Text>'' then begin
  with adoquery1 do begin
    close;
    sql.clear;
    sql.text:='select distinct projectno from [ph.rwo1]..view_woc_rwo where amenddate>=:x1 and amenddate<=:x2';
    parameters[0].value:=date-2;
    parameters[1].value:=date;
    open;
    first;
    while not eof do begin    
      //1. RWO summary
      prjno:=fieldbyname('projectno').value;
      with clientdataset2 do begin
        close;
        params.clear;
        commandtext:='delete from tbl_erprwo_tmp';
        execute;
      end;
      with dataset2 do begin
        close;
        sql.clear;
        sql.add('select distinct a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwo,a.factoryworkstartdate,');
        sql.add('a.lclexftyshipcompleted as lclexftydate,a.fclexftyshipcompleted as fclexftydate,a.amenddate,a.rwocreatedate,a.headerconfirmdate,sum(isnull(a.bulkqty,0)+isnull(a.sampleqty,0)) as qty ');
        sql.add('from [ph.rwo1].dbo.view_woc_rwo a ');
        sql.add('where isnull(a.bulkqty,0)+isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null ');
        sql.add('and a.projectno='''+prjno+''' ');
        sql.add('group by a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwo,a.factoryworkstartdate,');
        sql.add('a.lclexftyshipcompleted,a.fclexftyshipcompleted,a.amenddate,a.rwocreatedate,a.headerconfirmdate');
        open;
        first;
        while not eof do begin
          with clientdataset2 do begin
            close;
            params.Clear;
            params.CreateParam(ftstring,'x2',ptinput);
            params.CreateParam(ftinteger,'x3',ptinput);
            params.CreateParam(ftstring,'x4',ptinput);
            params.CreateParam(ftstring,'x5',ptinput);
            params.CreateParam(ftinteger,'x6',ptinput);
            params.CreateParam(ftstring,'x7',ptinput);
            params.CreateParam(ftdate,'x8',ptinput);
            params.CreateParam(ftdatetime,'x9',ptinput);
            params.CreateParam(ftstring,'x10',ptinput);
            params.CreateParam(ftinteger,'x11',ptinput);
            params.CreateParam(ftstring,'x12',ptinput);
            params.CreateParam(ftdate,'x13',ptinput);
            params.CreateParam(ftdate,'x14',ptinput);
            params.CreateParam(ftdate,'x15',ptinput);
            commandtext:='insert into tbl_erprwo_tmp(sopno,ordline,j2_job,rwo,rid,j_no,fdt,exfty,acol,qty,cwo,amenddate,crdt,appdt) '
                        +'values(:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15)';
            params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
            params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
            params[2].asstring:=dataset2.fieldbyname('workorderno').value;
            params[3].asstring:=dataset2.fieldbyname('rwo').value;
            params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwo').value,1,pos('/',dataset2.fieldbyname('rwo').value)-1));
            params[5].asstring:=dataset2.fieldbyname('projectno').value;
            if not dataset2.fieldbyname('factoryworkstartdate').isnull then
            params[6].asdate:=dataset2.fieldbyname('factoryworkstartdate').value
            else params[6].AsDate:=encodedate(1988,8,8);
            if copy(dataset2.fieldbyname('projectno').value,1,4)='TAMA' then begin
              if not dataset2.fieldbyname('fclexftydate').isnull then
              params[7].asdatetime:=dataset2.fieldbyname('fclexftydate').value
              else params[7].asdatetime:=encodedate(1988,8,8);
            end else begin
              if not dataset2.fieldbyname('lclexftydate').isnull then
              params[7].asdatetime:=dataset2.fieldbyname('lclexftydate').value
              else params[7].asdatetime:=encodedate(1988,8,8);
            end;
            params[8].asstring:=dataset2.fieldbyname('colorcode').value;
            params[9].asinteger:=dataset2.fieldbyname('qty').value;
            params[10].asstring:=dataset2.fieldbyname('woc').value;
            params[11].asdate:=dataset2.fieldbyname('amenddate').value;
            params[12].asdate:=dataset2.fieldbyname('rwocreatedate').value;
            if not dataset2.fieldbyname('headerconfirmdate').isnull then
            params[13].asdate:=dataset2.fieldbyname('headerconfirmdate').value
            else params[13].asdatetime:=encodedate(1988,8,8);
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;

      //2. RWO detail
      with clientdataset2 do begin
        close;
        params.clear;
        commandtext:='delete from tbl_lw00_tmp0';
        execute;
      end;
      i:=0;
      with dataset2 do begin
        close;
        sql.clear;
        sql.add('select distinct a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwo,a.factoryworkstartdate,');
        sql.add('a.lclexftyshipcompleted as lclexftydate,a.fclexftyshipcompleted as fclexftydate,a.cuporder,a.sizeorder,a.custcup,a.custsize,isnull(a.bulkqty,0)+isnull(a.sampleqty,0) as qty,isnull(a.sampleqty,0) as sampleqty ');
        sql.add('from [ph.rwo1].dbo.view_woc_rwo a ');
        sql.add('where isnull(a.bulkqty,0)+isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null ');
        sql.add('and a.projectno='''+prjno+''' ');
        sql.add('order by a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwo,a.cuporder,a.sizeorder');
        open;
        first;
        while not eof do begin
          i:=i+1;
          with clientdataset2 do begin
            close;
            params.clear;
            params.CreateParam(ftstring,'x1',ptinput);
            params.CreateParam(ftinteger,'x2',ptinput);
            params.CreateParam(ftstring,'x3',ptinput);
            params.CreateParam(ftstring,'x4',ptinput);
            params.CreateParam(ftinteger,'x5',ptinput);
            params.CreateParam(ftstring,'x6',ptinput);
            params.CreateParam(ftinteger,'x7',ptinput);
            params.CreateParam(ftstring,'x8',ptinput);
            params.CreateParam(ftstring,'x9',ptinput);
            params.CreateParam(ftinteger,'x10',ptinput);
            params.CreateParam(ftstring,'x11',ptinput);
            params.CreateParam(ftinteger,'x12',ptinput);
            params.CreateParam(ftstring,'x13',ptinput);
            commandtext:='insert into tbl_lw00_tmp0(j_no,ordline,j2_job,rwo,style,acol,did,cup,siz,qty,sopno,spqty,cwo,style) '
                        +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,''1'')';
            params[0].asstring:=dataset2.fieldbyname('projectno').value;
            params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
            params[2].asstring:=dataset2.fieldbyname('workorderno').value;
            params[3].asstring:=dataset2.fieldbyname('rwo').value;
            params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwo').value,1,pos('/',dataset2.fieldbyname('rwo').value)-1));
            params[5].asstring:=dataset2.fieldbyname('colorcode').value;
            params[6].asinteger:=i;
            params[7].asstring:=dataset2.fieldbyname('custcup').value;
            params[8].asstring:=dataset2.fieldbyname('custsize').value;
            params[9].asinteger:=dataset2.fieldbyname('qty').value;
            params[10].asstring:=dataset2.fieldbyname('salesorderno').value;
            params[11].asinteger:=dataset2.fieldbyname('sampleqty').value;
            params[12].asstring:=dataset2.fieldbyname('woc').asstring;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;

      with clientdataset2 do begin
        close;
        params.clear;
        params.CreateParam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updrwo_woc_new(:x1)';
        params[0].asstring:=prjno;
        execute;
      end;
      with clientdataset2 do begin
        close;
        params.clear;
        params.CreateParam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updtbl_soprqty(:x1)';
        params[0].asstring:=prjno;
        execute;
      end;
      application.processmessages;
      next;
    end;
  end;
  finally
    showmessage('OK!');
    screen.Cursor:=crDefault;
  end;
end;

procedure TfrmRWO.N2Click(Sender: TObject);
var
  i:integer;
  prjno:string;
begin
  screen.Cursor:=crSQLWait;
  try
  with adoquery1 do begin
    close;
    sql.clear;
    sql.text:='select distinct projectno from [ph.rwo1]..view_woc_rwoii where amenddate>=:x1 and amenddate<=:x2';
    parameters[0].value:=date-2;
    parameters[1].value:=date;
    open;
    first;
    while not eof do begin
      //1. RWO II summary
      with clientdataset2 do begin
        close;
        params.clear;
        commandtext:='delete from tbl_erprwo_tmp';
        execute;
      end;
      with dataset2 do begin
        close;
        sql.clear;
        sql.add('select distinct a.factory,a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwoii,a.factoryworkstartdate,');
        sql.add('a.lclexftydate,a.fclexftydate,a.amenddate,a.rwocreatedate,a.headerconfirmdate,sum(isnull(a.bulkqty,0)+isnull(a.sampleqty,0)) as qty ');
        sql.add('from [ph.rwo1].dbo.view_woc_rwoii a ');
        sql.add('where isnull(a.bulkqty,0)+isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null ');
        sql.add('and a.projectno='''+prjno+''' ');
        sql.add('group by a.factory,a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwoii,a.factoryworkstartdate,');
        sql.add('a.lclexftydate,a.fclexftydate,a.amenddate,a.rwocreatedate,a.headerconfirmdate');
        open;
        first;
        while not eof do begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.CreateParam(ftstring,'x2',ptinput);
            params.CreateParam(ftinteger,'x3',ptinput);
            params.CreateParam(ftstring,'x4',ptinput);
            params.CreateParam(ftstring,'x5',ptinput);
            params.CreateParam(ftinteger,'x6',ptinput);
            params.CreateParam(ftstring,'x7',ptinput);
            params.CreateParam(ftdate,'x8',ptinput);
            params.CreateParam(ftdatetime,'x9',ptinput);
            params.CreateParam(ftstring,'x10',ptinput);
            params.CreateParam(ftinteger,'x11',ptinput);
            params.CreateParam(ftstring,'x12',ptinput);
            params.CreateParam(ftdate,'x13',ptinput);
            params.CreateParam(ftstring,'x14',ptinput);
            params.CreateParam(ftdate,'x15',ptinput);
            params.CreateParam(ftdate,'x16',ptinput);
            commandtext:='insert into tbl_erprwo_tmp(sopno,ordline,j2_job,rwo,rid,j_no,fdt,exfty,acol,qty,cwo,amenddate,tplant,crdt,appdt) '
                        +'values(:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16)';
            params[0].asstring:=dataset2.fieldbyname('salesorderno').value;
            params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
            params[2].asstring:=dataset2.fieldbyname('workorderno').value;
            params[3].asstring:=dataset2.fieldbyname('rwoii').value;
            params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwoii').value,1,pos('/',dataset2.fieldbyname('rwoii').value)-1));
            params[5].asstring:=dataset2.fieldbyname('projectno').value;
            if not dataset2.fieldbyname('factoryworkstartdate').isnull then
            params[6].asdate:=dataset2.fieldbyname('factoryworkstartdate').value
            else params[6].AsDate:=encodedate(1988,8,8);
            if copy(dataset2.fieldbyname('projectno').value,1,4)='TAMA' then begin
              if not dataset2.fieldbyname('fclexftydate').isnull then
              params[7].asdatetime:=dataset2.fieldbyname('fclexftydate').value
              else params[7].asdatetime:=encodedate(1988,8,8);
            end else begin
              if not dataset2.fieldbyname('lclexftydate').isnull then
              params[7].asdatetime:=dataset2.fieldbyname('lclexftydate').value
              else params[7].asdatetime:=encodedate(1988,8,8);
            end;
            params[8].asstring:=dataset2.fieldbyname('colorcode').value;
            params[9].asinteger:=dataset2.fieldbyname('qty').value;
            params[10].asstring:=dataset2.fieldbyname('woc').value;
            params[11].asdate:=dataset2.fieldbyname('amenddate').value;
            params[12].asstring:=dataset2.fieldbyname('factory').value;
            params[13].asdate:=dataset2.fieldbyname('rwocreatedate').value;
            if not dataset2.fieldbyname('headerconfirmdate').isnull then
            params[14].asdate:=dataset2.fieldbyname('headerconfirmdate').value
            else params[14].asdatetime:=encodedate(1988,8,8);
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;

      //2. RWO II detail
      with clientdataset2 do begin
        close;
        params.clear;
        commandtext:='delete from tbl_lw00_tmp0';
        execute;
      end;
      i:=0;
      with dataset2 do begin
        close;
        sql.clear;
        sql.add('select distinct a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwoii,a.factoryworkstartdate,');
        sql.add('a.lclexftydate,a.fclexftydate,a.cuporder,a.sizeorder,a.custcup,a.custsize,isnull(a.bulkqty,0)+isnull(a.sampleqty,0) as qty,isnull(a.sampleqty,0) as sampleqty ');
        sql.add('from [ph.rwo1].dbo.view_woc_rwoii a ');
        sql.add('where isnull(a.bulkqty,0)+isnull(a.sampleqty,0)>0 and a.factoryworkstartdate is not null ');
        sql.add('and a.projectno='''+prjno+''' ');
        sql.add('order by a.salesorderno,a.salesorderline,a.projectno,a.workorderno,a.colorcode,a.woc,a.rwoii,a.cuporder,a.sizeorder');
        open;
        first;
        while not eof do begin
          i:=i+1;
          with clientdataset2 do begin
            close;
            params.clear;
            params.CreateParam(ftstring,'x1',ptinput);
            params.CreateParam(ftinteger,'x2',ptinput);
            params.CreateParam(ftstring,'x3',ptinput);
            params.CreateParam(ftstring,'x4',ptinput);
            params.CreateParam(ftinteger,'x5',ptinput);
            params.CreateParam(ftstring,'x6',ptinput);
            params.CreateParam(ftinteger,'x7',ptinput);
            params.CreateParam(ftstring,'x8',ptinput);
            params.CreateParam(ftstring,'x9',ptinput);
            params.CreateParam(ftinteger,'x10',ptinput);
            params.CreateParam(ftstring,'x11',ptinput);
            params.CreateParam(ftinteger,'x12',ptinput);
            params.CreateParam(ftstring,'x13',ptinput);
            commandtext:='insert into tbl_lw00_tmp0(j_no,ordline,j2_job,rwo,style,acol,did,cup,siz,qty,sopno,spqty,cwo,style) '
                        +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,''1'')';
            params[0].asstring:=dataset2.fieldbyname('projectno').value;
            params[1].asinteger:=dataset2.fieldbyname('salesorderline').value;
            params[2].asstring:=dataset2.fieldbyname('workorderno').value;
            params[3].asstring:=dataset2.fieldbyname('rwoii').value;
            params[4].asinteger:=strtoint(copy(dataset2.fieldbyname('rwoii').value,1,pos('/',dataset2.fieldbyname('rwoii').value)-1));
            params[5].asstring:=dataset2.fieldbyname('colorcode').value;
            params[6].asinteger:=i;
            params[7].asstring:=dataset2.fieldbyname('custcup').value;
            params[8].asstring:=dataset2.fieldbyname('custsize').value;
            params[9].asinteger:=dataset2.fieldbyname('qty').value;
            params[10].asstring:=dataset2.fieldbyname('salesorderno').value;
            params[11].asinteger:=dataset2.fieldbyname('sampleqty').value;
            params[12].asstring:=dataset2.fieldbyname('woc').asstring;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;

      with clientdataset2 do begin
        close;
        params.clear;
        params.CreateParam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updrwo_woc_new_fj(:x1)';
        params[0].asstring:=prjno;
        execute;
      end;
      with clientdataset2 do begin
        close;
        params.clear;
        params.CreateParam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updtbl_soprqty(:x1)';
        params[0].asstring:=prjno;
        execute;
      end;
      application.processmessages;
      next;
    end;
  end;
  finally
    showmessage('OK!');
    screen.Cursor:=crDefault;
  end;
end;

end.
