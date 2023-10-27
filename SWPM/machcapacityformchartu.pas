unit machcapacityformchartu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart;

type
  TFrmmachCapacity_chart = class(TForm)
    DBChart1: TDBChart;
    Series1: TPieSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmmachCapacity_chart: TFrmmachCapacity_chart;

implementation

uses machcapacityformu;

{$R *.DFM}

end.
