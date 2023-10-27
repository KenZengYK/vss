unit bzgxdtlu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, Buttons;

type
  Tfrmbzgxdtl = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbzgxdtl: Tfrmbzgxdtl;

implementation
uses bzgxu;
{$R *.DFM}

procedure Tfrmbzgxdtl.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    sendmessage(dbgrid1.handle,wm_keydown,vk_tab,0);
  end;
end;

procedure Tfrmbzgxdtl.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmbzgxdtl.DBGrid1DblClick(Sender: TObject);
begin
  if (not dbgrid1.fields[0].isnull) and (not dbgrid1.fields[1].isnull) then
  begin
    frmbzgx.bzgx.edit;
    frmbzgx.bzgx.FieldByName('ndxs').value:=dbgrid1.fields[1].value;
  end;
  close;
end;

end.
