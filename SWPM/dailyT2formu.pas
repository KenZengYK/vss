unit dailyT2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppStrtch, ppMemo, myChkBox, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  DB, DBClient, ppViewr, ppParameter;

type
  TfrmdailyT2 = class(TForm)
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
    ppLabel66: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppLabel61: TppLabel;
    ppLabel65: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel87: TppLabel;
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
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    x001: TppLabel;
    y001: TppLabel;
    x002: TppLabel;
    y002: TppLabel;
    x003: TppLabel;
    y003: TppLabel;
    x004: TppLabel;
    y004: TppLabel;
    x005: TppLabel;
    y005: TppLabel;
    x006: TppLabel;
    y006: TppLabel;
    x007: TppLabel;
    y007: TppLabel;
    x008: TppLabel;
    y008: TppLabel;
    x009: TppLabel;
    y009: TppLabel;
    x010: TppLabel;
    y010: TppLabel;
    ppLabel3: TppLabel;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine5: TppLine;
    myCheckBox1: TmyCheckBox;
    myCheckBox2: TmyCheckBox;
    ppLabel8: TppLabel;
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
    myDBCheckBox5: TmyDBCheckBox;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine52: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppDBText6: TppDBText;
    ppDBText13: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    p01: TppLabel;
    t01: TppLabel;
    p02: TppLabel;
    t02: TppLabel;
    p03: TppLabel;
    t03: TppLabel;
    p04: TppLabel;
    t04: TppLabel;
    p05: TppLabel;
    t05: TppLabel;
    p06: TppLabel;
    t06: TppLabel;
    p07: TppLabel;
    t07: TppLabel;
    p08: TppLabel;
    t08: TppLabel;
    p09: TppLabel;
    t09: TppLabel;
    p10: TppLabel;
    t10: TppLabel;
    ppLine101: TppLine;
    ppLine2: TppLine;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText1: TppDBText;
    ppLine6: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
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
    ppLabel4: TppLabel;
    ppMemo1: TppMemo;
    transit201: TppLabel;
    ppLabel46: TppLabel;
    sewn01: TppLabel;
    ppLabel34: TppLabel;
    ppLabel101: TppLabel;
    ppLabel104: TppLabel;
    sewn02: TppLabel;
    ppLabel105: TppLabel;
    ppLabel108: TppLabel;
    transit202: TppLabel;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLabel5: TppLabel;
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
    ppLine57: TppLine;
    ppLabel86: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine58: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    sp01: TppLabel;
    st01: TppLabel;
    sp02: TppLabel;
    st02: TppLabel;
    sp03: TppLabel;
    st03: TppLabel;
    sp04: TppLabel;
    st04: TppLabel;
    sp05: TppLabel;
    st05: TppLabel;
    sp06: TppLabel;
    st06: TppLabel;
    sp07: TppLabel;
    st07: TppLabel;
    sp08: TppLabel;
    st08: TppLabel;
    sp09: TppLabel;
    st09: TppLabel;
    sp10: TppLabel;
    st10: TppLabel;
    f02: TppLabel;
    ppLine102: TppLine;
    ppLine3: TppLine;
    h02: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine7: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine8: TppLine;
    w010: TppLabel;
    s010: TppLabel;
    ss010: TppLabel;
    seq1001: TppLabel;
    seq1002: TppLabel;
    w009: TppLabel;
    s009: TppLabel;
    ss009: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    seq0901: TppLabel;
    seq0902: TppLabel;
    w008: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    s008: TppLabel;
    ss008: TppLabel;
    seq0801: TppLabel;
    seq0802: TppLabel;
    w007: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    s007: TppLabel;
    ss007: TppLabel;
    seq0701: TppLabel;
    seq0702: TppLabel;
    w006: TppLabel;
    ppLine15: TppLine;
    ppLine18: TppLine;
    s006: TppLabel;
    ss006: TppLabel;
    seq0601: TppLabel;
    seq0602: TppLabel;
    w005: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    s005: TppLabel;
    ss005: TppLabel;
    seq0501: TppLabel;
    seq0502: TppLabel;
    w004: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    s004: TppLabel;
    ss004: TppLabel;
    seq0401: TppLabel;
    seq0402: TppLabel;
    w003: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    s003: TppLabel;
    ss003: TppLabel;
    seq0301: TppLabel;
    seq0302: TppLabel;
    w002: TppLabel;
    ppLine25: TppLine;
    ppLine26: TppLine;
    s002: TppLabel;
    ss002: TppLabel;
    seq0201: TppLabel;
    seq0202: TppLabel;
    w001: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    s001: TppLabel;
    ss001: TppLabel;
    seq0101: TppLabel;
    seq0102: TppLabel;
    ppLabel9: TppLabel;
    query4: TClientDataSet;
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppReport2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdailyT2: TfrmdailyT2;

