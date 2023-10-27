unit scgxdyu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DB, DBClient, MConnect, SConnect, ExtCtrls;

type
  Tfrmscgxdy = class(TForm)
    op1: TRadioButton;
    op2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    chk2: TRadioGroup;
    xh1: TCheckBox;
    xh2: TCheckBox;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    chk1: TRadioGroup;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chk1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmscgxdy: Tfrmscgxdy;

implementation
uses scgxu, cbgxu, scgxlyu, scgxly1, scgxly_1u, scgxly1_1, dlu, gxlyformu,
  gxly1formu, gxly2formu, gxlyeformu, gxly1eformu, gxly2eformu;
{$R *.DFM}

procedure Tfrmscgxdy.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmscgxdy.BitBtn1Click(Sender: TObject);
var
  gzxl,kyl,ppc1,ppc2,scsj,zrs:double;
  jb001,jb002,jb003,jb004,jb005,jb006,jb007,jb008,jb009,jb010,jb011,jb012,jb013,jb014,jb015,jb016,jb017,jb018:double;
  jb101,jb102,jb103,jb104,jb105,jb106,jb107,jb108,jb109,jb110,jb111,jb112,jb113,jb114,jb115,jb116,jb117,jb118:double;
  jb201,jb202,jb203,jb204,jb205,jb206,jb301,jb302,jb303,jb304,jb305,jb306:double;
  str1:string;
