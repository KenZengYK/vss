unit loginu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Menus, DBClient, MConnect, SConnect;

type
  Tfrmlogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    EditPassoword1: TMenuItem;
    ClientDataSet1: TClientDataSet;
    AddNewUsers1: TMenuItem;
    ClientDataSet2: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditPassoword1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure AddNewUsers1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;

implementation
uses mainformu,editpasswordu, useru;
{$R *.DFM}

procedure Tfrmlogin.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlogin.BitBtn1Click(Sender: TObject);
begin
  if combobox1.text<>'' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'usr',ptinput);
      params.createparam(ftstring,'passwrd',ptinput);
      commandtext:='select * from tbluser where upper(usr)=:usr and upper(passwrd)=:passwrd';
      params[0].asstring:=uppercase(combobox1.text);
      params[1].asstring:=edit1.text;
      open;
      if recordcount=0 then begin
        application.MessageBox('非法用戶!','警告',mb_iconwarning+mb_ok);
        edit1.setfocus;
      end
      else begin

      end;
    end;
  end;
end;

procedure Tfrmlogin.EditPassoword1Click(Sender: TObject);
begin
  if combobox1.text<>'' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'usr',ptinput);
      commandtext:='select passwrd from tbluser where upper(usr)=:usr';
      params[0].asstring:=uppercase(combobox1.text);
      open;
      if recordcount>0 then begin
        if frmeditpassword=nil then frmeditpassword:=tfrmeditpassword.create(self);
        if fieldbyname('passwrd').isnull then begin
          frmeditpassword.edit1.readonly:=true;
          frmeditpassword.edit2.readonly:=false;
          frmeditpassword.edit3.readonly:=false;
        end
        else begin
          frmeditpassword.edit1.readonly:=false;
          frmeditpassword.edit2.readonly:=true;
          frmeditpassword.edit3.readonly:=true;
        end;
        frmeditpassword.show;
      end;
    end;
  end;
end;

procedure Tfrmlogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then bitbtn1click(self);
end;

procedure Tfrmlogin.AddNewUsers1Click(Sender: TObject);
begin
  if frmuser=nil then frmuser:=tfrmuser.create(self);
  frmuser.show;
end;

end.
