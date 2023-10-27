unit timeeffformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, Spin, DB, DBClient,
  DateUtils, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppParameter, ppVar, ppViewr;

type
  Tfrmtimeeff = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn4: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText4: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText5: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText6: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText7: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText10: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText11: TppDBText;
    ppShape2: TppShape;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel30: TppLabel;
    ppLine21: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine7: TppLine;
    ppShape1: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppLabel33: TppLabel;
    ppLine25: TppLine;
    ppDBText14: TppDBText;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure QuerySHRSChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtimeeff: Tfrmtimeeff;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmtimeeff.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmtimeeff.BitBtn2Click(Sender: TObject);
begin
  if not query1.FieldByName('tplant').IsNull then ppReport1.Print;  
end;

procedure Tfrmtimeeff.BitBtn3Click(Sender: TObject);
var
  dt1,dt2,dt3,dt4:tdatetime;
  y,m,d:word;
begin
  screen.Cursor:=crSQLWait;
  try
    decodedate(date,y,m,d);
    if m=1 then begin
      dt3:=encodedate(y-1,12,1);
      dt4:=encodedate(y-1,12,31);
    end else begin
      dt3:=encodedate(y,m-1,1);
      dt4:=encodedate(y,m,1)-1;
    end;
    dt1:=encodedate(spinedit1.Value,spinedit2.Value,1);
    if spinedit4.Value=12 then dt2:=encodedate(spinedit3.Value,12,31)
    else dt2:=encodedate(spinedit3.Value,spinedit4.Value+1,1)-1;
    with query2 do begin
      close;
      params.Clear;
      params.CreateParam(ftstring,'x1',ptinput);
      params.CreateParam(ftdate,'x2',ptinput);
      params.CreateParam(ftdate,'x3',ptinput);
      commandtext:='execute procedure sp_gentmeff(:x1,:x2,:x3)';
      params[0].AsString:=combobox1.Text;
      params[1].AsDate:=dt3;//dt1;
      params[2].AsDate:=dt4;//dt2;
      execute;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftstring,'x1',ptinput);
      params.CreateParam(ftdate,'x2',ptinput);
      params.CreateParam(ftdate,'x3',ptinput);
      commandtext:='select * from tbl_tmeff a where tplant=:x1 and dt1>=:x2 and dt2<=:x3';
      params[0].AsString:=combobox1.Text;
      params[1].AsDate:=dt1;
      params[2].AsDate:=dt2;
      open;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmtimeeff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmtimeeff:=nil;
end;

procedure Tfrmtimeeff.FormShow(Sender: TObject);
var
  y,m,d:word;
begin
  decodedate(date,y,m,d);
  if m=1 then begin
    spinedit1.Value:=y-1;
    spinedit2.Value:=1;
    spinedit3.Value:=y-1;
    spinedit4.Value:=12;
  end else begin
    spinedit1.Value:=y;
    spinedit2.Value:=1;
    spinedit3.Value:=y;
    spinedit4.Value:=m-1;
  end;
end;

procedure Tfrmtimeeff.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtimeeff.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('shrs').onchange:=queryshrschange;
end;

procedure Tfrmtimeeff.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update tbl_tmeff set ';
  if not query1.fieldbyname('shrs').isnull then
  str1:=str1+'shrs='+query1.FieldByName('shrs').AsString+','
  else str1:=str1+'shrs=0,';
  str1:=str1+'tmeff='+query1.FieldByName('tmeff').AsString+',';
  str1:=str1+'diff='+query1.FieldByName('diff').AsString+' ';
  str1:=str1+'where tplant='''+query1.FieldByName('tplant').value+''' ';
  str1:=str1+'and yr='+query1.FieldByName('yr').asstring+' ';
  str1:=str1+'and mn='+query1.FieldByName('mn').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmtimeeff.QuerySHRSChange(Sender: TField);
var
  shrs:double;
begin
  if not query1.fieldbyname('shrs').isnull then
  shrs:=query1.fieldbyname('shrs').value else shrs:=0;
  if shrs>0 then begin
    query1.fieldbyname('tmeff').value:=query1.fieldbyname('tsah').value*100.00/shrs;
    query1.fieldbyname('diff').value:=query1.fieldbyname('tsah').value*100.00/shrs-query1.fieldbyname('eff').value;
  end else begin
    query1.fieldbyname('tmeff').value:=0;
    query1.fieldbyname('diff').value:=0;
  end;
end;

end.