begin
  //screen.cursor:=crHourglass;
  if label1.caption='scgx' then begin
    if not frmscgx.zygx.fieldbyname('gzxl').isnull then gzxl:=frmscgx.zygx.fieldbyname('gzxl').value
    else gzxl:=0.00;
    if not frmscgx.zygx.fieldbyname('kyl').isnull then kyl:=frmscgx.zygx.fieldbyname('kyl').value
    else kyl:=0.00;
    if not (checkbox1.Checked) then begin
      if op1.checked=true then begin
        str1:='';
        {
        if frmscgxly=nil then frmscgxly:=tfrmscgxly.create(self);
        with frmscgxly.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        if frmscgxly.zygx.fieldbyname('tplant').IsNull then begin
          frmscgxly.ckfty01.Checked:=false;
          frmscgxly.ckfty02.Checked:=false;
          frmscgxly.ckfty03.Checked:=false;
          frmscgxly.mychkfty01.Checked:=false;
          frmscgxly.mychkfty02.Checked:=false;
        end else begin
          if uppercase(frmscgxly.zygx.fieldbyname('tplant').value)='SL' then begin
            frmscgxly.ckfty01.Checked:=true;
            frmscgxly.ckfty02.Checked:=false;
            frmscgxly.ckfty03.Checked:=false;
            frmscgxly.mychkfty01.Checked:=true;
            frmscgxly.mychkfty02.Checked:=false;
          end else if uppercase(frmscgxly.zygx.fieldbyname('tplant').value)='KB' then begin
            frmscgxly.ckfty01.Checked:=false;
            frmscgxly.ckfty02.Checked:=true;
            frmscgxly.ckfty03.Checked:=false;
            frmscgxly.mychkfty01.Checked:=false;
            frmscgxly.mychkfty02.Checked:=true;
          end else if uppercase(frmscgxly.zygx.fieldbyname('tplant').value)='SL/KB' then begin
            frmscgxly.ckfty01.Checked:=false;
            frmscgxly.ckfty02.Checked:=false;
            frmscgxly.ckfty03.Checked:=true;
            frmscgxly.mychkfty01.Checked:=true;
            frmscgxly.mychkfty02.Checked:=true;
          end else begin
            frmscgxly.ckfty01.Checked:=false;
            frmscgxly.ckfty02.Checked:=false;
            frmscgxly.ckfty03.Checked:=false;
            frmscgxly.mychkfty01.Checked:=false;
            frmscgxly.mychkfty02.Checked:=false;
          end;
        end;
        if not frmscgxly.zygx.fieldbyname('lenz').isnull then begin
        //if combobox1.text='INCH' then begin
          if frmscgxly.zygx.fieldbyname('lenz').value='INCH' then begin
            frmscgxly.c43.caption:='1IN間';
            frmscgxly.c45.Caption:='INCH';
            frmscgxly.c47.Caption:='INCH';
            frmscgxly.c49.Caption:='INCH';
          end else begin
            frmscgxly.c43.caption:='3CM間';
            frmscgxly.c45.Caption:='MM';
            frmscgxly.c47.Caption:='MM';
            frmscgxly.c49.Caption:='MM';
          end;
        end
        else begin
          frmscgxly.c43.caption:='3CM間';
          frmscgxly.c45.Caption:='MM';
          frmscgxly.c47.Caption:='MM';
          frmscgxly.c49.Caption:='MM';
        end;
        if frmscgxly.zygx.FieldByName('xzr').value='未做LB' then begin
          frmscgxly.mychk01.checked:=true;
          frmscgxly.mychk02.checked:=false;
          frmscgxly.mychk03.checked:=false;
          frmscgxly.mychk04.checked:=false;
        end else if frmscgxly.zygx.fieldbyname('xzr').value='優化' then begin
          frmscgxly.mychk03.checked:=true;
          frmscgxly.mychk01.checked:=false;
          frmscgxly.mychk02.checked:=false;
          frmscgxly.mychk04.checked:=false;
        end else if frmscgxly.zygx.fieldbyname('xzr').value='極佳' then begin
          frmscgxly.mychk04.checked:=true;
          frmscgxly.mychk01.checked:=false;
          frmscgxly.mychk02.checked:=false;
          frmscgxly.mychk03.checked:=false;
        end else begin
          frmscgxly.mychk02.checked:=true;
          frmscgxly.mychk01.checked:=false;
          frmscgxly.mychk03.checked:=false;
          frmscgxly.mychk04.checked:=false;
        end;
          frmscgxly.spx0.visible:=false;
          frmscgxly.sp00.Visible:=false;
          frmscgxly.sp01.Visible:=false;
          frmscgxly.sp02.Visible:=false;
          frmscgxly.sp03.Visible:=false;
          frmscgxly.sp04.Visible:=false;
          frmscgxly.sp05.Visible:=false;
          frmscgxly.sp06.Visible:=false;
          frmscgxly.sp07.Visible:=false;
          frmscgxly.sp08.Visible:=false;
          frmscgxly.sp09.Visible:=false;
          frmscgxly.sp10.Visible:=false;
          frmscgxly.sp11.Visible:=false;

          frmscgxly.xpx0.Visible:=false;
          frmscgxly.xp00.Visible:=false;
          frmscgxly.xp01.Visible:=false;
          frmscgxly.xp02.Visible:=false;
          frmscgxly.xp03.Visible:=false;
          frmscgxly.xp04.Visible:=false;
          frmscgxly.xp05.Visible:=false;
          frmscgxly.xp06.Visible:=false;
          frmscgxly.xp07.Visible:=false;
          frmscgxly.xp08.Visible:=false;
          frmscgxly.xp09.Visible:=false;
          frmscgxly.xp10.Visible:=false;
          frmscgxly.xp11.Visible:=false;

          frmscgxly.xbx0.Checked:=false;
          frmscgxly.xb00.Checked:=false;
          frmscgxly.xb01.Checked:=false;
          frmscgxly.xb02.Checked:=false;
          frmscgxly.xb03.Checked:=false;
          frmscgxly.xb04.Checked:=false;
          frmscgxly.xb05.Checked:=false;
          frmscgxly.xb06.Checked:=false;
          frmscgxly.xb07.Checked:=false;
          frmscgxly.xb08.Checked:=false;
          frmscgxly.xb09.Checked:=false;
          frmscgxly.xb10.Checked:=false;
          frmscgxly.xb11.Checked:=false;
        with frmscgxly.ClientDataSet1 do begin
          close;
          params.clear;
          commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 where seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
          if xh1.Checked then commandtext:=commandtext+' and xz07=1'
          else if xh2.Checked then begin
            if chk1.ItemIndex=0 then commandtext:=commandtext+' and xz04=1'
            else if chk1.ItemIndex=1 then commandtext:=commandtext+' and (xz30=1 or xz31=1)'
            else if chk1.ItemIndex=2 then commandtext:=commandtext+' and (xz40=1 or xz41=1 or xz42=1)'
            else if chk1.ItemIndex=3 then commandtext:=commandtext+' and (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1)';
          end;
          open;
          frmscgxly.zsj01.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          frmscgxly.zsj02.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          frmscgxly.zdj01.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          frmscgxly.zdj02.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          close;
          params.clear;
          commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 where zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
          if xh1.Checked then commandtext:=commandtext+' and xz07=1'
          else if xh2.Checked then begin
            if chk1.ItemIndex=0 then commandtext:=commandtext+' and xz04=1'
            else if chk1.ItemIndex=1 then commandtext:=commandtext+' and (xz30=1 or xz31=1)'
            else if chk1.ItemIndex=2 then commandtext:=commandtext+' and (xz40=1 or xz41=1 or xz42=1)'
            else if chk1.ItemIndex=3 then commandtext:=commandtext+' and (xz01=1 or xz03=1 or xz06=1 or xz05=1 or xz08=1 or xz09=1)';
          end;
          open;
          frmscgxly.zsj03.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          frmscgxly.zsj04.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          frmscgxly.zdj03.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          frmscgxly.zdj04.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
        end;

          with frmscgxly.ClientDataSet1 do begin
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz01=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb001:=fieldbyname('zsj1').value else jb001:=0;
            if not fieldbyname('zsj2').isnull then jb002:=fieldbyname('zsj2').value else jb002:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz03=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb003:=fieldbyname('zsj1').value else jb003:=0;
            if not fieldbyname('zsj2').isnull then jb004:=fieldbyname('zsj2').value else jb004:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz05=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb005:=fieldbyname('zsj1').value else jb005:=0;
            if not fieldbyname('zsj2').isnull then jb006:=fieldbyname('zsj2').value else jb006:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz06=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb007:=fieldbyname('zsj1').value else jb007:=0;
            if not fieldbyname('zsj2').isnull then jb008:=fieldbyname('zsj2').value else jb008:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz04=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb009:=fieldbyname('zsj1').value else jb009:=0;
            if not fieldbyname('zsj2').isnull then jb010:=fieldbyname('zsj2').value else jb010:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz30=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb011:=fieldbyname('zsj1').value else jb011:=0;
            if not fieldbyname('zsj2').isnull then jb012:=fieldbyname('zsj2').value else jb012:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz31=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb013:=fieldbyname('zsj1').value else jb013:=0;
            if not fieldbyname('zsj2').isnull then jb014:=fieldbyname('zsj2').value else jb014:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz40=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb015:=fieldbyname('zsj1').value else jb015:=0;
            if not fieldbyname('zsj2').isnull then jb016:=fieldbyname('zsj2').value else jb016:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz41=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb017:=fieldbyname('zsj1').value else jb017:=0;
            if not fieldbyname('zsj2').isnull then jb018:=fieldbyname('zsj2').value else jb018:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz42=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb201:=fieldbyname('zsj1').value else jb201:=0;
            if not fieldbyname('zsj2').isnull then jb202:=fieldbyname('zsj2').value else jb202:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz08=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb203:=fieldbyname('zsj1').value else jb203:=0;
            if not fieldbyname('zsj2').isnull then jb204:=fieldbyname('zsj2').value else jb204:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz09=1 and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb205:=fieldbyname('zsj1').value else jb205:=0;
            if not fieldbyname('zsj2').isnull then jb206:=fieldbyname('zsj2').value else jb206:=0;

            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz01=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb101:=fieldbyname('zsj1').value else jb101:=0;
            if not fieldbyname('zsj2').isnull then jb102:=fieldbyname('zsj2').value else jb102:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz03=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb103:=fieldbyname('zsj1').value else jb103:=0;
            if not fieldbyname('zsj2').isnull then jb104:=fieldbyname('zsj2').value else jb104:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz05=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb105:=fieldbyname('zsj1').value else jb105:=0;
            if not fieldbyname('zsj2').isnull then jb106:=fieldbyname('zsj2').value else jb106:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz06=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb107:=fieldbyname('zsj1').value else jb107:=0;
            if not fieldbyname('zsj2').isnull then jb108:=fieldbyname('zsj2').value else jb108:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz04=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb109:=fieldbyname('zsj1').value else jb109:=0;
            if not fieldbyname('zsj2').isnull then jb110:=fieldbyname('zsj2').value else jb110:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz30=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb111:=fieldbyname('zsj1').value else jb111:=0;
            if not fieldbyname('zsj2').isnull then jb112:=fieldbyname('zsj2').value else jb112:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz31=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb113:=fieldbyname('zsj1').value else jb113:=0;
            if not fieldbyname('zsj2').isnull then jb114:=fieldbyname('zsj2').value else jb114:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz40=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb115:=fieldbyname('zsj1').value else jb115:=0;
            if not fieldbyname('zsj2').isnull then jb116:=fieldbyname('zsj2').value else jb116:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz41=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb117:=fieldbyname('zsj1').value else jb117:=0;
            if not fieldbyname('zsj2').isnull then jb118:=fieldbyname('zsj2').value else jb118:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz42=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb301:=fieldbyname('zsj1').value else jb301:=0;
            if not fieldbyname('zsj2').isnull then jb302:=fieldbyname('zsj2').value else jb302:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz08=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb303:=fieldbyname('zsj1').value else jb303:=0;
            if not fieldbyname('zsj2').isnull then jb304:=fieldbyname('zsj2').value else jb304:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz09=1 and zb<>''O'' and seq='+frmscgxly.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb305:=fieldbyname('zsj1').value else jb305:=0;
            if not fieldbyname('zsj2').isnull then jb306:=fieldbyname('zsj2').value else jb306:=0;
          end;
        //if chk1.ItemIndex=0 then begin
        if xh1.Checked then begin
          frmscgxly.spx0.Visible:=true;
          frmscgxly.sp00.Visible:=false;
          frmscgxly.sp01.Visible:=false;
          frmscgxly.sp02.Visible:=false;
          frmscgxly.sp03.Visible:=false;
          frmscgxly.sp04.Visible:=false;
          frmscgxly.sp05.Visible:=false;
          frmscgxly.sp06.Visible:=false;
          frmscgxly.sp07.Visible:=false;
          frmscgxly.sp08.Visible:=false;
          frmscgxly.sp09.Visible:=false;
          frmscgxly.sp10.Visible:=false;
          frmscgxly.sp11.Visible:=false;

          frmscgxly.xpx0.Visible:=true;
          frmscgxly.xp00.Visible:=false;
          frmscgxly.xp01.Visible:=false;
          frmscgxly.xp02.Visible:=false;
          frmscgxly.xp03.Visible:=false;
          frmscgxly.xp04.Visible:=false;
          frmscgxly.xp05.Visible:=false;
          frmscgxly.xp06.Visible:=false;
          frmscgxly.xp07.Visible:=false;
          frmscgxly.xp08.Visible:=false;
          frmscgxly.xp09.Visible:=false;
          frmscgxly.xp10.Visible:=false;
          frmscgxly.xp11.Visible:=false;

          frmscgxly.xbx0.Checked:=true;
          frmscgxly.xb00.Checked:=false;
          frmscgxly.xb01.Checked:=false;
          frmscgxly.xb02.Checked:=false;
          frmscgxly.xb03.Checked:=false;
          frmscgxly.xb04.Checked:=false;
          frmscgxly.xb05.Checked:=false;
          frmscgxly.xb06.Checked:=false;
          frmscgxly.xb07.Checked:=false;
          frmscgxly.xb08.Checked:=false;
          frmscgxly.xb09.Checked:=false;
          frmscgxly.xb10.Checked:=false;
          frmscgxly.xb11.Checked:=false;
          frmscgxly.title01.Caption:='---- 工序單未分類';
          frmscgxly.abc004.Visible:=true;
          frmscgxly.abc005.Visible:=true;
          frmscgxly.abc006.Visible:=true;
          frmscgxly.abc007.Visible:=true;
          frmscgxly.jb01.Caption:='';
          frmscgxly.jb02.Caption:='';
          frmscgxly.jb03.Caption:='';
          frmscgxly.jb001.Caption:='';
          frmscgxly.jb002.Caption:='';
          frmscgxly.jb003.Caption:='';
        end else if xh2.checked then begin
          frmscgxly.abc004.Visible:=true;
          frmscgxly.abc005.Visible:=true;
          frmscgxly.abc006.Visible:=true;
          frmscgxly.abc007.Visible:=true;
          frmscgxly.jb01.Caption:='';
          frmscgxly.jb02.Caption:='';
          frmscgxly.jb03.Caption:='';
          frmscgxly.jb001.Caption:='';
          frmscgxly.jb002.Caption:='';
          frmscgxly.jb003.Caption:='';
          if chk1.Itemindex=3 then begin
            frmscgxly.sp06.Visible:=true;
            frmscgxly.xp06.Visible:=true;
            frmscgxly.xb06.Checked:=true;
            frmscgxly.title01.Caption:='---- '+chk1.Items[3];
            frmscgxly.sp07.Visible:=true;
            frmscgxly.xp07.Visible:=true;
            frmscgxly.xb07.Checked:=true;
            frmscgxly.jb01.Caption:='中普倚靠: '+formatfloat('0.0000',jb001)+' / '+formatfloat('0.0000',jb002);
            frmscgxly.jb02.Caption:='淺普倚靠: '+formatfloat('0.0000',jb003)+' / '+formatfloat('0.0000',jb004);
            frmscgxly.jb03.Caption:='中大倚靠: '+formatfloat('0.0000',jb007)+' / '+formatfloat('0.0000',jb008);
            frmscgxly.jb001.Caption:='中普倚靠: '+formatfloat('0.0000',jb101)+' / '+formatfloat('0.0000',jb102);
            frmscgxly.jb002.Caption:='淺普倚靠: '+formatfloat('0.0000',jb103)+' / '+formatfloat('0.0000',jb104);
            frmscgxly.jb003.Caption:='中大倚靠: '+formatfloat('0.0000',jb107)+' / '+formatfloat('0.0000',jb108);
            frmscgxly.sp09.Visible:=true;
            frmscgxly.xp09.Visible:=true;
            frmscgxly.xb09.Checked:=true;
            frmscgxly.sp08.Visible:=true;
            frmscgxly.xp08.Visible:=true;
            frmscgxly.xb08.Checked:=true;
            frmscgxly.sp11.Visible:=true;
            frmscgxly.xp11.Visible:=true;
            frmscgxly.xb11.Checked:=true;
            frmscgxly.sp10.Visible:=true;
            frmscgxly.xp10.Visible:=true;
            frmscgxly.xb10.Checked:=true;
            //組合工序單(色/碼倚靠)';
          end;
          if chk1.Itemindex=0 then begin
            frmscgxly.sp00.Visible:=true;
            frmscgxly.xp00.Visible:=true;
            frmscgxly.xb00.Checked:=true;
            frmscgxly.title01.Caption:='---- '+chk1.Items[0];
            //組合工序單(色/碼獨立)';
          end;
          if chk1.Itemindex=1 then begin
            frmscgxly.sp02.Visible:=true;
            frmscgxly.xp02.Visible:=true;
            frmscgxly.xb02.Checked:=true;
            frmscgxly.title01.Caption:='---- '+chk1.Items[1];
            frmscgxly.jb02.Caption:='淺色倚靠: '+formatfloat('0.0000',jb013)+' / '+formatfloat('0.0000',jb014);
            frmscgxly.jb002.Caption:='淺色倚靠: '+formatfloat('0.0000',jb113)+' / '+formatfloat('0.0000',jb114);
            frmscgxly.sp01.Visible:=true;
            frmscgxly.xp01.Visible:=true;
            frmscgxly.xb01.Checked:=true;
            frmscgxly.title01.Caption:='---- '+chk1.Items[1];
            frmscgxly.jb01.Caption:='中色倚靠: '+formatfloat('0.0000',jb011)+' / '+formatfloat('0.0000',jb012);
            frmscgxly.jb001.Caption:='中色倚靠: '+formatfloat('0.0000',jb111)+' / '+formatfloat('0.0000',jb112);
            //組合工序單(色倚靠)';
          end;
          if chk1.Itemindex=2 then begin
            frmscgxly.sp04.Visible:=true;
            frmscgxly.xp04.Visible:=true;
            frmscgxly.xb04.Checked:=true;
            frmscgxly.title01.Caption:='---- '+chk1.Items[2];
            frmscgxly.jb02.Caption:='大碼倚靠: '+formatfloat('0.0000',jb017)+' / '+formatfloat('0.0000',jb018);
            frmscgxly.jb002.Caption:='大碼倚靠: '+formatfloat('0.0000',jb117)+' / '+formatfloat('0.0000',jb118);
            frmscgxly.sp03.Visible:=true;
            frmscgxly.xp03.Visible:=true;
            frmscgxly.xb03.Checked:=true;
            frmscgxly.jb01.Caption:='普碼倚靠: '+formatfloat('0.0000',jb015)+' / '+formatfloat('0.0000',jb016);
            frmscgxly.jb001.Caption:='普碼倚靠: '+formatfloat('0.0000',jb115)+' / '+formatfloat('0.0000',jb116);
            frmscgxly.sp05.Visible:=true;
            frmscgxly.xp05.Visible:=true;
            frmscgxly.xb05.Checked:=true;
            frmscgxly.jb03.Caption:='超碼倚靠: '+formatfloat('0.0000',jb205)+' / '+formatfloat('0.0000',jb206);
            frmscgxly.jb003.Caption:='超碼倚靠: '+formatfloat('0.0000',jb305)+' / '+formatfloat('0.0000',jb306);
            //組合工序單(碼倚靠)';
          end;
        end;
        frmscgxly.ppreport1.print;
        }
        if chk1.ItemIndex=3 then begin
        if frmgxly=nil then frmgxly:=tfrmgxly.create(nil);
        with frmgxly.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq ';//and b.zb in (''A'',''B'',''C'',''O'')';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmgxly.title01.Caption:='---- '+chk1.Items[3];
        frmgxly.ppReport1.print;
        end else if chk1.ItemIndex=0 then begin
        if frmgxly1=nil then frmgxly1:=tfrmgxly1.create(nil);
        with frmgxly1.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq ';//and b.zb in (''A'',''B'',''C'',''O'')';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmgxly1.title01.Caption:='---- '+chk1.Items[0];
        frmgxly1.ppReport1.print;
        end else if chk1.ItemIndex=1 then begin
        if frmgxly2=nil then frmgxly2:=tfrmgxly2.create(nil);
        with frmgxly2.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq ';//and b.zb in (''A'',''B'',''C'',''O'')';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmgxly2.title01.Caption:='---- '+chk1.Items[1];
        frmgxly2.ppReport1.print;
        end;
      end
      else
      begin
        str1:='';
        {
        if frmscgxly1=nil then frmscgxly1:=tfrmscgxly1.create(self);
        with frmscgxly1.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asInteger:=frmscgx.zygx.FieldByName('seq').value;
          open;
        end;
        if frmscgxly1.zygx.fieldbyname('tplant').IsNull then begin
          frmscgxly1.ckfty01.Checked:=false;
          frmscgxly1.ckfty02.Checked:=false;
          frmscgxly1.ckfty03.Checked:=false;
          frmscgxly1.mychkfty01.Checked:=false;
          frmscgxly1.mychkfty02.Checked:=false;
        end else if uppercase(frmscgxly1.zygx.fieldbyname('tplant').value)='SL' then begin
          frmscgxly1.ckfty01.Checked:=true;
          frmscgxly1.ckfty02.Checked:=false;
          frmscgxly1.ckfty03.Checked:=false;
          frmscgxly1.mychkfty01.Checked:=true;
          frmscgxly1.mychkfty02.Checked:=false;
        end else if uppercase(frmscgxly1.zygx.fieldbyname('tplant').value)='KB' then begin
          frmscgxly1.ckfty01.Checked:=false;
          frmscgxly1.ckfty02.Checked:=true;
          frmscgxly1.ckfty03.Checked:=false;
          frmscgxly1.mychkfty01.Checked:=false;
          frmscgxly1.mychkfty02.Checked:=true;
        end else if uppercase(frmscgxly1.zygx.fieldbyname('tplant').value)='SL/KB' then begin
          frmscgxly1.ckfty01.Checked:=false;
          frmscgxly1.ckfty02.Checked:=false;
          frmscgxly1.ckfty03.Checked:=true;
          frmscgxly1.mychkfty01.Checked:=true;
          frmscgxly1.mychkfty02.Checked:=true;
        end else begin
          frmscgxly1.ckfty01.Checked:=false;
          frmscgxly1.ckfty02.Checked:=false;
          frmscgxly1.ckfty03.Checked:=false;
          frmscgxly1.mychkfty01.Checked:=false;
          frmscgxly1.mychkfty02.Checked:=false;
        end;
        if not frmscgxly1.zygx.fieldbyname('lenz').isnull then begin
        //if combobox1.text='INCH' then begin
          if frmscgxly1.zygx.fieldbyname('lenz').value='INCH' then begin
            frmscgxly1.c43.caption:='1IN';
            frmscgxly1.c45.Caption:='INCH';
            frmscgxly1.c47.Caption:='INCH';
            frmscgxly1.c49.Caption:='INCH';
          end else begin
            frmscgxly1.c43.caption:='3CM';
            frmscgxly1.c45.Caption:='MM';
            frmscgxly1.c47.Caption:='MM';
            frmscgxly1.c49.Caption:='MM';
          end;
        end
        else begin
          frmscgxly1.c43.caption:='3CM';
          frmscgxly1.c45.Caption:='MM';
          frmscgxly1.c47.Caption:='MM';
          frmscgxly1.c49.Caption:='MM';
        end;
        if frmscgxly1.zygx.FieldByName('xzr').value='未做LB' then begin
          frmscgxly1.mychk01.checked:=true;
          frmscgxly1.mychk02.checked:=false;
          frmscgxly1.mychk03.checked:=false;
          frmscgxly1.mychk04.checked:=false;
        end else if frmscgxly1.zygx.fieldbyname('xzr').value='優化' then begin
          frmscgxly1.mychk03.checked:=true;
          frmscgxly1.mychk01.checked:=false;
          frmscgxly1.mychk02.checked:=false;
          frmscgxly1.mychk04.checked:=false;
        end else if frmscgxly1.zygx.fieldbyname('xzr').value='極佳' then begin
          frmscgxly1.mychk04.checked:=true;
          frmscgxly1.mychk01.checked:=false;
          frmscgxly1.mychk02.checked:=false;
          frmscgxly1.mychk03.checked:=false;
        end else begin
          frmscgxly1.mychk02.checked:=true;
          frmscgxly1.mychk01.checked:=false;
          frmscgxly1.mychk03.checked:=false;
          frmscgxly1.mychk04.checked:=false;
        end;
          frmscgxly1.Shape5.Visible:=false;
          frmscgxly1.shape6.Visible:=false;
          frmscgxly1.Shape7.Visible:=false;
          frmscgxly1.shape8.Visible:=false;
          frmscgxly1.Shape9.Visible:=false;
          frmscgxly1.shape10.Visible:=false;
          frmscgxly1.Shape11.Visible:=false;
          frmscgxly1.shape12.Visible:=false;
          frmscgxly1.Shape13.Visible:=false;
          frmscgxly1.shape14.Visible:=false;
          frmscgxly1.Shape15.Visible:=false;
          frmscgxly1.shape16.Visible:=false;
          frmscgxly1.Shape17.Visible:=false;
          frmscgxly1.shape18.Visible:=false;
          frmscgxly1.Shape19.Visible:=false;
          frmscgxly1.shape20.Visible:=false;
          frmscgxly1.Shape30.Visible:=false;
          frmscgxly1.shape31.Visible:=false;
          frmscgxly1.Shape40.Visible:=false;
          frmscgxly1.shape41.Visible:=false;
          frmscgxly1.myCb1.Checked:=false;
          frmscgxly1.myCb2.Checked:=false;
          frmscgxly1.myCb3.Checked:=false;
          frmscgxly1.myCb4.Checked:=false;
          frmscgxly1.myCb5.Checked:=false;
          frmscgxly1.myCb6.Checked:=false;
          frmscgxly1.myCb7.Checked:=false;
          frmscgxly1.myCb8.Checked:=false;
          frmscgxly1.myCb9.Checked:=false;
          frmscgxly1.myCb10.Checked:=false;
        with frmscgxly1.ClientDataSet1 do begin
          close;
          params.clear;
          commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 where seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
          if xh1.Checked then commandtext:=commandtext+' and xz07=1'
          else if xh2.Checked then begin
            if chk1.ItemIndex=0 then commandtext:=commandtext+' and xz04=1'
            else if chk1.ItemIndex=1 then commandtext:=commandtext+' and xz01=1'
            else if chk1.ItemIndex=2 then commandtext:=commandtext+' and xz06=1'
            else if chk1.ItemIndex=3 then commandtext:=commandtext+' and xz03=1'
            else if chk1.ItemIndex=4 then commandtext:=commandtext+' and xz05=1'
            else if chk1.ItemIndex=5 then commandtext:=commandtext+' and xz30=1'
            else if chk1.ItemIndex=6 then commandtext:=commandtext+' and xz31=1'
            else if chk1.ItemIndex=7 then commandtext:=commandtext+' and xz40=1'
            else if chk1.ItemIndex=8 then commandtext:=commandtext+' and xz41=1';
          end;
          open;
          frmscgxly1.zsj01.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          frmscgxly1.zsj02.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          frmscgxly1.zdj01.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          frmscgxly1.zdj02.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          close;
          params.clear;
          commandtext:='select isnull(sum(sj),0) as s1,isnull(sum(bzsj2),0) as s2,isnull(sum(sjdj),0) as s3,isnull(sum(sjdj2),0) as s4 from ie_zygx1 where zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
          if xh1.Checked then commandtext:=commandtext+' and xz07=1'
          else if xh2.Checked then begin
            if chk1.ItemIndex=0 then commandtext:=commandtext+' and xz04=1'
            else if chk1.ItemIndex=1 then commandtext:=commandtext+' and xz01=1'
            else if chk1.ItemIndex=2 then commandtext:=commandtext+' and xz06=1'
            else if chk1.ItemIndex=3 then commandtext:=commandtext+' and xz03=1'
            else if chk1.ItemIndex=4 then commandtext:=commandtext+' and xz05=1'
            else if chk1.ItemIndex=5 then commandtext:=commandtext+' and xz30=1'
            else if chk1.ItemIndex=6 then commandtext:=commandtext+' and xz31=1'
            else if chk1.ItemIndex=7 then commandtext:=commandtext+' and xz40=1'
            else if chk1.ItemIndex=8 then commandtext:=commandtext+' and xz41=1';
          end;
          open;
          frmscgxly1.zsj03.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          frmscgxly1.zsj04.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          frmscgxly1.zdj03.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          frmscgxly1.zdj04.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
        end;
          with frmscgxly1.ClientDataSet1 do begin
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz01=1 and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb001:=fieldbyname('zsj1').value else jb001:=0;
            if not fieldbyname('zsj2').isnull then jb002:=fieldbyname('zsj2').value else jb002:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz03=1 and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb003:=fieldbyname('zsj1').value else jb003:=0;
            if not fieldbyname('zsj2').isnull then jb004:=fieldbyname('zsj2').value else jb004:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz05=1 and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb005:=fieldbyname('zsj1').value else jb005:=0;
            if not fieldbyname('zsj2').isnull then jb006:=fieldbyname('zsj2').value else jb006:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz06=1 and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb007:=fieldbyname('zsj1').value else jb007:=0;
            if not fieldbyname('zsj2').isnull then jb008:=fieldbyname('zsj2').value else jb008:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz04=1 and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb009:=fieldbyname('zsj1').value else jb009:=0;
            if not fieldbyname('zsj2').isnull then jb010:=fieldbyname('zsj2').value else jb010:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz30=1 and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb011:=fieldbyname('zsj1').value else jb011:=0;
            if not fieldbyname('zsj2').isnull then jb012:=fieldbyname('zsj2').value else jb012:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz31=1 and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb013:=fieldbyname('zsj1').value else jb013:=0;
            if not fieldbyname('zsj2').isnull then jb014:=fieldbyname('zsj2').value else jb014:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz40=1 and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb015:=fieldbyname('zsj1').value else jb015:=0;
            if not fieldbyname('zsj2').isnull then jb016:=fieldbyname('zsj2').value else jb016:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz41=1 and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb017:=fieldbyname('zsj1').value else jb017:=0;
            if not fieldbyname('zsj2').isnull then jb018:=fieldbyname('zsj2').value else jb018:=0;

            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz01=1 and zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb101:=fieldbyname('zsj1').value else jb101:=0;
            if not fieldbyname('zsj2').isnull then jb102:=fieldbyname('zsj2').value else jb102:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz03=1 and zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb103:=fieldbyname('zsj1').value else jb103:=0;
            if not fieldbyname('zsj2').isnull then jb104:=fieldbyname('zsj2').value else jb104:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz05=1 and zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb105:=fieldbyname('zsj1').value else jb105:=0;
            if not fieldbyname('zsj2').isnull then jb106:=fieldbyname('zsj2').value else jb106:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz06=1 and zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb107:=fieldbyname('zsj1').value else jb107:=0;
            if not fieldbyname('zsj2').isnull then jb108:=fieldbyname('zsj2').value else jb108:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz04=1 and zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb109:=fieldbyname('zsj1').value else jb109:=0;
            if not fieldbyname('zsj2').isnull then jb110:=fieldbyname('zsj2').value else jb110:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz30=1 and zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb111:=fieldbyname('zsj1').value else jb111:=0;
            if not fieldbyname('zsj2').isnull then jb112:=fieldbyname('zsj2').value else jb112:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz31=1 and zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb113:=fieldbyname('zsj1').value else jb113:=0;
            if not fieldbyname('zsj2').isnull then jb114:=fieldbyname('zsj2').value else jb114:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz40=1 and zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb115:=fieldbyname('zsj1').value else jb115:=0;
            if not fieldbyname('zsj2').isnull then jb116:=fieldbyname('zsj2').value else jb116:=0;
            close;
            params.clear;
            commandtext:='select sum(sj) as zsj1,sum(bzsj2) as zsj2 from ie_zygx1 where xz41=1 and zb<>''O'' and seq='+frmscgxly1.zygx.fieldbyname('seq').asstring;
            open;
            if not fieldbyname('zsj1').isnull then jb117:=fieldbyname('zsj1').value else jb117:=0;
            if not fieldbyname('zsj2').isnull then jb118:=fieldbyname('zsj2').value else jb118:=0;
          end;
        //if chk1.ItemIndex=0 then begin
        if xh1.Checked then begin
          frmscgxly1.Shape5.Visible:=false;
          frmscgxly1.shape6.Visible:=false;
          frmscgxly1.Shape7.Visible:=false;
          frmscgxly1.shape8.Visible:=false;
          frmscgxly1.Shape9.Visible:=false;
          frmscgxly1.shape10.Visible:=false;
          frmscgxly1.Shape11.Visible:=false;
          frmscgxly1.shape12.Visible:=false;
          frmscgxly1.Shape13.Visible:=true;
          frmscgxly1.Shape14.Visible:=true;
          frmscgxly1.Shape15.Visible:=false;
          frmscgxly1.Shape16.Visible:=false;
          frmscgxly1.Shape17.Visible:=false;
          frmscgxly1.shape18.Visible:=false;
          frmscgxly1.Shape19.Visible:=false;
          frmscgxly1.shape20.Visible:=false;
          frmscgxly1.Shape30.Visible:=false;
          frmscgxly1.shape31.Visible:=false;
          frmscgxly1.Shape40.Visible:=false;
          frmscgxly1.shape41.Visible:=false;
          frmscgxly1.myCb1.Checked:=false;
          frmscgxly1.myCb2.Checked:=false;
          frmscgxly1.myCb3.Checked:=false;
          frmscgxly1.myCb4.Checked:=false;
          frmscgxly1.myCb5.Checked:=true;
          frmscgxly1.myCb6.Checked:=false;
          frmscgxly1.myCb7.Checked:=false;
          frmscgxly1.myCb8.Checked:=false;
          frmscgxly1.myCb9.Checked:=false;
          frmscgxly1.myCb10.Checked:=false;
          frmscgxly1.title01.Caption:='---- Unclassified Bill of Operation';

          frmscgxly1.abc004.Visible:=true;
          frmscgxly1.abc005.Visible:=true;
          frmscgxly1.abc006.Visible:=true;
          frmscgxly1.abc007.Visible:=true;
          frmscgxly1.jb01.Caption:='';
          frmscgxly1.jb001.Caption:='';
          frmscgxly1.jb02.Caption:='';
          frmscgxly1.jb002.Caption:='';
          frmscgxly1.jb03.Caption:='';
          frmscgxly1.jb003.Caption:='';
          {
          frmscgxly1.jb01.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb001)+' / '+formatfloat('0.0000',jb002);
          frmscgxly1.jb02.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb003)+' / '+formatfloat('0.0000',jb004);
          frmscgxly1.jb03.Caption:='Lig Clr/Lar Sz Dependent: '+formatfloat('0.0000',jb005)+' / '+formatfloat('0.0000',jb006);
          frmscgxly1.jb04.Caption:='Med Clr/Lar Sz Dependent: '+formatfloat('0.0000',jb007)+' / '+formatfloat('0.0000',jb008);
          frmscgxly1.jb05.Caption:='Clr/Sz Inependent: '+formatfloat('0.0000',jb009)+' / '+formatfloat('0.0000',jb010);
          frmscgxly1.jb001.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb101)+' / '+formatfloat('0.0000',jb102);
          frmscgxly1.jb002.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb103)+' / '+formatfloat('0.0000',jb104);
          frmscgxly1.jb003.Caption:='Lig Clr/Lar Sz Dependent: '+formatfloat('0.0000',jb105)+' / '+formatfloat('0.0000',jb106);
          frmscgxly1.jb004.Caption:='Med Clr/Lar Sz Dependent: '+formatfloat('0.0000',jb107)+' / '+formatfloat('0.0000',jb108);
          frmscgxly1.jb005.Caption:='Clr/Sz Inependent: '+formatfloat('0.0000',jb109)+' / '+formatfloat('0.0000',jb110);
          frmscgxly1.jb30.Caption:='Med Clr Dependent: '+formatfloat('0.0000',jb011)+' / '+formatfloat('0.0000',jb012);
          frmscgxly1.jb31.Caption:='Lig Clr Dependent: '+formatfloat('0.0000',jb013)+' / '+formatfloat('0.0000',jb014);
          frmscgxly1.jb40.Caption:='Gen Sz Dependent: '+formatfloat('0.0000',jb015)+' / '+formatfloat('0.0000',jb016);
          frmscgxly1.jb41.Caption:='Lar Sz Dependent: '+formatfloat('0.0000',jb017)+' / '+formatfloat('0.0000',jb018);
          frmscgxly1.jb030.Caption:='Med Clr Dependent: '+formatfloat('0.0000',jb111)+' / '+formatfloat('0.0000',jb112);
          frmscgxly1.jb031.Caption:='Lig Clr Dependent: '+formatfloat('0.0000',jb113)+' / '+formatfloat('0.0000',jb114);
          frmscgxly1.jb040.Caption:='Gen Sz Dependent: '+formatfloat('0.0000',jb115)+' / '+formatfloat('0.0000',jb116);
          frmscgxly1.jb041.Caption:='Lar Sz Dependent: '+formatfloat('0.0000',jb117)+' / '+formatfloat('0.0000',jb118);
          }
        {
        end else if xh2.checked then begin
          frmscgxly1.abc004.Visible:=true;
          frmscgxly1.abc005.Visible:=true;
          frmscgxly1.abc006.Visible:=true;
          frmscgxly1.abc007.Visible:=true;
          frmscgxly1.jb01.Caption:='';
          frmscgxly1.jb02.Caption:='';
          frmscgxly1.jb03.Caption:='';
          frmscgxly1.jb001.Caption:='';
          frmscgxly1.jb002.Caption:='';
          frmscgxly1.jb003.Caption:='';
          if chk1.Itemindex=1 then begin
            frmscgxly1.Shape5.Visible:=true;
            frmscgxly1.Shape9.Visible:=true;
            frmscgxly1.myCb1.Checked:=true;
            frmscgxly1.title01.Caption:='---- Classified(Medium Clr/General Sz Dependent)';
            frmscgxly1.jb01.Caption:='Med Clr/Big Sz Dependent: '+formatfloat('0.0000',jb007)+' / '+formatfloat('0.0000',jb008);
            frmscgxly1.jb02.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb003)+' / '+formatfloat('0.0000',jb004);
            frmscgxly1.jb03.Caption:='Lig Clr/Big Sz Dependent: '+formatfloat('0.0000',jb005)+' / '+formatfloat('0.0000',jb006);
            frmscgxly1.jb001.Caption:='Med Clr/Big Sz Dependent: '+formatfloat('0.0000',jb107)+' / '+formatfloat('0.0000',jb108);
            frmscgxly1.jb002.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb103)+' / '+formatfloat('0.0000',jb104);
            frmscgxly1.jb003.Caption:='Lig Clr/Big Sz Dependent: '+formatfloat('0.0000',jb105)+' / '+formatfloat('0.0000',jb106);
          end;
          if chk1.Itemindex=3 then begin
            frmscgxly1.Shape6.Visible:=true;
            frmscgxly1.Shape10.Visible:=true;
            frmscgxly1.myCb2.Checked:=true;
            frmscgxly1.title01.Caption:='---- Classified(Light Clr/General Sz Dependent)';
            frmscgxly1.jb01.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb001)+' / '+formatfloat('0.0000',jb002);
            frmscgxly1.jb02.Caption:='Med Clr/Big Sz Dependent: '+formatfloat('0.0000',jb007)+' / '+formatfloat('0.0000',jb008);
            frmscgxly1.jb03.Caption:='Lig Clr/Big Sz Dependent: '+formatfloat('0.0000',jb005)+' / '+formatfloat('0.0000',jb006);
            frmscgxly1.jb001.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb101)+' / '+formatfloat('0.0000',jb102);
            frmscgxly1.jb002.Caption:='Med Clr/Big Sz Dependent: '+formatfloat('0.0000',jb107)+' / '+formatfloat('0.0000',jb108);
            frmscgxly1.jb003.Caption:='Lig Clr/Big Sz Dependent: '+formatfloat('0.0000',jb105)+' / '+formatfloat('0.0000',jb106);
          end;
          if chk1.Itemindex=4 then begin
            frmscgxly1.Shape7.Visible:=true;
            frmscgxly1.Shape11.Visible:=true;
            frmscgxly1.myCb3.Checked:=true;
            frmscgxly1.title01.Caption:='---- Classified(Light Clr/Big Sz Dependent)';
            frmscgxly1.jb01.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb001)+' / '+formatfloat('0.0000',jb002);
            frmscgxly1.jb02.Caption:='Med Clr/Big Sz Dependent: '+formatfloat('0.0000',jb007)+' / '+formatfloat('0.0000',jb008);
            frmscgxly1.jb03.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb003)+' / '+formatfloat('0.0000',jb004);
            frmscgxly1.jb001.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb101)+' / '+formatfloat('0.0000',jb102);
            frmscgxly1.jb002.Caption:='Med Clr/Big Sz Dependent: '+formatfloat('0.0000',jb107)+' / '+formatfloat('0.0000',jb108);
            frmscgxly1.jb003.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb103)+' / '+formatfloat('0.0000',jb104);
          end;
          if chk1.Itemindex=2 then begin
            frmscgxly1.Shape8.Visible:=true;
            frmscgxly1.Shape12.Visible:=true;
            frmscgxly1.myCb4.Checked:=true;
            frmscgxly1.title01.Caption:='---- Classified(Medium Clr/Big Sz Dependent)';
            frmscgxly1.jb01.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb001)+' / '+formatfloat('0.0000',jb002);
            frmscgxly1.jb02.Caption:='Med Clr/Big Sz Dependent: '+formatfloat('0.0000',jb007)+' / '+formatfloat('0.0000',jb008);
            frmscgxly1.jb03.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb003)+' / '+formatfloat('0.0000',jb004);
            frmscgxly1.jb001.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb101)+' / '+formatfloat('0.0000',jb102);
            frmscgxly1.jb002.Caption:='Med Clr/Big Sz Dependent: '+formatfloat('0.0000',jb107)+' / '+formatfloat('0.0000',jb108);
            frmscgxly1.jb003.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb103)+' / '+formatfloat('0.0000',jb104);
          end;
          if chk1.Itemindex=0 then begin
            frmscgxly1.Shape15.Visible:=true;
            frmscgxly1.Shape16.Visible:=true;
            frmscgxly1.myCb6.Checked:=true;
            frmscgxly1.title01.Caption:='---- Classified(Clr/Sz Independent)';
          end;
          if chk1.Itemindex=5 then begin
            frmscgxly1.Shape17.Visible:=true;
            frmscgxly1.Shape30.Visible:=true;
            frmscgxly1.myCb7.Checked:=true;
            frmscgxly1.title01.Caption:='---- Classified(Medium Clr Dependent)';
            frmscgxly1.jb01.Caption:='Lig Clr Dependent: '+formatfloat('0.0000',jb013)+' / '+formatfloat('0.0000',jb014);
            frmscgxly1.jb001.Caption:='Lig Clr Dependent: '+formatfloat('0.0000',jb113)+' / '+formatfloat('0.0000',jb114);
          end;
          if chk1.Itemindex=6 then begin
            frmscgxly1.Shape18.Visible:=true;
            frmscgxly1.Shape31.Visible:=true;
            frmscgxly1.myCb8.Checked:=true;
            frmscgxly1.title01.Caption:='---- Classified(Light Clr Dependent)';
            frmscgxly1.jb01.Caption:='Med Clr Dependent: '+formatfloat('0.0000',jb013)+' / '+formatfloat('0.0000',jb014);
            frmscgxly1.jb001.Caption:='Med Clr Dependent: '+formatfloat('0.0000',jb113)+' / '+formatfloat('0.0000',jb114);
          end;
          if chk1.Itemindex=7 then begin
            frmscgxly1.Shape19.Visible:=true;
            frmscgxly1.Shape40.Visible:=true;
            frmscgxly1.myCb9.Checked:=true;
            frmscgxly1.title01.Caption:='---- Classified(General Sz Dependent)';
            frmscgxly1.jb01.Caption:='Big Sz Dependent: '+formatfloat('0.0000',jb017)+' / '+formatfloat('0.0000',jb018);
            frmscgxly1.jb001.Caption:='Big Sz Dependent: '+formatfloat('0.0000',jb117)+' / '+formatfloat('0.0000',jb118);
          end;
          if chk1.Itemindex=8 then begin
            frmscgxly1.Shape20.Visible:=true;
            frmscgxly1.Shape41.Visible:=true;
            frmscgxly1.myCb10.Checked:=true;
            frmscgxly1.title01.Caption:='---- Classified(Big Sz Dependent)';
            frmscgxly1.jb01.Caption:='Gen Sz Dependent: '+formatfloat('0.0000',jb015)+' / '+formatfloat('0.0000',jb016);
            frmscgxly1.jb001.Caption:='Gen Sz Dependent: '+formatfloat('0.0000',jb115)+' / '+formatfloat('0.0000',jb116);
          end;
        end;
        frmscgxly1.ppreport1.print;
        }
        if chk1.ItemIndex=3 then begin
        if frmgxlye=nil then frmgxlye:=tfrmgxlye.create(nil);
        with frmgxlye.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq ';//and b.zb in (''A'',''B'',''C'',''O'')';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmgxlye.title01.Caption:='---- (4)Classified(Clr/Sz dependent)';//+chk1.Items[3];
        frmgxlye.ppReport1.print;
        end else if chk1.ItemIndex=0 then begin
        if frmgxly1e=nil then frmgxly1e:=tfrmgxly1e.create(nil);
        with frmgxly1e.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq ';//and b.zb in (''A'',''B'',''C'',''O'')';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmgxly1e.title01.Caption:='---- (1)Classified(Clr/Sz independent)';//+chk1.Items[0];
        frmgxly1e.ppReport1.print;
        end else if chk1.ItemIndex=1 then begin
        if frmgxly2e=nil then frmgxly2e:=tfrmgxly2e.create(nil);
        with frmgxly2e.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq ';//and b.zb in (''A'',''B'',''C'',''O'')';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmgxly2e.title01.Caption:='---- (2)Classified(Clr dependent)';//+chk1.Items[1];
        frmgxly2e.ppReport1.print;
        end;
      end;
    end
    else begin
      //if uppercase(frmxtdl.combobox1.text)<>'LIMIN' then exit;
      if (frmxtdl.ComboBox1.Text<>'LIMIN') and (frmxtdl.ComboBox1.Text<>'ADMIN') and (frmxtdl.ComboBox1.Text<>'ERIC') then exit;
      if op1.checked=true then begin
        str1:='';
        if frmscgxly_1=nil then frmscgxly_1:=tfrmscgxly_1.create(self);
        with frmscgxly_1.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq ';//and b.zb in (''A'',''B'',''C'',''O'')';
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmscgxly_1.firstc.caption:='Original SMV:';
        frmscgxly_1.first1.Caption:='';
        frmscgxly_1.lastc.caption:='Latest SMV:';
        frmscgxly_1.last1.Caption:='';
        frmscgxly_1.diffc.caption:='Diff(+/-%):';
        frmscgxly_1.diff1.Caption:='';
        frmscgxly_1.vc1.caption:='Vers:';
        frmscgxly_1.v1.caption:=frmscgxly_1.zygx.fieldbyname('cs').asstring;
        if combobox1.text='INCH' then begin
          frmscgxly_1.c43.caption:='1IN間';
          frmscgxly_1.c45.Caption:='INCH';
          frmscgxly_1.c47.Caption:='INCH';
          frmscgxly_1.c49.Caption:='INCH';
        end
        else begin
          frmscgxly_1.c43.caption:='3CM間';
          frmscgxly_1.c45.Caption:='MM';
          frmscgxly_1.c47.Caption:='MM';
          frmscgxly_1.c49.Caption:='MM';
        end;
        with frmscgx.query5 do begin
          close;
          params.clear;
          params.createparam(ftstring,'seq',ptinput);
          commandtext:='select sum(bzsj) as scsj,sum(sjdj) as ppc1 from IE_zygx1 where seq=:seq';
          params[0].value:=frmscgx.zygx.FieldByName('seq').asinteger;
          open;
          if not fieldbyname('scsj').isnull then
          scsj:=fieldbyname('scsj').value else scsj:=0;
          if not fieldbyname('ppc1').isnull then
          ppc1:=fieldbyname('ppc1').value else ppc1:=0;
        end;
        //frmscgxly_1.Stand1.caption:='<1>.標准成本:'+formatfloat('#0.0000',scsj*4);
        frmscgxly_1.ppc1.caption:='Actual cost:'+formatfloat('#0.0000',ppc1);
        frmscgxly_1.ppLabel30.caption:='CAC TMU:'+formatfloat('#0.0000',frmscgx.zygx.fieldbyname('bjtmu').asfloat);
        frmscgxly_1.Stand1.caption:='<1>.CAC cost:'+formatfloat('#0.0000',frmscgx.zygx.fieldbyname('bjtmu').asfloat*0.00004);
        if ppc1<>0 then frmscgxly_1.diffp1.caption:='diff.: '+formatfloat('#0.0000',(frmscgx.zygx.fieldbyname('bjtmu').asfloat*0.00004-ppc1)*(-1))+'     '+formatfloat('#0.00%',(frmscgx.zygx.fieldbyname('bjtmu').asfloat*0.00004-ppc1)*(-1)/ppc1*100);
        with frmscgx.query5 do begin
          close;
          params.clear;
          params.createparam(ftstring,'seq',ptinput);
          commandtext:='select zrs,sjzrs as ppc2 from IE_zygx where seq=:seq';
          params[0].value:=frmscgx.zygx.FieldByName('seq').asinteger;
          open;
          if not fieldbyname('zrs').isnull then
          zrs:=fieldbyname('zrs').value else zrs:=0;
          if not fieldbyname('ppc2').isnull then
          ppc2:=fieldbyname('ppc2').value else ppc2:=0;
        end;
        frmscgxly_1.Stand2.caption:='<2>.計划人數:'+formatfloat('#0',zrs);
        frmscgxly_1.ppc2.caption:='PPC安排人數:'+formatfloat('#0',ppc2);
        if ppc2<>0 then frmscgxly_1.diffp2.caption:='相差:'+formatfloat('#0.00%',(zrs-ppc2)/ppc2*100);
        frmscgxly_1.ppreport1.print;
      end
      else
      begin
        str1:='';
        if frmscgxly1_1=nil then frmscgxly1_1:=tfrmscgxly1_1.create(self);
        with frmscgxly1_1.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq';
          {
          if chk1.ItemIndex=0 then str1:=' and b.xz07=1'
          else if chk1.ItemIndex=1 then str1:=' and b.xz01=1'
          else if chk1.ItemIndex=2 then str1:=' and b.xz03=1'
          else if chk1.ItemIndex=3 then str1:=' and b.xz05=1'
          else if chk1.ItemIndex=4 then str1:=' and b.xz06=1';
          if str1>'' then commandtext:=commandtext+str1;
          }
          commandtext:=commandtext+' order by a.kh,b.gxh';
          params[0].asInteger:=frmscgx.zygx.FieldByName('seq').value;
          open;
        end;
        frmscgxly1_1.firstc.caption:='Original SMV:';
        frmscgxly1_1.first1.Caption:='';
        frmscgxly1_1.lastc.caption:='Latest SMV:';
        frmscgxly1_1.last1.Caption:='';
        frmscgxly1_1.diffc.caption:='Diff(+/-%):';
        frmscgxly1_1.diff1.Caption:='';
        frmscgxly1_1.vc1.caption:='Vers:';
        frmscgxly1_1.v1.caption:=frmscgxly1_1.zygx.fieldbyname('cs').asstring;
        if combobox1.text='INCH' then begin
          frmscgxly1_1.c43.caption:='1IN';
          frmscgxly1_1.c45.Caption:='INCH';
          frmscgxly1_1.c47.Caption:='INCH';
          frmscgxly1_1.c49.Caption:='INCH';
        end
        else begin
          frmscgxly1_1.c43.caption:='3CM';
          frmscgxly1_1.c45.Caption:='MM';
          frmscgxly1_1.c47.Caption:='MM';
          frmscgxly1_1.c49.Caption:='MM';
        end;
        with frmscgx.query5 do begin
          close;
          params.clear;
          params.createparam(ftstring,'seq',ptinput);
          commandtext:='select sum(bzsj) as scsj,sum(sjdj) as ppc1 from IE_zygx1 where seq=:seq';
          params[0].value:=frmscgx.zygx.FieldByName('seq').asinteger;
          open;
          if not fieldbyname('scsj').isnull then
          scsj:=fieldbyname('scsj').value else scsj:=0;
          if not fieldbyname('ppc1').isnull then
          ppc1:=fieldbyname('ppc1').value else ppc1:=0;
        end;
        frmscgxly1_1.Stand1.caption:='<1>.Standard cost:'+formatfloat('#0.0000',frmscgx.zygx.fieldbyname('bjtmu').asfloat*0.00004);
        frmscgxly1_1.ppc1.caption:='PPC cost:'+formatfloat('#0.0000',ppc1);
        if ppc1<>0 then frmscgxly1_1.diffp1.caption:='difference:  '+formatfloat('#0.0000',(frmscgx.zygx.fieldbyname('bjtmu').asfloat*0.00004-ppc1)*(-1))+'       '+formatfloat('#0.00%',(-1)*(frmscgx.zygx.fieldbyname('bjtmu').asfloat*0.00004-ppc1)/ppc1*100);
        with frmscgx.query5 do begin
          close;
          params.clear;
          params.createparam(ftstring,'seq',ptinput);
          commandtext:='select zrs,sjzrs as ppc2 from IE_zygx where seq=:seq';
          params[0].value:=frmscgx.zygx.FieldByName('seq').asinteger;
          open;
          if not fieldbyname('zrs').isnull then
          zrs:=fieldbyname('zrs').value else zrs:=0;
          if not fieldbyname('ppc2').isnull then
          ppc2:=fieldbyname('ppc2').value else ppc2:=0;
        end;
        frmscgxly1_1.Stand2.caption:='<2>.Plan persons:'+formatfloat('#0',zrs);
        frmscgxly1_1.ppc2.caption:='Actual persons:'+formatfloat('#0',ppc2);
        if ppc2<>0 then frmscgxly1_1.diffp2.caption:='difference:'+formatfloat('#0.00%',(zrs-ppc2)/ppc2*100);
        frmscgxly1_1.ppreport1.print;
      end;
    end;
  end
  else begin
    if not frmcbgx.zygx.fieldbyname('gzxl').isnull then gzxl:=frmcbgx.zygx.fieldbyname('gzxl').value
    else gzxl:=0.00;
    if not frmcbgx.zygx.fieldbyname('kyl').isnull then kyl:=frmcbgx.zygx.fieldbyname('kyl').value
    else kyl:=0.00;
    if op1.checked=true then begin
      if frmscgxly=nil then frmscgxly:=tfrmscgxly.create(self);
      with frmscgxly.zygx do begin
        close;
        params.clear;
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='select * from ie_zygxn a,ie_zygxn1 b where a.seq=b.seq and a.seq=:seq';
        commandtext:=commandtext+' order by a.kh,b.gxh';
        params[0].asInteger:=frmcbgx.zygx.FieldByName('seq').asinteger;
        open;
      end;
      if combobox1.text='INCH' then begin
        frmscgxly.c43.caption:='1IN間';
        frmscgxly.c45.Caption:='INCH';
        frmscgxly.c47.Caption:='INCH';
        frmscgxly.c49.Caption:='INCH';
      end
      else begin
        frmscgxly.c43.caption:='3CM間';
        frmscgxly.c45.Caption:='MM';
        frmscgxly.c47.Caption:='MM';
        frmscgxly.c49.Caption:='MM';
      end;
      {frmscgxly.zygx1.close;
      frmscgxly.zygx1.TableName:='zygxn1';
      frmscgxly.zygx.close;
      frmscgxly.zygx.tablename:='zygxn';
      frmscgxly.zygx.open;
      frmscgxly.zygx.filtered:=true;
      frmscgxly.zygx.refresh;
      frmscgxly.zygx1.open;}
      {frmcbgx.query5.close;
      frmcbgx.query5.params.clear;
      frmcbgx.query5.commandtext:='select kh,sum(scjs) as scjs,sum(dj) as dj,sum(sxrs) as zrs,sum(dz) as dz,sum(sz) as sz,sum(snz) as snz,');
      frmcbgx.query5.commandtext:='sum(rz) as rz,sum(jg) as jg,sum(rs) as rs,sum(qt) as qt,sum(bzsj1) as zjsj1 from zygxn1 where kh=:kh group by kh');
      frmcbgx.query5.//prepare;
      frmcbgx.query5.params[0].asstring:=frmcbgx.dbedit5.text;
      frmcbgx.query5.open;
      if frmcbgx.query5.fieldbyname('zrs').asfloat>0.00 then
      frmscgxly.zrs.Caption:=formatfloat('####0.00',frmcbgx.query5.fieldbyname('zrs').asfloat)
      else frmscgxly.zrs.Caption:='';
      if frmcbgx.query5.fieldbyname('dz').asfloat>0.00 then
      frmscgxly.dz.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('dz').asfloat)
      else frmscgxly.dz.caption:='';
      if frmcbgx.query5.fieldbyname('sz').asfloat>0.00 then
      frmscgxly.sz.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('sz').asfloat)
      else frmscgxly.sz.caption:='';
      if frmcbgx.query5.fieldbyname('rz').asfloat>0.00 then
      frmscgxly.rz.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('rz').asfloat)
      else frmscgxly.rz.caption:='';
      if frmcbgx.query5.fieldbyname('rs').asfloat>0.00 then
      frmscgxly.rs.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('rs').asfloat)
      else frmscgxly.rs.caption:='';
      if frmcbgx.query5.fieldbyname('jg').asfloat>0.00 then
      frmscgxly.jg.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('jg').asfloat)
      else frmscgxly.jg.caption:='';
      if frmcbgx.query5.fieldbyname('qt').asfloat>0.00 then
      frmscgxly.qt.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('qt').asfloat)
      else frmscgxly.qt.caption:='';
      if frmcbgx.query5.fieldbyname('snz').asfloat>0.00 then
      frmscgxly.snz.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('snz').asfloat)
      else frmscgxly.snz.caption:='';
      frmscgxly.zjsj.caption:=formatfloat('#####0.0000',frmscgxly.zygx.fieldbyname('zsj').asfloat*kyl/gzxl);
      frmscgxly.zjsj1.Caption:=formatfloat('#0.00',frmcbgx.query5.fieldbyname('zjsj1').asfloat);}
      {frmscgxly.qrmemo1.lines.Clear;
      if not frmscgxly.zygx.fieldbyname('bz').isnull then
        frmscgxly.QRMemo1.Lines.add(frmscgxly.zygx.fieldbyname('bz').value);}
      //frmscgxly.quickrep1.preview;
      frmscgxly.ppreport1.print;
    end
    else
    begin
      if frmscgxly1=nil then frmscgxly1:=tfrmscgxly1.create(self);
      with frmscgxly1.zygx do begin
        close;
        params.clear;
        params.createparam(ftInteger,'seq',ptinput);
        commandtext:='select * from ie_zygxn a,ie_zygxn1 b where a.seq=b.seq and a.seq=:seq /*and b.zb in (''A'',''B'',''C'',''O'')*/ order by a.kh,b.gxh';
        params[0].asinteger:=frmcbgx.zygx.FieldByName('seq').asinteger;
        open;
      end;
      if combobox1.text='INCH' then begin
        frmscgxly1.c43.caption:='1IN';
        frmscgxly1.c45.Caption:='INCH';
        frmscgxly1.c47.Caption:='INCH';
        frmscgxly1.c49.Caption:='INCH';
      end
      else begin
        frmscgxly1.c43.caption:='3CM';
        frmscgxly1.c45.Caption:='MM';
        frmscgxly1.c47.Caption:='MM';
        frmscgxly1.c49.Caption:='MM';
      end;
      {frmscgxly1.zygx1.close;
      frmscgxly1.zygx1.TableName:='zygxn1';
      frmscgxly1.zygx.close;
      frmscgxly1.zygx.tablename:='zygxn';
      frmscgxly1.zygx.open;
      frmscgxly1.zygx.filtered:=true;
      frmscgxly1.zygx.refresh;
      frmscgxly1.zygx1.open;
      frmcbgx.query5.close;
      frmcbgx.query5.params.clear;
      frmcbgx.query5.commandtext:='select kh,sum(scjs) as scjs,sum(dj) as dj,sum(sxrs) as zrs,sum(dz) as dz,sum(sz) as sz,sum(snz) as snz,');
      frmcbgx.query5.commandtext:='sum(rz) as rz,sum(jg) as jg,sum(rs) as rs,sum(qt) as qt,sum(bzsj1) as zjsj1 from zygxn1 where kh=:kh group by kh');
      frmcbgx.query5.//prepare;
      frmcbgx.query5.params[0].asstring:=frmcbgx.dbedit5.text;
      frmcbgx.query5.open;
      if frmcbgx.query5.fieldbyname('zrs').asfloat>0.00 then
      frmscgxly1.zrs.Caption:=formatfloat('####0.00',frmcbgx.query5.fieldbyname('zrs').asfloat)
      else frmscgxly1.zrs.Caption:='';
      if frmcbgx.query5.fieldbyname('dz').asfloat>0.00 then
      frmscgxly1.dz.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('dz').asfloat)
      else frmscgxly1.dz.caption:='';
      if frmcbgx.query5.fieldbyname('sz').asfloat>0.00 then
      frmscgxly1.sz.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('sz').asfloat)
      else frmscgxly1.sz.caption:='';
      if frmcbgx.query5.fieldbyname('rz').asfloat>0.00 then
      frmscgxly1.rz.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('rz').asfloat)
      else frmscgxly1.rz.caption:='';
      if frmcbgx.query5.fieldbyname('rs').asfloat>0.00 then
      frmscgxly1.rs.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('rs').asfloat)
      else frmscgxly1.rs.caption:='';
      if frmcbgx.query5.fieldbyname('jg').asfloat>0.00 then
      frmscgxly1.jg.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('jg').asfloat)
      else frmscgxly1.jg.caption:='';
      if frmcbgx.query5.fieldbyname('qt').asfloat>0.00 then
      frmscgxly1.qt.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('qt').asfloat)
      else frmscgxly1.qt.caption:='';
      if frmcbgx.query5.fieldbyname('snz').asfloat>0.00 then
      frmscgxly1.snz.Caption:=formatfloat('#####0.00',frmcbgx.query5.fieldbyname('snz').asfloat)
      else frmscgxly1.snz.caption:='';
      frmscgxly1.zjsj.caption:=formatfloat('#####0.0000',frmscgxly1.zygx.fieldbyname('zsj').asfloat*kyl/gzxl);
      frmscgxly1.zjsj1.caption:=formatfloat('#0.00',frmcbgx.query5.fieldbyname('zjsj1').asfloat);
      frmscgxly.qrmemo1.lines.Clear;
      if not frmscgxly.zygx.fieldbyname('bz').isnull then
        frmscgxly.QRMemo1.Lines.add(frmscgxly.zygx.fieldbyname('bz').value);
      frmscgxly1.quickrep1.preview;}
      frmscgxly1.ppreport1.print;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmscgxdy.xh1Click(Sender: TObject);
