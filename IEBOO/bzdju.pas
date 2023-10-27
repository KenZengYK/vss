unit bzdju;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGridEh, Db, DBTables, StdCtrls, Buttons, ADODB, DBClient;

type
  Tfrmbzdj = class(TForm)
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    Table1: TClientDataSet;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbzdj: Tfrmbzdj;

implementation
uses bzgxu, bzgx1u, mmyzu, dlu;
{$R *.DFM}

procedure Tfrmbzdj.DBGridEh1DblClick(Sender: TObject);
begin
  if not dbgrideh1.Fields[0].IsNull then
  if table1.recordcount>0 then
  begin
    table1.last;
    if label1.caption='frmbzgx' then
    begin
      frmbzgx.bzgx.edit;
      frmbzgx.bzgx.fieldbyname('bzdj').value:=dbgrideh1.fields[0].value;
    end
    else
    begin
      frmbzgx1.bzgx1.edit;
      frmbzgx1.bzgx1.fieldbyname('bzdj').value:=dbgrideh1.fields[0].value;
    end;
  end;
  close;
end;

procedure Tfrmbzdj.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmbzdj.Table1AfterPost(DataSet: TDataSet);
begin
  dbgrideh1.ReadOnly:=true;
end;

procedure Tfrmbzdj.FormShow(Sender: TObject);
begin
  dbgrideh1.readonly:=true;
end;

procedure Tfrmbzdj.BitBtn3Click(Sender: TObject);
begin
  //dbgrideh1.readonly:=false;
  if frmmmyz=nil then frmmmyz:=tfrmmmyz.create(self);
  frmmmyz.show;
end;

end.
