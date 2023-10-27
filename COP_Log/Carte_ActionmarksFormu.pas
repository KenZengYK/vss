unit Carte_ActionmarksFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, StdCtrls, Buttons,
  cxTextEdit, cxMemo, cxDBEdit, RzBckgnd;

type
  TfrmCarte_Actionmarks = class(TForm)
    cxDBMemo1: TcxDBMemo;
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
  frmCarte_Actionmarks: TfrmCarte_Actionmarks;

implementation

uses Carte_RequestactionFormu;

{$R *.dfm}

procedure TfrmCarte_Actionmarks.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCarte_Actionmarks.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Actionmarks:=nil;
end;

end.