var
  xz07,xz04,xz01,xz06,xz03,xz05,xz30,xz31,xz40,xz41,xz42,xz08,xz09:boolean;
begin
  xz07:=false; xz04:=false; xz01:=false; xz30:=false; xz40:=false; xz41:=false;
  xz42:=false;xz08:=false;xz09:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz04,xz01,xz03,xz06,xz05,xz08,xz09,xz30,xz31,xz40,xz41,xz42 from ie_zygx1 where seq=:x1 and ((xz04=1) or (xz01=1) or (xz06=1) or (xz03=1) or (xz05=1) or (xz30=1) or (xz31=1) or (xz40=1) or (xz41=1) or (xz42=1) or (xz08=1) or (xz09=1))';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz04').isnull then begin
      xh1.Checked:=false;
      xh2.Checked:=true;
    end else begin
      xh1.Checked:=true;
      xh2.Checked:=false;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz04 from ie_zygx1 where seq=:x1 and xz04=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz04').isnull then xz04:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz01 from ie_zygx1 where seq=:x1 and xz01=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz01').isnull then xz01:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz06 from ie_zygx1 where seq=:x1 and xz06=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz06').isnull then xz06:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz03 from ie_zygx1 where seq=:x1 and xz03=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz03').isnull then xz03:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz05 from ie_zygx1 where seq=:x1 and xz05=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz05').isnull then xz05:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz30 from ie_zygx1 where seq=:x1 and xz30=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz30').isnull then xz30:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz31 from ie_zygx1 where seq=:x1 and xz31=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz31').isnull then xz31:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz40 from ie_zygx1 where seq=:x1 and xz40=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz40').isnull then xz40:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz41 from ie_zygx1 where seq=:x1 and xz41=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz41').isnull then xz41:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz42 from ie_zygx1 where seq=:x1 and xz42=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz42').isnull then xz42:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz08 from ie_zygx1 where seq=:x1 and xz08=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz08').isnull then xz08:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz09 from ie_zygx1 where seq=:x1 and xz09=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz09').isnull then xz09:=true;
  end;

  if xh1.checked then begin
    xh2.checked:=false;
    chk1.ItemIndex:=-1;
  end else begin
    xh2.Checked:=true;
    if xz04=true then chk1.ItemIndex:=0
    else if (xz30=true) or (xz31=true) then chk1.ItemIndex:=1
    else if (xz40=true) or (xz41=true) or (xz42=true) then chk1.ItemIndex:=2
    else if (xz01=true) or (xz03=true) or (xz06=true) or (xz05=true) or (xz08=true) or (xz09=true) then chk1.ItemIndex:=3;
  end;
