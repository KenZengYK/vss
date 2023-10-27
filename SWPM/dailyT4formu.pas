unit dailyT4formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppStrtch, ppMemo, myChkBox, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  DB, DBClient, ppViewr, ppParameter;

type
  TfrmdailyT4 = class(TForm)
    Query7: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query3: TClientDataSet;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel24: TppLabel;
    ppLabel31: TppLabel;
    ppLabel36: TppLabel;
    fty002: TppLabel;
    ppLabel41: TppLabel;
    line002: TppLabel;
    jno002: TppLabel;
    ppLabel44: TppLabel;
    job002: TppLabel;
    rwo002: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    cstyle002: TppLabel;
    ppLabel50: TppLabel;
    acol002: TppLabel;
    ppLabel52: TppLabel;
    scqty002: TppLabel;
    ppLabel54: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel55: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    fccs002: TppLabel;
    ppLabel57: TppLabel;
    ppShape9: TppShape;
    ppLabel58: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine41: TppLine;
    ppLabel61: TppLabel;
    ppLabel65: TppLabel;
    ppLabel73: TppLabel;
    ppLabel88: TppLabel;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    dt01: TppLabel;
    dt02: TppLabel;
    dt03: TppLabel;
    dt04: TppLabel;
    dt05: TppLabel;
    dt06: TppLabel;
    dt07: TppLabel;
    dt08: TppLabel;
    dt09: TppLabel;
    dt10: TppLabel;
    seq01: TppLabel;
    seq02: TppLabel;
    seq03: TppLabel;
    seq04: TppLabel;
    seq05: TppLabel;
    seq06: TppLabel;
    seq07: TppLabel;
    seq08: TppLabel;
    seq09: TppLabel;
    seq10: TppLabel;
    ppLine100: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLabel2: TppLabel;
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
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    x001: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    ppLine61: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    title001: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape10: TppShape;
    ppDBText5: TppDBText;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppDBText9: TppDBText;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine52: TppLine;
    ppDBText13: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    t01: TppLabel;
    t02: TppLabel;
    t03: TppLabel;
    t04: TppLabel;
    t05: TppLabel;
    t06: TppLabel;
    t07: TppLabel;
    t08: TppLabel;
    t09: TppLabel;
    t10: TppLabel;
    ppLine101: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine2: TppLine;
    myDBCheckBox5: TmyDBCheckBox;
    ppLine6: TppLine;
    myDBCheckBox1: TmyDBCheckBox;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine62: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine5: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel76: TppLabel;
    fdt002: TppLabel;
    ppLabel78: TppLabel;
    cfksrq002: TppLabel;
    ppLabel80: TppLabel;
    tzlcrq002: TppLabel;
    ppLabel82: TppLabel;
    yqlcrq002: TppLabel;
    ppLabel84: TppLabel;
    xc3002: TppLabel;
    ppShape18: TppShape;
    ppLabel51: TppLabel;
    yszq2: TppLabel;
    ppLabel3: TppLabel;
    ppMemo1: TppMemo;
    transit401: TppLabel;
    ppLabel71: TppLabel;
    ppLabel32: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    transit402: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLabel8: TppLabel;
    ppShape29: TppShape;
    ppMemo3: TppMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape16: TppShape;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLabel86: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLine58: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    st01: TppLabel;
    st02: TppLabel;
    st03: TppLabel;
    st04: TppLabel;
    st05: TppLabel;
    st06: TppLabel;
    st07: TppLabel;
    st08: TppLabel;
    st09: TppLabel;
    st10: TppLabel;
    ppLine102: TppLine;
    ppLine112: TppLine;
    ppLine114: TppLine;
    ppLine3: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine57: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    m02: TppLabel;
    p02: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine79: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine80: TppLine;
    x004: TppLabel;
    x005: TppLabel;
    x006: TppLabel;
    x007: TppLabel;
    x008: TppLabel;
    tt01: TppLabel;
    stt01: TppLabel;
    tt02: TppLabel;
    stt02: TppLabel;
    tt03: TppLabel;
    stt03: TppLabel;
    tt04: TppLabel;
    stt04: TppLabel;
    tt05: TppLabel;
    stt05: TppLabel;
    tt06: TppLabel;
    stt06: TppLabel;
    tt07: TppLabel;
    stt07: TppLabel;
    tt08: TppLabel;
    stt08: TppLabel;
    ppDBText4: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppDBText6: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppLabel165: TppLabel;
    myCheckBox5: TmyCheckBox;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    myCheckBox6: TmyCheckBox;
    ppLabel168: TppLabel;
    seq0101: TppLabel;
    seq0201: TppLabel;
    seq0301: TppLabel;
    seq0401: TppLabel;
    seq0501: TppLabel;
    seq0601: TppLabel;
    seq0701: TppLabel;
    seq0801: TppLabel;
    Query4: TClientDataSet;
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdailyT4: TfrmdailyT4;

