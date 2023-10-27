unit simratioformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons;

type
  Tfrmsimratio = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsimratio: Tfrmsimratio;

implementation

uses mainformu, simfactoryformu;

{$R *.dfm}

procedure Tfrmsimratio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmsimratio:=nil;
end;

end.
