unit trsummary_1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, myChkBox, ppParameter, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, DB, DBClient, StdCtrls, ExtCtrls, Buttons, ppViewr;

type
  Tfrmtrsummary_1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rg01: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel53: TppLabel;
    title002: TppLabel;
    ppLabel86: TppLabel;
    ppDBText45: TppDBText;
    ppLabel87: TppLabel;
    ppDBText46: TppDBText;
    ppLabel90: TppLabel;
    ppDBText51: TppDBText;
    ppLabel91: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel92: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppShape5: TppShape;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLine93: TppLine;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine94: TppLine;
    ppLine97: TppLine;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel158: TppLabel;
    ppLabel177: TppLabel;
    ppLabel181: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel89: TppLabel;
    ppDBText50: TppDBText;
    ppLabel45: TppLabel;
    ppDBText28: TppDBText;
    ppDBText103: TppDBText;
    ppLabel46: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape6: TppShape;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText58: TppDBText;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine148: TppLine;
    ppLine155: TppLine;
    ppLine182: TppLine;
    ppLine189: TppLine;
    ppLine215: TppLine;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel210: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppShape4: TppShape;
    ppMemo1: TppMemo;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppParameterList3: TppParameterList;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    title001: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine15: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine25: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLabel43: TppLabel;
    ttlwo: TppLabel;
    ppLabel11: TppLabel;
    ppLabel85: TppLabel;
    ppLabel88: TppLabel;
    ppLabel94: TppLabel;
    ppLabel103: TppLabel;
    ppLine90: TppLine;
    ppLabel104: TppLabel;
    ppLine126: TppLine;
    ppLabel124: TppLabel;
    ppLine128: TppLine;
    ppLabel126: TppLabel;
    ppLine130: TppLine;
    ppLabel127: TppLabel;
    ppLine134: TppLine;
    ppLabel129: TppLabel;
    ppLine136: TppLine;
    ppLine138: TppLine;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLine3: TppLine;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel27: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel39: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel37: TppLabel;
    ppLine33: TppLine;
    ppLabel62: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine111: TppLine;
    ppDBText47: TppDBText;
    ppLine127: TppLine;
    ppDBText48: TppDBText;
    ppLine129: TppLine;
    ppLine131: TppLine;
    ppDBText49: TppDBText;
    ppDBText6: TppDBText;
    ppLine4: TppLine;
    ppDBText27: TppDBText;
    ppDBText7: TppDBText;
    ppDBText16: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText29: TppDBText;
    ppLine26: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText19: TppDBText;
    ppLine34: TppLine;
    ppDBText30: TppDBText;
    cmp401: TmyCheckBox;
    ppLine21: TppLine;
    cmp400: TmyCheckBox;
    ppLine22: TppLine;
    cmp302: TmyCheckBox;
    ppLine35: TppLine;
    cmp201: TmyCheckBox;
    ppLine36: TppLine;
    cmps03: TmyCheckBox;
    ppLine37: TppLine;
    cmps02: TmyCheckBox;
    ppLine38: TppLine;
    cmps01: TmyCheckBox;
    ppLine39: TppLine;
    cmp001: TmyCheckBox;
    ppLine40: TppLine;
    cmp002: TmyCheckBox;
    ppLine41: TppLine;
    ppLine42: TppLine;
    cmp402: TmyCheckBox;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel41: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppMemo2: TppMemo;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppParameterList1: TppParameterList;
    ppLabel9: TppLabel;
    ttlloss: TppLabel;
    cmpr01: TmyCheckBox;
    cmpr02: TmyCheckBox;
    cmpr03: TmyCheckBox;
    cmpr04: TmyCheckBox;
    cmpr05: TmyCheckBox;
    cmpr06: TmyCheckBox;
    cmpr07: TmyCheckBox;
    cmpr08: TmyCheckBox;
    myCheckBox10: TmyCheckBox;
    myCheckBox11: TmyCheckBox;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppDBCalc27: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel40: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppReport3: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel136: TppLabel;
    title003: TppLabel;
    ppLabel138: TppLabel;
    ppDBText69: TppDBText;
    ppLabel139: TppLabel;
    ppDBText70: TppDBText;
    ppLabel142: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel143: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppShape7: TppShape;
    ppLabel144: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLine159: TppLine;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel176: TppLabel;
    pqty001: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel182: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel93: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppDetailBand4: TppDetailBand;
    ppShape8: TppShape;
    ppDBText73: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLine191: TppLine;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    cmpp01: TmyCheckBox;
    cmpp02: TmyCheckBox;
    cmpp04: TmyCheckBox;
    cmpp05: TmyCheckBox;
    cmpp06: TmyCheckBox;
    cmpp07: TmyCheckBox;
    cmpp08: TmyCheckBox;
    myCheckBox8: TmyCheckBox;
    myCheckBox9: TmyCheckBox;
    cmpp03: TmyCheckBox;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText44: TppDBText;
    ppDBText52: TppDBText;
    ppDBText57: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText74: TppDBText;
    ppDBText82: TppDBText;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine135: TppLine;
    ppLine137: TppLine;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel195: TppLabel;
    ppDBCalc34: TppDBCalc;
    ppShape9: TppShape;
    ppMemo3: TppMemo;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppParameterList2: TppParameterList;
    ppLabel122: TppLabel;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLabel123: TppLabel;
    ppDBText83: TppDBText;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtrsummary_1: Tfrmtrsummary_1;

