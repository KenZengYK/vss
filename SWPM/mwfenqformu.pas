unit mwfenqformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGridEh, Buttons, DB, DBClient;

type
  Tfrmmwfenq = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmwfenq: Tfrmmwfenq;

implementation

uses mainformu, mwfformu;

{$R *.dfm}

procedure Tfrmmwfenq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmwfenq:=nil;
end;

procedure Tfrmmwfenq.Edit1Change(Sender: TObject);
begin
  query1.Locate('pline',edit1.text,[lopartialkey]);
end;

procedure Tfrmmwfenq.BitBtn1Click(Sender: TObject);
begin
  if not query1.fieldbyname('pline').isnull then begin
    frmmwf.Edit1.text:=query1.fieldbyname('pline').value;
    with frmmwf.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select * from tblmwf where pline=:x1';
      params[0].asstring:=query1.fieldbyname('pline').value;
      open;
    end;
    frmmwfenq.Close;
  end;
end;

end.
