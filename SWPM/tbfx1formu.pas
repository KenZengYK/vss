unit tbfx1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, TeeProcs, Chart, DbChart, DB,
  DBClient, ExtCtrls;

type
  Tfrmtbfx1 = class(TForm)
    Query1: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtbfx1: Tfrmtbfx1;

implementation

uses mainformu;

{$R *.dfm}

end.
