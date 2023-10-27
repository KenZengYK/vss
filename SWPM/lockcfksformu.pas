unit lockcfksformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RzEdit, RzDBEdit, Mask, rxToolEdit, RXDBCtrl, DB,
  DBClient;

type
  Tfrmlockcfks = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    ClientDataSet2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlockcfks: Tfrmlockcfks;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmlockcfks.BitBtn1Click(Sender: TObject);
var
  lckdt1,lckdt2:TDateTime;
  line:string;
  seq:integer;
begin
  lckdt1:=date;
  lckdt2:=worksheet1.tblshedule.fieldbyname('cfksrq').value;
  line:=worksheet1.tblshedule.fieldbyname('pline').value;
  seq:=worksheet1.tblshedule.fieldbyname('seq').value;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='execute procedure sp_swpm_lockcfksrq(:x1,:x2,:x3,:x4)';
    params[0].asstring:=line;
    params[1].asinteger:=seq;
    params[2].asdate:=lckdt1;
    params[3].asdate:=lckdt2;
    execute;
  end;
  worksheet1.BitBtn2Click(self);
  close;
end;

procedure Tfrmlockcfks.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlockcfks:=nil;
end;

end.
