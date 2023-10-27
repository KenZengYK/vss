unit gxly2eformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppMemo, ppBands, ppVar, ppClass, myChkBox, ppCtrls, ppStrtch,
  ppRegion, ppPrnabl, ppCache, ppProd, ppReport, DB, DBClient, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppViewr, Txcomp;

type
  Tfrmgxly2e = class(TForm)
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    zygx: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title01: TppLabel;
    ppLabel7: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppDBText23: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    zsj01: TppLabel;
    zsj02: TppLabel;
    zsj03: TppLabel;
    zsj04: TppLabel;
    zdj01: TppLabel;
    zdj02: TppLabel;
    zdj03: TppLabel;
    zdj04: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppDBText5: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLine63: TppLine;
    ppLine11: TppLine;
    ppDBText50: TppDBText;
    ppLine21: TppLine;
    ppLine30: TppLine;
    ppLine61: TppLine;
    ppDBText8: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    myDBCheckBox14: TmyDBCheckBox;
    myDBCheckBox15: TmyDBCheckBox;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine27: TppLine;
    ppLine31: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    myDBCheckBox4: TmyDBCheckBox;
    ppDBText16: TppDBText;
    ppDBText40: TppDBText;
    ppDBText51: TppDBText;
    ppDBText53: TppDBText;
    ppDBText56: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLine28: TppLine;
    ppLine34: TppLine;
    ppLine37: TppLine;
    ppDBText57: TppDBText;
    ppLine45: TppLine;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppLine51: TppLine;
    ppLine56: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLine80: TppLine;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppLine82: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine88: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppRegion4: TppRegion;
    ppLabel41: TppLabel;
    ppLabel44: TppLabel;
    ppLabel121: TppLabel;
    ppLabel45: TppLabel;
    ppLabel23: TppLabel;
    ppLabel34: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText25: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText28: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText37: TppDBText;
    ppDBText35: TppDBText;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppDBText49: TppDBText;
    ppDBText24: TppDBText;
    ppRegion5: TppRegion;
    ppShape5: TppShape;
    ppLabel61: TppLabel;
    mychk01: TmyCheckBox;
    ppLabel76: TppLabel;
    mychk02: TmyCheckBox;
    ppLabel77: TppLabel;
    mychk03: TmyCheckBox;
    ppLabel78: TppLabel;
    mychk04: TmyCheckBox;
    ppLabel102: TppLabel;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppRegion1: TppRegion;
    xp01: TppShape;
    xp02: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel19: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine14: TppLine;
    ppLine62: TppLine;
    ppLine7: TppLine;
    ppLabel75: TppLabel;
    ppLine20: TppLine;
    ppLine23: TppLine;
    ppLabel85: TppLabel;
    ppLabel32: TppLabel;
    ppLabel91: TppLabel;
    ppLine53: TppLine;
    ppLabel106: TppLabel;
    ppLine60: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppLabel28: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel55: TppLabel;
    ppLabel86: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel13: TppLabel;
    ppLine10: TppLine;
    ppLabel27: TppLabel;
    ppLabel30: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel74: TppLabel;
    ppLabel84: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine29: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel98: TppLabel;
    ppLabel101: TppLabel;
    ppLabel103: TppLabel;
    ppLine40: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine72: TppLine;
    ppLabel128: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine79: TppLine;
    ppLine81: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine87: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppRegion3: TppRegion;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel39: TppLabel;
    ppDBMemo1: TppDBMemo;
    abc001: TppLabel;
    abc002: TppLabel;
    abc003: TppLabel;
    ppLine54: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine48: TppLine;
    jb01: TppLabel;
    jb02: TppLabel;
    jb03: TppLabel;
    jb001: TppLabel;
    jb002: TppLabel;
    jb003: TppLabel;
    ppLabel43: TppLabel;
    ppDBText17: TppDBText;
    ppLabel100: TppLabel;
    jb04: TppLabel;
    jb05: TppLabel;
    jb06: TppLabel;
    jb004: TppLabel;
    jb005: TppLabel;
    jb006: TppLabel;
    query1: TClientDataSet;
    sp07: TppShape;
    sp09: TppShape;
    sp08: TppShape;
    sp06: TppShape;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel73: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel24: TppLabel;
    ppLabel82: TppLabel;
    ppLabel89: TppLabel;
    ppDBText52: TppDBText;
    xb06: TmyCheckBox;
    xb08: TmyCheckBox;
    xb09: TmyCheckBox;
    xb07: TmyCheckBox;
    spx0: TppShape;
    ppLabel40: TppLabel;
    xbx0: TmyCheckBox;
    ppLabel42: TppLabel;
    sp00: TppShape;
    ppLabel81: TppLabel;
    xb00: TmyCheckBox;
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
    sp05: TppShape;
    ppLabel125: TppLabel;
    xb05: TmyCheckBox;
    sp11: TppShape;
    sp10: TppShape;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    xb10: TmyCheckBox;
    xb11: TmyCheckBox;
    ppLabel38: TppLabel;
    ppLabel99: TppLabel;
    ppDBText74: TppDBText;
    ppLabel149: TppLabel;
    ppDBText75: TppDBText;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppDBText76: TppDBText;
    ppLabel152: TppLabel;
    ppDBText77: TppDBText;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    xbx01: TmyCheckBox;
    ppLabel1: TppLabel;
    ppLabel131: TppLabel;
    step01: TppLabel;
    ppLabel60: TppLabel;
    seasonlist001: TppMemo;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppLabel15: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel16: TppLabel;
    ppDBText21: TppDBText;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel18: TppLabel;
    ppLabel51: TppLabel;
    season001: TppLabel;
    ppLabel58: TppLabel;
    cust001: TppLabel;
    ppLabel59: TppLabel;
    gsdstyle001: TppLabel;
    ppLabel79: TppLabel;
    bom001: TppLabel;
    ppLabel92: TppLabel;
    ppLabel57: TppLabel;
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure zygxAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgxly2e: Tfrmgxly2e;