end;

procedure Tfrmscgxdy.xh2Click(Sender: TObject);
var
  xz07,xz04,xz01,xz06,xz03,xz05,xz30,xz31,xz40,xz41,xz42,xz08,xz09:boolean;
begin
  xz07:=false; xz04:=false; xz01:=false; xz30:=false; xz40:=false; xz41:=false;
  xz42:=false;xz08:=false;xz09:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz04,xz01,xz03,xz06,xz05,xz08,xz09,xz30,xz31,xz40,xz41,xz42 from ie_zygx1 where seq=:x1 and ((xz04=1) or (xz01=1) or (xz06=1) or (xz03=1) or (xz05=1) or (xz30=1) or (xz31=1) or (xz40=1) or (xz41=1) or (xz42=1) or (xz08=1) or (xz09=1))';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz04').isnull then begin
      xh1.Checked:=false;
      xh2.Checked:=true;
    end else begin
      xh1.Checked:=true;
      xh2.Checked:=false;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz04 from ie_zygx1 where seq=:x1 and xz04=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz04').isnull then xz04:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz01 from ie_zygx1 where seq=:x1 and xz01=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz01').isnull then xz01:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz06 from ie_zygx1 where seq=:x1 and xz06=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz06').isnull then xz06:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz03 from ie_zygx1 where seq=:x1 and xz03=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz03').isnull then xz03:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz05 from ie_zygx1 where seq=:x1 and xz05=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz05').isnull then xz05:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz30 from ie_zygx1 where seq=:x1 and xz30=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz30').isnull then xz30:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz31 from ie_zygx1 where seq=:x1 and xz31=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz31').isnull then xz31:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz40 from ie_zygx1 where seq=:x1 and xz40=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz40').isnull then xz40:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz41 from ie_zygx1 where seq=:x1 and xz41=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz41').isnull then xz41:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz42 from ie_zygx1 where seq=:x1 and xz42=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz42').isnull then xz42:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz08 from ie_zygx1 where seq=:x1 and xz08=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz08').isnull then xz08:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz09 from ie_zygx1 where seq=:x1 and xz09=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz09').isnull then xz09:=true;
  end;

  if xh1.checked then begin
    xh2.checked:=false;
    chk1.ItemIndex:=-1;
  end else begin
    xh2.Checked:=true;
    if xz04=true then chk1.ItemIndex:=0
    else if (xz30=true) or (xz31=true) then chk1.ItemIndex:=1
    else if (xz40=true) or (xz41=true) or (xz42=true) then chk1.ItemIndex:=2
    else if (xz01=true) or (xz03=true) or (xz06=true) or (xz05=true) or (xz08=true) or (xz09=true) then chk1.ItemIndex:=3;
  end;