implementation

uses mainformu, dailyreportformu;

{$R *.dfm}

procedure TfrmdailyT4.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmdailyT4.ppDetailBand2BeforePrint(Sender: TObject);
begin
  t01.caption:='';tt01.Caption:='';
  t02.caption:='';tt02.Caption:='';
  t03.caption:='';tt03.Caption:='';
  t04.caption:='';tt04.Caption:='';
  t05.caption:='';tt05.Caption:='';
  t06.caption:='';tt06.Caption:='';
  t07.caption:='';tt07.Caption:='';
  t08.caption:='';tt08.Caption:='';
  t09.caption:='';
  t10.caption:='';
  if dt01.Caption>'' then begin
    t01.Caption:=query7.fieldbyname('tq01').value;
    if query7.fieldbyname('tq01').value>0 then t01.Font.Style:=[fsBold]
    else t01.Font.Style:=[];
    tt01.Caption:=query7.fieldbyname('ttq01').value;
    if query7.fieldbyname('ttq01').value>0 then tt01.Font.Style:=[fsBold]
    else tt01.Font.Style:=[];
  end;
  if dt02.Caption>'' then begin
    t02.Caption:=query7.fieldbyname('tq02').value;
    if query7.fieldbyname('tq02').value>0 then t02.Font.Style:=[fsBold]
    else t02.Font.Style:=[];
    tt02.Caption:=query7.fieldbyname('ttq02').value;
    if query7.fieldbyname('ttq02').value>0 then tt02.Font.Style:=[fsBold]
    else tt02.Font.Style:=[];
  end;
  if dt03.Caption>'' then begin
    t03.Caption:=query7.fieldbyname('tq03').value;
    if query7.fieldbyname('tq03').value>0 then t03.Font.Style:=[fsBold]
    else t03.Font.Style:=[];
    tt03.Caption:=query7.fieldbyname('ttq03').value;
    if query7.fieldbyname('ttq03').value>0 then tt03.Font.Style:=[fsBold]
    else tt03.Font.Style:=[];
  end;
  if dt04.Caption>'' then begin
    t04.Caption:=query7.fieldbyname('tq04').value;
    if query7.fieldbyname('tq04').value>0 then t04.Font.Style:=[fsBold]
    else t04.Font.Style:=[];
    tt04.Caption:=query7.fieldbyname('ttq04').value;
    if query7.fieldbyname('ttq04').value>0 then tt04.Font.Style:=[fsBold]
    else tt04.Font.Style:=[];
  end;
  if dt05.Caption>'' then begin
    t05.Caption:=query7.fieldbyname('tq05').value;
    if query7.fieldbyname('tq05').value>0 then t05.Font.Style:=[fsBold]
    else t05.Font.Style:=[];
    tt05.Caption:=query7.fieldbyname('ttq05').value;
    if query7.fieldbyname('ttq05').value>0 then tt05.Font.Style:=[fsBold]
    else tt05.Font.Style:=[];
  end;
  if dt06.Caption>'' then begin
    t06.Caption:=query7.fieldbyname('tq06').value;
    if query7.fieldbyname('tq06').value>0 then t06.Font.Style:=[fsBold]
    else t06.Font.Style:=[];
    tt06.Caption:=query7.fieldbyname('ttq06').value;
    if query7.fieldbyname('ttq06').value>0 then tt06.Font.Style:=[fsBold]
    else tt06.Font.Style:=[];
  end;
  if dt07.Caption>'' then begin
    t07.Caption:=query7.fieldbyname('tq07').value;
    if query7.fieldbyname('tq07').value>0 then t07.Font.Style:=[fsBold]
    else t07.Font.Style:=[];
    tt07.Caption:=query7.fieldbyname('ttq07').value;
    if query7.fieldbyname('ttq07').value>0 then tt07.Font.Style:=[fsBold]
    else tt07.Font.Style:=[];
  end;
  if dt08.Caption>'' then begin
    t08.Caption:=query7.fieldbyname('tq08').value;
    if query7.fieldbyname('tq08').value>0 then t08.Font.Style:=[fsBold]
    else t08.Font.Style:=[];
    tt08.Caption:=query7.fieldbyname('ttq08').value;
    if query7.fieldbyname('ttq08').value>0 then tt08.Font.Style:=[fsBold]
    else tt08.Font.Style:=[];
  end;
  if dt09.Caption>'' then begin
    t09.Caption:=query7.fieldbyname('tq09').value;
    if query7.fieldbyname('tq09').value>0 then t09.Font.Style:=[fsBold]
    else t09.Font.Style:=[];
  end;
  if dt10.Caption>'' then begin
    t10.Caption:=query7.fieldbyname('tq10').value;
    if query7.fieldbyname('tq10').value>0 then t10.Font.Style:=[fsBold]
    else t10.Font.Style:=[];
  end;
