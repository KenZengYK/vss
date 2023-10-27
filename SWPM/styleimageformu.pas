unit styleimageformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ExtDlgs, DB, DBClient, Mask, rxToolEdit;

type
  Tfrmstyleimage = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    Label1: TLabel;
    Image2: TImage;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmstyleimage: Tfrmstyleimage;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmstyleimage.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  str1:string;
begin
  str1:='update tbl_stylechart set ';
  if dateedit1.date>0 then str1:=str1+'pb_jhdt='''+formatdatetime('yyyy/MM/dd',dateedit1.date)+''', '
  else str1:=str1+'pb_jhdt=null, ';
  if dateedit2.date>0 then str1:=str1+'pb_sjdt='''+formatdatetime('yyyy/MM/dd',dateedit2.date)+''', '
  else str1:=str1+'pb_sjdt=null, ';
  if checkbox1.checked then str1:=str1+'pb_wc=1 ' else str1:=str1+'pb_wc=0 ';
  str1:=str1+'where cstyle='''+label1.caption+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  action:=cafree;
  frmstyleimage:=nil;
end;

procedure Tfrmstyleimage.BitBtn1Click(Sender: TObject);
begin
  if openpicturedialog1.Execute then begin
    image1.Picture.LoadFromFile(openpicturedialog1.FileName);
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='update tbl_stylechart set chartp=:x1 where cstyle=:x2';
      params[0].asstring:=openpicturedialog1.FileName;
      params[1].asstring:=label1.caption;
      execute;
    end;
  end;
end;

procedure Tfrmstyleimage.FormShow(Sender: TObject);
var
  imagepath:string;
begin
  try
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_stylechart where cstyle='''+label1.caption+'''';
      open;
      if fieldbyname('chartp').isnull then showmessage('There is no image for this style!')
      else begin
        if not fieldbyname('chartp').isnull then image1.Picture.LoadFromFile(fieldbyname('chartp').value);
        if not fieldbyname('chart1p').isnull then image2.Picture.LoadFromFile(fieldbyname('chart1p').value);
      end;
      if not fieldbyname('pb_jhdt').isnull then dateedit1.date:=fieldbyname('pb_jhdt').value;
      if not fieldbyname('pb_sjdt').isnull then dateedit2.date:=fieldbyname('pb_sjdt').value;
      if not fieldbyname('pb_wc').isnull then checkbox1.checked:=fieldbyname('pb_wc').value;
    end;
  except
    //showmessage('There is no iamge for this style!');
  end;
end;

procedure Tfrmstyleimage.BitBtn3Click(Sender: TObject);
begin
  if openpicturedialog1.Execute then begin
    image2.Picture.LoadFromFile(openpicturedialog1.FileName);
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='update tbl_stylechart set chart1p=:x1 where cstyle=:x2';
      params[0].asstring:=openpicturedialog1.FileName;
      params[1].asstring:=label1.caption;
      execute;
    end;
  end;
end;

end.
