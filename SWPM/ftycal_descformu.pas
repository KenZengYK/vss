unit ftycal_descformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient;

type
  Tfrm_ftycal_desc = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ftycal_desc: Tfrm_ftycal_desc;

implementation

uses mainformu, ftycalendarformu;

{$R *.dfm}

procedure Tfrm_ftycal_desc.BitBtn1Click(Sender: TObject);
var
  str1:string;
begin
  str1:='update tplant_wk52_des set des='''+edit1.text+''' where tplant='''+label10.caption+''' and optc=1';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  str1:='update tplant_wk52_des set des='''+edit2.text+''' where tplant='''+label10.caption+''' and optc=2';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  str1:='update tplant_wk52_des set des='''+edit3.text+''' where tplant='''+label10.caption+''' and optc=3';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  str1:='update tplant_wk52_des set des='''+edit4.text+''' where tplant='''+label10.caption+''' and optc=4';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  str1:='update tplant_wk52_des set des='''+edit5.text+''' where tplant='''+label10.caption+''' and optc=5';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  str1:='update tplant_wk52_des set des='''+edit6.text+''' where tplant='''+label10.caption+''' and optc=6';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  str1:='update tplant_wk52_des set des='''+edit7.text+''' where tplant='''+label10.caption+''' and optc=7';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  str1:='update tplant_wk52_des set des='''+edit8.text+''' where tplant='''+label10.caption+''' and optc=8';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrm_ftycal_desc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frm_ftycal_desc:=nil;
end;

procedure Tfrm_ftycal_desc.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tplant_wk52_des where tplant='''+label10.caption+''' order by optc';
    open;
    first;
    while not eof do begin
      if fieldbyname('optc').value=1 then edit1.text:=fieldbyname('des').value
      else if fieldbyname('optc').value=2 then edit2.text:=fieldbyname('des').value
      else if fieldbyname('optc').value=3 then edit3.text:=fieldbyname('des').value
      else if fieldbyname('optc').value=4 then edit4.text:=fieldbyname('des').value
      else if fieldbyname('optc').value=5 then edit5.text:=fieldbyname('des').value
      else if fieldbyname('optc').value=6 then edit6.text:=fieldbyname('des').value
      else if fieldbyname('optc').value=7 then edit7.text:=fieldbyname('des').value
      else if fieldbyname('optc').value=8 then edit8.text:=fieldbyname('des').value;
      application.processmessages;
      next;
    end;
  end;
end;

end.
