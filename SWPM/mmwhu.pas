unit mmwhu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient, Menus, MD5Unit;

type
  Tfrmmm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet2: TClientDataSet;
    PopupMenu1: TPopupMenu;
    CreateNewUser1: TMenuItem;
    MD51: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MD51Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmm: Tfrmmm;

implementation
uses mainformu;
{$R *.DFM}

procedure Tfrmmm.FormShow(Sender: TObject);
begin
  edit1.text:='';
  edit2.text:='';
  edit3.text:='';
  edit1.setfocus;
end;

procedure Tfrmmm.MD51Click(Sender: TObject);
var
  md5: TMD5Digest;
  usr,pwd,md5pwd,str1: string;
begin
  screen.cursor:=crSQLWait;
  try
    with clientdataset2 do begin
      close;
      params.clear;
      CommandText:='select usr,passwrd from tbluser';
      open;
      first;
      while not eof do begin
        usr:=fieldbyname('usr').value;
        pwd:=fieldbyname('passwrd').value;
        MD5String(uppercase(pwd), @md5);
        md5pwd:=LowerCase(MD5DigestToStr(md5));
        str1:='update tbluser set pwd='''+md5pwd+''' where usr='''+usr+''' and passwrd='''+pwd+'''';
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
        application.ProcessMessages;
        Next;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmmm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    edit2.setfocus;
  end;
end;

procedure Tfrmmm.BitBtn1Click(Sender: TObject);
var
  md5: TMD5Digest;
  md5pwd,str1:string;
begin
  screen.cursor:=crhourglass;
  if edit1.text=frmmain.Edit1.text then begin
    if edit2.text=edit3.text then begin
      {
      with frmmain.clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'passwrd',ptinput);
        params.createparam(ftstring,'usr',ptinput);
        commandtext:='update tbluser set passwrd=:passwrd where upper(usr)=:usr';
        params[0].asstring:=edit2.text;
        params[1].asstring:=uppercase(frmmain.combobox1.text);
        execute;
      end;
      }
      MD5String(uppercase(edit2.Text), @md5);
      md5pwd:=LowerCase(MD5DigestToStr(md5));

      str1:='update tbluser set passwrd='''+edit2.Text+''',pwd='''+md5pwd+''' where upper(usr)='''+uppercase(frmmain.combobox1.text)+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
      application.MessageBox('Change succeed!','Information',mb_iconwarning+mb_ok);
      close;
    end
    else begin
      application.MessageBox('New password is not as same as confirmation!','Warning',mb_iconwarning+mb_ok);
      edit3.setfocus;
    end;
  end else application.MessageBox('Old password is wrong!','Warning',mb_iconwarning+mb_ok);
  screen.cursor:=crdefault;
end;

procedure Tfrmmm.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmm:=nil;
end;

end.
