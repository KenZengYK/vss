unit ptrans2_1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, myChkBox, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppViewr, StdCtrls, Db,
  ComCtrls, ppStrtch, ppMemo, ppParameter;

type
  Tfrmptrans2_1 = class(TForm)
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
    ppLine100: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    seq11: TppLabel;
    dt11: TppLabel;
    seq12: TppLabel;
    dt12: TppLabel;
    seq13: TppLabel;
    dt13: TppLabel;
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
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    p11: TppLabel;
    t11: TppLabel;
    p12: TppLabel;
    t12: TppLabel;
    p13: TppLabel;
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
    ppShape18: TppShape;
    ppLabel51: TppLabel;
    yszq2: TppLabel;
    f02: TppLabel;
    ppLine102: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    sp11: TppLabel;
    st11: TppLabel;
    sp12: TppLabel;
    st12: TppLabel;
    sp13: TppLabel;
    st13: TppLabel;
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
    x011: TppLabel;
    y011: TppLabel;
    x012: TppLabel;
    y012: TppLabel;
    x013: TppLabel;
    y013: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLine4: TppLine;
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
    h02: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmptrans2_1: Tfrmptrans2_1;

implementation

uses mainformu, lwoformu;

{$R *.dfm}

procedure Tfrmptrans2_1.ppDetailBand2BeforePrint(Sender: TObject);
begin
  //t102.Caption:=inttostr(frmlwo.query7.fieldbyname('tqty').value-frmlwo.query7.fieldbyname('pqty').value);
  //t101.Caption:=inttostr(frmlwo.query7.fieldbyname('ttqty').value-frmlwo.query7.fieldbyname('tqty').value);
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
  p11.caption:='';t11.caption:='';
  p12.caption:='';t12.caption:='';
  p13.caption:='';t13.caption:='';
  if dt01.Caption>'' then begin
    p01.Caption:=frmlwo.query7.fieldbyname('tq14').value;
    t01.Caption:=frmlwo.query7.fieldbyname('ttq14').value;
    if frmlwo.query7.fieldbyname('tq14').value>0 then p01.Font.Style:=[fsBold]
    else p01.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq14').value>0 then t01.Font.Style:=[fsBold]
    else t01.Font.Style:=[];
  end;
  if dt02.Caption>'' then begin
    p02.Caption:=frmlwo.query7.fieldbyname('tq15').value;
    t02.Caption:=frmlwo.query7.fieldbyname('ttq15').value;
    if frmlwo.query7.fieldbyname('tq15').value>0 then p02.Font.Style:=[fsBold]
    else p02.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq15').value>0 then t02.Font.Style:=[fsBold]
    else t02.Font.Style:=[];
  end;
  if dt03.Caption>'' then begin
    p03.Caption:=frmlwo.query7.fieldbyname('tq16').value;
    t03.Caption:=frmlwo.query7.fieldbyname('ttq16').value;
    if frmlwo.query7.fieldbyname('tq16').value>0 then p03.Font.Style:=[fsBold]
    else p03.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq16').value>0 then t03.Font.Style:=[fsBold]
    else t03.Font.Style:=[];
  end;
  if dt04.Caption>'' then begin
    p04.Caption:=frmlwo.query7.fieldbyname('tq17').value;
    t04.Caption:=frmlwo.query7.fieldbyname('ttq17').value;
    if frmlwo.query7.fieldbyname('tq17').value>0 then p04.Font.Style:=[fsBold]
    else p04.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq17').value>0 then t04.Font.Style:=[fsBold]
    else t04.Font.Style:=[];
  end;
  if dt05.Caption>'' then begin
    p05.Caption:=frmlwo.query7.fieldbyname('tq18').value;
    t05.Caption:=frmlwo.query7.fieldbyname('ttq18').value;
    if frmlwo.query7.fieldbyname('tq18').value>0 then p05.Font.Style:=[fsBold]
    else p05.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq18').value>0 then t05.Font.Style:=[fsBold]
    else t05.Font.Style:=[];
  end;
  if dt06.Caption>'' then begin
    p06.Caption:=frmlwo.query7.fieldbyname('tq19').value;
    t06.Caption:=frmlwo.query7.fieldbyname('ttq19').value;
    if frmlwo.query7.fieldbyname('tq19').value>0 then p06.Font.Style:=[fsBold]
    else p06.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq19').value>0 then t06.Font.Style:=[fsBold]
    else t06.Font.Style:=[];
  end;
  if dt07.Caption>'' then begin
    p07.Caption:=frmlwo.query7.fieldbyname('tq20').value;
    t07.Caption:=frmlwo.query7.fieldbyname('ttq20').value;
    if frmlwo.query7.fieldbyname('tq20').value>0 then p07.Font.Style:=[fsBold]
    else p07.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq20').value>0 then t07.Font.Style:=[fsBold]
    else t07.Font.Style:=[];
  end;
  if dt08.Caption>'' then begin
    p08.Caption:=frmlwo.query7.fieldbyname('tq21').value;
    t08.Caption:=frmlwo.query7.fieldbyname('ttq21').value;
    if frmlwo.query7.fieldbyname('tq21').value>0 then p08.Font.Style:=[fsBold]
    else p08.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq21').value>0 then t08.Font.Style:=[fsBold]
    else t08.Font.Style:=[];
  end;
  if dt09.Caption>'' then begin
    p09.Caption:=frmlwo.query7.fieldbyname('tq22').value;
    t09.Caption:=frmlwo.query7.fieldbyname('ttq22').value;
    if frmlwo.query7.fieldbyname('tq22').value>0 then p09.Font.Style:=[fsBold]
    else p09.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq22').value>0 then t09.Font.Style:=[fsBold]
    else t09.Font.Style:=[];
  end;
  if dt10.Caption>'' then begin
    p10.Caption:=frmlwo.query7.fieldbyname('tq23').value;
    t10.Caption:=frmlwo.query7.fieldbyname('ttq23').value;
    if frmlwo.query7.fieldbyname('tq23').value>0 then p10.Font.Style:=[fsBold]
    else p10.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq23').value>0 then t10.Font.Style:=[fsBold]
    else t10.Font.Style:=[];
  end;
  if dt11.Caption>'' then begin
    p11.Caption:=frmlwo.query7.fieldbyname('tq24').value;
    t11.Caption:=frmlwo.query7.fieldbyname('ttq24').value;
    if frmlwo.query7.fieldbyname('tq24').value>0 then p11.Font.Style:=[fsBold]
    else p11.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq24').value>0 then t11.Font.Style:=[fsBold]
    else t11.Font.Style:=[];
  end;
  if dt12.Caption>'' then begin
    p12.Caption:=frmlwo.query7.fieldbyname('tq25').value;
    t12.Caption:=frmlwo.query7.fieldbyname('ttq25').value;
    if frmlwo.query7.fieldbyname('tq25').value>0 then p12.Font.Style:=[fsBold]
    else p12.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq25').value>0 then t12.Font.Style:=[fsBold]
    else t12.Font.Style:=[];
  end;
  if dt13.Caption>'' then begin
    p13.Caption:=frmlwo.query7.fieldbyname('tq26').value;
    t13.Caption:=frmlwo.query7.fieldbyname('ttq26').value;
    if frmlwo.query7.fieldbyname('tq26').value>0 then p13.Font.Style:=[fsBold]
    else p13.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq26').value>0 then t13.Font.Style:=[fsBold]
    else t13.Font.Style:=[];
  end;
