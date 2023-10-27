unit psmatform1u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGridEh, StdCtrls, Buttons;

type
  Tfrmpsmat1 = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpsmat1: Tfrmpsmat1;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmpsmat1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmpsmat1:=nil;
end;

procedure Tfrmpsmat1.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
