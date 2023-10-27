unit editpasswordu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBClient;

type
  Tfrmeditpassword = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Query1: TQuery;
    BitBtn2: TBitBtn;
    ClientDataSet1: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeditpassword: Tfrmeditpassword;

implementation
uses loginu;
{$R *.DFM}

procedure Tfrmeditpassword.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmeditpassword.FormShow(Sender: TObject);
begin
  edit1.text:='';
  edit2.text:='';
  edit3.text:='';
  if edit1.readonly=true then edit2.setfocus
  else edit1.setfocus;
end;

procedure Tfrmeditpassword.BitBtn1Click(Sender: TObject);
begin
  if edit2.readonly=false then begin
    if edit2.text=edit3.text then begin
      {with query1 do begin
        close;
        sql.clear;
        sql.add('select * from tbluser where upper(usr)=:user');
        prepare;
        params[0].asstring:=uppercase(frmlogin.combobox1.text);
        open;
        edit;
        fieldbyname('passwrd').value:=edit2.text;
        post;
      end;}
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'passwrd',ptinput);
        params.createparam(ftstring,'usr',ptinput);
        commandtext:='update tbluser set passwrd=:passwrd where upper(usr)=:usr';
        params[0].asstring:=edit2.text;
        params[1].asstring:=uppercase(frmlogin.combobox1.text);
        execute;
      end;
      application.messagebox('密碼修改成功!','提示',mb_iconwarning+mb_ok);
      close;
    end
    else begin
      application.messagebox('確認密碼錯誤','提示',mb_iconwarning+mb_ok);
      edit3.setfocus;
    end;
  end;
end;

procedure Tfrmeditpassword.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13) and (edit1.readonly=false) then begin
  if edit1.text<>'' then begin
    with clientdataset1 do begin
      close;
      params.createparam(ftstring,'usr',ptinput);
      params.createparam(ftstring,'passwrd',ptinput);
      commandtext:='select * from tbluser where upper(usr)=:usr and upper(passwrd)=:passwrd';
      params[0].asstring:=uppercase(frmlogin.combobox1.text);
      params[1].asstring:=uppercase(edit1.text);
      open;
      if recordcount=0 then begin
        application.messagebox('舊密碼錯誤','提示',mb_iconwarning+mb_ok);
        edit1.setfocus;
      end
      else begin
        edit1.text:='';
        edit2.readonly:=false;
        edit3.readonly:=false;
        edit2.setfocus;
      end;
    end;
  end;
 end;
end;

end.
