unit scgxlyu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, DBTables, ppPrnabl, ppClass, ppCtrls,
  ppDB, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  ppDBBDE, ppVar, ppStrtch, ppRegion, ppMemo, ppViewr, Txcomp, DBClient,
  MConnect, SConnect, myChkBox;

type
  Tfrmscgxly = class(TForm)
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppRegion1: TppRegion;
    ppSummaryBand1: TppSummaryBand;
    ppRegion2: TppRegion;
    ppRegion3: TppRegion;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel19: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel28: TppLabel;
    ppLine12: TppLine;
    ppLabel29: TppLabel;
    ppLine13: TppLine;
    C49: TppLabel;
    ppLabel31: TppLabel;
    C47: TppLabel;
    ppLabel33: TppLabel;
    C45: TppLabel;
    ppLabel35: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine17: TppLine;
    ppDBText5: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel39: TppLabel;
    ppDBMemo1: TppDBMemo;
    abc001: TppLabel;
    abc002: TppLabel;
    abc003: TppLabel;
    ppLine48: TppLine;
    ppLine54: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel55: TppLabel;
    C43: TppLabel;
    ppDBText40: TppDBText;
    zygx: TClientDataSet;
    ppDBMemo2: TppDBMemo;
    abc006: TppLabel;
    ClientDataSet1: TClientDataSet;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel14: TppLabel;
    ppDBText16: TppDBText;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLabel15: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel16: TppLabel;
    ppDBText21: TppDBText;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel18: TppLabel;
    ppLabel7: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel34: TppLabel;
    ppLabel41: TppLabel;
    ppDBText26: TppDBText;
    ppLabel44: TppLabel;
    ppDBText27: TppDBText;
    ppLabel45: TppLabel;
    ppDBText29: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText30: TppDBText;
    ppLabel56: TppLabel;
    ppDBText32: TppDBText;
    ppShape3: TppShape;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppDBText33: TppDBText;
    ppLabel60: TppLabel;
    ppDBText35: TppDBText;
    ppShape4: TppShape;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDBText36: TppDBText;
    ppLabel63: TppLabel;
    ppDBText38: TppDBText;
    ppLabel64: TppLabel;
    ppDBText39: TppDBText;
    ppLabel65: TppLabel;
    ppDBText41: TppDBText;
    ppLabel66: TppLabel;
    ppDBText42: TppDBText;
    ppLabel67: TppLabel;
    ppDBText43: TppDBText;
    ppLabel68: TppLabel;
    ppDBText44: TppDBText;
    ppLabel69: TppLabel;
    ppDBText45: TppDBText;
    ppLabel70: TppLabel;
    ppDBText46: TppDBText;
    ppLabel71: TppLabel;
    ppDBText47: TppDBText;
    ppLabel72: TppLabel;
    ppDBText48: TppDBText;
    ppLabel73: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppDBText50: TppDBText;
    mychk01: TmyCheckBox;
    ppLabel76: TppLabel;
    mychk02: TmyCheckBox;
    ppLabel77: TppLabel;
    mychk03: TmyCheckBox;
    ppLabel78: TppLabel;
    ppLabel24: TppLabel;
    ppLabel30: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel32: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    myDBCheckBox7: TmyDBCheckBox;
    myDBCheckBox6: TmyDBCheckBox;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel79: TppLabel;
    ppLine35: TppLine;
    ppLabel80: TppLabel;
    ppLine36: TppLine;
    ppLabel82: TppLabel;
    ppLine37: TppLine;
    ppLabel83: TppLabel;
    ppLine40: TppLine;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppDBText52: TppDBText;
    sp06: TppShape;
    sp08: TppShape;
    sp09: TppShape;
    sp07: TppShape;
    xp01: TppShape;
    xp03: TppShape;
    xp04: TppShape;
    xp02: TppShape;
    abc007: TppLabel;
    ppLabel27: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    jb01: TppLabel;
    jb02: TppLabel;
    jb03: TppLabel;
    xb06: TmyCheckBox;
    xb08: TmyCheckBox;
    xb09: TmyCheckBox;
    xb07: TmyCheckBox;
    jb001: TppLabel;
    jb002: TppLabel;
    jb003: TppLabel;
    spx0: TppShape;
    ppLabel40: TppLabel;
    xbx0: TmyCheckBox;
    ppLabel42: TppLabel;
    abc004: TppLabel;
    abc005: TppLabel;
    ppLabel91: TppLabel;
    xpx0: TppShape;
    ppLabel92: TppLabel;
    sj0001: TppLabel;
    sj0002: TppLabel;
    sjdj0001: TppLabel;
    sjdj0002: TppLabel;
    jscl0001: TppLabel;
    jscl0002: TppLabel;
    title01: TppLabel;
    ppLabel23: TppLabel;
    ppLabel43: TppLabel;
    ppDBText17: TppDBText;
    zsj01: TppLabel;
    zsj02: TppLabel;
    zsj03: TppLabel;
    zsj04: TppLabel;
    zdj01: TppLabel;
    zdj02: TppLabel;
    zdj03: TppLabel;
    zdj04: TppLabel;
    sp00: TppShape;
    ppLabel81: TppLabel;
    xb00: TmyCheckBox;
    ppLine49: TppLine;
    ppLabel86: TppLabel;
    ppLine50: TppLine;
    xp00: TppShape;
    myDBCheckBox8: TmyDBCheckBox;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    sp03: TppShape;
    sp04: TppShape;
    sp02: TppShape;
    ppLabel87: TppLabel;
    ppLabel90: TppLabel;
    ppLabel93: TppLabel;
    xb02: TmyCheckBox;
    xb04: TmyCheckBox;
    xb03: TmyCheckBox;
    sp01: TppShape;
    ppLabel94: TppLabel;
    xb01: TmyCheckBox;
    ppDBMemo3: TppDBMemo;
    ppLine51: TppLine;
    ppLabel95: TppLabel;
    ppLine52: TppLine;
    ppLabel96: TppLabel;
    ppLine53: TppLine;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    myDBCheckBox9: TmyDBCheckBox;
    myDBCheckBox10: TmyDBCheckBox;
    myDBCheckBox11: TmyDBCheckBox;
    myDBCheckBox12: TmyDBCheckBox;
    xp06: TppShape;
    xp07: TppShape;
    xp08: TppShape;
    xp05: TppShape;
    ppLabel99: TppLabel;
    ppLine4: TppLine;
    ppLine27: TppLine;
    myDBCheckBox4: TmyDBCheckBox;
    ppLabel100: TppLabel;
    ckfty01: TmyCheckBox;
    fty001: TppLabel;
    ckfty02: TmyCheckBox;
    fty002: TppLabel;
    ckfty03: TmyCheckBox;
    fty003: TppLabel;
    ppShape5: TppShape;
    ppLabel103: TppLabel;
    mychkfty01: TmyCheckBox;
    ppLabel104: TppLabel;
    mychkfty02: TmyCheckBox;
    ppLabel105: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel106: TppLabel;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppDBText8: TppDBText;
    ppShape6: TppShape;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    g01: TppLabel;
    g02: TppLabel;
    g03: TppLabel;
    g04: TppLabel;
    c01: TppLabel;
    c02: TppLabel;
    c03: TppLabel;
    c04: TppLabel;
    y01: TppLabel;
    y02: TppLabel;
    y03: TppLabel;
    y04: TppLabel;
    ClientDataSet2: TClientDataSet;
    ppLabel101: TppLabel;
    mychk04: TmyCheckBox;
    ppLabel102: TppLabel;
    ppShape7: TppShape;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppDBText18: TppDBText;
    ppLabel119: TppLabel;
    ppDBText24: TppDBText;
    ppLabel120: TppLabel;
    j01: TppLabel;
    j02: TppLabel;
    j03: TppLabel;
    j04: TppLabel;
    ppLabel121: TppLabel;
    ppDBText25: TppDBText;
    ppLabel51: TppLabel;
    ppDBText28: TppDBText;
    ppLabel122: TppLabel;
    ppDBText31: TppDBText;
    ppLabel59: TppLabel;
    ppDBText34: TppDBText;
    ppLabel123: TppLabel;
    ppDBText37: TppDBText;
    ppLabel118: TppLabel;
    ppDBText22: TppDBText;
    ppLabel124: TppLabel;
    ppDBText49: TppDBText;
    sp05: TppShape;
    ppLabel125: TppLabel;
    xb05: TmyCheckBox;
    sp11: TppShape;
    sp10: TppShape;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    xb10: TmyCheckBox;
    xb11: TmyCheckBox;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLabel128: TppLabel;
    ppLine64: TppLine;
    xp11: TppShape;
    xp10: TppShape;
    xp09: TppShape;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    myDBCheckBox13: TmyDBCheckBox;
    myDBCheckBox14: TmyDBCheckBox;
    myDBCheckBox15: TmyDBCheckBox;
    ppLabel131: TppLabel;
    step01: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure zygxAfterOpen(DataSet: TDataSet);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmscgxly: Tfrmscgxly;

