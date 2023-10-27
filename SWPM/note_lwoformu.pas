unit note_lwoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Buttons, Db, Menus;

type
  Tfrmnote_lwo = class(TForm)
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
    T2: TMenuItem;
    T3: TMenuItem;
    T4: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure T3Click(Sender: TObject);
    procedure T4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnote_lwo: Tfrmnote_lwo;

implementation

uses mainformu, lwoformu;

{$R *.dfm}

procedure Tfrmnote_lwo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnote_lwo:=nil;
end;

procedure Tfrmnote_lwo.BitBtn1Click(Sender: TObject);
begin
  if frmlwo.Query6.state=dsedit then frmlwo.Query6.Post;
end;

procedure Tfrmnote_lwo.T1Click(Sender: TObject);
begin
  dbmemo1.DataField:='REMARKS';
end;

procedure Tfrmnote_lwo.T2Click(Sender: TObject);
begin
  dbmemo1.DataField:='T2MEMO';
end;

procedure Tfrmnote_lwo.T3Click(Sender: TObject);
begin
  dbmemo1.DataField:='PMEMO';
end;

procedure Tfrmnote_lwo.T4Click(Sender: TObject);
begin
  dbmemo1.DataField:='T4MEMO';
end;

end.
