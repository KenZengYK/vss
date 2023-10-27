unit export_percentformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB, ADODB;

type
  Tfrmexport_percent = class(TForm)
    AdoDataSet1: TADODataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdoDataSet1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmexport_percent: Tfrmexport_percent;

implementation

uses mainformu, shpadvice2formu;

{$R *.dfm}

procedure Tfrmexport_percent.AdoDataSet1NewRecord(DataSet: TDataSet);
begin
  adodataset1.fieldbyname('pcent').value:=100;
  adodataset1.fieldbyname('efft').value:=false;
end;

procedure Tfrmexport_percent.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.setfocus;
  adodataset1.append;
end;

procedure Tfrmexport_percent.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    adodataset1.delete;
  end;
end;

procedure Tfrmexport_percent.BitBtn3Click(Sender: TObject);
begin
  if (adodataset1.state=dsedit) or (adodataset1.state=dsinsert) then adodataset1.post;
end;

procedure Tfrmexport_percent.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmexport_percent:=nil;
end;

procedure Tfrmexport_percent.FormShow(Sender: TObject);
begin
  with adodataset1 do begin
    close;
    commandtext:='select * from phdb..tbl_export_percent_new';
    open;
  end;
end;

end.
