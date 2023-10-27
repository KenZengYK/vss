unit wipprintformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient, ppBands, ppClass,
  ppCtrls, myChkBox, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppViewr, Mask, rxToolEdit, Spin,
  QExport4, QExport4XLS, ppParameter, Menus, cxSSheet, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, DateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridExportLink;

type
  Tfrmprintwip = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    xh1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet5: TClientDataSet;
    DataSource3: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel53: TppLabel;
    title002: TppLabel;
    ppLabel86: TppLabel;
    ppDBText45: TppDBText;
    ppLabel91: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel92: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppShape5: TppShape;
    ppLabel95: TppLabel;
    ppLabel97: TppLabel;
    ppLine87: TppLine;
    ppLine89: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine95: TppLine;
    ppLine98: TppLine;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel125: TppLabel;
    ppLabel137: TppLabel;
    ppLabel140: TppLabel;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine106: TppLine;
    ppLine108: TppLine;
    ppLabel198: TppLabel;
    ppLine109: TppLine;
    ppLabel199: TppLabel;
    ppLine110: TppLine;
    ppLabel200: TppLabel;
    ppLine113: TppLine;
    ppLabel202: TppLabel;
    ppLine114: TppLine;
    ppLabel203: TppLabel;
    ppLine115: TppLine;
    ppLine1: TppLine;
    ppDetailBand3: TppDetailBand;
    ppShape6: TppShape;
    ppDBText53: TppDBText;
    ppLine123: TppLine;
    ppLine125: TppLine;
    ppLine148: TppLine;
    ppLine155: TppLine;
    ppLine182: TppLine;
    ppLine217: TppLine;
    ppDBText60: TppDBText;
    ppDBText63: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText71: TppDBText;
    ppLine218: TppLine;
    ppLine219: TppLine;
    ppLine220: TppLine;
    ppLine221: TppLine;
    ppLine222: TppLine;
    ppLine227: TppLine;
    ppDBText97: TppDBText;
    ppLine228: TppLine;
    ppDBText98: TppDBText;
    ppLine229: TppLine;
    ppDBText99: TppDBText;
    ppLine231: TppLine;
    ppLine232: TppLine;
    ppLine233: TppLine;
    ppLine2: TppLine;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel210: TppLabel;
    ppDBCalc19: TppDBCalc;
    b01: TppDBCalc;
    b02: TppDBCalc;
    b03: TppDBCalc;
    b06: TppDBCalc;
    b04: TppDBCalc;
    b05: TppDBCalc;
    b07: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBCalc10: TppDBCalc;
    a01: TppDBCalc;
    a02: TppDBCalc;
    a03: TppDBCalc;
    a06: TppDBCalc;
    a04: TppDBCalc;
    a05: TppDBCalc;
    a07: TppDBCalc;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    x01: TppLabel;
    x02: TppLabel;
    x03: TppLabel;
    x04: TppLabel;
    x05: TppLabel;
    x06: TppLabel;
    s01: TppLabel;
    s02: TppLabel;
    s03: TppLabel;
    s04: TppLabel;
    s05: TppLabel;
    s06: TppLabel;
    t01: TppLabel;
    t02: TppLabel;
    t03: TppLabel;
    t04: TppLabel;
    t05: TppLabel;
    t06: TppLabel;
    ppShape1: TppShape;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel6: TppLabel;
    dt001: TppLabel;
    ppLabel8: TppLabel;
    dt002: TppLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    s001: TppLabel;
    s002: TppLabel;
    s003: TppLabel;
    s004: TppLabel;
    s005: TppLabel;
    s006: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    xh2: TRadioGroup;
    ppDBText5: TppDBText;
    ppDBCalc1: TppDBCalc;
    a001: TppDBCalc;
    a002: TppDBCalc;
    a003: TppDBCalc;
    a006: TppDBCalc;
    a004: TppDBCalc;
    a005: TppDBCalc;
    a007: TppDBCalc;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    ComboBox2: TComboBox;
    GroupBox2: TGroupBox;
    SpinEdit1: TSpinEdit;
    chk1: TCheckBox;
    chk2: TCheckBox;
    Query1: TClientDataSet;
    BitBtn3: TBitBtn;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel9: TppLabel;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    se01: TppLabel;
    se02: TppLabel;
    se03: TppLabel;
    se04: TppLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    BitBtn4: TBitBtn;
    SaveDialog1: TSaveDialog;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel11: TppLabel;
    ppShape3: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    fty0001: TppLabel;
    dt0001: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLine39: TppLine;
    ppLabel19: TppLabel;
    T2_001: TppDBCalc;
    T3_001: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    xls1: TQExport4XLS;
    BitBtn7: TBitBtn;
    PopupMenu1: TPopupMenu;
    ExporttoExcelT3Qty1: TMenuItem;
    ExportExcelWIPforCutSewnQty1: TMenuItem;
    ppLabel20: TppLabel;
    t2_d01: TppLabel;
    t2_d02: TppLabel;
    BitBtn8: TBitBtn;
    cxSheet1: TcxSpreadSheet;
    BitBtn9: TBitBtn;
    cxView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    cxView1J_NO: TcxGridDBColumn;
    cxView1J2_JOB: TcxGridDBColumn;
    cxView1T2: TcxGridDBColumn;
    cxView1T3: TcxGridDBColumn;
    cxView1EXFTY: TcxGridDBColumn;
    cxView1CSTYLE: TcxGridDBColumn;
    cxView1ARTNO: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ExporttoExcelT3Qty1Click(Sender: TObject);
    procedure ExportExcelWIPforCutSewnQty1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprintwip: Tfrmprintwip;

implementation

uses mainformu, wip1formu;

{$R *.dfm}

procedure Tfrmprintwip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmprintwip:=nil;
end;

