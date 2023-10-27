unit xgdzu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGridEh, StdCtrls, Buttons;

type
  Tfrmxgdz = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgdz: Tfrmxgdz;

implementation
uses gxfxbu;
{$R *.DFM}

procedure Tfrmxgdz.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgdz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmgxfxb.enabled:=true;
end;

procedure Tfrmxgdz.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if datacol in [1,2,3] then
  begin
    dbgrideh1.Canvas.brush.Color:=$00B5FFFF;
    dbgrideh1.canvas.Font.color:=clred;
    //dbgrideh1.DefaultDrawColumnCell(rect,datacol,column,state);
  end;
end;

procedure Tfrmxgdz.BitBtn1Click(Sender: TObject);
begin
  DBGridEh1.DataSource.DataSet.Post;
  close;
end;

end.
