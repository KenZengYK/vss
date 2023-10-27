unit gclru;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGridEh, StdCtrls, DBCtrls, wwdbdatetimepicker, ExtCtrls,
  DBClient, Provider, Db, DBTables, Mask, Buttons;

type
  Tfrmgclr = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBGridEh1: TDBGridEh;
    zd: TSpeedButton;
    bc: TSpeedButton;
    tc: TSpeedButton;
    fz: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Query1: TQuery;
    procedure tcClick(Sender: TObject);
    procedure zdClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fzClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgclr: Tfrmgclr;

implementation
uses DMfcu, zdlru, mainu, gcfz;
{$R *.DFM}

procedure Tfrmgclr.tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmgclr.zdClick(Sender: TObject);
begin
  if frmzdlr=nil then frmzdlr:=tfrmzdlr.create(self);
  frmgclr.enabled:=false;
  frmzdlr.show;
end;

procedure Tfrmgclr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmmain.enabled:=true;
end;

procedure Tfrmgclr.fzClick(Sender: TObject);
begin
  if frmgcfz=nil then frmgcfz:=tfrmgcfz.create(self);
  frmgclr.enabled:=false;
  frmgcfz.show;
end;

end.
