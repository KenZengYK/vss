unit dailyoutputformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, DB, DBClient, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppVar, ppViewr, ppParameter;

type
  Tfrmdailyoutput = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    wa02: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    fty001: TppLabel;
    ppLabel6: TppLabel;
    ws001: TppLabel;
    dt001: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape2: TppShape;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdailyoutput: Tfrmdailyoutput;

implementation

uses mainformu, addreportsformu;

{$R *.dfm}

procedure Tfrmdailyoutput.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmdailyoutput:=nil;
end;

procedure Tfrmdailyoutput.FormShow(Sender: TObject);
begin
  dateedit1.date:=date-7;
  dateedit2.date:=date-1;
end;

procedure Tfrmdailyoutput.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct curr_date,sum(not_sect) as sect,sum(not_output*not_sect)/sum(not_sect) as qty from view_dailyoutput_line where curr_date>=:x1 and curr_date<=:x2';
    if combobox1.text>'' then commandtext:=commandtext+' and factory='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and workshop='''+combobox2.text+'''';
    commandtext:=commandtext+' group by curr_date order by curr_date';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('curr_date').isnull then begin
      fty001.Caption:=combobox1.text;
      ws001.Caption:=combobox2.text;
      dt001.Caption:='Date Range: '+formatdatetime('yyyy/MM/dd',dateedit1.date)+' ~ '+formatdatetime('yyyy/MM/dd',dateedit2.date);
      ppreport1.print;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmdailyoutput.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(not_output*not_sect)/sum(not_sect) as qty from view_dailyoutput_line where curr_date>=:x1 and curr_date<=:x2';
    if combobox1.text>'' then commandtext:=commandtext+' and factory='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and workshop='''+combobox2.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('qty').isnull then wa02.Caption:=formatfloat('#,0.00',fieldbyname('qty').value)
    else wa02.caption:='0';
  end;
end;

procedure Tfrmdailyoutput.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.windowstate:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
