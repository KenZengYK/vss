unit skunoteformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Db;

type
  Tfrmskunote = class(TForm)
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
  frmskunote: Tfrmskunote;

implementation

uses mainformu, exchangeformu;

{$R *.dfm}

procedure Tfrmskunote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmskunote:=nil;
end;

procedure Tfrmskunote.BitBtn1Click(Sender: TObject);
begin
  if frmexchange.query6.state=dsedit then frmexchange.query6.Post;
end;

end.
