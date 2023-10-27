unit Carte_WeeklyprintoutFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, RzBckgnd, ppCtrls, ppParameter, ppBands,
  ppClass, ppReport, ppSubRpt, ppMemo, ppStrtch, ppRichTx, ppVar, ppPrnabl,
  ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB, ADODB, ppViewr;

type
  TfrmCarte_Weeklyprintout = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    chk_ao1: TCheckBox;
    chk_ao2: TCheckBox;
    chk_ao3: TCheckBox;
    chk_bo1: TCheckBox;
    chk_bo2: TCheckBox;
    chk_bo3: TCheckBox;
    chk_do1: TCheckBox;
    chk_do2: TCheckBox;
    chk_do3: TCheckBox;
    chk_xo1: TCheckBox;
    chk_xo2: TCheckBox;
    chk_xo3: TCheckBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    chk_abs1: TCheckBox;
    chk_abs2: TCheckBox;
    chk_abs3: TCheckBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    chk_abn1: TCheckBox;
    chk_abn2: TCheckBox;
    chk_abn3: TCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    chk_ac1: TCheckBox;
    chk_ac2: TCheckBox;
    chk_bc1: TCheckBox;
    chk_bc2: TCheckBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    RzBackground1: TRzBackground;
    Shape20: TShape;
    Label22: TLabel;
    Label28: TLabel;
    chk_ad1: TCheckBox;
    chk_bd1: TCheckBox;
    Shape21: TShape;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Shape22: TShape;
    ADODataSet1: TADODataSet;
    ADOQuery2: TADOQuery;
    ADOQuery1: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape36: TppShape;
    ppShape35: TppShape;
    ppShape28: TppShape;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    mex004: TppLabel;
    ppLabel23: TppLabel;
    ppLine6: TppLine;
    mex006: TppLabel;
    mex008: TppLabel;
    ppLine10: TppLine;
    ppLabel28: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLine24: TppLine;
    ppLine26: TppLine;
    ppLine31: TppLine;
    ppLine40: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine50: TppLine;
    ppLine52: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    sub002: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine23: TppLine;
    mex001: TppLabel;
    mex002: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    mex003: TppLabel;
    ppLabel30: TppLabel;
    mex005: TppLabel;
    mex007: TppLabel;
    ppLine107: TppLine;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine176: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    rich0201: TppRichText;
    rich0202: TppRichText;
    rich0203: TppRichText;
    rich0204: TppRichText;
    ppLine48: TppLine;
    ppLabel20: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLine179: TppLine;
    ppDetailBand1: TppDetailBand;
    oskey002: TppDBText;
    mexd001: TppDBText;
    mexd002: TppDBText;
    mexd003: TppDBText;
    mexd004: TppDBText;
    ppLine9: TppLine;
    mexd005: TppDBText;
    mexd006: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine11: TppLine;
    ppDBText21: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLine12: TppLine;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLine25: TppLine;
    ppLine27: TppLine;
    ppLine30: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine45: TppLine;
    ppLine47: TppLine;
    ppLine51: TppLine;
    ppLine54: TppLine;
    ppDBText2: TppDBText;
    ppLine13: TppLine;
    ppDBText3: TppDBText;
    ppLine4: TppLine;
    ppDBText4: TppDBText;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText23: TppDBText;
    ppLine22: TppLine;
    ppLine28: TppLine;
    ppLine108: TppLine;
    ppDBText35: TppDBText;
    ppLine112: TppLine;
    ppDBText48: TppDBText;
    ppLine177: TppLine;
    ppDBText52: TppDBText;
    ppLine49: TppLine;
    ppDBText53: TppDBText;
    ppDBText18: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape30: TppShape;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLabel93: TppLabel;
    ppLine167: TppLine;
    projectno002: TppLabel;
    custpo002: TppLabel;
    custstyle002: TppLabel;
    custcolor002: TppLabel;
    ppLine178: TppLine;
    keycode002: TppLabel;
    qty002: TppLabel;
    ppLine162: TppLine;
    ppLabel126: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine8: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine7: TppLine;
    ppParameterList1: TppParameterList;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape10: TppShape;
    ppShape27: TppShape;
    ppShape19: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape23: TppShape;
    ppShape22: TppShape;
    ppShape21: TppShape;
    ppShape20: TppShape;
    ppShape18: TppShape;
    ppShape17: TppShape;
    ppShape16: TppShape;
    ppShape15: TppShape;
    ppShape14: TppShape;
    ppShape13: TppShape;
    ppShape12: TppShape;
    ppShape11: TppShape;
    ppLabel22: TppLabel;
    ppLabel33: TppLabel;
    ppLabel37: TppLabel;
    mex101: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    mex102: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    mex104: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    mex106: TppLabel;
    mex108: TppLabel;
    ppLabel61: TppLabel;
    mex103: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    mex105: TppLabel;
    mex107: TppLabel;
    ppLabel67: TppLabel;
    ppLabel71: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLine29: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine53: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine64: TppLine;
    ppLine67: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine59: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine60: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLine61: TppLine;
    ppLabel75: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel74: TppLabel;
    ppLabel76: TppLabel;
    ppLine65: TppLine;
    ppLabel77: TppLabel;
    ppLine66: TppLine;
    ppLine68: TppLine;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLine69: TppLine;
    ppLabel87: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLabel95: TppLabel;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel99: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine79: TppLine;
    ppLabel34: TppLabel;
    ppLine80: TppLine;
    ppLabel53: TppLabel;
    ppLabel88: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLine105: TppLine;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLine110: TppLine;
    ex_adt01: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ex_adt02: TppLabel;
    ppLine144: TppLine;
    ppLabel1: TppLabel;
    title002: TppLabel;
    ppRichText1: TppRichText;
    ppDetailBand2: TppDetailBand;
    ppShape26: TppShape;
    oskey001: TppDBText;
    ppLine76: TppLine;
    ppDBText15: TppDBText;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppDBText12: TppDBText;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    mexd101: TppDBText;
    mexd102: TppDBText;
    mexd103: TppDBText;
    mexd104: TppDBText;
    mexd105: TppDBText;
    mexd106: TppDBText;
    ppLine106: TppLine;
    he001: TppLabel;
    pp001: TppLabel;
    ppDBText25: TppDBText;
    ppLine109: TppLine;
    ppDBText46: TppDBText;
    ppLine111: TppLine;
    ex_adt03: TppDBText;
    raw001: TppLabel;
    ppLine145: TppLine;
    ppDBText9: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape29: TppShape;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppDBCalc1: TppDBCalc;
    prj001: TppLabel;
    custpo001: TppLabel;
    wo001: TppLabel;
    custstyle001: TppLabel;
    sp_app001: TppLabel;
    custcolor001: TppLabel;
    phcolor001: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    m_start001: TppLabel;
    fwdt_o001: TppLabel;
    fwdt_a001: TppLabel;
    ex_o001: TppLabel;
    act_item001: TppLabel;
    ppLabel12: TppLabel;
    prod_site001: TppLabel;
    ppLabel91: TppLabel;
    ppLine143: TppLine;
    ppLine146: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppLabel98: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppShape31: TppShape;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppDetailBand3: TppDetailBand;
    ppShape32: TppShape;
    ppDBText1: TppDBText;
    ppDBText27: TppDBText;
    ppDBText47: TppDBText;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppParameterList2: TppParameterList;
    checkbox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Weeklyprintout: TfrmCarte_Weeklyprintout;
  rpt2_chk:string;

