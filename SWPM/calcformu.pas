unit calcformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, Buttons;

type
  Tfrmcalc = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lr1: TCurrencyEdit;
    Label4: TLabel;
    lr2: TCurrencyEdit;
    Label5: TLabel;
    lr3: TCurrencyEdit;
    Label6: TLabel;
    lr4: TCurrencyEdit;
    Label7: TLabel;
    lr5: TCurrencyEdit;
    Label8: TLabel;
    lr6: TCurrencyEdit;
    Label9: TLabel;
    le1: TCurrencyEdit;
    Label10: TLabel;
    le2: TCurrencyEdit;
    Label11: TLabel;
    le3: TCurrencyEdit;
    Label12: TLabel;
    le4: TCurrencyEdit;
    Label13: TLabel;
    le5: TCurrencyEdit;
    Label14: TLabel;
    le6: TCurrencyEdit;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lr1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcalc: Tfrmcalc;

implementation

{$R *.dfm}

procedure Tfrmcalc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcalc:=nil;
end;

procedure Tfrmcalc.lr1Change(Sender: TObject);
var
  i1,i2,i3,i4,i5,i6:extended;
  f1,f2,f3,f4,f5,f6:double;
begin
  i1:=lr1.value;
  i2:=lr2.value;
  i3:=lr3.value;
  i4:=lr4.value;
  i5:=lr5.value;
  i6:=lr6.value;
  f1:=le1.value;
  f2:=le2.value;
  f3:=le3.value;
  f4:=le4.value;
  f5:=le5.value;
  f6:=le6.value;
  if i1+i2+i3+i4+i5+i6>0 then
  edit1.text:=formatfloat('0.00',(i1*f1+i2*f2+i3*f3+i4*f4+i5*f5+i6*f6)/(i1+i2+i3+i4+i5+i6))
  else edit1.text:='0.00';
end;

end.
