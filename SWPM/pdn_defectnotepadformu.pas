unit pdn_defectnotepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons;

type
  Tfrmpdn_defectnotepad = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdn_defectnotepad: Tfrmpdn_defectnotepad;

implementation

uses mainformu, pdnformu, pdnwriteformu, selpdnformu;

{$R *.dfm}

procedure Tfrmpdn_defectnotepad.BitBtn1Click(Sender: TObject);
begin
  if label3.caption='PDN' then
  frmpdn.query1.post;
end;

procedure Tfrmpdn_defectnotepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdn_defectnotepad:=nil;
end;

end.
