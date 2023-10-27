unit poptionformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmpoption = class(TForm)
    xh1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpoption: Tfrmpoption;

implementation

uses mainformu, calendarformu, currcalformu;

{$R *.dfm}

procedure Tfrmpoption.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmpoption:=nil;
end;

procedure Tfrmpoption.BitBtn1Click(Sender: TObject);
begin
  if xh1.ItemIndex=0 then begin
    if label1.Caption='Def_1' then begin
      frmcalendar.pre_byline_dtl;
    end else if label1.Caption='Def_2' then begin
      frmcalendar.pre_byline_sum;
    end else if label1.Caption='Cur_1' then begin
      frmcurrcal.pre_byline_dtl;
    end else if label1.Caption='Cur_2' then begin
      frmcurrcal.pre_byline_sum;
    end;
  end else if xh1.ItemIndex=1 then begin
    if label1.Caption='Def_1' then begin
      frmcalendar.pre_bywks_dtl;
    end else if label1.Caption='Def_2' then begin
      frmcalendar.pre_bywks_sum;
    end else if label1.Caption='Cur_1' then begin
      frmcurrcal.pre_bywks_dtl;
    end else if label1.Caption='Cur_2' then begin
      frmcurrcal.pre_bywks_sum;
    end;
  end;
end;

procedure Tfrmpoption.xh1Click(Sender: TObject);
begin
  if (label1.Caption='Def_1') or (label1.caption='Def_2') then begin
    if (frmcalendar.ComboBox2.text>'') or (frmcalendar.ComboBox3.text>'') then xh1.ItemIndex:=0
    else if frmcalendar.ComboBox1.text>'' then xh1.ItemIndex:=1;
  end else if (label1.caption='Cur_1') or (label1.caption='Cur_2') then begin
    if (frmcurrcal.ComboBox2.text>'') or (frmcurrcal.ComboBox3.text>'') then xh1.ItemIndex:=0
    else if frmcurrcal.ComboBox1.text>'' then xh1.ItemIndex:=1;
  end;
end;

end.
