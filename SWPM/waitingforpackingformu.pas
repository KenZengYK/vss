unit waitingforpackingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit;

type
  Tfrmwaitingforpacking = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwaitingforpacking: Tfrmwaitingforpacking;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmwaitingforpacking.BitBtn1Click(Sender: TObject);
begin
  if (dateedit1.date>0) and (dateedit2.date>0) then begin
    worksheet1.chk12.checked:=true;
    worksheet1.dateedit3.date:=dateedit1.date;
    worksheet1.dateedit4.date:=dateedit2.date;
    worksheet1.chk12click(self);
    close;
  end;
end;

procedure Tfrmwaitingforpacking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmwaitingforpacking:=nil;
end;

procedure Tfrmwaitingforpacking.FormShow(Sender: TObject);
begin
  dateedit1.date:=date;
  dateedit2.date:=date+20;
end;

end.
