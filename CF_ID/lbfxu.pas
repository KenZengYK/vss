unit lbfxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGridEh, Db, DBTables, Buttons, ppCache,
  ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppBands, ppPrnabl, ppCtrls, ppViewr, GridsEh;

type
  Tfrmlbfx = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query2: TQuery;
    tc: TSpeedButton;
    dy: TSpeedButton;
    ppReport1: TppReport;
    ppBDEPipeline1: TppBDEPipeline;
    Query3: TQuery;
    DataSource1: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tcClick(Sender: TObject);
    procedure dyClick(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlbfx: Tfrmlbfx;

implementation
uses mainu, DMfcu;
{$R *.DFM}

procedure Tfrmlbfx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmmain.enabled:=true;
end;

procedure Tfrmlbfx.FormShow(Sender: TObject);
begin
  {query1.close;
  query1.sql.clear;
  query1.sql.add('delete from lbjh4');
  query1.execsql;
  query1.close;
  query1.sql.clear;
  query1.sql.add('delete from lbjh3');
  query1.execsql;
  query1.close;
  query1.sql.clear;
  query1.sql.add('select prjno,sum(mjs) as mjs,sum(scs) as scs,sum(cs) as cs from lbjh2 where prjno=:gch group by prjno');
  query1.prepare;
  query1.params[0].asstring:=dmfcjh.lbjh1.fieldbyname('prjno').value;
  query1.open;
  if query1.recordcount>0 then
  begin
    dmfcjh.lbjh3.append;
    dmfcjh.lbjh3.fieldbyname('prjno').value:=query1.fieldbyname('prjno').value;
    dmfcjh.lbjh3.fieldbyname('mjs').value:=query1.fieldbyname('mjs').value;
    dmfcjh.lbjh3.fieldbyname('scs').value:=query1.fieldbyname('scs').value;
    dmfcjh.lbjh3.fieldbyname('cs').value:=query1.fieldbyname('cs').value;
    dmfcjh.lbjh3.fieldbyname('percent').asfloat:=100*dmfcjh.lbjh3.fieldbyname('cs').asinteger/dmfcjh.lbjh3.fieldbyname('mjs').asinteger;
    dmfcjh.lbjh3.post;
  end;
  query2.close;
  query2.sql.clear;
  query2.sql.add('select * from lbjh2 where prjno=:gch');
  query2.prepare;
  query2.params[0].asstring:=dmfcjh.lbjh1.fieldbyname('prjno').value;
  query2.open;
  if query2.recordcount>0 then
  begin
    query2.first;
    while not query2.eof do
    begin
      dmfcjh.lbjh4.append;
      dmfcjh.lbjh4.fieldbyname('prjno').value:=query2.fieldbyname('prjno').value;
      dmfcjh.lbjh4.fieldbyname('xh').value:=query2.fieldbyname('xh').value;
      dmfcjh.lbjh4.fieldbyname('zdh').value:=query2.fieldbyname('zdh').value;
      dmfcjh.lbjh4.fieldbyname('cm').value:=query2.fieldbyname('cm').value;
      dmfcjh.lbjh4.fieldbyname('mjs').value:=query2.fieldbyname('mjs').value;
      dmfcjh.lbjh4.fieldbyname('scs').value:=query2.fieldbyname('scs').value;
      dmfcjh.lbjh4.fieldbyname('cs').value:=query2.fieldbyname('cs').value;
      if dmfcjh.lbjh4.fieldbyname('mjs').asinteger>0 then
      dmfcjh.lbjh4.fieldbyname('percent').asfloat:=100*dmfcjh.lbjh4.fieldbyname('cs').asinteger/dmfcjh.lbjh4.fieldbyname('mjs').asinteger
      else dmfcjh.lbjh4.fieldbyname('percent').asfloat:=0.00;
      dmfcjh.lbjh4.post;
      query2.next;
    end;
  end;
  query1.close;
  query1.sql.clear;
  query1.sql.add('delete from lbjh4 where mjs=0');
  query1.execsql;
  dmfcjh.lbjh4.refresh;
  dmfcjh.lbjh4.first;}
end;

procedure Tfrmlbfx.tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlbfx.dyClick(Sender: TObject);
begin
  query3.close;
  query3.sql.clear;
  query3.sql.add('select distinct lbjh3.*,lbjh4.*,fcjy1.scys from fcjy1,lbjh3,lbjh4 ');
  query3.sql.add('where lbjh4.prjno=lbjh3.prjno and lbjh3.prjno=fcjy1.prjno and fcjy1.prjno=:gch');
  query3.sql.add(' order by lbjh3.prjno,lbjh4.xh,lbjh4.id');
  query3.prepare;
  query3.params[0].asstring:=dmfcjh.fcjy1.fieldbyname('prjno').value;
  query3.open;
  if query3.recordcount>0 then
  begin
    ppreport1.print;
  end;
end;

procedure Tfrmlbfx.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

end.
