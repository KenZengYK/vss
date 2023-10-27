unit pdnpast2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmpdnpast2 = class(TForm)
    xh1: TCheckBox;
    xh2: TCheckBox;
    BitBtn1: TBitBtn;
    xh3: TRadioGroup;
    xh4: TCheckBox;
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure xh1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnpast2: Tfrmpdnpast2;

implementation

uses mainformu, pdnpastformu;

{$R *.dfm}

procedure Tfrmpdnpast2.BitBtn1Click(Sender: TObject);
begin
  if xh1.checked then begin
    frmpdnpast.Label10.Caption:=xh3.Items[xh3.itemindex];
    if checkbox1.checked then frmpdnpast.lblcust.caption:='CUST' else frmpdnpast.lblcust.caption:='NON';
    frmpdnpast.pastreport1;
  end;
  if xh1.Checked then begin
    if xh2.Checked then begin
      if application.messagebox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
      frmpdnpast.pastreport2;
    end;
  end else begin
    if xh2.Checked then frmpdnpast.pastreport2;
  end;
  if (xh1.Checked) or (xh2.Checked) then begin
    if xh4.Checked then begin
      if application.messagebox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
      if checkbox1.checked then frmpdnpast.lblcust.caption:='CUST' else frmpdnpast.lblcust.caption:='NON';
      frmpdnpast.pastreport3;
    end;
  end else begin
    if xh4.Checked then begin
      if checkbox1.checked then frmpdnpast.lblcust.caption:='CUST' else frmpdnpast.lblcust.caption:='NON';
      frmpdnpast.pastreport3;
    end;
  end;
end;

procedure Tfrmpdnpast2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdnpast2:=nil;
end;

procedure Tfrmpdnpast2.xh1Click(Sender: TObject);
begin
  if xh1.Checked then xh3.Enabled:=true
  else if not xh1.Checked then xh3.Enabled:=false;
end;

end.
