unit splitzjsu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables;

type
  Tfrmsplitjob = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TQuery;
    Query2: TQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsplitjob: Tfrmsplitjob;

implementation
uses worksheet;
{$R *.DFM}

procedure Tfrmsplitjob.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;

  screen.cursor:=crdefault;
end;

procedure Tfrmsplitjob.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsplitjob.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in[#8,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then
    key:=#0;
end;

end.
