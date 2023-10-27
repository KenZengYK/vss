unit leff_wsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DateUtils, DB, DBClient,
  TeEngine, Series, TeeDBEdit, TeeDBCrossTab, ExtCtrls, TeeProcs, Chart,
  DBChart, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppParameter;

type
  Tfrmleff_ws = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    Query4: TClientDataSet;
    Query3: TClientDataSet;
    DBCrossTabSource1: TDBCrossTabSource;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    DBCrossTabSource2: TDBCrossTabSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    sub1: TppLabel;
    sub2: TppLabel;
    ppImage1: TppImage;
    Label4: TLabel;
    ComboBox2: TComboBox;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    t001: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ws001: TppLabel;
    ws002: TppLabel;
    ws003: TppLabel;
    ws004: TppLabel;
    ws005: TppLabel;
    ws006: TppLabel;
    ws007: TppLabel;
    ws008: TppLabel;
    ws009: TppLabel;
    ws010: TppLabel;
    x001: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    x004: TppLabel;
    x005: TppLabel;
    x006: TppLabel;
    x007: TppLabel;
    x008: TppLabel;
    x009: TppLabel;
    x010: TppLabel;
    y001: TppLabel;
    y002: TppLabel;
    y003: TppLabel;
    y004: TppLabel;
    y005: TppLabel;
    y006: TppLabel;
    y007: TppLabel;
    y008: TppLabel;
    y009: TppLabel;
    y010: TppLabel;
    ppLine14: TppLine;
    ppLabel2: TppLabel;
    z001: TppLabel;
    z002: TppLabel;
    z003: TppLabel;
    z004: TppLabel;
    z005: TppLabel;
    z006: TppLabel;
    z007: TppLabel;
    z008: TppLabel;
    z009: TppLabel;
    z010: TppLabel;
    ppLine15: TppLine;
    ppLabel5: TppLabel;
    w001: TppLabel;
    w002: TppLabel;
    w003: TppLabel;
    w004: TppLabel;
    w005: TppLabel;
    w006: TppLabel;
    w007: TppLabel;
    w008: TppLabel;
    w009: TppLabel;
    w010: TppLabel;
    ppLine16: TppLine;
    ws011: TppLabel;
    x011: TppLabel;
    y011: TppLabel;
    z011: TppLabel;
    w011: TppLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmleff_ws: Tfrmleff_ws;

implementation

uses mainformu, addreportsformu;

{$R *.dfm}

procedure Tfrmleff_ws.BitBtn1Click(Sender: TObject);
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
      if combobox2.Text>'' then begin
        commandtext:='execute procedure sp_analysis_temp1_1_ws(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asdate:=dt1;
        params[2].asdate:=dt2;
        params[3].AsString:=combobox2.text;
      end else begin
        commandtext:='execute procedure sp_analysis_temp1_1(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asdate:=dt1;
        params[2].asdate:=dt2;
        params[3].AsString:=combobox1.text;
      end;
      execute;
    end;
    //dbchart1.LeftAxis.Minimum:=0;
    //dbchart1.LeftAxis.Maximum:=120;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from analysis_tmp1 where tm=:x1 order by seq';
      params[0].asdatetime:=tm;
      open;
    end;
    for i:=0 to DBChart1.SeriesCount-1 do begin
      DBChart1.Series[i].Pen.Width:=2;
    end;
    s1:='c:\temp\'+formatdatetime('hhnnss',tm)+'addrpt1.bmp';
    dbchart1.SaveToBitmapFile(s1);
    ppimage1.Picture.LoadFromFile(s1);
    if combobox2.text>'' then begin
      sub1.Caption:='<  '+combobox2.text+'  >';
      t001.Caption:='Line # ';
    end else begin
      if combobox1.text>'' then sub1.Caption:='<  '+combobox1.text+'  >'
      else sub1.Caption:='< SL & KB & FJ >';
      t001.Caption:='Workshop ';
    end;
    sub2.Caption:='[ '+formatdatetime('yyyy/MM/dd',dt1)+' - '+formatdatetime('yyyy/MM/dd',dt2)+' ]';
    ppReport1.Print;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmleff_ws.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmleff_ws.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmleff_ws:=nil;
end;

