unit Grp_ActionDetailFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons;

type
  Tfrmgrp_actiondetail = class(TForm)
    dbmmo1: TDBMemo;
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
  frmgrp_actiondetail: Tfrmgrp_actiondetail;

implementation

uses cmpl_actionlog1formu;

{$R *.dfm}

procedure Tfrmgrp_actiondetail.BitBtn1Click(Sender: TObject);
begin
  frmcmpl_actionlog1.bitbtn3click(self);
end;

procedure Tfrmgrp_actiondetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmgrp_actiondetail:=nil;
end;

end.