end;

procedure Tfrmptrans2_1.ppSummaryBand2BeforePrint(Sender: TObject);
var
  ts201,ts202,s001,s002:string;
  c3:integer;
  tm0:tdatetime;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
  with frmlwo.query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select sum(tq14) as q1,sum(tq15) as q2,sum(tq16) as q3,sum(tq17) as q4,sum(tq18) as q5,sum(tq19) as q6,sum(tq20) as q7,sum(tq21) as q8,sum(tq22) as q9,sum(tq23) as q10,'
                +'sum(tq24) as q11,sum(tq25) as q12,sum(tq26) as q13,sum(ttq14) as q01,sum(ttq15) as q02,sum(ttq16) as q03,sum(ttq17) as q04,sum(ttq18) as q05,sum(ttq19) as q06,sum(ttq20) as q07,sum(ttq21) as q08,'
                +'sum(ttq22) as q09,sum(ttq23) as q010,sum(ttq24) as q011,sum(ttq25) as q012,sum(ttq26) as q013 from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=''2''';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
    params[2].asdatetime:=dtpk1.DateTime; //strtodatetime(label1.caption);
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
  f02.Caption:=i3;
  h02.Caption:=i4;

  tm0:=now;
  with frmlwo.query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='execute procedure sp_lwo_calc_sewdt(:x1,:x2,:x3)';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    execute;
  end;
  with frmlwo.query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_sewdt where pline=:x1 and seq=:x2 and tm=:x3';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
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
    params[3].asstring:='2';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=301 and dseq<=310 and tp=''2'' and dt>:x4';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
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

  with frmlwo.query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp2 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp2=0';
    params[0].asstring:=frmlwo.query7.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query7.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp2').isnull then c3:=0;
  end;

  sewn01.Caption:=s001;sewn02.Caption:=s002;
  if c3=1 then begin
    transit201.Caption:=ts201;transit202.Caption:='';
  end else begin
    transit201.Caption:=ts201;transit202.Caption:=ts202;
  end;

