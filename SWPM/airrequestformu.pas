unit airrequestformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Buttons, Mask, DB, DBClient,
  cxControls, cxContainer, cxEdit, cxLabel, cxDBLabel, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr, ppPrnabl,
  ppCtrls, ppBands, ppCache, ppVar, ppStrtch, ppRichTx, ppMemo, ShellApi,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, ppParameter;

type
  Tfrmairrequestform = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBCheckBox2: TDBCheckBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBCheckBox3: TDBCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Shape2: TShape;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBMemo1: TDBMemo;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Shape3: TShape;
    Label23: TLabel;
    DBEdit3: TDBEdit;
    Label24: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Shape4: TShape;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    cxDBLabel1: TcxDBLabel;
    BitBtn6: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel18: TppLabel;
    ppShape2: TppShape;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppShape3: TppShape;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel36: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape4: TppShape;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel37: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel38: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    u001: TppLabel;
    u002: TppLabel;
    u003: TppLabel;
    ppLine35: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine36: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine37: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    pdt001: TppLabel;
    adt001: TppLabel;
    ptm001: TppLabel;
    atm001: TppLabel;
    ppLabel3: TppLabel;
    ppDBText23: TppDBText;
    Label35: TLabel;
    DBEdit20: TDBEdit;
    Label36: TLabel;
    DBEdit21: TDBEdit;
    ppDBText24: TppDBText;
    ppLine38: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel49: TppLabel;
    ppDBText25: TppDBText;
    voyn001: TppLabel;
    Label37: TLabel;
    DBEdit22: TDBEdit;
    ppLabel50: TppLabel;
    ppShape5: TppShape;
    ppLabel51: TppLabel;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLabel52: TppLabel;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel53: TppLabel;
    ppLine43: TppLine;
    ppDBText2: TppDBText;
    ppDBText26: TppDBText;
    damt001: TppLabel;
    ppLabel20: TppLabel;
    ppLine11: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine21: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    x001: TppLabel;
    x002: TppLabel;
    ppMemo1: TppMemo;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    fty002: TppLabel;
    ppLabel59: TppLabel;
    ppDBText5: TppDBText;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDBText27: TppDBText;
    ppLabel62: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel63: TppLabel;
    ppShape6: TppShape;
    ppLine47: TppLine;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLabel90: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel91: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    pdt002: TppLabel;
    adt002: TppLabel;
    ptm002: TppLabel;
    atm002: TppLabel;
    ppDBText34: TppDBText;
    ppLabel96: TppLabel;
    ppDBText35: TppDBText;
    voyn002: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel103: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    u004: TppLabel;
    u005: TppLabel;
    u006: TppLabel;
    ppLine81: TppLine;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLine82: TppLine;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine83: TppLine;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppDBText48: TppDBText;
    ppLabel114: TppLabel;
    ppShape10: TppShape;
    ppLabel115: TppLabel;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLabel116: TppLabel;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLabel117: TppLabel;
    ppLine89: TppLine;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    damt002: TppLabel;
    Memo2: TppMemo;
    ppLine57: TppLine;
    ppMemo2: TppMemo;
    ppMemo3: TppMemo;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    Label39: TLabel;
    DBEdit24: TDBEdit;
    stgdesc001: TppLabel;
    stgdesc002: TppLabel;
    ppLine58: TppLine;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    idt001: TppLabel;
    itm001: TppLabel;
    ppLine59: TppLine;
    ppLabel41: TppLabel;
    ppLabel58: TppLabel;
    idt002: TppLabel;
    itm002: TppLabel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label40: TLabel;
    DBEdit25: TDBEdit;
    BitBtn9: TBitBtn;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppImage3: TppImage;
    ppImage4: TppImage;
    ppImage5: TppImage;
    ppImage6: TppImage;
    BitBtn10: TBitBtn;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBText36: TppDBText;
    ppLabel75: TppLabel;
    ppDBText37: TppDBText;
    ppLabel76: TppLabel;
    ppDBText38: TppDBText;
    ppLabel77: TppLabel;
    ppDBText39: TppDBText;
    ppLabel78: TppLabel;
    ppDBText40: TppDBText;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ppLabel79: TppLabel;
    ppDBText41: TppDBText;
    ppLabel80: TppLabel;
    ppDBText42: TppDBText;
    ppLabel81: TppLabel;
    ppDBText43: TppDBText;
    ppLabel82: TppLabel;
    Query1SEQ: TIntegerField;
    Query1SEQ1: TIntegerField;
    Query1PDN: TWideStringField;
    Query1MANIFEST: TWideStringField;
    Query1PER_FACTORY: TBCDField;
    Query1PER_BUYER: TBCDField;
    Query1PER_SUPPLIER: TBCDField;
    Query1PER_OTHER: TBCDField;
    Query1REASONTYPE: TIntegerField;
    Query1PER_HEADOFFICE: TBCDField;
    Query1STAGECODE: TWideStringField;
    Query1AFRNO: TWideStringField;
    Query1FORWARDERNAME: TWideStringField;
    Query1DELIVERYTERM: TWideStringField;
    Query1ESTFRTRATE: TBCDField;
    Query1ACTFRTRATE: TBCDField;
    Query1ESTTTLFRTCOST: TBCDField;
    Query1ACTTTLFRTCOST: TBCDField;
    Query1ACTVOLWEIGHT: TBCDField;
    Query1APPUSER: TWideStringField;
    Query1APPTIME: TDateTimeField;
    Query1ACTUSER: TWideStringField;
    Query1ACTTIME: TDateTimeField;
    Query1NOTICEUSER: TWideStringField;
    Query1NOTICETIME: TDateTimeField;
    Query1NOTICECODE: TWideStringField;
    Query1DEBITUSER: TWideStringField;
    Query1DEBITTIME: TDateTimeField;
    Query1ACTEDUSER: TWideStringField;
    Query1ACTEDTIME: TDateTimeField;
    Query1PER_HEADOFFICE_CONF: TBCDField;
    Query1HEADOFFICE_ACTCOST: TBCDField;
    Query1PER_FACTORY_CONF: TBCDField;
    Query1FACTORY_ACTCOST: TBCDField;
    Query1PER_BUYER_CONF: TBCDField;
    Query1BUYER_ACTCOST: TBCDField;
    Query1PER_SUPPLIER_CONF: TBCDField;
    Query1SUPPLIER_ACTCOST: TBCDField;
    Query1PER_OTHER_CONF: TBCDField;
    Query1OTHER_ACTCOST: TBCDField;
    Query1DEBIT_NO: TWideStringField;
    Query1DEBIT_MESSRS: TWideStringField;
    Query1DEBIT_ATTN: TWideStringField;
    Query1DEBIT_AIRFRTCOST: TBCDField;
    Query1DEBIT_CHARGE: TBCDField;
    Query1DEBIT_REMARK: TWideStringField;
    Query1REASONMEMO: TWideStringField;
    Query1RCODE: TWideStringField;
    Query1RDESC: TWideStringField;
    Query1MAWB: TWideStringField;
    Query1CURRENCY: TWideStringField;
    Query1FORWARDERINV: TWideStringField;
    Query1DEBIT_VNDR: TWideStringField;
    Query1ULIST: TWideStringField;
    Query1INVNO: TWideStringField;
    Query1CBM: TFloatField;
    Query1DEBIT_NO1: TWideStringField;
    Query1DEBIT_MESSRS1: TWideStringField;
    Query1DEBIT_ATTN1: TWideStringField;
    Query1DEBIT_AIRFRTCOST1: TBCDField;
    Query1DEBIT_CHARGE1: TBCDField;
    Query1DEBIT_REMARK1: TWideStringField;
    Query1DEBIT_VNDR1: TWideStringField;
    Query1FTY_SIGNED: TWideStringField;
    Query1HK_SIGNED: TWideStringField;
    Query1OA_SIGNED: TWideStringField;
    Query1SL01: TFloatField;
    Query1KB01: TFloatField;
    Query1FJ01: TFloatField;
    Query1SL02: TFloatField;
    Query1KB02: TFloatField;
    Query1FJ02: TFloatField;
    Query1ISREQUESTED: TBooleanField;
    Query1ISCONFIRMED: TBooleanField;
    Query1ISACTUALED: TBooleanField;
    Query1CL01: TFloatField;
    Query1CL02: TFloatField;
    ppDBText44: TppDBText;
    ppLabel83: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1PER_FACTORYChange(Sender: TField);
    procedure Query1PER_HEADOFFICE_CONFChange(Sender: TField);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmairrequestform: Tfrmairrequestform;

