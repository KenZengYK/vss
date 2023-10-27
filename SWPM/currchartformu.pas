unit currchartformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, 
  DB, DBClient, StdCtrls, Buttons, Spin, dateutils,
  ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr, ppVar,
  myChkBox, ppStrtch, ppMemo, Mask, rxToolEdit, GridsEh, TeEngine, TeeProcs,
  Chart, DBChart, Series, TeeDBEdit, TeeDBCrossTab, ppParameter;

type
  Tfrmcurrchart = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    opt1: TRadioButton;
    opt2: TRadioButton;
    Edit1: TSpinEdit;
    Edit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TSpinEdit;
    Edit4: TSpinEdit;
    Label5: TLabel;
    Edit5: TSpinEdit;
    Edit6: TSpinEdit;
    Label6: TLabel;
    Edit7: TSpinEdit;
    Edit8: TSpinEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBCrossTabSource1: TDBCrossTabSource;
    DBCrossTabSource3: TDBCrossTabSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    title001: TppLabel;
    ppImage1: TppImage;
    ppImage3: TppImage;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel3: TppLabel;
    shop001: TppLabel;
    chk02: TmyCheckBox;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    year001: TppLabel;
    wk001: TppLabel;
    ppLabel7: TppLabel;
    year002: TppLabel;
    wk002: TppLabel;
    chk03: TmyCheckBox;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    year003: TppLabel;
    month003: TppLabel;
    ppLabel12: TppLabel;
    year004: TppLabel;
    month004: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine13: TppLine;
    ppLine16: TppLine;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLine25: TppLine;
    ppShape2: TppShape;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    d001: TppLabel;
    dv01: TppDBText;
    d002: TppLabel;
    d003: TppLabel;
    d004: TppLabel;
    dv02: TppDBText;
    dv03: TppDBText;
    dv04: TppDBText;
    ppLabel4: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    wkno01: TppLabel;
    wkno02: TppLabel;
    wkno03: TppLabel;
    wkno04: TppLabel;
    wkno05: TppLabel;
    wkno06: TppLabel;
    wkno07: TppLabel;
    wkno08: TppLabel;
    dv05: TppDBText;
    dv06: TppDBText;
    dv07: TppDBText;
    dv08: TppDBText;
    d005: TppLabel;
    d006: TppLabel;
    d007: TppLabel;
    d008: TppLabel;
    DBCrossTabSource4: TDBCrossTabSource;
    DBCrossTabSource2: TDBCrossTabSource;
    DBChart1: TDBChart;
    DBCrossTabSource5: TDBCrossTabSource;
    DBCrossTabSource6: TDBCrossTabSource;
    Panel4: TPanel;
    DBChart4: TDBChart;
    Series8: TBarSeries;
    DBCrossTabSource7: TDBCrossTabSource;
    DBCrossTabSource8: TDBCrossTabSource;
    DBCrossTabSource9: TDBCrossTabSource;
    DBCrossTabSource10: TDBCrossTabSource;
    DBCrossTabSource11: TDBCrossTabSource;
    DBCrossTabSource12: TDBCrossTabSource;
    ppImage6: TppImage;
    title002: TppLabel;
    ppLine30: TppLine;
    ppLine33: TppLine;
    ppLabel16: TppLabel;
    ppLine20: TppLine;
    ppLine44: TppLine;
    ppLabel13: TppLabel;
    ppLine62: TppLine;
    ppLine64: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    opt01: TppLabel;
    bl01: TppLabel;
    df01: TppLabel;
    net01: TppLabel;
    dav01: TppLabel;
    ppLine2: TppLine;
    ppLine5: TppLine;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    DBCrossTabSource13: TDBCrossTabSource;
    DBCrossTabSource14: TDBCrossTabSource;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel1: TppLabel;
    ppLine11: TppLine;
    dif01: TppLabel;
    dif02: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppMemo1: TppMemo;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    vvv01: TppLabel;
    ppLabel22: TppLabel;
    cust001: TppLabel;
    ppLabel24: TppLabel;
    cstyle001: TppLabel;
    Query6: TClientDataSet;
    Series2: TPieSeries;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLabel23: TppLabel;
    lost01: TppLabel;
    ppLine15: TppLine;
    ppLine17: TppLine;
    wkno09: TppLabel;
    wkno10: TppLabel;
    ppLine18: TppLine;
    ppLine21: TppLine;
    wkno11: TppLabel;
    wkno12: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    d009: TppLabel;
    d010: TppLabel;
    d011: TppLabel;
    d012: TppLabel;
    dv09: TppDBText;
    dv10: TppDBText;
    dv11: TppDBText;
    dv12: TppDBText;
    Query7: TClientDataSet;
    xh1: TRadioButton;
    Label9: TLabel;
    DateEdit1: TDateEdit;
    Label10: TLabel;
    DateEdit2: TDateEdit;
    chk01: TmyCheckBox;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    from001: TppLabel;
    ppLabel32: TppLabel;
    to001: TppLabel;
    DBChart3: TDBChart;
    LineSeries2: TLineSeries;
    BarSeries2: TBarSeries;
    DBCrossTabSource15: TDBCrossTabSource;
    DBCrossTabSource16: TDBCrossTabSource;
    DBCrossTabSource17: TDBCrossTabSource;
    DBCrossTabSource18: TDBCrossTabSource;
    DBCrossTabSource19: TDBCrossTabSource;
    DBChart2: TDBChart;
    DBCrossTabSource20: TDBCrossTabSource;
    Series1: TLineSeries;
    Series28: TBarSeries;
    DBCrossTabSource21: TDBCrossTabSource;
    Label7: TLabel;
    ComboBox3: TComboBox;
    Label8: TLabel;
    Edit9: TEdit;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    loss001: TppLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure opt2Click(Sender: TObject);
    procedure opt1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
    procedure calc_wkno(const TM: TDateTime);
    procedure calc_wkno1(const TM: TDateTime);
  public
    { Public declarations }
  end;

