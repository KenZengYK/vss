unit pdninvoice_monoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppMemo, ppStrtch, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, ppViewr,
  ppParameter;

type
  Tfrmpdninvoice_mono = class(TForm)
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppShape2: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape3: TppShape;
    ppDBText11: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel27: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    qty001: TppDBText;
    unit001: TppDBText;
    upric001: TppDBText;
    ppLabel32: TppLabel;
    ppDBText27: TppDBText;
    memo003: TppMemo;
    wo0001: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppDBText26: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ttl001: TppLabel;
    ttl002: TppLabel;
    ppDBMemo5: TppDBMemo;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdninvoice_mono: Tfrmpdninvoice_mono;

implementation

uses mainformu, pdninvoiceformu;

{$R *.dfm}

procedure Tfrmpdninvoice_mono.ppDetailBand1BeforePrint(Sender: TObject);
var
  job1:string;
begin
  job1:='';
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct j2_job from tbl_pdn_inv1 '
                +'where tplant='''+frmpdninvoice.query1.fieldbyname('tplant').value+''' and inv='''+frmpdninvoice.query1.fieldbyname('inv').value+''' and cstyle='''+query5.fieldbyname('cstyle').value+'''';
    open;
    first;
    while not eof do begin
      if job1>'' then job1:=job1+','+fieldbyname('j2_job').value
      else job1:=fieldbyname('j2_job').value;
      application.ProcessMessages;
      next;
    end;
  end;
  wo0001.Caption:=job1;

  if not query5.fieldbyname('cert').isnull then begin
    if query5.fieldbyname('cert').value>'' then
    pplabel26.Visible:=true
    else pplabel26.Visible:=false;
  end else pplabel26.Visible:=false;
  if not query5.fieldbyname('qty1').isnull then begin
    if query5.fieldbyname('qty1').value>0 then begin
      qty001.Visible:=true;
      unit001.Visible:=true;
      upric001.Visible:=true;
    end else begin
      qty001.Visible:=false;
      unit001.Visible:=false;
      upric001.Visible:=false;
    end;
  end else begin
    qty001.Visible:=false;
    unit001.Visible:=false;
    upric001.Visible:=false;
  end;
  memo003.Lines.clear;
  if not query5.fieldbyname('remarks').isnull then memo003.Lines.Add(query5.fieldbyname('remarks').value);
end;

procedure Tfrmpdninvoice_mono.ppSummaryBand1BeforePrint(Sender: TObject);
var
  s:string;
  s1,s2,box:integer;
  amt:double;
begin
  with query4 do begin
    close;
    params.clear;
    commandtext:='select sum(b.box) as x1,sum(b.amt) as x2 from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and a.tplant=b.tplant and a.inv='''+frmpdninvoice.query1.fieldbyname('inv').value+''' and a.tplant='''+frmpdninvoice.query1.fieldbyname('tplant').value+''' order by b.xh';
    open;
    if not fieldbyname('x1').isnull then box:=fieldbyname('x1').value else box:=0;
    if not fieldbyname('x2').isnull then amt:=fieldbyname('x2').value else amt:=0;
  end;
  ttl001.Caption:=frmpdninvoice.convertnumeric(box)+' ('+inttostr(box)+') CARTONS ONLY***';
  s:=formatfloat('#0.00',amt);
  s1:=strtoint(copy(s,1,length(s)-3));
  s2:=strtoint(copy(s,length(s)-1,2));
  ttl002.Caption:='SAY TOTAL '+query5.fieldbyname('curr').value+' '+frmpdninvoice.convertnumeric(s1);
  if s2>0 then ttl002.Caption:=ttl002.Caption+' AND CENTS '+frmpdninvoice.convertnumeric(s2)+' ONLY***'
  else ttl002.Caption:=ttl002.Caption+' ONLY***';
  if not query5.fieldbyname('qty1').isnull then begin
    if query5.fieldbyname('qty1').value>0 then begin
      ppDBCalc3.Visible:=true;
      ppDBCalc2.Visible:=false;
    end else begin
      ppDBCalc2.Visible:=true;
      ppDBCalc3.Visible:=false;
    end;
  end else begin
    ppDBCalc2.Visible:=true;
    ppDBCalc3.Visible:=false;
  end;
end;

procedure Tfrmpdninvoice_mono.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure Tfrmpdninvoice_mono.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdninvoice_mono:=nil;
end;

end.
 