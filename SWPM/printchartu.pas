unit printchartu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, TeEngine, Series, TeeProcs, Chart,
  DBChart, DBClient;

type
  Tfrmprintchart = class(TForm)
    ClientDataSet1: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprintchart: Tfrmprintchart;

implementation
uses mainformu;
{$R *.DFM}

end.
