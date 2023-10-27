unit worksheetu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, ExtCtrls, Grids, DBGridEh, StdCtrls, Buttons;
  function Ceiling(var nm1: Double):integer;
  function Calcdiffday(var dt1,dt2: TDateTime):integer;

type
  Tfrmworksheet = class(TForm)
    tblschedule: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ClientDataSet4: TClientDataSet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    tblschedulePline: TStringField;
    tblscheduleSeq: TIntegerField;
    tblscheduleFlag1: TStringField;
    tblscheduleJ_no: TStringField;
    tblscheduleJ2_job: TStringField;
    tblscheduleArtno: TStringField;
    tblscheduleAcol: TStringField;
    tblscheduleQty: TIntegerField;
    tblscheduleKhzl: TStringField;
    tblscheduleFlag2: TStringField;
    tblscheduleTmu: TFloatField;
    tblscheduleZrs: TIntegerField;
    tblscheduleFyl: TFloatField;
    tblscheduleXjs: TIntegerField;
    tblscheduleYszjs: TIntegerField;
    tblscheduleKdjs: TIntegerField;
    tblscheduleTdjs: TIntegerField;
    tblscheduleZjs: TIntegerField;
    tblscheduleYsjhl: TFloatField;
    tblscheduleJhl: TFloatField;
    tblscheduleFlag3: TStringField;
    tblscheduleKsrq: TDateField;
    tblscheduleWeek1: TIntegerField;
    tblscheduleKsjs: TIntegerField;
    tblscheduleSctd: TIntegerField;
    tblscheduleSclh: TIntegerField;
    tblscheduleWcrq: TDateField;
    tblscheduleWcjs: TIntegerField;
    tblscheduleZhjs: TIntegerField;
    tblscheduleSxjs: TIntegerField;
    tblscheduleDbxl: TFloatField;
    tblscheduleBzjs: TIntegerField;
    tblscheduleFlag4: TStringField;
    tblscheduleTzwcrq: TDateField;
    tblscheduleExfty: TDateField;
    tblscheduleQrlcrq: TDateField;
    tblscheduleFyfs: TStringField;
    tblscheduleXcts: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure tblscheduleTmuChange(Sender: TField);
    procedure tblscheduleZhjsChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmworksheet: Tfrmworksheet;

implementation
uses mainformu;
{$R *.DFM}

procedure Tfrmworksheet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (tblschedule.state=dsinsert) or (tblschedule.state=dsedit) then tblschedule.post;
  action:=cafree;
  frmworksheet:=nil;
end;

procedure Tfrmworksheet.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmworksheet.SpeedButton1Click(Sender: TObject);
begin
  if edit2.text<>'' then begin
    with tblschedule do begin
      close;
      params.clear;
      params.createparam(ftstring,'pline',ptinput);
      commandtext:='select * from tblschedule where upper(pline)=:pline';
      params[0].asstring:=uppercase(edit2.text);
      open;
    end;
  end
  else begin
    if edit1.text<>'' then begin
      with tblschedule do begin
        close;
        params.clear;
        params.createparam(ftstring,'j_no',ptinput);
        commandtext:='select * from tblschedule where upper(j_no)=:j_no';
        params[0].asstring:=uppercase(edit1.text)+'%';
        open;
      end;
    end
    else begin
      with tblschedule do begin
        close;
        params.clear;
        commandtext:='select * from tblschedule';
        open;
      end;
    end;
  end;
end;

procedure Tfrmworksheet.SpeedButton8Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmworksheet.SpeedButton9Click(Sender: TObject);
var
  seq1:integer;
begin
  if (tblschedule.state=dsinsert) or (tblschedule.state=dsedit) then tblschedule.post;
  if edit2.text<>'' then begin
  end;
end;

procedure Tfrmworksheet.SpeedButton2Click(Sender: TObject);
var
  seq1:integer;
begin
  if (tblschedule.state=dsinsert) or (tblschedule.state=dsedit) then tblschedule.post;
  if edit2.text<>'' then begin

  end;
