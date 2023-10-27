unit qn_sample_reasonformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls;

type
  Tfrmqn_sample_reason = class(TForm)
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
  frmqn_sample_reason: Tfrmqn_sample_reason;

implementation

uses mainformu, qn_sampleformu;

{$R *.dfm}

procedure Tfrmqn_sample_reason.BitBtn1Click(Sender: TObject);
begin
  frmqn_sample.bitbtn1click(self);
end;

procedure Tfrmqn_sample_reason.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmqn_sample_reason:=nil;
end;

end.
