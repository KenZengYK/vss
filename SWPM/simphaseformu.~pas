unit simphaseformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons;

type
  Tfrmsimphase = class(TForm)
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
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
  frmsimphase: Tfrmsimphase;

implementation

uses mainformu, simfactoryformu;

{$R *.dfm}

procedure Tfrmsimphase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmsimphase:=nil;
end;

procedure Tfrmsimphase.BitBtn1Click(Sender: TObject);
begin
  frmsimfactory.bitbtn3click(self);
end;

end.
 