end;

procedure Tfrmworksheet.SpeedButton3Click(Sender: TObject);
var
  seq1:integer;
begin
  if (tblschedule.state=dsinsert) or (tblschedule.state=dsedit) then tblschedule.post;
  if edit2.text<>'' then begin
    if tblschedule.recordcount>0 then begin
      if application.MessageBox('要移除此製單嗎>?','提示',mb_iconquestion+mb_okcancel)=idok then begin
      end;
    end;
  end;
end;

procedure Tfrmworksheet.SpeedButton4Click(Sender: TObject);
begin
  if (tblschedule.state=dsinsert) or (tblschedule.state=dsedit) then tblschedule.post;
end;

procedure Tfrmworksheet.SpeedButton5Click(Sender: TObject);
begin
  if (tblschedule.state=dsinsert) or (tblschedule.state=dsedit) then tblschedule.post;
end;

procedure Tfrmworksheet.SpeedButton6Click(Sender: TObject);
begin
  if (tblschedule.state=dsinsert) or (tblschedule.state=dsedit) then tblschedule.post;
end;

procedure Tfrmworksheet.SpeedButton7Click(Sender: TObject);
begin
  if (tblschedule.state=dsinsert) or (tblschedule.state=dsedit) then tblschedule.post;
  if tblschedule.recordcount>0 then begin
  end;
end;

procedure Tfrmworksheet.tblscheduleTmuChange(Sender: TField);
var
  seq1,qty,zrs,xjs,yszjs,kdjs,tdjs,ksjs,sctd,sclh,bzjs,xcts:integer;
  tmu,fyl,ysjhl,float1,float2:double;
  ksrq,tzwcrq,exfty:tdatetime;
  owcjs,sumsect1,sumsect2:integer;
  owcrq,dt1:tdatetime;
