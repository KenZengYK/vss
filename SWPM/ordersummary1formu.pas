unit ordersummary1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppReport, ppSubRpt, ppClass, ppCtrls, ppMemo, ppStrtch,
  ppRegion, ppVar, ppPrnabl, ppCache, ppProd, ppDB, ppComm, ppRelatv,
  ppDBPipe, DB, DBClient, ppViewr, ppParameter;

type
  Tfrmordersummary1 = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel22: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    subtitle001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppMemo1: TppMemo;
    ppLabel54: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel26: TppLabel;
    ppLine29: TppLine;
    ppLabel39: TppLabel;
    ppLabel64: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLine41: TppLine;
    ppLabel4: TppLabel;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLabel47: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLine37: TppLine;
    ppLabel30: TppLabel;
    ppLabel52: TppLabel;
    ppLine47: TppLine;
    ppLine50: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine51: TppLine;
    ppLabel77: TppLabel;
    ppLine117: TppLine;
    ppLabel78: TppLabel;
    ppLine118: TppLine;
    ppLine141: TppLine;
    ppLabel6: TppLabel;
    ppLine144: TppLine;
    ppLabel19: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLine171: TppLine;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppDetailBand2: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    y01: TppLabel;
    y02: TppLabel;
    y03: TppLabel;
    y04: TppLabel;
    ppLine30: TppLine;
    y002: TppLabel;
    r001: TppLabel;
    r002: TppLabel;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    c001: TppLabel;
    c002: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine45: TppLine;
    ppLine52: TppLine;
    chk001: TppLabel;
    chk002: TppLabel;
    sc001: TppLabel;
    ppLine142: TppLine;
    ppLine145: TppLine;
    rp001: TppLabel;
    rp002: TppLabel;
    ppLine167: TppLine;
    ppLine168: TppLine;
    rn001: TppLabel;
    rv001: TppLabel;
    ppLine174: TppLine;
    ppLine175: TppLine;
    rn002: TppLabel;
    rv002: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    y001: TppLabel;
    y05: TppLabel;
    y06: TppLabel;
    y07: TppLabel;
    y08: TppLabel;
    ppLine31: TppLine;
    r003: TppLabel;
    r004: TppLabel;
    c003: TppLabel;
    c004: TppLabel;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine46: TppLine;
    ppLine67: TppLine;
    chk003: TppLabel;
    chk004: TppLabel;
    ppLine143: TppLine;
    ppLine146: TppLine;
    rp003: TppLabel;
    rp004: TppLabel;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLine176: TppLine;
    ppLine177: TppLine;
    rn003: TppLabel;
    rv003: TppLabel;
    rn004: TppLabel;
    rv004: TppLabel;
    ppShape4: TppShape;
    ppLine42: TppLine;
    rx001: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine16: TppLine;
    ppLabel10: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel25: TppLabel;
    ppLabel34: TppLabel;
    ppLine33: TppLine;
    ppLabel41: TppLabel;
    ppLabel51: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLine32: TppLine;
    ppLabel9: TppLabel;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine53: TppLine;
    ppLine66: TppLine;
    ppLine68: TppLine;
    ppLabel45: TppLabel;
    ppLabel33: TppLabel;
    ppLabel46: TppLabel;
    ppLine90: TppLine;
    ppLabel48: TppLabel;
    ppLine13: TppLine;
    dx001: TppLabel;
    dx002: TppLabel;
    ppLine15: TppLine;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine28: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine108: TppLine;
    ppLine111: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLine119: TppLine;
    ppLine120: TppLine;
    dx003: TppLabel;
    ppLine147: TppLine;
    ppLabel55: TppLabel;
    ppLine149: TppLine;
    ppLine152: TppLine;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLine159: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel111: TppLabel;
    ppLabel107: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLabel132: TppLabel;
    ppLabel134: TppLabel;
    ppLabel133: TppLabel;
    ppLabel135: TppLabel;
    ppLine189: TppLine;
    ppLine192: TppLine;
    ppLine193: TppLine;
    ppDBText9: TppDBText;
    ppRegion1: TppRegion;
    ppDBText5: TppDBText;
    x0001: TppLabel;
    x01: TppLabel;
    ra01: TppLabel;
    x02: TppLabel;
    ppDBText6: TppDBText;
    x03: TppLabel;
    ra02: TppLabel;
    x04: TppLabel;
    ppDBText7: TppDBText;
    c01: TppLabel;
    c02: TppLabel;
    x05: TppMemo;
    ppLine34: TppLine;
    ra03: TppMemo;
    x06: TppMemo;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine14: TppLine;
    ppDBText10: TppDBText;
    ppLine17: TppLine;
    ppDBText11: TppDBText;
    ppLine109: TppLine;
    ppLine114: TppLine;
    ppLine116: TppLine;
    ck003: TppMemo;
    ck001: TppLabel;
    ck002: TppLabel;
    sc002: TppLabel;
    ppLine148: TppLine;
    rpt003: TppMemo;
    ppLine150: TppLine;
    rpt001: TppLabel;
    rpt002: TppLabel;
    rnc003: TppMemo;
    rvs003: TppMemo;
    rnc002: TppLabel;
    rvs002: TppLabel;
    ppLine187: TppLine;
    rnc001: TppLabel;
    rvs001: TppLabel;
    ppShape6: TppShape;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    rx002: TppLabel;
    x008: TppLabel;
    x07: TppLabel;
    x08: TppLabel;
    x09: TppLabel;
    x10: TppLabel;
    ra04: TppLabel;
    ra05: TppLabel;
    c03: TppLabel;
    c04: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    new001: TppLabel;
    dcd001: TppLabel;
    ppLine110: TppLine;
    ppLine115: TppLine;
    ck004: TppLabel;
    ck005: TppLabel;
    ppLine121: TppLine;
    ttl001: TppLabel;
    ppLine151: TppLine;
    ppLine154: TppLine;
    rpt004: TppLabel;
    rpt005: TppLabel;
    rnc005: TppLabel;
    rvs005: TppLabel;
    ppLine186: TppLine;
    ppLine188: TppLine;
    ppLine191: TppLine;
    ppLine195: TppLine;
    rnc004: TppLabel;
    rvs004: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppShape5: TppShape;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmordersummary1: Tfrmordersummary1;

