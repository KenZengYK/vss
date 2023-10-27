unit dailyT3formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppStrtch, ppMemo, ppCtrls, ppBands, myChkBox, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, ppViewr, ppParameter;

type
  TfrmdailyT3 = class(TForm)
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
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppLabel61: TppLabel;
    ppLabel65: TppLabel;
    i011: TppLabel;
    ppLabel73: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLine63: TppLine;
    ppLine64: TppLine;
    dt01: TppLabel;
    dt02: TppLabel;
    dt03: TppLabel;
    dt04: TppLabel;
    dt05: TppLabel;
    dt06: TppLabel;
    dt07: TppLabel;
    dt08: TppLabel;
    seq01: TppLabel;
    seq02: TppLabel;
    seq03: TppLabel;
    seq04: TppLabel;
    seq05: TppLabel;
    seq06: TppLabel;
    seq07: TppLabel;
    seq08: TppLabel;
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
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine6: TppLine;
    title001: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    i010: TppLabel;
    i009: TppLabel;
    i008: TppLabel;
    i007: TppLabel;
    i006: TppLabel;
    i005: TppLabel;
    i004: TppLabel;
    i003: TppLabel;
    i002: TppLabel;
    i001: TppLabel;
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
    ppLine2: TppLine;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine5: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText7: TppDBText;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppDBText8: TppDBText;
    i01: TppLabel;
    i02: TppLabel;
    i03: TppLabel;
    i04: TppLabel;
    i05: TppLabel;
    i06: TppLabel;
    i07: TppLabel;
    i08: TppLabel;
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
    transit301: TppLabel;
    ppLabel49: TppLabel;
    packed01: TppLabel;
    ppLabel40: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    packed02: TppLabel;
    transit302: TppLabel;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
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
    l02: TppLabel;
    ppLine3: TppLine;
    j02: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine7: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine18: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine20: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBCalc6: TppDBCalc;
    si01: TppLabel;
    si02: TppLabel;
    si03: TppLabel;
    si04: TppLabel;
    si05: TppLabel;
    si06: TppLabel;
    si07: TppLabel;
    si08: TppLabel;
    title002: TppLabel;
    ppLabel165: TppLabel;
    myCheckBox5: TmyCheckBox;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    myCheckBox6: TmyCheckBox;
    ppLabel168: TppLabel;
    ppLabel3: TppLabel;
    seq0201: TppLabel;
    seq0301: TppLabel;
    seq0401: TppLabel;
    seq0501: TppLabel;
    seq0601: TppLabel;
    seq0701: TppLabel;
    seq0801: TppLabel;
    seq0101: TppLabel;
    seq0102: TppLabel;
    seq0202: TppLabel;
    seq0302: TppLabel;
    seq0402: TppLabel;
    seq0502: TppLabel;
    seq0602: TppLabel;
    seq0702: TppLabel;
    seq0802: TppLabel;
    Query4: TClientDataSet;
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
  frmdailyT3: TfrmdailyT3;

implementation

uses mainformu, dailyreportformu;

{$R *.dfm}

