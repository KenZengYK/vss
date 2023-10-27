unit pl2u;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, ADODB, DBClient;

type
  Tfrmpl2 = class(TForm)
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Table1: TClientDataSet;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpl2: Tfrmpl2;

implementation
uses bzgx1u;
{$R *.DFM}

procedure Tfrmpl2.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmpl2.DBGrid1DblClick(Sender: TObject);
begin
  if (not dbgrid1.fields[0].isnull) and (dbgrid1.fields[1].isnull) then
  begin
    if (Table1.state=dsedit) or (Table1.state=dsinsert) then table1.post;
    frmbzgx1.bzgx1.edit;
    frmbzgx1.bzgx1.fieldbyname('cdxs').value:=dbgrid1.fields[1].value;
  end;
end;

procedure Tfrmpl2.Table1AfterPost(DataSet: TDataSet);
begin
//  dbisavechanges(table1.handle);
end;

end.
