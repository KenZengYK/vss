unit memformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, DBCtrls, Buttons, DBClient, Grids, DBGridEh;

type
  Tfrmmem = class(TForm)
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet1: TClientDataSet;
    DBGridEh1: TDBGridEh;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmem: Tfrmmem;

implementation
uses mainformu, worksheet;
{$R *.DFM}

procedure Tfrmmem.BitBtn1Click(Sender: TObject);
begin
  if clientdataset1.state=dsedit then clientdataset1.post;
  if clientdataset1.changecount>0 then clientdataset1.applyupdates(0);
end;

procedure Tfrmmem.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if clientdataset1.state=dsedit then clientdataset1.post;
end;

procedure Tfrmmem.BitBtn3Click(Sender: TObject);
begin
  if clientdataset1.state=dsedit then clientdataset1.post;
end;

procedure Tfrmmem.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if dbgrideh1.fields[0].isnull then key:=#0;
end;

procedure Tfrmmem.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  if clientdataset1.changecount>0 then clientdataset1.applyupdates(0);
end;

procedure Tfrmmem.FormShow(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'pline',ptinput);
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select * from tblmem where pline=:pline and seq=:seq';
    params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
    open;
  end;
end;

end.