procedure Tfrmprintwip.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if chk2.Checked then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='execute procedure sp_genzzz2(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:='';
      params[1].asstring:=combobox1.text;
      params[2].asdate:=date;
      params[3].asstring:=combobox2.text;
      params[4].asinteger:=spinedit1.Value;
      execute;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_updlwo_sew';
    execute;
  end;
  with clientdataset5 do begin
    close;
    params.clear;
    if chk1.Checked then begin
      commandtext:='select distinct b.tplant,b.tshop,a.pline,substr(a.j_no,1,4) as cust,a.j_no,a.j2_job,a.acol,'
                  +'sum(a.pqty) as pqty,sum(a.tqty) as tqty,sum(a.ttqty) as ttqty,sum(a.tsqty) as tsqty,'
                  +'sum(a.tpqty) as tpqty,sum(a.tfqty) as tfqty,sum(a.teqty) as teqty,sum(a.tiqty) as tiqty,sum(a.taql) as taql '
                  +'from tbl_lwo a,tblshedule b where a.pline=b.pline and a.seq=b.seq and b.yzh=0 and b.flag3 like ''%s%'' '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
      if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
      if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' group by b.tplant,b.tshop,a.pline,a.j_no,a.j2_job,a.acol';
      if xh1.ItemIndex=0 then commandtext:=commandtext+' order by b.tplant,a.j_no,a.j2_job,b.tshop,b.pline'
      else if xh1.ItemIndex=1 then commandtext:=commandtext+' order by b.tplant,b.tshop,a.pline,a.j_no,a.j2_job';
    end else if chk2.Checked then begin
      commandtext:='select distinct b.tplant,b.tshop,a.pline,substr(a.j_no,1,4) as cust,a.j_no,a.j2_job,a.acol,'
                  +'sum(a.pqty) as pqty,sum(a.tqty) as tqty,sum(a.ttqty) as ttqty,sum(a.tsqty) as tsqty,'
                  +'sum(a.tpqty) as tpqty,sum(a.tfqty) as tfqty,sum(a.teqty) as teqty,sum(a.tiqty) as tiqty,sum(a.taql) as taql '
                  +'from tbl_lwo a,tempshedule1 b where a.pline=b.pline and a.seq=b.seq and yzh=0 '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
      if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
      if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' group by b.tplant,b.tshop,a.pline,a.j_no,a.j2_job,a.acol';
      if xh1.ItemIndex=0 then commandtext:=commandtext+' order by b.tplant,a.j_no,a.j2_job,b.tshop,b.pline'
      else if xh1.ItemIndex=1 then commandtext:=commandtext+' order by b.tplant,b.tshop,a.pline,a.j_no,a.j2_job';
    end else begin
      if dateedit1.date>0 then begin
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
      end else if dateedit3.Date>0 then begin
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
      end;
      commandtext:='select distinct b.tplant,b.tshop,a.pline,substr(a.j_no,1,4) as cust,a.j_no,a.j2_job,a.acol,'
                  +'sum(a.pqty) as pqty,sum(a.tqty) as tqty,sum(a.ttqty) as ttqty,sum(a.tsqty) as tsqty,'
                  +'sum(a.tpqty) as tpqty,sum(a.tfqty) as tfqty,sum(a.teqty) as teqty,sum(a.tiqty) as tiqty,sum(a.taql) as taql '
                  +'from tbl_lwo a,tblshedule b where a.pline=b.pline and a.seq=b.seq '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
      if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
      if dateedit1.date>0 then commandtext:=commandtext+' and b.yqlcrq>=:x1 and b.yqlcrq<=:x2'
      else if dateedit3.date>0 then commandtext:=commandtext+' and b.cfksrq>=:x1 and b.cfksrq<=:x2';
      if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' group by b.tplant,b.tshop,a.pline,a.j_no,a.j2_job,a.acol';
      if xh1.ItemIndex=0 then commandtext:=commandtext+' order by b.tplant,a.j_no,a.j2_job,b.tshop,b.pline'
      else if xh1.ItemIndex=1 then commandtext:=commandtext+' order by b.tplant,b.tshop,a.pline,a.j_no,a.j2_job';
      if dateedit1.date>0 then begin
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit2.date;
      end else if dateedit3.date>0 then begin
        params[0].asdate:=dateedit3.date;
        params[1].asdate:=dateedit4.date;
      end;
    end;
    open;
    if not fieldbyname('tplant').isnull then begin
      if chk1.Checked or chk2.Checked then begin
        dt001.Caption:='';
        dt002.Caption:='';
        if chk1.Checked then title002.Caption:=' - WIP'
        else if chk2.Checked then title002.Caption:=' - WIP & Next Order(s)';
      end else begin
        if dateedit1.date>0 then begin
          ppLabel6.Caption:='Ex-fty Date from ';
          dt001.Caption:=dateedit1.text;
          dt002.Caption:=dateedit2.text;
        end else if dateedit3.date>0 then begin
          ppLabel6.Caption:='Production Date from ';
          dt001.Caption:=dateedit3.text;
          dt002.Caption:=dateedit4.Text;
        end;
      end;
      if xh2.ItemIndex=0 then begin
        ppdetailband3.Visible:=true;
        ppgroupfooterband3.Visible:=true;
      end else if xh2.ItemIndex=1 then begin
        ppdetailband3.Visible:=false;
        ppgroupfooterband3.Visible:=false;
      end;
      pplabel86.Caption:='Factory  '+combobox1.text+'         Workshop  '+combobox2.text;
      ppReport2.Print;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmprintwip.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmprintwip.ppDetailBand1BeforePrint(Sender: TObject);
begin
  t2_d01.caption:=inttostr(clientdataset5.fieldbyname('at3').value-clientdataset5.fieldbyname('t3').value);
end;

procedure Tfrmprintwip.ppDetailBand3BeforePrint(Sender: TObject);
begin
  x01.Caption:=inttostr(clientdataset5.fieldbyname('tqty').value-clientdataset5.fieldbyname('ttqty').value);
  x02.Caption:=inttostr(clientdataset5.fieldbyname('ttqty').value-clientdataset5.fieldbyname('tsqty').value);
  x03.Caption:=inttostr(clientdataset5.fieldbyname('tsqty').value-clientdataset5.fieldbyname('tpqty').value);
  x04.Caption:=inttostr(clientdataset5.fieldbyname('tpqty').value-clientdataset5.fieldbyname('tfqty').value);
  x05.Caption:=inttostr(clientdataset5.fieldbyname('tfqty').value-clientdataset5.fieldbyname('tfqty').value);
  x06.Caption:=inttostr(clientdataset5.fieldbyname('tfqty').value-clientdataset5.fieldbyname('teqty').value);
  se01.Caption:=inttostr(clientdataset5.fieldbyname('tsqty').value-clientdataset5.fieldbyname('pqty').value);
end;

procedure Tfrmprintwip.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  s01.Caption:=inttostr(a01.Value-a02.Value);
  s02.Caption:=inttostr(a02.Value-a03.Value);
  s03.Caption:=inttostr(a03.Value-a05.Value);
  s04.Caption:=inttostr(a04.Value-a05.Value);
  s05.Caption:=inttostr(a05.Value-a06.Value);
  s06.Caption:=inttostr(a06.Value-a07.Value);
  se02.Caption:=inttostr(a03.Value-ppdbcalc10.Value);
end;

procedure Tfrmprintwip.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  t2_d02.caption:=inttostr(t2_001.value-t3_001.value);
end;

procedure Tfrmprintwip.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  t01.Caption:=inttostr(b01.Value-b02.Value);
  t02.Caption:=inttostr(b02.Value-b03.Value);
  t03.Caption:=inttostr(b03.Value-b05.Value);
  t04.Caption:=inttostr(b04.Value-b05.Value);
  t05.Caption:=inttostr(b05.Value-b06.Value);
  t06.Caption:=inttostr(b06.Value-b07.Value);
  se04.Caption:=inttostr(b03.Value-ppdbcalc19.Value);
end;

