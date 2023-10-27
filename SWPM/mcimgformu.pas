unit mcimgformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ExtDlgs, StdCtrls, Buttons, Db, OleCtrls, SHDocVw;

type
  Tfrmmcimg = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    OpenDialog1: TOpenPictureDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmcimg: Tfrmmcimg;

implementation

uses mainformu, mbrandformu, allmcformu;

{$R *.dfm}

procedure Tfrmmcimg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmcimg:=nil;
end;

procedure Tfrmmcimg.BitBtn1Click(Sender: TObject);
begin
  if opendialog1.Execute then begin
    if opendialog1.FileName>'' then begin
      if label1.Caption='brand' then begin
        with frmmbrand.Query1 do begin
          edit;
          fieldbyname('mcimg').value:=opendialog1.FileName;
          post;
        end;
      end else if label1.Caption='mcpool' then begin
        with frmallmc.Query1 do begin
          edit;
          fieldbyname('img').value:=opendialog1.FileName;
          post;
        end;
      end;
      webbrowser1.Navigate(opendialog1.FileName);
    end;
  end;
end;

end.
