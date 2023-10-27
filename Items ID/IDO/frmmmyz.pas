unit frmmmyz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBClient;

type
  Tfrmmm = class(TForm)
    Edit1: TEdit;
    ClientDataSet1: TClientDataSet;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmm: Tfrmmm;

implementation
uses loginform, usrform;
{$R *.DFM}

procedure Tfrmmm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
   if edit1.text<>'' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'usr',ptinput);
      params.createparam(ftstring,'passwrd',ptinput);
      commandtext:='select passwrd from idou where upper(usr)=:usr and passwrd=:passwrd';
      params[0].asstring:=uppercase(frmlogin.edit1.text);
      params[1].asstring:=edit1.text;
      open;
      if recordcount>0 then begin
        if frmusr=nil then frmusr:=tfrmusr.create(self);
        frmusr.show;
      end;
    end;
   end;
   close;
  end;
end;

procedure Tfrmmm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmm:=nil;
end;

end.
