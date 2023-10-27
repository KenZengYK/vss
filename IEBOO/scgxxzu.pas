unit scgxxzu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  Tfrmscgxxz = class(TForm)
    op1: TRadioButton;
    op2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmscgxxz: Tfrmscgxxz;

implementation
uses kgxzgx;
{$R *.DFM}

procedure Tfrmscgxxz.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmscgxxz.BitBtn1Click(Sender: TObject);
begin
  if op1.Checked=true then
  begin
    if frmkgxzgx=nil then frmkgxzgx:=tfrmkgxzgx.create(self);
    frmkgxzgx.query1.close;
    frmkgxzgx.query1.params.clear;
    frmkgxzgx.query1.commandtext:='select * from IE_bzgx';
    frmkgxzgx.query1.open;
    frmkgxzgx.dbgrid1.columns[0].title.caption:='車種';
    frmkgxzgx.Label2.caption:='車種';
    frmkgxzgx.show;
  end
  else
  begin
    if frmkgxzgx=nil then frmkgxzgx:=tfrmkgxzgx.create(self);
    frmkgxzgx.query1.close;
    frmkgxzgx.query1.params.clear;
    frmkgxzgx.query1.commandtext:='select * from IE_bzgx1 order by cz,mc';
    frmkgxzgx.query1.open;
    frmkgxzgx.dbgrid1.columns[0].title.caption:='縫合方法';
    frmkgxzgx.Label2.caption:='縫合方法';
    frmkgxzgx.show;
  end;
  close;
end;

procedure Tfrmscgxxz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //action:=cafree;
  //frmscgxxz:=nil;
end;

end.
