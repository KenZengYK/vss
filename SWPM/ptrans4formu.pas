unit ptrans4formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, myChkBox, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ComCtrls, StdCtrls, Db, ppViewr,
  ppStrtch, ppMemo, ppParameter;

type
  Tfrmptrans4 = class(TForm)
    Label1: TLabel;
    dtpk1: TDateTimePicker;
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
    seq11: TppLabel;
    dt11: TppLabel;
    seq12: TppLabel;
    dt12: TppLabel;
    seq13: TppLabel;
    dt13: TppLabel;
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
    y011: TppLabel;
    y012: TppLabel;
    y013: TppLabel;
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
    t11: TppLabel;
    t12: TppLabel;
    t13: TppLabel;
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
    ppShape18: TppShape;
    ppLabel51: TppLabel;
    yszq2: TppLabel;
    ppLine102: TppLine;
    ppLine112: TppLine;
    ppLine114: TppLine;
    st11: TppLabel;
    st12: TppLabel;
    st13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    myDBCheckBox5: TmyDBCheckBox;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    x001: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLine8: TppLine;
    ppLine9: TppLine;
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
    m02: TppLabel;
    p02: TppLabel;
    ppLine61: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine62: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBText1: TppDBText;
    ppLine79: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBCalc2: TppDBCalc;
    myCheckBox1: TmyCheckBox;
    myCheckBox2: TmyCheckBox;
    ppLabel11: TppLabel;
    ppDBText3: TppDBText;
    ppDBCalc3: TppDBCalc;
    title001: TppLabel;
    ppLine5: TppLine;
    ppLine80: TppLine;
    ppShape29: TppShape;
    ppMemo3: TppMemo;
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmptrans4: Tfrmptrans4;

implementation

uses mainformu, lwoformu;

{$R *.dfm}

procedure Tfrmptrans4.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  y001.Visible:=false;y002.Visible:=false;y003.Visible:=false;y004.Visible:=false;y005.Visible:=false;
  y006.Visible:=false;y007.Visible:=false;y008.Visible:=false;y009.Visible:=false;y010.Visible:=false;
  y011.Visible:=false;y012.Visible:=false;y013.Visible:=false;
  x001.visible:=false;x002.visible:=false;x003.visible:=false;
  with frmlwo.query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_trans_dt where tm=:x1 and pline=:x2 and seq=:x3';
    params[0].asdatetime:=dtpk1.DateTime; //strtodatetime(label1.caption);
    params[1].asstring:=frmlwo.query1.fieldbyname('pline').value;
    params[2].asinteger:=frmlwo.query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt01').isnull then begin
      seq01.Caption:=fieldbyname('ct01').value;
      dt01.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt01').value);
      x001.Visible:=true;y001.Visible:=true;
    end;
    if not fieldbyname('dt02').isnull then begin
      seq02.Caption:=fieldbyname('ct02').value;
      dt02.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt02').value);
      x002.Visible:=true;y002.Visible:=true;
    end;
    if not fieldbyname('dt03').isnull then begin
      seq03.Caption:=fieldbyname('ct03').value;
      dt03.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt03').value);
      x003.Visible:=true;y003.Visible:=true;
    end;
    if not fieldbyname('dt04').isnull then begin
      seq04.Caption:=fieldbyname('ct04').value;
      dt04.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt04').value);
      y004.Visible:=true;
    end;
    if not fieldbyname('dt05').isnull then begin
      seq05.Caption:=fieldbyname('ct05').value;
      dt05.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt05').value);
      y005.Visible:=true;
    end;
    if not fieldbyname('dt06').isnull then begin
      seq06.Caption:=fieldbyname('ct06').value;
      dt06.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt06').value);
      y006.Visible:=true;
    end;
    if not fieldbyname('dt07').isnull then begin
      seq07.Caption:=fieldbyname('ct07').value;
      dt07.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt07').value);
      y007.Visible:=true;
    end;
    if not fieldbyname('dt08').isnull then begin
      seq08.Caption:=fieldbyname('ct08').value;
      dt08.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt08').value);
      y008.Visible:=true;
    end;
    if not fieldbyname('dt09').isnull then begin
      seq09.Caption:=fieldbyname('ct09').value;
      dt09.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt09').value);
      y009.Visible:=true;
    end;
    if not fieldbyname('dt10').isnull then begin
      seq10.Caption:=fieldbyname('ct10').value;
      dt10.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt10').value);
      y010.Visible:=true;
    end;
    if not fieldbyname('dt11').isnull then begin
      seq11.Caption:=fieldbyname('ct11').value;
      dt11.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt11').value);
      y011.Visible:=true;
    end;
    if not fieldbyname('dt12').isnull then begin
      seq12.Caption:=fieldbyname('ct12').value;
      dt12.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt12').value);
      y012.Visible:=true;
    end;
    if not fieldbyname('dt13').isnull then begin
      seq13.Caption:=fieldbyname('ct13').value;
      dt13.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt13').value);
      y013.Visible:=true;
    end;
    {
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        seq01.Caption:=fieldbyname('sseq').AsString;
        dt01.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y001.Visible:=true;
        x001.visible:=true;
      end else if i=2 then begin
        seq02.Caption:=fieldbyname('sseq').AsString;
        dt02.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y002.Visible:=true;
        x002.visible:=true;
      end else if i=3 then begin
        seq03.Caption:=fieldbyname('sseq').AsString;
        dt03.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y003.Visible:=true;
        x003.visible:=true;
      end else if i=4 then begin
        seq04.Caption:=fieldbyname('sseq').AsString;
        dt04.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y004.Visible:=true;
      end else if i=5 then begin
        seq05.Caption:=fieldbyname('sseq').AsString;
        dt05.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y005.Visible:=true;
      end else if i=6 then begin
        seq06.Caption:=fieldbyname('sseq').AsString;
        dt06.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y006.Visible:=true;
      end else if i=7 then begin
        seq07.Caption:=fieldbyname('sseq').AsString;
        dt07.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y007.Visible:=true;
      end else if i=8 then begin
        seq08.Caption:=fieldbyname('sseq').AsString;
        dt08.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y008.Visible:=true;
      end else if i=9 then begin
        seq09.Caption:=fieldbyname('sseq').AsString;
        dt09.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y009.Visible:=true;
      end else if i=10 then begin
        seq10.Caption:=fieldbyname('sseq').AsString;
        dt10.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y010.Visible:=true;
      end else if i=11 then begin
        seq11.Caption:=fieldbyname('sseq').AsString;
        dt11.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y011.Visible:=true;
      end else if i=12 then begin
        seq12.Caption:=fieldbyname('sseq').AsString;
        dt12.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y012.Visible:=true;
      end else if i=13 then begin
        seq13.Caption:=fieldbyname('sseq').AsString;
        dt13.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        y013.Visible:=true;
      end;
      application.ProcessMessages;
      next;
    end;
    }
  end;
