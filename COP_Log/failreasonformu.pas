unit failreasonformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmfailreason = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
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
  frmfailreason: Tfrmfailreason;

implementation

uses failurereasonformu;

{$R *.dfm}

procedure Tfrmfailreason.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmfailreason:=nil;
end;

procedure Tfrmfailreason.BitBtn1Click(Sender: TObject);
var
  s1:string;
begin
  if checkbox1.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox1.Caption else s1:=checkbox1.Caption;
  end;
  if checkbox2.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox2.Caption else s1:=checkbox2.Caption;
  end;
  if checkbox3.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox3.Caption else s1:=checkbox3.Caption;
  end;
  if checkbox4.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox4.Caption else s1:=checkbox4.Caption;
  end;
  if checkbox5.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox5.Caption else s1:=checkbox5.Caption;
  end;
  if checkbox6.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox6.Caption else s1:=checkbox6.Caption;
  end;
  if checkbox7.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox7.Caption else s1:=checkbox7.Caption;
  end;
  if checkbox8.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox8.Caption else s1:=checkbox8.Caption;
  end;
  if checkbox9.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox9.Caption else s1:=checkbox9.Caption;
  end;
  if checkbox10.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox10.Caption else s1:=checkbox10.Caption;
  end;
  if checkbox11.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox11.Caption else s1:=checkbox11.Caption;
  end;
  if checkbox12.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox12.Caption else s1:=checkbox12.Caption;
  end;
  if checkbox13.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox13.Caption else s1:=checkbox13.Caption;
  end;
  if checkbox14.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox14.Caption else s1:=checkbox14.Caption;
  end;
  if checkbox15.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox15.Caption else s1:=checkbox15.Caption;
  end;
  if checkbox16.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox16.Caption else s1:=checkbox16.Caption;
  end;
  if checkbox17.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox17.Caption else s1:=checkbox17.Caption;
  end;
  if checkbox18.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox18.Caption else s1:=checkbox18.Caption;
  end;
  if checkbox19.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox19.Caption else s1:=checkbox19.Caption;
  end;
  if checkbox20.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox20.Caption else s1:=checkbox20.Caption;
  end;
  if checkbox21.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox21.Caption else s1:=checkbox21.Caption;
  end;
  if checkbox22.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox22.Caption else s1:=checkbox22.Caption;
  end;
  if checkbox23.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox23.Caption else s1:=checkbox23.Caption;
  end;
  if checkbox24.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox24.Caption else s1:=checkbox24.Caption;
  end;
  if checkbox25.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox25.Caption else s1:=checkbox25.Caption;
  end;
  if checkbox26.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox26.Caption else s1:=checkbox26.Caption;
  end;
  if checkbox27.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox27.Caption else s1:=checkbox27.Caption;
  end;
  if checkbox28.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox28.Caption else s1:=checkbox28.Caption;
  end;
  if checkbox29.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox29.Caption else s1:=checkbox29.Caption;
  end;
  if checkbox30.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox30.Caption else s1:=checkbox30.Caption;
  end;
  if checkbox31.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox31.Caption else s1:=checkbox31.Caption;
  end;
  if checkbox32.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox32.Caption else s1:=checkbox32.Caption;
  end;
  if checkbox33.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox33.Caption else s1:=checkbox33.Caption;
  end;
  if checkbox34.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox34.Caption else s1:=checkbox34.Caption;
  end;
  if checkbox35.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox35.Caption else s1:=checkbox35.Caption;
  end;
  if checkbox36.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox36.Caption else s1:=checkbox36.Caption;
  end;
  if checkbox37.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox37.Caption else s1:=checkbox37.Caption;
  end;
  if checkbox38.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox38.Caption else s1:=checkbox38.Caption;
  end;
  if checkbox39.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox39.Caption else s1:=checkbox39.Caption;
  end;
  if checkbox40.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox40.Caption else s1:=checkbox40.Caption;
  end;
  if checkbox41.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox41.Caption else s1:=checkbox41.Caption;
  end;
  if checkbox42.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox42.Caption else s1:=checkbox42.Caption;
  end;
  if checkbox43.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox43.Caption else s1:=checkbox43.Caption;
  end;
  if checkbox44.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox44.Caption else s1:=checkbox44.Caption;
  end;
  if checkbox45.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox45.Caption else s1:=checkbox45.Caption;
  end;
  if checkbox46.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox46.Caption else s1:=checkbox46.Caption;
  end;
  if checkbox47.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox47.Caption else s1:=checkbox47.Caption;
  end;
  if checkbox48.Checked then begin
    if s1>'' then s1:=s1+', '+checkbox48.Caption else s1:=checkbox48.Caption;
  end;
  if s1>'' then s1:='�ڦ���]: '+s1;
  if s1>'' then begin
    with frmfailurereason.Query1 do begin
      edit;
      fieldbyname('memo1').value:=s1;
      post;
    end;
  end;
  close;
end;

end.
