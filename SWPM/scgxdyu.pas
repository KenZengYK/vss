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
    chk1: TRadioGroup;
    xh1: TCheckBox;
    xh2: TCheckBox;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmscgxdy: Tfrmscgxdy;

implementation

uses mainformu, worksheet, scgxly1;
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
  str1:string;
begin
  screen.cursor:=crHourglass;
    gzxl:=1.20;
    kyl:=0.90;
    if not (checkbox1.Checked) then begin
      if op2.checked=true then begin
        str1:='';
        if frmscgxly1=nil then frmscgxly1:=tfrmscgxly1.create(self);
        with frmscgxly1.zygx do begin
          close;
          params.clear;
          params.createparam(ftstring,'kh',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd=:kh';
          commandtext:=commandtext+' order by a.seq,a.kh,b.gxh';
          params[0].asstring:=worksheet1.tblshedule.fieldbyname('cstyle').value;
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
        if frmscgxly1.zygx.FieldByName('xzr').value='GSD' then begin
          frmscgxly1.mychk01.checked:=true;
          frmscgxly1.mychk02.checked:=false;
          frmscgxly1.mychk03.checked:=false;
        end else if frmscgxly1.zygx.fieldbyname('xzr').value='Àu¤Æ«á' then begin
          frmscgxly1.mychk03.checked:=true;
          frmscgxly1.mychk01.checked:=false;
          frmscgxly1.mychk02.checked:=false;
        end else begin
          frmscgxly1.mychk02.checked:=true;
          frmscgxly1.mychk01.checked:=false;
          frmscgxly1.mychk03.checked:=false;
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
          frmscgxly1.title01.Caption:='---- Unclassified BOO';
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
            frmscgxly1.title01.Caption:='---- Classified(Medium Clr/Large Sz Dependent)';
            frmscgxly1.jb01.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb001)+' / '+formatfloat('0.0000',jb002);
            frmscgxly1.jb02.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb003)+' / '+formatfloat('0.0000',jb004);
            frmscgxly1.jb03.Caption:='Lig Clr/Big Sz Dependent: '+formatfloat('0.0000',jb005)+' / '+formatfloat('0.0000',jb006);
            frmscgxly1.jb001.Caption:='Med Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb101)+' / '+formatfloat('0.0000',jb102);
            frmscgxly1.jb002.Caption:='Lig Clr/Gen Sz Dependent: '+formatfloat('0.0000',jb103)+' / '+formatfloat('0.0000',jb104);
            frmscgxly1.jb003.Caption:='Lig Clr/Big Sz Dependent: '+formatfloat('0.0000',jb105)+' / '+formatfloat('0.0000',jb106);
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
            frmscgxly1.jb01.Caption:='Lar Sz Dependent: '+formatfloat('0.0000',jb017)+' / '+formatfloat('0.0000',jb018);
            frmscgxly1.jb001.Caption:='Lar Sz Dependent: '+formatfloat('0.0000',jb117)+' / '+formatfloat('0.0000',jb118);
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
      end;
    end;
  screen.cursor:=crDefault;
end;

procedure Tfrmscgxdy.xh1Click(Sender: TObject);
begin
  if xh1.checked then begin
    xh2.checked:=false;
    chk1.ItemIndex:=-1;
  end else begin
    xh2.Checked:=true;
    chk1.ItemIndex:=0;
  end;
end;

procedure Tfrmscgxdy.xh2Click(Sender: TObject);
begin
  if xh2.checked then begin
    xh1.checked:=false;
    if chk1.ItemIndex=-1 then chk1.ItemIndex:=0;
  end else begin
    xh1.Checked:=true;
    chk1.ItemIndex:=-1;
  end;
end;

procedure Tfrmscgxdy.FormShow(Sender: TObject);
var
  xz07,xz04,xz01,xz06,xz03,xz05,xz30,xz31,xz40,xz41:boolean;
  seq1:integer;
begin
  xz07:=false; xz04:=false; xz01:=false; xz06:=false; xz03:=false; xz05:=false; xz30:=false; xz31:=false; xz40:=false; xz41:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select seq from ie_zygx where zd=:x1';
    params[0].asstring:=worksheet1.tblshedule.fieldbyname('cstyle').value;
    open;
    if not fieldbyname('seq').isnull then seq1:=fieldbyname('seq').value else seq1:=0;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select xz04,xz01,xz06,xz03,xz05,xz30,xz31,xz40,xz41 from ie_zygx1 where seq=:x1 and ((xz04=1) or (xz01=1) or (xz06=1) or (xz03=1) or (xz05=1) or (xz30=1) or (xz31=1) or (xz40=1) or (xz41=1))';
    params[0].asinteger:=seq1;
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
    params[0].asinteger:=seq1;
    open;
    if not fieldbyname('xz04').isnull then xz04:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz01,xz06,xz03,xz05 from ie_zygx1 where seq=:x1 and ((xz01=1) or (xz06=1) or (xz03=1) or (xz05=1))';
    params[0].asinteger:=seq1;
    open;
    if not fieldbyname('xz01').isnull then xz01:=true;
    if not fieldbyname('xz06').isnull then xz06:=true;
    if not fieldbyname('xz03').isnull then xz03:=true;
    if not fieldbyname('xz05').isnull then xz05:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz30,xz31 from ie_zygx1 where seq=:x1 and ((xz30=1) or (xz31=1))';
    params[0].asinteger:=seq1;
    open;
    if not fieldbyname('xz30').isnull then xz30:=true;
    if not fieldbyname('xz31').isnull then xz31:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select xz40,xz41 from ie_zygx1 where seq=:x1 and ((xz40=1) or (xz41=1))';
    params[0].asinteger:=seq1;
    open;
    if not fieldbyname('xz40').isnull then xz40:=true;
    if not fieldbyname('xz41').isnull then xz41:=true;
  end;

  if xh1.checked then begin
    xh2.checked:=false;
    chk1.ItemIndex:=-1;
  end else begin
    xh2.Checked:=true;
    if xz04=true then chk1.ItemIndex:=0
    else if xz01=true then chk1.ItemIndex:=1
    else if xz06=true then chk1.ItemIndex:=2
    else if xz03=true then chk1.ItemIndex:=3
    else if xz05=true then chk1.ItemIndex:=4
    else if xz30=true then chk1.ItemIndex:=5
    else if xz31=true then chk1.ItemIndex:=6
    else if xz40=true then chk1.ItemIndex:=7
    else if xz41=true then chk1.ItemIndex:=8;
  end;
  {
  xh1.Checked:=true;
  xh2.Checked:=false;
  chk1.ItemIndex:=-1;
  }
end;

end.
