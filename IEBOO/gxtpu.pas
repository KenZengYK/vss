unit gxtpu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtDlgs;

type
  Tfrmgxtp = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    Dialog1: TOpenDialog;
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgxtp: Tfrmgxtp;

implementation
uses bzgx1u, bzgxu, ktpu, bfdhu;
{$R *.DFM}

procedure Tfrmgxtp.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmgxtp.SpeedButton2Click(Sender: TObject);
begin
  dialog1.Execute;
  edit1.text:=dialog1.FileName;
end;

procedure Tfrmgxtp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if label1.caption='frmbzgx' then
  begin
    if edit1.text<>'' then
    begin
      frmbzgx.bzgx.edit;
      frmbzgx.bzgx.fieldbyname('tplj').value:=edit1.text;
      frmbzgx.bzgx.post;
    end;
    frmbzgx.enabled:=true;
  end
  else
  begin
    if edit1.text<>'' then
    begin
      frmbzgx1.bzgx1.edit;
      frmbzgx1.bzgx1.fieldbyname('tplj').value:=edit1.text;
      frmbzgx1.bzgx1.post;
    end;
    frmbzgx1.enabled:=true;
  end;
end;

procedure Tfrmgxtp.BitBtn1Click(Sender: TObject);
var
  extf:string;
begin
 if edit1.text<>'' then
 begin
   extf:=copy(edit1.text,length(edit1.text)-2,3);
 end
 else extf:='';
 if (edit1.text<>'') and (extf<>'') and (extf<>'mpg') and (extf<>'dat') and (extf<>'mpv') and (extf<>'piv') then
 begin
  if frmktp=nil then frmktp:=tfrmktp.create(self);
  frmktp.Image1.Picture.LoadFromFile(edit1.text);
  frmktp.show;
 end;
end;

procedure Tfrmgxtp.BitBtn3Click(Sender: TObject);
var
  extf:string;
begin
 if edit1.text<>'' then
 begin
   extf:=copy(edit1.text,length(edit1.text)-2,3);
 end
 else extf:='';
 if (edit1.text<>'') and ((extf='mpg') or (extf='dat') or (extf='mpv') or (extf='piv')) then
 begin
   if frmbfdh=nil then frmbfdh:=tfrmbfdh.create(self);
   frmbfdh.Show;
   frmbfdh.WindowsMediaPlayer1.URL:='file:///'+edit1.text;
   //frmbfdh.WindowsMediaPlayer1
   //.filename:=edit1.text;
 end;
end;

end.