implementation

uses mainformu, ordersummaryformu;

{$R *.dfm}

{ TForm1 }

procedure Tfrmordersummary1.ppDetailBand1BeforePrint(Sender: TObject);
var
  s1,s2:string;
begin
  s1:='';
  s2:='(PJ)';
  x05.Lines.Clear;
  ra03.Lines.Clear;
  x06.Lines.Clear;
  rpt003.Lines.Clear;
  rnc003.Lines.clear;
  rvs003.Lines.clear;
  ck003.Lines.clear;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''O'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //x05.Caption:=s1;
  x05.Lines.add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''N'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //x06.Caption:=s1;
  x06.Lines.add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''R'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //ra03.Caption:=s1;
  ra03.Lines.Add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''P'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  rpt003.Lines.Add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''Q'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  rnc003.Lines.Add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''T'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  rvs003.Lines.Add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''G'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  ck003.Lines.Add(s1);
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''O'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then x01.Caption:=fieldbyname('s1').AsString else x01.Caption:='0';
    if not fieldbyname('s2').IsNull then x03.Caption:=fieldbyname('s2').asstring else x03.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''N'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then x02.Caption:=fieldbyname('s1').AsString else x02.Caption:='0';
    if not fieldbyname('s2').IsNull then x04.Caption:=fieldbyname('s2').asstring else x04.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''R'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then ra01.Caption:=fieldbyname('s1').AsString else ra01.Caption:='0';
    if not fieldbyname('s2').IsNull then ra02.Caption:=fieldbyname('s2').asstring else ra02.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''P'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then rpt001.Caption:=fieldbyname('s1').AsString else rpt001.Caption:='0';
    if not fieldbyname('s2').IsNull then rpt002.Caption:=fieldbyname('s2').asstring else rpt002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''Q'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then rnc001.Caption:=fieldbyname('s1').AsString else rnc001.Caption:='0';
    if not fieldbyname('s2').IsNull then rnc002.Caption:=fieldbyname('s2').asstring else rnc002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''T'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then rvs001.Caption:=fieldbyname('s1').AsString else rvs001.Caption:='0';
    if not fieldbyname('s2').IsNull then rvs002.Caption:=fieldbyname('s2').asstring else rvs002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''G'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then ck001.Caption:=fieldbyname('s1').AsString else ck001.Caption:='0';
    if not fieldbyname('s2').IsNull then ck002.Caption:=fieldbyname('s2').asstring else ck002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and con=''O'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s2').IsNull then c01.Caption:=fieldbyname('s2').asstring else c01.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and ((con=''O'') or (con=''N'')) and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s2').IsNull then sc002.Caption:=fieldbyname('s2').asstring else sc002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and con=''N'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s2').IsNull then c02.Caption:=fieldbyname('s2').asstring else c02.Caption:='0';
  end;
  x0001.Caption:=query2.fieldbyname('fc').value;

  //
  //ck001.Caption:='0';
  //ck002.Caption:='0';
  //ck003.Caption:='';
