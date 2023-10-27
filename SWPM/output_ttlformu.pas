unit output_ttlformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppDBPipe, DB, ppBands, ppClass, ppCtrls, ppPrnabl,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, DBClient, StdCtrls, Spin,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, TeeDBEdit,
  TeeDBCrossTab, Buttons, ppViewr, ppParameter;

type
  Tfrmoutput_ttl = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    Query4: TClientDataSet;
    Query3: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    sub1: TppLabel;
    sub2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    GroupBox1: TGroupBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    ppLine1: TppLine;
    DBChart1: TDBChart;
    ppImage1: TppImage;
    Series1: TLineSeries;
    DBCrossTabSource1: TDBCrossTabSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel2: TppLabel;
    sub3: TppLabel;
    sub4: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
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
    x0001: TppLabel;
    x0002: TppLabel;
    x0003: TppLabel;
    x0004: TppLabel;
    x011: TppLabel;
    x012: TppLabel;
    x013: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine11: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    y001: TppLabel;
    y0001: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    a001: TppLabel;
    a002: TppLabel;
    ppLabel26: TppLabel;
    a003: TppLabel;
    ppLine23: TppLine;
    ppLabel20: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    x014: TppLabel;
    y002: TppLabel;
    y003: TppLabel;
    y004: TppLabel;
    y005: TppLabel;
    y006: TppLabel;
    y007: TppLabel;
    y008: TppLabel;
    y009: TppLabel;
    y010: TppLabel;
    y014: TppLabel;
    y011: TppLabel;
    y012: TppLabel;
    y013: TppLabel;
    y0002: TppLabel;
    y0003: TppLabel;
    y0004: TppLabel;
    x0005: TppLabel;
    y0005: TppLabel;
    d001: TppLabel;
    d002: TppLabel;
    d003: TppLabel;
    d004: TppLabel;
    d005: TppLabel;
    d006: TppLabel;
    d007: TppLabel;
    d008: TppLabel;
    d009: TppLabel;
    d010: TppLabel;
    d012: TppLabel;
    d011: TppLabel;
    ppShape2: TppShape;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    yt01: TppLabel;
    yt02: TppLabel;
    yt03: TppLabel;
    yt04: TppLabel;
    ppLine38: TppLine;
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
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    r001: TppLabel;
    r002: TppLabel;
    r003: TppLabel;
    r004: TppLabel;
    r005: TppLabel;
    r006: TppLabel;
    r007: TppLabel;
    r008: TppLabel;
    r009: TppLabel;
    r010: TppLabel;
    r011: TppLabel;
    r012: TppLabel;
    r013: TppLabel;
    s001: TppLabel;
    t001: TppLabel;
    t002: TppLabel;
    s002: TppLabel;
    t003: TppLabel;
    s003: TppLabel;
    t004: TppLabel;
    s004: TppLabel;
    t005: TppLabel;
    s005: TppLabel;
    t006: TppLabel;
    s006: TppLabel;
    t007: TppLabel;
    s007: TppLabel;
    t008: TppLabel;
    s008: TppLabel;
    t009: TppLabel;
    s009: TppLabel;
    t010: TppLabel;
    s010: TppLabel;
    t011: TppLabel;
    s011: TppLabel;
    t012: TppLabel;
    s012: TppLabel;
    t013: TppLabel;
    s013: TppLabel;
    u001: TppLabel;
    u002: TppLabel;
    u003: TppLabel;
    u004: TppLabel;
    u005: TppLabel;
    u006: TppLabel;
    u007: TppLabel;
    u008: TppLabel;
    u009: TppLabel;
    u010: TppLabel;
    u011: TppLabel;
    u012: TppLabel;
    u013: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmoutput_ttl: Tfrmoutput_ttl;

implementation

uses mainformu, addreportsformu;

{$R *.dfm}

procedure Tfrmoutput_ttl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmoutput_ttl:=nil;
end;

