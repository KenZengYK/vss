unit lwosum1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppStrtch, ppMemo, myChkBox, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  DB, DBClient, ppViewr, ppParameter;

type
  Tfrmlwosum1 = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    fty001: TppLabel;
    ppLabel7: TppLabel;
    line001: TppLabel;
    jno001: TppLabel;
    ppLabel2: TppLabel;
    job001: TppLabel;
    rwo001: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    cstyle001: TppLabel;
    ppLabel12: TppLabel;
    acol001: TppLabel;
    ppLabel13: TppLabel;
    scqty001: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    fccs001: TppLabel;
    ppLabel22: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine7: TppLine;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel6: TppLabel;
    ppLine18: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine20: TppLine;
    ppLabel33: TppLabel;
    ppLine23: TppLine;
    ppLabel35: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel37: TppLabel;
    ppLine30: TppLine;
    ppLabel39: TppLabel;
    ppLine116: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel62: TppLabel;
    ppLine117: TppLine;
    ppLine120: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine123: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppLabel83: TppLabel;
    ppLine126: TppLine;
    ppLabel85: TppLabel;
    ppLine128: TppLine;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLine130: TppLine;
    ppLine133: TppLine;
    ppLabel38: TppLabel;
    ppLine135: TppLine;
    ppLabel64: TppLabel;
    ppLabel91: TppLabel;
    ppLabel129: TppLabel;
    ppLine165: TppLine;
    ppLabel131: TppLabel;
    ppLine167: TppLine;
    ppLabel133: TppLabel;
    ppLabel136: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLine172: TppLine;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText4: TppDBText;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppDBText25: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLine19: TppLine;
    myDBCheckBox2: TmyDBCheckBox;
    ppLine21: TppLine;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLine24: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    ppDBText28: TppDBText;
    ppLine31: TppLine;
    ppLine118: TppLine;
    ppLine121: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine124: TppLine;
    ppDBText10: TppDBText;
    ppLine127: TppLine;
    ppLine129: TppLine;
    ppLine131: TppLine;
    myDBCheckBox7: TmyDBCheckBox;
    myDBCheckBox8: TmyDBCheckBox;
    myDBCheckBox9: TmyDBCheckBox;
    ppLine134: TppLine;
    ppLine136: TppLine;
    myDBCheckBox10: TmyDBCheckBox;
    ppLine163: TppLine;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine166: TppLine;
    myDBCheckBox11: TmyDBCheckBox;
    ppLine168: TppLine;
    myDBCheckBox12: TmyDBCheckBox;
    ppDBText20: TppDBText;
    ppLine173: TppLine;
    ppDBText21: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape3: TppShape;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel27: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine22: TppLine;
    ppDBCalc15: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine25: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine32: TppLine;
    b01: TppLabel;
    e01: TppLabel;
    f01: TppLabel;
    l01: TppLabel;
    ppLine119: TppLine;
    ppLine122: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine125: TppLine;
    ppDBCalc12: TppDBCalc;
    j01: TppLabel;
    ppLine137: TppLine;
    h01: TppLabel;
    m01: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppLine164: TppLine;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLine174: TppLine;
    ppDBCalc22: TppDBCalc;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel24: TppLabel;
    ppLabel31: TppLabel;
    ppDBText5: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel36: TppLabel;
    myDBCheckBox5: TmyDBCheckBox;
    ppLabel41: TppLabel;
    ppLabel44: TppLabel;
    ppShape28: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppLabel16: TppLabel;
    fdt001: TppLabel;
    ppLabel17: TppLabel;
    cfksrq001: TppLabel;
    ppLabel18: TppLabel;
    tzlcrq001: TppLabel;
    ppLabel20: TppLabel;
    yqlcrq001: TppLabel;
    ppLabel19: TppLabel;
    xc3001: TppLabel;
    pick01: TppLabel;
    transit101: TppLabel;
    transit201: TppLabel;
    transit301: TppLabel;
    ppShape17: TppShape;
    ppLabel42: TppLabel;
    yszq1: TppLabel;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    transit401: TppLabel;
    ppLabel71: TppLabel;
    sewn01: TppLabel;
    ppLabel34: TppLabel;
    packed01: TppLabel;
    ppLabel40: TppLabel;
    ppLabel32: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    pick02: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    packed02: TppLabel;
    transit102: TppLabel;
    transit302: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    sewn02: TppLabel;
    transit402: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    transit202: TppLabel;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLabel109: TppLabel;
    ppMemo2: TppMemo;
    idt01: TppLabel;
    idt02: TppLabel;
    sv001: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    sv002: TppLabel;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ip001: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ip002: TppLabel;
    ppLine184: TppLine;
    ppLine185: TppLine;
    aql001: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    aql002: TppLabel;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLabel28: TppLabel;
    myCheckBox1: TmyCheckBox;
    ppLabel123: TppLabel;
    myCheckBox2: TmyCheckBox;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLine188: TppLine;
    ppLabel149: TppLabel;
    diff002: TppLabel;
    diff003: TppLabel;
    diff004: TppLabel;
    diff005: TppLabel;
    diff006: TppLabel;
    diff007: TppLabel;
    diff008: TppLabel;
    diff009: TppLabel;
    diff010: TppLabel;
    diff011: TppLabel;
    ppLabel47: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppMemo4: TppMemo;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlwosum1: Tfrmlwosum1;

implementation

uses mainformu, lwoformu;

