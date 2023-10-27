unit zdzlu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGridEh;

type
  Tfrmzdzl = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Query1: TQuery;
    Query2: TQuery;
    Query3: TQuery;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzdzl: Tfrmzdzl;

implementation
uses lbjhu, dmfcu;
{$R *.DFM}

procedure Tfrmzdzl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmlbjh.enabled:=true;
end;

procedure Tfrmzdzl.SpeedButton5Click(Sender: TObject);
begin
  close;
end;

end.
