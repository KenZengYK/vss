unit selpkoptformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmselpkopt = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselpkopt: Tfrmselpkopt;

implementation

uses mainformu, packoptformu;

{$R *.dfm}

procedure Tfrmselpkopt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmselpkopt:=nil;
end;

procedure Tfrmselpkopt.BitBtn1Click(Sender: TObject);
begin
  if not query1.fieldbyname('optc').isnull then begin
    with frmpackopt.Query3 do begin
      edit;
      fieldbyname('optc').value:=query1.fieldbyname('optc').value;
      if not query1.fieldbyname('optd').isnull then
      fieldbyname('optd').value:=query1.fieldbyname('optd').value;
      if not query1.fieldbyname('sam').isnull then
      fieldbyname('sam').value:=query1.fieldbyname('sam').value;
      if not query1.fieldbyname('sah').isnull then
      fieldbyname('sah').value:=query1.fieldbyname('sah').value;
      if not query1.fieldbyname('rt').isnull then
      fieldbyname('rt').value:=query1.fieldbyname('rt').value;
      if not query1.fieldbyname('marks').isnull then
      fieldbyname('marks').value:=query1.fieldbyname('marks').value;
    end;
  end;
end;

end.