var
  frmcurrchart: Tfrmcurrchart;

implementation

uses mainformu, currcalformu, calendarchartformu;

{$R *.dfm}

procedure Tfrmcurrchart.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  ma1,mi1,ma3,mi3:integer;
  i:integer;
  def001,lost001:double;
  s1,s2:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
  if (combobox1.text>'') or (combobox2.text>'') then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      params.createparam(ftdate,'x12',ptinput);
      params.createparam(ftdate,'x13',ptinput);
      commandtext:='execute procedure sp_gen_wk52chart_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asstring:=combobox2.text;
      if opt1.Checked then begin
        params[3].asinteger:=edit1.Value;
        params[4].asinteger:=edit2.Value;
        params[5].asinteger:=edit3.value;
        params[6].asinteger:=edit4.value;
        params[7].asinteger:=0;
        params[8].asinteger:=0;
        params[9].asinteger:=0;
        params[10].asinteger:=0;
      end else if opt2.Checked then begin
        params[3].asinteger:=0;
        params[4].asinteger:=0;
        params[5].asinteger:=0;
        params[6].asinteger:=0;
        params[7].asinteger:=edit5.value;
        params[8].asinteger:=edit6.value;
        params[9].asinteger:=edit7.value;
        params[10].asinteger:=edit8.value;
      end else if xh1.Checked then begin
        params[3].asinteger:=0;
        params[4].asinteger:=0;
        params[5].asinteger:=0;
        params[6].asinteger:=0;
        params[7].asinteger:=0;
        params[8].asinteger:=0;
        params[9].asinteger:=0;
        params[10].asinteger:=0;
      end;
      params[11].asdate:=dateedit1.Date;
      params[12].asdate:=dateedit2.date;
      execute;
    end;

    dbchart1.Title.Text.clear;
    dbchart2.Title.Text.Clear;
    dbchart3.Title.Text.Clear;
    dbchart4.Title.Text.clear;
    dbchart1.Title.Text.add('Sect Hr Comparison');
    if opt1.Checked then begin
      dbchart2.Title.Text.add('Weekly DCU %');
      dbchart3.Title.Text.add('Weekly DCU %');
    end else if opt2.checked then begin
      dbchart2.Title.Text.add('Monthly DCU %');
      dbchart3.Title.Text.add('Monthly DCU %');
    end else if xh1.Checked then begin
      dbchart2.Title.Text.add('Daily DCU %');
      dbchart3.Title.Text.add('Daily DCU %');
    end;
    def001:=0;lost001:=0;
    with query7 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from wk52_tmp_02 a where tm=:x1 and seq=(select max(seq) from wk52_tmp_02 b where a.tm=b.tm)';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('ct01').isnull then def001:=def001+fieldbyname('ct01').value;
      if not fieldbyname('ct02').isnull then def001:=def001+fieldbyname('ct02').value;
      if not fieldbyname('ct03').isnull then def001:=def001+fieldbyname('ct03').value;
      if not fieldbyname('ct04').isnull then def001:=def001+fieldbyname('ct04').value;
      if not fieldbyname('ct05').isnull then def001:=def001+fieldbyname('ct05').value;
      if not fieldbyname('ct06').isnull then def001:=def001+fieldbyname('ct06').value;
      if not fieldbyname('ct07').isnull then def001:=def001+fieldbyname('ct07').value;
      if not fieldbyname('ct08').isnull then def001:=def001+fieldbyname('ct08').value;
      if not fieldbyname('ct09').isnull then def001:=def001+fieldbyname('ct09').value;
      if not fieldbyname('ct10').isnull then def001:=def001+fieldbyname('ct10').value;
      if not fieldbyname('ct11').isnull then def001:=def001+fieldbyname('ct11').value;
      if not fieldbyname('ct12').isnull then def001:=def001+fieldbyname('ct12').value;
      if not fieldbyname('t01').isnull then lost001:=lost001+fieldbyname('t01').value;
      if not fieldbyname('t02').isnull then lost001:=lost001+fieldbyname('t02').value;
      if not fieldbyname('t03').isnull then lost001:=lost001+fieldbyname('t03').value;
      if not fieldbyname('t04').isnull then lost001:=lost001+fieldbyname('t04').value;
      if not fieldbyname('t05').isnull then lost001:=lost001+fieldbyname('t05').value;
      if not fieldbyname('t06').isnull then lost001:=lost001+fieldbyname('t06').value;
      if not fieldbyname('t07').isnull then lost001:=lost001+fieldbyname('t07').value;
      if not fieldbyname('t08').isnull then lost001:=lost001+fieldbyname('t08').value;
      if not fieldbyname('t09').isnull then lost001:=lost001+fieldbyname('t09').value;
      if not fieldbyname('t10').isnull then lost001:=lost001+fieldbyname('t10').value;
      if not fieldbyname('t11').isnull then lost001:=lost001+fieldbyname('t11').value;
      if not fieldbyname('t12').isnull then lost001:=lost001+fieldbyname('t12').value;
    end;

    s1:=formatfloat('+0.0;-0.0',lost001-def001);
    if def001>0 then s2:=formatfloat('+0.00%;-0.00%',lost001*100.0/def001-100.0)
    else s2:='0.00%';

    if combobox1.text>'' then begin
      dbchart4.Title.Text.add('Pie Chart of Capacity Loss - '+combobox1.text+' Factory  ('+s1+' sect hr, '+s2+')');
    end else if combobox2.Text>'' then begin
      dbchart4.Title.Text.add('Pie Chart of Capacity Loss - '+combobox2.text+'  ('+s1+' sect hr, '+s2+')');
    end;
    
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select min(dcu) as x5,max(dcu) as x6 from wk52_tmpchart where tm=:x1';
      params[0].asdatetime:=tm;
      open;
      if fieldbyname('x5').value>=5 then
      mi3:=(round(fieldbyname('x5').value-5) div 10) *10
      else mi3:=(round(fieldbyname('x5').value-0) div 10) *10;
      ma3:=(round(fieldbyname('x6').value+10) div 10) *10;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select min(cu) as x1,max(cu) as x2 from wk52_tmp_03 where tm=:x1';
      params[0].asdatetime:=tm;
      open;
      if fieldbyname('x1').value>=5 then
      mi1:=(round(fieldbyname('x1').value-5) div 10) *10
      else mi1:=(round(fieldbyname('x1').value-0) div 10) *10;
      ma1:=(round(fieldbyname('x2').value+10) div 10) *10;
    end;
    dbchart1.LeftAxis.Maximum:=ma1;
    dbchart1.LeftAxis.Minimum:=mi1;
    dbchart3.LeftAxis.Maximum:=ma3;
    dbchart3.LeftAxis.Minimum:=mi3;
    //dbchart4.LeftAxis.Maximum:=ma1;
    //dbchart4.LeftAxis.Minimum:=mi1;
    dbchart2.LeftAxis.Maximum:=ma3;
    dbchart2.LeftAxis.Minimum:=mi3;

    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from wk52_tmpchart where tm=:x1 and seq>-1';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop<>'''+combobox2.text+''''
      else if combobox1.text>'' then commandtext:=commandtext+' and tshop<>'''+combobox1.text+' Fty'' order by seq,tshop';
      params[0].asdatetime:=tm;
      open;
    end;

    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from wk52_tmpchart where tm=:x1 and seq=-1';
      params[0].asdatetime:=tm;
      open;
    end;
    with query6 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from wk52_tmp_05 where tm=:x1 order by seq';
      params[0].asdatetime:=tm;
      open;
    end;
    calc_wkno(tm);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from wk52_tmp_02 where tm=:x1 order by seq';
      params[0].asdatetime:=tm;
      open;
    end;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from wk52_tmp_03 where tm=:x1';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop<>'''+combobox2.text+''''
      else if combobox1.text>'' then commandtext:=commandtext+' and tshop<>'''+combobox1.text+' Fty''';
      commandtext:=commandtext+' order by seq,typ desc';
      params[0].asdatetime:=tm;
      open;
    end;
    dbchart2.Series[0].Pen.Width:=5;
    dbchart3.Series[0].Pen.Width:=5;
    //clGreen/clNavy/clOlive/clPurple/clTeal/clRed/clLime/clBlue/clAqua/clYellow/clFuchsia/clMaroon/clMoneyGreen
    for i:=1 to dbchart3.SeriesCount-1 do begin
      dbchart3.Series[i].Pen.Width:=1;
      if i=1 then dbchart3.Series[i].Brush.Color:=clGreen
      else if i=2 then dbchart3.Series[i].Color:=clNavy
      else if i=3 then dbchart3.Series[i].Color:=clOlive
      else if i=4 then dbchart3.Series[i].Color:=clPurple
      else if i=5 then dbchart3.Series[i].Color:=clTeal
      else if i=6 then dbchart3.Series[i].Color:=clRed
      else if i=7 then dbchart3.Series[i].Color:=clLime
      else if i=8 then dbchart3.Series[i].Color:=clBlue
      else if i=9 then dbchart3.Series[i].Color:=clAqua
      else if i=10 then dbchart3.Series[i].Color:=clYellow
      else if i=11 then dbchart3.Series[i].Color:=clFuchsia
      else if i=12 then dbchart3.Series[i].Color:=clMaroon
      else if i=13 then dbchart3.Series[i].Color:=clMoneyGreen;
    end;
    for i:=1 to dbchart2.SeriesCount-1 do begin
      dbchart2.Series[i].Pen.Width:=1;
      if i=1 then dbchart2.Series[i].Brush.Color:=clGreen
      else if i=2 then dbchart2.Series[i].Color:=clNavy
      else if i=3 then dbchart2.Series[i].Color:=clOlive
      else if i=4 then dbchart2.Series[i].Color:=clPurple
      else if i=5 then dbchart2.Series[i].Color:=clTeal
      else if i=6 then dbchart2.Series[i].Color:=clRed
      else if i=7 then dbchart2.Series[i].Color:=clLime
      else if i=8 then dbchart2.Series[i].Color:=clBlue
      else if i=9 then dbchart2.Series[i].Color:=clAqua
      else if i=10 then dbchart2.Series[i].Color:=clYellow
      else if i=11 then dbchart2.Series[i].Color:=clFuchsia
      else if i=12 then dbchart2.Series[i].Color:=clMaroon
      else if i=13 then dbchart2.Series[i].Color:=clMoneyGreen;
    end;
    for i:=0 to dbchart1.SeriesCount-1 do begin
      if i=0 then dbchart1.Series[i].Color:=clGreen
      else if i=1 then dbchart1.Series[i].Color:=clNavy
      else if i=2 then dbchart1.Series[i].Color:=clOlive
      else if i=3 then dbchart1.Series[i].Color:=clPurple
      else if i=4 then dbchart1.Series[i].Color:=clTeal
      else if i=5 then dbchart1.Series[i].Color:=clRed
      else if i=6 then dbchart1.Series[i].Color:=clLime
      else if i=7 then dbchart1.Series[i].Color:=clBlue
      else if i=8 then dbchart1.Series[i].Color:=clAqua
      else if i=9 then dbchart1.Series[i].Color:=clYellow
      else if i=10 then dbchart1.Series[i].Color:=clFuchsia
      else if i=11 then dbchart1.Series[i].Color:=clMaroon
      else if i=12 then dbchart1.Series[i].Color:=clMoneyGreen;
    end;

  end else showmessage('Please select factory or workshop first!');
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcurrchart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcurrchart:=nil;
end;

