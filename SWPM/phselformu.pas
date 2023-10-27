unit phselformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons, DB, DBClient;

type
  Tfrmphsel = class(TForm)
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmphsel: Tfrmphsel;

implementation

uses mainformu, ftylearnformu;

{$R *.dfm}

procedure Tfrmphsel.BitBtn1Click(Sender: TObject);
begin
  with frmftylearn.Query1 do begin
    edit;
    fieldbyname('flr').value:=spinedit1.Value;
    fieldbyname('tlr').value:=spinedit2.Value;
    post;
  end;
  frmphsel.Close;
end;

procedure Tfrmphsel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmphsel:=nil;
end;

end.
