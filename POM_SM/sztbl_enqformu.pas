unit sztbl_enqformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBClient;

type
  Tfrm_sztbl_enq = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    Query1: TClientDataSet;
    ds1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sztbl_enq: Tfrm_sztbl_enq;

implementation

uses mainu, libraryu;

{$R *.dfm}

procedure Tfrm_sztbl_enq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frm_sztbl_enq:=nil;
end;

end.
