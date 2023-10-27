unit mcinfoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, ExtDlgs, Db;

type
  Tfrmmcinfo = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    BitBtn3: TBitBtn;
    Image1: TImage;
    OpenDialog1: TOpenPictureDialog;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmcinfo: Tfrmmcinfo;

implementation

uses mainformu, mbrandformu;

{$R *.dfm}

procedure Tfrmmcinfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmcinfo:=nil;
end;

procedure Tfrmmcinfo.BitBtn1Click(Sender: TObject);
begin
  frmmbrand.BitBtn3click(self);
end;

procedure Tfrmmcinfo.BitBtn2Click(Sender: TObject);
begin
  try
    if opendialog1.Execute then begin
      if opendialog1.FileName>'' then begin
        image1.Picture.LoadFromFile(opendialog1.FileName);
        with frmmbrand.query1 do begin
          edit;
          fieldbyname('mcimg').value:=opendialog1.FileName;
          post;
        end;
      end;
    end;
  except
    //
  end;
end;

procedure Tfrmmcinfo.FormShow(Sender: TObject);
begin
  try
    if not frmmbrand.Query1.fieldbyname('mcimg').isnull then
    image1.Picture.LoadFromFile(frmmbrand.Query1.fieldbyname('mcimg').value);
  except
  end;
end;

end.
 