procedure Tfrmleff_ws.ppHeaderBand1BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ws001.Caption:=''; ws002.Caption:=''; ws003.Caption:=''; ws004.Caption:=''; ws005.Caption:='';
  ws006.Caption:=''; ws007.Caption:=''; ws008.Caption:=''; ws009.Caption:=''; ws010.Caption:=''; ws011.caption:='';
  x001.Caption:=''; x002.Caption:=''; x003.Caption:=''; x004.Caption:=''; x005.Caption:='';
  x006.Caption:=''; x007.Caption:=''; x008.Caption:=''; x009.Caption:=''; x010.Caption:=''; x011.caption:='';
  y001.Caption:=''; y002.Caption:=''; y003.Caption:=''; y004.Caption:=''; y005.Caption:='';
  y006.Caption:=''; y007.Caption:=''; y008.Caption:=''; y009.Caption:=''; y010.Caption:=''; y011.caption:='';
  z001.Caption:=''; z002.Caption:=''; z003.Caption:=''; z004.Caption:=''; z005.Caption:='';
  z006.Caption:=''; z007.Caption:=''; z008.Caption:=''; z009.Caption:=''; z010.Caption:=''; z011.caption:='';
  w001.Caption:=''; w002.Caption:=''; w003.Caption:=''; w004.Caption:=''; w005.Caption:='';
  w006.Caption:=''; w007.Caption:=''; w008.Caption:=''; w009.Caption:=''; w010.Caption:=''; w011.caption:='';
  i:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cust,def,act,diff from analysis_tmp1 where tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        ws001.Caption:=fieldbyname('cust').value;
        x001.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y001.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z001.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w001.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w001.Caption:='0.00';
        if fieldbyname('diff').value>0 then y001.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y001.Font.Color:=clRed
        else y001.Font.Color:=clBlack;
      end else if i=2 then begin
        ws002.Caption:=fieldbyname('cust').value;
        x002.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y002.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z002.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w002.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w002.Caption:='0.00';
        if fieldbyname('diff').value>0 then y002.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y002.Font.Color:=clRed
        else y002.Font.Color:=clBlack;
      end else if i=3 then begin
        ws003.Caption:=fieldbyname('cust').value;
        x003.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y003.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z003.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w003.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w003.Caption:='0.00';
        if fieldbyname('diff').value>0 then y003.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y003.Font.Color:=clRed
        else y003.Font.Color:=clBlack;
      end else if i=4 then begin
        ws004.Caption:=fieldbyname('cust').value;
        x004.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y004.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z004.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w004.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w004.Caption:='0.00';
        if fieldbyname('diff').value>0 then y004.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y004.Font.Color:=clRed
        else y004.Font.Color:=clBlack;
      end else if i=5 then begin
        ws005.Caption:=fieldbyname('cust').value;
        x005.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y005.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z005.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w005.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w005.Caption:='0.00';
        if fieldbyname('diff').value>0 then y005.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y005.Font.Color:=clRed
        else y005.Font.Color:=clBlack;
      end else if i=6 then begin
        ws006.Caption:=fieldbyname('cust').value;
        x006.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y006.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z006.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w006.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w006.Caption:='0.00';
        if fieldbyname('diff').value>0 then y006.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y006.Font.Color:=clRed
        else y006.Font.Color:=clBlack;
      end else if i=7 then begin
        ws007.Caption:=fieldbyname('cust').value;
        x007.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y007.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z007.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w007.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w007.Caption:='0.00';
        if fieldbyname('diff').value>0 then y007.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y007.Font.Color:=clRed
        else y007.Font.Color:=clBlack;
      end else if i=8 then begin
        ws008.Caption:=fieldbyname('cust').value;
        x008.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y008.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z008.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w008.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w008.Caption:='0.00';
        if fieldbyname('diff').value>0 then y008.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y008.Font.Color:=clRed
        else y008.Font.Color:=clBlack;
      end else if i=9 then begin
        ws009.Caption:=fieldbyname('cust').value;
        x009.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y009.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z009.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w009.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w009.Caption:='0.00';
        if fieldbyname('diff').value>0 then y009.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y009.Font.Color:=clRed
        else y009.Font.Color:=clBlack;
      end else if i=10 then begin
        ws010.Caption:=fieldbyname('cust').value;
        x010.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y010.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z010.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w010.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w010.Caption:='0.00';
        if fieldbyname('diff').value>0 then y010.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y010.Font.Color:=clRed
        else y010.Font.Color:=clBlack;
      end else if i=11 then begin
        ws011.Caption:=fieldbyname('cust').value;
        x011.Caption:=formatfloat('0.00',fieldbyname('def').value);
        y011.Caption:=formatfloat('0.00',fieldbyname('act').value);
        z011.Caption:=formatfloat('0.00',fieldbyname('diff').value);
        if fieldbyname('def').value>0 then w011.Caption:=formatfloat('0.00',fieldbyname('diff').value*100.0/fieldbyname('def').value)
        else w011.Caption:='0.00';
        if fieldbyname('diff').value>0 then y011.Font.Color:=clGreen
        else if fieldbyname('diff').value<0 then y011.Font.Color:=clRed
        else y011.Font.Color:=clBlack;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
