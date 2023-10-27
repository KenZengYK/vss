unit resignformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, DBCtrlsEh;

type
  Tfrmresign = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    DBText3: TDBText;
    wwDBDateTimePicker1: TDBDateTimeEditEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmresign: Tfrmresign;

implementation

uses mainformu, swf_profileformu, swfpoolformu;

{$R *.dfm}

procedure Tfrmresign.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmresign:=nil;
end;

end.