end;

procedure Tfrmptrans4.ppDetailBand2BeforePrint(Sender: TObject);
begin
  //t101.Caption:=inttostr(frmlwo.query7.fieldbyname('ttqty').value-frmlwo.query7.fieldbyname('pqty').value);
  t01.caption:='';
  t02.caption:='';
  t03.caption:='';
  t04.caption:='';
  t05.caption:='';
  t06.caption:='';
  t07.caption:='';
  t08.caption:='';
  t09.caption:='';
  t10.caption:='';
  if dt01.Caption>'' then begin
    t01.Caption:=frmlwo.query7.fieldbyname('ttq01').value;
    if frmlwo.query7.fieldbyname('ttq01').value>0 then t01.Font.Style:=[fsBold]
    else t01.Font.Style:=[];
  end;
  if dt02.Caption>'' then begin
    t02.Caption:=frmlwo.query7.fieldbyname('ttq02').value;
    if frmlwo.query7.fieldbyname('ttq02').value>0 then t02.Font.Style:=[fsBold]
    else t02.Font.Style:=[];
  end;
  if dt03.Caption>'' then begin
    t03.Caption:=frmlwo.query7.fieldbyname('ttq03').value;
    if frmlwo.query7.fieldbyname('ttq03').value>0 then t03.Font.Style:=[fsBold]
    else t03.Font.Style:=[];
  end;
  if dt04.Caption>'' then begin
    t04.Caption:=frmlwo.query7.fieldbyname('ttq04').value;
    if frmlwo.query7.fieldbyname('ttq04').value>0 then t04.Font.Style:=[fsBold]
    else t04.Font.Style:=[];
  end;
  if dt05.Caption>'' then begin
    t05.Caption:=frmlwo.query7.fieldbyname('ttq05').value;
    if frmlwo.query7.fieldbyname('ttq05').value>0 then t05.Font.Style:=[fsBold]
    else t05.Font.Style:=[];
  end;
  if dt06.Caption>'' then begin
    t06.Caption:=frmlwo.query7.fieldbyname('ttq06').value;
    if frmlwo.query7.fieldbyname('ttq06').value>0 then t06.Font.Style:=[fsBold]
    else t06.Font.Style:=[];
  end;
  if dt07.Caption>'' then begin
    t07.Caption:=frmlwo.query7.fieldbyname('ttq07').value;
    if frmlwo.query7.fieldbyname('ttq07').value>0 then t07.Font.Style:=[fsBold]
    else t07.Font.Style:=[];
  end;
  if dt08.Caption>'' then begin
    t08.Caption:=frmlwo.query7.fieldbyname('ttq08').value;
    if frmlwo.query7.fieldbyname('ttq08').value>0 then t08.Font.Style:=[fsBold]
    else t08.Font.Style:=[];
  end;
  if dt09.Caption>'' then begin
    t09.Caption:=frmlwo.query7.fieldbyname('ttq09').value;
    if frmlwo.query7.fieldbyname('ttq09').value>0 then t09.Font.Style:=[fsBold]
    else t09.Font.Style:=[];
  end;
  if dt10.Caption>'' then begin
    t10.Caption:=frmlwo.query7.fieldbyname('ttq10').value;
    if frmlwo.query7.fieldbyname('ttq10').value>0 then t10.Font.Style:=[fsBold]
    else t10.Font.Style:=[];
  end;
