unit selenqformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Grids, DBGridEh, Buttons, Mask, rxToolEdit,
  ExtCtrls, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppStrtch, ppSubRpt, ppVar, ppViewr,
  GridsEh, ppParameter;

type
  Tfrmselenq = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query4: TClientDataSet;
    Query2: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    DataSource2: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel9: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBPipeline2: TppDBPipeline;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel14: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel15: TppLabel;
    ppDBText9: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText10: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselenq: Tfrmselenq;

implementation

uses mainformu, custenqformu;

{$R *.dfm}

procedure Tfrmselenq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmselenq:=nil;
end;

procedure Tfrmselenq.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct eqcusn from tbl_custenq1 where eqcusn is not null';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('eqcusn').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_custenq1 where eqoqty>0 order by eqno';
    open;
  end;
end;

procedure Tfrmselenq.BitBtn1Click(Sender: TObject);
begin
  if not dbgrideh1.fields[0].IsNull then begin
    with frmcustenq.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_custenq1 where eqno='''+frmselenq.query1.fieldbyname('eqno').value+'''';
      open;
    end;
    frmselenq.close;
  end;
end;

procedure Tfrmselenq.BitBtn4Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
    if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from tbl_custenq1 where 1=1';//eqoqty>0';
    if edit1.text>'' then commandtext:=commandtext+' and eqno='''+edit1.text+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and eqcusn='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and eqcat='''+combobox2.text+'''';
    if dateedit1.date>0 then commandtext:=commandtext+' and eqdt>=:x1';
    if dateedit2.date>0 then commandtext:=commandtext+' and eqdt<=:x2';
    commandtext:=commandtext+' order by eqno';
    if dateedit1.date>0 then params.ParamByName('x1').Value:=dateedit1.date;
    if dateedit2.Date>0 then params.ParamByName('x2').Value:=dateedit2.Date;
    open;
  end;
end;

procedure Tfrmselenq.BitBtn2Click(Sender: TObject);
begin
  if query1.active then ppReport1.Print;
end;

procedure Tfrmselenq.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmselenq.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if not query1.fieldbyname('eqno').isnull then begin
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select * from tbl_custenq2 where eqno=:x1 order by eqline';
      params[0].asstring:=query1.fieldbyname('eqno').value;
      open;
    end;
  end;
end;

procedure Tfrmselenq.DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  if column=dbgrideh1.Columns[0] then begin
    with query1 do begin
      editkey;
      indexname:='idx1';
      setkey;
    end;
  end else if column=dbgrideh1.Columns[1] then begin
    with query1 do begin
      editkey;
      indexname:='idx2';
      setkey;
    end;
  end;
end;

end.