procedure Tfrmcurrchart.FormShow(Sender: TObject);
begin
  {
  edit1.Value:=yearof(date);
  edit2.value:=weekof(date);
  edit3.value:=yearof(date);
  edit4.value:=weekof(date);
  opt1.Checked:=true;

  opt2.Checked:=false;
  edit5.Enabled:=false;
  edit6.Enabled:=false;
  edit7.Enabled:=false;
  edit8.Enabled:=false;
  }
  dbchart1.Title.Text.clear;
  dbchart3.Title.Text.clear;
  dbchart4.Title.Text.Clear;
  dbchart2.Title.Text.Clear;
  {
  combobox2.items.clear;
  with  query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where lactive=1 and tshop is not null';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
  }
end;

procedure Tfrmcurrchart.opt2Click(Sender: TObject);
begin
  if opt2.Checked then begin
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    
    edit5.Enabled:=true;
    edit6.Enabled:=true;
    edit7.Enabled:=true;
    edit8.Enabled:=true;
    edit5.Value:=yearof(date);
    edit6.Value:=monthof(date);
    edit7.Value:=yearof(date);
    edit8.Value:=monthof(date);
  end;
end;

procedure Tfrmcurrchart.opt1Click(Sender: TObject);
begin
  if opt1.Checked then begin
    edit1.Enabled:=true;
    edit2.Enabled:=true;
    edit3.Enabled:=true;
    edit4.Enabled:=true;
    edit1.Value:=yearof(date);
    edit2.value:=weekof(date);
    edit3.value:=yearof(date);
    edit4.value:=weekof(date);

    edit5.Enabled:=false;
    edit6.Enabled:=false;
    edit7.Enabled:=false;
    edit8.Enabled:=false;
  end;