procedure Tfrmoutput_ttl.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmoutput_ttl.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  s1:string;
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if combobox1.text>'' then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_analysis_temp5(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=spinedit2.value;
        params[3].AsString:=combobox1.text;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from analysis_tmp5 where tm=:x1 order by seq';
        params[0].asdatetime:=tm;
        open;
      end;
      for i:=0 to DBChart1.SeriesCount-1 do begin
        DBChart1.Series[i].Pen.Width:=2;
      end;
      s1:='c:\temp\'+formatdatetime('hhnnss',tm)+'addrpt9.bmp';
      dbchart1.SaveToBitmapFile(s1);
      ppimage1.Picture.LoadFromFile(s1);
      sub1.Caption:=combobox1.text+' Factory - ';
      sub2.Caption:=' in '+inttostr(spinedit1.value)+' and '+inttostr(spinedit2.value);
      ppReport1.Print;
    end else begin
      if combobox1.text>'' then sub3.Caption:='<  '+combobox1.text+'  >'
      else sub3.Caption:='< SL & KB >';
      sub4.Caption:='[ Year '+inttostr(spinedit1.value)+' Vs Year '+inttostr(spinedit2.value)+' ]';
      a001.Caption:=inttostr(spinedit1.value);
      a002.Caption:=inttostr(spinedit2.Value);
      a003.Caption:=inttostr(spinedit1.value)+' ttl - '+inttostr(spinedit2.value)+' ttl';
      ppReport2.Print;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmoutput_ttl.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmoutput_ttl.ppHeaderBand2BeforePrint(Sender: TObject);
var
  x1,x2,x3,x4,xx1,xx3:double;
  y1,y2,y3,y4,yy1,yy3:double;
begin
    x001.Caption:=''; x002.Caption:=''; x0001.Caption:='';
    x003.Caption:=''; x004.Caption:=''; x0002.Caption:=''; x005.Caption:='';
    x006.Caption:=''; x007.Caption:=''; x0003.Caption:='';
    x008.Caption:=''; x009.Caption:=''; x0004.Caption:=''; x010.Caption:='';
    x011.Caption:=''; x012.Caption:=''; x013.Caption:=''; x014.Caption:='';
    y001.Caption:=''; y002.Caption:=''; y0001.Caption:='';
    y003.Caption:=''; y004.Caption:=''; y0002.Caption:=''; y005.Caption:='';
    y006.Caption:=''; y007.Caption:=''; y0003.Caption:='';
    y008.Caption:=''; y009.Caption:=''; y0004.Caption:=''; y010.Caption:='';
    y011.Caption:=''; y012.Caption:=''; y013.Caption:=''; y014.Caption:='';
    d001.Caption:=''; d002.Caption:=''; d003.Caption:=''; d004.Caption:='';
    d005.Caption:=''; d006.Caption:=''; d007.Caption:=''; d008.Caption:='';
    d009.Caption:=''; d010.Caption:=''; d011.Caption:=''; d012.Caption:='';

      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='select * from sp_analysis_temp5_smv(:x1,:x2,:x3)';
        params[0].asstring:='SL';
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=spinedit2.value;
        open;
        x001.Caption:=formatfloat('#,0',fieldbyname('o_sect01').value);
        x002.Caption:=formatfloat('#,0',fieldbyname('o_diff01').value);
        if fieldbyname('o_diff01').value>0 then x0001.Caption:=formatfloat('0.00',fieldbyname('o_sect001').value*30/fieldbyname('o_diff01').value)
        else x0001.Caption:='0.00';
        x003.Caption:=formatfloat('#,0',fieldbyname('o_sect02').value);
        x004.Caption:=formatfloat('#,0',fieldbyname('o_diff02').value);
        if fieldbyname('o_diff02').value>0 then x0002.Caption:=formatfloat('0.00',fieldbyname('o_sect002').value*30/fieldbyname('o_diff02').value)
        else x0002.Caption:='0.00';
        x005.Caption:=formatfloat('#,0',fieldbyname('o_diff01').value+fieldbyname('o_diff02').value);

        x1:=fieldbyname('o_sect01').value+fieldbyname('o_sect02').value;
        xx1:=fieldbyname('o_sect001').value+fieldbyname('o_sect002').value;
        x2:=fieldbyname('o_diff01').value+fieldbyname('o_diff02').value;

        y001.Caption:=formatfloat('#,0',fieldbyname('o_sect11').value);
        y002.Caption:=formatfloat('#,0',fieldbyname('o_diff11').value);
        if fieldbyname('o_diff11').value>0 then y0001.Caption:=formatfloat('0.00',fieldbyname('o_sect011').value*30/fieldbyname('o_diff11').value)
        else y0001.Caption:='0.00';
        y003.Caption:=formatfloat('#,0',fieldbyname('o_sect12').value);
        y004.Caption:=formatfloat('#,0',fieldbyname('o_diff12').value);
        if fieldbyname('o_diff12').value>0 then y0002.Caption:=formatfloat('0.00',fieldbyname('o_sect012').value*30/fieldbyname('o_diff12').value)
        else y0002.Caption:='0.00';
        y005.Caption:=formatfloat('#,0',fieldbyname('o_diff11').value+fieldbyname('o_diff12').value);

        y1:=fieldbyname('o_sect11').value+fieldbyname('o_sect12').value;
        yy1:=fieldbyname('o_sect011').value+fieldbyname('o_sect012').value;
        y2:=fieldbyname('o_diff11').value+fieldbyname('o_diff12').value;

        d001.Caption:=formatfloat('#,0',fieldbyname('o_sect01').value-fieldbyname('o_sect11').value);
        d002.Caption:=formatfloat('#,0',fieldbyname('o_diff01').value-fieldbyname('o_diff11').value);
        d003.Caption:=formatfloat('#,0',fieldbyname('o_sect02').value-fieldbyname('o_sect12').value);
        d004.Caption:=formatfloat('#,0',fieldbyname('o_diff02').value-fieldbyname('o_diff12').value);
        d005.Caption:=formatfloat('#,0',fieldbyname('o_diff01').value+fieldbyname('o_diff11').value-fieldbyname('o_diff02').value-fieldbyname('o_diff12').Value);
      end;

      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='select * from sp_analysis_temp5_smv(:x1,:x2,:x3)';
        params[0].asstring:='KB';
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=spinedit2.value;
        open;
        x006.Caption:=formatfloat('#,0',fieldbyname('o_sect01').value);
        x007.Caption:=formatfloat('#,0',fieldbyname('o_diff01').value);
        if fieldbyname('o_diff01').value>0 then x0003.Caption:=formatfloat('0.00',fieldbyname('o_sect001').value*30/fieldbyname('o_diff01').value)
        else x0003.Caption:='0.00';
        x008.Caption:=formatfloat('#,0',fieldbyname('o_sect02').value);
        x009.Caption:=formatfloat('#,0',fieldbyname('o_diff02').value);
        if fieldbyname('o_diff02').value>0 then x0004.Caption:=formatfloat('0.00',fieldbyname('o_sect002').value*30/fieldbyname('o_diff02').value)
        else x0004.Caption:='0.00';
        x010.Caption:=formatfloat('#,0',fieldbyname('o_diff01').value+fieldbyname('o_diff02').value);

        x3:=fieldbyname('o_sect01').value+fieldbyname('o_sect02').value;
        xx3:=fieldbyname('o_sect001').value+fieldbyname('o_sect002').value;
        x4:=fieldbyname('o_diff01').value+fieldbyname('o_diff02').value;

        y006.Caption:=formatfloat('#,0',fieldbyname('o_sect11').value);
        y007.Caption:=formatfloat('#,0',fieldbyname('o_diff11').value);
        if fieldbyname('o_diff11').value>0 then y0003.Caption:=formatfloat('0.00',fieldbyname('o_sect011').value*30/fieldbyname('o_diff11').value)
        else y0003.Caption:='0.00';
        y008.Caption:=formatfloat('#,0',fieldbyname('o_sect12').value);
        y009.Caption:=formatfloat('#,0',fieldbyname('o_diff12').value);
        if fieldbyname('o_diff12').value>0 then y0004.Caption:=formatfloat('0.00',fieldbyname('o_sect012').value*30/fieldbyname('o_diff12').value)
        else y0004.Caption:='0.00';
        y010.Caption:=formatfloat('#,0',fieldbyname('o_diff11').value+fieldbyname('o_diff12').value);

        y3:=fieldbyname('o_sect11').value+fieldbyname('o_sect12').value;
        yy3:=fieldbyname('o_sect011').value+fieldbyname('o_sect012').value;
        y4:=fieldbyname('o_diff11').value+fieldbyname('o_diff12').value;

        d006.Caption:=formatfloat('#,0',fieldbyname('o_sect01').value-fieldbyname('o_sect11').value);
        d007.Caption:=formatfloat('#,0',fieldbyname('o_diff01').value-fieldbyname('o_diff11').value);
        d008.Caption:=formatfloat('#,0',fieldbyname('o_sect02').value-fieldbyname('o_sect12').value);
        d009.Caption:=formatfloat('#,0',fieldbyname('o_diff02').value-fieldbyname('o_diff12').value);
        d010.Caption:=formatfloat('#,0',fieldbyname('o_diff01').value+fieldbyname('o_diff11').value-fieldbyname('o_diff02').value-fieldbyname('o_diff12').Value);
      end;

      x014.Caption:=formatfloat('#,0',x1+x3);
      x011.Caption:=formatfloat('#,0',x2+x4);
      if x2+x4>0 then begin
        x0005.Caption:=formatfloat('0.00',(xx1+xx3)*30.0/(x2+x4));
        x012.Caption:='SL: '+formatfloat('0.00%',x2*100.0/(x2+x4));
        x013.Caption:='KB: '+formatfloat('0.00%',x4*100.0/(x2+x4));
      end else begin
        x0005.Caption:='0.00';
        x012.Caption:='SL: 0.00%';
        x013.Caption:='KB: 0.00%';
      end;

      y014.Caption:=formatfloat('#,0',y1+y3);
      y011.Caption:=formatfloat('#,0',y2+y4);
      if y2+y4>0 then begin
        y0005.Caption:=formatfloat('0.00',(yy1+yy3)*30.0/(y2+y4));
        y012.Caption:='SL: '+formatfloat('0.00%',y2*100.0/(y2+y4));
        y013.Caption:='KB: '+formatfloat('0.00%',y4*100.0/(y2+y4));
      end else begin
        y0005.Caption:='0.00';
        y012.Caption:='SL: 0.00%';
        y013.Caption:='KB: 0.00%';
      end;

      d012.Caption:=formatfloat('#,0',x1+x3-y1-y3);
      d011.Caption:=formatfloat('#,0',x2+x4-y2-y4);
end;

procedure Tfrmoutput_ttl.ppHeaderBand1BeforePrint(Sender: TObject);
var
  i:integer;
begin
  //
  r001.Caption:='';r002.Caption:='';r003.Caption:='';r004.Caption:='';r005.Caption:='';
  r006.Caption:='';r007.Caption:='';r008.Caption:='';r009.Caption:='';r010.Caption:='';
  r011.Caption:='';r012.Caption:='';r013.Caption:='';
  s001.Caption:='';s002.Caption:='';s003.Caption:='';s004.Caption:='';s005.Caption:='';
  s006.Caption:='';s007.Caption:='';s008.Caption:='';s009.Caption:='';s010.Caption:='';
  s011.Caption:='';s012.Caption:='';s013.Caption:='';
  t001.Caption:='';t002.Caption:='';t003.Caption:='';t004.Caption:='';t005.Caption:='';
  t006.Caption:='';t007.Caption:='';t008.Caption:='';t009.Caption:='';t010.Caption:='';
  t011.Caption:='';t012.Caption:='';t013.Caption:='';
  u001.Caption:='';u002.Caption:='';u003.Caption:='';u004.Caption:='';u005.Caption:='';
  u006.Caption:='';u007.Caption:='';u008.Caption:='';u009.Caption:='';u010.Caption:='';
  u011.Caption:='';u012.Caption:='';u013.Caption:='';
  i:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct typ,sum(act) as t1 from analysis_tmp5 where tm=:x1 and seq<25 group by typ order by typ desc';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        yt01.Caption:=fieldbyname('typ').value;
        r013.Caption:=formatfloat('#0',fieldbyname('t1').value);
      end else if i=2 then begin
        yt02.Caption:=fieldbyname('typ').value;
        s013.Caption:=formatfloat('#0',fieldbyname('t1').value);
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  i:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct typ,sum(act) as t1 from analysis_tmp5 where tm=:x1 and seq>=25 group by typ order by typ desc';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        yt03.Caption:=fieldbyname('typ').value;
        t013.Caption:=formatfloat('#0',fieldbyname('t1').value);
      end else if i=2 then begin
        yt04.Caption:=fieldbyname('typ').value;
        u013.Caption:=formatfloat('#0',fieldbyname('t1').value);
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from analysis_tmp5 where tm=:x1 order by seq';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('seq').value<25 then begin
        if fieldbyname('mn').value='Jan' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r001.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s001.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Feb' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r002.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s002.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Mar' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r003.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s003.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Apr' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r004.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s004.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='May' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r005.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s005.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Jun' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r006.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s006.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Jul' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r007.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s007.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Aug' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r008.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s008.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Sep' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r009.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s009.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Oct' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r010.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s010.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Nov' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r011.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s011.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Dec' then begin
          if pos('Total',fieldbyname('typ').value)>0 then r012.Caption:=formatfloat('#0',fieldbyname('act').value)
          else s012.Caption:=formatfloat('#0',fieldbyname('act').value);
        end;
      end else if fieldbyname('seq').value>=25 then begin
        if fieldbyname('mn').value='Jan' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t001.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u001.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Feb' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t002.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u002.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Mar' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t003.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u003.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Apr' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t004.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u004.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='May' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t005.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u005.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Jun' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t006.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u006.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Jul' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t007.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u007.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Aug' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t008.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u008.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Sep' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t009.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u009.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Oct' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t010.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u010.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Nov' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t011.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u011.Caption:=formatfloat('#0',fieldbyname('act').value);
        end else if fieldbyname('mn').value='Dec' then begin
          if pos('Total',fieldbyname('typ').value)>0 then t012.Caption:=formatfloat('#0',fieldbyname('act').value)
          else u012.Caption:=formatfloat('#0',fieldbyname('act').value);
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
