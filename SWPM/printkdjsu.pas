unit printkdjsu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, Db, DBTables, TeeProcs, Chart, DBChart,
  ExtCtrls, DBClient;

type
  Tfrmprintkdjs = class(TForm)
    ClientDataSet1: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprintkdjs: Tfrmprintkdjs;

implementation

uses mainformu;

{$R *.DFM}

end.