implementation

uses dlu, scgxu, scgxdyu;

{$R *.dfm}

procedure Tfrmgxly2e.ppGroupHeaderBand1BeforePrint(Sender: TObject);
var
  str1,s1:string;
begin
  //
      if frmscgxdy.op2.checked=true then begin
        str1:='';
        {
        if frmgxly=nil then frmgxly:=tfrmgxly2.create(self);
        with frmgxly2.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        }
          frmgxly2e.spx0.visible:=false;
          frmgxly2e.sp00.Visible:=false;
          frmgxly2e.sp01.Visible:=false;
          frmgxly2e.sp02.Visible:=false;
          frmgxly2e.sp03.Visible:=false;
          frmgxly2e.sp04.Visible:=false;
          frmgxly2e.sp05.Visible:=false;
          frmgxly2e.sp06.Visible:=false;
          frmgxly2e.sp07.Visible:=false;
          frmgxly2e.sp08.Visible:=false;
          frmgxly2e.sp09.Visible:=false;
          frmgxly2e.sp10.Visible:=false;
          frmgxly2e.sp11.Visible:=false;

          frmgxly2e.xp01.Visible:=false;
          frmgxly2e.xp02.Visible:=false;

          frmgxly2e.xbx0.Checked:=false;
          frmgxly2e.xb00.Checked:=false;
          frmgxly2e.xb01.Checked:=false;
          frmgxly2e.xb02.Checked:=false;
          frmgxly2e.xb03.Checked:=false;
          frmgxly2e.xb04.Checked:=false;
          frmgxly2e.xb05.Checked:=false;
          frmgxly2e.xb06.Checked:=false;
          frmgxly2e.xb07.Checked:=false;
          frmgxly2e.xb08.Checked:=false;
          frmgxly2e.xb09.Checked:=false;
          frmgxly2e.xb10.Checked:=false;
          frmgxly2e.xb11.Checked:=false;
        with frmgxly2e.ClientDataSet1 do begin
          close;
          params.clear;
          commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 where seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
          if frmscgxdy.xh1.Checked then commandtext:=commandtext+' and xz07=1'
          else if frmscgxdy.xh2.Checked then begin
            if frmscgxdy.chk1.ItemIndex=0 then commandtext:=commandtext+' and xz04=1'
            else if frmscgxdy.chk1.ItemIndex=1 then commandtext:=commandtext+' and (xz30=1 or xz31=1)'
            else if frmscgxdy.chk1.ItemIndex=2 then commandtext:=commandtext+' and (xz40=1 or xz41=1 or xz42=1)'
            else if frmscgxdy.chk1.ItemIndex=3 then commandtext:=commandtext+' and (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1)';
          end;
          open;
          frmgxly2e.zsj01.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          frmgxly2e.zsj02.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          frmgxly2e.zdj01.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          frmgxly2e.zdj02.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          close;
          params.clear;
          commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 where zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
          if frmscgxdy.xh1.Checked then commandtext:=commandtext+' and xz07=1'
          else if frmscgxdy.xh2.Checked then begin
            if frmscgxdy.chk1.ItemIndex=0 then commandtext:=commandtext+' and xz04=1'
            else if frmscgxdy.chk1.ItemIndex=1 then commandtext:=commandtext+' and (xz30=1 or xz31=1)'
            else if frmscgxdy.chk1.ItemIndex=2 then commandtext:=commandtext+' and (xz40=1 or xz41=1 or xz42=1)'
            else if frmscgxdy.chk1.ItemIndex=3 then commandtext:=commandtext+' and (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1)';
          end;
          open;
          frmgxly2e.zsj03.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          frmgxly2e.zsj04.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          frmgxly2e.zdj03.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          frmgxly2e.zdj04.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select seq from ie_zygx1 where xz30=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('seq').isnull then begin
            frmgxly2e.sp02.Visible:=true;
            frmgxly2e.xp02.Visible:=true;
            frmgxly2e.xb02.Checked:=true;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select seq from ie_zygx1 where xz31=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('seq').isnull then begin
            frmgxly2e.sp01.Visible:=true;
            frmgxly2e.xp01.Visible:=true;
            frmgxly2e.xb01.Checked:=true;
          end;
        end;
      end;
        season001.caption:='';
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          commandtext:='select max(jhrs) as jhrs from tblshedule where cstyle=:x1 and jhrs>''''';
          params[0].asstring:=zygx.fieldbyname('zd').value;
          open;
          if not fieldbyname('jhrs').isnull then
          season001.Caption:=copy(fieldbyname('jhrs').value,1,2);
        end;
        if not zygx.fieldbyname('cust').IsNull then cust001.Caption:=zygx.fieldbyname('cust').value else cust001.Caption:='';
        if not zygx.FieldByName('brand').isnull then
        cust001.Caption:=cust001.Caption+' / '+zygx.fieldbyname('brand').value;

        gsdstyle001.Caption:='';
        if pos('-',zygx.fieldbyname('kh').value)>0 then s1:=copy(zygx.fieldbyname('kh').value,11,2)
        else s1:=copy(zygx.fieldbyname('kh').value,8,2);
        if not zygx.fieldbyname('spmc').isnull then s1:=s1+zygx.fieldbyname('spmc').value else s1:=s1+'  ';
        s1:=s1+'  ';
        s1:=s1+copy(zygx.fieldbyname('kh').value,5,1);
        if season001.Caption>'' then s1:=s1+season001.Caption else s1:=s1+'  ';
        s1:=s1+'-'+zygx.fieldbyname('zd').value;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz04 from ie_zygx1 where xz04=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz04').isnull then begin
            s1:=copy(s1,1,4)+'1a'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz30 from ie_zygx1 where xz30=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz30').isnull then begin
            s1:=copy(s1,1,4)+'2a'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz31 from ie_zygx1 where xz31=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz31').isnull then begin
            s1:=copy(s1,1,4)+'2b'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz40 from ie_zygx1 where xz40=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz40').isnull then begin
            s1:=copy(s1,1,4)+'3a'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz41 from ie_zygx1 where xz41=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz41').isnull then begin
            s1:=copy(s1,1,4)+'3b'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz42 from ie_zygx1 where xz42=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz42').isnull then begin
            s1:=copy(s1,1,4)+'3c'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz01 from ie_zygx1 where xz01=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz01').isnull then begin
            s1:=copy(s1,1,4)+'4a'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz03 from ie_zygx1 where xz03=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz03').isnull then begin
            s1:=copy(s1,1,4)+'4b'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz06 from ie_zygx1 where xz06=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz06').isnull then begin
            s1:=copy(s1,1,4)+'4c'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz05 from ie_zygx1 where xz05=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz05').isnull then begin
            s1:=copy(s1,1,4)+'4d'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz08 from ie_zygx1 where xz08=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz08').isnull then begin
            s1:=copy(s1,1,4)+'4e'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select distinct xz09 from ie_zygx1 where xz09=1 and seq='+zygx.fieldbyname('seq').asstring;
          open;
          if not fieldbyname('xz09').isnull then begin
            s1:=copy(s1,1,4)+'4f'+copy(s1,7,30);
            if gsdstyle001.Caption>'' then
            gsdstyle001.Caption:=gsdstyle001.Caption+'|'+s1 else gsdstyle001.Caption:=s1;
          end;
        end;

        bom001.Caption:=copy(zygx.fieldbyname('kh').value,5,1);
        //if pos('-',zygx.fieldbyname('kh').value)>0 then
        //gsdstyle001.Caption:=copy(zygx.fieldbyname('kh').value,11,2)+copy(zygx.fieldbyname('kh').value,1,5)+copy(zygx.fieldbyname('kh').value,7,1)+copy(zygx.fieldbyname('kh').value,9,1)+'-'+zygx.fieldbyname('zd').value
        //else gsdstyle001.Caption:=copy(zygx.fieldbyname('kh').value,8,2)+copy(zygx.fieldbyname('kh').value,1,7)+'-'+zygx.fieldbyname('zd').value;
end;

procedure Tfrmgxly2e.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  gzxl,kyl,ppc1,ppc2,scsj,zrs:double;
  jb001,jb002,jb003,jb004,jb005,jb006,jb007,jb008,jb009,jb010,jb011,jb012,jb013,jb014,jb015,jb016,jb017,jb018:double;
  jb101,jb102,jb103,jb104,jb105,jb106,jb107,jb108,jb109,jb110,jb111,jb112,jb113,jb114,jb115,jb116,jb117,jb118:double;
  jb201,jb202,jb203,jb204,jb205,jb206,jb301,jb302,jb303,jb304,jb305,jb306:double;
  str1:string;
begin
  //
          with frmgxly2e.ClientDataSet1 do begin
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz01=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb001:=fieldbyname('zsj1').value else jb001:=0;
            if not fieldbyname('zsj2').isnull then jb002:=fieldbyname('zsj2').value else jb002:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz03=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb003:=fieldbyname('zsj1').value else jb003:=0;
            if not fieldbyname('zsj2').isnull then jb004:=fieldbyname('zsj2').value else jb004:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz05=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb005:=fieldbyname('zsj1').value else jb005:=0;
            if not fieldbyname('zsj2').isnull then jb006:=fieldbyname('zsj2').value else jb006:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz06=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb007:=fieldbyname('zsj1').value else jb007:=0;
            if not fieldbyname('zsj2').isnull then jb008:=fieldbyname('zsj2').value else jb008:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz04=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb009:=fieldbyname('zsj1').value else jb009:=0;
            if not fieldbyname('zsj2').isnull then jb010:=fieldbyname('zsj2').value else jb010:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz30=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb011:=fieldbyname('zsj1').value else jb011:=0;
            if not fieldbyname('zsj2').isnull then jb012:=fieldbyname('zsj2').value else jb012:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz31=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb013:=fieldbyname('zsj1').value else jb013:=0;
            if not fieldbyname('zsj2').isnull then jb014:=fieldbyname('zsj2').value else jb014:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz40=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb015:=fieldbyname('zsj1').value else jb015:=0;
            if not fieldbyname('zsj2').isnull then jb016:=fieldbyname('zsj2').value else jb016:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz41=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb017:=fieldbyname('zsj1').value else jb017:=0;
            if not fieldbyname('zsj2').isnull then jb018:=fieldbyname('zsj2').value else jb018:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz42=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb201:=fieldbyname('zsj1').value else jb201:=0;
            if not fieldbyname('zsj2').isnull then jb202:=fieldbyname('zsj2').value else jb202:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz08=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb203:=fieldbyname('zsj1').value else jb203:=0;
            if not fieldbyname('zsj2').isnull then jb204:=fieldbyname('zsj2').value else jb204:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz09=1 and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb205:=fieldbyname('zsj1').value else jb205:=0;
            if not fieldbyname('zsj2').isnull then jb206:=fieldbyname('zsj2').value else jb206:=0;

            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz01=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb101:=fieldbyname('zsj1').value else jb101:=0;
            if not fieldbyname('zsj2').isnull then jb102:=fieldbyname('zsj2').value else jb102:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz03=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb103:=fieldbyname('zsj1').value else jb103:=0;
            if not fieldbyname('zsj2').isnull then jb104:=fieldbyname('zsj2').value else jb104:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz05=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb105:=fieldbyname('zsj1').value else jb105:=0;
            if not fieldbyname('zsj2').isnull then jb106:=fieldbyname('zsj2').value else jb106:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz06=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb107:=fieldbyname('zsj1').value else jb107:=0;
            if not fieldbyname('zsj2').isnull then jb108:=fieldbyname('zsj2').value else jb108:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz04=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb109:=fieldbyname('zsj1').value else jb109:=0;
            if not fieldbyname('zsj2').isnull then jb110:=fieldbyname('zsj2').value else jb110:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz30=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb111:=fieldbyname('zsj1').value else jb111:=0;
            if not fieldbyname('zsj2').isnull then jb112:=fieldbyname('zsj2').value else jb112:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz31=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb113:=fieldbyname('zsj1').value else jb113:=0;
            if not fieldbyname('zsj2').isnull then jb114:=fieldbyname('zsj2').value else jb114:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz40=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb115:=fieldbyname('zsj1').value else jb115:=0;
            if not fieldbyname('zsj2').isnull then jb116:=fieldbyname('zsj2').value else jb116:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz41=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb117:=fieldbyname('zsj1').value else jb117:=0;
            if not fieldbyname('zsj2').isnull then jb118:=fieldbyname('zsj2').value else jb118:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz42=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb301:=fieldbyname('zsj1').value else jb301:=0;
            if not fieldbyname('zsj2').isnull then jb302:=fieldbyname('zsj2').value else jb302:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz08=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb303:=fieldbyname('zsj1').value else jb303:=0;
            if not fieldbyname('zsj2').isnull then jb304:=fieldbyname('zsj2').value else jb304:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz09=1 and zb<>''O'' and seq='+frmgxly2e.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb305:=fieldbyname('zsj1').value else jb305:=0;
            if not fieldbyname('zsj2').isnull then jb306:=fieldbyname('zsj2').value else jb306:=0;
          end;
          frmgxly2e.jb01.Caption:='(2a): '+formatfloat('0.0000',jb011);//+' / '+formatfloat('0.0000',jb012);
          frmgxly2e.jb02.Caption:='(2b): '+formatfloat('0.0000',jb013);//+' / '+formatfloat('0.0000',jb014);
          frmgxly2e.jb03.Caption:='';
          frmgxly2e.jb04.Caption:='';
          frmgxly2e.jb05.Caption:='';
          frmgxly2e.jb06.Caption:='';
          frmgxly2e.jb001.Caption:='(2a): '+formatfloat('0.0000',jb111);//+' / '+formatfloat('0.0000',jb112);
          frmgxly2e.jb002.Caption:='(2b): '+formatfloat('0.0000',jb113);//+' / '+formatfloat('0.0000',jb114);
          frmgxly2e.jb003.Caption:='';
          frmgxly2e.jb004.Caption:='';
          frmgxly2e.jb005.Caption:='';
          frmgxly2e.jb006.Caption:='';
{  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(bzsj2) as zsj,sum(sj) as zsj1 from ie_zygx1 where seq=:x1';
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
    if not fieldbyname('zsj1').isnull then abc004.Caption:=formatfloat('#0.0000',fieldbyname('zsj1').value)
    else abc004.Caption:='0.0000';
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(bzsj2) as zsj,sum(sj) as zsj1 from ie_zygx1 where seq=:x1 and zb<>''O''';
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
    if not fieldbyname('zsj1').isnull then abc006.Caption:=formatfloat('#0.0000',fieldbyname('zsj1').value)
    else abc006.Caption:='0.0000';
  end;
  }
