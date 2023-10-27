unit mjfdu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGridEh, Db, DBTables, Buttons, ppCtrls, ppPrnabl,
  ppClass, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppDBBDE, ppViewr, DBClient, GridsEh, ppParameter;

type
  Tfrmmjfd = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn2: TBitBtn;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    query2: TClientDataSet;
    query1: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmjfd: Tfrmmjfd;

implementation
uses dlu;
{$R *.DFM}

procedure Tfrmmjfd.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmjfd.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct wl from lbjh3';
    open;
    first;
    while not eof do begin
      if not fieldbyname('wl').isnull then
        combobox1.items.add(fieldbyname('wl').value);
      next;
    end;
  end;
  combobox1.text:='';
  query2.active:=false;
end;

procedure Tfrmmjfd.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'wl',ptinput);
      commandtext:='select distinct a.wl,a.sh,b.pjmjfd,b.ysmjfd from lbjh2 a,lbjh1 b where b.prjno=a.prjno and b.xh=a.xh and b.wl=a.wl and a.wl=:wl and b.pjmjfd>0.00';
      params[0].asstring:=combobox1.text;
      open;
    end;
  end;
end;

procedure Tfrmmjfd.BitBtn1Click(Sender: TObject);
begin
  if query2.recordcount>0 then ppreport1.print;
end;

procedure Tfrmmjfd.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

end.