procedure TfrmdailyT3.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmdailyT3.ppDetailBand2BeforePrint(Sender: TObject);
begin
  p01.caption:='';t01.caption:='';i01.Caption:='';
  p02.caption:='';t02.caption:='';i02.Caption:='';
  p03.caption:='';t03.caption:='';i03.Caption:='';
  p04.caption:='';t04.caption:='';i04.Caption:='';
  p05.caption:='';t05.caption:='';i05.Caption:='';
  p06.caption:='';t06.caption:='';i06.Caption:='';
  p07.caption:='';t07.caption:='';i07.Caption:='';
  p08.caption:='';t08.caption:='';i08.Caption:='';
  if dt01.Caption>'' then begin
    p01.Caption:=query7.fieldbyname('ttq01').value;
    t01.Caption:=query7.fieldbyname('ttq01').value;
    if query7.fieldbyname('ttq01').value>0 then p01.Font.Style:=[fsBold]
    else p01.Font.Style:=[];
    if query7.fieldbyname('ttq01').value>0 then t01.Font.Style:=[fsBold]
    else t01.Font.Style:=[];
    i01.Caption:=Query7.fieldbyname('q01').value;
    if query7.fieldbyname('q01').value>0 then i01.Font.Style:=[fsBold]
    else i01.Font.Style:=[];
  end;
  if dt02.Caption>'' then begin
    p02.Caption:=query7.fieldbyname('ttq02').value;
    t02.Caption:=query7.fieldbyname('ttq02').value;
    if query7.fieldbyname('ttq02').value>0 then p02.Font.Style:=[fsBold]
    else p02.Font.Style:=[];
    if query7.fieldbyname('ttq02').value>0 then t02.Font.Style:=[fsBold]
    else t02.Font.Style:=[];
    i02.Caption:=Query7.fieldbyname('q02').value;
    if query7.fieldbyname('q02').value>0 then i02.Font.Style:=[fsBold]
    else i02.Font.Style:=[];
  end;
  if dt03.Caption>'' then begin
    p03.Caption:=query7.fieldbyname('ttq03').value;
    t03.Caption:=query7.fieldbyname('ttq03').value;
    if query7.fieldbyname('ttq03').value>0 then p03.Font.Style:=[fsBold]
    else p03.Font.Style:=[];
    if query7.fieldbyname('ttq03').value>0 then t03.Font.Style:=[fsBold]
    else t03.Font.Style:=[];
    i03.Caption:=Query7.fieldbyname('q03').value;
    if query7.fieldbyname('q03').value>0 then i03.Font.Style:=[fsBold]
    else i03.Font.Style:=[];
  end;
  if dt04.Caption>'' then begin
    p04.Caption:=query7.fieldbyname('ttq04').value;
    t04.Caption:=query7.fieldbyname('ttq04').value;
    if query7.fieldbyname('ttq04').value>0 then p04.Font.Style:=[fsBold]
    else p04.Font.Style:=[];
    if query7.fieldbyname('ttq04').value>0 then t04.Font.Style:=[fsBold]
    else t04.Font.Style:=[];
    i04.Caption:=Query7.fieldbyname('q04').value;
    if query7.fieldbyname('q04').value>0 then i04.Font.Style:=[fsBold]
    else i04.Font.Style:=[];
  end;
  if dt05.Caption>'' then begin
    p05.Caption:=query7.fieldbyname('ttq05').value;
    t05.Caption:=query7.fieldbyname('ttq05').value;
    if query7.fieldbyname('ttq05').value>0 then p05.Font.Style:=[fsBold]
    else p05.Font.Style:=[];
    if query7.fieldbyname('ttq05').value>0 then t05.Font.Style:=[fsBold]
    else t05.Font.Style:=[];
    i05.Caption:=Query7.fieldbyname('q05').value;
    if query7.fieldbyname('q05').value>0 then i05.Font.Style:=[fsBold]
    else i05.Font.Style:=[];
  end;
  if dt06.Caption>'' then begin
    p06.Caption:=query7.fieldbyname('ttq06').value;
    t06.Caption:=query7.fieldbyname('ttq06').value;
    if query7.fieldbyname('ttq06').value>0 then p06.Font.Style:=[fsBold]
    else p06.Font.Style:=[];
    if query7.fieldbyname('ttq06').value>0 then t06.Font.Style:=[fsBold]
    else t06.Font.Style:=[];
    i06.Caption:=Query7.fieldbyname('q06').value;
    if query7.fieldbyname('q06').value>0 then i06.Font.Style:=[fsBold]
    else i06.Font.Style:=[];
  end;
  if dt07.Caption>'' then begin
    p07.Caption:=query7.fieldbyname('ttq07').value;
    t07.Caption:=query7.fieldbyname('ttq07').value;
    if query7.fieldbyname('ttq07').value>0 then p07.Font.Style:=[fsBold]
    else p07.Font.Style:=[];
    if query7.fieldbyname('ttq07').value>0 then t07.Font.Style:=[fsBold]
    else t07.Font.Style:=[];
    i07.Caption:=Query7.fieldbyname('q07').value;
    if query7.fieldbyname('q07').value>0 then i07.Font.Style:=[fsBold]
    else i07.Font.Style:=[];
  end;
  if dt08.Caption>'' then begin
    p08.Caption:=query7.fieldbyname('ttq08').value;
    t08.Caption:=query7.fieldbyname('ttq08').value;
    if query7.fieldbyname('ttq08').value>0 then p08.Font.Style:=[fsBold]
    else p08.Font.Style:=[];
    if query7.fieldbyname('ttq08').value>0 then t08.Font.Style:=[fsBold]
    else t08.Font.Style:=[];
    i08.Caption:=Query7.fieldbyname('q08').value;
    if query7.fieldbyname('q08').value>0 then i08.Font.Style:=[fsBold]
    else i08.Font.Style:=[];
  end;