end;

procedure Tfrmptrans4.ppSummaryBand2BeforePrint(Sender: TObject);
var
  ts401,ts402:string;
  c5:integer;
  tm0:tdatetime;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
  with frmlwo.query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select sum(tq01) as q1,sum(tq02) as q2,sum(tq03) as q3,sum(tq04) as q4,sum(tq05) as q5,sum(tq06) as q6,sum(tq07) as q7,sum(tq08) as q8,sum(tq09) as q9,sum(tq10) as q10,'
                +'sum(ttq01) as q01,sum(ttq02) as q02,sum(ttq03) as q03,sum(ttq04) as q04,sum(ttq05) as q05,sum(ttq06) as q06,sum(ttq07) as q07,sum(ttq08) as q08,'
                +'sum(ttq09) as q09,sum(ttq10) as q010 from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=''4''';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
    params[2].asdatetime:=dtpk1.DateTime; //strtodatetime(label1.caption);
    open;
    if dt01.Caption>'' then begin
      st01.Caption:=fieldbyname('q01').asstring;
    end else begin
      st01.Caption:='';
    end;
    if dt02.Caption>'' then begin
      st02.Caption:=fieldbyname('q02').asstring;
    end else begin
      st02.Caption:='';
    end;
    if dt03.Caption>'' then begin
      st03.Caption:=fieldbyname('q03').asstring;
    end else begin
      st03.Caption:='';
    end;
    if dt04.Caption>'' then begin
      st04.Caption:=fieldbyname('q04').asstring;
    end else begin
      st04.Caption:='';
    end;
    if dt05.Caption>'' then begin
      st05.Caption:=fieldbyname('q05').asstring;
    end else begin
      st05.Caption:='';
    end;
    if dt06.Caption>'' then begin
      st06.Caption:=fieldbyname('q06').asstring;
    end else begin
      st06.Caption:='';
    end;
    if dt07.Caption>'' then begin
      st07.Caption:=fieldbyname('q07').asstring;
    end else begin
      st07.Caption:='';
    end;
    if dt08.Caption>'' then begin
      st08.Caption:=fieldbyname('q08').asstring;
    end else begin
      st08.Caption:='';
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
  with frmlwo.query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
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
  with frmlwo.query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
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
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
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

  with frmlwo.query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp4 from tbl_lwo where pline=:x1 and seq=:x2 and teqty>0 and cmp4=0';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp4').isnull then c5:=0;
  end;

  if c5=1 then begin
    transit401.Caption:=ts401;transit402.Caption:='';
  end else begin
    transit401.Caption:=ts401;transit402.Caption:=ts402;
  end;

  ppmemo1.Lines.Text:='';
  with frmlwo.query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
    open;
    if not fieldbyname('t4memo').isnull then ppmemo1.Lines.add(fieldbyname('t4memo').value);
  end;
end;

procedure Tfrmptrans4.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmptrans4.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  //st101.Caption:=inttostr(ppDBCalc11.Value-ppDBCalc8.Value);
end;

end.
 