procedure Tfrmprintwip.FormShow(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  dateedit1.Date:=0;
  dateedit2.date:=0;
  dateedit3.date:=0;
  dateedit4.date:=0;
  with query1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_tbllwo_updsew';
    execute;
  end;
  if frmmain.clientdataset1.fieldbyname('r_clwip').value then bitbtn8.enabled:=true
  else bitbtn8.enabled:=false;
  if frmmain.clientdataset1.fieldbyname('r_t2t3_wip').value then bitbtn6.visible:=true
  else bitbtn6.visible:=false;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmprintwip.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  s001.Caption:=inttostr(a001.Value-a002.Value);
  s002.Caption:=inttostr(a002.Value-a003.Value);
  s003.Caption:=inttostr(a003.Value-a005.Value);
  s004.Caption:=inttostr(a004.Value-a005.Value);
  s005.Caption:=inttostr(a005.Value-a006.Value);
  s006.Caption:=inttostr(a006.Value-a007.Value);
  se03.Caption:=inttostr(a003.Value-ppdbcalc1.Value);
end;

procedure Tfrmprintwip.chk2Click(Sender: TObject);
begin
  if chk2.Checked then begin
    spinedit1.Enabled:=true;
    chk1.Checked:=false;
  end else spinedit1.Enabled:=false;
end;

procedure Tfrmprintwip.ExportExcelWIPforCutSewnQty1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_wipcutsewnqty(:x1,:x2)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      execute;
    end;

    with clientdataset5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select fty as "Factory",line as "Line #",projectno as "Project No.",wo as "WO #",acol as "Clr Code",wip_cut as "WIP_Cut Qty",wip_sewn as "WIP_Sewn Qty",wip_t2 as "WIP_T2 Qty",wip_t3 as "WIP_T3 Qty" '
                  +'from wip_cutsewqty where tm=:x1 order by line,projectno,wo,acol';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('factory').isnull then begin
        if savedialog1.Execute then begin
          xls1.FileName:=savedialog1.FileName;
          xls1.Execute;
        end;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmprintwip.ExporttoExcelT3Qty1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      commandtext:='execute procedure sp_t2t3(:x1,:x2,:x3,:x4,:x5)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asstring:=edit1.text;
      params[3].asdate:=dateedit3.date;
      params[4].asdate:=dateedit4.date;
      execute;
    end;
    //{
    with clientdataset5 do begin
      close;
      params.clear;
      //params.createparam(ftstring,'x0',ptinput);
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select cust as "Customer",j_no as "Project No.",j2_job as "WO No.",cstyle as "Cust Style",Qty as "T3 Qty" from tbl_t3at3_qtyamount where tm=:x1 and ftype=''T3'' order by cust,j_no,j2_job';
      //params[0].asstring:=combobox1.text;
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('customer').isnull then begin
        if savedialog1.Execute then begin
          xls1.FileName:=savedialog1.FileName;
          xls1.Execute;
        end;
      end;
    end;
    //}
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmprintwip.chk1Click(Sender: TObject);
begin
  if chk1.Checked then begin
    chk2.Checked:=false;
    spinedit1.Enabled:=false;
  end;
end;

procedure Tfrmprintwip.BitBtn2Click(Sender: TObject);
begin
  if frmwip1=nil then frmwip1:=tfrmwip1.create(nil);
  frmwip1.dateedit1.Date:=date;
  frmwip1.dateedit2.date:=date;
  frmwip1.combobox1.text:='PICKED';
  frmwip1.show;
end;

procedure Tfrmprintwip.BitBtn3Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  //Generate temporary data from planning & scheduling pool
  if chk2.Checked then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='execute procedure sp_genzzz2(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:='';
      params[1].asstring:=combobox1.text;
      params[2].asdate:=date;
      params[3].asstring:=combobox2.text;
      params[4].asinteger:=spinedit1.Value;
      execute;
    end;
  end;
  //{
  //Update actual sewn data for transit flow
  if dateedit3.date>0 then begin
    with Query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptInput);
      commandtext:='execute procedure sp_tbllwo_period(:x1)';
      params[0].asdate:=dateedit3.date;
      execute;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_updlwo_sew';
    execute;
  end;
  //}
  //Get data from trasit flow and sample and export to excel file
  with clientdataset5 do begin
    close;
    params.clear;
    if chk1.Checked then begin
      if ((combobox1.text='GG') or (combobox1.text='RX') or (combobox2.text='1H') or (combobox2.text='2H') or (combobox2.text='2R') or (combobox2.text='3R')) then begin
      commandtext:='select distinct b.tshop as Workshop,a.pline as Line,substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",a.acol as Color,'
                  +'sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.taql) as "Sewn(850) Qty",sum(a.tsqty) as "Sewn(915) Qty",sum(a.tip) as "GX sP",'
                  +'sum(a.tpqty) as "T2 Qty",sum(a.tfqty) as "cPack Qty",sum(a.tfqty) as "T3 Qty",sum(a.teqty) as "AQL Qty",sum(a.teqty) as "Ex-fty Qty",sum(a.tiqty) as "Invoice Qty",'
                  +'sum(a.tqty)-sum(a.ttqty) as "Picked WIP",sum(a.ttqty)-sum(taql) as "T1 WIP",sum(a.tsqty)-sum(tip) as "Sewn(915) 1 WIP",sum(a.tsqty)-sum(a.pqty) as "Sewn(915) 2 diff",'
                  +'sum(a.tip)-sum(a.tpqty) as "GX sP WIP",sum(a.tpqty)-sum(a.tfqty) as "T2 WIP",sum(a.tfqty)-sum(tfqty) as "cPack WIP",sum(a.tfqty)-sum(teqty) as "T3 WIP",'
                  +'sum(c.t1_sp) as "Sample of T1",sum(c.s_sp) as "Sample of Sewn",sum(c.aq_sp) as "Sample of AQL",sum(c.t2_sp) as "Sample of T2",sum(c.t3_sp) as "Sample of T3" '
                  +'from tbl_lwo a left join tbl_lwo_sample c on (a.pline=c.pline and a.seq=c.seq and a.psiz=c.psiz),tblshedule b '
                  +'where a.pline=b.pline and a.seq=b.seq and b.yzh=0 and b.flag3 like ''%s%'' '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      end else begin
      commandtext:='select distinct b.tshop as Workshop,a.pline as Line,substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",a.acol as Color,'
                  +'sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.taql) as "Sewn(850) Qty",sum(a.tsqty) as "Sewn(915) Qty",'
                  +'sum(a.tpqty) as "T2 Qty",sum(a.tfqty) as "cPack Qty",sum(a.tfqty) as "T3 Qty",sum(a.teqty) as "AQL Qty",sum(a.teqty) as "Ex-fty Qty",sum(a.tiqty) as "Invoice Qty",'
                  +'sum(a.tqty)-sum(a.ttqty) as "Picked WIP",sum(a.ttqty)-sum(taql) as "T1 WIP",sum(a.tsqty)-sum(tpqty) as "Sewn(915) 1 WIP",sum(a.tsqty)-sum(a.pqty) as "Sewn(915) 2 diff",'
                  +'sum(a.tpqty)-sum(a.tfqty) as "T2 WIP",sum(a.tfqty)-sum(tfqty) as "cPack WIP",sum(a.tfqty)-sum(teqty) as "T3 WIP",'
                  +'sum(c.t1_sp) as "Sample of T1",sum(c.s_sp) as "Sample of Sewn",sum(c.aq_sp) as "Sample of AQL",sum(c.t2_sp) as "Sample of T2",sum(c.t3_sp) as "Sample of T3" '
                  +'from tbl_lwo a left join tbl_lwo_sample c on (a.pline=c.pline and a.seq=c.seq and a.psiz=c.psiz),tblshedule b '
                  +'where a.pline=b.pline and a.seq=b.seq and b.yzh=0 and b.flag3 like ''%s%'' '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      end;
      if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
      if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
      if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' group by b.tshop,a.pline,a.j_no,a.j2_job,b.cstyle,a.acol';
      if xh1.ItemIndex=0 then commandtext:=commandtext+' order by a.j_no,a.j2_job,b.tshop,b.pline'
      else if xh1.ItemIndex=1 then commandtext:=commandtext+' order by b.tshop,a.pline,a.j_no,a.j2_job';
    end else if chk2.Checked then begin
      if ((combobox1.text='GG') or (combobox1.text='RX') or (combobox2.text='1H') or (combobox2.text='2H') or (combobox2.text='2R') or (combobox2.text='3R')) then begin
      commandtext:='select distinct b.tshop as Workshop,a.pline as Line,substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",a.acol as Color,'
                  +'sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.taql) as "Sewn(850) Qty",sum(a.tsqty) as "Sewn(915) Qty",sum(a.tip) as "GX sP",'
                  +'sum(a.tpqty) as "T2 Qty",sum(a.tfqty) as "cPack Qty",sum(a.tfqty) as "T3 Qty",sum(a.teqty) as "AQL Qty",sum(a.teqty) as "Ex-fty Qty",sum(a.tiqty) as "Invoice Qty",'
                  +'sum(a.tqty)-sum(a.ttqty) as "Picked WIP",sum(a.ttqty)-sum(taql) as "T1 WIP",sum(a.tsqty)-sum(tip) as "Sewn(915) 1 WIP",sum(a.tsqty)-sum(a.pqty) as "Sewn(915) 2 diff",'
                  +'sum(a.tip)-sum(a.tpqty) as "GX sP WIP",sum(a.tpqty)-sum(a.tfqty) as "T2 WIP",sum(a.tfqty)-sum(tfqty) as "cPack WIP",sum(a.tfqty)-sum(teqty) as "T3 WIP",'
                  +'sum(c.t1_sp) as "Sample of T1",sum(c.s_sp) as "Sample of Sewn",sum(c.aq_sp) as "Sample of AQL",sum(c.t2_sp) as "Sample of T2",sum(c.t3_sp) as "Sample of T3" '
                  +'from tbl_lwo a left join tbl_lwo_sample c on (a.pline=c.pline and a.seq=c.seq and a.psiz=c.psiz),tempshedule1 b '
                  +'where a.pline=b.pline and a.seq=b.seq and yzh=0 '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      end else begin
      commandtext:='select distinct b.tshop as Workshop,a.pline as Line,substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",a.acol as Color,'
                  +'sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.taql) as "Sewn(850) Qty",sum(a.tsqty) as "Sewn(915) Qty",'
                  +'sum(a.tpqty) as "T2 Qty",sum(a.tfqty) as "cPack Qty",sum(a.tfqty) as "T3 Qty",sum(a.teqty) as "AQL Qty",sum(a.teqty) as "Ex-fty Qty",sum(a.tiqty) as "Invoice Qty",'
                  +'sum(a.tqty)-sum(a.ttqty) as "Picked WIP",sum(a.ttqty)-sum(taql) as "T1 WIP",sum(a.tsqty)-sum(tpqty) as "Sewn(915) 1 WIP",sum(a.tsqty)-sum(a.pqty) as "Sewn(915) 2 diff",'
                  +'sum(a.tpqty)-sum(a.tfqty) as "T2 WIP",sum(a.tfqty)-sum(tfqty) as "cPack WIP",sum(a.tfqty)-sum(teqty) as "T3 WIP",'
                  +'sum(c.t1_sp) as "Sample of T1",sum(c.s_sp) as "Sample of Sewn",sum(c.aq_sp) as "Sample of AQL",sum(c.t2_sp) as "Sample of T2",sum(c.t3_sp) as "Sample of T3" '
                  +'from tbl_lwo a left join tbl_lwo_sample c on (a.pline=c.pline and a.seq=c.seq and a.psiz=c.psiz),tempshedule1 b '
                  +'where a.pline=b.pline and a.seq=b.seq and yzh=0 '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      end;
      if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
      if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
      if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' group by b.tshop,a.pline,a.j_no,a.j2_job,b.cstyle,a.acol';
      if xh1.ItemIndex=0 then commandtext:=commandtext+' order by a.j_no,a.j2_job,b.tshop,b.pline'
      else if xh1.ItemIndex=1 then commandtext:=commandtext+' order by b.tshop,a.pline,a.j_no,a.j2_job';
    end else begin
      if dateedit1.date>0 then begin
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
      end else if dateedit3.Date>0 then begin
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
      end;
      if ((combobox1.text='GG') or (combobox1.text='RX') or (combobox2.text='1H') or (combobox2.text='2H') or (combobox2.text='2R') or (combobox2.text='3R')) then begin
      commandtext:='select distinct b.tshop as Workshop,a.pline as Line,substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",a.acol as Color,'
                  +'sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.taql) as "Sewn(850) Qty",sum(a.tsqty) as "Sewn(915) Qty",sum(a.tip) as "GX sP",'
                  +'sum(a.tpqty) as "T2 Qty",sum(a.tfqty) as "cPack Qty",sum(a.tfqty) as "T3 Qty",sum(a.teqty) as "AQL Qty",sum(a.teqty) as "Ex-fty Qty",sum(a.tiqty) as "Invoice Qty",'
                  +'sum(a.tqty)-sum(a.ttqty) as "Picked WIP",sum(a.ttqty)-sum(taql) as "T1 WIP",sum(a.tsqty)-sum(tip) as "Sewn(915) 1 WIP",sum(a.tsqty)-sum(a.pqty) as "Sewn(915) 2 diff",'
                  +'sum(a.tip)-sum(a.tpqty) as "GX sP WIP",sum(a.tpqty)-sum(a.tfqty) as "T2 WIP",sum(a.tfqty)-sum(tfqty) as "cPack WIP",sum(a.tfqty)-sum(teqty) as "T3 WIP",'
                  +'sum(c.t1_sp) as "Sample of T1",sum(c.s_sp) as "Sample of Sewn",sum(c.aq_sp) as "Sample of AQL",sum(c.t2_sp) as "Sample of T2",sum(c.t3_sp) as "Sample of T3" '
                  +'from tbl_lwo a left join tbl_lwo_sample c on (a.pline=c.pline and a.seq=c.seq and a.psiz=c.psiz),tblshedule b '
                  +'where a.pline=b.pline and a.seq=b.seq '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      end else begin
      commandtext:='select distinct b.tshop as Workshop,a.pline as Line,substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",a.acol as Color,'
                  +'sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.taql) as "Sewn(850) Qty",sum(a.tsqty) as "Sewn(915) Qty",'
                  +'sum(a.tpqty) as "T2 Qty",sum(a.tfqty) as "cPack Qty",sum(a.tfqty) as "T3 Qty",sum(a.teqty) as "AQL Qty",sum(a.teqty) as "Ex-fty Qty",sum(a.tiqty) as "Invoice Qty",'
                  +'sum(a.tqty)-sum(a.ttqty) as "Picked WIP",sum(a.ttqty)-sum(taql) as "T1 WIP",sum(a.tsqty)-sum(tpqty) as "Sewn(915) 1 WIP",sum(a.tsqty)-sum(a.pqty) as "Sewn(915) 2 diff",'
                  +'sum(a.tpqty)-sum(a.tfqty) as "T2 WIP",sum(a.tfqty)-sum(tfqty) as "cPack WIP",sum(a.tfqty)-sum(teqty) as "T3 WIP",'
                  +'sum(c.t1_sp) as "Sample of T1",sum(c.s_sp) as "Sample of Sewn",sum(c.aq_sp) as "Sample of AQL",sum(c.t2_sp) as "Sample of T2",sum(c.t3_sp) as "Sample of T3" '
                  +'from tbl_lwo a left join tbl_lwo_sample c on (a.pline=c.pline and a.seq=c.seq and a.psiz=c.psiz),tblshedule b '
                  +'where a.pline=b.pline and a.seq=b.seq '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      end;
      if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
      if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
      if dateedit1.date>0 then commandtext:=commandtext+' and b.yqlcrq>=:x1 and b.yqlcrq<=:x2'
      else if dateedit3.date>0 then commandtext:=commandtext+' and b.cfksrq>=:x1 and b.cfksrq<=:x2';
      if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' group by b.tshop,a.pline,a.j_no,a.j2_job,b.cstyle,a.acol';
      if xh1.ItemIndex=0 then commandtext:=commandtext+' order by a.j_no,a.j2_job,b.tshop,b.pline'
      else if xh1.ItemIndex=1 then commandtext:=commandtext+' order by b.tshop,a.pline,a.j_no,a.j2_job';
      if dateedit1.date>0 then begin
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit2.date;
      end else if dateedit3.date>0 then begin
        params[0].asdate:=dateedit3.date;
        params[1].asdate:=dateedit4.date;
      end;
    end;
    open;
    if not fieldbyname('Workshop').isnull then begin
      if savedialog1.Execute then begin
        xls1.FileName:=savedialog1.FileName;
        xls1.Execute;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmprintwip.BitBtn5Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if chk2.Checked then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='execute procedure sp_genzzz2(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:='';
      params[1].asstring:=combobox1.text;
      params[2].asdate:=date;
      params[3].asstring:=combobox2.text;
      params[4].asinteger:=spinedit1.Value;
      execute;
    end;
  end;
  //{
  with query1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_updlwo_sew';
    execute;
  end;
  //}
  with clientdataset5 do begin
    close;
    params.clear;
    if chk1.Checked then begin
      commandtext:='select distinct b.tshop as Workshop,a.pline as Line,substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",avg(b.tmu) as SAH,b.flag6 as "Prod Cat",a.acol as Color,'
                  +'a.rwo as "RWO #",b.yqlcrq as "RWO Ex-fty Date",sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.taql) as "Sewn(850) Qty",sum(a.tsqty) as "Sewn(915) Qty",'
                  +'min(b.cfksrq) as "Start date",max(b.cfwcrq) as "T2 Date",'
                  +'sum(a.tqty)-sum(a.tsqty) as "WIP TTL Qty",sum(tqty)-sum(ttqty) as "WIP Picked",sum(ttqty)-sum(tsqty) as "WIP T1",sum(tsqty)-sum(pqty) as "Sewn(915) 2 diff",min(a.seq) as SEQ '
                  +'from tbl_lwo a,tblshedule b where a.pline=b.pline and a.seq=b.seq and b.yzh=0 and b.flag3 like ''%s%'' '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
      if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
      if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' group by b.tshop,a.pline,a.j_no,a.j2_job,b.cstyle,a.acol,a.rwo,b.yqlcrq,b.flag6';
      if xh1.ItemIndex=0 then commandtext:=commandtext+' order by a.j_no,a.j2_job,b.tshop,b.pline,a.rwo,SEQ'
      else if xh1.ItemIndex=1 then commandtext:=commandtext+' order by b.tshop,a.pline,a.j_no,a.j2_job,a.rwo,SEQ';
    end else if chk2.Checked then begin
      commandtext:='select distinct b.tshop as Workshop,a.pline as Line,substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",avg(b.tmu) as SAH,b.flag6 as "Prod Cat",a.acol as Color,'
                  +'a.rwo as "RWO #",b.yqlcrq as "RWO Ex-fty Date",sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.taql) as "Sewn(850) Qty",sum(a.tsqty) as "Sewn Qty",'
                  +'min(b.cfksrq) as "Start date",max(b.cfwcrq) as "T2 Date",'
                  +'sum(a.tqty)-sum(a.tsqty) as "WIP TTL Qty",sum(tqty)-sum(ttqty) as "WIP Picked",sum(ttqty)-sum(tsqty) as "WIP T1",sum(tsqty)-sum(pqty) as "Sewn(915) 2 diff",min(a.seq) as SEQ '
                  +'from tbl_lwo a,tempshedule1 b where a.pline=b.pline and a.seq=b.seq and yzh=0 '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
      if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
      if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' group by b.tshop,a.pline,a.j_no,a.j2_job,b.cstyle,a.acol,a.rwo,b.yqlcrq,b.flag6';
      if xh1.ItemIndex=0 then commandtext:=commandtext+' order by a.j_no,a.j2_job,b.tshop,b.pline,a.rwo,SEQ'
      else if xh1.ItemIndex=1 then commandtext:=commandtext+' order by b.tshop,a.pline,a.j_no,a.j2_job,a.rwo,SEQ';
    end else begin
      if dateedit1.date>0 then begin
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
      end else if dateedit3.Date>0 then begin
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
      end;
      commandtext:='select distinct b.tshop as Workshop,a.pline as Line,substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",avg(b.tmu) as SAH,b.flag6 as "Prod Cat",a.acol as Color,'
                  +'a.rwo as "RWO #",b.yqlcrq as "RWO Ex-fty Date",sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.taql) as "Sewn(850) Qty",sum(a.tsqty) as "Sewn(915) Qty",'
                  +'min(b.cfksrq) as "Start date",max(b.cfwcrq) as "T2 Date",'
                  +'sum(a.tqty)-sum(tsqty) as "WIP TTL Qty",sum(tqty)-sum(ttqty) as "WIP Picked",sum(ttqty)-sum(tsqty) as "WIP T1",sum(tsqty)-sum(pqty) as "Sewn(915) 2 diff",min(a.seq) as SEQ '
                  +'from tbl_lwo a,tblshedule b where a.pline=b.pline and a.seq=b.seq '
                  +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
      if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
      if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
      if dateedit1.date>0 then commandtext:=commandtext+' and b.yqlcrq>=:x1 and b.yqlcrq<=:x2'
      else if dateedit3.date>0 then commandtext:=commandtext+' and b.cfksrq>=:x1 and b.cfksrq<=:x2';
      if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
      commandtext:=commandtext+' group by b.tshop,a.pline,a.j_no,a.j2_job,b.cstyle,a.acol,a.rwo,b.yqlcrq,b.flag6';
      if xh1.ItemIndex=0 then commandtext:=commandtext+' order by a.j_no,a.j2_job,b.tshop,b.pline,a.rwo,SEQ'
      else if xh1.ItemIndex=1 then commandtext:=commandtext+' order by b.tshop,a.pline,a.j_no,a.j2_job,a.rwo,SEQ';
      if dateedit1.date>0 then begin
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit2.date;
      end else if dateedit3.date>0 then begin
        params[0].asdate:=dateedit3.date;
        params[1].asdate:=dateedit4.date;
      end;
    end;
    open;
    if not fieldbyname('Workshop').isnull then begin
      if savedialog1.Execute then begin
        xls1.FileName:=savedialog1.FileName;
        xls1.Execute;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmprintwip.BitBtn6Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      commandtext:='execute procedure sp_t2t3(:x1,:x2,:x3,:x4,:x5)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asstring:=edit1.text;
      params[3].asdate:=dateedit3.date;
      params[4].asdate:=dateedit4.date;
      execute;
    end;
    with clientdataset5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_t3at3_qtyamount_1 where tm=:x1 order by cust';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        fty0001.Caption:='Factory: '+combobox1.text;
        dt0001.Caption:='Date Period from '+formatdatetime('yyyy-MM-dd',dateedit3.date)+' to '+formatdatetime('yyyy-MM-dd',dateedit4.date);
        ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmprintwip.BitBtn7Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    {
    //Update actual sewn data for transit flow
    with query1 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_updlwo_sew';
      execute;
    end;
    //Get data from trasit flow and sample and export to excel file
    with clientdataset5 do begin
      close;
      params.clear;
      //end else begin
        if dateedit1.date>0 then begin
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
        end else if dateedit3.Date>0 then begin
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
        end;
        commandtext:='select distinct substr(a.j_no,1,4) as Cust,a.j_no as Project,a.j2_job as WO,b.cstyle as "Cust Style",a.acol as Color,'
                    +'sum(a.pqty) as "QN Qty",sum(a.tqty) as "Picked Qty",sum(a.ttqty) as "T1 Qty",sum(a.tsqty) as "Sewn Qty",'
                    +'sum(a.tpqty) as "T2 Qty",sum(a.tfqty) as "T3 Qty",sum(a.teqty) as "Ex-fty Qty",'
                    +'sum(c.t1_sp) as "Sample of T1",sum(c.s_sp) as "Sample of Sewn",sum(c.aq_sp) as "Sample of AQL",sum(c.t2_sp) as "Sample of T2",sum(c.t3_sp) as "Sample of T3" '
                    +'from tbl_lwo a left join tbl_lwo_sample c on (a.pline=c.pline and a.seq=c.seq and a.psiz=c.psiz),tblshedule b '
                    +'where a.pline=b.pline and a.seq=b.seq '
                    +'and a.pqty>0 and a.pline not in (''PSSL'',''SBSL'',''SGSL'',''PSKB'',''SBKB'',''SGKB'')';
        if edit1.text>'' then commandtext:=commandtext+' and a.j_no like '''+edit1.text+'%''';
        if edit2.text>'' then commandtext:=commandtext+' and b.cstyle='''+edit2.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and b.yqlcrq>=:x1 and b.yqlcrq<=:x2'
        else if dateedit3.date>0 then commandtext:=commandtext+' and b.cfksrq>=:x1 and b.cfksrq<=:x2';
        if combobox1.text>'' then commandtext:=commandtext+' and b.tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
        commandtext:=commandtext+' group by a.j_no,a.j2_job,b.cstyle,a.acol';
        commandtext:=commandtext+' order by a.j_no,a.j2_job';
        if dateedit1.date>0 then begin
          params[0].asdate:=dateedit1.date;
          params[1].asdate:=dateedit2.date;
        end else if dateedit3.date>0 then begin
          params[0].asdate:=dateedit3.date;
          params[1].asdate:=dateedit4.date;
        end;
      //end;
      open;
      if not fieldbyname('Workshop').isnull then begin
        if savedialog1.Execute then begin
          xls1.FileName:=savedialog1.FileName;
          xls1.Execute;
        end;
      end;
    end;
    }
  if (dateedit1.date>0) and (dateedit2.date>0) then begin
    with clientdataset5 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select cust as Customer,proj as "Project No.",cstyle as "Cust Style",wo as "WO No.",color as Colour,qnqty as "QN Qty",'
                  +'pickqty as "Picked Qty",t1qty as "T1 Qty",sewnqty as "Sewn Qty",t2qty as "T2 Qty",t3qty as "T3 Qty",sample_t1,'
                  +'sample_sewn,sample_aql,sample_t2,sample_t3,shpqty as "Shipped Qty",short1 as "Short Shipped (vs QN)",'
                  +'short2 as "Short Shipped (vs Picked)",curr,short1pric as "Sales lost (vs QN)",short2pric as "Sales lost (vs picked)",'
                  +'finished as "Completed (Y/N)" from sp_wip_shortqty(:x1,:x2) order by cust,proj,cstyle,wo,color';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      open;
      if not fieldbyname('customer').isnull then begin
        if savedialog1.Execute then begin
          xls1.FileName:=savedialog1.FileName;
          xls1.Execute;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmprintwip.BitBtn8Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    //if combobox1.text='CL' then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        commandtext:='execute procedure sp_t2t3_CL(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm;
        params[1].asstring:=combobox1.text;
        params[2].asstring:=edit1.text;
        params[3].asdate:=dateedit3.date;
        params[4].asdate:=dateedit4.date;
        execute;
      end;
      with clientdataset5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_t3at3_qtyamount_1 where tm=:x1 order by cust';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          fty0001.Caption:='Factory: '+combobox1.text;
          dt0001.Caption:='Date Period from '+formatdatetime('yyyy-MM-dd',dateedit3.date)+' to '+formatdatetime('yyyy-MM-dd',dateedit4.date);
          ppReport1.Print;
        end;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        commandtext:='select distinct j_no,j2_job,sum(t2) as t2,sum(t3) as t3,sum(exfty) as exfty,cstyle,artno from tbl_t2t3exfty_qtyamount where tm=:x1 and dt1=:x2 and dt2=:x3 group by j_no,j2_job,cstyle,artno';
        params[0].asdatetime:=tm;
        params[1].asdate:=dateedit3.date;
        params[2].asdate:=dateedit4.date;
        open;
        if not fieldbyname('j_no').isnull then begin
          if savedialog1.execute then
            exportGridtoExcel(savedialog1.filename,cxGrid1,false,true,false,'xls');
        end;
      end;
    //end else showmessage('Only for CL!');
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmprintwip.BitBtn9Click(Sender: TObject);
var
  tm:tdatetime;
  fty:string;
  cobject: TcxSSCellObject;
  i:integer;
  mn:integer;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    cxSheet1.LoadFromFile(extractfilepath(application.ExeName)+'2021 T2 Qty flow figure.xls');
    cobject:=cxSheet1.Sheet.GetCellObject(28,0);
    cobject.Text:=formatdatetime('yyyy/MM/dd',date);
    cobject:=cxSheet1.Sheet.GetCellObject(28,19);
    cobject.Text:=formatdatetime('yyyy/MM/dd',date);
    cobject:=cxSheet1.Sheet.GetCellObject(28,38);
    cobject.Text:=formatdatetime('yyyy/MM/dd',date);
    cobject:=cxSheet1.Sheet.GetCellObject(28,57);
    cobject.Text:=formatdatetime('yyyy/MM/dd',date);
    cobject:=cxSheet1.Sheet.GetCellObject(28,76);
    cobject.Text:=formatdatetime('yyyy/MM/dd',date);

    mn:=monthof(dateedit3.date);
    //calc data
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      commandtext:='execute procedure sp_t2exfty_new(:x1,:x4,:x5)';
      params[0].asdatetime:=tm;
      params[1].asdate:=dateedit3.date;
      params[2].asdate:=dateedit4.date;
      execute;
    end;

    //export file
    i:=0;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_t2bd where fty=''CN'' and yr='+inttostr(yearof(dateedit3.date))+' and mn<='+inttostr(monthof(dateedit3.date))+' order by mn';
      open;
      first;
      while not eof do begin
        cobject:=cxSheet1.Sheet.GetCellObject(1,4+i);
        if not fieldbyname('t2qty').isnull then
        cobject.text:=fieldbyname('t2qty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(2,4+i);
        if not fieldbyname('exqty').isnull then
        cobject.text:=fieldbyname('exqty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(3,4+i);
        if not fieldbyname('bal').isnull then
        cobject.text:=fieldbyname('bal').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(4,4+i);
        if not fieldbyname('e1').isnull then
        cobject.text:=fieldbyname('e1').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(5,4+i);
        if not fieldbyname('b1').isnull then
        cobject.text:=fieldbyname('b1').asstring
        else cobject.Text:='';
        if mn>=2 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(6,4+i);
        if not fieldbyname('e2').isnull then
        cobject.text:=fieldbyname('e2').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(7,4+i);
        if not fieldbyname('b2').isnull then
        cobject.text:=fieldbyname('b2').asstring
        else cobject.Text:='';
        end;
        if mn>=3 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(8,4+i);
        if not fieldbyname('e3').isnull then
        cobject.text:=fieldbyname('e3').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(9,4+i);
        if not fieldbyname('b3').isnull then
        cobject.text:=fieldbyname('b3').asstring
        else cobject.Text:='';
        end;
        if mn>=4 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(10,4+i);
        if not fieldbyname('e4').isnull then
        cobject.text:=fieldbyname('e4').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(11,4+i);
        if not fieldbyname('b4').isnull then
        cobject.text:=fieldbyname('b4').asstring
        else cobject.Text:='';
        end;
        if mn>=5 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(12,4+i);
        if not fieldbyname('e5').isnull then
        cobject.text:=fieldbyname('e5').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(13,4+i);
        if not fieldbyname('b5').isnull then
        cobject.text:=fieldbyname('b5').asstring
        else cobject.Text:='';
        end;
        if mn>=6 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(14,4+i);
        if not fieldbyname('e6').isnull then
        cobject.text:=fieldbyname('e6').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(15,4+i);
        if not fieldbyname('b6').isnull then
        cobject.text:=fieldbyname('b6').asstring
        else cobject.Text:='';
        end;
        if mn>=7 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(16,4+i);
        if not fieldbyname('e7').isnull then
        cobject.text:=fieldbyname('e7').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(17,4+i);
        if not fieldbyname('b7').isnull then
        cobject.text:=fieldbyname('b7').asstring
        else cobject.Text:='';
        end;
        if mn>=8 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(18,4+i);
        if not fieldbyname('e8').isnull then
        cobject.text:=fieldbyname('e8').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(19,4+i);
        if not fieldbyname('b8').isnull then
        cobject.text:=fieldbyname('b8').asstring
        else cobject.Text:='';
        end;
        if mn>=9 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(20,4+i);
        if not fieldbyname('e9').isnull then
        cobject.text:=fieldbyname('e9').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(21,4+i);
        if not fieldbyname('b9').isnull then
        cobject.text:=fieldbyname('b9').asstring
        else cobject.Text:='';
        end;
        if mn>=10 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(22,4+i);
        if not fieldbyname('e10').isnull then
        cobject.text:=fieldbyname('e10').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(23,4+i);
        if not fieldbyname('b10').isnull then
        cobject.text:=fieldbyname('b10').asstring
        else cobject.Text:='';
        end;
        if mn>=11 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(24,4+i);
        if not fieldbyname('e11').isnull then
        cobject.text:=fieldbyname('e11').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(25,4+i);
        if not fieldbyname('b11').isnull then
        cobject.text:=fieldbyname('b11').asstring
        else cobject.Text:='';
        end;
        if mn>=12 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(26,4+i);
        if not fieldbyname('e12').isnull then
        cobject.text:=fieldbyname('e12').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(27,4+i);
        if not fieldbyname('b12').isnull then
        cobject.text:=fieldbyname('b12').asstring
        else cobject.Text:='';
        end;

        i:=i+1;
        application.processmessages;
        next;
      end;
    end;

    i:=0;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_t2bd where fty=''CL'' and yr='+inttostr(yearof(dateedit3.date))+' and mn<='+inttostr(monthof(dateedit3.date))+' order by mn';
      open;
      first;
      while not eof do begin
        cobject:=cxSheet1.Sheet.GetCellObject(1,23+i);
        if not fieldbyname('t2qty').isnull then
        cobject.text:=fieldbyname('t2qty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(2,23+i);
        if not fieldbyname('exqty').isnull then
        cobject.text:=fieldbyname('exqty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(3,23+i);
        if not fieldbyname('bal').isnull then
        cobject.text:=fieldbyname('bal').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(4,23+i);
        if not fieldbyname('e1').isnull then
        cobject.text:=fieldbyname('e1').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(5,23+i);
        if not fieldbyname('b1').isnull then
        cobject.text:=fieldbyname('b1').asstring
        else cobject.Text:='';
        if mn>=2 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(6,23+i);
        if not fieldbyname('e2').isnull then
        cobject.text:=fieldbyname('e2').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(7,23+i);
        if not fieldbyname('b2').isnull then
        cobject.text:=fieldbyname('b2').asstring
        else cobject.Text:='';
        end;
        if mn>=3 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(8,23+i);
        if not fieldbyname('e3').isnull then
        cobject.text:=fieldbyname('e3').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(9,23+i);
        if not fieldbyname('b3').isnull then
        cobject.text:=fieldbyname('b3').asstring
        else cobject.Text:='';
        end;
        if mn>=4 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(10,23+i);
        if not fieldbyname('e4').isnull then
        cobject.text:=fieldbyname('e4').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(11,23+i);
        if not fieldbyname('b4').isnull then
        cobject.text:=fieldbyname('b4').asstring
        else cobject.Text:='';
        end;
        if mn>=5 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(12,23+i);
        if not fieldbyname('e5').isnull then
        cobject.text:=fieldbyname('e5').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(13,23+i);
        if not fieldbyname('b5').isnull then
        cobject.text:=fieldbyname('b5').asstring
        else cobject.Text:='';
        end;
        if mn>=6 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(14,23+i);
        if not fieldbyname('e6').isnull then
        cobject.text:=fieldbyname('e6').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(15,23+i);
        if not fieldbyname('b6').isnull then
        cobject.text:=fieldbyname('b6').asstring
        else cobject.Text:='';
        end;
        if mn>=7 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(16,23+i);
        if not fieldbyname('e7').isnull then
        cobject.text:=fieldbyname('e7').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(17,23+i);
        if not fieldbyname('b7').isnull then
        cobject.text:=fieldbyname('b7').asstring
        else cobject.Text:='';
        end;
        if mn>=8 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(18,23+i);
        if not fieldbyname('e8').isnull then
        cobject.text:=fieldbyname('e8').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(19,23+i);
        if not fieldbyname('b8').isnull then
        cobject.text:=fieldbyname('b8').asstring
        else cobject.Text:='';
        end;
        if mn>=9 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(20,23+i);
        if not fieldbyname('e9').isnull then
        cobject.text:=fieldbyname('e9').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(21,23+i);
        if not fieldbyname('b9').isnull then
        cobject.text:=fieldbyname('b9').asstring
        else cobject.Text:='';
        end;
        if mn>=10 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(22,23+i);
        if not fieldbyname('e10').isnull then
        cobject.text:=fieldbyname('e10').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(23,23+i);
        if not fieldbyname('b10').isnull then
        cobject.text:=fieldbyname('b10').asstring
        else cobject.Text:='';
        end;
        if mn>=11 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(24,23+i);
        if not fieldbyname('e11').isnull then
        cobject.text:=fieldbyname('e11').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(25,23+i);
        if not fieldbyname('b11').isnull then
        cobject.text:=fieldbyname('b11').asstring
        else cobject.Text:='';
        end;
        if mn>=12 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(26,23+i);
        if not fieldbyname('e12').isnull then
        cobject.text:=fieldbyname('e12').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(27,23+i);
        if not fieldbyname('b12').isnull then
        cobject.text:=fieldbyname('b12').asstring
        else cobject.Text:='';
        end;

        i:=i+1;
        application.processmessages;
        next;
      end;
    end;

    i:=0;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_t2bd where fty=''SL'' and yr='+inttostr(yearof(dateedit3.date))+' and mn<='+inttostr(monthof(dateedit3.date))+' order by mn';
      open;
      first;
      while not eof do begin
        cobject:=cxSheet1.Sheet.GetCellObject(1,42+i);
        if not fieldbyname('t2qty').isnull then
        cobject.text:=fieldbyname('t2qty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(2,42+i);
        if not fieldbyname('exqty').isnull then
        cobject.text:=fieldbyname('exqty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(3,42+i);
        if not fieldbyname('bal').isnull then
        cobject.text:=fieldbyname('bal').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(4,42+i);
        if not fieldbyname('e1').isnull then
        cobject.text:=fieldbyname('e1').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(5,42+i);
        if not fieldbyname('b1').isnull then
        cobject.text:=fieldbyname('b1').asstring
        else cobject.Text:='';
        if mn>=2 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(6,42+i);
        if not fieldbyname('e2').isnull then
        cobject.text:=fieldbyname('e2').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(7,42+i);
        if not fieldbyname('b2').isnull then
        cobject.text:=fieldbyname('b2').asstring
        else cobject.Text:='';
        end;
        if mn>=3 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(8,42+i);
        if not fieldbyname('e3').isnull then
        cobject.text:=fieldbyname('e3').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(9,42+i);
        if not fieldbyname('b3').isnull then
        cobject.text:=fieldbyname('b3').asstring
        else cobject.Text:='';
        end;
        if mn>=4 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(10,42+i);
        if not fieldbyname('e4').isnull then
        cobject.text:=fieldbyname('e4').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(11,42+i);
        if not fieldbyname('b4').isnull then
        cobject.text:=fieldbyname('b4').asstring
        else cobject.Text:='';
        end;
        if mn>=5 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(12,42+i);
        if not fieldbyname('e5').isnull then
        cobject.text:=fieldbyname('e5').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(13,42+i);
        if not fieldbyname('b5').isnull then
        cobject.text:=fieldbyname('b5').asstring
        else cobject.Text:='';
        end;
        if mn>=6 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(14,42+i);
        if not fieldbyname('e6').isnull then
        cobject.text:=fieldbyname('e6').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(15,42+i);
        if not fieldbyname('b6').isnull then
        cobject.text:=fieldbyname('b6').asstring
        else cobject.Text:='';
        end;
        if mn>=7 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(16,42+i);
        if not fieldbyname('e7').isnull then
        cobject.text:=fieldbyname('e7').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(17,42+i);
        if not fieldbyname('b7').isnull then
        cobject.text:=fieldbyname('b7').asstring
        else cobject.Text:='';
        end;
        if mn>=8 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(18,42+i);
        if not fieldbyname('e8').isnull then
        cobject.text:=fieldbyname('e8').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(19,42+i);
        if not fieldbyname('b8').isnull then
        cobject.text:=fieldbyname('b8').asstring
        else cobject.Text:='';
        end;
        if mn>=9 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(20,42+i);
        if not fieldbyname('e9').isnull then
        cobject.text:=fieldbyname('e9').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(21,42+i);
        if not fieldbyname('b9').isnull then
        cobject.text:=fieldbyname('b9').asstring
        else cobject.Text:='';
        end;
        if mn>=10 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(22,42+i);
        if not fieldbyname('e10').isnull then
        cobject.text:=fieldbyname('e10').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(23,42+i);
        if not fieldbyname('b10').isnull then
        cobject.text:=fieldbyname('b10').asstring
        else cobject.Text:='';
        end;
        if mn>=11 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(24,42+i);
        if not fieldbyname('e11').isnull then
        cobject.text:=fieldbyname('e11').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(25,42+i);
        if not fieldbyname('b11').isnull then
        cobject.text:=fieldbyname('b11').asstring
        else cobject.Text:='';
        end;
        if mn>=12 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(26,42+i);
        if not fieldbyname('e12').isnull then
        cobject.text:=fieldbyname('e12').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(27,42+i);
        if not fieldbyname('b12').isnull then
        cobject.text:=fieldbyname('b12').asstring
        else cobject.Text:='';
        end;

        i:=i+1;
        application.processmessages;
        next;
      end;
    end;

    i:=0;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_t2bd where fty=''RX'' and yr='+inttostr(yearof(dateedit3.date))+' and mn<='+inttostr(monthof(dateedit3.date))+' order by mn';
      open;
      first;
      while not eof do begin
        cobject:=cxSheet1.Sheet.GetCellObject(1,61+i);
        if not fieldbyname('t2qty').isnull then
        cobject.text:=fieldbyname('t2qty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(2,61+i);
        if not fieldbyname('exqty').isnull then
        cobject.text:=fieldbyname('exqty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(3,61+i);
        if not fieldbyname('bal').isnull then
        cobject.text:=fieldbyname('bal').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(4,61+i);
        if not fieldbyname('e1').isnull then
        cobject.text:=fieldbyname('e1').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(5,61+i);
        if not fieldbyname('b1').isnull then
        cobject.text:=fieldbyname('b1').asstring
        else cobject.Text:='';
        if mn>=2 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(6,61+i);
        if not fieldbyname('e2').isnull then
        cobject.text:=fieldbyname('e2').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(7,61+i);
        if not fieldbyname('b2').isnull then
        cobject.text:=fieldbyname('b2').asstring
        else cobject.Text:='';
        end;
        if mn>=3 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(8,61+i);
        if not fieldbyname('e3').isnull then
        cobject.text:=fieldbyname('e3').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(9,61+i);
        if not fieldbyname('b3').isnull then
        cobject.text:=fieldbyname('b3').asstring
        else cobject.Text:='';
        end;
        if mn>=4 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(10,61+i);
        if not fieldbyname('e4').isnull then
        cobject.text:=fieldbyname('e4').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(11,61+i);
        if not fieldbyname('b4').isnull then
        cobject.text:=fieldbyname('b4').asstring
        else cobject.Text:='';
        end;
        if mn>=5 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(12,61+i);
        if not fieldbyname('e5').isnull then
        cobject.text:=fieldbyname('e5').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(13,61+i);
        if not fieldbyname('b5').isnull then
        cobject.text:=fieldbyname('b5').asstring
        else cobject.Text:='';
        end;
        if mn>=6 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(14,61+i);
        if not fieldbyname('e6').isnull then
        cobject.text:=fieldbyname('e6').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(15,61+i);
        if not fieldbyname('b6').isnull then
        cobject.text:=fieldbyname('b6').asstring
        else cobject.Text:='';
        end;
        if mn>=7 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(16,61+i);
        if not fieldbyname('e7').isnull then
        cobject.text:=fieldbyname('e7').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(17,61+i);
        if not fieldbyname('b7').isnull then
        cobject.text:=fieldbyname('b7').asstring
        else cobject.Text:='';
        end;
        if mn>=8 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(18,61+i);
        if not fieldbyname('e8').isnull then
        cobject.text:=fieldbyname('e8').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(19,61+i);
        if not fieldbyname('b8').isnull then
        cobject.text:=fieldbyname('b8').asstring
        else cobject.Text:='';
        end;
        if mn>=9 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(20,61+i);
        if not fieldbyname('e9').isnull then
        cobject.text:=fieldbyname('e9').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(21,61+i);
        if not fieldbyname('b9').isnull then
        cobject.text:=fieldbyname('b9').asstring
        else cobject.Text:='';
        end;
        if mn>=10 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(22,61+i);
        if not fieldbyname('e10').isnull then
        cobject.text:=fieldbyname('e10').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(23,61+i);
        if not fieldbyname('b10').isnull then
        cobject.text:=fieldbyname('b10').asstring
        else cobject.Text:='';
        end;
        if mn>=11 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(24,61+i);
        if not fieldbyname('e11').isnull then
        cobject.text:=fieldbyname('e11').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(25,61+i);
        if not fieldbyname('b11').isnull then
        cobject.text:=fieldbyname('b11').asstring
        else cobject.Text:='';
        end;
        if mn>=12 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(26,61+i);
        if not fieldbyname('e12').isnull then
        cobject.text:=fieldbyname('e12').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(27,61+i);
        if not fieldbyname('b12').isnull then
        cobject.text:=fieldbyname('b12').asstring
        else cobject.Text:='';
        end;

        i:=i+1;
        application.processmessages;
        next;
      end;
    end;

    i:=0;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_t2bd where fty=''GG'' and yr='+inttostr(yearof(dateedit3.date))+' and mn<='+inttostr(monthof(dateedit3.date))+' order by mn';
      open;
      first;
      while not eof do begin
        cobject:=cxSheet1.Sheet.GetCellObject(1,80+i);
        if not fieldbyname('t2qty').isnull then
        cobject.text:=fieldbyname('t2qty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(2,80+i);
        if not fieldbyname('exqty').isnull then
        cobject.text:=fieldbyname('exqty').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(3,80+i);
        if not fieldbyname('bal').isnull then
        cobject.text:=fieldbyname('bal').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(4,80+i);
        if not fieldbyname('e1').isnull then
        cobject.text:=fieldbyname('e1').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(5,80+i);
        if not fieldbyname('b1').isnull then
        cobject.text:=fieldbyname('b1').asstring
        else cobject.Text:='';
        if mn>=2 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(6,80+i);
        if not fieldbyname('e2').isnull then
        cobject.text:=fieldbyname('e2').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(7,80+i);
        if not fieldbyname('b2').isnull then
        cobject.text:=fieldbyname('b2').asstring
        else cobject.Text:='';
        end;
        if mn>=3 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(8,80+i);
        if not fieldbyname('e3').isnull then
        cobject.text:=fieldbyname('e3').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(9,80+i);
        if not fieldbyname('b3').isnull then
        cobject.text:=fieldbyname('b3').asstring
        else cobject.Text:='';
        end;
        if mn>=4 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(10,80+i);
        if not fieldbyname('e4').isnull then
        cobject.text:=fieldbyname('e4').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(11,80+i);
        if not fieldbyname('b4').isnull then
        cobject.text:=fieldbyname('b4').asstring
        else cobject.Text:='';
        end;
        if mn>=5 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(12,80+i);
        if not fieldbyname('e5').isnull then
        cobject.text:=fieldbyname('e5').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(13,80+i);
        if not fieldbyname('b5').isnull then
        cobject.text:=fieldbyname('b5').asstring
        else cobject.Text:='';
        end;
        if mn>=6 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(14,80+i);
        if not fieldbyname('e6').isnull then
        cobject.text:=fieldbyname('e6').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(15,80+i);
        if not fieldbyname('b6').isnull then
        cobject.text:=fieldbyname('b6').asstring
        else cobject.Text:='';
        end;
        if mn>=7 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(16,80+i);
        if not fieldbyname('e7').isnull then
        cobject.text:=fieldbyname('e7').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(17,80+i);
        if not fieldbyname('b7').isnull then
        cobject.text:=fieldbyname('b7').asstring
        else cobject.Text:='';
        end;
        if mn>=8 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(18,80+i);
        if not fieldbyname('e8').isnull then
        cobject.text:=fieldbyname('e8').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(19,80+i);
        if not fieldbyname('b8').isnull then
        cobject.text:=fieldbyname('b8').asstring
        else cobject.Text:='';
        end;
        if mn>=9 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(20,80+i);
        if not fieldbyname('e9').isnull then
        cobject.text:=fieldbyname('e9').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(21,80+i);
        if not fieldbyname('b9').isnull then
        cobject.text:=fieldbyname('b9').asstring
        else cobject.Text:='';
        end;
        if mn>=10 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(22,80+i);
        if not fieldbyname('e10').isnull then
        cobject.text:=fieldbyname('e10').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(23,80+i);
        if not fieldbyname('b10').isnull then
        cobject.text:=fieldbyname('b10').asstring
        else cobject.Text:='';
        end;
        if mn>=11 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(24,80+i);
        if not fieldbyname('e11').isnull then
        cobject.text:=fieldbyname('e11').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(25,80+i);
        if not fieldbyname('b11').isnull then
        cobject.text:=fieldbyname('b11').asstring
        else cobject.Text:='';
        end;
        if mn>=12 then begin
        cobject:=cxSheet1.Sheet.GetCellObject(26,80+i);
        if not fieldbyname('e12').isnull then
        cobject.text:=fieldbyname('e12').asstring
        else cobject.Text:='';
        cobject:=cxSheet1.Sheet.GetCellObject(27,80+i);
        if not fieldbyname('b12').isnull then
        cobject.text:=fieldbyname('b12').asstring
        else cobject.Text:='';
        end;

        i:=i+1;
        application.processmessages;
        next;
      end;
    end;

    savedialog1.Execute;
    if pos('XLS',uppercase(savedialog1.FileName))>0 then
    cxSheet1.savetofile(savedialog1.FileName)
    else cxSheet1.SaveToFile(savedialog1.FileName+'.xls');
  finally
    screen.cursor:=crDefault;
  end;
  //
end;

procedure Tfrmprintwip.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