implementation

uses mainformu, pdnformu, voyageformu, airreasonformu, airnoticeformu,
  debitnoteformu, airreportformu, airprjdtlformu, airrequest1formu, Carte_MailFormu;

{$R *.dfm}

procedure Tfrmairrequestform.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmairrequestform:=nil;
end;

procedure Tfrmairrequestform.SpeedButton1Click(Sender: TObject);
begin
  if bitbtn1.caption<>'Application' then begin
    if frmairreason=nil then frmairreason:=tfrmairreason.create(nil);
    frmairreason.show;
  end;
end;

procedure Tfrmairrequestform.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_shmchgreason where seq=:x1 and seq1=:x2';
    params[0].asinteger:=frmvoyage.query1.fieldbyname('seq').value;
    params[1].asinteger:=frmvoyage.query1.fieldbyname('seq1').value;
    open;
  end;
end;

procedure Tfrmairrequestform.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if not query1.fieldbyname('stagecode').isnull then begin
    if (query1.fieldbyname('stagecode').value='') or (query1.fieldbyname('stagecode').value='1.0') then begin
      dbcheckbox1.Visible:=false;
      label7.Visible:=false;
      dbedit5.Visible:=false;
      label25.Visible:=false;
      label8.Visible:=false;
      dbedit6.Visible:=false;
      label26.Visible:=false;
      label9.Visible:=false;
      dbedit7.Visible:=false;
      label27.Visible:=false;
      label10.Visible:=false;
      dbedit8.Visible:=false;
      label28.Visible:=false;
      label11.Visible:=false;
      dbedit9.Visible:=false;
      label29.Visible:=false;

      dbcheckbox2.Visible:=false;
      label12.Visible:=false;
      dbedit10.Visible:=false;
      label30.Visible:=false;
      label13.Visible:=false;
      speedbutton2.Visible:=false;
      dbedit11.Visible:=false;
      label31.Visible:=false;
      label14.Visible:=false;
      dbedit12.Visible:=false;
      label32.Visible:=false;
      label15.Visible:=false;
      dbedit13.Visible:=false;
      label33.Visible:=false;
      label16.Visible:=false;
      dbedit14.Visible:=false;
      label34.Visible:=false;

      dbcheckbox3.Visible:=false;
      label17.Visible:=false;
      dbedit15.Visible:=false;
      label18.Visible:=false;
      speedbutton3.Visible:=false;
      dbedit16.Visible:=false;
      label19.Visible:=false;
      dbedit17.Visible:=false;
      label20.Visible:=false;
      dbedit18.Visible:=false;
      label21.Visible:=false;
      dbedit19.Visible:=false;

      bitbtn1.Caption:='Active';
      bitbtn1.Enabled:=true;
    end else if query1.FieldByName('stagecode').value='2.0' then begin
      dbcheckbox1.Visible:=true;
      label7.Visible:=true;
      dbedit5.Visible:=true;
      label25.Visible:=true;
      label8.Visible:=true;
      dbedit6.Visible:=true;
      label26.Visible:=true;
      label9.Visible:=true;
      dbedit7.Visible:=true;
      label27.Visible:=true;
      label10.Visible:=true;
      dbedit8.Visible:=true;
      label28.Visible:=true;
      label11.Visible:=true;
      dbedit9.Visible:=true;
      label29.Visible:=true;

      dbcheckbox2.Visible:=false;
      label12.Visible:=false;
      dbedit10.Visible:=false;
      label30.Visible:=false;
      label13.Visible:=false;
      speedbutton2.Visible:=false;
      dbedit11.Visible:=false;
      label31.Visible:=false;
      label14.Visible:=false;
      dbedit12.Visible:=false;
      label32.Visible:=false;
      label15.Visible:=false;
      dbedit13.Visible:=false;
      label33.Visible:=false;
      label16.Visible:=false;
      dbedit14.Visible:=false;
      label34.Visible:=false;

      dbcheckbox3.Visible:=false;
      label17.Visible:=false;
      dbedit15.Visible:=false;
      label18.Visible:=false;
      speedbutton3.Visible:=false;
      dbedit16.Visible:=false;
      label19.Visible:=false;
      dbedit17.Visible:=false;
      label20.Visible:=false;
      dbedit18.Visible:=false;
      label21.Visible:=false;
      dbedit19.Visible:=false;

      bitbtn1.Caption:='Notice to';
      bitbtn1.Enabled:=true;
    end else if query1.fieldbyname('stagecode').value='4.0' then begin
      dbcheckbox1.Visible:=true;
      label7.Visible:=true;
      dbedit5.Visible:=true;
      label25.Visible:=true;
      label8.Visible:=true;
      dbedit6.Visible:=true;
      label26.Visible:=true;
      label9.Visible:=true;
      dbedit7.Visible:=true;
      label27.Visible:=true;
      label10.Visible:=true;
      dbedit8.Visible:=true;
      label28.Visible:=true;
      label11.Visible:=true;
      dbedit9.Visible:=true;
      label29.Visible:=true;

      dbcheckbox2.Visible:=true;
      label12.Visible:=true;
      dbedit10.Visible:=true;
      label30.Visible:=true;
      label13.Visible:=true;
      speedbutton2.Visible:=true;
      dbedit11.Visible:=true;
      label31.Visible:=true;
      label14.Visible:=true;
      dbedit12.Visible:=true;
      label32.Visible:=true;
      label15.Visible:=true;
      dbedit13.Visible:=true;
      label33.Visible:=true;
      label16.Visible:=true;
      dbedit14.Visible:=true;
      label34.Visible:=true;

      dbcheckbox3.Visible:=true;
      label17.Visible:=true;
      dbedit15.Visible:=true;
      label18.Visible:=true;
      speedbutton3.Visible:=true;
      dbedit16.Visible:=true;
      label19.Visible:=true;
      dbedit17.Visible:=true;
      label20.Visible:=true;
      dbedit18.Visible:=true;
      label21.Visible:=true;
      dbedit19.Visible:=true;

      bitbtn1.Caption:='To be acted';
      bitbtn1.Enabled:=true;
    end else if query1.fieldbyname('stagecode').value='5.0' then begin
      dbcheckbox1.Visible:=true;
      label7.Visible:=true;
      dbedit5.Visible:=true;
      label25.Visible:=true;
      label8.Visible:=true;
      dbedit6.Visible:=true;
      label26.Visible:=true;
      label9.Visible:=true;
      dbedit7.Visible:=true;
      label27.Visible:=true;
      label10.Visible:=true;
      dbedit8.Visible:=true;
      label28.Visible:=true;
      label11.Visible:=true;
      dbedit9.Visible:=true;
      label29.Visible:=true;

      dbcheckbox2.Visible:=true;
      label12.Visible:=true;
      dbedit10.Visible:=true;
      label30.Visible:=true;
      label13.Visible:=true;
      speedbutton2.Visible:=true;
      dbedit11.Visible:=true;
      label31.Visible:=true;
      label14.Visible:=true;
      dbedit12.Visible:=true;
      label32.Visible:=true;
      label15.Visible:=true;
      dbedit13.Visible:=true;
      label33.Visible:=true;
      label16.Visible:=true;
      dbedit14.Visible:=true;
      label34.Visible:=true;

      dbcheckbox3.Visible:=true;
      label17.Visible:=true;
      dbedit15.Visible:=true;
      label18.Visible:=true;
      speedbutton3.Visible:=true;
      dbedit16.Visible:=true;
      label19.Visible:=true;
      dbedit17.Visible:=true;
      label20.Visible:=true;
      dbedit18.Visible:=true;
      label21.Visible:=true;
      dbedit19.Visible:=true;

      bitbtn1.Caption:='Acted';
      bitbtn1.Enabled:=false;
    end else begin
      dbcheckbox1.Visible:=true;
      label7.Visible:=true;
      dbedit5.Visible:=true;
      label25.Visible:=true;
      label8.Visible:=true;
      dbedit6.Visible:=true;
      label26.Visible:=true;
      label9.Visible:=true;
      dbedit7.Visible:=true;
      label27.Visible:=true;
      label10.Visible:=true;
      dbedit8.Visible:=true;
      label28.Visible:=true;
      label11.Visible:=true;
      dbedit9.Visible:=true;
      label29.Visible:=true;

      dbcheckbox2.Visible:=true;
      label12.Visible:=true;
      dbedit10.Visible:=true;
      label30.Visible:=true;
      label13.Visible:=true;
      speedbutton2.Visible:=true;
      dbedit11.Visible:=true;
      label31.Visible:=true;
      label14.Visible:=true;
      dbedit12.Visible:=true;
      label32.Visible:=true;
      label15.Visible:=true;
      dbedit13.Visible:=true;
      label33.Visible:=true;
      label16.Visible:=true;
      dbedit14.Visible:=true;
      label34.Visible:=true;

      dbcheckbox3.Visible:=false;
      label17.Visible:=false;
      dbedit15.Visible:=false;
      label18.Visible:=false;
      speedbutton3.Visible:=false;
      dbedit16.Visible:=false;
      label19.Visible:=false;
      dbedit17.Visible:=false;
      label20.Visible:=false;
      dbedit18.Visible:=false;
      label21.Visible:=false;
      dbedit19.Visible:=false;

      bitbtn1.Caption:='Debit Note';
      bitbtn1.Enabled:=true;
    end;
  end else begin
      dbcheckbox1.Visible:=false;
      label7.Visible:=false;
      dbedit5.Visible:=false;
      label25.Visible:=false;
      label8.Visible:=false;
      dbedit6.Visible:=false;
      label26.Visible:=false;
      label9.Visible:=false;
      dbedit7.Visible:=false;
      label27.Visible:=false;
      label10.Visible:=false;
      dbedit8.Visible:=false;
      label28.Visible:=false;
      label11.Visible:=false;
      dbedit9.Visible:=false;
      label29.Visible:=false;

      dbcheckbox2.Visible:=false;
      label12.Visible:=false;
      dbedit10.Visible:=false;
      label30.Visible:=false;
      label13.Visible:=false;
      speedbutton2.Visible:=false;
      dbedit11.Visible:=false;
      label31.Visible:=false;
      label14.Visible:=false;
      dbedit12.Visible:=false;
      label32.Visible:=false;
      label15.Visible:=false;
      dbedit13.Visible:=false;
      label33.Visible:=false;
      label16.Visible:=false;
      dbedit14.Visible:=false;
      label34.Visible:=false;

      dbcheckbox3.Visible:=false;
      label17.Visible:=false;
      dbedit15.Visible:=false;
      label18.Visible:=false;
      speedbutton3.Visible:=false;
      dbedit16.Visible:=false;
      label19.Visible:=false;
      dbedit17.Visible:=false;
      label20.Visible:=false;
      dbedit18.Visible:=false;
      label21.Visible:=false;
      dbedit19.Visible:=false;

    bitbtn1.Caption:='Application';
    bitbtn1.Enabled:=true;
  end;
