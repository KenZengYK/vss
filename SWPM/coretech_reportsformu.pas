unit coretech_reportsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppViewr, ppVar, ppParameter;

type
  Tfrmcoretech_reports = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText12: TppDBText;
    dbcl001: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText13: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText14: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText15: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel37: TppLabel;
    ppDBText22: TppDBText;
    ppLabel38: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel39: TppLabel;
    ppLine5: TppLine;
    ppDBCalc1: TppDBCalc;
    eff001: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel40: TppLabel;
    dt001: TppLabel;
    ppLabel41: TppLabel;
    ppDBText23: TppDBText;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel42: TppLabel;
    ppShape2: TppShape;
    ppLabel43: TppLabel;
    ppLabel56: TppLabel;
    ppLabel65: TppLabel;
    ppLabel80: TppLabel;
    dt002: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText35: TppDBText;
    ppDBText38: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel84: TppLabel;
    ppLine10: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel44: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcoretech_reports: Tfrmcoretech_reports;

implementation

uses mainformu, coretechformu;

{$R *.dfm}

procedure Tfrmcoretech_reports.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcoretech_reports:=nil;
end;

procedure Tfrmcoretech_reports.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct xm from tbl_coretech_d where xm is not null';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('xm').value);
      application.ProcessMessages;
      next;
    end;
  end;
  dateedit1.date:=date;
  dateedit2.date:=date;
end;

procedure Tfrmcoretech_reports.BitBtn1Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
    if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from tbl_coretech_d where bal>0 and ((sjcl>0) or (csect>0))';
    if edit1.text>'' then commandtext:=commandtext+' and j_no like '''+edit1.text+'%''';
    if edit2.text>'' then commandtext:=commandtext+' and cstyle='''+edit2.text+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and xm='''+combobox1.text+'''';
    if dateedit1.date>0 then commandtext:=commandtext+' and dt>=:x1';
    if dateedit2.date>0 then commandtext:=commandtext+' and dt<=:x2';
    if dateedit1.date>0 then params[0].asdate:=dateedit1.date;
    if dateedit2.date>0 then params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('pline').isnull then begin
      dt001.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date)+'  ~  '+formatdatetime('yyyy/MM/dd',dateedit2.date);
      ppReport1.Print;
    end;
  end;
end;

procedure Tfrmcoretech_reports.ppDetailBand1BeforePrint(Sender: TObject);
begin
  dbcl001.Caption:=formatfloat('#0',query1.fieldbyname('sjcl').value-query1.fieldbyname('xc').value);
end;

procedure Tfrmcoretech_reports.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
    if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(sjcl) as x1,sum(xc) as x2 from tbl_coretech_d where bal>0';
    if edit1.text>'' then commandtext:=commandtext+' and j_no like '''+edit1.text+'%''';
    if edit2.text>'' then commandtext:=commandtext+' and cstyle='''+edit2.text+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and xm='''+combobox1.text+'''';
    if dateedit1.date>0 then commandtext:=commandtext+' and dt>=:x1';
    if dateedit2.date>0 then commandtext:=commandtext+' and dt<=:x2';
    if dateedit1.date>0 then params[0].asdate:=dateedit1.date;
    if dateedit2.date>0 then params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('x1').isnull then eff001.Caption:=formatfloat('0.00',fieldbyname('x1').value*100.00/(fieldbyname('x1').value-fieldbyname('x2').value))
    else eff001.Caption:='0.00';
  end;
end;

procedure Tfrmcoretech_reports.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmcoretech_reports.BitBtn2Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
    if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct xm,sum(sjcl) as sjcl,sum(je) as je from tbl_coretech_d where bal>0 and ((sjcl>0) or (csect>0))';
    if edit1.text>'' then commandtext:=commandtext+' and j_no like '''+edit1.text+'%''';
    if edit2.text>'' then commandtext:=commandtext+' and cstyle='''+edit2.text+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and xm='''+combobox1.text+'''';
    if dateedit1.date>0 then commandtext:=commandtext+' and dt>=:x1';
    if dateedit2.date>0 then commandtext:=commandtext+' and dt<=:x2';
    commandtext:=commandtext+' group by xm order by xm';
    if dateedit1.date>0 then params[0].asdate:=dateedit1.date;
    if dateedit2.date>0 then params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('xm').isnull then begin
      dt002.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date)+'  ~  '+formatdatetime('yyyy/MM/dd',dateedit2.date);
      ppReport2.Print;
    end;
  end;
end;

procedure Tfrmcoretech_reports.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport2.PreviewForm.Viewer).Zoompercentage:=100;
end;

end.
