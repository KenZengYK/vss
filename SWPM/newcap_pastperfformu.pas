unit newcap_pastperfformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, Mask, rxToolEdit, DB,
  DBClient, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppParameter;

type
  Tfrmnewcap_pastperf = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    lbln12: TLabel;
    lbln09: TLabel;
    lbln06: TLabel;
    lbln03: TLabel;
    lbln01: TLabel;
    lblc12: TLabel;
    lblc09: TLabel;
    lblc06: TLabel;
    lblc03: TLabel;
    lblc01: TLabel;
    lblcn12: TLabel;
    lblcn09: TLabel;
    lblcn06: TLabel;
    lblcn03: TLabel;
    lblcn01: TLabel;
    Label21: TLabel;
    lblwf3: TLabel;
    Label23: TLabel;
    lblwf6: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    BitBtn2: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel3: TppLabel;
    backdt001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    lbln001: TppLabel;
    ppLabel6: TppLabel;
    lbln002: TppLabel;
    ppLabel8: TppLabel;
    lbln003: TppLabel;
    ppLabel10: TppLabel;
    lbln004: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    lblc001: TppLabel;
    ppLabel12: TppLabel;
    lblc002: TppLabel;
    ppLabel14: TppLabel;
    lblc003: TppLabel;
    ppLabel16: TppLabel;
    lblc004: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    lblcn001: TppLabel;
    ppLabel17: TppLabel;
    lblcn002: TppLabel;
    ppLabel19: TppLabel;
    lblcn003: TppLabel;
    ppLabel21: TppLabel;
    lblcn004: TppLabel;
    lblmn001: TppLabel;
    ppLabel15: TppLabel;
    lbllb3001: TppLabel;
    ppLabel18: TppLabel;
    lbllb6001: TppLabel;
    ppLabel20: TppLabel;
    lbllb36001: TppLabel;
    ppLabel22: TppLabel;
    lbln005: TppLabel;
    ppLabel23: TppLabel;
    lblc005: TppLabel;
    ppLabel24: TppLabel;
    lblcn005: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppShape4: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    lbllb3002: TppLabel;
    lbllb36002: TppLabel;
    lbllb6002: TppLabel;
    lbllb3003: TppLabel;
    lbllb3004: TppLabel;
    lbllb36003: TppLabel;
    lbllb36004: TppLabel;
    lbllb6003: TppLabel;
    lbllb6004: TppLabel;
    lbllb3005: TppLabel;
    lbllb36005: TppLabel;
    lbllb6005: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    lbllb30001: TppLabel;
    lbllb360001: TppLabel;
    lbllb60001: TppLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    lblfwf3: TLabel;
    Label43: TLabel;
    lblfwf6: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    lblewf3: TLabel;
    Label49: TLabel;
    lblewf6: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_pastperf: Tfrmnewcap_pastperf;

implementation

uses mainformu, newcap_ref1formu;

{$R *.dfm}

procedure Tfrmnewcap_pastperf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_pastperf:=nil;
end;

procedure Tfrmnewcap_pastperf.BitBtn1Click(Sender: TObject);
begin
  if lbln01.Caption>'' then begin
    if edit1.text='GG' then fty001.Caption:='GG (RX) '
    else fty001.Caption:=edit1.text;
    //fty001.Caption:=edit1.Text;
    backdt001.Caption:=formatdatetime('yyyy-MM-dd',dateedit1.Date);
    lbln001.Caption:=lbln12.Caption;
    lbln002.Caption:=lbln09.Caption;
    lbln003.Caption:=lbln06.Caption;
    lbln004.Caption:=lbln03.Caption;
    lbln005.Caption:=lbln01.Caption;
    lbln001.Font.Color:=lbln12.Font.Color;
    lbln002.Font.Color:=lbln12.Font.Color;
    lbln003.Font.Color:=lbln12.Font.Color;
    lbln004.Font.Color:=lbln12.Font.Color;
    lbln005.Font.Color:=lbln12.Font.Color;

    lblc001.Caption:=lblc12.Caption;
    lblc002.Caption:=lblc09.Caption;
    lblc003.Caption:=lblc06.Caption;
    lblc004.Caption:=lblc03.Caption;
    lblc001.Font.Color:=lbln12.Font.Color;
    lblc002.Font.Color:=lbln12.Font.Color;
    lblc003.Font.Color:=lbln12.Font.Color;
    lblc004.Font.Color:=lbln12.Font.Color;
    lblc005.Font.Color:=lbln12.Font.Color;
    lblc005.Caption:=lblc01.Caption;

    lblcn001.Caption:=lblcn12.Caption;
    lblcn002.Caption:=lblcn09.Caption;
    lblcn003.Caption:=lblcn06.Caption;
    lblcn004.Caption:=lblcn03.Caption;
    lblcn005.Caption:=lblcn01.Caption;
    lblcn001.Font.Color:=lbln12.Font.Color;
    lblcn002.Font.Color:=lbln12.Font.Color;
    lblcn003.Font.Color:=lbln12.Font.Color;
    lblcn004.Font.Color:=lbln12.Font.Color;
    lblcn005.Font.Color:=lbln12.Font.Color;

    lblmn001.Caption:=label25.Caption;
    lbllb3001.Caption:=lblwf3.Caption;
    lbllb6001.Caption:=lblwf6.Caption;
    lbllb36001.Caption:=label24.Caption;
    lbllb3001.Font.Color:=lblwf3.Font.Color;
    lbllb6001.Font.Color:=lblwf3.Font.Color;
    lbllb36001.Font.Color:=lblwf3.Font.Color;
    lbllb30001.Caption:=label26.Caption;
    lbllb60001.Caption:=label31.Caption;
    lbllb360001.Caption:=label36.Caption;
    lbllb3002.Caption:=label27.Caption;
    lbllb6002.Caption:=label32.Caption;
    lbllb36002.Caption:=label37.Caption;
    lbllb3003.Caption:=label28.Caption;
    lbllb6003.Caption:=label33.Caption;
    lbllb36003.Caption:=label38.Caption;
    lbllb3004.Caption:=label29.Caption;
    lbllb6004.Caption:=label34.Caption;
    lbllb36004.Caption:=label39.Caption;
    lbllb3005.Caption:=label30.Caption;
    lbllb6005.Caption:=label35.Caption;
    lbllb36005.Caption:=label40.Caption;


    ppReport1.Print;
  end;
end;

procedure Tfrmnewcap_pastperf.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

end.