end;

procedure Tfrmairrequestform.BitBtn1Click(Sender: TObject);
begin
  if bitbtn1.Caption='Application' then begin
    query1.append;
  end else if bitbtn1.Caption='Active' then begin
    if not query1.fieldbyname('rcode').isnull then begin
    if (query1.fieldbyname('rcode').value='A') or (query1.fieldbyname('rcode').value='B') then begin
      query1.edit;
      query1.fieldbyname('stagecode').value:='4.0';
      if not query1.fieldbyname('ulist').isnull then
      query1.fieldbyname('ulist').value:=trim(query1.fieldbyname('ulist').value)+'4-'+frmmain.ComboBox1.text+';'
      else query1.fieldbyname('ulist').value:='4-'+frmmain.ComboBox1.text+';';
    end else begin
      query1.edit;
      query1.fieldbyname('stagecode').value:='2.0';
      if not query1.fieldbyname('ulist').isnull then
      query1.fieldbyname('ulist').value:=trim(query1.fieldbyname('ulist').value)+'2-'+frmmain.ComboBox1.text+';'
      else query1.fieldbyname('ulist').value:='2-'+frmmain.ComboBox1.text+';';
    end;
    end else begin
      query1.edit;
      query1.fieldbyname('stagecode').value:='2.0';
      if not query1.fieldbyname('ulist').isnull then
      query1.fieldbyname('ulist').value:=trim(query1.fieldbyname('ulist').value)+'2-'+frmmain.ComboBox1.text+';'
      else query1.fieldbyname('ulist').value:='2-'+frmmain.ComboBox1.text+';';
    end;
  end else if bitbtn1.Caption='Notice to' then begin
    //if frmairnotice=nil then frmairnotice:=tfrmairnotice.create(nil);
    //frmairnotice.show;
    query1.edit;
    query1.fieldbyname('stagecode').value:='3.0';
    if not query1.fieldbyname('ulist').isnull then
    query1.fieldbyname('ulist').value:=trim(query1.fieldbyname('ulist').value)+'3-'+frmmain.ComboBox1.text+';'
    else query1.fieldbyname('ulist').value:='3-'+frmmain.ComboBox1.text+';';
  end else if bitbtn1.Caption='Debit Note' then begin
    query1.edit;
    query1.fieldbyname('stagecode').value:='4.0';
    if not query1.fieldbyname('ulist').isnull then
    query1.fieldbyname('ulist').value:=trim(query1.fieldbyname('ulist').value)+'4-'+frmmain.ComboBox1.text+';'
    else query1.fieldbyname('ulist').value:='4-'+frmmain.ComboBox1.text+';';
  end else if bitbtn1.Caption='To be acted' then begin
    query1.edit;
    query1.fieldbyname('stagecode').value:='5.0';
    if not query1.fieldbyname('ulist').isnull then
    query1.fieldbyname('ulist').value:=trim(query1.fieldbyname('ulist').value)+'5-'+frmmain.ComboBox1.text+';'
    else query1.fieldbyname('ulist').value:='5-'+frmmain.ComboBox1.text+';';
    {
    //send email
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      if frmpdn.Query1.fieldbyname('tplant').value='KB' then begin
        commandtext:='select toaddress,ccaddress from tbl_airrequest_email where fty=:x1 and stg=5 and usr=:x2';
        params[0].asstring:=frmpdn.Query1.fieldbyname('tplant').value;
        params[1].asstring:=frmmain.ComboBox1.text;
      end else begin
        commandtext:='select toaddress,ccaddress from tbl_airrequest_email where fty=:x1 and stg=5 and usr=:x2';
        params[0].asstring:=frmpdn.Query1.fieldbyname('tplant').value;
        params[1].asstring:=query1.fieldbyname('oa_signed').value;
      end;
      open;
    end;
    str1:=extractfiledir(application.exename);
    str2:='"'+query1.fieldbyname('pdn').value+'" "'+query1.fieldbyname('manifest').value+'" "'+query1.fieldbyname('rcode').value+'" "'+formatfloat('0.00%',query1.fieldbyname('per_factory').value)+'" "'+formatfloat('0.00%',query1.fieldbyname('per_headoffice').value)+'" "'+formatfloat('0.00%',query1.fieldbyname('per_supplier').value)+'" "'+formatfloat('0.00%',query1.fieldbyname('per_buyer').value)
    +'" "'+formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)+'" "'+query2.fieldbyname('toaddress').value+'" "'+query2.fieldbyname('ccaddress').value+'"';
    shellexecute(0,'open',pchar(str1+'\dotnet\Air Request Form Notification.exe'),pchar(str2),nil,sw_show);
    }
  end;
