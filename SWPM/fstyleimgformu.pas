unit fstyleimgformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  ppViewr, ppParameter;

type
  Tfrmfstyleimg = class(TForm)
    Query7: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel50: TppLabel;
    ppLabel80: TppLabel;
    tplant003: TppLabel;
    dt001: TppLabel;
    date003: TppLabel;
    ppLabel118: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel119: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppShape16: TppShape;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel100: TppLabel;
    ppLabel89: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText16: TppDBText;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape17: TppShape;
    ttl001: TppLabel;
    ppShape21: TppShape;
    ppMemo5: TppMemo;
    ppDBText50: TppDBText;
    ppImage4: TppImage;
    ppDBText45: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppImage3: TppImage;
    ppImage5: TppImage;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppShape1: TppShape;
    Query2: TClientDataSet;
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfstyleimg: Tfrmfstyleimg;

implementation

uses mainformu, achievingformu;

{$R *.dfm}

procedure Tfrmfstyleimg.ppDetailBand4BeforePrint(Sender: TObject);
begin
  ppimage1.Picture:=nil;ppimage2.Picture:=nil;ppimage3.Picture:=nil;ppimage4.Picture:=nil;ppimage5.Picture:=nil;
  try
    if not query7.fieldbyname('chartp').isnull then begin
      if fileexists(query7.fieldbyname('chartp').value) then ppimage4.Picture.LoadFromFile(query7.fieldbyname('chartp').value)
      else ppimage4.Picture:=nil;
    end else ppimage4.Picture:=nil;
    if not query7.fieldbyname('colimg1').isnull then begin
      if fileexists(query7.fieldbyname('colimg1').value) then ppimage1.Picture.LoadFromFile(query7.fieldbyname('colimg1').value)
      else ppimage1.Picture:=nil;
    end else ppimage1.Picture:=nil;
    if not query7.fieldbyname('colimg2').isnull then begin
      if fileexists(query7.fieldbyname('colimg2').value) then ppimage2.Picture.LoadFromFile(query7.fieldbyname('colimg2').value)
      else ppimage2.Picture:=nil;
    end else ppimage2.Picture:=nil;
    if not query7.fieldbyname('colimg3').isnull then begin
      if fileexists(query7.fieldbyname('colimg3').value) then ppimage3.Picture.LoadFromFile(query7.fieldbyname('colimg3').value)
      else ppimage3.Picture:=nil;
    end else ppimage3.Picture:=nil;
    if not query7.fieldbyname('colimg4').isnull then begin
      if fileexists(query7.fieldbyname('colimg4').value) then ppimage5.Picture.LoadFromFile(query7.fieldbyname('colimg4').value)
      else ppimage5.Picture:=nil;
    end else ppimage5.Picture:=nil;
  except
  end;
end;

procedure Tfrmfstyleimg.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct pline) as s3,count(distinct acol) as s4,count(distinct cust) as s5 from tbl_op_styleimg where tm=:x1';
    params[0].asdatetime:=query7.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ttl001.Caption:='TTL      # of cust style:  '+fieldbyname('s1').asstring+'     # of clr:  '+fieldbyname('s4').asstring+'     # of line:  '+fieldbyname('s3').asstring+'     # of cust:  '+fieldbyname('s5').asstring+'     ';
    end else ttl001.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(b.ttqty-b.tfqty) as s5 from tbl_op_styleimg a,tbl_lwo b where a.pline=b.pline and a.seq=b.seq and a.tm=:x1';
    params[0].asdatetime:=query7.fieldbyname('tm').value;
    open;
    if not fieldbyname('s5').isnull then ttl001.Caption:=ttl001.Caption+'WIP Quantity:  '+fieldbyname('s5').asstring;
  end;
end;

procedure Tfrmfstyleimg.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 