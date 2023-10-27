unit memform1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Grids, DBGridEh, StdCtrls, Buttons;

type
  Tfrmmem1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    BitBtn3: TBitBtn;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmem1: Tfrmmem1;

implementation
uses mainformu, worksheet;
{$R *.DFM}

procedure Tfrmmem1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmem1.BitBtn1Click(Sender: TObject);
begin
  if clientdataset1.state=dsedit then clientdataset1.post;
end;

procedure Tfrmmem1.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  if clientdataset1.changecount>0 then clientdataset1.applyupdates(0);
end;

procedure Tfrmmem1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if clientdataset1.state=dsedit then clientdataset1.post;
end;

procedure Tfrmmem1.FormShow(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'pline',ptinput);
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select * from tblmem1 where pline=:pline and seq=:seq';
    params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
    open;
  end;
end;

end.