end;

procedure Tfrmairrequestform.BitBtn2Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmairrequestform.Query1AfterOpen(DataSet: TDataSet);
begin
  if not query1.fieldbyname('oa_signed').isnull then begin
    if query1.fieldbyname('oa_signed').value>'' then bitbtn6.Enabled:=false
    else bitbtn6.Enabled:=true;
  end else bitbtn6.Enabled:=true;
  if not query1.fieldbyname('fty_signed').isnull then begin
    if query1.fieldbyname('fty_signed').value>'' then bitbtn7.Enabled:=false
    else bitbtn7.Enabled:=true;
  end else bitbtn7.Enabled:=true;
  if not query1.fieldbyname('hk_signed').isnull then begin
    if query1.fieldbyname('hk_signed').value>'' then bitbtn8.Enabled:=false
    else bitbtn8.Enabled:=true;
  end else bitbtn8.Enabled:=true;
end;

procedure Tfrmairrequestform.Query1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
  //with query3 do begin
    //
  //end;
end;

procedure Tfrmairrequestform.BitBtn3Click(Sender: TObject);
begin
  if bitbtn1.caption<>'Application' then begin
    if frmdebitnote=nil then frmdebitnote:=tfrmdebitnote.create(nil);
    frmdebitnote.show;
  end;
end;

procedure Tfrmairrequestform.Query1NewRecord(DataSet: TDataSet);
var
  i2:integer;
  s1,s2:string;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(*) as s2 from tbl_pdn_shmchgreason';
    open;
    if not fieldbyname('s2').isnull then i2:=fieldbyname('s2').value+1 else i2:=1;
  end;
  query1.fieldbyname('pdn').value:=frmpdn.query1.fieldbyname('pdn').value;
  query1.fieldbyname('manifest').value:=frmvoyage.query1.fieldbyname('voyn').value;
  query1.fieldbyname('seq').value:=frmvoyage.query1.fieldbyname('seq').value;
  query1.fieldbyname('seq1').value:=frmvoyage.query1.fieldbyname('seq1').value;
  query1.fieldbyname('stagecode').value:='1.0';
  query1.fieldbyname('isrequested').value:=false;
  query1.fieldbyname('isconfirmed').value:=false;
  query1.fieldbyname('isactualed').value:=false;
  query1.fieldbyname('per_headoffice').value:=0;
  query1.fieldbyname('per_factory').value:=0;
  query1.fieldbyname('per_buyer').value:=0;
  query1.fieldbyname('per_supplier').value:=0;
  query1.fieldbyname('per_other').value:=100;
  query1.fieldbyname('per_headoffice_conf').value:=0;
  query1.fieldbyname('per_factory_conf').value:=0;
  query1.fieldbyname('per_buyer_conf').value:=0;
  query1.fieldbyname('per_supplier_conf').value:=0;
  query1.fieldbyname('per_other_conf').value:=100;
  query1.fieldbyname('headoffice_actcost').value:=0;
  query1.fieldbyname('factory_actcost').value:=0;
  query1.fieldbyname('buyer_actcost').value:=0;
  query1.fieldbyname('supplier_actcost').value:=0;
  query1.fieldbyname('other_actcost').value:=0;
  query1.fieldbyname('estfrtrate').value:=0;
  query1.fieldbyname('actfrtrate').value:=0;
  query1.fieldbyname('debit_airfrtcost').value:=0;
  query1.fieldbyname('debit_charge').value:=0;
  s1:=copy(frmpdn.query1.fieldbyname('pdn').value,1,2);
  s2:=copy('000'+inttostr(i2),length('000'+inttostr(i2))-3,4);
  query1.fieldbyname('afrno').value:=s1+s2;
  query1.fieldbyname('ulist').value:=frmmain.ComboBox1.text+';'
end;

procedure Tfrmairrequestform.Query1PER_FACTORYChange(Sender: TField);
var
  s1,s2,s3,s4:double;
begin
  if not query1.fieldbyname('per_headoffice').isnull then
    s1:=query1.fieldbyname('per_headoffice').value else s1:=0;
  if not query1.fieldbyname('per_factory').isnull then
    s2:=query1.fieldbyname('per_factory').value else s2:=0;
  if not query1.fieldbyname('per_buyer').isnull then
    s3:=query1.fieldbyname('per_buyer').value else s3:=0;
  if not query1.fieldbyname('per_supplier').isnull then
    s4:=query1.fieldbyname('per_supplier').value else s4:=0;
  query1.fieldbyname('per_other').value:=100-s1-s2-s3-s4;
end;

procedure Tfrmairrequestform.Query1PER_HEADOFFICE_CONFChange(
  Sender: TField);
var
  s1,s2,s3,s4:double;
begin
  if not query1.fieldbyname('per_headoffice_conf').isnull then
    s1:=query1.fieldbyname('per_headoffice_conf').value else s1:=0;
  if not query1.fieldbyname('per_factory_conf').isnull then
    s2:=query1.fieldbyname('per_factory_conf').value else s2:=0;
  if not query1.fieldbyname('per_buyer_conf').isnull then
    s3:=query1.fieldbyname('per_buyer_conf').value else s3:=0;
  if not query1.fieldbyname('per_supplier_conf').isnull then
    s4:=query1.fieldbyname('per_supplier_conf').value else s4:=0;
  query1.fieldbyname('per_other_conf').value:=100-s1-s2-s3-s4;
end;