end;

procedure TfrmdailyT4.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  seq01.caption:='';seq0101.caption:='';seq02.caption:='';seq0201.caption:='';seq03.caption:='';seq0301.caption:='';
  seq04.caption:='';seq0401.caption:='';seq05.caption:='';seq0501.caption:='';seq06.caption:='';seq0601.caption:='';
  seq07.caption:='';seq0701.caption:='';seq08.caption:='';seq0801.caption:='';seq09.caption:='';seq10.caption:='';
  y001.Visible:=false;y002.Visible:=false;y003.Visible:=false;y004.Visible:=false;y005.Visible:=false;
  y006.Visible:=false;y007.Visible:=false;y008.Visible:=false;y009.Visible:=false;y010.Visible:=false;
  x001.visible:=false;x002.visible:=false;x003.visible:=false;x004.visible:=false;x005.visible:=false;
  x006.visible:=false;x007.visible:=false;x008.visible:=false;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_trans_dt where tm=:x1 and pline=:x2 and seq=:x3 and typ=''4''';
    params[0].asdatetime:=query7.fieldbyname('tm').value;
    params[1].asstring:=query7.fieldbyname('pline').value;
    params[2].asinteger:=query7.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt01').isnull then begin
      seq01.Caption:='0';//fieldbyname('ct01').value;
      dt01.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt01').value);
      x001.Visible:=true;y001.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_4(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=1;
        open;
        if not fieldbyname('o_cnt').isnull then seq01.Caption:=fieldbyname('o_cnt').asstring else seq01.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0101.Caption:=fieldbyname('o_cnt1').asstring else seq0101.Caption:='0';
      end;
    end;
    if not fieldbyname('dt02').isnull then begin
      seq02.Caption:='0';//fieldbyname('ct02').value;
      dt02.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt02').value);
      x002.Visible:=true;y002.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_4(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=2;
        open;
        if not fieldbyname('o_cnt').isnull then seq02.Caption:=fieldbyname('o_cnt').asstring else seq02.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0201.Caption:=fieldbyname('o_cnt1').asstring else seq0201.Caption:='0';
      end;
    end;
    if not fieldbyname('dt03').isnull then begin
      seq03.Caption:='0';//fieldbyname('ct03').value;
      dt03.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt03').value);
      x003.Visible:=true;y003.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_4(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=3;
        open;
        if not fieldbyname('o_cnt').isnull then seq03.Caption:=fieldbyname('o_cnt').asstring else seq03.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0301.Caption:=fieldbyname('o_cnt1').asstring else seq0301.Caption:='0';
      end;
    end;
    if not fieldbyname('dt04').isnull then begin
      seq04.Caption:='0';//fieldbyname('ct04').value;
      dt04.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt04').value);
      x004.Visible:=true;y004.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_4(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=4;
        open;
        if not fieldbyname('o_cnt').isnull then seq04.Caption:=fieldbyname('o_cnt').asstring else seq04.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0401.Caption:=fieldbyname('o_cnt1').asstring else seq0401.Caption:='0';
      end;
    end;
    if not fieldbyname('dt05').isnull then begin
      seq05.Caption:='0';//fieldbyname('ct05').value;
      dt05.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt05').value);
      x005.Visible:=true;y005.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_4(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=5;
        open;
        if not fieldbyname('o_cnt').isnull then seq05.Caption:=fieldbyname('o_cnt').asstring else seq05.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0501.Caption:=fieldbyname('o_cnt1').asstring else seq0501.Caption:='0';
      end;
    end;
    if not fieldbyname('dt06').isnull then begin
      seq06.Caption:='0';//fieldbyname('ct06').value;
      dt06.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt06').value);
      x006.Visible:=true;y006.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_4(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=6;
        open;
        if not fieldbyname('o_cnt').isnull then seq06.Caption:=fieldbyname('o_cnt').asstring else seq06.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0601.Caption:=fieldbyname('o_cnt1').asstring else seq0601.Caption:='0';
      end;
    end;
    if not fieldbyname('dt07').isnull then begin
      seq07.Caption:='0';//fieldbyname('ct07').value;
      dt07.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt07').value);
      x007.Visible:=true;y007.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_4(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=7;
        open;
        if not fieldbyname('o_cnt').isnull then seq07.Caption:=fieldbyname('o_cnt').asstring else seq07.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0701.Caption:=fieldbyname('o_cnt1').asstring else seq0701.Caption:='0';
      end;
    end;
    if not fieldbyname('dt08').isnull then begin
      seq08.Caption:='0';//fieldbyname('ct08').value;
      dt08.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt08').value);
      x008.Visible:=true;y008.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_4(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=8;
        open;
        if not fieldbyname('o_cnt').isnull then seq08.Caption:=fieldbyname('o_cnt').asstring else seq08.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0801.Caption:=fieldbyname('o_cnt1').asstring else seq0801.Caption:='0';
      end;
    end;
    if not fieldbyname('dt09').isnull then begin
      seq09.Caption:='0';//fieldbyname('ct09').value;
      dt09.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt09').value);
      y009.Visible:=true;
    end;
    if not fieldbyname('dt10').isnull then begin
      seq10.Caption:='0';//fieldbyname('ct10').value;
      dt10.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt10').value);
      y010.Visible:=true;
    end;
  end;
end;

procedure TfrmdailyT4.ppSummaryBand2BeforePrint(Sender: TObject);
var
  ts401,ts402:string;
  c5:integer;
  tm0:tdatetime;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select sum(tq01) as q01,sum(tq02) as q02,sum(tq03) as q03,sum(tq04) as q04,sum(tq05) as q05,sum(tq06) as q06,sum(tq07) as q07,sum(tq08) as q08,sum(tq09) as q09,sum(tq10) as q010,'
                +'sum(ttq01) as q1,sum(ttq02) as q2,sum(ttq03) as q3,sum(ttq04) as q4,sum(ttq05) as q5,sum(ttq06) as q6,sum(ttq07) as q7,sum(ttq08) as q8 '
                +'from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=''4''';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=query7.fieldbyname('tm').value;
    open;
    if dt01.Caption>'' then begin
      st01.Caption:=fieldbyname('q01').asstring;
      stt01.Caption:=fieldbyname('q1').asstring;
    end else begin
      st01.Caption:='';stt01.caption:='';
    end;
    if dt02.Caption>'' then begin
      st02.Caption:=fieldbyname('q02').asstring;
      stt02.Caption:=fieldbyname('q2').asstring;
    end else begin
      st02.Caption:='';stt02.Caption:='';
    end;
    if dt03.Caption>'' then begin
      st03.Caption:=fieldbyname('q03').asstring;
      stt03.Caption:=fieldbyname('q3').asstring;
    end else begin
      st03.Caption:='';stt03.Caption:='';
    end;
    if dt04.Caption>'' then begin
      st04.Caption:=fieldbyname('q04').asstring;
      stt04.Caption:=fieldbyname('q4').asstring;
    end else begin
      st04.Caption:='';stt04.Caption:='';
    end;
    if dt05.Caption>'' then begin
      st05.Caption:=fieldbyname('q05').asstring;
      stt05.Caption:=fieldbyname('q5').asstring;
    end else begin
      st05.Caption:='';stt05.Caption:='';
    end;
    if dt06.Caption>'' then begin
      st06.Caption:=fieldbyname('q06').asstring;
      stt06.Caption:=fieldbyname('q6').asstring;
    end else begin
      st06.Caption:='';stt06.Caption:='';
    end;
    if dt07.Caption>'' then begin
      st07.Caption:=fieldbyname('q07').asstring;
      stt07.Caption:=fieldbyname('q7').asstring;
    end else begin
      st07.Caption:='';stt07.Caption:='';
    end;
    if dt08.Caption>'' then begin
      st08.Caption:=fieldbyname('q08').asstring;
      stt08.Caption:=fieldbyname('q8').asstring;
    end else begin
      st08.Caption:='';stt08.Caption:='';
    end;
    if dt09.Caption>'' then begin
      st09.Caption:=fieldbyname('q09').asstring;
    end else begin
      st09.Caption:='';
    end;
    if dt10.Caption>'' then begin
      st10.Caption:=fieldbyname('q010').asstring;
    end else begin
      st10.Caption:='';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if fieldbyname('flag4').value>='B' then begin
      if copy(fieldbyname('flag4').value,1,1)='b' then begin
        i1:=' b '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='B' then begin
        i1:=' B '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='d' then begin
        i1:=' b '; i2:=' d ';
      end else if copy(fieldbyname('flag4').value,1,1)='D' then begin
        i1:=' B '; i2:= ' D ';
      end else if copy(fieldbyname('flag4').value,1,1)='E' then begin
        i1:=' B '; i2:= ' E ';
      end;

      if copy(fieldbyname('flag4').value,2,1)='f' then begin
        i3:=' f '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
        i3:=' F '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
        i3:=' f '; i4:=' g ';
      end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
        i3:=' F '; i4:= ' G ';
      end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
        i3:=' F '; i4:= ' H ';
      end;

      if copy(fieldbyname('flag4').value,3,1)='j' then begin
        i5:=' j '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='J' then begin
        i5:=' J '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='k' then begin
        i5:=' j '; i6:=' k ';
      end else if copy(fieldbyname('flag4').value,3,1)='K' then begin
        i5:=' J '; i6:= ' K ';
      end else if copy(fieldbyname('flag4').value,3,1)='L' then begin
        i5:=' J '; i6:= ' L ';
      end;

      if copy(fieldbyname('flag4').value,4,1)='m' then begin
        i7:=' m '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='M' then begin
        i7:=' M '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='n' then begin
        i7:=' m '; i8:=' n ';
      end else if copy(fieldbyname('flag4').value,4,1)='N' then begin
        i7:=' M '; i8:= ' N ';
      end else if copy(fieldbyname('flag4').value,4,1)='P' then begin
        i7:=' M '; i8:= ' P ';
      end;
    end else begin
      i1:='';
      i2:='';
      i3:='';
      i4:='';
      i5:='';
      i6:='';
      i7:='';
      i8:='';
    end;
  end;
  m02.Caption:=i7;
  p02.Caption:=i8;

  tm0:=now;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asstring:='4';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=501 and dseq<=503 and tp=''4'' and dt>:x4';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then ts401:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else ts401:='';
    end else begin
      ts401:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts402:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts402:='';
    end else begin
      ts402:='';
    end;
  end;

  c5:=1;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp4 from tbl_lwo where pline=:x1 and seq=:x2 and teqty>0 and cmp4=0';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp4').isnull then c5:=0;
  end;

  if c5=1 then begin
    transit401.Caption:=ts401;transit402.Caption:='';
  end else begin
    transit401.Caption:=ts401;transit402.Caption:=ts402;
  end;

  ppmemo1.Lines.Text:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if not fieldbyname('t4memo').isnull then ppmemo1.Lines.add(fieldbyname('t4memo').value);
  end;
