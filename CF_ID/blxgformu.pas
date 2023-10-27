unit blxgformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient, Variants, ADODB;

type
  Tfrmblxg = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TADOQuery;
    Query2: TADOQuery;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmblxg: Tfrmblxg;

implementation
uses mainu, fcjyu;
{$R *.DFM}

procedure Tfrmblxg.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmblxg.BitBtn1Click(Sender: TObject);
var
  ylbzs,xglbzs,xh:integer;
  prjno,wl:string;
begin
  prjno:=frmfcjy.fcjy1.fieldbyname('prjno').value;
  wl:=frmfcjy.fcjy1.fieldbyname('wl').value;
  xh:=frmfcjy.fcjy1.fieldbyname('xh').value;
  ylbzs:=frmfcjy.fcjy1.fieldbyname('lbzs').value;
  if edit1.text>'' then begin
    xglbzs:=strtoint(edit1.text);
    if ylbzs=xglbzs*(ylbzs/xglbzs) then begin
      //frmxtdl.SocketConnection1.AppServer.fcjyxglbzs(prjno,wl,xh,ylbzs,xglbzs);
      with query1 do begin
        close;
        sql.text:='execute cut_xgbl :prjno,:wl,:xh,:lbzs,:xglbzs';
        parameters[0].value:=prjno;
        parameters[1].value:=wl;
        parameters[2].value:=xh;
        parameters[3].value:=ylbzs;
        parameters[4].value:=xglbzs;
        execsql;
      end;
      with frmfcjy.fcjy1 do begin
        close;
        commandtext:='select * from cut_fcjy1 where prjno=:prjno';
        parameters[0].value:=prjno;
        open;
        locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[]);
      end;
      showmessage('OK!');
      close;
    end
    else begin
      showmessage('此拉布張數沒有按比例,請重新輸入!');
      edit1.setfocus;
    end;
  end;
end;

procedure Tfrmblxg.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in [#48,#49,#50,#51,#52,#53,#54,#55,#56,#57,#8]) then
  key:=#0;
end;

procedure Tfrmblxg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmblxg:=nil;
end;

end.
