unit xggxxhu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGridEh, Buttons, Db, StdCtrls, GridsEh;

type
  Tfrmxggxxh = class(TForm)
    DBGridEh1: TDBGridEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxggxxh: Tfrmxggxxh;

implementation
uses scgxu, cbgxu;
{$R *.DFM}

procedure Tfrmxggxxh.SpeedButton1Click(Sender: TObject);
begin
  with  DBGridEh1.DataSource.DataSet do begin
    if state=dsedit then post;
  end;
end;

procedure Tfrmxggxxh.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmxggxxh.SpeedButton2Click(Sender: TObject);
var
  i,j:integer;
begin
  screen.cursor:=crHourglass;
  with frmscgx.query1 do begin
    close;
    params.clear;
    params.CreateParam(ftinteger,'Seq',ptinput);
    commandtext:='select gxh,rid from IE_zygx1 where seq=:seq and (trtpt is null or trtpt=0) order by gxh,rid';
    params[0].value:=frmscgx.zygx.fieldbyname('seq').value;
    open;
    last;
    j:=recordcount;
    first;
    for i:=1 to j do begin
      with frmscgx.query2 do begin
        close;
        params.clear;
        params.CreateParam(ftstring,'gxh',ptinput);
        params.CreateParam(ftinteger,'seq',ptinput);
        params.CreateParam(ftstring,'gxh1',ptinput);
        params.CreateParam(ftinteger,'Rid',ptinput);
        commandtext:='update IE_zygx1 set gxh=:gxh where seq=:seq and gxh=:gxh1 and rid=:rid';
        params[0].value:=i*10;
        params[1].value:=frmscgx.zygx.fieldbyname('seq').value;
        params[2].value:=frmscgx.query1.fieldbyname('gxh').value;
        params[3].value:=frmscgx.query1.fieldbyname('rid').value;
        execute;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  frmscgx.zygx.AfterScroll(nil);
  screen.cursor:=crDefault;
end;

end.
