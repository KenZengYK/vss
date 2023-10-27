unit useru;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, StdCtrls, Mask, DBCtrls, Buttons;

type
  Tfrmuser = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmuser: Tfrmuser;

implementation
uses loginu;
{$R *.DFM}

procedure Tfrmuser.ClientDataSet1NewRecord(DataSet: TDataSet);
begin
  clientdataset1.fieldbyname('r1').value:=true;
  clientdataset1.fieldbyname('r2').value:=false;
  clientdataset1.fieldbyname('r3').value:=false;
  clientdataset1.fieldbyname('r4').value:=false;
  clientdataset1.fieldbyname('r5').value:=false;
  clientdataset1.fieldbyname('r6').value:=false;
end;

procedure Tfrmuser.SpeedButton1Click(Sender: TObject);
begin
  dbedit1.setfocus;
  clientdataset1.append;
end;

procedure Tfrmuser.SpeedButton2Click(Sender: TObject);
begin
  clientdataset1.delete;
end;

procedure Tfrmuser.SpeedButton3Click(Sender: TObject);
begin
  if (clientdataset1.state=dsedit) or (clientdataset1.state=dsinsert) then clientdataset1.post;
end;

procedure Tfrmuser.SpeedButton4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmuser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (clientdataset1.state=dsedit) or (clientdataset1.state=dsinsert) then clientdataset1.post;
end;

procedure Tfrmuser.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  if clientdataset1.changecount>0 then clientdataset1.applyupdates(0);
end;

procedure Tfrmuser.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  if clientdataset1.changecount>0 then clientdataset1.applyupdates(0);
end;

procedure Tfrmuser.FormShow(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser';
    open;
  end;
  clientdataset1.append;
end;

end.