end;

procedure TfrmdailyT3.ppSummaryBand2BeforePrint(Sender: TObject);
var
  ts301,ts302:string;
  c4:integer;
  tm0:tdatetime;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select sum(q01) as q1,sum(q02) as q2,sum(q03) as q3,sum(q04) as q4,sum(q05) as q5,sum(q06) as q6,sum(q07) as q7,sum(q08) as q8,'
                +'sum(ttq01) as q01,sum(ttq02) as q02,sum(ttq03) as q03,sum(ttq04) as q04,sum(ttq05) as q05,sum(ttq06) as q06,sum(ttq07) as q07,sum(ttq08) as q08 '
                +'from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=''3''';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=query7.fieldbyname('tm').value;;
    open;
    if dt01.Caption>'' then begin
      sp01.Caption:=fieldbyname('q01').asstring;
      st01.Caption:=fieldbyname('q01').asstring;
      si01.Caption:=fieldbyname('q1').asstring;
    end else begin
      sp01.Caption:='';st01.Caption:='';si01.caption:='';
    end;
    if dt02.Caption>'' then begin
      sp02.Caption:=fieldbyname('q02').asstring;
      st02.Caption:=fieldbyname('q02').asstring;
      si02.Caption:=fieldbyname('q2').asstring;
    end else begin
      sp02.Caption:='';st02.Caption:='';si02.caption:='';
    end;
    if dt03.Caption>'' then begin
      sp03.Caption:=fieldbyname('q03').asstring;
      st03.Caption:=fieldbyname('q03').asstring;
      si03.Caption:=fieldbyname('q3').asstring;
    end else begin
      sp03.Caption:='';st03.Caption:='';si03.caption:='';
    end;
    if dt04.Caption>'' then begin
      sp04.Caption:=fieldbyname('q04').asstring;
      st04.Caption:=fieldbyname('q04').asstring;
      si04.Caption:=fieldbyname('q4').asstring;
    end else begin
      sp04.Caption:='';st04.Caption:='';si04.caption:='';
    end;
    if dt05.Caption>'' then begin
      sp05.Caption:=fieldbyname('q05').asstring;
      st05.Caption:=fieldbyname('q05').asstring;
      si05.Caption:=fieldbyname('q5').asstring;
    end else begin
      sp05.Caption:='';st05.Caption:='';si05.caption:='';
    end;
    if dt06.Caption>'' then begin
      sp06.Caption:=fieldbyname('q06').asstring;
      st06.Caption:=fieldbyname('q06').asstring;
      si06.Caption:=fieldbyname('q6').asstring;
    end else begin
      sp06.Caption:='';st06.Caption:='';si06.caption:='';
    end;
    if dt07.Caption>'' then begin
      sp07.Caption:=fieldbyname('q07').asstring;
      st07.Caption:=fieldbyname('q07').asstring;
      si07.Caption:=fieldbyname('q7').asstring;
    end else begin
      sp07.Caption:='';st07.Caption:='';si07.caption:='';
    end;
    if dt08.Caption>'' then begin
      sp08.Caption:=fieldbyname('q08').asstring;
      st08.Caption:=fieldbyname('q08').asstring;
      si08.Caption:=fieldbyname('q8').asstring;
    end else begin
      sp08.Caption:='';st08.Caption:='';si08.caption:='';
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
  j02.Caption:=i5;
  l02.Caption:=i6;
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
    params[3].asstring:='3';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=401 and dseq<=405 and tp=''3'' and dt>:x4';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then ts301:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else ts301:='';
    end else begin
      ts301:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts302:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts302:='';
    end else begin
      ts302:='';
    end;
  end;

  c4:=1;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp3 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp3=0';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp3').isnull then c4:=0;
  end;
  if c4=1 then begin
    packed01.Caption:=ts301;packed02.Caption:='';
    transit301.Caption:=ts301;transit302.Caption:='';
  end else begin
    packed01.Caption:=ts301;packed02.Caption:=ts302;
    transit301.Caption:=ts301;transit302.Caption:=ts302;
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
    if not fieldbyname('pmemo').isnull then ppmemo1.Lines.add(fieldbyname('pmemo').value);
  end;
