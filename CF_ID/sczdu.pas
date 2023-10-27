unit sczdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGridEh, Buttons, Db, DBTables, DBClient;

type
  Tfrmsczd = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    Edit1: TEdit;
    Label1: TLabel;
    DataSource1: TDataSource;
    Edit2: TEdit;
    Label2: TLabel;
    Database1: TDatabase;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    SpeedButton2: TSpeedButton;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsczd: Tfrmsczd;

implementation
uses dlu, fcu, gczdu;
{$R *.DFM}

procedure Tfrmsczd.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsczd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmsczd:=nil;
end;

procedure Tfrmsczd.Edit1Change(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if edit1.text<>'' then begin
    if length(edit1.text)=7 then begin
      with query1 do begin
        close;
        sql.clear;
        sql.add('select distinct a.cuso40,b.pstl52,b.pcol52,c.word40 from oep40 a,app52 b,msp40 c where b.cono52=a.cono40 ');
        sql.add('and b.ordn52=a.ordn40 and c.cono40=a.cono40 and substr(c.w1rf40,1,7)=a.ordn40 and a.cono40=:cono40 ');
        sql.add('and c.word40=:word40 and a.dtlc40=0 and a.stat40<>:stat40 and b.stat52<>:stat52 and c.wsta40<:wsta40');
        prepare;
        params[0].asstring:=uppercase(edit2.text);
        params[1].asstring:=uppercase(edit1.text);
        params[2].asstring:='X';
        params[3].asstring:='X';
        params[4].asstring:='8';
        open;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmsczd.BitBtn1Click(Sender: TObject);
var
  gch,zdh,kh,sh:string;
begin
  screen.Cursor:=crhourglass;
  if not dbgrideh1.fields[0].isnull then begin
    gch:=dbgrideh1.fields[0].value;
    zdh:=dbgrideh1.fields[1].value;
    kh:=dbgrideh1.fields[2].value;
    sh:=dbgrideh1.fields[3].value;
    //frmxtdl.SocketConnection1.AppServer.geterpdata(gch,zdh,kh,sh);
    showmessage('OK!');
  end;
  screen.Cursor:=crdefault;
end;

procedure Tfrmsczd.SpeedButton2Click(Sender: TObject);
begin
  if frmgczd=nil then frmgczd:=tfrmgczd.create(self);
  frmgczd.show;
end;

end.
