unit spsectformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls;

type
  Tfrmspsect = class(TForm)
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
  frmspsect: Tfrmspsect;

implementation

uses mainformu, currcalformu;

{$R *.dfm}

procedure Tfrmspsect.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmspsect:=nil;
end;

procedure Tfrmspsect.BitBtn1Click(Sender: TObject);
begin
  frmcurrcal.BitBtn2Click(self);
end;

end.