end;

procedure TfrmdailyT4.ppReport2BeforePrint(Sender: TObject);
var
  tplant,pline,j_no,cstyle,j2_job,rwo,fccs,acol,scqty,cplan,cfksrq,tzlcrq,yqlcrq,xc3:string;
begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query7.fieldbyname('pline').value;
      params[1].asinteger:=query7.fieldbyname('seq').value;
      open;
      tplant:=fieldbyname('tplant').value;
      pline:=fieldbyname('pline').value;
      j_no:=fieldbyname('j_no').value;
      cstyle:=fieldbyname('cstyle').value;
      j2_job:=fieldbyname('j2_job').value;
      rwo:=fieldbyname('rwo').value;
      fccs:=fieldbyname('fccs').value;
      acol:=fieldbyname('acol').value;
      scqty:=formatfloat('#0',fieldbyname('scqty').value);
      if not fieldbyname('cplan').isnull then cplan:=formatdatetime('yyyy/MM/dd',fieldbyname('cplan').value) else cplan:='    /  /  ';
      if not fieldbyname('cfksrq').isnull then cfksrq:=formatdatetime('yyyy/MM/dd',fieldbyname('cfksrq').value) else cfksrq:='    /  /  ';
      if not fieldbyname('tzlcrq').isnull then tzlcrq:=formatdatetime('yyyy/MM/dd',fieldbyname('tzlcrq').value) else tzlcrq:='    /  /  ';
      if not fieldbyname('yqlcrq').isnull then yqlcrq:=formatdatetime('yyyy/MM/dd hh',fieldbyname('yqlcrq').value) else yqlcrq:='    /  /  ';
      xc3:=fieldbyname('xc3').asstring;
    end;
    fty002.Caption:=tplant;
    line002.Caption:=pline;
    jno002.Caption:=j_no;
    cstyle002.Caption:=cstyle;
    job002.Caption:=j2_job;
    rwo002.Caption:=rwo;
    fccs002.Caption:=fccs;
    acol002.Caption:=acol;
    scqty002.Caption:=scqty;
    fdt002.caption:=cplan;
    cfksrq002.Caption:=cfksrq;
    tzlcrq002.Caption:=tzlcrq;
    yqlcrq002.Caption:=yqlcrq;
    xc3002.Caption:=xc3;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
      params[0].asstring:=tplant;
      params[1].asstring:=copy(j_no,1,4);
      open;
      if not fieldbyname('yszq').isnull then yszq2.Caption:=fieldbyname('yszq').AsString else yszq2.Caption:='0';
    end;
end;

end.
 