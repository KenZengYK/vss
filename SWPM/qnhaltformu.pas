unit qnhaltformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, DB, DBClient, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppViewr, ppPrnabl, ppCtrls,
  ppBands, ppCache, ppVar, ppStrtch, ppMemo, ppParameter;

type
  Tfrmqnhalt = class(TForm)
    Panel1: TPanel;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBMemo2: TDBMemo;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    Label6: TLabel;
    DBText4: TDBText;
    Label7: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    line001: TppLabel;
    ppLabel4: TppLabel;
    project001: TppLabel;
    ppLabel6: TppLabel;
    wo001: TppLabel;
    rwo001: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    qn001: TppLabel;
    ppLabel12: TppLabel;
    qty001: TppLabel;
    ppLine1: TppLine;
    ppLabel14: TppLabel;
    ppMemo1: TppMemo;
    ppLabel15: TppLabel;
    ppMemo2: TppMemo;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmqnhalt: Tfrmqnhalt;

implementation

uses mainformu, worksheet, sellwsformu;

{$R *.dfm}

procedure Tfrmqnhalt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmqnhalt:=nil;
end;

procedure Tfrmqnhalt.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmqnhalt.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='update tbl_qnhalt_notepad set instru=:x1,reason=:x2 where pline=:x3 and seq=:x4';
      if not query1.fieldbyname('instru').isnull then
      params[0].asstring:=query1.fieldbyname('instru').value
      else params[0].asstring:='';
      if not query1.fieldbyname('reason').isnull then
      params[1].asstring:=query1.fieldbyname('reason').value
      else params[1].asstring:='';
      params[2].asstring:=query1.fieldbyname('pline').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  }
  str1:='update tbl_qnhalt_notepad set ';
  if not query1.fieldbyname('instru').isnull then
  str1:=str1+'instru='''+query1.fieldbyname('instru').value+''','
  else str1:=str1+'instru='''',';
  if not query1.fieldbyname('reason').isnull then
  str1:=str1+'reason='''+query1.fieldbyname('reason').value+''' '
  else str1:=str1+'reason='''' ';
  str1:=str1+'where pline='''+query1.FieldByName('pline').value+''' ';
  str1:=str1+'and seq='+query1.FieldByName('seq').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmqnhalt.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmqnhalt.BitBtn2Click(Sender: TObject);
begin
  line001.Caption:=worksheet1.tblshedule.fieldbyname('pline').value;
  project001.Caption:=worksheet1.tblshedule.fieldbyname('j_no').value;
  wo001.Caption:=worksheet1.tblshedule.fieldbyname('j2_job').value;
  rwo001.Caption:=worksheet1.tblshedule.fieldbyname('rwo').value;
  qn001.Caption:=worksheet1.tblshedule.fieldbyname('fccs').value;
  qty001.Caption:=worksheet1.tblshedule.fieldbyname('scqty').asstring;
  //ppmemo1.Lines.clear;
  ppmemo1.lines:=dbmemo1.Lines;
  //ppmemo2.Lines.clear;
  ppmemo2.Lines:=dbmemo2.Lines;
  ppReport1.Print;
end;

end.
