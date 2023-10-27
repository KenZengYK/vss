unit xknydformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, DB, DBClient, StdCtrls, Buttons;

type
  Tfrmxknyd = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxknyd: Tfrmxknyd;

implementation

uses mainformu, ftylearnformu;

{$R *.dfm}

procedure Tfrmxknyd.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmxknyd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxknyd:=nil;
end;

procedure Tfrmxknyd.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_swpm_defeff';
    open;
  end;
end;

procedure Tfrmxknyd.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update tbl_swpm_defeff set ';
  if not query1.fieldbyname('pfeff').isnull then
  str1:=str1+'pfeff='+query1.fieldbyname('pfeff').asstring+','
  else str1:=str1+'pfeff=110,';
  if not query1.fieldbyname('aleff').isnull then
  str1:=str1+'aleff='+query1.fieldbyname('aleff').asstring+','
  else str1:=str1+'aleff=0,';
  if not query1.fieldbyname('eeff').isnull then
  str1:=str1+'eeff='+query1.fieldbyname('eeff').asstring+' '
  else str1:=str1+'eeff=120 ';
  str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

end.
