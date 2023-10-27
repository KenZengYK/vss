unit zhxzformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Db;

type
  Tfrmzhxz = class(TForm)
    rg01: TRadioGroup;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function itemindexchr(const i1:integer):string;
  public
    { Public declarations }
  end;

var
  frmzhxz: Tfrmzhxz;

implementation

uses scgxu, dy1bformu;

{$R *.dfm}

procedure Tfrmzhxz.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if rg01.ItemIndex>=0 then begin
    if label1.caption='fst' then begin
      if frmdy1b=nil then frmdy1b:=tfrmdy1b.create(self);
      with frmdy1b.zygx do begin
        close;
        params.clear;
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq';
        params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
        if rg01.itemindex=0 then commandtext:=commandtext+' and b.xz04=1'
        else if rg01.itemindex=1 then commandtext:=commandtext+' and b.xz30=1'
        else if rg01.itemindex=2 then commandtext:=commandtext+' and b.xz31=1'
        else if rg01.itemindex=3 then commandtext:=commandtext+' and b.xz40=1'
        else if rg01.itemindex=4 then commandtext:=commandtext+' and b.xz41=1'
        else if rg01.itemindex=5 then commandtext:=commandtext+' and b.xz42=1'
        else if rg01.itemindex=6 then commandtext:=commandtext+' and b.xz01=1'
        else if rg01.itemindex=7 then commandtext:=commandtext+' and b.xz03=1'
        else if rg01.itemindex=8 then commandtext:=commandtext+' and b.xz06=1'
        else if rg01.itemindex=9 then commandtext:=commandtext+' and b.xz05=1'
        else if rg01.itemindex=10 then commandtext:=commandtext+' and b.xz08=1'
        else if rg01.itemindex=11 then commandtext:=commandtext+' and b.xz09=1';
        //commandtext:=commandtext+' order by a.kh,b.gxh_n,b.zb,b.gxh';
        commandtext:=commandtext+' order by a.kh,b.zb,b.gxh';
        open;
      end;
      frmdy1b.ppreport1.print;
    end else if label1.caption='snd' then begin
      with frmscgx.ieboo2 do begin
        close;
        params.Clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='exec sp_ieboo_step2 :x1,:x2';
        params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
        params[1].asstring:=itemindexchr(rg01.ItemIndex);
        open;
        if not fieldbyname('cstyle').isnull then begin
          frmscgx.ppreport1.print;
        end;
      end;
    end else if label1.caption='parts' then begin
      with frmscgx.ieboo2 do begin
        close;
        params.Clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='exec sp_ieboo_parts :x1,:x2';
        params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
        params[1].asstring:=itemindexchr(rg01.ItemIndex);
        open;
        if not fieldbyname('cstyle').isnull then begin
          frmscgx.ppreport2.print;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

function Tfrmzhxz.itemindexchr(const i1: integer): string;
begin
  if i1=0 then result:='04'
  else if i1=1 then result:='30'
  else if i1=2 then result:='31'
  else if i1=3 then result:='40'
  else if i1=4 then result:='41'
  else if i1=5 then result:='42'
  else if i1=6 then result:='01'
  else if i1=7 then result:='03'
  else if i1=8 then result:='06'
  else if i1=9 then result:='05'
  else if i1=10 then result:='08'
  else if i1=11 then result:='09';
end;

procedure Tfrmzhxz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmdy1b<>nil then frmdy1b:=nil;
  //action:=cafree;
  //frmzhxz:=nil;
end;

end.
