unit onhold_wsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, TeEngine, TeeDBEdit,
  TeeDBCrossTab, Series, ExtCtrls, TeeProcs, Chart, DBChart, DB, DBClient,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppViewr, ppParameter;

type
  Tfrmonhold_ws = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    Query4: TClientDataSet;
    Query3: TClientDataSet;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    DBCrossTabSource1: TDBCrossTabSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    sub1: TppLabel;
    sub2: TppLabel;
    ppImage1: TppImage;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    t001: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ws001: TppLabel;
    ws002: TppLabel;
    ws003: TppLabel;
    ws004: TppLabel;
    ws005: TppLabel;
    ws006: TppLabel;
    x001: TppLabel;
    x0001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel11: TppLabel;
    ws007: TppLabel;
    ws008: TppLabel;
    ws009: TppLabel;
    ws010: TppLabel;
    ppLine4: TppLine;
    ppLine11: TppLine;
    x002: TppLabel;
    x0002: TppLabel;
    x003: TppLabel;
    x004: TppLabel;
    x0003: TppLabel;
    x0004: TppLabel;
    x005: TppLabel;
    x0005: TppLabel;
    x0006: TppLabel;
    x006: TppLabel;
    x007: TppLabel;
    x008: TppLabel;
    x0008: TppLabel;
    x0007: TppLabel;
    x009: TppLabel;
    x0009: TppLabel;
    x0010: TppLabel;
    x010: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    Label4: TLabel;
    ComboBox2: TComboBox;
    ppLine8: TppLine;
    ws011: TppLabel;
    x011: TppLabel;
    x0011: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmonhold_ws: Tfrmonhold_ws;

implementation

uses mainformu, addreportsformu;

{$R *.dfm}

procedure Tfrmonhold_ws.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmonhold_ws:=nil;
end;

procedure Tfrmonhold_ws.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
  s1:string;
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2008,1,1);
    if dateedit2.Date>0 then dt2:=dateedit2.date else dt2:=date;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      if combobox2.text>'' then begin
        commandtext:='execute procedure sp_analysis_temp2_ws(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asdate:=dt1;
        params[2].asdate:=dt2;
        params[3].AsString:=combobox2.text;
      end else begin
        commandtext:='execute procedure sp_analysis_temp2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asdate:=dt1;
        params[2].asdate:=dt2;
        params[3].AsString:=combobox1.text;
      end;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from analysis_tmp2 where tm=:x1 order by seq,flag';
      params[0].asdatetime:=tm;
      open;
    end;
    for i:=0 to DBChart1.SeriesCount-1 do begin
      DBChart1.Series[i].Pen.Width:=2;
    end;
    s1:='c:\temp\'+formatdatetime('hhnnss',tm)+'addrpt3.bmp';
    dbchart1.SaveToBitmapFile(s1);
    ppimage1.Picture.LoadFromFile(s1);
    if combobox2.text>'' then begin
      t001.Caption:='Line # ';
      sub1.Caption:='<  '+combobox2.text+'  >';
    end else begin
      t001.Caption:='Workshop ';
      if combobox1.text>'' then sub1.Caption:='<  '+combobox1.text+'  >'
      else sub1.Caption:='< SL & KB & FJ >';
    end;
    sub2.Caption:='[ '+formatdatetime('yyyy/MM/dd',dt1)+' - '+formatdatetime('yyyy/MM/dd',dt2)+' ]';
    ppReport1.Print;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmonhold_ws.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ws001.Caption:=''; ws002.Caption:=''; ws003.Caption:=''; ws004.Caption:=''; ws005.Caption:='';
  ws006.Caption:=''; ws007.Caption:=''; ws008.Caption:=''; ws009.Caption:=''; ws010.Caption:=''; ws011.Caption:='';
  x001.Caption:=''; x002.Caption:=''; x003.Caption:=''; x004.Caption:=''; x005.Caption:='';
  x006.Caption:=''; x007.Caption:=''; x008.Caption:=''; x009.Caption:=''; x010.Caption:=''; x011.caption:='';
  x0001.Caption:=''; x0002.Caption:=''; x0003.Caption:=''; x0004.Caption:=''; x0005.Caption:='';
  x0006.Caption:=''; x0007.Caption:=''; x0008.Caption:=''; x0009.Caption:=''; x0010.Caption:=''; x0011.caption:='';

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct seq,ws,sum(onhold) as s1,csect from analysis_tmp2 where tm=:x1 group by seq,ws,csect order by seq';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('seq').value=1 then begin
        ws001.Caption:=fieldbyname('ws').value;
        x001.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0001.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=2 then begin
        ws002.Caption:=fieldbyname('ws').value;
        x002.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0002.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=3 then begin
        ws003.Caption:=fieldbyname('ws').value;
        x003.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0003.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=4 then begin
        ws004.Caption:=fieldbyname('ws').value;
        x004.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0004.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=5 then begin
        ws005.Caption:=fieldbyname('ws').value;
        x005.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0005.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=6 then begin
        ws006.Caption:=fieldbyname('ws').value;
        x006.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0006.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=7 then begin
        ws007.Caption:=fieldbyname('ws').value;
        x007.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0007.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=8 then begin
        ws008.Caption:=fieldbyname('ws').value;
        x008.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0008.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=9 then begin
        ws009.Caption:=fieldbyname('ws').value;
        x009.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0009.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=10 then begin
        ws010.Caption:=fieldbyname('ws').value;
        x010.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0010.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end else if fieldbyname('seq').value=11 then begin
        ws011.Caption:=fieldbyname('ws').value;
        x011.Caption:=formatfloat('0.0',fieldbyname('s1').value);
        x0011.Caption:=formatfloat('0.00 %',fieldbyname('s1').value*100.0/fieldbyname('csect').value);
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmonhold_ws.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
