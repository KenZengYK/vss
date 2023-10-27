unit pdninv_descriptionformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, DB;

type
  Tfrmpdninv_description = class(TForm)
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdninv_description: Tfrmpdninv_description;

implementation

uses pdninvoiceformu, pdninvoice_lardformu, etam_shipmarksformu;

{$R *.dfm}

procedure Tfrmpdninv_description.BitBtn1Click(Sender: TObject);
begin
  if dbmemo1.DataSource.DataSet.State=dsedit then dbmemo1.DataSource.DataSet.Post;
  frmpdninv_description.Close;
end;

procedure Tfrmpdninv_description.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdninv_description:=nil;
end;

procedure Tfrmpdninv_description.SpeedButton1Click(Sender: TObject);
begin
  if frmetam_shipmarks=nil then frmetam_shipmarks:=tfrmetam_shipmarks.create(nil);
  frmetam_shipmarks.show;
end;

end.