end;

procedure Tfrmcurrchart.BitBtn2Click(Sender: TObject);
var
  s1,s2,s3,s4:string;
  tm:tdatetime;
begin
  if directoryexists('c:\temp') then createdir('c:\temp');
  s1:='c:\temp\'+formatdatetime('hhnnss',now)+'O.bmp';
  s2:='c:\temp\'+formatdatetime('hhnnss',now)+'B.bmp';
  s3:='c:\temp\'+formatdatetime('hhnnss',now)+'D.bmp';
  s4:='c:\temp\'+formatdatetime('hhnnss',now)+'O1.bmp';
  //s5:='c:\temp\'+formatdatetime('hhnnss',now)+'B1.bmp';
  //s6:='c:\temp\'+formatdatetime('hhnnss',now)+'D1.bmp';
  dbchart1.SaveToBitmapFile(s1);
  dbchart2.SaveToBitmapFile(s2);
  dbchart3.SaveToBitmapFile(s3);
  dbchart4.SaveToBitmapFile(s4);
  //dbchart5.SaveToBitmapFile(s5);
  //dbchart6.SaveToBitmapFile(s6);
  if query3.Active then begin
    tm:=query1.fieldbyname('tm').value;
    fty001.Caption:=combobox1.text;
    shop001.Caption:=combobox2.text;
    cust001.Caption:=ComboBox3.Text;
    cstyle001.Caption:=Edit9.text;
    chk01.Checked:=xh1.Checked;
    chk02.Checked:=opt1.Checked;
    chk03.Checked:=opt2.Checked;
    //if combobox2.Text>'' then title002.Caption:='- by Line  '
    //else if combobox1.Text>'' then title002.Caption:='- by Workshop  ';
    if combobox2.text>'' then title001.Caption:='Workshop''s Capacity Utilization Analysis report by line'
    else if combobox1.text>'' then title001.Caption:='Factory''s Capacity Utilization Analysis report by workshop';
    if xh1.Checked then begin
      from001.Caption:=dateedit1.Text;
      to001.Caption:=dateedit2.Text;
    end else begin
      from001.Caption:='';
      to001.Caption:='';
    end;
    if opt1.Checked then begin
      year001.Caption:=inttostr(edit1.value);
      wk001.Caption:=inttostr(edit2.value);
      year002.Caption:=inttostr(edit3.value);
      wk002.Caption:=inttostr(edit4.value);
    end else begin
      year001.Caption:='';
      wk001.Caption:='';
      year002.Caption:='';
      wk002.Caption:='';
    end;
    if opt2.Checked then begin
      year003.Caption:=inttostr(edit5.value);
      month003.Caption:=inttostr(edit6.Value);
      year004.Caption:=inttostr(edit7.value);
      month004.Caption:=inttostr(edit8.value);
    end else begin
      year003.Caption:='';
      month003.Caption:='';
      year004.Caption:='';
      month004.Caption:='';
    end;
    calc_wkno1(tm);
    ppimage6.Picture.LoadFromFile(s1);
    //ppimage3.Picture.LoadFromFile(s3);
    if xh1.Checked then
      ppimage3.Picture.LoadFromFile(s2)
    else ppimage3.Picture.LoadFromFile(s3);
    ppimage1.Picture.LoadFromFile(s4);
    //ppimage5.Picture.LoadFromFile(s5);
    //ppimage6.Picture.LoadFromFile(s6);
    ppReport1.Print;
  end;