end;

procedure Tfrmptrans2_1.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmptrans2_1.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  x001.Visible:=false;x002.Visible:=false;x003.Visible:=false;x004.Visible:=false;x005.Visible:=false;
  x006.Visible:=false;x007.Visible:=false;x008.Visible:=false;x009.Visible:=false;x010.Visible:=false;
  x011.Visible:=false;x012.Visible:=false;x013.Visible:=false;
  y001.Visible:=false;y002.Visible:=false;y003.Visible:=false;y004.Visible:=false;y005.Visible:=false;
  y006.Visible:=false;y007.Visible:=false;y008.Visible:=false;y009.Visible:=false;y010.Visible:=false;
  y011.Visible:=false;y012.Visible:=false;y013.Visible:=false;
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
    if not fieldbyname('dt14').isnull then begin
      seq01.Caption:=fieldbyname('ct14').value;
      dt01.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt14').value);
      x001.Visible:=true;y001.Visible:=true;
    end;
    if not fieldbyname('dt15').isnull then begin
      seq02.Caption:=fieldbyname('ct15').value;
      dt02.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt15').value);
      x002.Visible:=true;y002.Visible:=true;
    end;
    if not fieldbyname('dt16').isnull then begin
      seq03.Caption:=fieldbyname('ct16').value;
      dt03.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt16').value);
      x003.Visible:=true;y003.Visible:=true;
    end;
    if not fieldbyname('dt17').isnull then begin
      seq04.Caption:=fieldbyname('ct17').value;
      dt04.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt17').value);
      x004.Visible:=true;y004.Visible:=true;
    end;
    if not fieldbyname('dt18').isnull then begin
      seq05.Caption:=fieldbyname('ct18').value;
      dt05.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt18').value);
      x005.Visible:=true;y005.Visible:=true;
    end;
    if not fieldbyname('dt19').isnull then begin
      seq06.Caption:=fieldbyname('ct19').value;
      dt06.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt19').value);
      x006.Visible:=true;y006.Visible:=true;
    end;
    if not fieldbyname('dt20').isnull then begin
      seq07.Caption:=fieldbyname('ct20').value;
      dt07.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt20').value);
      x007.Visible:=true;y007.Visible:=true;
    end;
    if not fieldbyname('dt21').isnull then begin
      seq08.Caption:=fieldbyname('ct21').value;
      dt08.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt21').value);
      x008.Visible:=true;y008.Visible:=true;
    end;
    if not fieldbyname('dt22').isnull then begin
      seq09.Caption:=fieldbyname('ct22').value;
      dt09.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt22').value);
      x009.Visible:=true;y009.Visible:=true;
    end;
    if not fieldbyname('dt23').isnull then begin
      seq10.Caption:=fieldbyname('ct23').value;
      dt10.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt23').value);
      x010.Visible:=true;y010.Visible:=true;
    end;
    if not fieldbyname('dt24').isnull then begin
      seq11.Caption:=fieldbyname('ct24').value;
      dt11.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt24').value);
      x011.Visible:=true;y011.Visible:=true;
    end;
    if not fieldbyname('dt25').isnull then begin
      seq12.Caption:=fieldbyname('ct25').value;
      dt12.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt25').value);
      x012.Visible:=true;y012.Visible:=true;
    end;
    if not fieldbyname('dt26').isnull then begin
      seq13.Caption:=fieldbyname('ct26').value;
      dt13.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt26').value);
      x013.Visible:=true;y013.Visible:=true;
    end;
    {
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        if fieldbyname('nc_flag').value='0' then
        seq01.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq01.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq01.Caption:=fieldbyname('sseq').AsString;
        dt01.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x001.Visible:=true;y001.Visible:=true;
      end else if i=2 then begin
        if fieldbyname('nc_flag').value='0' then
        seq02.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq02.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq02.Caption:=fieldbyname('sseq').AsString;
        dt02.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x002.Visible:=true;y002.Visible:=true;
      end else if i=3 then begin
        if fieldbyname('nc_flag').value='0' then
        seq03.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq03.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq03.Caption:=fieldbyname('sseq').AsString;
        dt03.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x003.Visible:=true;y003.Visible:=true;
      end else if i=4 then begin
        if fieldbyname('nc_flag').value='0' then
        seq04.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq04.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq04.Caption:=fieldbyname('sseq').AsString;
        dt04.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x004.Visible:=true;y004.Visible:=true;
      end else if i=5 then begin
        if fieldbyname('nc_flag').value='0' then
        seq05.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq05.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq05.Caption:=fieldbyname('sseq').AsString;
        dt05.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x005.Visible:=true;y005.Visible:=true;
      end else if i=6 then begin
        if fieldbyname('nc_flag').value='0' then
        seq06.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq06.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq06.Caption:=fieldbyname('sseq').AsString;
        dt06.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x006.Visible:=true;y006.Visible:=true;
      end else if i=7 then begin
        if fieldbyname('nc_flag').value='0' then
        seq07.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq07.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq07.Caption:=fieldbyname('sseq').AsString;
        dt07.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x007.Visible:=true;y007.Visible:=true;
      end else if i=8 then begin
        if fieldbyname('nc_flag').value='0' then
        seq08.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq08.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq08.Caption:=fieldbyname('sseq').AsString;
        dt08.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x008.Visible:=true;y008.Visible:=true;
      end else if i=9 then begin
        if fieldbyname('nc_flag').value='0' then
        seq09.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq09.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq09.Caption:=fieldbyname('sseq').AsString;
        dt09.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x009.Visible:=true;y009.Visible:=true;
      end else if i=10 then begin
        if fieldbyname('nc_flag').value='0' then
        seq10.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq10.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq10.Caption:=fieldbyname('sseq').AsString;
        dt10.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x010.Visible:=true;y010.Visible:=true;
      end else if i=11 then begin
        if fieldbyname('nc_flag').value='0' then
        seq11.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq11.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq11.Caption:=fieldbyname('sseq').AsString;
        dt11.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x011.Visible:=true;y011.Visible:=true;
      end else if i=12 then begin
        if fieldbyname('nc_flag').value='0' then
        seq12.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq12.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq12.Caption:=fieldbyname('sseq').AsString;
        dt12.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x012.Visible:=true;y012.Visible:=true;
      end else if i=13 then begin
        if fieldbyname('nc_flag').value='0' then
        seq13.Caption:='N1  '+fieldbyname('sseq').AsString
        else if fieldbyname('nc_flag').value='1' then
        seq13.Caption:='C1  '+fieldbyname('sseq').AsString
        else seq13.Caption:=fieldbyname('sseq').AsString;
        dt13.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt').value);
        x013.Visible:=true;y013.Visible:=true;
      end;
      application.ProcessMessages;
      next;
    end;
    }
  end;
end;

procedure Tfrmptrans2_1.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  //st101.Caption:=inttostr(ppDBCalc11.Value-ppDBCalc10.Value);
  //st102.Caption:=inttostr(ppDBCalc10.Value-ppDBCalc8.Value);
end;

end.

