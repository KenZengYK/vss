unit Smpl_Export_EnqueryFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, StdCtrls, Buttons;

type
  Tfrmsmpl_export_enquery = class(TForm)
    qry1: TADOQuery;
    DataSource4: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsmpl_export_enquery: Tfrmsmpl_export_enquery;

implementation

uses mainformu, Smpl_ExportFormu;

{$R *.dfm}

procedure Tfrmsmpl_export_enquery.BitBtn1Click(Sender: TObject);
begin
  if not qry1.fieldbyname('shpno').isnull then begin
    frmsmpl_export.edit1.text:=qry1.fieldbyname('shpno').value;
    frmsmpl_export.showsmpldata(qry1.fieldbyname('shpno').value);
    frmsmpl_export_enquery.close;
  end;
end;

procedure Tfrmsmpl_export_enquery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
  frmsmpl_export_enquery:=nil;
end;

procedure Tfrmsmpl_export_enquery.FormShow(Sender: TObject);
begin
  with qry1 do begin
    close;
    sql.text:='select distinct shpno,exfty from phdb..tbl_smpl_declare';
    open;
  end;
end;

end.
