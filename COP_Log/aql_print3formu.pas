unit aql_print3formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmaql_print3 = class(TForm)
    xh1: TRadioButton;
    xh2: TRadioButton;
    xh3: TRadioButton;
    BitBtn4: TBitBtn;
    xh4: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaql_print3: Tfrmaql_print3;

implementation

uses aqlmainformu;

{$R *.dfm}

procedure Tfrmaql_print3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmaql_print3:=nil;
end;

procedure Tfrmaql_print3.BitBtn4Click(Sender: TObject);
var
  v1:string;
begin
  if xh1.Checked then v1:='1'
  else if xh2.Checked then v1:='2'
  else if xh3.Checked then v1:='3'
  else if xh4.Checked then v1:='4';
  frmaqlmain.print42(v1);
end;

end.