{$R *.dfm}

procedure Tfrmlwosum1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlwosum1.ppSummaryBand1BeforePrint(Sender: TObject);
var
  pk01,pk02,ts101,ts102,ts201,ts202,ts301,ts302,ts401,ts402,s001,s002:string;
  dt1,dt2:tdate;
  c1,c2,c3,c4,c5:integer;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
  tm0:tdatetime;
  s00001:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
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

  b01.Caption:=i1;
  e01.Caption:=i2;
  f01.Caption:=i3;
  h01.Caption:=i4;
  j01.Caption:=i5;
  l01.Caption:=i6;
  m01.Caption:=i7;

  tm0:=now;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asstring:='1';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=101 and dseq<=110 and tp=''1'' and dt>:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then pk01:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else pk01:='';
    end else begin
      pk01:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then pk02:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else pk02:='';
    end else begin
      pk02:='';
    end;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=201 and dseq<=210 and tp=''1'' and dt>:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then ts101:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else ts101:='';
    end else begin
      ts101:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts102:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts102:='';
    end else begin
      ts102:='';
    end;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='execute procedure sp_lwo_calc_sewdt(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
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
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
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
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
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
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
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

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asstring:='3';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=401 and dseq<=403 and tp=''3'' and dt>:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
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
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
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
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
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

  c1:=1;c2:=1;c3:=1;c4:=1;c5:=1;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp').isnull then c1:=0;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp1 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp1=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp1').isnull then c2:=0;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp2 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp2=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp2').isnull then c3:=0;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp3 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp3=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp3').isnull then c4:=0;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp4 from tbl_lwo where pline=:x1 and seq=:x2 and teqty>0 and cmp4=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp4').isnull then c5:=0;
  end;

  if c1=1 then begin
    pick01.Caption:=pk01;pick02.Caption:='';
  end else begin
    pick01.Caption:=pk01;pick02.Caption:=pk02;
  end;
  if c2=1 then begin
    transit101.Caption:=ts101;transit102.Caption:='';
  end else begin
    transit101.Caption:=ts101;transit102.Caption:=ts102;
  end;
  sewn01.Caption:=s001;sewn02.Caption:=s002;
  if c3=1 then begin
    transit201.Caption:=ts201;transit202.Caption:='';
    ip001.Caption:=ts201;ip002.Caption:='';
  end else begin
    transit201.Caption:=ts201;transit202.Caption:=ts202;
    ip001.Caption:=ts201;ip002.Caption:=ts202;
  end;
  if c4=1 then begin
    packed01.Caption:=ts301;packed02.Caption:='';
    transit301.Caption:=ts301;transit302.Caption:='';
  end else begin
    packed01.Caption:=ts301;packed02.Caption:=ts302;
    transit301.Caption:=ts301;transit302.Caption:=ts302;
  end;
  if c5=1 then begin
    transit401.Caption:=ts401;transit402.Caption:='';
  end else begin
    transit401.Caption:=ts401;transit402.Caption:=ts402;
  end;

  ppMemo4.Lines.clear;
  s00001:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('remarks').isnull then s00001:='Picked diff: '+fieldbyname('remarks').value+char(13);
    if not fieldbyname('smemo').isnull then begin
      if s00001>'' then s00001:=s00001+'Sewn diff: '+fieldbyname('smemo').value+char(13)
      else s00001:='Sewn diff: '+fieldbyname('smemo').value+char(13);
    end;
    if not fieldbyname('t2memo').isnull then begin
      if s00001>'' then s00001:=s00001+'T2 diff: '+fieldbyname('t2memo').value+char(13)
      else s00001:='T2 diff: '+fieldbyname('t2memo').value+char(13);
    end;
    if not fieldbyname('pmemo').isnull then begin
      if s00001>'' then s00001:=s00001+'cPack diff: '+fieldbyname('pmemo').value+char(13)
      else s00001:='cPack diff: '+fieldbyname('pmemo').value+char(13);
    end;
    if not fieldbyname('aqlmemo').isnull then begin
      if s00001>'' then s00001:=s00001+'AQL diff: '+fieldbyname('aqlmemo').value+char(13)
      else s00001:='AQL diff: '+fieldbyname('aqlmemo').value+char(13);
    end;
  end;
  ppMemo4.Lines.Add(s00001);
end;

procedure Tfrmlwosum1.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  //diff001.Caption:=inttostr(ppdbcalc4.Value-ppdbcalc2.Value);
  diff002.Caption:=inttostr(ppdbcalc15.Value-ppdbcalc4.Value);
  diff003.Caption:=inttostr(ppdbcalc8.Value-ppdbcalc15.Value);
  diff004.Caption:=inttostr(ppdbcalc7.Value-ppdbcalc8.Value);
  diff005.Caption:=inttostr(ppdbcalc21.Value-ppdbcalc7.Value);
  diff006.Caption:=inttostr(ppdbcalc5.Value-ppdbcalc21.Value);
  diff007.Caption:=inttostr(ppdbcalc22.Value-ppdbcalc5.Value);
  diff008.Caption:=inttostr(ppdbcalc12.Value-ppdbcalc22.Value);
  diff009.Caption:=inttostr(ppdbcalc6.Value-ppdbcalc12.Value);
  diff010.Caption:=inttostr(ppdbcalc9.Value-ppdbcalc6.Value);
  diff011.Caption:=inttostr(ppdbcalc20.Value-ppdbcalc9.Value);
end;

end.
 