implementation

uses scgxdyu, dlu;

{$R *.DFM}

procedure Tfrmscgxly.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmscgxly.zygxAfterOpen(DataSet: TDataSet);
begin
  (zygx.fieldbyname('mb') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('zsl') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('mbxs') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('wcqj') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('gzxl') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('dj') as tfloatfield).displayformat:='#####0.000;;''';
  (zygx.fieldbyname('sxrs') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('dz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('sz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('rz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('snz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('jg') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('rs') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('qt') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('sdz') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('ssz') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('ssb') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sjg') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sdc') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('srs') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sqt') as tintegerfield).displayformat:='#####0;;''';
end;

procedure Tfrmscgxly.ppSummaryBand1BeforePrint(Sender: TObject);
var
  str1:string;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(sj) as zsj from ie_zygx1 where seq=:x1';
    if frmscgxdy.xh1.Checked then str1:=' and xz07=1'
    else if frmscgxdy.xh2.Checked then begin
      if frmscgxdy.chk1.ItemIndex=0 then str1:=' and xz04=1'
      else if frmscgxdy.chk1.ItemIndex=1 then str1:=' and (xz30=1 or xz31=1)'
      else if frmscgxdy.chk1.ItemIndex=2 then str1:=' and (xz40=1 or xz41=1 or xz42=1)'
      else if frmscgxdy.chk1.ItemIndex=3 then str1:=' and (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1)';
    end;
    if str1>'' then commandtext:=commandtext+str1;
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('zsj').isnull then abc004.Caption:=formatfloat('#0.0000',fieldbyname('zsj').value)
    else abc004.Caption:='0.0000';
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(bzsj2) as zsj from ie_zygx1 where seq=:x1';
    if frmscgxdy.xh1.Checked then str1:=' and xz07=1'
    else if frmscgxdy.xh2.Checked then begin
      if frmscgxdy.chk1.ItemIndex=0 then str1:=' and xz04=1'
      else if frmscgxdy.chk1.ItemIndex=1 then str1:=' and (xz30=1 or xz31=1)'
      else if frmscgxdy.chk1.ItemIndex=2 then str1:=' and (xz40=1 or xz41=1 or xz42=1)'
      else if frmscgxdy.chk1.ItemIndex=3 then str1:=' and (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1)';
    end;
    if str1>'' then commandtext:=commandtext+str1;
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('zsj').isnull then abc005.Caption:=formatfloat('#0.0000',fieldbyname('zsj').value)
    else abc005.Caption:='0.0000';
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(sj) as zsj from ie_zygx1 where zb<>''O'' and seq=:x1';
    if frmscgxdy.xh1.Checked then str1:=' and xz07=1'
    else if frmscgxdy.xh2.Checked then begin
      if frmscgxdy.chk1.ItemIndex=0 then str1:=' and xz04=1'
      else if frmscgxdy.chk1.ItemIndex=1 then str1:=' and (xz30=1 or xz31=1)'
      else if frmscgxdy.chk1.ItemIndex=2 then str1:=' and (xz40=1 or xz41=1 or xz42=1)'
      else if frmscgxdy.chk1.ItemIndex=3 then str1:=' and (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1)';
    end;
    if str1>'' then commandtext:=commandtext+str1;
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('zsj').isnull then abc006.Caption:=formatfloat('#0.0000',fieldbyname('zsj').value)
    else abc006.Caption:='0.0000';
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(bzsj2) as zsj from ie_zygx1 where zb<>''O'' and seq=:x1';
    if frmscgxdy.xh1.Checked then str1:=' and xz07=1'
    else if frmscgxdy.xh2.Checked then begin
      if frmscgxdy.chk1.ItemIndex=0 then str1:=' and xz04=1'
      else if frmscgxdy.chk1.ItemIndex=1 then str1:=' and (xz30=1 or xz31=1)'
      else if frmscgxdy.chk1.ItemIndex=2 then str1:=' and (xz40=1 or xz41=1 or xz42=1)'
      else if frmscgxdy.chk1.ItemIndex=3 then str1:=' and (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1)';
    end;
    if str1>'' then commandtext:=commandtext+str1;
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('zsj').isnull then abc007.Caption:=formatfloat('#0.0000',fieldbyname('zsj').value)
    else abc007.Caption:='0.0000';
  end;
  
  if frmscgxdy.chk1.ItemIndex=0 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from ie_lb where seq=:x1 and vtype=:x2 order by opt';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      params[1].asstring:='1a';
      open;
      first;
      while not eof do begin
        if fieldbyname('opt').value='GSD' then begin
          g01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          g02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          g03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          g04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='©î§¨' then begin
          c01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          c02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          c03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          c04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='Àu¤Æ' then begin
          y01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          y02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          y03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          y04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='·¥¨Î' then begin
          j01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          j02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          j03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          j04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else if frmscgxdy.chk1.ItemIndex=1 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from ie_lb where seq=:x1 and vtype=:x2 order by opt';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      params[1].asstring:='2a';
      open;
      first;
      while not eof do begin
        if fieldbyname('opt').value='GSD' then begin
          g01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          g02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          g03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          g04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='©î§¨' then begin
          c01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          c02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          c03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          c04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='Àu¤Æ' then begin
          y01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          y02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          y03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          y04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='·¥¨Î' then begin
          j01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          j02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          j03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          j04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else if frmscgxdy.chk1.ItemIndex=2 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from ie_lb where seq=:x1 and vtype=:x2 order by opt';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      params[1].asstring:='2b';
      open;
      first;
      while not eof do begin
        if fieldbyname('opt').value='GSD' then begin
          g01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          g02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          g03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          g04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='©î§¨' then begin
          c01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          c02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          c03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          c04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='Àu¤Æ' then begin
          y01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          y02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          y03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          y04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='·¥¨Î' then begin
          j01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          j02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          j03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          j04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else if frmscgxdy.chk1.ItemIndex=3 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from ie_lb where seq=:x1 and vtype=:x2 order by opt';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      params[1].asstring:='3a';
      open;
      first;
      while not eof do begin
        if fieldbyname('opt').value='GSD' then begin
          g01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          g02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          g03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          g04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='©î§¨' then begin
          c01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          c02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          c03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          c04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='Àu¤Æ' then begin
          y01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          y02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          y03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          y04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='·¥¨Î' then begin
          j01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          j02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          j03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          j04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else if frmscgxdy.chk1.ItemIndex=4 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from ie_lb where seq=:x1 and vtype=:x2 order by opt';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      params[1].asstring:='3b';
      open;
      first;
      while not eof do begin
        if fieldbyname('opt').value='GSD' then begin
          g01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          g02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          g03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          g04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='©î§¨' then begin
          c01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          c02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          c03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          c04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='Àu¤Æ' then begin
          y01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          y02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          y03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          y04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='·¥¨Î' then begin
          j01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          j02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          j03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          j04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else if frmscgxdy.chk1.ItemIndex=5 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from ie_lb where seq=:x1 and vtype=:x2 order by opt';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      params[1].asstring:='3c';
      open;
      first;
      while not eof do begin
        if fieldbyname('opt').value='GSD' then begin
          g01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          g02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          g03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          g04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='©î§¨' then begin
          c01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          c02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          c03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          c04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='Àu¤Æ' then begin
          y01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          y02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          y03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          y04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='·¥¨Î' then begin
          j01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          j02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          j03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          j04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else if frmscgxdy.chk1.ItemIndex=6 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from ie_lb where seq=:x1 and vtype=:x2 order by opt';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      params[1].asstring:='4a';
      open;
      first;
      while not eof do begin
        if fieldbyname('opt').value='GSD' then begin
          g01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          g02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          g03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          g04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='©î§¨' then begin
          c01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          c02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          c03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          c04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='Àu¤Æ' then begin
          y01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          y02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          y03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          y04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='·¥¨Î' then begin
          j01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          j02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          j03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          j04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else if frmscgxdy.chk1.ItemIndex=7 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from ie_lb where seq=:x1 and vtype=:x2 order by opt';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      params[1].asstring:='4b';
      open;
      first;
      while not eof do begin
        if fieldbyname('opt').value='GSD' then begin
          g01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          g02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          g03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          g04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='©î§¨' then begin
          c01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          c02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          c03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          c04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='Àu¤Æ' then begin
          y01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          y02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          y03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          y04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='·¥¨Î' then begin
          j01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          j02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          j03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          j04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end else if frmscgxdy.chk1.ItemIndex=8 then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from ie_lb where seq=:x1 and vtype=:x2 order by opt';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      params[1].asstring:='4c';
      open;
      first;
      while not eof do begin
        if fieldbyname('opt').value='GSD' then begin
          g01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          g02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          g03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          g04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='©î§¨' then begin
          c01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          c02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          c03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          c04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='Àu¤Æ' then begin
          y01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          y02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          y03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          y04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end else if fieldbyname('opt').value='·¥¨Î' then begin
          j01.Caption:=formatfloat('0.0000',fieldbyname('bsah').value);
          j02.Caption:=formatfloat('#0',fieldbyname('zrs').value);
          j03.Caption:=formatfloat('#0',fieldbyname('wsta').value);
          j04.Caption:=formatfloat('0.00',fieldbyname('lb').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmscgxly.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if frmscgxdy.xh1.Checked then begin
    if zygx.FieldByName('xz07').value=true then begin
      sj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sj').value);
      sj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('bzsj2').value);
      sjdj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj').value);
      sjdj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj2').value);
      jscl0001.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl').value);
      jscl0002.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl1').value);
    end else begin
      sj0001.Caption:='0.0000';
      sj0002.Caption:='0.0000';
      sjdj0001.Caption:='0.0000';
      sjdj0002.Caption:='0.0000';
      jscl0001.Caption:='0.00';
      jscl0002.Caption:='0.00';
    end;
  end else if frmscgxdy.xh2.Checked then begin
  {
  if frmscgxdy.chk1.ItemIndex=0 then begin
    if zygx.FieldByName('xz04_1').value=true then begin
      sj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sj').value);
      sj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('bzsj2').value);
      sjdj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj').value);
      sjdj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj2').value);
      jscl0001.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl').value);
      jscl0002.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl1').value);
    end else begin
      sj0001.Caption:='0.0000';
      sj0002.Caption:='0.0000';
      sjdj0001.Caption:='0.0000';
      sjdj0002.Caption:='0.0000';
      jscl0001.Caption:='0.00';
      jscl0002.Caption:='0.00';
    end;
  end else if frmscgxdy.chk1.ItemIndex=6 then begin
    if zygx.FieldByName('xz01_1').value=true then begin
      sj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sj').value);
      sj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('bzsj2').value);
      sjdj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj').value);
      sjdj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj2').value);
      jscl0001.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl').value);
      jscl0002.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl1').value);
    end else begin
      sj0001.Caption:='0.0000';
      sj0002.Caption:='0.0000';
      sjdj0001.Caption:='0.0000';
      sjdj0002.Caption:='0.0000';
      jscl0001.Caption:='0.00';
      jscl0002.Caption:='0.00';
    end;
  end else if frmscgxdy.chk1.ItemIndex=7 then begin
    if zygx.FieldByName('xz03_1').value=true then begin
      sj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sj').value);
      sj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('bzsj2').value);
      sjdj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj').value);
      sjdj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj2').value);
      jscl0001.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl').value);
      jscl0002.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl1').value);
    end else begin
      sj0001.Caption:='0.0000';
      sj0002.Caption:='0.0000';
      sjdj0001.Caption:='0.0000';
      sjdj0002.Caption:='0.0000';
      jscl0001.Caption:='0.00';
      jscl0002.Caption:='0.00';
    end;
  end else if frmscgxdy.chk1.ItemIndex=9 then begin
    if zygx.FieldByName('xz05').value=true then begin
      sj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sj').value);
      sj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('bzsj2').value);
      sjdj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj').value);
      sjdj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj2').value);
      jscl0001.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl').value);
      jscl0002.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl1').value);
    end else begin
      sj0001.Caption:='0.0000';
      sj0002.Caption:='0.0000';
      sjdj0001.Caption:='0.0000';
      sjdj0002.Caption:='0.0000';
      jscl0001.Caption:='0.00';
      jscl0002.Caption:='0.00';
    end;
  end else if frmscgxdy.chk1.ItemIndex=8 then begin
    if zygx.FieldByName('xz06').value=true then begin
      sj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sj').value);
      sj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('bzsj2').value);
      sjdj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj').value);
      sjdj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj2').value);
      jscl0001.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl').value);
      jscl0002.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl1').value);
    end else begin
      sj0001.Caption:='0.0000';
      sj0002.Caption:='0.0000';
      sjdj0001.Caption:='0.0000';
      sjdj0002.Caption:='0.0000';
      jscl0001.Caption:='0.00';
      jscl0002.Caption:='0.00';
    end;
  end;
  }
      sj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sj').value);
      sj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('bzsj2').value);
      sjdj0001.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj').value);
      sjdj0002.Caption:=formatfloat('0.0000',zygx.fieldbyname('sjdj2').value);
      jscl0001.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl').value);
      jscl0002.Caption:=formatfloat('0.00',zygx.fieldbyname('jscl1').value);
  end;
end;

end.
