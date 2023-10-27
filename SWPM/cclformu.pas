unit cclformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, Buttons, Db, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppViewr, ppParameter, siComp;

type
  Tfrmccl = class(TForm)
    Label7: TLabel;
    DBNumberEditEh1: TDBNumberEditEh;
    Label8: TLabel;
    DBNumberEditEh2: TDBNumberEditEh;
    Label9: TLabel;
    DBNumberEditEh3: TDBNumberEditEh;
    Label10: TLabel;
    DBNumberEditEh4: TDBNumberEditEh;
    Label11: TLabel;
    DBNumberEditEh5: TDBNumberEditEh;
    Label12: TLabel;
    DBNumberEditEh6: TDBNumberEditEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    a02: TppLabel;
    ppLabel3: TppLabel;
    b02: TppLabel;
    ppLabel4: TppLabel;
    c02: TppLabel;
    ppLabel5: TppLabel;
    d02: TppLabel;
    ppLabel7: TppLabel;
    e02: TppLabel;
    ppLabel9: TppLabel;
    f02: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    tplant01: TppLabel;
    ppLabel15: TppLabel;
    tshop01: TppLabel;
    ppLabel16: TppLabel;
    line01: TppLabel;
    ppLabel17: TppLabel;
    dt01: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    Label13: TLabel;
    Label14: TLabel;
    DBNumberEditEh7: TDBNumberEditEh;
    DBNumberEditEh8: TDBNumberEditEh;
    ppLabel18: TppLabel;
    g02: TppLabel;
    ppLabel20: TppLabel;
    h02: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    Bevel1: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    siLang1: TsiLang;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmccl: Tfrmccl;

implementation

uses mainformu, currcalformu;

{$R *.dfm}

procedure Tfrmccl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmccl:=nil;
end;

procedure Tfrmccl.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmccl.BitBtn1Click(Sender: TObject);
begin
  if frmcurrcal.week52.State=dsedit then frmcurrcal.week52.Post;
end;

procedure Tfrmccl.BitBtn2Click(Sender: TObject);
begin
  bitbtn1click(self);
  tplant01.Caption:=frmcurrcal.week52.fieldbyname('tplant').value;
  tshop01.Caption:=frmcurrcal.week52.fieldbyname('tshop').value;
  line01.Caption:=frmcurrcal.week52.fieldbyname('line').value;
  dt01.Caption:=formatdatetime('yyyy/MM/dd',frmcurrcal.week52.fieldbyname('date1').value);
  a02.Caption:=formatdatetime('0.0',frmcurrcal.week52.fieldbyname('a2').value);
  b02.Caption:=formatdatetime('0.0',frmcurrcal.week52.fieldbyname('b2').value);
  c02.Caption:=formatdatetime('0.0',frmcurrcal.week52.fieldbyname('c2').value);
  d02.Caption:=formatdatetime('0.0',frmcurrcal.week52.fieldbyname('d2').value);
  e02.Caption:=formatdatetime('0.0',frmcurrcal.week52.fieldbyname('e2').value);
  f02.Caption:=formatdatetime('0.0',frmcurrcal.week52.fieldbyname('f2').value);
  g02.Caption:=formatdatetime('0.0',frmcurrcal.week52.fieldbyname('g2').value);
  h02.Caption:=formatdatetime('0.0',frmcurrcal.week52.fieldbyname('h2').value);
  ppReport1.Print;
end;

procedure Tfrmccl.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