implementation

uses mainformu, dailyreportformu;

{$R *.dfm}

procedure TfrmdailyT2.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmdailyT2.ppDetailBand2BeforePrint(Sender: TObject);
begin
  p01.caption:='';t01.caption:='';
  p02.caption:='';t02.caption:='';
  p03.caption:='';t03.caption:='';
  p04.caption:='';t04.caption:='';
  p05.caption:='';t05.caption:='';
  p06.caption:='';t06.caption:='';
  p07.caption:='';t07.caption:='';
  p08.caption:='';t08.caption:='';
  p09.caption:='';t09.caption:='';
  p10.caption:='';t10.caption:='';
  //p11.caption:='';t11.caption:='';
  //p12.caption:='';t12.caption:='';
  //p13.caption:='';t13.caption:='';
  if dt01.Caption>'' then begin
    p01.Caption:=query7.fieldbyname('tq01').value;
    t01.Caption:=query7.fieldbyname('ttq01').value;
    if query7.fieldbyname('tq01').value>0 then p01.Font.Style:=[fsBold]
    else p01.Font.Style:=[];
    if query7.fieldbyname('ttq01').value>0 then t01.Font.Style:=[fsBold]
    else t01.Font.Style:=[];
  end;
  if dt02.Caption>'' then begin
    p02.Caption:=query7.fieldbyname('tq02').value;
    t02.Caption:=query7.fieldbyname('ttq02').value;
    if query7.fieldbyname('tq02').value>0 then p02.Font.Style:=[fsBold]
    else p02.Font.Style:=[];
    if query7.fieldbyname('ttq02').value>0 then t02.Font.Style:=[fsBold]
    else t02.Font.Style:=[];
  end;
  if dt03.Caption>'' then begin
    p03.Caption:=query7.fieldbyname('tq03').value;
    t03.Caption:=query7.fieldbyname('ttq03').value;
    if query7.fieldbyname('tq03').value>0 then p03.Font.Style:=[fsBold]
    else p03.Font.Style:=[];
    if query7.fieldbyname('ttq03').value>0 then t03.Font.Style:=[fsBold]
    else t03.Font.Style:=[];
  end;
  if dt04.Caption>'' then begin
    p04.Caption:=query7.fieldbyname('tq04').value;
    t04.Caption:=query7.fieldbyname('ttq04').value;
    if query7.fieldbyname('tq04').value>0 then p04.Font.Style:=[fsBold]
    else p04.Font.Style:=[];
    if query7.fieldbyname('ttq04').value>0 then t04.Font.Style:=[fsBold]
    else t04.Font.Style:=[];
  end;
  if dt05.Caption>'' then begin
    p05.Caption:=query7.fieldbyname('tq05').value;
    t05.Caption:=query7.fieldbyname('ttq05').value;
    if query7.fieldbyname('tq05').value>0 then p05.Font.Style:=[fsBold]
    else p05.Font.Style:=[];
    if query7.fieldbyname('ttq05').value>0 then t05.Font.Style:=[fsBold]
    else t05.Font.Style:=[];
  end;
  if dt06.Caption>'' then begin
    p06.Caption:=query7.fieldbyname('tq06').value;
    t06.Caption:=query7.fieldbyname('ttq06').value;
    if query7.fieldbyname('tq06').value>0 then p06.Font.Style:=[fsBold]
    else p06.Font.Style:=[];
    if query7.fieldbyname('ttq06').value>0 then t06.Font.Style:=[fsBold]
    else t06.Font.Style:=[];
  end;
  if dt07.Caption>'' then begin
    p07.Caption:=query7.fieldbyname('tq07').value;
    t07.Caption:=query7.fieldbyname('ttq07').value;
    if query7.fieldbyname('tq07').value>0 then p07.Font.Style:=[fsBold]
    else p07.Font.Style:=[];
    if query7.fieldbyname('ttq07').value>0 then t07.Font.Style:=[fsBold]
    else t07.Font.Style:=[];
  end;
  if dt08.Caption>'' then begin
    p08.Caption:=query7.fieldbyname('tq08').value;
    t08.Caption:=query7.fieldbyname('ttq08').value;
    if query7.fieldbyname('tq08').value>0 then p08.Font.Style:=[fsBold]
    else p08.Font.Style:=[];
    if query7.fieldbyname('ttq08').value>0 then t08.Font.Style:=[fsBold]
    else t08.Font.Style:=[];
  end;
  if dt09.Caption>'' then begin
    p09.Caption:=query7.fieldbyname('tq09').value;
    t09.Caption:=query7.fieldbyname('ttq09').value;
    if query7.fieldbyname('tq09').value>0 then p09.Font.Style:=[fsBold]
    else p09.Font.Style:=[];
    if query7.fieldbyname('ttq09').value>0 then t09.Font.Style:=[fsBold]
    else t09.Font.Style:=[];
  end;
  if dt10.Caption>'' then begin
    p10.Caption:=query7.fieldbyname('tq10').value;
    t10.Caption:=query7.fieldbyname('ttq10').value;
    if query7.fieldbyname('tq10').value>0 then p10.Font.Style:=[fsBold]
    else p10.Font.Style:=[];
    if query7.fieldbyname('ttq10').value>0 then t10.Font.Style:=[fsBold]
    else t10.Font.Style:=[];
  end;
  {
  if dt11.Caption>'' then begin
    p11.Caption:=query7.fieldbyname('tq11').value;
    t11.Caption:=query7.fieldbyname('ttq11').value;
    if query7.fieldbyname('tq11').value>0 then p11.Font.Style:=[fsBold]
    else p11.Font.Style:=[];
    if query7.fieldbyname('ttq11').value>0 then t11.Font.Style:=[fsBold]
    else t11.Font.Style:=[];
  end;
  if dt12.Caption>'' then begin
    p12.Caption:=query7.fieldbyname('tq12').value;
    t12.Caption:=query7.fieldbyname('ttq12').value;
    if query7.fieldbyname('tq12').value>0 then p12.Font.Style:=[fsBold]
    else p12.Font.Style:=[];
    if query7.fieldbyname('ttq12').value>0 then t12.Font.Style:=[fsBold]
    else t12.Font.Style:=[];
  end;
  if dt13.Caption>'' then begin
    p13.Caption:=query7.fieldbyname('tq13').value;
    t13.Caption:=query7.fieldbyname('ttq13').value;
    if query7.fieldbyname('tq13').value>0 then p13.Font.Style:=[fsBold]
    else p13.Font.Style:=[];
    if query7.fieldbyname('ttq13').value>0 then t13.Font.Style:=[fsBold]
    else t13.Font.Style:=[];
  end;
  }
