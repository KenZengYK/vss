unit remarksformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Buttons;

type
  Tfrmremarks = class(TForm)
    Panel1: TPanel;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmremarks: Tfrmremarks;

implementation

uses mainformu, matmatchu, matchform;

{$R *.dfm}

procedure Tfrmremarks.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmremarks:=nil;
end;

end.