end;

procedure TfrmdailyT3.ppHeaderBand2BeforePrint(Sender: TObject);
var
  ipack:string;
begin
  seq01.caption:='';seq0101.caption:='';seq02.caption:='';seq0201.caption:='';seq03.caption:='';seq0301.caption:='';
  seq04.caption:='';seq0401.caption:='';seq05.caption:='';seq0501.caption:='';seq06.caption:='';seq0601.caption:='';
  seq07.caption:='';seq0701.caption:='';seq08.caption:='';seq0801.caption:='';
  seq0102.caption:='';seq0202.caption:='';seq0302.caption:='';seq0402.caption:='';
  seq0502.caption:='';seq0602.caption:='';seq0702.caption:='';seq0802.caption:='';
  i001.Visible:=false;i002.Visible:=false;i003.Visible:=false;i004.Visible:=false;i005.Visible:=false;
  i006.Visible:=false;i007.Visible:=false;i008.Visible:=false;
  x001.Visible:=false;x002.Visible:=false;x003.Visible:=false;x004.Visible:=false;x005.Visible:=false;
  x006.Visible:=false;x007.Visible:=false;x008.Visible:=false;
  y001.Visible:=false;y002.Visible:=false;y003.Visible:=false;y004.Visible:=false;y005.Visible:=false;
  y006.Visible:=false;y007.Visible:=false;y008.Visible:=false;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select iga_p from tbl_lwo where pline=:x1 and seq=:x2 and iga_p>''''';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if not fieldbyname('iga_p').IsNull then ipack:=fieldbyname('iga_p').value else ipack:='';
  end;
  if (ipack='i') or (ipack='') then begin
    i001.Caption:='iPack';i002.Caption:='iPack';i003.Caption:='iPack';i004.Caption:='iPack';
    i005.Caption:='iPack';i006.Caption:='iPack';i007.Caption:='iPack';i008.Caption:='iPack';
    i009.Caption:='iPack';i010.Caption:='iPack';i011.Caption:='iPack';
    title002.Caption:='(iPack - > cPacked - > Transit 3)';
  end else if ipack='g' then begin
    i001.Caption:='gPack';i002.Caption:='gPack';i003.Caption:='gPack';i004.Caption:='gPack';
    i005.Caption:='gPack';i006.Caption:='gPack';i007.Caption:='gPack';i008.Caption:='gPack';
    i009.Caption:='gPack';i010.Caption:='gPack';i011.Caption:='gPack';
    title002.Caption:='(gPack - > cPacked - > Transit 3)';
  end else if ipack='a' then begin
    i001.Caption:='aPack';i002.Caption:='aPack';i003.Caption:='aPack';i004.Caption:='aPack';
    i005.Caption:='aPack';i006.Caption:='aPack';i007.Caption:='aPack';i008.Caption:='aPack';
    i009.Caption:='aPack';i010.Caption:='aPack';i011.Caption:='aPack';
    title002.Caption:='(aPack - > cPacked - > Transit 3)';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_trans_dt where tm=:x1 and pline=:x2 and seq=:x3 and typ=''3''';
    params[0].asdatetime:=query7.fieldbyname('tm').value;
    params[1].asstring:=query7.fieldbyname('pline').value;
    params[2].asinteger:=query7.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt01').isnull then begin
      seq01.Caption:='0';//fieldbyname('ct01').value;
      dt01.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt01').value);
      i001.visible:=true;x001.Visible:=true;y001.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_3(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=1;
        open;
        if not fieldbyname('o_cnt').isnull then seq0101.Caption:=fieldbyname('o_cnt').asstring else seq0101.Caption:='0';
        if not fieldbyname('o_cnt').isnull then seq0102.Caption:=fieldbyname('o_cnt').asstring else seq0102.Caption:='0';
      end;
    end;
    if not fieldbyname('dt02').isnull then begin
      seq02.Caption:='0';//fieldbyname('ct02').value;
      dt02.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt02').value);
      i002.visible:=true;x002.Visible:=true;y002.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_3(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=2;
        open;
        if not fieldbyname('o_cnt').isnull then seq0201.Caption:=fieldbyname('o_cnt').asstring else seq0201.Caption:='0';
        if not fieldbyname('o_cnt').isnull then seq0202.Caption:=fieldbyname('o_cnt').asstring else seq0202.Caption:='0';
      end;
    end;
    if not fieldbyname('dt03').isnull then begin
      seq03.Caption:='0';//fieldbyname('ct03').value;
      dt03.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt03').value);
      i003.visible:=true;x003.Visible:=true;y003.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_3(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=3;
        open;
        if not fieldbyname('o_cnt').isnull then seq0301.Caption:=fieldbyname('o_cnt').asstring else seq0301.Caption:='0';
        if not fieldbyname('o_cnt').isnull then seq0302.Caption:=fieldbyname('o_cnt').asstring else seq0302.Caption:='0';
      end;
    end;
    if not fieldbyname('dt04').isnull then begin
      seq04.Caption:='0';//fieldbyname('ct04').value;
      dt04.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt04').value);
      i004.visible:=true;x004.Visible:=true;y004.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_3(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=4;
        open;
        if not fieldbyname('o_cnt').isnull then seq0401.Caption:=fieldbyname('o_cnt').asstring else seq0401.Caption:='0';
        if not fieldbyname('o_cnt').isnull then seq0402.Caption:=fieldbyname('o_cnt').asstring else seq0402.Caption:='0';
      end;
    end;
    if not fieldbyname('dt05').isnull then begin
      seq05.Caption:='0';//fieldbyname('ct05').value;
      dt05.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt05').value);
      i005.visible:=true;x005.Visible:=true;y005.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_3(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=5;
        open;
        if not fieldbyname('o_cnt').isnull then seq0501.Caption:=fieldbyname('o_cnt').asstring else seq0501.Caption:='0';
        if not fieldbyname('o_cnt').isnull then seq0502.Caption:=fieldbyname('o_cnt').asstring else seq0502.Caption:='0';
      end;
    end;
    if not fieldbyname('dt06').isnull then begin
      seq06.Caption:='0';//fieldbyname('ct06').value;
      dt06.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt06').value);
      i006.visible:=true;x006.Visible:=true;y006.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_3(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=6;
        open;
        if not fieldbyname('o_cnt').isnull then seq0601.Caption:=fieldbyname('o_cnt').asstring else seq0601.Caption:='0';
        if not fieldbyname('o_cnt').isnull then seq0602.Caption:=fieldbyname('o_cnt').asstring else seq0602.Caption:='0';
      end;
    end;
    if not fieldbyname('dt07').isnull then begin
      seq07.Caption:='0';//fieldbyname('ct07').value;
      dt07.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt07').value);
      i007.visible:=true;x007.Visible:=true;y007.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_3(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=7;
        open;
        if not fieldbyname('o_cnt').isnull then seq0701.Caption:=fieldbyname('o_cnt').asstring else seq0701.Caption:='0';
        if not fieldbyname('o_cnt').isnull then seq0702.Caption:=fieldbyname('o_cnt').asstring else seq0702.Caption:='0';
      end;
    end;
    if not fieldbyname('dt08').isnull then begin
      seq08.Caption:='0';//fieldbyname('ct08').value;
      dt08.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt08').value);
      i008.visible:=true;x008.Visible:=true;y008.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_3(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=8;
        open;
        if not fieldbyname('o_cnt').isnull then seq0801.Caption:=fieldbyname('o_cnt').asstring else seq0801.Caption:='0';
        if not fieldbyname('o_cnt').isnull then seq0802.Caption:=fieldbyname('o_cnt').asstring else seq0802.Caption:='0';
      end;
    end;
  end;
end;

procedure TfrmdailyT3.ppReport2BeforePrint(Sender: TObject);
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
