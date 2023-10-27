unit iewsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, StdCtrls, Buttons;

type
  Tfrmie_iews = class(TForm)
    Query1: TClientDataSet;
    Query5: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmie_iews: Tfrmie_iews;

implementation

uses dlu, scgxu;

{$R *.dfm}

procedure Tfrmie_iews.BitBtn1Click(Sender: TObject);
begin
  if not query1.fieldbyname('zb').isnull then begin
    frmscgx.zygx1.Edit;
    frmscgx.zygx1.fieldbyname('zb').value:=query1.fieldbyname('zb').value;
    frmscgx.zygx1.fieldbyname('zbdesc_en').value:=query1.fieldbyname('zbdesc_en').value;
    frmscgx.zygx1.Post;
  end;
  close;
end;

procedure Tfrmie_iews.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmie_iews:=nil;
end;

end.
