unit currcal_tdformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh, ExtCtrls, Db, siComp;

type
  Tfrmcurrcal_td = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    xedit1: TDBNumberEditEh;
    xedit2: TDBNumberEditEh;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    xedit3: TDBNumberEditEh;
    Label4: TLabel;
    Label5: TLabel;
    xedit4: TDBNumberEditEh;
    xedit5: TDBNumberEditEh;
    siLang1: TsiLang;
    Bevel1: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    xEdit6: TDBNumberEditEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcurrcal_td: Tfrmcurrcal_td;

implementation

uses mainformu, currcalformu;

{$R *.dfm}

procedure Tfrmcurrcal_td.BitBtn1Click(Sender: TObject);
begin
  if frmcurrcal.week52.State=dsedit then frmcurrcal.week52.Post;
end;

procedure Tfrmcurrcal_td.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcurrcal_td:=nil;
end;

procedure Tfrmcurrcal_td.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

end.
