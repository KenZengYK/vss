unit chartu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, TeeProcs, TeEngine, Chart, DBChart, Series,
  StdCtrls, Buttons, DBClient;

type
  Tfrmchart = class(TForm)
    DBChart1: TDBChart;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Series1: TLineSeries;
    ClientDataSet1: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchart: Tfrmchart;

implementation

uses mainformu, printchartu;

{$R *.DFM}

procedure Tfrmchart.BitBtn1Click(Sender: TObject);
begin
  if dbchart1.Page>1 then dbchart1.page:=dbchart1.page-1
  else dbchart1.page:=1;
end;

procedure Tfrmchart.BitBtn2Click(Sender: TObject);
begin
  if dbchart1.Page<dbchart1.NumPages then dbchart1.page:=dbchart1.page+1
  else dbchart1.page:=dbchart1.numpages;
end;

procedure Tfrmchart.BitBtn3Click(Sender: TObject);
begin
  if frmprintchart=nil then frmprintchart:=tfrmprintchart.create(self);
  with frmprintchart.clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct pline,max(cfksrq) as ksrq from tblshedule group by pline order by pline';
    open;
  end;
  //frmprintchart.quickrep1.preview;
end;

procedure Tfrmchart.BitBtn4Click(Sender: TObject);
begin
  close;
end;

end.