implementation

uses Carte_MainFormu;

{$R *.dfm}

procedure TfrmCarte_Weeklyprintout.BitBtn1Click(Sender: TObject);
begin
  chk_ao1.checked:=true; chk_ao2.checked:=true; chk_ao3.checked:=true;
  chk_abs1.checked:=true; chk_abs2.checked:=true; chk_abs3.checked:=true;
  chk_abn1.checked:=true; chk_abn2.checked:=true; chk_abn3.checked:=true;
  chk_ac1.checked:=true; chk_ac2.checked:=true; chk_ad1.checked:=true;

  chk_bo1.checked:=true; chk_bo2.checked:=true; chk_bo3.checked:=true;
  chk_bc1.checked:=true; chk_bc2.checked:=true; chk_bd1.checked:=true;

  chk_do1.checked:=true; chk_do2.checked:=true; chk_do3.checked:=true;

  chk_xo1.checked:=true; chk_xo2.checked:=true; chk_xo3.checked:=true;
end;

procedure TfrmCarte_Weeklyprintout.BitBtn2Click(Sender: TObject);
begin
  chk_ao1.checked:=false; chk_ao2.checked:=false; chk_ao3.checked:=false;
  chk_abs1.checked:=false; chk_abs2.checked:=false; chk_abs3.checked:=false;
  chk_abn1.checked:=false; chk_abn2.checked:=false; chk_abn3.checked:=false;
  chk_ac1.checked:=false; chk_ac2.checked:=false; chk_ad1.checked:=false;

  chk_bo1.checked:=false; chk_bo2.checked:=false; chk_bo3.checked:=false;
  chk_bc1.checked:=false; chk_bc2.checked:=false; chk_bd1.checked:=false;

  chk_do1.checked:=false; chk_do2.checked:=false; chk_do3.checked:=false;

  chk_xo1.checked:=false; chk_xo2.checked:=false; chk_xo3.checked:=false;