end;

procedure TfrmdailyT2.ppSummaryBand2BeforePrint(Sender: TObject);
var
  ts201,ts202,s001,s002:string;
  c3:integer;
  tm0:tdatetime;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select sum(tq01) as q1,sum(tq02) as q2,sum(tq03) as q3,sum(tq04) as q4,sum(tq05) as q5,sum(tq06) as q6,sum(tq07) as q7,sum(tq08) as q8,sum(tq09) as q9,sum(tq10) as q10,'
                +'sum(tq11) as q11,sum(tq12) as q12,sum(tq13) as q13,sum(ttq01) as q01,sum(ttq02) as q02,sum(ttq03) as q03,sum(ttq04) as q04,sum(ttq05) as q05,sum(ttq06) as q06,sum(ttq07) as q07,sum(ttq08) as q08,'
                +'sum(ttq09) as q09,sum(ttq10) as q010,sum(ttq11) as q011,sum(ttq12) as q012,sum(ttq13) as q013 from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=''2''';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=query7.fieldbyname('tm').value;
    open;
    if dt01.Caption>'' then begin
      sp01.Caption:=fieldbyname('q1').asstring;
      st01.Caption:=fieldbyname('q01').asstring;
    end else begin
      sp01.Caption:='';st01.Caption:='';
    end;
    if dt02.Caption>'' then begin
      sp02.Caption:=fieldbyname('q2').asstring;
      st02.Caption:=fieldbyname('q02').asstring;
    end else begin
      sp02.Caption:='';st02.Caption:='';
    end;
    if dt03.Caption>'' then begin
      sp03.Caption:=fieldbyname('q3').asstring;
      st03.Caption:=fieldbyname('q03').asstring;
    end else begin
      sp03.Caption:='';st03.Caption:='';
    end;
    if dt04.Caption>'' then begin
      sp04.Caption:=fieldbyname('q4').asstring;
      st04.Caption:=fieldbyname('q04').asstring;
    end else begin
      sp04.Caption:='';st04.Caption:='';
    end;
    if dt05.Caption>'' then begin
      sp05.Caption:=fieldbyname('q5').asstring;
      st05.Caption:=fieldbyname('q05').asstring;
    end else begin
      sp05.Caption:='';st05.Caption:='';
    end;
    if dt06.Caption>'' then begin
      sp06.Caption:=fieldbyname('q6').asstring;
      st06.Caption:=fieldbyname('q06').asstring;
    end else begin
      sp06.Caption:='';st06.Caption:='';
    end;
    if dt07.Caption>'' then begin
      sp07.Caption:=fieldbyname('q7').asstring;
      st07.Caption:=fieldbyname('q07').asstring;
    end else begin
      sp07.Caption:='';st07.Caption:='';
    end;
    if dt08.Caption>'' then begin
      sp08.Caption:=fieldbyname('q8').asstring;
      st08.Caption:=fieldbyname('q08').asstring;
    end else begin
      sp08.Caption:='';st08.Caption:='';
    end;
    if dt09.Caption>'' then begin
      sp09.Caption:=fieldbyname('q9').asstring;
      st09.Caption:=fieldbyname('q09').asstring;
    end else begin
      sp09.Caption:='';st09.Caption:='';
    end;
    if dt10.Caption>'' then begin
      sp10.Caption:=fieldbyname('q10').asstring;
      st10.Caption:=fieldbyname('q010').asstring;
    end else begin
      sp10.Caption:='';st10.Caption:='';
    end;
    {
    if dt11.Caption>'' then begin
      sp11.Caption:=fieldbyname('q11').asstring;
      st11.Caption:=fieldbyname('q011').asstring;
    end else begin
      sp11.Caption:='';st11.Caption:='';
    end;
    if dt12.Caption>'' then begin
      sp12.Caption:=fieldbyname('q12').asstring;
      st12.Caption:=fieldbyname('q012').asstring;
    end else begin
      sp12.Caption:='';st12.Caption:='';
    end;
    if dt13.Caption>'' then begin
      sp13.Caption:=fieldbyname('q13').asstring;
      st13.Caption:=fieldbyname('q013').asstring;
    end else begin
      sp13.Caption:='';st13.Caption:='';
    end;
    }
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
  f02.Caption:=i3;
  h02.Caption:=i4;

  tm0:=now;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='execute procedure sp_lwo_calc_sewdt(:x1,:x2,:x3)';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    execute;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_sewdt where pline=:x1 and seq=:x2 and tm=:x3';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then s001:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else s001:='';
    end else begin
      s001:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if (fieldbyname('dt2').value>encodedate(1899,12,30)) and (fieldbyname('dt2').value<date) then s002:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else s002:='';
    end else begin
      s002:='';
    end;
  end;

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
    params[3].asstring:='2';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=301 and dseq<=320 and tp=''2'' and dt>:x4';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then ts201:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else ts201:='';
    end else begin
      ts201:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts202:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts202:='';
    end else begin
      ts202:='';
    end;
  end;
  c3:=1;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp2 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp2=0';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp2').isnull then c3:=0;
  end;

  sewn01.Caption:=s001;sewn02.Caption:=s002;
  if c3=1 then begin
    transit201.Caption:=ts201;transit202.Caption:='';
  end else begin
    transit201.Caption:=ts201;transit202.Caption:=ts202;
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
    {
    if not fieldbyname('aqlmemo').isnull then begin
      if fieldbyname('aqlmemo').value>'' then begin
        ppmemo1.Lines.Add('AQL: -  '+fieldbyname('aqlmemo').value);
      end;
    end;
    }
    if not fieldbyname('smemo').isnull then begin
      if fieldbyname('smemo').value>'' then begin
        ppmemo1.Lines.Add('Sewn: -  '+fieldbyname('smemo').value);
      end;
    end;
    if not fieldbyname('t2memo').isnull then begin
      if fieldbyname('t2memo').value>'' then begin
        ppmemo1.Lines.add('T2: -  '+fieldbyname('t2memo').value);
      end;
    end;
    //if not fieldbyname('t2memo').isnull then ppmemo1.Lines.add(fieldbyname('t2memo').value);
  end;
