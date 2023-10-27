unit styleimgformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ExtDlgs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
  cxImage;

type
  Tfrmstyleimg = class(TForm)
    cxImage1: TcxImage;
    Panel1: TPanel;
    Label11: TLabel;
    SpeedButton6: TSpeedButton;
    DBEdit8: TDBEdit;
    BitBtn1: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmstyleimg: Tfrmstyleimg;

implementation

uses mainu, siztblu;

{$R *.dfm}

procedure Tfrmstyleimg.DBEdit8Change(Sender: TObject);
begin
  if dbedit8.Text>'' then cximage1.Picture.LoadFromFile(dbedit8.text);
end;

procedure Tfrmstyleimg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmstyleimg:=nil;
end;

procedure Tfrmstyleimg.FormShow(Sender: TObject);
begin
  try
    if not frmsiztbl.qry_appr.fieldbyname('img').isnull then begin
      if frmsiztbl.qry_appr.fieldbyname('img').value>'' then
      cximage1.Picture.LoadFromFile(frmsiztbl.qry_appr.fieldbyname('img').value);
    end;
  except

  end;
end;

procedure Tfrmstyleimg.SpeedButton6Click(Sender: TObject);
begin
  if frmsiztbl.lblimg.caption='R9' then begin
    if openpicturedialog1.Execute then begin
      frmsiztbl.qry_appr.Edit;
      frmsiztbl.qry_appr.fieldbyname('img').value:=openpicturedialog1.FileName;
      frmsiztbl.qry_appr.post;
    end;
  end;
end;

end.
