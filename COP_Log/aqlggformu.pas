unit aqlggformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh;

type
  Tfrmaqlgg = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaqlgg: Tfrmaqlgg;

implementation

uses aqlmainformu;

{$R *.dfm}

end.