end;

procedure Tfrmcurrchart.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcurrchart.calc_wkno(const TM: TDateTime);
var
  i1:integer;
  s1:string;
begin
  i1:=0;
  dbgrideh1.Columns[1].Title.caption:='';
  dbgrideh1.Columns[2].Title.caption:='';
  dbgrideh1.Columns[3].Title.caption:='';
  dbgrideh1.Columns[4].Title.caption:='';
  dbgrideh1.Columns[5].Title.caption:='';
  dbgrideh1.Columns[6].Title.caption:='';
  dbgrideh1.Columns[7].Title.caption:='';
  dbgrideh1.Columns[8].Title.caption:='';
  dbgrideh1.Columns[9].Title.caption:='';
  dbgrideh1.Columns[10].Title.caption:='';
  dbgrideh1.Columns[11].Title.caption:='';
  dbgrideh1.Columns[12].Title.caption:='';
  dbgrideh1.Columns[13].Title.caption:='';
  dbgrideh1.Columns[14].Title.caption:='';
  dbgrideh1.Columns[15].Title.caption:='';
  dbgrideh1.Columns[16].Title.caption:='';
  dbgrideh1.Columns[17].Title.caption:='';
  dbgrideh1.Columns[18].Title.caption:='';
  dbgrideh1.Columns[19].Title.caption:='';
  dbgrideh1.Columns[20].Title.caption:='';
  dbgrideh1.Columns[21].Title.caption:='';
  dbgrideh1.Columns[22].Title.caption:='';
  dbgrideh1.Columns[23].Title.caption:='';
  dbgrideh1.Columns[24].Title.caption:='';
  dbgrideh1.Columns[25].Title.caption:='';
  dbgrideh1.Columns[26].Title.caption:='';
  dbgrideh1.Columns[27].Title.caption:='';
  dbgrideh1.Columns[28].Title.caption:='';
  dbgrideh1.Columns[29].Title.caption:='';
  dbgrideh1.Columns[30].Title.caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct yno,wkno from wk52_tmpchart where tm=:x1 order by yno,wkno';
    params[0].asdatetime:=tm;
    open;
    first;
    while not eof do begin
      s1:=fieldbyname('yno').value+'-'+copy('0'+fieldbyname('wkno').value,length('0'+fieldbyname('wkno').value)-1,2);
      i1:=i1+1;
      if i1=1 then begin
        dbgrideh1.Columns[1].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[2].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[3].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[4].title.caption:=s1+'|Net TTL';
      end else if i1=2 then begin
        dbgrideh1.Columns[5].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[6].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[7].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[8].title.caption:=s1+'|Net TTL';
      end else if i1=3 then begin
        dbgrideh1.Columns[9].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[10].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[11].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[12].title.caption:=s1+'|Net TTL';
      end else if i1=4 then begin
        dbgrideh1.Columns[13].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[14].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[15].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[16].title.caption:=s1+'|Net TTL';
      end else if i1=5 then begin
        dbgrideh1.Columns[17].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[18].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[19].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[20].title.caption:=s1+'|Net TTL';
      end else if i1=6 then begin
        dbgrideh1.Columns[21].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[22].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[23].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[24].title.caption:=s1+'|Net TTL';
      end else if i1=7 then begin
        dbgrideh1.Columns[25].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[26].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[27].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[28].title.caption:=s1+'|Net TTL';
      end else if i1=8 then begin
        dbgrideh1.Columns[29].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[30].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[31].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[32].title.caption:=s1+'|Net TTL';
      end else if i1=9 then begin
        dbgrideh1.Columns[33].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[34].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[35].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[36].title.caption:=s1+'|Net TTL';
      end else if i1=10 then begin
        dbgrideh1.Columns[37].title.caption:=s1+'|OCU';
        dbgrideh1.Columns[38].title.caption:=s1+'|BCU';
        dbgrideh1.Columns[39].title.caption:=s1+'|DCU';
        dbgrideh1.Columns[40].title.caption:=s1+'|Net TTL';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmcurrchart.calc_wkno1(const TM: TDateTime);