implementation

uses mainformu, worksheet, achievingformu, lwoformu, trsummary1formu,
  trsummary2formu;

{$R *.dfm}

procedure Tfrmtrsummary_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmtrsummary_1:=nil;
end;

procedure Tfrmtrsummary_1.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp from tbl_tmp_transit where tm=:x1 and cmp=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp').isnull then cmp001.Checked:=false else cmp001.Checked:=true;
  end;
  //{
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp1 from tbl_tmp_transit where tm=:x1 and cmp1=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp1').isnull then cmp002.Checked:=false else cmp002.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmps from tbl_tmp_transit where tm=:x1 and cmps=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmps').isnull then cmps03.Checked:=false else cmps03.Checked:=true;
  end;
  //}
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp2 from tbl_tmp_transit where tm=:x1 and cmp2=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp2').isnull then cmp201.Checked:=false else cmp201.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp3 from tbl_tmp_transit where tm=:x1 and cmp3=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp3').isnull then begin
      //cmp301.Checked:=false;
      cmp302.Checked:=false;
    end else begin
      //cmp301.Checked:=true;
      cmp302.Checked:=true;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp4 from tbl_tmp_transit where tm=:x1 and cmp4=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp4').isnull then cmp400.Checked:=false else cmp400.Checked:=true;
    if not fieldbyname('cmp4').isnull then cmp401.Checked:=false else cmp401.Checked:=true;
  end;
  //{
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmpi from tbl_tmp_transit where tm=:x1 and cmpi=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmpi').isnull then begin
      frmtrsummary_1.ttlloss.Caption:='-';
      cmp402.Checked:=false;
    end else begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select sum(tiqty-pqty) as q2 from tbl_tmp_transit where tm=:x1 and j2_job='''+frmtrsummary_1.edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+frmtrsummary_1.edit4.text+'''';
        params[0].asdatetime:=query3.fieldbyname('tm').value;
        open;
        //if not fieldbyname('q1').isnull then frmtrsummary_1.ttlwo.Caption:=fieldbyname('q1').AsString else frmtrsummary_1.ttlwo.Caption:='0';
        if not fieldbyname('q2').isnull then ttlloss.Caption:=fieldbyname('q2').AsString else ttlloss.Caption:='0';
      end;
      cmp402.Checked:=true;
    end;
    //cmpi01.Checked:=false else cmpi01.Checked:=true;
  end;
  //}
end;

procedure Tfrmtrsummary_1.ppDetailBand3BeforePrint(Sender: TObject);
begin
  cmpr01.checked:=query3.fieldbyname('cmp').value;
  cmpr02.checked:=query3.fieldbyname('cmp1').value;
  cmpr03.checked:=query3.fieldbyname('cmps').value;
  cmpr04.checked:=query3.fieldbyname('cmp2').value;
  cmpr05.checked:=query3.fieldbyname('cmp3').value;
  cmpr06.checked:=query3.fieldbyname('cmp4').value;
  cmpr07.checked:=query3.fieldbyname('cmp4').value;
  cmpr08.checked:=query3.fieldbyname('cmpi').value;
end;

procedure Tfrmtrsummary_1.ppDetailBand4BeforePrint(Sender: TObject);
begin
  cmpp01.checked:=query3.fieldbyname('cmp').value;
  cmpp02.checked:=query3.fieldbyname('cmp1').value;
  cmpp03.checked:=query3.fieldbyname('cmps').value;
  cmpp04.checked:=query3.fieldbyname('cmp2').value;
  cmpp05.checked:=query3.fieldbyname('cmp3').value;
  cmpp06.checked:=query3.fieldbyname('cmp4').value;
  cmpp07.checked:=query3.fieldbyname('cmp4').value;
  cmpp08.checked:=query3.fieldbyname('cmpi').value;
end;

procedure Tfrmtrsummary_1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtrsummary_1.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtrsummary_1.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
