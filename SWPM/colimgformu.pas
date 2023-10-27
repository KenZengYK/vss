unit colimgformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ExtDlgs, StdCtrls, Buttons, ExtCtrls, OleCtrls,
  SHDocVw;

type
  Tfrmcolimg = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcolimg: Tfrmcolimg;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmcolimg.BitBtn1Click(Sender: TObject);
var
  str1:string;
begin
  if openpicturedialog1.Execute then begin
    image1.Picture.LoadFromFile(openpicturedialog1.FileName);
    //webbrowser1.Navigate(opendialog1.FileName);
    {
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='update tbl_colchart set chartp=:x1 where acol=:x2';
      params[0].asstring:=openpicturedialog1.FileName;
      params[1].asstring:=label1.caption;
      execute;
    end;
    }
    str1:='update tbl_colchart set chartp='''+openpicturedialog1.FileName+''' where acol='''+label1.caption+'''';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
    
  end;
end;

procedure Tfrmcolimg.FormShow(Sender: TObject);
var
  imagepath:string;
begin
  try
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_colchart where acol='''+label1.caption+'''';
      open;
      if not fieldbyname('chartp').isnull then image1.Picture.LoadFromFile(fieldbyname('chartp').value);
    end;
  except
    showmessage('There is no color image file for this color!');
  end;
end;

procedure Tfrmcolimg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcolimg:=nil;
end;

end.
 