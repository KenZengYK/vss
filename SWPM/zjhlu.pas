unit zjhlu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGridEh, Db, DBTables, StdCtrls, Buttons, GridsEh;

type
  Tfrmzjhl = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzjhl: Tfrmzjhl;

implementation
uses pringjhlu;
{$R *.DFM}

procedure Tfrmzjhl.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  if query1.active=true then begin
    if query1.recordcount>0 then begin
      if frmpringjhl=nil then frmpringjhl:=tfrmpringjhl.create(self);
      frmpringjhl.ppreport1.print;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmzjhl.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
