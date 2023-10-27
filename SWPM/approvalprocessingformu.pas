unit approvalprocessingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls, Buttons;

type
  Tfrmapprovalprocessing = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmapprovalprocessing: Tfrmapprovalprocessing;

implementation

{$R *.dfm}

procedure Tfrmapprovalprocessing.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmapprovalprocessing:=nil;
end;

procedure Tfrmapprovalprocessing.BitBtn2Click(Sender: TObject);
begin
  if not dbgrideh1.Fields[0].IsNull then begin
    if application.MessageBox('QN Confirm','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      showmessage('Confirmed successfully!');
    end;
  end;
end;

procedure Tfrmapprovalprocessing.BitBtn4Click(Sender: TObject);
begin
  if not dbgrideh2.Fields[0].IsNull then begin
    if application.MessageBox('QN PII Confirm','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      showmessage('Confirmed successfully!');
    end;
  end;
end;

end.