end;

procedure Tfrmgxly2e.ppSummaryBand1BeforePrint(Sender: TObject);
var
  s1:string;
begin
        if frmgxly2e.zygx.FieldByName('xzr').value='¥¼°µLB' then begin
          frmgxly2e.mychk01.checked:=true;
          frmgxly2e.mychk02.checked:=false;
          frmgxly2e.mychk03.checked:=false;
          frmgxly2e.mychk04.checked:=false;
        end else if frmgxly2e.zygx.fieldbyname('xzr').value='Àu¤Æ' then begin
          frmgxly2e.mychk03.checked:=true;
          frmgxly2e.mychk01.checked:=false;
          frmgxly2e.mychk02.checked:=false;
          frmgxly2e.mychk04.checked:=false;
        end else if frmgxly2e.zygx.fieldbyname('xzr').value='·¥¨Î' then begin
          frmgxly2e.mychk04.checked:=true;
          frmgxly2e.mychk01.checked:=false;
          frmgxly2e.mychk02.checked:=false;
          frmgxly2e.mychk03.checked:=false;
        end else begin
          frmgxly2e.mychk02.checked:=true;
          frmgxly2e.mychk01.checked:=false;
          frmgxly2e.mychk03.checked:=false;
          frmgxly2e.mychk04.checked:=false;
        end;
        //{
        seasonlist001.Lines.clear;
        s1:='';
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          commandtext:='select distinct jhrs from tblshedule where cstyle=:x1 and jhrs>''''';
          params[0].asstring:=zygx.fieldbyname('zd').value;
          open;
          first;
          while not eof do begin
            if s1>'' then
            s1:=s1+', '+copy(fieldbyname('jhrs').value,1,2)
            else s1:=copy(fieldbyname('jhrs').value,1,2);
            application.ProcessMessages;
            next;
          end;
        end;
        seasonlist001.Lines.add(s1);
        //}
end;

procedure Tfrmgxly2e.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmgxly2e.zygxAfterOpen(DataSet: TDataSet);
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

end.
 