unit Specmatformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmspecmat = class(TForm)
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    chk5: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmspecmat: Tfrmspecmat;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmspecmat.BitBtn1Click(Sender: TObject);
var
  s:string;
  i:integer;
begin
  s:='';  i:=0;
  if chk1.checked then begin
    if s>'' then s:=s+','+'L' else s:='L';
    i:=i+1;
  end;
  if chk2.checked then begin
    if s>'' then s:=s+','+'P' else s:='P';
    i:=i+1;
  end;
  if chk3.checked then begin
    if s>'' then s:=s+','+'SS' else s:='SS';
    i:=i+1;
  end;
  if chk4.checked then begin
    if s>'' then s:=s+','+'T' else s:='T';
    i:=i+1;
  end;
  if chk5.checked then begin
    if s>'' then s:=s+','+'R' else s:='R';
    i:=i+1;
  end;
  worksheet1.tblshedule.edit;
  if i>0 then
  worksheet1.tblshedule.fieldbyname('i_no').value:=i;
  worksheet1.tblshedule.fieldbyname('item_no').value:=s;
  worksheet1.tblshedule.post;
  close;
end;

procedure Tfrmspecmat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmspecmat:=nil;
end;

end.
