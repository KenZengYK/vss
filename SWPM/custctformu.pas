unit custctformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmcustct = class(TForm)
    chk1: TCheckBox;
    chk2: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    xh1: TCheckBox;
    xh2: TCheckBox;
    GroupBox2: TGroupBox;
    xh3: TCheckBox;
    xh4: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcustct: Tfrmcustct;

implementation

uses custformu;

{$R *.dfm}

procedure Tfrmcustct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcustct:=nil;
end;

procedure Tfrmcustct.BitBtn1Click(Sender: TObject);
var
  str:string;
begin
  if chk1.Checked then begin
    //if xh3.checked then frmcustomer.previewformat1_1;
    //if xh4.Checked then
    if (frmcustomer.ComboBox7.Text>'') or (frmcustomer.Combobox4.Text>'') then
      frmcustomer.previewformat1_1;
  end;
  if chk1.Checked then begin
    if chk2.Checked then begin
      if application.messagebox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        {
        if xh1.Checked then begin
          if xh2.Checked then begin
            frmcustomer.previewformat2('1');
            frmcustomer.previewformat2('2');
          end else frmcustomer.previewformat2('1');
        end else if xh2.Checked then
        }
        if (frmcustomer.ComboBox7.Text>'') or (frmcustomer.Combobox4.Text>'') then
        frmcustomer.previewformat2('2');
        //else str:='0';
        //if str<>'0' then frmcustomer.previewformat2(str);
        //frmcustomer.previewformat2;
      end;
    end;
  end else if chk2.Checked then begin
    {
    if xh1.Checked then begin
      if xh2.Checked then begin
        frmcustomer.previewformat2('1');
        frmcustomer.previewformat2('2');
      end else frmcustomer.previewformat2('1');
    end else if xh2.Checked then
    }
    if (frmcustomer.ComboBox7.Text>'') or (frmcustomer.Combobox4.Text>'') then
    frmcustomer.previewformat2('2');
   // else str:='0';
    //if str<>'0' then frmcustomer.previewformat2(str);
  end;
end;

procedure Tfrmcustct.chk2Click(Sender: TObject);
begin
  if chk2.Checked then begin
    xh1.Checked:=true;
    xh1.Enabled:=true;
    xh2.Checked:=true;
    xh2.Enabled:=true;
  end else begin
    xh1.Checked:=false;
    xh1.Enabled:=false;
    xh2.Checked:=false;
    xh2.Enabled:=false;
  end;
end;

procedure Tfrmcustct.chk1Click(Sender: TObject);
begin
  if chk1.Checked then begin
    xh3.Checked:=true;
    xh3.Enabled:=true;
    xh4.Checked:=true;
    xh4.Enabled:=true;
  end else begin
    xh3.Checked:=false;
    xh3.Enabled:=false;
    xh4.Checked:=false;
    xh4.Enabled:=false;
  end;
end;

end.