end;

procedure TfrmCarte_Weeklyprintout.BitBtn3Click(Sender: TObject);
var
  rmks:string;
begin
  if (chk_ao1.checked) or (chk_ao2.checked) or (chk_ao3.checked)
  or (chk_bo1.checked) or (chk_bo2.checked) or (chk_bo3.checked)
  or (chk_abs1.checked) or (chk_abs2.checked) or (chk_abs3.checked)
  or (chk_abn1.checked) or (chk_abn2.checked) or (chk_abn3.checked)
  or (chk_ac1.checked) or (chk_ac2.checked) or (chk_ad1.checked)
  or (chk_bc1.checked) or (chk_bc2.checked) or (chk_bd1.checked)
  or (chk_do1.checked) or (chk_do2.checked) or (chk_do3.checked)
  or (chk_xo1.checked) or (chk_xo2.checked) or (chk_xo3.checked)
  then begin
    rpt2_chk:='';
    with adoquery4 do begin
      close;
      sql.text:='select * from tbl_carte_actitem order by act_grp,code';
      open;
    end;
    with adoquery1 do begin
      close;
      sql.text:='select marks from tbl_carte_ps';
      open;
      rmks:=fieldbyname('marks').value;
    end;
    with adoquery1 do begin
      close;
      sql.text:='update tbl_carte_sopc3 set act_item30=act_item3';
      execsql;
      close;
      sql.text:='update tbl_carte_sopc3 set act_item30=act_item3+''*'' where act_cmp3=1';
      execsql;
    end;
    pplabel126.caption:=rmks;
    pplabel12.caption:=rmks;
    //Customer group A:
    if chk_ao1.checked then begin
      rpt2_chk:='ao1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where div like ''DA%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and workorderno>''''';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[Outstanding Orders] / 客組別: DA';
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN)';
          ex_adt03.datafield:='act_cmpdt';
          mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
          mex105.visible:=true;
          mex106.visible:=true;
          mex107.visible:=true;
          mex108.visible:=true;
          mexd101.datafield:='mex_os';
          mexd102.datafield:='mex_rs';
          mexd103.datafield:='mex_ls';
          mexd104.visible:=true;
          mexd105.visible:=true;
          mexd106.visible:=true;
          ppReport2.print;
        end;
      end;
    end;
    if chk_ao2.checked then begin
      rpt2_chk:='ao2';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and a.workorderno>''''';
        sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DA%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Outstanding Orders] / 客組別: DA';
          rich0201.visible:=true;
          rich0202.visible:=false;
          rich0203.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    if chk_ao3.checked then begin
      rpt2_chk:='ao3';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and a.workorderno>''''';
        sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.div like ''DA%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Outstanding Orders] / 客組別: DA';
          rich0203.visible:=true;
          rich0201.visible:=false;
          rich0202.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    //Customer group B:
    if chk_bo1.checked then begin
      rpt2_chk:='bo1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where div like ''DB%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and workorderno>''''';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[Outstanding Orders] / 客組別: DB';
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN)';
          ex_adt03.datafield:='act_cmpdt';
          mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
          mex105.visible:=true;
          mex106.visible:=true;
          mex107.visible:=true;
          mex108.visible:=true;
          mexd101.datafield:='mex_os';
          mexd102.datafield:='mex_rs';
          mexd103.datafield:='mex_ls';
          mexd104.visible:=true;
          mexd105.visible:=true;
          mexd106.visible:=true;
          ppReport2.print;
        end;
      end;
    end;
    if chk_bo2.checked then begin
      rpt2_chk:='bo2';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and a.workorderno>''''';
        sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DB%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Outstanding Orders] / 客組別: DB';
          rich0201.visible:=true;
          rich0202.visible:=false;
          rich0203.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    if chk_bo3.checked then begin
      rpt2_chk:='bo3';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and a.workorderno>''''';
        sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.div like ''DB%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Outstanding Orders] / 客組別: DB';
          rich0203.visible:=true;
          rich0201.visible:=false;
          rich0202.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;

    //Sample:
    if chk_abs1.checked then begin
      rpt2_chk:='abs1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where qty1_sp=''*'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[Sample]';
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN)';
          ex_adt03.datafield:='act_cmpdt';
          mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
          mex105.visible:=true;
          mex106.visible:=true;
          mex107.visible:=true;
          mex108.visible:=true;
          mexd101.datafield:='mex_os';
          mexd102.datafield:='mex_rs';
          mexd103.datafield:='mex_ls';
          mexd104.visible:=true;
          mexd105.visible:=true;
          mexd106.visible:=true;
          ppReport2.print;
        end;
      end;
    end;
    if chk_abs2.checked then begin
      rpt2_chk:='abs2';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i';
        sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.qty1_sp=''*'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Sample]';
          rich0201.visible:=true;
          rich0202.visible:=false;
          rich0203.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    if chk_abs3.checked then begin
      rpt2_chk:='abs3';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i';
        sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.qty1_sp=''*'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Sample]';
          rich0203.visible:=true;
          rich0201.visible:=false;
          rich0202.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    //New Orders:
    if chk_abn1.checked then begin
      rpt2_chk:='abn1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where ((workorderno is null) or (workorderno='''')) and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[New Orders]';
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN)';
          ex_adt03.datafield:='act_cmpdt';
          mex101.caption:='備齊 - 依計劃送料期';
          mex102.visible:=false;
          mex103.visible:=false;
          mex104.visible:=false;
          mex105.visible:=false;
          mex106.visible:=false;
          mex107.visible:=false;
          mex108.visible:=false;
          mexd101.datafield:='mex_od';
          mexd102.datafield:='mex_rd';
          mexd103.datafield:='mex_ld';
          mexd104.visible:=false;
          mexd105.visible:=false;
          mexd106.visible:=false;
          ppReport2.print;
        end;
      end;
    end;
    if chk_abn2.checked then begin
      rpt2_chk:='abn2';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i';
        sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and ((a.workorderno is null) or (a.workorderno='''')) and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[New Orders]';
          rich0201.visible:=true;
          rich0202.visible:=false;
          rich0203.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='備齊 - 依計劃送料期';
          mex002.visible:=false;
          mex003.visible:=false;
          mex004.visible:=false;
          mex005.visible:=false;
          mex006.visible:=false;
          mex007.visible:=false;
          mex008.visible:=false;
          mexd001.datafield:='mex_od';
          mexd002.datafield:='mex_rd';
          mexd003.datafield:='mex_ld';
          mexd004.visible:=false;
          mexd005.visible:=false;
          mexd006.visible:=false;
          ppReport1.print;
        end;
      end;
    end;
    if chk_abn3.checked then begin
      rpt2_chk:='abn3';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i';
        sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and ((a.workorderno is null) or (a.workorderno='''')) and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[New Orders]';
          rich0203.visible:=true;
          rich0201.visible:=false;
          rich0202.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='備齊 - 依計劃送料期';
          mex002.visible:=false;
          mex003.visible:=false;
          mex004.visible:=false;
          mex005.visible:=false;
          mex006.visible:=false;
          mex007.visible:=false;
          mex008.visible:=false;
          mexd001.datafield:='mex_od';
          mexd002.datafield:='mex_rd';
          mexd003.datafield:='mex_ld';
          mexd004.visible:=false;
          mexd005.visible:=false;
          mexd006.visible:=false;
          ppReport1.print;
        end;
      end;
    end;

    //Cxl Orders DA:
    if chk_ac1.checked then begin
      rpt2_chk:='ac1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where div like ''DA%'' and ord_cancel1=''Y''';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[Cxl Orders] / 客組別: DA';
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN)';
          ex_adt03.datafield:='act_cmpdt';
          mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
          mex105.visible:=true;
          mex106.visible:=true;
          mex107.visible:=true;
          mex108.visible:=true;
          mexd101.datafield:='mex_os';
          mexd102.datafield:='mex_rs';
          mexd103.datafield:='mex_ls';
          mexd104.visible:=true;
          mexd105.visible:=true;
          mexd106.visible:=true;
          ppReport2.print;
        end;
      end;
    end;
    if chk_ac2.checked then begin
      rpt2_chk:='ac2';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i';
        sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DA%'' and a.ord_cancel1=''Y''';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Cxl Orders] / 客組別: DA';
          rich0201.visible:=true;
          rich0202.visible:=false;
          rich0203.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    //Cxl Orders DB:
    if chk_bc1.checked then begin
      rpt2_chk:='bc1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where div like ''DB%'' and ord_cancel1=''Y''';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[Cxl Orders] / 客組別: DB';
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN)';
          ex_adt03.datafield:='act_cmpdt';
          mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
          mex105.visible:=true;
          mex106.visible:=true;
          mex107.visible:=true;
          mex108.visible:=true;
          mexd101.datafield:='mex_os';
          mexd102.datafield:='mex_rs';
          mexd103.datafield:='mex_ls';
          mexd104.visible:=true;
          mexd105.visible:=true;
          mexd106.visible:=true;
          ppReport2.print;
        end;
      end;
    end;
    if chk_bc2.checked then begin
      rpt2_chk:='bc2';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i';
        sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DB%'' and a.ord_cancel1=''Y''';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Cxl Orders] / 客組別: DB';
          rich0201.visible:=true;
          rich0202.visible:=false;
          rich0203.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    //Shpd DA:
    if chk_ad1.checked then begin
      rpt2_chk:='ad1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where div like ''DA%'' and ex_a is not null';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[Shpd] / 客組別: DA';
          ex_adt01.caption:='實際';
          ex_adt02.caption:='';
          ex_adt03.datafield:='ex_a';
          mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
          mex105.visible:=true;
          mex106.visible:=true;
          mex107.visible:=true;
          mex108.visible:=true;
          mexd101.datafield:='mex_os';
          mexd102.datafield:='mex_rs';
          mexd103.datafield:='mex_ls';
          mexd104.visible:=true;
          mexd105.visible:=true;
          mexd106.visible:=true;
          ppReport2.print;
        end;
      end;
    end;
    //Shpd DB:
    if chk_bd1.checked then begin
      rpt2_chk:='bd1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where div like ''DB%'' and ex_a is not null';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[Shpd] / 客組別: DB';
          ex_adt01.caption:='實際';
          ex_adt02.caption:='';
          ex_adt03.datafield:='ex_a';
          mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
          mex105.visible:=true;
          mex106.visible:=true;
          mex107.visible:=true;
          mex108.visible:=true;
          mexd101.datafield:='mex_os';
          mexd102.datafield:='mex_rs';
          mexd103.datafield:='mex_ls';
          mexd104.visible:=true;
          mexd105.visible:=true;
          mexd106.visible:=true;
          ppReport2.print;
        end;
      end;
    end;

    //Region GD:
    if chk_do1.checked then begin
      rpt2_chk:='do1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where prod_site in (''SL'',''PP'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and workorderno>''''';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[Outstanding Orders] / 生產基地: GD';
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN)';
          ex_adt03.datafield:='act_cmpdt';
          mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
          mex105.visible:=true;
          mex106.visible:=true;
          mex107.visible:=true;
          mex108.visible:=true;
          mexd101.datafield:='mex_os';
          mexd102.datafield:='mex_rs';
          mexd103.datafield:='mex_ls';
          mexd104.visible:=true;
          mexd105.visible:=true;
          mexd106.visible:=true;
          ppReport2.print;
        end;
      end;
    end;
    if chk_do2.checked then begin
      rpt2_chk:='do2';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and a.workorderno>''''';
        sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.prod_site in (''SL'',''PP'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Outstanding Orders] / 生產基地: GD';
          rich0201.visible:=true;
          rich0202.visible:=false;
          rich0203.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    if chk_do3.checked then begin
      rpt2_chk:='do3';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and a.workorderno>''''';
        sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.prod_site in (''SL'',''PP'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Outstanding Orders] / 生產基地: GD';
          rich0203.visible:=true;
          rich0201.visible:=false;
          rich0202.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    //Region GX:
    if chk_xo1.checked then begin
      rpt2_chk:='xo1';
      with adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc1 where prod_site in (''GG'',''RX'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and workorderno>''''';
        open;
        if not fieldbyname('seq').isnull then begin
          title002.caption:='[Outstanding Orders] / 生產基地: GX';
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN)';
          ex_adt03.datafield:='act_cmpdt';
          mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
          mex105.visible:=true;
          mex106.visible:=true;
          mex107.visible:=true;
          mex108.visible:=true;
          mexd101.datafield:='mex_os';
          mexd102.datafield:='mex_rs';
          mexd103.datafield:='mex_ls';
          mexd104.visible:=true;
          mexd105.visible:=true;
          mexd106.visible:=true;
          ppReport2.print;
        end;
      end;
    end;
    if chk_xo2.checked then begin
      rpt2_chk:='xo2';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and a.workorderno>''''';
        sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.prod_site in (''GG'',''RX'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Outstanding Orders] / 生產基地: GX';
          rich0201.visible:=true;
          rich0202.visible:=false;
          rich0203.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
    if chk_xo3.checked then begin
      rpt2_chk:='xo3';
      with adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and a.workorderno>''''';
        sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.prod_site in (''GG'',''RX'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
        sql.text:=sql.text+' order by a.projectno,a.custpo,a.workorderno,a.phcolor,a.rwo_wo,a.custstyle,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          sub002.caption:='[Outstanding Orders] / 生產基地: GX';
          rich0203.visible:=true;
          rich0201.visible:=false;
          rich0202.visible:=false;
          rich0204.visible:=false;
          mex001.caption:='未備齊 - 依開始送料期';
          mex002.visible:=true;
          mex003.visible:=true;
          mex004.visible:=true;
          mex005.visible:=true;
          mex006.visible:=true;
          mex007.visible:=true;
          mex008.visible:=true;
          mexd001.datafield:='mex_os';
          mexd002.datafield:='mex_rs';
          mexd003.datafield:='mex_ls';
          mexd004.visible:=true;
          mexd005.visible:=true;
          mexd006.visible:=true;
          ppReport1.print;
        end;
      end;
    end;
  end;
end;

procedure TfrmCarte_Weeklyprintout.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Weeklyprintout:=nil;
end;

procedure TfrmCarte_Weeklyprintout.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if adodataset1.fieldbyname('ct_raw1').isnull then raw001.caption:='n.a.'
  else raw001.caption:=adodataset1.fieldbyname('ct_raw1').value;
  if adodataset1.fieldbyname('ct_he1').isnull then he001.caption:='n.a.'
  else he001.caption:=adodataset1.fieldbyname('ct_he1').value;
  if adodataset1.fieldbyname('ct_pp1').isnull then pp001.caption:='n.a.'
  else pp001.caption:=adodataset1.fieldbyname('ct_pp1').value;
  if adodataset1.fieldbyname('act_item').value>'' then
  oskey001.font.style:=[fsBold] else oskey001.font.style:=[];
end;

procedure TfrmCarte_Weeklyprintout.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Weeklyprintout.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Weeklyprintout.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  //Report2 for Time Mgt
  with adoquery3 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct workorderno) as x2,count(distinct custpo) as x3,count(distinct custstyle) as x4,'
             +'count(distinct phcolor) as x5,count(distinct custcolor) as x6 from tbl_carte_sopc1 a where 1=1';
    if rpt2_chk='ao1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs1' then sql.text:=sql.text+' and qty1_sp=''*'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='abn1' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno='''')) and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='ac1' then sql.text:=sql.text+' and div like ''DA%'' and ord_cancel1=''Y'''
    else if rpt2_chk='bc1' then sql.text:=sql.text+' and div like ''DB%'' and ord_cancel1=''Y'''
    else if rpt2_chk='ad1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is not null'
    else if rpt2_chk='bd1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is not null'
    else if rpt2_chk='do1' then sql.text:=sql.text+' and prod_site in (''SL'',''PP'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo1' then sql.text:=sql.text+' and prod_site in (''GG'',''RX'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>''''';
    open;
    if not fieldbyname('x1').isnull then begin
      prj001.caption:=fieldbyname('x1').asstring;
      wo001.caption:=fieldbyname('x2').asstring;
      custpo001.caption:=fieldbyname('x3').asstring;
      custstyle001.caption:=fieldbyname('x4').asstring;
      phcolor001.caption:=fieldbyname('x5').asstring;
      custcolor001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((sp_app1='''') or (sp_app1 is null))';
    if rpt2_chk='ao1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs1' then sql.text:=sql.text+' and qty1_sp=''*'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='abn1' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno='''')) and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='ac1' then sql.text:=sql.text+' and div like ''DA%'' and ord_cancel1=''Y'''
    else if rpt2_chk='bc1' then sql.text:=sql.text+' and div like ''DB%'' and ord_cancel1=''Y'''
    else if rpt2_chk='ad1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is not null'
    else if rpt2_chk='bd1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is not null'
    else if rpt2_chk='do1' then sql.text:=sql.text+' and prod_site in (''SL'',''PP'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo1' then sql.text:=sql.text+' and prod_site in (''GG'',''RX'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>''''';
    open;
    if not fieldbyname('x1').isnull then begin
      sp_app001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_start is null)';
    if rpt2_chk='ao1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs1' then sql.text:=sql.text+' and qty1_sp=''*'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='abn1' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno='''')) and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='ac1' then sql.text:=sql.text+' and div like ''DA%'' and ord_cancel1=''Y'''
    else if rpt2_chk='bc1' then sql.text:=sql.text+' and div like ''DB%'' and ord_cancel1=''Y'''
    else if rpt2_chk='ad1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is not null'
    else if rpt2_chk='bd1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is not null'
    else if rpt2_chk='do1' then sql.text:=sql.text+' and prod_site in (''SL'',''PP'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo1' then sql.text:=sql.text+' and prod_site in (''GG'',''RX'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>''''';
    open;
    if not fieldbyname('x1').isnull then begin
      m_start001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_o is null)';
    if rpt2_chk='ao1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs1' then sql.text:=sql.text+' and qty1_sp=''*'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='abn1' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno='''')) and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='ac1' then sql.text:=sql.text+' and div like ''DA%'' and ord_cancel1=''Y'''
    else if rpt2_chk='bc1' then sql.text:=sql.text+' and div like ''DB%'' and ord_cancel1=''Y'''
    else if rpt2_chk='ad1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is not null'
    else if rpt2_chk='bd1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is not null'
    else if rpt2_chk='do1' then sql.text:=sql.text+' and prod_site in (''SL'',''PP'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo1' then sql.text:=sql.text+' and prod_site in (''GG'',''RX'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>''''';
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_o001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_a is null)';
    if rpt2_chk='ao1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs1' then sql.text:=sql.text+' and qty1_sp=''*'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='abn1' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno='''')) and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='ac1' then sql.text:=sql.text+' and div like ''DA%'' and ord_cancel1=''Y'''
    else if rpt2_chk='bc1' then sql.text:=sql.text+' and div like ''DB%'' and ord_cancel1=''Y'''
    else if rpt2_chk='ad1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is not null'
    else if rpt2_chk='bd1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is not null'
    else if rpt2_chk='do1' then sql.text:=sql.text+' and prod_site in (''SL'',''PP'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo1' then sql.text:=sql.text+' and prod_site in (''GG'',''RX'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>''''';
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_a001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ex_o is null)';
    if rpt2_chk='ao1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs1' then sql.text:=sql.text+' and qty1_sp=''*'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='abn1' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno='''')) and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='ac1' then sql.text:=sql.text+' and div like ''DA%'' and ord_cancel1=''Y'''
    else if rpt2_chk='bc1' then sql.text:=sql.text+' and div like ''DB%'' and ord_cancel1=''Y'''
    else if rpt2_chk='ad1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is not null'
    else if rpt2_chk='bd1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is not null'
    else if rpt2_chk='do1' then sql.text:=sql.text+' and prod_site in (''SL'',''PP'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo1' then sql.text:=sql.text+' and prod_site in (''GG'',''RX'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>''''';
    open;
    if not fieldbyname('x1').isnull then begin
      ex_o001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null))';
    if rpt2_chk='ao1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs1' then sql.text:=sql.text+' and qty1_sp=''*'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='abn1' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno='''')) and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='ac1' then sql.text:=sql.text+' and div like ''DA%'' and ord_cancel1=''Y'''
    else if rpt2_chk='bc1' then sql.text:=sql.text+' and div like ''DB%'' and ord_cancel1=''Y'''
    else if rpt2_chk='ad1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is not null'
    else if rpt2_chk='bd1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is not null'
    else if rpt2_chk='do1' then sql.text:=sql.text+' and prod_site in (''SL'',''PP'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo1' then sql.text:=sql.text+' and prod_site in (''GG'',''RX'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>''''';
    open;
    if not fieldbyname('x1').isnull then begin
      prod_site001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where act_item>''''';
    if rpt2_chk='ao1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs1' then sql.text:=sql.text+' and qty1_sp=''*'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='abn1' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno='''')) and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))'
    else if rpt2_chk='ac1' then sql.text:=sql.text+' and div like ''DA%'' and ord_cancel1=''Y'''
    else if rpt2_chk='bc1' then sql.text:=sql.text+' and div like ''DB%'' and ord_cancel1=''Y'''
    else if rpt2_chk='ad1' then sql.text:=sql.text+' and div like ''DA%'' and ex_a is not null'
    else if rpt2_chk='bd1' then sql.text:=sql.text+' and div like ''DB%'' and ex_a is not null'
    else if rpt2_chk='do1' then sql.text:=sql.text+' and prod_site in (''SL'',''PP'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo1' then sql.text:=sql.text+' and prod_site in (''GG'',''RX'') and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null)) and a.workorderno>''''';
    open;
    if not fieldbyname('x1').isnull then begin
      act_item001.caption:=fieldbyname('x1').asstring;
    end;
  end;
end;

procedure TfrmCarte_Weeklyprintout.ppSummaryBand2BeforePrint(Sender: TObject);
var
  qty1:integer;
begin
  //projectno002,custpo002,custstyle002,custcolor002
  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.keycode) as x0,count(distinct a.projectno) as x1,count(distinct a.custpo) as x3,count(distinct a.custstyle) as x4,'
             +'count(distinct a.custcolor) as x6 from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i';
    if rpt2_chk='ao2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DA%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='ao3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.div like ''DA%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DB%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.div like ''DB%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.qty1_sp=''*'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))'
    else if rpt2_chk='abs3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.qty1_sp=''*'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))'
    else if rpt2_chk='abn2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and ((a.workorderno is null) or (a.workorderno='''')) and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))'
    else if rpt2_chk='abn3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and ((a.workorderno is null) or (a.workorderno='''')) and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))'
    else if rpt2_chk='ac2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DA%'' and a.ord_cancel1=''Y'''
    else if rpt2_chk='bc2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DB%'' and a.ord_cancel1=''Y'''
    else if rpt2_chk='do2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.prod_site in (''SL'',''PP'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='do3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.prod_site in (''SL'',''PP'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.prod_site in (''GG'',''RX'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.prod_site in (''GG'',''RX'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>''''';
    open;
    if not fieldbyname('x1').isnull then begin
      keycode002.caption:=fieldbyname('x0').asstring;
      projectno002.caption:=fieldbyname('x1').asstring;
      custpo002.caption:=fieldbyname('x3').asstring;
      custstyle002.caption:=fieldbyname('x4').asstring;
      custcolor002.caption:=fieldbyname('x6').asstring;
    end;
  end;
  qty1:=0;
  with adoquery3 do begin
    close;
    sql.text:='select distinct a.keycode,a.qty1 from tbl_carte_sopc1 a,tbl_carte_sopc3 b,tbl_carte_sopc2 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i';
    if rpt2_chk='ao2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DA%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='ao3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.div like ''DA%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DB%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='bo3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.div like ''DB%'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='abs2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.qty1_sp=''*'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))'
    else if rpt2_chk='abs3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.qty1_sp=''*'' and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))'
    else if rpt2_chk='abn2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and ((a.workorderno is null) or (a.workorderno='''')) and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))'
    else if rpt2_chk='abn3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and ((a.workorderno is null) or (a.workorderno='''')) and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))'
    else if rpt2_chk='ac2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DA%'' and a.ord_cancel1=''Y'''
    else if rpt2_chk='bc2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.div like ''DB%'' and a.ord_cancel1=''Y'''
    else if rpt2_chk='do2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.prod_site in (''SL'',''PP'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='do3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.prod_site in (''SL'',''PP'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo2' then sql.text:=sql.text+' and b.act_external=1 and b.act_internal=0 and a.prod_site in (''GG'',''RX'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>'''''
    else if rpt2_chk='xo3' then sql.text:=sql.text+' and b.act_external=0 and b.act_internal=1 and a.prod_site in (''GG'',''RX'') and a.ex_a is null and ((a.ord_cancel1='''') or (a.ord_cancel1 is null)) and a.workorderno>''''';
    open;
    first;
    while not eof do begin
      qty1:=qty1+fieldbyname('qty1').value;
      application.processmessages;
      next;
    end;
    qty002.caption:=inttostr(qty1);
  end;
end;

end.