end;

procedure Tfrmordersummary1.ppSummaryBand2BeforePrint(Sender: TObject);
var
  i1,i2,i3:integer;
  s1:string;
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct dcdate) as s3 from tbl_tmp_ordsummary where tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s3').isnull then dcd001.Caption:='# of DC date = '+fieldbyname('s3').asstring else dcd001.Caption:='# of DC date = 0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''O'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      x07.Caption:=fieldbyname('s1').AsString;
    end else begin
      x07.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      x09.Caption:=fieldbyname('s2').asstring;
    end else begin
      x09.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''N'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      x08.Caption:=fieldbyname('s1').asstring;
    end else begin
      x08.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      x10.Caption:=fieldbyname('s2').asstring;
    end else begin
      x10.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''R'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ra04.Caption:=fieldbyname('s1').asstring;
    end else begin
      ra04.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      ra05.Caption:=fieldbyname('s2').asstring;
    end else begin
      ra05.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''P'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      //rpt006.Caption:=fieldbyname('s1').asstring;
      rpt004.Caption:=fieldbyname('s1').asstring;
    end else begin
      //rpt006.Caption:='0';
      rpt004.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      //rpt007.Caption:=fieldbyname('s2').asstring;
      rpt005.Caption:=fieldbyname('s2').asstring;
    end else begin
      //rpt007.Caption:='0';
      rpt005.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''Q'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      //rnc006.Caption:=fieldbyname('s1').asstring;
      rnc004.Caption:=fieldbyname('s1').asstring;
    end else begin
      //rnc006.Caption:='0';
      rnc004.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      //rnc007.Caption:=fieldbyname('s2').asstring;
      rnc005.Caption:=fieldbyname('s2').asstring;
    end else begin
      //rnc007.Caption:='0';
      rnc005.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''T'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      //rvs006.Caption:=fieldbyname('s1').asstring;
      rvs004.Caption:=fieldbyname('s1').asstring;
    end else begin
      //rvs006.Caption:='0';
      rvs004.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      //rvs007.Caption:=fieldbyname('s2').asstring;
      rvs005.Caption:=fieldbyname('s2').asstring;
    end else begin
      //rvs007.Caption:='0';
      rvs005.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''G'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ck004.Caption:=fieldbyname('s1').asstring;
    end else begin
      ck004.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      ck005.Caption:=fieldbyname('s2').asstring;
    end else begin
      ck005.Caption:='0';
    end;
  end;
  ttl001.Caption:=inttostr(strtoint(x07.Caption)+strtoint(x08.Caption)+strtoint(ra04.Caption)+strtoint(ck004.Caption));
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s3 from tbl_tmp_ordsummary where tm=:x1 and ((con=''O'') or (con=''N''))';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s3').isnull then begin
      x008.Caption:=fieldbyname('s3').asstring;
    end else begin
      x008.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s3 from tbl_tmp_ordsummary where tm=:x1 and con=''O''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s3').isnull then c03.Caption:=fieldbyname('s3').asstring else c03.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s3 from tbl_tmp_ordsummary where tm=:x1 and con=''N''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s3').isnull then c04.Caption:=fieldbyname('s3').asstring else c04.Caption:='0';
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct jhrs2) as s1 from tbl_tmp_ordsummary where tm=:x1 and f_right(rtrim(jhrs2),1)<>'')''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then new001.Caption:='(New  '+fieldbyname('s1').asstring+')'
    else new001.Caption:='(New  0)';
  end;
