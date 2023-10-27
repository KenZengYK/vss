unit ndxzu;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, ADODB, DBClient;

type
  Tfrmndxz = class(TForm)
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Table1: TClientDataSet;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure table1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmndxz: Tfrmndxz;

implementation
uses kgxzgx, dlu;
{$R *.DFM}

procedure Tfrmndxz.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmndxz.DBGrid1DblClick(Sender: TObject);
begin
  if table1.recordcount>0 then
  begin
    frmkgxzgx.Label3.caption:=inttostr(dbgrid1.fields[0].value);
    frmkgxzgx.label4.caption:=floattostr(dbgrid1.fields[1].value);
  end;
  close;
end;

procedure Tfrmndxz.FormShow(Sender: TObject);
begin
  if (Table1.state=dsedit) or (Table1.state=dsinsert) then table1.post;
end;

procedure Tfrmndxz.table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

end.