var
  i1:integer;
  s1:string;
begin
  i1:=0;
  wkno01.Caption:='';
  wkno02.Caption:='';
  wkno03.Caption:='';
  wkno04.Caption:='';
  wkno05.Caption:='';
  wkno06.Caption:='';
  wkno07.Caption:='';
  wkno08.Caption:='';
  wkno09.Caption:='';
  wkno10.Caption:='';
  wkno11.Caption:='';
  wkno12.Caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct yno,wkno from wk52_tmpchart where tm=:x1 order by yno,wkno';
    params[0].asdatetime:=tm;
    open;
    first;
    while not eof do begin
      if xh1.Checked then s1:=fieldbyname('yno').value
      else s1:=fieldbyname('yno').value+'-'+copy('0'+fieldbyname('wkno').value,length('0'+fieldbyname('wkno').value)-1,2);
      i1:=i1+1;
      if i1=1 then wkno01.Caption:=s1
      else if i1=2 then wkno02.Caption:=s1
      else if i1=3 then wkno03.Caption:=s1
      else if i1=4 then wkno04.Caption:=s1
      else if i1=5 then wkno05.Caption:=s1
      else if i1=6 then wkno06.Caption:=s1
      else if i1=7 then wkno07.Caption:=s1
      else if i1=8 then wkno08.Caption:=s1
      else if i1=9 then wkno09.Caption:=s1
      else if i1=10 then wkno10.Caption:=s1
      else if i1=11 then wkno11.Caption:=s1
      else if i1=12 then wkno12.Caption:=s1;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmcurrchart.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  if wkno02.Caption>'' then begin
    d002.Visible:=true;
  end else begin
    d002.Visible:=false;
  end;
  if wkno03.Caption>'' then begin
    d003.Visible:=true;
  end else begin
    d003.Visible:=false;
  end;
  if wkno04.Caption>'' then begin
    d004.Visible:=true;
  end else begin
    d004.Visible:=false;
  end;
  if wkno05.Caption>'' then begin
    d005.Visible:=true;
  end else begin
    d005.Visible:=false;
  end;
  if wkno06.Caption>'' then begin
    d006.Visible:=true;
  end else begin
    d006.Visible:=false;
  end;
  if wkno07.Caption>'' then begin
    d007.Visible:=true;
  end else begin
    d007.Visible:=false;
  end;
  if wkno08.Caption>'' then begin
    d008.Visible:=true;
  end else begin
    d008.Visible:=false;
  end;
  if wkno09.Caption>'' then d009.Visible:=true else d009.Visible:=false;
  if wkno10.Caption>'' then d010.Visible:=true else d010.Visible:=false;
  if wkno11.Caption>'' then d011.Visible:=true else d011.Visible:=false;
  if wkno12.Caption>'' then d012.Visible:=true else d012.Visible:=false;
end;

procedure Tfrmcurrchart.ppDetailBand1BeforePrint(Sender: TObject);
var
  ot1,ot2,ot3,ot4,ot5,ot6,ot7,ot8,ot9,ot10,ot11,ot12:double;
  ct1,ct2,ct3,ct4,ct5,ct6,ct7,ct8,ct9,ct10,ct11,ct12:double;
  w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12:double;
  t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12:double;
