unit ltformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, DBCtrls, Buttons;

type
  Tfrmlt = class(TForm)
    Label1: TLabel;
    Edit1: TDBNumberEditEh;
    Label2: TLabel;
    Edit2: TDBNumberEditEh;
    Label3: TLabel;
    Edit3: TDBNumberEditEh;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlt: Tfrmlt;

implementation

uses mainformu, currcalformu;

{$R *.dfm}

procedure Tfrmlt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlt:=nil;
end;

procedure Tfrmlt.BitBtn1Click(Sender: TObject);
begin
  frmcurrcal.BitBtn2click(self);
end;

end.
 