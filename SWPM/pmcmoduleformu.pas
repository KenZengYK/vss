unit pmcmoduleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  Tfrmpmcmodule = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpmcmodule: Tfrmpmcmodule;

implementation

{$R *.dfm}

procedure Tfrmpmcmodule.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmpmcmodule:=nil;
end;

end.
