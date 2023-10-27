unit popcformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, DB, DBClient, StdCtrls, Buttons;

type
  Tfrmpopc = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    tblpopc: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpopc: Tfrmpopc;

implementation

uses mainformu, matmatchu;

{$R *.dfm}

procedure Tfrmpopc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmpopc:=nil;
end;

end.
