unit Carte_PasswordFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RzBckgnd;

type
  TfrmCarte_password = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    RzBackground1: TRzBackground;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_password: TfrmCarte_password;

implementation

uses Carte_MainFormu;

{$R *.dfm}

procedure TfrmCarte_password.BitBtn1Click(Sender: TObject);
begin
  if edit1.text=frmCarte_Main.edit1.text then begin
    if (edit2.text>'') and (edit3.text>'') then begin
      if (edit2.text=edit3.text) then begin
        with frmCarte_Main.adoquery2 do begin
          close;
          sql.text:='update tbl_carte_user set pwd='''+edit3.text+''' where usr='''+label2.caption+'''';
          execsql;
        end;
        showmessage('密碼已成功修改!');
        frmCarte_Password.close;
      end else showmessage('新密碼和確認密碼不一致!');
    end else showmessage('密碼不能為空!');
  end else showmessage('舊密碼錯!');
end;

procedure TfrmCarte_password.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Password:=nil;
end;

end.
