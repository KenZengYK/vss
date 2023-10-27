unit chcxformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, StdCtrls, Buttons, DB, DBClient,
  GridsEh;

type
  Tfrmchcx = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchcx: Tfrmchcx;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmchcx.BitBtn1Click(Sender: TObject);
begin
  with query1 do begin
    close;
    commandtext:='select * from tblexfty';
    if edit1.text>'' then commandtext:=commandtext+' where j_no like '''+edit1.text+'%''';
    commandtext:=commandtext+' order by j_no,j2_job,acol,seq';
    open;
  end;
end;

procedure Tfrmchcx.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then bitbtn1click(self);
end;

procedure Tfrmchcx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmchcx:=nil;
end;

end.
