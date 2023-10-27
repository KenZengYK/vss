unit skureportformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  Tfrmskureport = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmskureport: Tfrmskureport;

implementation

uses mainformu, exchangeformu;

{$R *.dfm}

procedure Tfrmskureport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmskureport:=nil;
end;

end.