//

  s1:='';
  i1:=0;
  ppMemo1.Lines.Clear;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct jhrs2,rvs from tbl_tmp_ordsummary where tm=:x1 and rvs>''''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      ppMemo1.Lines.Add(trim(fieldbyname('jhrs2').value+'  :  '+fieldbyname('rvs').value));
      application.ProcessMessages;
      next;
    end;
  end;

end;

procedure Tfrmordersummary1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmordersummary1.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s3 from tbl_tmp_ordsummary where tm=:x1 and ((con=''O'') or (con=''N''))';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s3').isnull then begin
      y001.Caption:=fieldbyname('s3').asstring;
    end else begin
      y001.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''O''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then y05.Caption:=fieldbyname('s1').AsString else y05.Caption:='0';
    if not fieldbyname('s2').IsNull then y07.Caption:=fieldbyname('s2').asstring else y07.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''N''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then y06.Caption:=fieldbyname('s1').AsString else y06.Caption:='0';
    if not fieldbyname('s2').IsNull then y08.Caption:=fieldbyname('s2').asstring else y08.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''R''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then r003.Caption:=fieldbyname('s1').AsString else r003.Caption:='0';
    if not fieldbyname('s2').IsNull then r004.Caption:=fieldbyname('s2').asstring else r004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''P''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then rp003.Caption:=fieldbyname('s1').AsString else rp003.Caption:='0';
    if not fieldbyname('s2').IsNull then rp004.Caption:=fieldbyname('s2').asstring else rp004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''Q''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then rn003.Caption:=fieldbyname('s1').AsString else rn003.Caption:='0';
    if not fieldbyname('s2').IsNull then rn004.Caption:=fieldbyname('s2').asstring else rn004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''T''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then rv003.Caption:=fieldbyname('s1').AsString else rv003.Caption:='0';
    if not fieldbyname('s2').IsNull then rv004.Caption:=fieldbyname('s2').asstring else rv004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''G''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then chk003.Caption:=fieldbyname('s1').AsString else chk003.Caption:='0';
    if not fieldbyname('s2').IsNull then chk004.Caption:=fieldbyname('s2').asstring else chk004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and con=''O''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s2').IsNull then c003.Caption:=fieldbyname('s2').asstring else c003.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and con=''N''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s2').IsNull then c004.Caption:=fieldbyname('s2').asstring else c004.Caption:='0';
  end;

  //chk003.Caption:='0';
  //chk004.Caption:='0';
end;

procedure Tfrmordersummary1.ppDetailBand2BeforePrint(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''O''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then y01.Caption:=fieldbyname('s1').AsString else y01.Caption:='0';
    if not fieldbyname('s2').IsNull then y03.Caption:=fieldbyname('s2').asstring else y03.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''N''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then y02.Caption:=fieldbyname('s1').AsString else y02.Caption:='0';
    if not fieldbyname('s2').IsNull then y04.Caption:=fieldbyname('s2').asstring else y04.Caption:='0';
  end;
  y002.Caption:=copy(query1.fieldbyname('jhrs1').value,1,1);
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''R''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then r001.Caption:=fieldbyname('s1').AsString else r001.Caption:='0';
    if not fieldbyname('s2').IsNull then r002.Caption:=fieldbyname('s2').asstring else r002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''P''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then rp001.Caption:=fieldbyname('s1').AsString else rp001.Caption:='0';
    if not fieldbyname('s2').IsNull then rp002.Caption:=fieldbyname('s2').asstring else rp002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''Q''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then rn001.Caption:=fieldbyname('s1').AsString else rn001.Caption:='0';
    if not fieldbyname('s2').IsNull then rn002.Caption:=fieldbyname('s2').asstring else rn002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''T''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then rv001.Caption:=fieldbyname('s1').AsString else rv001.Caption:='0';
    if not fieldbyname('s2').IsNull then rv002.Caption:=fieldbyname('s2').asstring else rv002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''G''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then chk001.Caption:=fieldbyname('s1').AsString else chk001.Caption:='0';
    if not fieldbyname('s2').IsNull then chk002.Caption:=fieldbyname('s2').asstring else chk002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and ((con=''O'') or (con=''N''))';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s2').IsNull then sc001.Caption:=fieldbyname('s2').asstring else sc001.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and con=''O''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s2').IsNull then c001.Caption:=fieldbyname('s2').asstring else c001.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and con=''N''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s2').IsNull then c002.Caption:=fieldbyname('s2').asstring else c002.Caption:='0';
  end;

  //chk001.Caption:='0';
  //chk002.Caption:='0';
end;

end.
