﻿unit shpadvice1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBTables, DBClient,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppVar, QExport4, QExport4XLS,
  ppStrtch, ppMemo, shellapi, ppParameter, Mask, rxToolEdit, rxCurrEdit, ADODB,
  ppSubRpt, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxGridExportLink, Menus;

type
  Tfrmshpadvice1 = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label2: TLabel;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ud01: TppDBText;
    ud02: TppDBText;
    ud03: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    uh01: TppLabel;
    uh03: TppLabel;
    uh04: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel32: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel12: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    BitBtn4: TBitBtn;
    ppLabel26: TppLabel;
    shpno001: TppLabel;
    ppLabel27: TppLabel;
    exfty001: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel28: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ut01: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel29: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ut02: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppShape2: TppShape;
    BitBtn5: TBitBtn;
    SaveDialog1: TSaveDialog;
    ppLine1: TppLine;
    ppLine2: TppLine;
    BitBtn6: TBitBtn;
    CheckBox1: TCheckBox;
    x1: TppLabel;
    x3: TppDBText;
    x2: TppLabel;
    ppLabel33: TppLabel;
    ppMemo1: TppMemo;
    Label3: TLabel;
    Memo1: TMemo;
    DataSource2: TDataSource;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ppLabel34: TppLabel;
    signature001: TppLabel;
    Query6: TClientDataSet;
    ppImage1: TppImage;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppDBText19: TppDBText;
    ppLabel36: TppLabel;
    fty001: TppLabel;
    xls1: TQExport4XLS;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText20: TppDBText;
    CheckBox2: TCheckBox;
    ppLabel40: TppLabel;
    uh02: TppLabel;
    exrate001: TppLabel;
    Label4: TLabel;
    cEdit1: TCurrencyEdit;
    BitBtn9: TBitBtn;
    CheckBox3: TCheckBox;
    ADOQuery3: TADOQuery;
    BitBtn10: TBitBtn;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel13: TppLabel;
    ppShape3: TppShape;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel60: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    shpno002: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    fty002: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    ppLabel77: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppParameterList2: TppParameterList;
    ppLabel20: TppLabel;
    ppDBText14: TppDBText;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText21: TppDBText;
    ppLabel48: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLabel49: TppLabel;
    ppDBText23: TppDBText;
    ppLabel50: TppLabel;
    query7: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLabel52: TppLabel;
    ppLabel57: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel51: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText34: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppShape6: TppShape;
    ppLabel65: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppShape5: TppShape;
    ppSummaryBand3: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText38: TppDBText;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLabel82: TppLabel;
    exfty002: TppLabel;
    ppDBText41: TppDBText;
    ppLabel83: TppLabel;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDBText42: TppDBText;
    ppLabel86: TppLabel;
    ppDBText43: TppDBText;
    ppLabel87: TppLabel;
    ppDBText44: TppDBText;
    ppDBCalc21: TppDBCalc;
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel88: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    ppShape7: TppShape;
    ppDBText45: TppDBText;
    ppDBPipeline3: TppDBPipeline;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppDBText55: TppDBText;
    ppLabel101: TppLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    BitBtn11: TBitBtn;
    cxGrid1DBTableView1shpno: TcxGridDBColumn;
    cxGrid1DBTableView1exfty: TcxGridDBColumn;
    cxGrid1DBTableView1shr: TcxGridDBColumn;
    cxGrid1DBTableView1con_seq: TcxGridDBColumn;
    cxGrid1DBTableView1hsname: TcxGridDBColumn;
    cxGrid1DBTableView1remarks: TcxGridDBColumn;
    cxGrid1DBTableView1c_name: TcxGridDBColumn;
    cxGrid1DBTableView1sqty: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1wght: TcxGridDBColumn;
    cxGrid1DBTableView1curr: TcxGridDBColumn;
    cxGrid1DBTableView1unitpx: TcxGridDBColumn;
    cxGrid1DBTableView1ttlpx: TcxGridDBColumn;
    cxGrid1DBTableView1box: TcxGridDBColumn;
    cxGrid1DBTableView1mz: TcxGridDBColumn;
    cxGrid1DBTableView1contractno: TcxGridDBColumn;
    cxGrid1DBTableView1wght1: TcxGridDBColumn;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    Label5: TLabel;
    Edit2: TEdit;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBMemo1: TppDBMemo;
    pm1: TPopupMenu;
    SplitQtyWeight1: TMenuItem;
    ppLabel115: TppLabel;
    ppDBMemo2: TppDBMemo;
    qry7: TADOQuery;
    Label6: TLabel;
    Edit3: TEdit;
    plt001: TppLabel;
    ppLabel117: TppLabel;
    plt002: TppLabel;
    ppLabel118: TppLabel;
    ppLabel116: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel123: TppLabel;
    ppDBText60: TppDBText;
    ppLabel124: TppLabel;
    ppDBText61: TppDBText;
    ppLabel125: TppLabel;
    ppDBText62: TppDBText;
    ppDBCalc30: TppDBCalc;
    ppLabel127: TppLabel;
    qry8: TADOQuery;
    DataSource5: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppHeaderBand6: TppHeaderBand;
    ppFooterBand4: TppFooterBand;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLine7: TppLine;
    ppLine8: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Edit1Change(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure queryuprcchange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updcontractno(const fty,shpno:string);
  end;

var
  frmshpadvice1: Tfrmshpadvice1;
  strupd:string;

implementation

uses mainformu, shpadviceformu, shpadvice2formu, pdninvoiceformu, pdninvoice_lardformu;

{$R *.dfm}

procedure Tfrmshpadvice1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmshpadvice1:=nil;
end;

procedure Tfrmshpadvice1.FormShow(Sender: TObject);
var
  fty,shpno:string;
begin
  //fty:=frmshpadvice2.query1.fieldbyname('tplant').value;
  //shpno:=frmshpadvice2.query1.fieldbyname('shpno').value;
  //updcontractno(fty,shpno);
  if not query1.fieldbyname('exrate').isnull then cedit1.value:=query1.fieldbyname('exrate').value;
end;

procedure Tfrmshpadvice1.BitBtn10Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  bitbtn1click(self);
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_shpadvice2_clr(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('shpno').value;
      execute;
    end;
    with query5 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_shpadvice2_tmp where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+''' '
                  +'order by tplant,shpno,sseq';
      open;
    end;
    }

    with adoquery3 do begin
      close;
      sql.text:='select cust,pcent from phdb..tbl_export_percent_new where efft=1';
      open;
      while not eof do begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'x1',ptinput);
          commandtext:='update tbl_pdn_shpadvice2 set bg_pcert=:x1 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+''' and substr(j_no,1,4)='''+adoquery3.fieldbyname('cust').value+'''';
          params[0].asfloat:=adoquery3.fieldbyname('pcent').value;
          execute;
        end;
        next;
      end;
    end;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_updshpadvice_ttlpx_new(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('shpno').value;
      execute;
    end;

    {
    with query7 do begin
      close;
      params.clear;
      //commandtext:='select distinct contractno,pdn,voyn,con_seq,hsname,wunit,avg(unitpx) as unitpx,sum(ttlpx) as ttlpx,sum(bg_qty) as sqty,sum(bg_wt) as wght,sum(box) as box,sum(cbm) as cbm from tbl_pdn_shpadvice2 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+''' '
      commandtext:='select distinct contractno,pdn,voyn,con_seq,hsname,wunit,bg_ys,avg(bg_upx) as unitpx,sum(bg_ttlpx) as ttlpx,sum(bg_qty1) as sqty,sum(bg_wt1) as wght,sum(box) as box,sum(cbm) as cbm from tbl_pdn_shpadvice2 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+''' '
                  +'group by contractno,pdn,voyn,con_seq,hsname,wunit,bg_ys order by contractno,pdn,voyn,con_seq,bg_ys';
      open;
    end;
    }
    with qry7 do begin
      close;
      sql.text:='exec phdb..sp_preshpadvice_ys :x1,:x2';
      parameters[0].value:=query1.fieldbyname('tplant').value;
      parameters[1].value:=query1.fieldbyname('shpno').value;
      open;
    end;
    with qry8 do begin
      close;
      sql.text:='exec phdb..sp_preshpadvice_ys_sum :x1,:x2';
      parameters[0].value:=query1.fieldbyname('tplant').value;
      parameters[1].value:=query1.fieldbyname('shpno').value;
      open;
    end;

    ppdbpipeline1.DataSource:=datasource1;
      with query2 do begin
        close;
        params.clear;
        commandtext:='select exfty,car_text from tbl_pdn_shpadvice1 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
        open;
        if not fieldbyname('exfty').isnull then exfty002.Caption:=formatdatetime('yyyy/MM/dd',fieldbyname('exfty').value)
        else exfty002.Caption:='';
        if not fieldbyname('car_text').isnull then plt002.caption:=fieldbyname('car_text').value
        else plt002.caption:='';
      end;
    with adoquery1 do begin
      close;
      sql.text:='exec phdb..sp_preshpadvice :x1,:x2';
      parameters[0].value:=query1.fieldbyname('tplant').value;
      parameters[1].value:=query1.fieldbyname('shpno').value;
      open;
    end;
    shpno002.caption:=query1.fieldbyname('shpno').value;
    fty002.caption:=query1.fieldbyname('tplant').value;
    ppReport2.print;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmshpadvice1.BitBtn11Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with adoquery1 do begin
      close;
      sql.text:='exec phdb..sp_preshpadvice :x1,:x2';
      parameters[0].value:=query1.fieldbyname('tplant').value;
      parameters[1].value:=query1.fieldbyname('shpno').value;
      open;
    end;
    savedialog1.filename:=query1.fieldbyname('shpno').value+'總表.xls';
    if savedialog1.Execute then begin
      ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmshpadvice1.BitBtn1Click(Sender: TObject);
begin
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='update tbl_pdn_shpadvice1 set notepad=:x1 where tplant=:x2 and shpno=:x3';
    params[0].asstring:=memo1.Text;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    params[2].asstring:=query1.fieldbyname('shpno').value;
    execute;
  end;
  }
  strupd:='update tbl_pdn_shpadvice1 set notepad='''+memo1.Text+''',declaration_no='''+edit2.text+''',car_text='''+edit3.text+''' where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

  if query1.state=dsedit then query1.post;
end;

procedure Tfrmshpadvice1.SpeedButton1Click(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select tplant,yr,wk from tbl_pdn_shpadvice1 where tplant=:x1 and shpno=:x2';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asstring:=query1.fieldbyname('shpno').value;
    open;
  end;
  if frmshpadvice2=nil then frmshpadvice2:=tfrmshpadvice2.Create(nil);
  frmshpadvice2.ComboBox1.Text:=query2.fieldbyname('tplant').value;
  frmshpadvice2.yEdit1.Value:=query2.fieldbyname('yr').Value;
  frmshpadvice2.wEdit1.Value:=query2.fieldbyname('wk').Value;
  //if frmshpadvice2=nil then frmshpadvice2:=tfrmshpadvice2.create(nil);
  //frmshpadvice2.Combobox1.text:=frmshpadvice.ComboBox1.text;
  //frmshpadvice2.yEdit1.Value:=frmshpadvice.yEdit1.Value;
  //frmshpadvice2.wEdit1.Value:=frmshpadvice.wEdit1.Value;
  {
  with frmshpadvice2.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_pdn_shpadvice1 where tplant=:x1 and yr=:x2 and wk=:x3';
    params[0].asstring:=frmshpadvice.combobox1.text;
    params[1].asinteger:=frmshpadvice.yEdit1.value;
    params[2].asinteger:=frmshpadvice.wEdit1.Value;
    open;
  end;
  }
  frmshpadvice2.Show;
end;

procedure Tfrmshpadvice1.updcontractno(const fty, shpno: string);
var
  str1:string;
begin
  screen.cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct j2_job from tbl_pdn_shpadvice2 where tplant='''+fty+''' and shpno='''+shpno+'''';
      open;
      while not eof do begin
        with adoquery3 do begin
          close;
          sql.text:='select a.hscontractno,b.seqno,isnull(b.unitpx,0) as unitpx from [ph.mr]..hscontractheader a,[ph.mr]..hscontractdetail b where a.hscontractid=b.hscontractid and b.seqno is not null and b.workno='''+query2.fieldbyname('j2_job').value+'''';
          open;
          if not fieldbyname('hscontractno').isnull then begin
            str1:='update tbl_pdn_shpadvice2 set contractno='''+adoquery3.fieldbyname('hscontractno').value+''',';
            //str1:=str1+'con_seq='''+copy('0'+adoquery3.fieldbyname('seqno').asstring,length('0'+adoquery3.fieldbyname('seqno').asstring)-3,4)+''',';
            str1:=str1+'con_seq='''+adoquery3.fieldbyname('seqno').asstring+''',';
            str1:=str1+'unitpx='+adoquery3.fieldbyname('unitpx').asstring+',';
            str1:=str1+'ttlpx=wght*'+adoquery3.fieldbyname('unitpx').asstring+' where wunit=''KG'' and tplant='''+fty+''' and shpno='''+shpno+''' and j2_job='''+query2.fieldbyname('j2_job').value+'''';
            if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
            str1:='update tbl_pdn_shpadvice2 set contractno='''+adoquery3.fieldbyname('hscontractno').value+''',';
            //str1:=str1+'con_seq='''+copy('0'+adoquery3.fieldbyname('seqno').asstring,length('0'+adoquery3.fieldbyname('seqno').asstring)-1,2)+''',';
            str1:=str1+'con_seq='''+adoquery3.fieldbyname('seqno').asstring+''',';
            str1:=str1+'unitpx='+adoquery3.fieldbyname('unitpx').asstring+',';
            str1:=str1+'ttlpx=t4qty*'+adoquery3.fieldbyname('unitpx').asstring+' where wunit=''PC'' and t4qty>0 and tplant='''+fty+''' and shpno='''+shpno+''' and j2_job='''+query2.fieldbyname('j2_job').value+'''';
            if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
            str1:='update tbl_pdn_shpadvice2 set contractno='''+adoquery3.fieldbyname('hscontractno').value+''',';
            //str1:=str1+'con_seq='''+copy('0'+adoquery3.fieldbyname('seqno').asstring,length('0'+adoquery3.fieldbyname('seqno').asstring)-3,4)+''',';
            str1:=str1+'con_seq='''+adoquery3.fieldbyname('seqno').asstring+''',';
            str1:=str1+'unitpx='+adoquery3.fieldbyname('unitpx').asstring+',';
            str1:=str1+'ttlpx=sqty*'+adoquery3.fieldbyname('unitpx').asstring+' where wunit=''PC'' and ((t4qty is null) or (t4qty=0)) and tplant='''+fty+''' and shpno='''+shpno+''' and j2_job='''+query2.fieldbyname('j2_job').value+'''';
            if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          end;
        end;
        application.processmessages;
        next;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmshpadvice1.BitBtn2Click(Sender: TObject);
begin
  //
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select tplant,yr,wk from tbl_pdn_shpadvice1 where tplant=:x1 and shpno=:x2';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asstring:=query1.fieldbyname('shpno').value;
    open;
  end;
  if frmshpadvice=nil then frmshpadvice:=tfrmshpadvice.Create(nil);
  frmshpadvice.yEdit1.Value:=query2.fieldbyname('yr').Value;
  frmshpadvice.wEdit1.Value:=query2.fieldbyname('wk').Value;
  frmshpadvice.ComboBox1.Text:=query2.fieldbyname('tplant').value;
  frmshpadvice.BitBtn1.Visible:=false;
  frmshpadvice.BitBtn2.Visible:=false;
  frmshpadvice.BitBtn3.Visible:=false;
  frmshpadvice.BitBtn4.Visible:=true;
  frmshpadvice.BitBtn5.Visible:=true;
  frmshpadvice.Show;
end;

procedure Tfrmshpadvice1.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('uprc55').onchange:=queryuprcchange;
  query1.fieldbyname('exrate').onchange:=queryuprcchange;
  query1.fieldbyname('t4qty').onchange:=queryuprcchange;
end;

procedure Tfrmshpadvice1.Query1AfterPost(DataSet: TDataSet);
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
   with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    commandtext:='update tbl_pdn_shpadvice2 set inv=:x1 where tplant=:x2 and shpno=:x3 and sseq=:x4';

    if not query1.fieldbyname('inv').isnull then
    params[0].asstring:=query1.fieldbyname('inv').value
    else params[0].asstring:='';
    params[1].asstring:=query1.fieldbyname('tplant').value;
    params[2].asstring:=query1.fieldbyname('shpno').value;
    params[3].asinteger:=query1.fieldbyname('sseq').value;
    execute;
   end;
  end;
  }
    strupd:='update tbl_pdn_shpadvice2 set ';
    if not query1.fieldbyname('bg_qty').isnull then
    strupd:=strupd+'bg_qty='+query1.fieldbyname('bg_qty').asstring+','
    else strupd:=strupd+'bg_qty=0,';
    if not query1.fieldbyname('bg_wt').isnull then
    strupd:=strupd+'bg_wt='+formatfloat('0.00',query1.fieldbyname('bg_wt').value)+','
    else strupd:=strupd+'bg_wt=0,';
    if not query1.fieldbyname('bg_gw').isnull then
    strupd:=strupd+'bg_gw='+formatfloat('0.00',query1.fieldbyname('bg_gw').value)+','
    else strupd:=strupd+'bg_gw=0,';
    if not query1.fieldbyname('bg_c').isnull then
    strupd:=strupd+'bg_c='+formatfloat('0.00',query1.fieldbyname('bg_c').value)+','
    else strupd:=strupd+'bg_c=0,';

    if not query1.fieldbyname('t4qty').isnull then
    strupd:=strupd+'t4qty='+formatfloat('0',query1.fieldbyname('t4qty').value)+','
    else strupd:=strupd+'t4qty=0,';
    if not query1.fieldbyname('box').isnull then
    strupd:=strupd+'box='+formatfloat('0.00',query1.fieldbyname('box').value)+','
    else strupd:=strupd+'box=0,';

    if not query1.fieldbyname('curn40').isnull then
    strupd:=strupd+'curn40='''+query1.fieldbyname('curn40').value+''','
    else strupd:=strupd+'curn40='''',';
    if not query1.fieldbyname('uprc55').isnull then
    strupd:=strupd+'uprc55='+formatfloat('0.00',query1.fieldbyname('uprc55').value)+','
    else strupd:=strupd+'uprc55=0,';
    if not query1.fieldbyname('exrate').isnull then
    strupd:=strupd+'exrate='+formatfloat('0.00',query1.fieldbyname('exrate').value)+','
    else strupd:=strupd+'exrate=0,';
    if not query1.fieldbyname('tprc').isnull then
    strupd:=strupd+'tprc='+formatfloat('0.00',query1.fieldbyname('tprc').value)+','
    else strupd:=strupd+'tprc=0,';

    if not query1.fieldbyname('inv').isnull then
    strupd:=strupd+'inv='''+query1.fieldbyname('inv').value+''' '
    else strupd:=strupd+'inv='''' ';
    strupd:=strupd+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
    strupd:=strupd+'and shpno='''+query1.fieldbyname('shpno').value+''' ';
    strupd:=strupd+'and sseq='+query1.fieldbyname('sseq').asstring;
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

end;

procedure Tfrmshpadvice1.queryuprcchange(Sender: TField);
var
  uprc,exrate:double;
  t4qty:integer;
begin
  if not query1.fieldbyname('uprc55').isnull then
    uprc:=query1.fieldbyname('uprc55').value else uprc:=0;
  if not query1.fieldbyname('exrate').isnull then
    exrate:=query1.fieldbyname('exrate').value else exrate:=0;
  if not query1.fieldbyname('t4qty').isnull then
    t4qty:=query1.fieldbyname('t4qty').value else t4qty:=0;
  query1.fieldbyname('tprc').value:=uprc*exrate*t4qty;
end;

procedure Tfrmshpadvice1.Edit1Change(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_pdn_shpadvice2 where tplant='''+label2.caption+''' and shpno='''+edit1.text+'''';
    open;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select notepad from tbl_pdn_shpadvice1 where tplant='''+label2.caption+''' and shpno='''+edit1.text+'''';
    open;
    if not fieldbyname('notepad').isnull then
    memo1.Text:=fieldbyname('notepad').value else memo1.Lines.Clear;
  end;
end;

procedure Tfrmshpadvice1.ppDetailBand1BeforePrint(Sender: TObject);
begin
  exrate001.caption:='';
  if ppdbpipeline1.datasource=datasource1 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select curt40,exrate from tbl_pdn_shpadvice2 where tplant=:x1 and shpno=:x2 and sseq=:x3';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('shpno').value;
      params[2].asinteger:=query1.fieldbyname('sseq').value;
      open;
      if fieldbyname('exrate').value>0 then exrate001.caption:=formatfloat('0.000',fieldbyname('exrate').value)
      else if not fieldbyname('curt40').isnull then exrate001.caption:=formatfloat('0.000',fieldbyname('curt40').value);
    end;
  end else if ppdbpipeline1.datasource=datasource2 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select curt40,exrate from tbl_pdn_shpadvice2 where tplant=:x1 and shpno=:x2 and sseq=:x3';
      params[0].asstring:=query5.fieldbyname('tplant').value;
      params[1].asstring:=query5.fieldbyname('shpno').value;
      params[2].asinteger:=query5.fieldbyname('sseq').value;
      open;
      if fieldbyname('exrate').value>0 then exrate001.caption:=formatfloat('0.000',fieldbyname('exrate').value)
      else if not fieldbyname('curt40').isnull then exrate001.caption:=formatfloat('0.000',fieldbyname('curt40').value);
    end;
  end;
end;

procedure Tfrmshpadvice1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmshpadvice1.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmshpadvice1.BitBtn3Click(Sender: TObject);
var
  tplant,shpno:string;
  sseq,i,j:integer;
begin
  if DBGridEh1.SelectedRows.Count>0 then begin
    with DBGridEh1.DataSource.DataSet do begin
      for i:=0 to DBGridEh1.SelectedRows.Count-1 do begin
        GotoBookmark(pointer(DBGridEh1.SelectedRows.Items[i]));
        tplant:=fieldbyname('tplant').Value;
        shpno:=fieldbyname('shpno').Value;
        sseq:=fieldbyname('sseq').value;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='delete from tbl_pdn_shpadvice2 where tplant=:x1 and shpno=:x2 and sseq=:x3';
          params[0].asstring:=tplant;
          params[1].asstring:=shpno;
          params[2].asinteger:=sseq;
          execute;
        end;
        application.ProcessMessages;
      end;
    end;
    //--  --
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_updshpadvice2_sseq(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('shpno').value;
      execute;
    end;

    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_shpadvice2 where tplant='''+tplant+''' and shpno='''+shpno+'''';
      open;
    end;
  end else begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      tplant:=query1.fieldbyname('tplant').value;
      shpno:=query1.fieldbyname('shpno').value;
      sseq:=query1.fieldbyname('sseq').value;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='delete from tbl_pdn_shpadvice2 where tplant=:x1 and shpno=:x2 and sseq=:x3';
        params[0].asstring:=tplant;
        params[1].asstring:=shpno;
        params[2].asinteger:=sseq;
        execute;
      end;
      {
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='update tbl_pdn_shpadvice2 set sseq=sseq-1 where tplant=:x1 and shpno=:x2 and sseq>=:x3';
        params[0].asstring:=tplant;
        params[1].asstring:=shpno;
        params[2].asinteger:=sseq;
        execute;
      end;
      }
      strupd:='update tbl_pdn_shpadvice2 set sseq=sseq-1 where tplant='''+tplant+''' and shpno='''+shpno+''' and sseq>='+inttostr(sseq);
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

    end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_shpadvice2 where tplant='''+tplant+''' and shpno='''+shpno+'''';
      open;
    end;
  end;
end;

procedure Tfrmshpadvice1.BitBtn4Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  bitbtn1click(self);
  if checkbox1.Checked then begin
    ppdbpipeline1.DataSource:=datasource1;
    if not query1.fieldbyname('sseq').isnull then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select exfty,car_text from tbl_pdn_shpadvice1 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
        open;
        if not fieldbyname('exfty').isnull then exfty001.Caption:=formatdatetime('yyyy/MM/dd',fieldbyname('exfty').value)
        else exfty001.Caption:='';
        if not fieldbyname('car_text').isnull then plt001.caption:=fieldbyname('car_text').value
        else plt001.caption:='';
      end;
      shpno001.Caption:=query1.fieldbyname('shpno').value;
      x1.Visible:=true;
      x2.Visible:=true;
      fty001.caption:=query1.fieldbyname('tplant').value;

      if checkbox3.checked=true then begin
        uh01.visible:=false; uh02.visible:=false; uh03.visible:=false; uh04.visible:=false;
        ud01.visible:=false; ud02.visible:=false; ud03.visible:=false; exrate001.visible:=false;
        ut01.visible:=false; ut02.visible:=false;
      end else begin
        uh01.visible:=true; uh02.visible:=true; uh03.visible:=true; uh04.visible:=true;
        ud01.visible:=true; ud02.visible:=true; ud03.visible:=true; exrate001.visible:=true;
        ut01.visible:=true; ut02.visible:=true;
      end;

      //To:  HK Head Office
      //if query1.fieldbyname('tplant').value='CL' then pplabel40.caption:='To:  Bangladesh Office    '
      //else pplabel40.caption:='To:  HK Head Office    ';

      ppReport1.Print;
    end;
  end else begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_shpadvice2_clr(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('shpno').value;
      execute;
    end;
    with query5 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_shpadvice2_tmp where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+''' '
                  +'order by tplant,shpno,sseq';
      open;
    end;
    ppdbpipeline1.DataSource:=datasource2;
    if not query5.fieldbyname('sseq').isnull then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select exfty,car_text from tbl_pdn_shpadvice1 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
        open;
        if not fieldbyname('exfty').isnull then exfty001.Caption:=formatdatetime('yyyy/MM/dd',fieldbyname('exfty').value)
        else exfty001.Caption:='';
        if not fieldbyname('car_text').isnull then plt001.caption:=fieldbyname('car_text').value
        else plt001.caption:='';
      end;
      shpno001.Caption:=query1.fieldbyname('shpno').value;
      x1.Visible:=false;
      x2.Visible:=false;
      fty001.Caption:=query1.fieldbyname('tplant').value;

      if checkbox3.checked=true then begin
        uh01.visible:=false; uh02.visible:=false; uh03.visible:=false; uh04.visible:=false;
        ud01.visible:=false; ud02.visible:=false; ud03.visible:=false; exrate001.visible:=false;
        ut01.visible:=false; ut02.visible:=false;
      end else begin
        uh01.visible:=true; uh02.visible:=true; uh03.visible:=true; uh04.visible:=true;
        ud01.visible:=true; ud02.visible:=true; ud03.visible:=true; exrate001.visible:=true;
        ut01.visible:=true; ut02.visible:=true;
      end;

      ppReport1.Print;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmshpadvice1.BitBtn5Click(Sender: TObject);
var
  y1,m1,d1:word;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    //commandtext:='select max(exfty) as exfty from tbl_pdn_shpadvice2 where tplant=:x1 and shpno=:x2';
    commandtext:='select exfty from tbl_pdn_shpadvice1 where tplant=:x1 and shpno=:x2';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asstring:=query1.fieldbyname('shpno').value;
    open;
    if not fieldbyname('exfty').isnull then decodedate(fieldbyname('exfty').value,y1,m1,d1);
  end;
  if checkbox1.Checked then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      if checkbox2.Checked=false then begin
        params.createparam(ftstring,'x2',ptinput);
      end else begin
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
      end;
      commandtext:='select distinct a.tplant as "Factory",a.shpno as "Shipping Advice #",a.sseq as "Item #",'
                  +'a.inv as "Invoice #",a.pdn as "PDN #",a.voyn as "Manifest #",a.sopno as "SO #",a.cust as "Cust Code",'
                  +'a.j_no as "Project #",a.j2_job as "WO #",a.cstyle as "Cust Style",a.acol as "Clr Code",a.cat as "Cat #",a.flag6 as "Prod Code",'
                  +'a.sqty as "PDN Qty",a.t4qty as "Actual Shipped Qty",a.exfty as "PDN plan Ex-fty date",b.exfty as "Actual Ex-fty date",a.ondt as "Actual Transit date",'
                  +'a.curn40 as "Currency",a.uprc55 as "Unit Price",a.uprc as "Unit Price (HKD)",a.tprc as "Total Value (HKD)",a.box as "# of Carton",'
                  +'a.shpm as "Ship Mode",a.cbm as "Volume (CBM)" from tbl_pdn_shpadvice2 a,tbl_pdn_shpadvice1 b '
                  +'where a.tplant=b.tplant and a.shpno=b.shpno and a.tplant=:x1 ';
      if checkbox2.checked=false then commandtext:=commandtext+'and a.shpno=:x2 '
      else commandtext:=commandtext+'and f_year(b.exfty)=:x3 and f_month(b.exfty)=:x4 ';
      commandtext:=commandtext+'order by a.tplant,a.shpno,a.sseq';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      if checkbox2.Checked=false then begin
        params[1].asstring:=query1.fieldbyname('shpno').value;
      end else begin
        params[1].asinteger:=y1;
        params[2].asinteger:=m1;
      end;
      open;
      if savedialog1.Execute then begin
        xls1.FileName:=savedialog1.FileName;
        xls1.Execute;
      end;
    end;
  end else begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_shpadvice2_clr(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('shpno').value;
      execute;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select distinct tplant as "Factory",shpno as "Shipping Advice #",sseq as "Item #",'
                  +'inv as "Invoice #",pdn as "PDN #",voyn as "Manifest #",sopno as "SO #",cust as "Cust Code",'
                  +'j_no as "Project #",j2_job as "WO #",cstyle as "Cust Style",cat as "Category",'
                  +'sqty as "PDN Qty",t4qty as "Actual Shipped Qty",exfty as "PDN plan Ex-fty date",'
                  +'curn40 as "Currency",uprc as "Unit Price",tprc as "Total Value (HKD)",box as "# of Carton",'
                  +'shpm as "Ship Mode",cbm as "Volume (CBM)" from tbl_pdn_shpadvice2_clr where tplant=:x1 and shpno=:x2 '
                  +'order by tplant,shpno,sseq';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('shpno').value;
      open;
      if savedialog1.Execute then begin
        xls1.FileName:=savedialog1.FileName;
        xls1.Execute;
      end;
    end;
  end;
end;

procedure Tfrmshpadvice1.ppSummaryBand1BeforePrint(Sender: TObject);
var
  uimg:string;
begin
  ppMemo1.Lines.Clear;
  ppMemo1.Text:=memo1.Text;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select signed from tbl_pdn_shpadvice1 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
    open;
    if not fieldbyname('signed').isnull then signature001.Caption:=fieldbyname('signed').value
    else signature001.Caption:='';
  end;
  if signature001.Caption>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select uimg from tbluser where usr='''+signature001.Caption+'''';
      open;
      if not fieldbyname('uimg').isnull then uimg:=extractfiledir(application.ExeName)+'\signature\'+fieldbyname('uimg').value
      else uimg:='';
    end;
    if uimg>'' then ppimage1.Picture.LoadFromFile(uimg);
  end;
end;

procedure Tfrmshpadvice1.BitBtn6Click(Sender: TObject);
var
  str1,str2:string;
begin
  str1:=extractfiledir(application.exename);
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct shpno,wk from tbl_pdn_shpadvice1 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
    open;
  end;
  str2:=query2.fieldbyname('shpno').value+' '+query2.fieldbyname('wk').asstring;
  shellexecute(0,'open',pchar(str1+'\dotnet\send email.exe'),pchar(str2),nil,sw_show);
end;

procedure Tfrmshpadvice1.BitBtn7Click(Sender: TObject);
begin
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='update tbl_pdn_shpadvice1 set signed=:x1 where tplant=:x2 and shpno=:x3';
    params[0].asstring:=frmmain.combobox1.Text;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    params[2].asstring:=query1.fieldbyname('shpno').value;
    execute;
  end;
  }
  strupd:='update tbl_pdn_shpadvice1 set signed='''+frmmain.combobox1.Text+''' where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

end;

procedure Tfrmshpadvice1.BitBtn9Click(Sender: TObject);
begin
  if cedit1.value>0 then begin
    if application.messagebox('Change the Ex.rate by this value?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      strupd:='update tbl_pdn_shpadvice2 set exrate='+cedit1.Text+',tprc=t4qty*uprc55*'+cedit1.Text+' where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!')
      else showmessage('Updated!');
    end;
  end;
end;

procedure Tfrmshpadvice1.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  cust,tplant:string;
begin
  if not query1.fieldbyname('inv').isnull then begin
    tplant:=query1.fieldbyname('tplant').value;
    //if tplant='FJ' then tplant:='SL';
    if query1.fieldbyname('inv').value>'' then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select customer from tbl_pdn_m where tplant='''+query1.fieldbyname('tplant').value+''' and pdn='''+query1.fieldbyname('pdn').value+'''';
        open;
        if not fieldbyname('customer').isnull then cust:=fieldbyname('customer').value
        else cust:='';
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='execute procedure sp_pdn_geninv(:x1,:x2,:x3)';
        params[0].AsString:=query1.fieldbyname('tplant').value;
        params[1].AsString:=query1.fieldbyname('inv').value;
        params[2].asstring:=cust;
        execute;
      end;
      if cust='ETAM' then begin
        if frmpdninvoice=nil then frmpdninvoice:=tfrmpdninvoice.Create(nil);
        with frmpdninvoice.Query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_pdn_inv where inv='''+query1.fieldbyname('inv').value+''' and tplant='''+tplant+'''';
          open;
        end;
        frmpdninvoice.DBGridEh1.Columns[6].Title.caption:='ITEM No.';
        frmpdninvoice.DBGridEh1.Columns[7].Visible:=true;
        frmpdninvoice.DBGridEh1.Columns[9].Visible:=true;
        frmpdninvoice.Show;
      end else if (cust='MONO') or (cust='CANA') or (cust='QVCP') or (cust='HBIU') then begin
        if frmpdninvoice=nil then frmpdninvoice:=tfrmpdninvoice.Create(nil);
        with frmpdninvoice.Query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_pdn_inv where inv='''+query1.fieldbyname('inv').value+''' and tplant='''+tplant+'''';
          open;
        end;
        if cust='CANA' then
          frmpdninvoice.DBGridEh1.Columns[6].Title.caption:='ITEM No.'
        else if cust='MONO' then
          frmpdninvoice.DBGridEh1.Columns[6].Title.caption:='Article No.'
        else if cust='QVCP' then
          frmpdninvoice.DBGridEh1.Columns[6].Title.caption:='Style No.';
        frmpdninvoice.DBGridEh1.Columns[7].Visible:=false;
        frmpdninvoice.DBGridEh1.Columns[9].Visible:=false;
        frmpdninvoice.Show;
        frmpdninvoice.Show;
      //end else if (cust='SARA') or (cust='HBIU') then begin
        //
      end else if (cust='LARD') or (cust='TAIL') or (cust='DAXO') or (cust='ELLO') then begin
        if frmpdninvoice_lard=nil then frmpdninvoice_lard:=tfrmpdninvoice_lard.Create(nil);
        with frmpdninvoice_lard.Query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_pdn_inv where inv='''+query1.fieldbyname('inv').value+''' and tplant='''+tplant+'''';
          open;
        end;
        frmpdninvoice_lard.Show;
      end;
    end;
  end;
end;

end.
