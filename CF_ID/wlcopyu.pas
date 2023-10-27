unit wlcopyu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient, Variants, ADODB;

type
  Tfrmwlcopy = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TADOQuery;
    Query2: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwlcopy: Tfrmwlcopy;

implementation
uses mainu, fcjyu;
{$R *.DFM}

procedure Tfrmwlcopy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmwlcopy:=nil;
end;

procedure Tfrmwlcopy.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmwlcopy.BitBtn1Click(Sender: TObject);
var
  prjno,swl,twl:string;
  xh:integer;
begin
  screen.cursor:=crHourglass;
  prjno:=frmfcjy.fcjy1.fieldbyname('prjno').value;
  twl:=frmfcjy.fcjy1.fieldbyname('wl').value;
  xh:=frmfcjy.fcjy1.fieldbyname('xh').value;
  if combobox1.text>'' then begin
    swl:=combobox1.text;
    with query1 do begin
      close;
      sql.text:='exec cut_wlcopy :prjno,:swl,:twl';
      parameters[0].value:=prjno;
      parameters[1].value:=swl;
      parameters[2].value:=twl;
      execsql;
    end;
    with frmfcjy.fcjy1 do begin
      close;
      commandtext:='select * from cut_fcjy1 where prjno=:prjno';
      parameters[0].value:=prjno;
      open;
      locate('prjno;wl;xh',vararrayof([prjno,twl,xh]),[]);
    end;
  end;
  screen.cursor:=crDefault;
end;

end.