end;

procedure Tfrmscgxdy.FormShow(Sender: TObject);
var
  xz07,xz04,xz01,xz06,xz03,xz05,xz30,xz31,xz40,xz41,xz08,xz09,xz42:boolean;
begin
  xz07:=false; xz04:=false; xz01:=false; xz06:=false; xz03:=false; xz05:=false; xz30:=false; xz31:=false; xz40:=false; xz41:=false;
  xz42:=false;xz08:=false;xz09:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz04,xz01,xz03,xz06,xz05,xz08,xz09,xz30,xz31,xz40,xz41,xz42 from ie_zygx1 where seq=:x1 and ((xz04=1) or (xz01=1) or (xz06=1) or (xz03=1) or (xz05=1) or (xz30=1) or (xz31=1) or (xz40=1) or (xz41=1) or (xz42=1) or (xz08=1) or (xz09=1))';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz04').isnull then begin
      xh1.Checked:=false;
      xh2.Checked:=true;
    end else begin
      xh1.Checked:=true;
      xh2.Checked:=false;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz04 from ie_zygx1 where seq=:x1 and xz04=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz04').isnull then xz04:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz01 from ie_zygx1 where seq=:x1 and xz01=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz01').isnull then xz01:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz06 from ie_zygx1 where seq=:x1 and xz06=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz06').isnull then xz06:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz03 from ie_zygx1 where seq=:x1 and xz03=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz03').isnull then xz03:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz05 from ie_zygx1 where seq=:x1 and xz05=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz05').isnull then xz05:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz30 from ie_zygx1 where seq=:x1 and xz30=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz30').isnull then xz30:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz31 from ie_zygx1 where seq=:x1 and xz31=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz31').isnull then xz31:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz40 from ie_zygx1 where seq=:x1 and xz40=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz40').isnull then xz40:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz41 from ie_zygx1 where seq=:x1 and xz41=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz41').isnull then xz41:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz42 from ie_zygx1 where seq=:x1 and xz42=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz42').isnull then xz42:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz08 from ie_zygx1 where seq=:x1 and xz08=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz08').isnull then xz08:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz09 from ie_zygx1 where seq=:x1 and xz09=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz09').isnull then xz09:=true;
  end;

  if xh1.checked then begin
    xh2.checked:=false;
    chk1.ItemIndex:=-1;
  end else begin
    xh2.Checked:=true;
    if xz04=true then chk1.ItemIndex:=0
    else if (xz30=true) or (xz31=true) then chk1.ItemIndex:=1
    else if (xz40=true) or (xz41=true) or (xz42=true) then chk1.ItemIndex:=2
    else if (xz01=true) or (xz03=true) or (xz06=true) or (xz05=true) or (xz08=true) or (xz09=true) then chk1.ItemIndex:=3;
  end;