begin
  seq1:=tblschedule.fieldbyname('seq').value;
  if not tblschedule.fieldbyname('tmu').isnull then tmu:=tblschedule.fieldbyname('tmu').value
  else tmu:=0.00;
  //if not tblschedule.fieldbyname('fyl').isnull then fyl:=tblschedule.fieldbyname('fyl').value
  //else fyl:=1.00;
  fyl:=1;
  if not tblschedule.fieldbyname('ysjhl').isnull then ysjhl:=tblschedule.fieldbyname('ysjhl').value
  else ysjhl:=0.00;
  if not tblschedule.fieldbyname('qty').isnull then qty:=tblschedule.fieldbyname('qty').value
  else qty:=0;
  if not tblschedule.fieldbyname('zrs').isnull then zrs:=tblschedule.fieldbyname('zrs').value
  else zrs:=0;
  if not tblschedule.fieldbyname('kdjs').isnull then kdjs:=tblschedule.fieldbyname('kdjs').value
  else kdjs:=0;
  if not tblschedule.fieldbyname('tdjs').isnull then tdjs:=tblschedule.fieldbyname('tdjs').value
  else tdjs:=0;
  if not tblschedule.fieldbyname('sctd').isnull then sctd:=tblschedule.fieldbyname('sctd').value
  else sctd:=0;
  if not tblschedule.fieldbyname('sclh').isnull then sclh:=tblschedule.fieldbyname('sclh').value
  else sclh:=0;
  if tmu*fyl>0.00 then begin
    float1:=0.5*zrs/tmu/fyl;
    xjs:=ceiling(float1);
    float2:=qty/xjs;
    yszjs:=ceiling(float2);
    tblschedule.fieldbyname('xjs').value:=xjs;
    tblschedule.fieldbyname('yszjs').value:=yszjs;
    {//2:
    //tblschedule.fieldbyname('jhl').value:=yszjs*100/(yszjs+sctd+sclh);
    }
    tblschedule.fieldbyname('zjs').value:=yszjs+kdjs+tdjs+sctd+sclh;
    if seq1>1 then begin
      with clientdataset1 do begin
        close;
        params.createparam(ftstring,'pline',ptinput);
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='select wcrq,wcjs from tblschedule where pline=:pline and seq=:seq';
        params[0].asstring:=tblschedule.fieldbyname('pline').value;
        params[1].asinteger:=seq1-1;
        open;
        if not fieldbyname('wcrq').isnull then begin
          owcrq:=fieldbyname('wcrq').value;
          owcjs:=fieldbyname('wcjs').value;
        end;
      end;
    end
    else begin
      if not tblschedule.fieldbyname('ksrq').isnull then begin
        ksrq:=tblschedule.fieldbyname('ksrq').value;
        if not tblschedule.fieldbyname('ksjs').isnull then ksjs:=tblschedule.fieldbyname('ksjs').value
        else ksjs:=1;
        sumsect1:=ksjs+kdjs+tdjs;
        sumsect2:=0;
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'line',ptinput);
          params.createparam(ftdate,'date1',ptinput);
          commandtext:='select date1,sectt from week52 where line=:line and date1>=:date1 order by date1';
          params[0].asstring:=tblschedule.fieldbyname('pline').value;
          params[1].asdate:=ksrq;
          open;
          first;
          while not eof do begin
            if sumsect2<sumsect1 then begin
              sumsect2:=sumsect2+fieldbyname('sectt').value;
              application.ProcessMessages;
              next;
            end
            else begin
              dt1:=fieldbyname('date1').value;
              break;
            end;
          end;
        end;
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'line',ptinput);
          params.createparam(ftdate,'date1',ptinput);
          params.createparam(ftdate,'date2',ptinput);
          commandtext:='select sum(sectt) as sumsect from week52 where line=:line and date1>=:date1 and date1<=:date2';
          params[0].asstring:=tblschedule.fieldbyname('pline').value;
          params[1].asdate:=ksrq;
          params[2].asdate:=dt1-1;
          open;
          sumsect2:=fieldbyname('sumsect').value;
        end;
        tblschedule.fieldbyname('wcrq').value:=dt1;
        tblschedule.fieldbyname('wcjs').value:=sumsect1-sumsect2;
        if not tblschedule.fieldbyname('bzjs').isnull then bzjs:=tblschedule.fieldbyname('bzjs').value
        else bzjs:=42;
        tblschedule.fieldbyname('tzwcrq').value:=tblschedule.fieldbyname('wcrq').value+(bzjs div 21);
        tzwcrq:=tblschedule.fieldbyname('tzwcrq').value;
        if not tblschedule.fieldbyname('exfty').isnull then begin
          exfty:=tblschedule.fieldbyname('exfty').value;
          xcts:=calcdiffday(tzwcrq,exfty);
        end;
      end;
    end;
  end
  else begin
    tblschedule.fieldbyname('zjs').value:=kdjs+tdjs+sctd+sclh;
    tblschedule.fieldbyname('jhl').value:=0.00;
  end;
end;

procedure Tfrmworksheet.tblscheduleZhjsChange(Sender: TField);
var
  zhjs,sxjs:integer;
begin
  if not tblschedule.fieldbyname('zhjs').isnull then zhjs:=tblschedule.fieldbyname('zhjs').value
  else zhjs:=0;
  if not tblschedule.fieldbyname('sxjs').isnull then sxjs:=tblschedule.fieldbyname('sxjs').value
  else sxjs:=0;
  if sxjs>0 then tblschedule.fieldbyname('dbxl').value:=zhjs*100/sxjs
  else tblschedule.fieldbyname('dbxl').value:=0.00;
end;

function Ceiling(var nm1:Double):integer;
begin
  if int(nm1)=nm1 then result:=round(nm1)
  else result:=round(int(nm1))+1;
end;

function Calcdiffday(var dt1,dt2:TDateTime):integer;
var
  year1,month1,day1,year2,month2,day2:word;
begin
  decodedate(dt1,year1,month1,day1);
  decodedate(dt2,year2,month2,day2);
end;

end.
