unit rwoftystartdateformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DBCtrls, Mask, rxToolEdit,
  RXDBCtrl, Buttons, DBCtrlsEh;

type
  Tfrmrwoftystartdate = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    //DBDateEdit1: TDBDateEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBDateEdit1: TDBDateTimeEditEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrwoftystartdate: Tfrmrwoftystartdate;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmrwoftystartdate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmrwoftystartdate:=nil;
end;

end.
