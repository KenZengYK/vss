unit kdfxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, TeeProcs, Chart, DBChart, ExtCtrls, Db, DBTables,
  Buttons, DBClient;

type
  Tfrmkdfx = class(TForm)
    Panel1: TPanel;
    DBChart1: TDBChart;
    Series1: TFastLineSeries;
    Panel2: TPanel;
    DBChart2: TDBChart;
    FastLineSeries1: TFastLineSeries;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ClientDataSet1: TClientDataSet;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmkdfx: Tfrmkdfx;

implementation

uses mainformu, printkdjsu;

{$R *.DFM}

procedure Tfrmkdfx.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmkdfx.SpeedButton1Click(Sender: TObject);
begin
  if frmprintkdjs=nil then frmprintkdjs:=tfrmprintkdjs.create(self);
  frmprintkdjs.clientdataset1.close;
  frmprintkdjs.clientdataset1.open;
  //frmprintkdjs.quickrep1.preview;
end;

end.
