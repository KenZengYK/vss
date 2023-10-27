unit pack_actualformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons;

type
  Tfrmpack_actual = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpack_actual: Tfrmpack_actual;

implementation

{$R *.dfm}

procedure Tfrmpack_actual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpack_actual:=nil;
end;

end.