end;

procedure TfrmdailyT2.ppHeaderBand2BeforePrint(Sender: TObject);
var
  i:integer;
begin
  x001.Visible:=false;x002.Visible:=false;x003.Visible:=false;x004.Visible:=false;x005.Visible:=false;
  x006.Visible:=false;x007.Visible:=false;x008.Visible:=false;x009.Visible:=false;x010.Visible:=false;
  //x011.Visible:=false;x012.Visible:=false;x013.Visible:=false;
  w001.Visible:=false;w002.Visible:=false;w003.Visible:=false;w004.Visible:=false;w005.Visible:=false;
  w006.Visible:=false;w007.Visible:=false;w008.Visible:=false;w009.Visible:=false;w010.Visible:=false;
  seq01.caption:='';seq02.caption:='';seq03.caption:='';seq04.caption:='';seq05.caption:='';
  seq06.caption:='';seq07.caption:='';seq08.caption:='';seq09.caption:='';seq10.caption:='';
  seq0101.Caption:='';seq0102.Caption:='';seq0201.Caption:='';seq0202.Caption:='';
  seq0301.Caption:='';seq0302.Caption:='';seq0401.Caption:='';seq0402.Caption:='';
  seq0501.Caption:='';seq0502.Caption:='';seq0601.Caption:='';seq0602.Caption:='';
  seq0701.Caption:='';seq0702.Caption:='';seq0801.Caption:='';seq0802.Caption:='';
  seq0901.Caption:='';seq0902.Caption:='';seq1001.Caption:='';seq1002.Caption:='';
  //
  y001.Visible:=false;y002.Visible:=false;y003.Visible:=false;y004.Visible:=false;y005.Visible:=false;
  y006.Visible:=false;y007.Visible:=false;y008.Visible:=false;y009.Visible:=false;y010.Visible:=false;
  //y011.Visible:=false;y012.Visible:=false;y013.Visible:=false;
  i:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_trans_dt where tm=:x1 and pline=:x2 and seq=:x3 and typ=''2''';
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
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=1;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq0101.Caption:=fieldbyname('o_cnt').asstring else seq0101.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0102.Caption:=fieldbyname('o_cnt1').asstring else seq0102.Caption:='0';
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
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=2;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq0201.Caption:=fieldbyname('o_cnt').asstring else seq0201.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0202.Caption:=fieldbyname('o_cnt1').asstring else seq0202.Caption:='0';
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
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=3;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq0301.Caption:=fieldbyname('o_cnt').asstring else seq0301.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0302.Caption:=fieldbyname('o_cnt1').asstring else seq0302.Caption:='0';
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
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=4;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq0401.Caption:=fieldbyname('o_cnt').asstring else seq0401.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0402.Caption:=fieldbyname('o_cnt1').asstring else seq0402.Caption:='0';
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
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=5;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq0501.Caption:=fieldbyname('o_cnt').asstring else seq0501.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0502.Caption:=fieldbyname('o_cnt1').asstring else seq0502.Caption:='0';
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
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=6;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq0601.Caption:=fieldbyname('o_cnt').asstring else seq0601.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0602.Caption:=fieldbyname('o_cnt1').asstring else seq0602.Caption:='0';
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
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=7;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq0701.Caption:=fieldbyname('o_cnt').asstring else seq0701.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0702.Caption:=fieldbyname('o_cnt1').asstring else seq0702.Caption:='0';
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
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=8;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq0801.Caption:=fieldbyname('o_cnt').asstring else seq0801.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0802.Caption:=fieldbyname('o_cnt1').asstring else seq0802.Caption:='0';
      end;
    end;
    if not fieldbyname('dt09').isnull then begin
      seq09.Caption:='0';//fieldbyname('ct09').value;
      dt09.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt09').value);
      x009.Visible:=true;y009.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=9;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq0901.Caption:=fieldbyname('o_cnt').asstring else seq0901.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0902.Caption:=fieldbyname('o_cnt1').asstring else seq0902.Caption:='0';
      end;
    end;
    if not fieldbyname('dt10').isnull then begin
      seq10.Caption:='0';//fieldbyname('ct10').value;
      dt10.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt10').value);
      x010.Visible:=true;y010.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_2(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=10;
        params[2].asstring:=query7.fieldbyname('pline').value;
        params[3].asinteger:=query7.fieldbyname('seq').value;
        open;
        if not fieldbyname('o_cnt').isnull then seq1001.Caption:=fieldbyname('o_cnt').asstring else seq1001.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq1002.Caption:=fieldbyname('o_cnt1').asstring else seq1002.Caption:='0';
      end;
    end;
    {
    if not fieldbyname('dt11').isnull then begin
      seq11.Caption:=fieldbyname('ct11').value;
      dt11.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt11').value);
      x011.Visible:=true;y011.Visible:=true;
    end;
    if not fieldbyname('dt12').isnull then begin
      seq12.Caption:=fieldbyname('ct12').value;
      dt12.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt12').value);
      x012.Visible:=true;y012.Visible:=true;
    end;
    if not fieldbyname('dt13').isnull then begin
      seq13.Caption:=fieldbyname('ct13').value;
      dt13.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt13').value);
      x013.Visible:=true;y013.Visible:=true;
    end;
    }
  end;
end;

procedure TfrmdailyT2.ppReport2BeforePrint(Sender: TObject);
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