end;

procedure Tfrmscgxdy.chk1Click(Sender: TObject);
var
  xz07,xz04,xz01,xz06,xz03,xz05,xz30,xz31,xz40,xz41,xz42,xz08,xz09:boolean;
begin
  xz07:=false; xz04:=false; xz01:=false; xz06:=false; xz03:=false; xz05:=false; xz30:=false; xz31:=false; xz40:=false; xz41:=false;
  xz42:=false;xz08:=false;xz09:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz04 from ie_zygx1 where seq=:x1 and xz04=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz04').isnull then xz04:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz01 from ie_zygx1 where seq=:x1 and xz01=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz01').isnull then xz01:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz06 from ie_zygx1 where seq=:x1 and xz06=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz06').isnull then xz06:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz03 from ie_zygx1 where seq=:x1 and xz03=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz03').isnull then xz03:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz05 from ie_zygx1 where seq=:x1 and xz05=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz05').isnull then xz05:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz30 from ie_zygx1 where seq=:x1 and xz30=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz30').isnull then xz30:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz31 from ie_zygx1 where seq=:x1 and xz31=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz31').isnull then xz31:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz40 from ie_zygx1 where seq=:x1 and xz40=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz40').isnull then xz40:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz41 from ie_zygx1 where seq=:x1 and xz41=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz41').isnull then xz41:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz42 from ie_zygx1 where seq=:x1 and xz42=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz42').isnull then xz42:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz08 from ie_zygx1 where seq=:x1 and xz08=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz08').isnull then xz08:=true;
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz09 from ie_zygx1 where seq=:x1 and xz09=1';
    params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('xz09').isnull then xz09:=true;
  end;

    if xz04=true then chk1.ItemIndex:=0
    else if (xz30=true) or (xz31=true) then chk1.ItemIndex:=1
    else if (xz40=true) or (xz41=true) or (xz42=true) then chk1.ItemIndex:=2
    else if (xz01=true) or (xz03=true) or (xz06=true) or (xz05=true) or (xz08=true) or (xz09=true) then chk1.ItemIndex:=3;
end;

end.