begin
  if not query3.fieldbyname('d01').isnull then
  if dv01.FieldValue>=97 then dv01.Font.Color:=clGreen
  else dv01.Font.Color:=clRed;
  if not query3.fieldbyname('d02').isnull then
  if dv02.FieldValue>=97 then dv02.Font.Color:=clGreen
  else dv02.Font.Color:=clRed;
  if not query3.fieldbyname('d03').isnull then
  if dv03.FieldValue>=97 then dv03.Font.Color:=clGreen
  else dv03.Font.Color:=clRed;
  if not query3.fieldbyname('d04').isnull then
  if dv04.FieldValue>=97 then dv04.Font.Color:=clGreen
  else dv04.Font.Color:=clRed;
  if not query3.fieldbyname('d05').isnull then
  if dv05.FieldValue>=97 then dv05.Font.Color:=clGreen
  else dv05.Font.Color:=clRed;
  if not query3.fieldbyname('d06').isnull then
  if dv06.FieldValue>=97 then dv06.Font.Color:=clGreen
  else dv06.Font.Color:=clRed;
  if not query3.fieldbyname('d07').isnull then
  if dv07.FieldValue>=97 then dv07.Font.Color:=clGreen
  else dv07.Font.Color:=clRed;
  if not query3.fieldbyname('d08').isnull then
  if dv08.FieldValue>=97 then dv08.Font.Color:=clGreen
  else dv08.Font.Color:=clRed;
  if not query3.fieldbyname('d09').isnull then
  if dv09.FieldValue>=97 then dv09.Font.Color:=clGreen
  else dv09.Font.Color:=clRed;
  if not query3.fieldbyname('d10').isnull then
  if dv10.FieldValue>=97 then dv10.Font.Color:=clGreen
  else dv10.Font.Color:=clRed;
  if not query3.fieldbyname('d11').isnull then
  if dv11.FieldValue>=97 then dv11.Font.Color:=clGreen
  else dv11.Font.Color:=clRed;
  if not query3.fieldbyname('d12').isnull then
  if dv12.FieldValue>=97 then dv12.Font.Color:=clGreen
  else dv12.Font.Color:=clRed;


  ot1:=0;ot2:=0;ot3:=0;ot4:=0;ot5:=0;ot6:=0;ot7:=0;ot8:=0;ot9:=0;ot10:=0;ot11:=0;ot12:=0;
  ct1:=0;ct2:=0;ct3:=0;ct4:=0;ct5:=0;ct6:=0;ct7:=0;ct8:=0;ct9:=0;ct10:=0;ct11:=0;ct12:=0;
  w1:=0;w2:=0;w3:=0;w4:=0;w5:=0;w6:=0;w7:=0;w8:=0;w9:=0;w10:=0;w11:=0;w12:=0;
  t1:=0;t2:=0;t3:=0;t4:=0;t5:=0;t6:=0;t7:=0;t8:=0;t9:=0;t10:=0;t11:=0;t12:=0;
  if not query3.fieldbyname('ot01').isnull then ot1:=query3.fieldbyname('ot01').value;
  if not query3.fieldbyname('ot02').isnull then ot2:=query3.fieldbyname('ot02').value;
  if not query3.fieldbyname('ot03').isnull then ot3:=query3.fieldbyname('ot03').value;
  if not query3.fieldbyname('ot04').isnull then ot4:=query3.fieldbyname('ot04').value;
  if not query3.fieldbyname('ot05').isnull then ot5:=query3.fieldbyname('ot05').value;
  if not query3.fieldbyname('ot06').isnull then ot6:=query3.fieldbyname('ot06').value;
  if not query3.fieldbyname('ot07').isnull then ot7:=query3.fieldbyname('ot07').value;
  if not query3.fieldbyname('ot08').isnull then ot8:=query3.fieldbyname('ot08').value;
  if not query3.fieldbyname('ot09').isnull then ot9:=query3.fieldbyname('ot09').value;
  if not query3.fieldbyname('ot10').isnull then ot10:=query3.fieldbyname('ot10').value;
  if not query3.fieldbyname('ot11').isnull then ot11:=query3.fieldbyname('ot11').value;
  if not query3.fieldbyname('ot12').isnull then ot12:=query3.fieldbyname('ot12').value;
  if not query3.fieldbyname('ct01').isnull then ct1:=query3.fieldbyname('ct01').value;
  if not query3.fieldbyname('ct02').isnull then ct2:=query3.fieldbyname('ct02').value;
  if not query3.fieldbyname('ct03').isnull then ct3:=query3.fieldbyname('ct03').value;
  if not query3.fieldbyname('ct04').isnull then ct4:=query3.fieldbyname('ct04').value;
  if not query3.fieldbyname('ct05').isnull then ct5:=query3.fieldbyname('ct05').value;
  if not query3.fieldbyname('ct06').isnull then ct6:=query3.fieldbyname('ct06').value;
  if not query3.fieldbyname('ct07').isnull then ct7:=query3.fieldbyname('ct07').value;
  if not query3.fieldbyname('ct08').isnull then ct8:=query3.fieldbyname('ct08').value;
  if not query3.fieldbyname('ct09').isnull then ct9:=query3.fieldbyname('ct09').value;
  if not query3.fieldbyname('ct10').isnull then ct10:=query3.fieldbyname('ct10').value;
  if not query3.fieldbyname('ct11').isnull then ct11:=query3.fieldbyname('ct11').value;
  if not query3.fieldbyname('ct12').isnull then ct12:=query3.fieldbyname('ct12').value;
  if not query3.fieldbyname('w01').isnull then w1:=query3.fieldbyname('w01').value;
  if not query3.fieldbyname('w02').isnull then w2:=query3.fieldbyname('w02').value;
  if not query3.fieldbyname('w03').isnull then w3:=query3.fieldbyname('w03').value;
  if not query3.fieldbyname('w04').isnull then w4:=query3.fieldbyname('w04').value;
  if not query3.fieldbyname('w05').isnull then w5:=query3.fieldbyname('w05').value;
  if not query3.fieldbyname('w06').isnull then w6:=query3.fieldbyname('w06').value;
  if not query3.fieldbyname('w07').isnull then w7:=query3.fieldbyname('w07').value;
  if not query3.fieldbyname('w08').isnull then w8:=query3.fieldbyname('w08').value;
  if not query3.fieldbyname('w09').isnull then w9:=query3.fieldbyname('w09').value;
  if not query3.fieldbyname('w10').isnull then w10:=query3.fieldbyname('w10').value;
  if not query3.fieldbyname('w11').isnull then w11:=query3.fieldbyname('w11').value;
  if not query3.fieldbyname('w12').isnull then w12:=query3.fieldbyname('w12').value;
  if not query3.fieldbyname('t01').isnull then t1:=query3.fieldbyname('t01').value;
  if not query3.fieldbyname('t02').isnull then t2:=query3.fieldbyname('t02').value;
  if not query3.fieldbyname('t03').isnull then t3:=query3.fieldbyname('t03').value;
  if not query3.fieldbyname('t04').isnull then t4:=query3.fieldbyname('t04').value;
  if not query3.fieldbyname('t05').isnull then t5:=query3.fieldbyname('t05').value;
  if not query3.fieldbyname('t06').isnull then t6:=query3.fieldbyname('t06').value;
  if not query3.fieldbyname('t07').isnull then t7:=query3.fieldbyname('t07').value;
  if not query3.fieldbyname('t08').isnull then t8:=query3.fieldbyname('t08').value;
  if not query3.fieldbyname('t09').isnull then t9:=query3.fieldbyname('t09').value;
  if not query3.fieldbyname('t10').isnull then t10:=query3.fieldbyname('t10').value;
  if not query3.fieldbyname('t11').isnull then t11:=query3.fieldbyname('t11').value;
  if not query3.fieldbyname('t12').isnull then t12:=query3.fieldbyname('t12').value;

  opt01.Caption:=formatfloat('0.0',ot1+ot2+ot3+ot4+ot5+ot6+ot7+ot8+ot9+ot10+ot11+ot12);
  bl01.Caption:=formatfloat('0.0',w1+w2+w3+w4+w5+w6+w7+w8+w9+w10+w11+w12);
  df01.Caption:=formatfloat('0.0',ct1+ct2+ct3+ct4+ct5+ct6+ct7+ct8+ct9+ct10+ct11+ct12);
  dif01.Caption:=formatfloat('+0.0;-0.0',ct1+ct2+ct3+ct4+ct5+ct6+ct7+ct8+ct9+ct10+ct11+ct12-(ot1+ot2+ot3+ot4+ot5+ot6+ot7+ot8+ot9+ot10+ot11+ot12));
  dif02.Caption:=formatfloat('+0.0;-0.0',ct1+ct2+ct3+ct4+ct5+ct6+ct7+ct8+ct9+ct10+ct11+ct12-(w1+w2+w3+w4+w5+w6+w7+w8+w9+w10+w11+w12));
  net01.Caption:=formatfloat('0.0',t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11+t12);
  lost01.Caption:=formatfloat('+0.0;-0.0',t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11+t12-(ct1+ct2+ct3+ct4+ct5+ct6+ct7+ct8+ct9+ct10+ct11+ct12));
  dav01.Caption:=formatfloat('0.00',(t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11+t12)*100.0/(ct1+ct2+ct3+ct4+ct5+ct6+ct7+ct8+ct9+ct10+ct11+ct12));
  if (t1+t2+t3+t4+t5+t6+t7+t8)*100.0/(ct1+ct2+ct3+ct4+ct5+ct6+ct7+ct8+ct9+ct10+ct11+ct12)>=97 then dav01.Font.Color:=clGreen
  else dav01.Font.Color:=clRed;
  vvv01.Caption:=formatfloat('+0.00;-0.00',(t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11+t12)*100.0/(ct1+ct2+ct3+ct4+ct5+ct6+ct7+ct8+ct9+ct10+ct11+ct12)-97.0);
  loss001.Caption:=formatfloat('+0.00;-0.00',(t1+t2+t3+t4+t5+t6+t7+t8+t9+t10+t11+t12)*100.0/(ct1+ct2+ct3+ct4+ct5+ct6+ct7+ct8+ct9+ct10+ct11+ct12)-100.0);
end;

end.
