unit sublineformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGridEh, ExtCtrls, StdCtrls, Buttons;

type
  Tfrmchildline = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchildline: Tfrmchildline;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmchildline.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmchildline:=nil;
end;

procedure Tfrmchildline.Query1AfterOpen(DataSet: TDataSet);
begin
  (query1.fieldbyname('lstrs') as tfloatfield).DisplayFormat:='#0.00;;0.0';
  (query1.fieldbyname('phiszjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (query1.fieldbyname('zjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (query1.fieldbyname('zktd') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (query1.fieldbyname('sclhjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (query1.fieldbyname('shjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (query1.fieldbyname('qyjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (query1.fieldbyname('zhjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (query1.fieldbyname('jxjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (query1.fieldbyname('tmu') as tfloatfield).displayformat:='#0.0000;;0.0000';
  (query1.fieldbyname('jhfyl') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (query1.fieldbyname('jxjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
end;

procedure Tfrmchildline.BitBtn5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmchildline.BitBtn2Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmchildline.Query1AfterPost(DataSet: TDataSet);
begin
  //
end;

end.