procedure Tfrmairrequestform.BitBtn4Click(Sender: TObject);
begin
  if bitbtn1.caption<>'Application' then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x0',ptinput);
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='update tbl_pdn_pack set airrate=:x0,vwght=cbm*1000000.0/6000.0 where seq=:x1 and seq1=:x2';
      params[0].asfloat:=query1.fieldbyname('actfrtrate').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='update tbl_pdn_pack set vwght1=cbm*1000000.0/6000.0 where seq=:x1 and seq1=:x2 and ((vwght1=0) or (vwght1 is null))';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
    if not query1.fieldbyname('rcode').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x0',ptinput);
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='update tbl_pdn_pack set rcode=:x0 where seq=:x1 and seq1=:x2 and ((rcode='''') or (rcode is null))';
      params[0].asstring:=query1.fieldbyname('rcode').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
    end;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      commandtext:='execute procedure sp_pdn_genairdtl(:x1,:x2,:x3)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      params[2].asfloat:=query1.fieldbyname('actfrtrate').value;
      execute;
    end;
    if frmairprjdtl=nil then frmairprjdtl:=tfrmairprjdtl.Create(nil);
    with frmairprjdtl.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      //commandtext:='select * from tbl_pdn_pack where seq=:x1 and seq1=:x2';
      commandtext:='select * from tbl_pdn_airdtl where seq=:x1 and seq1=:x2';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      open;
    end;
    frmairprjdtl.Show;
  end;
end;

procedure Tfrmairrequestform.BitBtn5Click(Sender: TObject);
begin
  bitbtn2click(self);
  if bitbtn1.caption<>'Application' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      commandtext:='execute procedure sp_pdn_genairdtl(:x1,:x2,:x3)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('seq1').value;
      params[2].asfloat:=query1.fieldbyname('actfrtrate').value;
      execute;
    end;
  end;
  if frmairreport=nil then frmairreport:=tfrmairreport.create(nil);
  frmairreport.show;
end;

procedure Tfrmairrequestform.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmairrequestform.ppHeaderBand1BeforePrint(Sender: TObject);
var
 stgcode:string;
begin
  pdt001.caption:='';ptm001.Caption:='';adt001.Caption:='';atm001.Caption:='';
  fty001.Caption:='Factory :  '+frmpdn.Query1.fieldbyname('tplant').value;
  pdt001.Caption:=formatdatetime('yy-MM-dd',frmvoyage.Query1.fieldbyname('exfty').value);
  if not frmvoyage.query1.fieldbyname('extm').isnull then
  ptm001.Caption:=formatdatetime('hh:nn',frmvoyage.Query1.fieldbyname('extm').value);
  if not frmvoyage.Query1.fieldbyname('actdt').isnull then
  adt001.Caption:=formatdatetime('yy-MM-dd',frmvoyage.Query1.fieldbyname('actdt').value);
  if not frmvoyage.Query1.fieldbyname('acttm').isnull then
  atm001.Caption:=formatdatetime('hh:nn',frmvoyage.Query1.fieldbyname('acttm').value);
  //stagecode->stgdesc001
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct indt,intm from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('indt').isnull then idt001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('indt').value)
    else idt001.Caption:='';
    if not fieldbyname('intm').isnull then itm001.Caption:=formatdatetime('hh:nn',fieldbyname('intm').value)
    else itm001.Caption:='';
  end;
  stgcode:=query4.fieldbyname('stagecode').value;
  if stgcode='1.0' then stgdesc001.Caption:='Application'
  else if stgcode='2.0' then stgdesc001.Caption:='Active'
  else if stgcode='3.0' then stgdesc001.Caption:='Notice to factory GM & PHHK GM'//'Notice to customer, if any'
  else if stgcode='3.0.1' then stgdesc001.Caption:='Requested to pay ttl/partial frt cost'
  else if stgcode='3.0.2' then stgdesc001.Caption:='Accepted to pay ttl frt cost'
  else if stgcode='3.0.3' then stgdesc001.Caption:='Accepted to pay partial frt cost'
  else if stgcode='3.0.4' then stgdesc001.Caption:='Payment settled'
  else if stgcode='3.1' then stgdesc001.Caption:='Notice to supplier, if any'
  else if stgcode='3.1.1' then stgdesc001.Caption:='Requested to pay ttl/partial frt cost'
  else if stgcode='3.1.2' then stgdesc001.Caption:='Accepted to pay ttl frt cost'
  else if stgcode='3.1.3' then stgdesc001.Caption:='Accepted to pay partial frt cost'
  else if stgcode='3.1.4' then stgdesc001.Caption:='Payment settled'
  else if stgcode='3.2' then stgdesc001.Caption:='Notice to factory, if any'
  else if stgcode='3.2.1' then stgdesc001.Caption:='Requested to pay ttl/partial frt cost'
  else if stgcode='3.2.2' then stgdesc001.Caption:='Accepted to pay ttl frt cost'
  else if stgcode='3.2.3' then stgdesc001.Caption:='Accepted to pay partial frt cost'
  else if stgcode='3.2.4' then stgdesc001.Caption:='Payment settled'
  else if stgcode='4.0' then stgdesc001.Caption:='Debit Note'
  else if stgcode='5.0' then stgdesc001.Caption:='Acted';
end;

procedure Tfrmairrequestform.ppSummaryBand1BeforePrint(Sender: TObject);
var
  uimg:string;
begin
  if (not frmairrequestform.query4.fieldbyname('debit_airfrtcost').isnull) and (not frmairrequestform.query4.fieldbyname('debit_charge').isnull) then
    damt001.Caption:=formatfloat('#,0.00',frmairrequestform.query4.fieldbyname('debit_airfrtcost').value*frmairrequestform.Query4.fieldbyname('debit_charge').value/100.0)
  else damt001.Caption:='0.00';
  x002.Caption:=formatfloat('#,0.00',ppdbcalc3.Value+ppdbcalc5.Value-ppdbcalc6.Value);
  with query2 do begin
    close;
    params.clear;
    commandtext:='select rdesc from tbl_pdn_shmchg_reason where rcode='''+query4.fieldbyname('rcode').value+'''';
    open;
    if not fieldbyname('rdesc').isnull then ppMemo1.Text:=fieldbyname('rdesc').value else ppMemo1.Text:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select oa_signed,fty_signed,hk_signed from tbl_pdn_shmchgreason where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('oa_signed').isnull then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select uimg from tbluser where usr='''+query2.fieldbyname('oa_signed').value+'''';
        open;
        if not fieldbyname('uimg').isnull then uimg:=extractfiledir(application.ExeName)+'\signature\'+fieldbyname('uimg').value
        else uimg:='';
      end;
      if uimg>'' then ppimage1.Picture.LoadFromFile(uimg);
    end;
    if not fieldbyname('fty_signed').isnull then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select uimg from tbluser where usr='''+query2.fieldbyname('fty_signed').value+'''';
        open;
        if not fieldbyname('uimg').isnull then uimg:=extractfiledir(application.ExeName)+'\signature\'+fieldbyname('uimg').value
        else uimg:='';
      end;
      if uimg>'' then ppimage2.Picture.LoadFromFile(uimg);
    end;
    if not fieldbyname('hk_signed').isnull then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select uimg from tbluser where usr='''+query2.fieldbyname('hk_signed').value+'''';
        open;
        if not fieldbyname('uimg').isnull then uimg:=extractfiledir(application.ExeName)+'\signature\'+fieldbyname('uimg').value
        else uimg:='';
      end;
      if uimg>'' then ppimage3.Picture.LoadFromFile(uimg);
    end;
  end;
end;

procedure Tfrmairrequestform.ppDetailBand1BeforePrint(Sender: TObject);
var
  x1,x2,x3:double;
begin
  if not query4.fieldbyname('rcharge').isnull then x1:=query4.fieldbyname('rcharge').value else x1:=0;
  if not query4.fieldbyname('bcharge').isnull then x2:=query4.fieldbyname('bcharge').value else x2:=0;
  if not query4.fieldbyname('ocharge').isnull then x3:=query4.fieldbyname('ocharge').value else x3:=0;
  x001.Caption:=formatfloat('#,0.00',x1+x2-x3);
end;

procedure Tfrmairrequestform.ppSummaryBand2BeforePrint(Sender: TObject);
var
  uimg:string;
begin
  if (not frmairrequestform.query4.fieldbyname('debit_airfrtcost').isnull) and (not frmairrequestform.query4.fieldbyname('debit_charge').isnull) then
    damt002.Caption:=formatfloat('#,0.00',frmairrequestform.query4.fieldbyname('debit_airfrtcost').value*frmairrequestform.Query4.fieldbyname('debit_charge').value/100.0)
  else damt002.Caption:='0.00';
  //x002.Caption:=formatfloat('#,0.00',ppdbcalc3.Value+ppdbcalc5.Value-ppdbcalc6.Value);
  with query2 do begin
    close;
    params.clear;
    commandtext:='select rdesc from tbl_pdn_shmchg_reason where rcode='''+query4.fieldbyname('rcode').value+'''';
    open;
    if not fieldbyname('rdesc').isnull then Memo2.Text:=fieldbyname('rdesc').value else Memo2.Text:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select oa_signed,fty_signed,hk_signed from tbl_pdn_shmchgreason where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('oa_signed').isnull then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select uimg from tbluser where usr='''+query2.fieldbyname('oa_signed').value+'''';
        open;
        if not fieldbyname('uimg').isnull then uimg:=extractfiledir(application.ExeName)+'\signature\'+fieldbyname('uimg').value
        else uimg:='';
      end;
      if uimg>'' then ppimage4.Picture.LoadFromFile(uimg);
    end;
    if not fieldbyname('fty_signed').isnull then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select uimg from tbluser where usr='''+query2.fieldbyname('fty_signed').value+'''';
        open;
        if not fieldbyname('uimg').isnull then uimg:=extractfiledir(application.ExeName)+'\signature\'+fieldbyname('uimg').value
        else uimg:='';
      end;
      if uimg>'' then ppimage5.Picture.LoadFromFile(uimg);
    end;
    if not fieldbyname('hk_signed').isnull then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select uimg from tbluser where usr='''+query2.fieldbyname('hk_signed').value+'''';
        open;
        if not fieldbyname('uimg').isnull then uimg:=extractfiledir(application.ExeName)+'\signature\'+fieldbyname('uimg').value
        else uimg:='';
      end;
      if uimg>'' then ppimage6.Picture.LoadFromFile(uimg);
    end;
  end;
end;

procedure Tfrmairrequestform.ppHeaderBand2BeforePrint(Sender: TObject);
var
  stgcode:string;
begin
  pdt002.caption:='';ptm002.Caption:='';adt002.Caption:='';atm002.Caption:='';
  fty002.Caption:='Factory :  '+frmpdn.Query1.fieldbyname('tplant').value;
  pdt002.Caption:=formatdatetime('yy-MM-dd',frmvoyage.Query1.fieldbyname('exfty').value);
  if not frmvoyage.query1.fieldbyname('extm').isnull then
  ptm002.Caption:=formatdatetime('hh:nn',frmvoyage.Query1.fieldbyname('extm').value);
  if not frmvoyage.Query1.fieldbyname('actdt').isnull then
  adt002.Caption:=formatdatetime('yy-MM-dd',frmvoyage.Query1.fieldbyname('actdt').value);
  if not frmvoyage.Query1.fieldbyname('acttm').isnull then
  atm002.Caption:=formatdatetime('hh:nn',frmvoyage.Query1.fieldbyname('acttm').value);

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct indt,intm from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('indt').isnull then idt002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('indt').value)
    else idt002.Caption:='';
    if not fieldbyname('intm').isnull then itm002.Caption:=formatdatetime('hh:nn',fieldbyname('intm').value)
    else itm002.Caption:='';
  end;
  //stagecode->stgdesc001
  stgcode:=query4.fieldbyname('stagecode').value;
  if stgcode='1.0' then stgdesc002.Caption:='Application'
  else if stgcode='2.0' then stgdesc002.Caption:='Active'
  else if stgcode='3.0' then stgdesc002.Caption:='Notice to factory GM & PHHK GM'//'Notice to customer, if any'
  else if stgcode='3.0.1' then stgdesc002.Caption:='Requested to pay ttl/partial frt cost'
  else if stgcode='3.0.2' then stgdesc002.Caption:='Accepted to pay ttl frt cost'
  else if stgcode='3.0.3' then stgdesc002.Caption:='Accepted to pay partial frt cost'
  else if stgcode='3.0.4' then stgdesc002.Caption:='Payment settled'
  else if stgcode='3.1' then stgdesc002.Caption:='Notice to supplier, if any'
  else if stgcode='3.1.1' then stgdesc002.Caption:='Requested to pay ttl/partial frt cost'
  else if stgcode='3.1.2' then stgdesc002.Caption:='Accepted to pay ttl frt cost'
  else if stgcode='3.1.3' then stgdesc002.Caption:='Accepted to pay partial frt cost'
  else if stgcode='3.1.4' then stgdesc002.Caption:='Payment settled'
  else if stgcode='3.2' then stgdesc002.Caption:='Notice to factory, if any'
  else if stgcode='3.2.1' then stgdesc002.Caption:='Requested to pay ttl/partial frt cost'
  else if stgcode='3.2.2' then stgdesc002.Caption:='Accepted to pay ttl frt cost'
  else if stgcode='3.2.3' then stgdesc002.Caption:='Accepted to pay partial frt cost'
  else if stgcode='3.2.4' then stgdesc002.Caption:='Payment settled'
  else if stgcode='4.0' then stgdesc002.Caption:='Debit Note'
  else if stgcode='5.0' then stgdesc002.Caption:='Acted';
end;

procedure Tfrmairrequestform.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmairrequestform.BitBtn6Click(Sender: TObject);
var
  r1:boolean;
  str1,str2,tplant:string;
  f1,h1,s1,b1,e1:string;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select air_oa from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('air_oa').isnull then r1:=fieldbyname('air_oa').value else r1:=false;
  end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select tplant from tbl_pdn_m where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='';
    end;
  if r1 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='update tbl_pdn_shmchgreason set oa_signed=:x1 where seq=:x2 and seq1=:x3';

      params[0].asstring:=frmmain.ComboBox1.text;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
    }
      str1:='update tbl_pdn_shmchgreason set oa_signed='''+frmmain.combobox1.text+''' where seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select toaddress,ccaddress from tbl_airrequest_email where fty=:x1 and stg=1 and usr=:x2';
      params[0].asstring:=frmpdn.Query1.fieldbyname('tplant').value;
      params[1].asstring:=frmmain.ComboBox1.text;
      open;
    end;
    if query1.fieldbyname('isconfirmed').value=true then begin
      f1:=formatfloat('0.00%',query1.fieldbyname('per_factory_conf').value);
      h1:=formatfloat('0.00%',query1.fieldbyname('per_headoffice_conf').value);
      s1:=formatfloat('0.00%',query1.fieldbyname('per_supplier_conf').value);
      b1:=formatfloat('0.00%',query1.fieldbyname('per_buyer_conf').value);
    end else begin
      f1:=formatfloat('0.00%',query1.fieldbyname('per_factory').value);
      h1:=formatfloat('0.00%',query1.fieldbyname('per_headoffice').value);
      s1:=formatfloat('0.00%',query1.fieldbyname('per_supplier').value);
      b1:=formatfloat('0.00%',query1.fieldbyname('per_buyer').value);
    end;
    {
    str1:=extractfiledir(application.exename);
    str2:='"1'+tplant+':'+query1.fieldbyname('pdn').value+'" "'+frmvoyage.query1.fieldbyname('voyn').value+'" "'+query1.fieldbyname('rcode').value+'" "'+f1+'" "'+h1+'" "'+s1+'" "'+b1
    +'" "'+formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)+'" "'+query2.fieldbyname('toaddress').value+'" "'+query2.fieldbyname('ccaddress').value+'"';
    shellexecute(0,'open',pchar(str1+'\dotnet\Air Request Form Notification.exe'),pchar(str2),nil,sw_show);
    }
      if not query1.fieldbyname('estttlfrtcost').isnull then e1:=formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)
      else e1:='0.00';
      if frmcarte_mail=nil then frmcarte_mail:=tfrmcarte_mail.create(nil);
      frmcarte_mail.edit3.text:=query2.fieldbyname('toaddress').value;
      frmcarte_mail.edit4.text:=query2.fieldbyname('ccaddress').value;
      frmcarte_mail.edit5.text:='HKOAM approval completed, request for factory GM approval of Air-freight Request Form -  PDN#  '+tplant+':'+query1.fieldbyname('pdn').value+' - '+frmvoyage.query1.fieldbyname('voyn').value;
      frmcarte_mail.memo1.lines.clear;
      frmcarte_mail.memo1.lines.add('Reason Code : '+query1.fieldbyname('rcode').value);
      frmcarte_mail.memo1.lines.add(' ');
      frmcarte_mail.memo1.lines.add(f1+' - Factory');
      frmcarte_mail.memo1.lines.add(h1+' - PH HK');
      frmcarte_mail.memo1.lines.add(s1+' - Supplier');
      frmcarte_mail.memo1.lines.add(b1+' - Customer');
      frmcarte_mail.memo1.lines.add(' ');
      frmcarte_mail.memo1.lines.add('Estimate Airfreight expense : HK$ '+e1);
      frmcarte_mail.show;
  end else showmessage('No authority!');
end;

procedure Tfrmairrequestform.BitBtn7Click(Sender: TObject);
var
  r1:boolean;
  str1,str2,tplant,grp:string;
  f1,h1,s1,b1,e1:string;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select air_fty from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('air_fty').isnull then r1:=fieldbyname('air_fty').value else r1:=false;
  end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct a.tplant,b.grp from tbl_pdn_m a,cust_exfty b where a.customer=b.pgrp and a.seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='';
      if not fieldbyname('grp').isnull then grp:=fieldbyname('grp').value else grp:='';
    end;
  if r1 then begin
    if bitbtn6.Enabled=false then begin
      {
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='update tbl_pdn_shmchgreason set fty_signed=:x1 where seq=:x2 and seq1=:x3';
        params[0].asstring:=frmmain.ComboBox1.text;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asinteger:=query1.fieldbyname('seq1').value;
        execute;
      end;
      }
      str1:='update tbl_pdn_shmchgreason set fty_signed='''+frmmain.combobox1.text+''' where seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select toaddress,ccaddress from tbl_airrequest_email where fty=:x1 and stg=2 and usr=:x2 and grp=:x3';
        params[0].asstring:=frmpdn.Query1.fieldbyname('tplant').value;
        params[1].asstring:=frmmain.ComboBox1.text;
        params[2].asstring:=grp;
        open;
      end;
      if query1.fieldbyname('isconfirmed').value=true then begin
        f1:=formatfloat('0.00%',query1.fieldbyname('per_factory_conf').value);
        h1:=formatfloat('0.00%',query1.fieldbyname('per_headoffice_conf').value);
        s1:=formatfloat('0.00%',query1.fieldbyname('per_supplier_conf').value);
        b1:=formatfloat('0.00%',query1.fieldbyname('per_buyer_conf').value);
      end else begin
        f1:=formatfloat('0.00%',query1.fieldbyname('per_factory').value);
        h1:=formatfloat('0.00%',query1.fieldbyname('per_headoffice').value);
        s1:=formatfloat('0.00%',query1.fieldbyname('per_supplier').value);
        b1:=formatfloat('0.00%',query1.fieldbyname('per_buyer').value);
      end;
      {
      str1:=extractfiledir(application.exename);
      str2:='"2'+tplant+':'+query1.fieldbyname('pdn').value+'" "'+frmvoyage.query1.fieldbyname('voyn').value+'" "'+query1.fieldbyname('rcode').value+'" "'+f1+'" "'+h1+'" "'+s1+'" "'+b1
      +'" "'+formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)+'" "'+query2.fieldbyname('toaddress').value+'" "'+query2.fieldbyname('ccaddress').value+'"';
      shellexecute(0,'open',pchar(str1+'\dotnet\Air Request Form Notification.exe'),pchar(str2),nil,sw_show);
      }
      if not query1.fieldbyname('estttlfrtcost').isnull then e1:=formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)
      else e1:='0.00';
      if frmcarte_mail=nil then frmcarte_mail:=tfrmcarte_mail.create(nil);
      frmcarte_mail.edit3.text:=query2.fieldbyname('toaddress').value;
      frmcarte_mail.edit4.text:=query2.fieldbyname('ccaddress').value;
      frmcarte_mail.edit5.text:='Factory GM approval completed, request for HKGM approval of Air-freight Request Form -  PDN#  '+tplant+':'+query1.fieldbyname('pdn').value+' - '+frmvoyage.query1.fieldbyname('voyn').value;
      frmcarte_mail.memo1.lines.clear;
      frmcarte_mail.memo1.lines.add('Reason Code : '+query1.fieldbyname('rcode').value);
      frmcarte_mail.memo1.lines.add(' ');
      frmcarte_mail.memo1.lines.add(f1+' - Factory');
      frmcarte_mail.memo1.lines.add(h1+' - PH HK');
      frmcarte_mail.memo1.lines.add(s1+' - Supplier');
      frmcarte_mail.memo1.lines.add(b1+' - Customer');
      frmcarte_mail.memo1.lines.add(' ');
      frmcarte_mail.memo1.lines.add('Estimate Airfreight expense : HK$ '+e1);
      frmcarte_mail.show;
    end else showmessage('Please wait for HKOA manager to approve it first!');
  end else showmessage('No authority!');
end;

procedure Tfrmairrequestform.BitBtn8Click(Sender: TObject);
var
  r1:boolean;
  str1,str2,tplant,grp:string;
  f1,h1,s1,b1,e1:string;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select air_hk from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('air_hk').isnull then r1:=fieldbyname('air_hk').value else r1:=false;
  end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct a.tplant,b.grp from tbl_pdn_m a,cust_exfty b where a.customer=b.pgrp and a.seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='';
      if not fieldbyname('grp').isnull then grp:=fieldbyname('grp').value else grp:='';
    end;
  if r1 then begin
    if bitbtn7.enabled=false then begin
      {
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='update tbl_pdn_shmchgreason set hk_signed=:x1 where seq=:x2 and seq1=:x3';
        params[0].asstring:=frmmain.ComboBox1.text;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asinteger:=query1.fieldbyname('seq1').value;
        execute;
      end;
      }
      str1:='update tbl_pdn_shmchgreason set hk_signed='''+frmmain.combobox1.text+''' where seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select toaddress,ccaddress from tbl_airrequest_email where fty=:x1 and stg=3 and usr=:x2 and grp=:x3';
        params[0].asstring:=frmpdn.Query1.fieldbyname('tplant').value;
        params[1].asstring:=frmmain.ComboBox1.text;
        params[2].asstring:=grp;
        open;
      end;
      if query1.fieldbyname('isconfirmed').value=true then begin
        f1:=formatfloat('0.00%',query1.fieldbyname('per_factory_conf').value);
        h1:=formatfloat('0.00%',query1.fieldbyname('per_headoffice_conf').value);
        s1:=formatfloat('0.00%',query1.fieldbyname('per_supplier_conf').value);
        b1:=formatfloat('0.00%',query1.fieldbyname('per_buyer_conf').value);
      end else begin
        f1:=formatfloat('0.00%',query1.fieldbyname('per_factory').value);
        h1:=formatfloat('0.00%',query1.fieldbyname('per_headoffice').value);
        s1:=formatfloat('0.00%',query1.fieldbyname('per_supplier').value);
        b1:=formatfloat('0.00%',query1.fieldbyname('per_buyer').value);
      end;
      {
      str1:=extractfiledir(application.exename);
      str2:='"3'+tplant+':'+query1.fieldbyname('pdn').value+'" "'+frmvoyage.query1.fieldbyname('voyn').value+'" "'+query1.fieldbyname('rcode').value+'" "'+f1+'" "'+h1+'" "'+s1+'" "'+b1
      +'" "'+formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)+'" "'+query2.fieldbyname('toaddress').value+'" "'+query2.fieldbyname('ccaddress').value+'"';
      shellexecute(0,'open',pchar(str1+'\dotnet\Air Request Form Notification.exe'),pchar(str2),nil,sw_show);
      }
      if not query1.fieldbyname('estttlfrtcost').isnull then e1:=formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)
      else e1:='0.00';
      if frmcarte_mail=nil then frmcarte_mail:=tfrmcarte_mail.create(nil);
      frmcarte_mail.edit3.text:=query2.fieldbyname('toaddress').value;
      frmcarte_mail.edit4.text:=query2.fieldbyname('ccaddress').value;
      frmcarte_mail.edit5.text:='Completed notice on the Air-freight Request Form -  PDN#  '+tplant+':'+query1.fieldbyname('pdn').value+' - '+frmvoyage.query1.fieldbyname('voyn').value;
      frmcarte_mail.memo1.lines.clear;
      frmcarte_mail.memo1.lines.add('Reason Code : '+query1.fieldbyname('rcode').value);
      frmcarte_mail.memo1.lines.add(' ');
      frmcarte_mail.memo1.lines.add(f1+' - Factory');
      frmcarte_mail.memo1.lines.add(h1+' - PH HK');
      frmcarte_mail.memo1.lines.add(s1+' - Supplier');
      frmcarte_mail.memo1.lines.add(b1+' - Customer');
      frmcarte_mail.memo1.lines.add(' ');
      frmcarte_mail.memo1.lines.add('Estimate Airfreight expense : HK$ '+e1);
      frmcarte_mail.show;
    end else showmessage('Please wait for Fty GM to approve it first!');
  end else showmessage('No authority!');
end;

procedure Tfrmairrequestform.Query3AfterOpen(DataSet: TDataSet);
begin
  if not query1.fieldbyname('oa_signed').isnull then bitbtn6.Enabled:=false
  else bitbtn6.Enabled:=true;
  if not query1.fieldbyname('fty_signed').isnull then bitbtn7.Enabled:=false
  else bitbtn7.Enabled:=true;
  if not query1.fieldbyname('hk_signed').isnull then bitbtn8.Enabled:=false
  else bitbtn8.Enabled:=true;
end;

procedure Tfrmairrequestform.BitBtn9Click(Sender: TObject);
var
  str1,str2,grp,tplant:string;
  f1,h1,s1,b1,e1:string;
begin
    //
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct a.grp from cust_exfty a,tbl_pdn_m b where a.pgrp=b.customer and b.seq=:x1';
      params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('grp').IsNull then grp:=fieldbyname('grp').value else grp:='0';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select tplant from tbl_pdn_m where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      //if frmpdn.query1.fieldbyname('tplant').value<>'KB' then
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select toaddress,ccaddress from tbl_airrequest_email where fty=:x1 and stg=1 and usr=:x3';
      //if frmpdn.query1.fieldbyname('tplant').value<>'KB' then commandtext:=commandtext+' and usr=:x3';
      params[0].asstring:=frmpdn.Query1.fieldbyname('tplant').value;
      //if frmpdn.Query1.fieldbyname('tplant').value<>'KB' then begin
        if grp='A' then params[1].asstring:='DICKY'
        else if grp='B' then params[1].asstring:='MANDYL'
        else if grp='C' then params[1].asstring:='MONARCH'
        else if grp='D' then params[1].asstring:='DICKHO';
      //end;
      open;
    end;
    if query1.fieldbyname('isconfirmed').value=true then begin
      f1:=formatfloat('0.00%',query1.fieldbyname('per_factory_conf').value);
      h1:=formatfloat('0.00%',query1.fieldbyname('per_headoffice_conf').value);
      s1:=formatfloat('0.00%',query1.fieldbyname('per_supplier_conf').value);
      b1:=formatfloat('0.00%',query1.fieldbyname('per_buyer_conf').value);
    end else begin
      f1:=formatfloat('0.00%',query1.fieldbyname('per_factory').value);
      h1:=formatfloat('0.00%',query1.fieldbyname('per_headoffice').value);
      s1:=formatfloat('0.00%',query1.fieldbyname('per_supplier').value);
      b1:=formatfloat('0.00%',query1.fieldbyname('per_buyer').value);
    end;
    {
    str1:=extractfiledir(application.exename);
    str2:='"0'+tplant+':'+query1.fieldbyname('pdn').value+'" "'+frmvoyage.query1.fieldbyname('voyn').value+'" "'+query1.fieldbyname('rcode').value+'" "'+f1+'" "'+h1+'" "'+s1+'" "'+b1
    +'" "'+formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)+'" "'+query2.fieldbyname('toaddress').value+'" "'+query2.fieldbyname('ccaddress').value+'"';
    shellexecute(0,'open',pchar(str1+'\dotnet\Air Request Form Notification.exe'),pchar(str2),nil,sw_show);
    }
    if not query1.fieldbyname('estttlfrtcost').isnull then e1:=formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)
    else e1:='0.00';
      if frmcarte_mail=nil then frmcarte_mail:=tfrmcarte_mail.create(nil);
      frmcarte_mail.edit3.text:=query2.fieldbyname('toaddress').value;
      frmcarte_mail.edit4.text:=query2.fieldbyname('ccaddress').value;
      frmcarte_mail.edit5.text:='Request for Approval of Air-freight Request Form -  PDN#  '+tplant+':'+query1.fieldbyname('pdn').value+' - '+frmvoyage.query1.fieldbyname('voyn').value;
      frmcarte_mail.memo1.lines.clear;
      frmcarte_mail.memo1.lines.add('Reason Code : '+query1.fieldbyname('rcode').value);
      frmcarte_mail.memo1.lines.add(' ');
      frmcarte_mail.memo1.lines.add(f1+' - Factory');
      frmcarte_mail.memo1.lines.add(h1+' - PH HK');
      frmcarte_mail.memo1.lines.add(s1+' - Supplier');
      frmcarte_mail.memo1.lines.add(b1+' - Customer');
      frmcarte_mail.memo1.lines.add(' ');
      frmcarte_mail.memo1.lines.add('Estimate Airfreight expense : HK$ '+e1);
      frmcarte_mail.show;
end;

procedure Tfrmairrequestform.SpeedButton2Click(Sender: TObject);
begin
  if frmairrequest1=nil then frmairrequest1:=tfrmairrequest1.Create(nil);
  frmairrequest1.Show;
end;

end.
