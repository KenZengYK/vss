unit tmuxzu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ADODB, DBClient;

type
  Tfrmtmuxz = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TClientDataSet;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtmuxz: Tfrmtmuxz;

implementation
uses gxfxbu, dlu;
{$R *.DFM}

procedure Tfrmtmuxz.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    if dbgrid1.selectedindex=1 then
    begin
      if not dbgrid1.fields[1].isnull then
      begin
        frmgxfxb.gxfxb1.edit;
        frmgxfxb.dbgrid1.fields[3].value:=dbgrid1.fields[1].value;
        if not dbgrid1.fields[0].isnull then
        frmgxfxb.dbgrid1.fields[2].value:=dbgrid1.fields[0].value;
      end;
    end
    else
    begin
      if dbgrid1.selectedindex=3 then
      begin
        if not dbgrid1.fields[3].isnull then
        begin
          frmgxfxb.gxfxb1.edit;
          frmgxfxb.dbgrid1.fields[3].value:=dbgrid1.fields[3].value;
          if not dbgrid1.fields[2].isnull then
          frmgxfxb.dbgrid1.fields[2].value:=dbgrid1.fields[2].value;
        end;
      end
      else
      begin
        if dbgrid1.selectedindex=5 then
        begin
          if not dbgrid1.fields[5].isnull then
          begin
            frmgxfxb.gxfxb1.edit;
            frmgxfxb.dbgrid1.fields[3].value:=dbgrid1.fields[5].value;
            if not dbgrid1.fields[4].isnull then
            frmgxfxb.dbgrid1.fields[2].value:=dbgrid1.fields[4].value;
          end;
        end;
      end;
    end;
  end;
  close;
end;

end.
