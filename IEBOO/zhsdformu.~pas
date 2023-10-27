unit zhsdformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, DB, DBClient, StdCtrls, Buttons;

type
  Tfrmzhsd = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1gseq: TIntegerField;
    Query1gcode: TStringField;
    Query1xz01: TBooleanField;
    Query1xz02: TBooleanField;
    Query1xz03: TBooleanField;
    Query1xz04: TBooleanField;
    Query1xz05: TBooleanField;
    Query1gname: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzhsd: Tfrmzhsd;

implementation

uses dlu, scgxu;

{$R *.dfm}

procedure Tfrmzhsd.Query1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmzhsd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmzhsd:=nil;
end;

procedure Tfrmzhsd.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

end.
 