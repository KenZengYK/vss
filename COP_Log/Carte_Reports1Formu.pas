unit Carte_Reports1Formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ppParameter, ppBands, ppClass, ppCtrls, ppReport,
  ppSubRpt, ppStrtch, ppRichTx, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppViewr;

type
  TfrmCarte_Reports1 = class(TForm)
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape10: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape23: TppShape;
    ppShape22: TppShape;
    ppShape21: TppShape;
    ppShape11: TppShape;
    ppLabel65: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine31: TppLine;
    ppLine34: TppLine;
    ppLine44: TppLine;
    ppLine47: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine60: TppLine;
    ppLine66: TppLine;
    ppLine68: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine69: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel105: TppLabel;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLine77: TppLine;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLabel113: TppLabel;
    ppLine80: TppLine;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel124: TppLabel;
    ppLine105: TppLine;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLine110: TppLine;
    ex_adt01: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ex_adt02: TppLabel;
    ppLine144: TppLine;
    ppLabel129: TppLabel;
    title002: TppLabel;
    title201: TppRichText;
    ppLine172: TppLine;
    ppLine136: TppLine;
    ppLabel151: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLine292: TppLine;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ex_adt003: TppLabel;
    title2001: TppLabel;
    ppLabel254: TppLabel;
    ppLabel84: TppLabel;
    ppLabel88: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine73: TppLine;
    dest001: TppLabel;
    dest002: TppLabel;
    ppLabel104: TppLabel;
    ppLabel130: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLine71: TppLine;
    ppLine177: TppLine;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel125: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLine181: TppLine;
    ppLine183: TppLine;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel203: TppLabel;
    ppLabel123: TppLabel;
    ppLabel161: TppLabel;
    ppLine94: TppLine;
    ppLabel146: TppLabel;
    ppLabel194: TppLabel;
    ppLabel198: TppLabel;
    ppLabel210: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLine91: TppLine;
    ppDetailBand2: TppDetailBand;
    ppShape26: TppShape;
    oskey001: TppDBText;
    ppLine86: TppLine;
    ppDBText34: TppDBText;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppDBText35: TppDBText;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine106: TppLine;
    ppLine111: TppLine;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText41: TppDBText;
    ppDBText43: TppDBText;
    ppDBText45: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLine112: TppLine;
    ppDBText49: TppDBText;
    ppLine113: TppLine;
    ppDBText50: TppDBText;
    ppLine114: TppLine;
    ex_adt03: TppDBText;
    ppLine145: TppLine;
    ppLine173: TppLine;
    ppLine115: TppLine;
    m_ddt001: TppLabel;
    m_end001: TppLabel;
    ex_or001: TppLabel;
    ppDBText57: TppDBText;
    ppLine108: TppLine;
    ppDBText58: TppDBText;
    exdiffx001: TppDBText;
    ppLine72: TppLine;
    ppLine178: TppLine;
    ipoqty_2001: TppDBText;
    fwdt_or001: TppLabel;
    ppLine182: TppLine;
    prodsite1001: TppLabel;
    prodsite001: TppLabel;
    sp_appdt001: TppLabel;
    ppLine67: TppLine;
    t3dt001: TppLabel;
    ddtx001: TppLabel;
    ppDBText60: TppDBText;
    ppLine84: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape7: TppShape;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppLabel141: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppShape31: TppShape;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppDetailBand3: TppDetailBand;
    ppShape32: TppShape;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape37: TppShape;
    ppShape29: TppShape;
    ppLine117: TppLine;
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
    ppLine134: TppLine;
    ppLine135: TppLine;
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
    ppDBCalc3: TppDBCalc;
    m_start001: TppLabel;
    fwdt_o001: TppLabel;
    fwdt_a001: TppLabel;
    ex_o001: TppLabel;
    act_item001: TppLabel;
    ppLabel139: TppLabel;
    prod_site001: TppLabel;
    ppLabel140: TppLabel;
    ppLine143: TppLine;
    ppLine146: TppLine;
    ppLine131: TppLine;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    mddt001: TppLabel;
    m_ddt002: TppLabel;
    m_end002: TppLabel;
    ppLabel255: TppLabel;
    exdiff001: TppLabel;
    ppLabel270: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel145: TppLabel;
    ppLine109: TppLine;
    ppLine180: TppLine;
    ppLabel158: TppLabel;
    ppLine185: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine187: TppLine;
    ppLabel192: TppLabel;
    ppLine191: TppLine;
    ppLabel193: TppLabel;
    ppLabel195: TppLabel;
    fwdt_ox001: TppLabel;
    mddtx001: TppLabel;
    prod_site1001: TppLabel;
    ppLabel177: TppLabel;
    custpoxa001: TppLabel;
    ppLine193: TppLine;
    m_ddtx002: TppLabel;
    pakx001: TppLabel;
    destx001: TppLabel;
    sp_appx001: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    custx001: TppLabel;
    ppLine194: TppLine;
    fwdt_ox1001: TppLabel;
    mddtx1001: TppLabel;
    ppLabel211: TppLabel;
    sp_appx1001: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLine199: TppLine;
    ppRichText3: TppRichText;
    ppLine201: TppLine;
    ppLine203: TppLine;
    ppLabel207: TppLabel;
    ppLabel209: TppLabel;
    ex_ox001: TppLabel;
    ex_ox002: TppLabel;
    ppLine204: TppLine;
    t3dtx001: TppLabel;
    ppLabel222: TppLabel;
    t3dtx002: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape8: TppShape;
    act_itemd001: TppLabel;
    custcolord001: TppLabel;
    custpod001: TppLabel;
    custstyled001: TppLabel;
    ex_od001: TppLabel;
    fwdt_ad001: TppLabel;
    fwdt_od001: TppLabel;
    m_ddtd002: TppLabel;
    m_endd002: TppLabel;
    m_startd001: TppLabel;
    mddtd001: TppLabel;
    phcolord001: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel164: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel175: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLine132: TppLine;
    ppLine133: TppLine;
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
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLine176: TppLine;
    prjd001: TppLabel;
    prod_sited001: TppLabel;
    sp_appd001: TppLabel;
    wod001: TppLabel;
    ppDBText61: TppDBText;
    ppLabel188: TppLabel;
    ppLine179: TppLine;
    ppLabel157: TppLabel;
    ppLine184: TppLine;
    ppDBCalc5: TppDBCalc;
    ppLine186: TppLine;
    ppLabel191: TppLabel;
    ppLine188: TppLine;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    prod_site1d001: TppLabel;
    mddtxd001: TppLabel;
    fwdt_oxd001: TppLabel;
    exdiffd001: TppLabel;
    custpoxd001: TppLabel;
    ppLabel202: TppLabel;
    ppLine192: TppLine;
    m_ddtxd002: TppLabel;
    pakxd001: TppLabel;
    destxd001: TppLabel;
    sp_appxd001: TppLabel;
    ppLabel204: TppLabel;
    ppLine195: TppLine;
    fwdt_oxd1001: TppLabel;
    mddtxd1001: TppLabel;
    ppLabel212: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    sp_appxd1001: TppLabel;
    ppLine198: TppLine;
    ppLine200: TppLine;
    ppLine96: TppLine;
    ppLabel148: TppLabel;
    ppLabel208: TppLabel;
    ex_oxd001: TppLabel;
    ex_oxd002: TppLabel;
    ppLine205: TppLine;
    t3dtxd001: TppLabel;
    t3dtxd002: TppLabel;
    ppLabel221: TppLabel;
    ppParameterList2: TppParameterList;
    CheckBox1: TCheckBox;
    BitBtn1: TBitBtn;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    mx01: TppLabel;
    mx02: TppLabel;
    mx03: TppLabel;
    ppDBText1: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText2: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    mx201: TppLabel;
    mx401: TppLabel;
    mx301: TppLabel;
    mx101: TppLabel;
    mx202: TppLabel;
    mx402: TppLabel;
    mx302: TppLabel;
    mx102: TppLabel;
    my01: TppLabel;
    my02: TppLabel;
    mx1001: TppLabel;
    mx1002: TppLabel;
    mx10001: TppLabel;
    mx10002: TppLabel;
    mx20001: TppLabel;
    mx20002: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Reports1: TfrmCarte_Reports1;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu, Carte_ReportsFormu;

{$R *.dfm}

procedure TfrmCarte_Reports1.BitBtn1Click(Sender: TObject);
begin
  if checkbox1.checked then begin
    frmCarte_Ordprocessing.bitbtn3click(self);
      if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
        title002.caption:='安排離廠期 (PDN終站) 從 '+frmCarte_Ordprocessing.dateedit4.text+' 到 '+frmCarte_Ordprocessing.dateedit5.text;
      end else begin
        if (frmCarte_Ordprocessing.chk1.checked=false) and (frmCarte_Ordprocessing.chk3.checked=false) and (frmCarte_Ordprocessing.chk4.checked=false) and (frmCarte_Ordprocessing.chk5.checked=false) then
        title002.caption:='[Outstanding Orders]' else title002.caption:='';
      end;
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').isnull then begin
        if frmCarte_Ordprocessing.chk3.checked then begin
          ex_adt01.caption:='實際';
          ex_adt02.caption:='';
          ex_adt003.caption:='';
          title002.caption:='[Shipped]';
          ex_adt03.datafield:='ex_a';
        end else begin
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN';
          ex_adt003.caption:='終站)';
          //title002.caption:='';
          ex_adt03.datafield:='act_cmpdt';
          if frmCarte_Ordprocessing.chk5.checked then
          title002.caption:='[Cancelled]';
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox1.text>'' then
          title002.caption:=title002.caption+' / Div: '+frmCarte_Ordprocessing.combobox1.text;
        end else begin
          if frmCarte_Ordprocessing.combobox1.text>'' then
          title002.caption:='Div: '+frmCarte_Ordprocessing.combobox1.text;
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          title002.caption:=title002.caption+' / 客組別: '+frmCarte_Ordprocessing.combobox8.text;
        end else begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          title002.caption:='客組別: '+frmCarte_Ordprocessing.combobox8.text;
        end;

        if title002.caption>'' then begin
          if (frmCarte_Ordprocessing.dateedit1.date>0) and (frmCarte_Ordprocessing.dateedit2.date>0) then
          title002.caption:=title002.caption+'離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
        end else begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          title002.caption:='離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
        end;

        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox7.text>'' then
          title002.caption:=title002.caption+' / 生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
        end else begin
          if frmCarte_Ordprocessing.combobox7.text>'' then
          title002.caption:='生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.chk1.checked=true then
          title002.caption:=title002.caption+' / 新單 - 未開制單';
        end else begin
          if frmCarte_Ordprocessing.chk1.checked=true then
          title002.caption:='新單  - 未開制單';
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
          title002.caption:=title002.caption+' / *板';
        end else begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
          title002.caption:='*板';
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.dateedit3.date>0 then
          title002.caption:=title002.caption+' / 未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
        end else begin
          if frmCarte_Ordprocessing.dateedit3.date>0 then
          title002.caption:='未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.cxcombobox2.text>'' then
          title002.caption:=title002.caption+' / 初段批號: '+frmCarte_Ordprocessing.cxcombobox2.text;
        end else begin
          if frmCarte_Ordprocessing.cxcombobox2.text>'' then
          title002.caption:='初段批號: '+frmCarte_Ordprocessing.cxcombobox2.text;
        end;
        ppsubreport1.visible:=false;
        title2001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
        if frmCarte_Ordprocessing.combobox4.text='All' then ppGroupFooterBand3.visible:=true
        else ppGroupFooterBand3.visible:=false;
        ppReport2.print;
      end;
  end;
end;

procedure TfrmCarte_Reports1.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ipoqty_2001.font.color:=clBlack;
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('cust').value='PVH' then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('custpo_qty').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('custpo_qty').value>1 then
      ipoqty_2001.font.color:=clRed;
    end;
  end;
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_qty').value>0 then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('prod_site1').isnull then
    prodsite1001.caption:=frmCarte_Ordprocessing.adodataset1.fieldbyname('prod_site1').value;
  end else prodsite1001.caption:='-';
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('qty1').value>0 then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('prod_site').isnull then
    prodsite001.caption:=frmCarte_Ordprocessing.adodataset1.fieldbyname('prod_site').value;
  end else prodsite001.caption:='-';
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('act_item').value>'' then
  oskey001.font.style:=[fsBold] else oskey001.font.style:=[];
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').isnull then begin
    m_ddt001.caption:=formatfloat('#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').value));
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('m_end').isnull then begin
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').isnull then begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').value>frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value then begin
          m_ddt001.font.color:=clRed;
          m_ddt001.Font.Style:=[fsbold];
        end else begin
          m_ddt001.font.color:=clBlack;
          m_ddt001.Font.Style:=[];
        end;
      end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').isnull then begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').value>frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value then begin
          m_ddt001.font.color:=clRed;
          m_ddt001.Font.Style:=[fsbold];
        end else begin
          m_ddt001.font.color:=clBlack;
          m_ddt001.Font.Style:=[];
        end;
      end else begin
        m_ddt001.font.color:=clBlack;
        m_ddt001.Font.Style:=[];
      end;
    end else begin
      //m_ddt001.caption:='';
      m_ddt001.font.color:=clBlack;
      m_ddt001.Font.Style:=[];
    end;
  end else begin
    m_ddt001.caption:='';
    m_ddt001.font.color:=clBlack;
    m_ddt001.Font.Style:=[];
  end;
  ddtx001.caption:='';
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').isnull then
  ddtx001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').value)+'*'
  else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').isnull then
  ddtx001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').value);
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('m_start').isnull then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').isnull then begin
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').isnull then begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').value<=date+7 then begin
          ddtx001.font.color:=clRed;
          if frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').value<=date then
          ddtx001.font.style:=[fsbold] else ddtx001.font.style:=[];
        end else begin
          ddtx001.font.color:=clBlack;
          ddtx001.font.style:=[];
        end;
      end else begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').value<=date+7 then begin
          ddtx001.font.color:=clRed;
          if frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').value<=date then
          ddtx001.font.style:=[fsbold] else ddtx001.font.style:=[];
        end else begin
          ddtx001.font.color:=clBlack;
          ddtx001.font.style:=[];
        end;
      end;
    end else begin
      ddtx001.font.color:=clBlack;
      ddtx001.font.style:=[];
    end;
  end else begin
    ddtx001.font.color:=clBlack;
    ddtx001.font.style:=[];
  end;
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('m_end').isnull then
    m_end001.caption:=formatfloat('#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('m_end').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('m_start').value))
  else m_end001.caption:='';

  mx01.caption:='';
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt0').isnull then
  mx01.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt0').value)+'*'
  else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt').isnull then
  mx01.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt').value);
  mx02.caption:='';
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mddt').isnull then
    mx02.caption:=formatfloat('#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mddt').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt').value));
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mend').isnull then
    mx03.caption:=formatfloat('#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mend').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mstart').value))
  else mx03.caption:='';
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mstart').isnull then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt').isnull then begin
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt0').isnull then begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt0').value<=date+7 then begin
          mx01.font.color:=clRed;
          if frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt0').value<=date then
          mx01.font.style:=[fsbold] else mx01.font.style:=[];
        end else begin
          mx01.font.color:=clBlack;
          mx01.font.style:=[];
        end;
      end else begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt').value<=date+7 then begin
          mx01.font.color:=clRed;
          if frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt').value<=date then
          mx01.font.style:=[fsbold] else mx01.font.style:=[];
        end else begin
          mx01.font.color:=clBlack;
          mx01.font.style:=[];
        end;
      end;
    end else begin
      mx01.font.color:=clBlack;
      mx01.font.style:=[];
    end;
  end else begin
    mx01.font.color:=clBlack;
    mx01.font.style:=[];
  end;
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mddt').isnull then begin
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mend').isnull then begin
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').isnull then begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mddt').value>frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value then begin
          mx02.font.color:=clRed;
          mx02.Font.Style:=[fsbold];
        end else begin
          mx02.font.color:=clBlack;
          mx02.Font.Style:=[];
        end;
      end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').isnull then begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mddt').value>frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value then begin
          mx02.font.color:=clRed;
          mx02.Font.Style:=[fsbold];
        end else begin
          mx02.font.color:=clBlack;
          mx02.Font.Style:=[];
        end;
      end else begin
        mx02.font.color:=clBlack;
        mx02.Font.Style:=[];
      end;
    end else begin
      mx02.font.color:=clBlack;
      mx02.Font.Style:=[];
    end;
  end else begin
    mx02.caption:='';
    mx02.font.color:=clBlack;
    mx02.Font.Style:=[];
  end;

  ex_or001.Font.Color:=clBlack;
  ex_or001.Font.Style:=[];
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').isnull then begin
    ex_or001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').value)+'*';
    if frmCarte_Ordprocessing.ADODataSet1.FieldByName('act_cmpdt').IsNull then begin
      if frmCarte_Ordprocessing.ADODataSet1.FieldByName('ex_r').Value<=date+14 then begin
        ex_or001.Font.Color:=clRed;
        if frmCarte_Ordprocessing.ADODataSet1.FieldByName('ex_r').Value<=date+7 then
        ex_or001.Font.Style:=[fsBold] else ex_or001.Font.Style:=[];
      end;
    end;
  end else begin
    ex_or001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').value);
    if frmCarte_Ordprocessing.ADODataSet1.FieldByName('act_cmpdt').IsNull then begin
      if frmCarte_Ordprocessing.ADODataSet1.FieldByName('ex_o').Value<=date+14 then begin
        ex_or001.Font.Color:=clRed;
        if frmCarte_Ordprocessing.ADODataSet1.FieldByName('ex_o').Value<=date+7 then
        ex_or001.Font.Style:=[fsBold] else ex_or001.Font.Style:=[];
      end;
    end;
  end;
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').isnull then begin
    fwdt_or001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value)+'*';
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_a').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=date+7 then begin
        fwdt_or001.font.color:=clRed;
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=date then
        fwdt_or001.font.style:=[fsbold] else fwdt_or001.font.style:=[];
      end else begin
        fwdt_or001.font.color:=clBlack;
        fwdt_or001.font.style:=[];
      end;
    end else begin
      fwdt_or001.font.color:=clBlack;
      fwdt_or001.font.style:=[];
    end;
  end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').isnull then begin
    fwdt_or001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value);
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_a').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=date+7 then begin
        fwdt_or001.font.color:=clRed;
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=date then
        fwdt_or001.font.style:=[fsbold] else fwdt_or001.font.style:=[];
      end else begin
        fwdt_or001.font.color:=clBlack;
        fwdt_or001.font.style:=[];
      end;
    end else begin
      fwdt_or001.font.color:=clBlack;
      fwdt_or001.font.style:=[];
    end;
  end;

  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('exdiff').isnull then begin
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('exdiff').value<0 then begin
      exdiffx001.font.color:=clRed;
      exdiffx001.Font.Style:=[fsbold];
    end else begin
      exdiffx001.font.color:=clBlack;
      exdiffx001.Font.Style:=[];
    end;
  end else begin
    exdiffx001.font.color:=clBlack;
    exdiffx001.Font.Style:=[];
  end;

  sp_appdt001.caption:='';
  sp_appdt001.font.color:=clBlack;
  sp_appdt001.font.style:=[];
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_a').isnull then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_app2').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_app2').value='R' then
        sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_a').value)+'R'
      else sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_a').value)+'Y';
    end else
      sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_a').value)+'Y';
  end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').isnull then begin
    sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value)+'*';
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value then begin
        sp_appdt001.font.color:=clRed;
        //if frmCarte_Ordprocessing.ADODataSet1.FieldByName('fwdt_a').isnull then
        sp_appdt001.font.style:=[fsBold]; //else sp_appdt001.Font.Style:=[];
      end else if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value+7 then begin
        sp_appdt001.font.color:=clRed;
        sp_appdt001.font.style:=[];
      end else begin
        sp_appdt001.font.color:=clBlack;
        sp_appdt001.font.style:=[];
      end;
    end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value then begin
        sp_appdt001.font.color:=clRed;
        //if frmCarte_Ordprocessing.ADODataSet1.FieldByName('fwdt_a').isnull then
        sp_appdt001.font.style:=[fsBold]; //else sp_appdt001.Font.Style:=[];
      end else if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value+7 then begin
        sp_appdt001.font.color:=clRed;
        sp_appdt001.font.style:=[];
      end else begin
        sp_appdt001.font.color:=clBlack;
        sp_appdt001.font.style:=[];
      end;
    end else begin
      sp_appdt001.font.color:=clBlack;
      sp_appdt001.font.style:=[];
    end;
  end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').isnull then begin
    sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value);
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value then begin
        sp_appdt001.font.color:=clRed;
        //if frmCarte_Ordprocessing.ADODataSet1.FieldByName('fwdt_a').isnull then
        sp_appdt001.font.style:=[fsBold]; //else sp_appdt001.Font.Style:=[];
      end else if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value+7 then begin
        sp_appdt001.font.color:=clRed;
        sp_appdt001.font.style:=[];
      end else begin
        sp_appdt001.font.color:=clBlack;
        sp_appdt001.font.style:=[];
      end;
    end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value then begin
        sp_appdt001.font.color:=clRed;
        //if frmCarte_Ordprocessing.ADODataSet1.FieldByName('fwdt_a').isnull then
        sp_appdt001.font.style:=[fsBold]; //else sp_appdt001.Font.Style:=[];
      end else if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value+7 then begin
        sp_appdt001.font.color:=clRed;
        sp_appdt001.font.style:=[];
      end else begin
        sp_appdt001.font.color:=clBlack;
        sp_appdt001.font.style:=[];
      end;
    end else begin
      sp_appdt001.font.color:=clBlack;
      sp_appdt001.font.style:=[];
    end;
  end;
  t3dt001.Font.Color:=clBlack;
  t3dt001.Font.Style:=[];
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt_r').isnull then begin
    t3dt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt_r').value)+'*';
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').value>=frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt_r').value+7 then begin
        t3dt001.Font.Color:=clBlue; t3dt001.Font.Style:=[fsBold];
      end;
    end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').value>=frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt_r').value+7 then begin
        t3dt001.Font.Color:=clBlue; t3dt001.Font.Style:=[fsBold];
      end;
    end;
  end else if not frmCarte_Ordprocessing.ADODataSet1.FieldByName('t3dt').isnull then begin
    t3dt001.Caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt').value);
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').value>=frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt').value+7 then begin
        t3dt001.Font.Color:=clBlue; t3dt001.Font.Style:=[fsBold];
      end;
    end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').value>=frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt').value+7 then begin
        t3dt001.Font.Color:=clBlue; t3dt001.Font.Style:=[fsBold];
      end;
    end;
  end else begin
    t3dt001.Caption:='';
  end;
end;

procedure TfrmCarte_Reports1.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  sqlstr1:string;
begin
  sqlstr1:='';
    if frmCarte_Ordprocessing.combobox1.text>'' then sqlstr1:=sqlstr1+' and cgrp='''+frmCarte_Ordprocessing.combobox1.text+'''';
    if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
    if frmCarte_Ordprocessing.combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
    if frmCarte_Ordprocessing.cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(booking,'''+frmCarte_Ordprocessing.cxcombobox2.text+''')>0';
      sqlstr1:=sqlstr1+' and cust='''+frmCarte_Ordprocessing.adodataset1.fieldbyname('cust').value+'''';
    if frmCarte_Ordprocessing.combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
    if frmCarte_Ordprocessing.combobox6.text>'' then sqlstr1:=sqlstr1+' and custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
    if frmCarte_Ordprocessing.combobox3.text>'' then begin
       if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr1:=sqlstr1+' and workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sqlstr1:=sqlstr1+' and prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sqlstr1:=sqlstr1+' and prod_site in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sqlstr1:=sqlstr1+' and prod_site in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sqlstr1:=sqlstr1+' and ((prod_site is null) or (prod_site=''''))';
    end;
    if frmCarte_Ordprocessing.combobox8.text>'' then sqlstr1:=sqlstr1+' and div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
        if frmCarte_Ordprocessing.cbb1.text>'' then begin
          if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
            sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=1 and c.act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                     +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
          else sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                        +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb1.text+'''))';
        end;
        if frmCarte_Ordprocessing.cbb2.text>'' then sqlstr1:=sqlstr1+' and (exists (select c.seq from tbl_carte_sopc3 c,tbl_carte_sopc2 d '
                                                                   +'where a.seq=c.seq and a.seq=d.seq and c.seq_i=d.seq_i and c.act_cmp3=0 and d.act_cnt=1 and d.act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                                                   +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
    if frmCarte_Ordprocessing.dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
    if frmCarte_Ordprocessing.dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
    if frmCarte_Ordprocessing.dateedit3.date>0 then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
    if frmCarte_Ordprocessing.edit1.text>'' then sqlstr1:=sqlstr1+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
    if frmCarte_Ordprocessing.edit2.text>'' then sqlstr1:=sqlstr1+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
    if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
      if frmCarte_Ordprocessing.dateedit4.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
      if frmCarte_Ordprocessing.dateedit5.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
    end else begin
      if frmCarte_Ordprocessing.chk3.checked then sqlstr1:=sqlstr1+' and ex_a is not null'
      else sqlstr1:=sqlstr1+' and ex_a is null';
    end;
    if frmCarte_Ordprocessing.chk4.checked then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if frmCarte_Ordprocessing.chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr1:=sqlstr1+' and workorderno>''''';
    end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct workorderno) as x2,count(distinct custpo) as x3,count(distinct custstyle) as x4,'
             +'count(distinct phcolor) as x5 from tbl_carte_sopc1 a where 1=1';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prjd001.caption:=fieldbyname('x1').asstring;
      wod001.caption:=fieldbyname('x2').asstring;
      //custpod001.caption:=fieldbyname('x3').asstring;
      custstyled001.caption:=fieldbyname('x4').asstring;
      phcolord001.caption:=fieldbyname('x5').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custpo) as x1 from tbl_carte_sopc1 a where custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpod001.caption:=fieldbyname('x1').asstring;
    end else custpod001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custcolor) as x1 from tbl_carte_sopc1 a where custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custcolord001.caption:=fieldbyname('x1').asstring;
    end else custcolord001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where sp_appdt_a is null and ((sp_app1 is null) or (sp_app1='''') or (sp_app1=''N''))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appd001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_ddtd002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_start is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_startd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_end is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_endd002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      my01.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_ddt is null and mcup=''Y'')';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx101.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_mddt is null and mcup=''Y'')';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx201.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_mstart is null and mcup=''Y'')';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx301.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_mend is null and mcup=''Y'')';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx401.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_od001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_a is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_ad001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ex_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_od001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (t3dt is null) and (t3dt_r is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      t3dtxd001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null)) and qty1>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prod_sited001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site1='''') or (prod_site1 is null)) and sp_qty>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prod_site1d001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((custpo='''') or (custpo is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpoxd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((etam_pak='''') or (etam_pak is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      pakxd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((pvh_dest='''') or (pvh_dest is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      destxd001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ddt0 is not null then ddt0 else ddt end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when ddt0 is not null then ddt0 else ddt end>'''+formatdatetime('yyyy-mm-dd',date)+''') and m_start is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtxd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mddtxd001.font.color:=clRed
      else mddtxd001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ddt0 is not null then ddt0 else ddt end<='''+formatdatetime('yyyy-mm-dd',date)+''') and m_start is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtxd1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mddtxd1001.font.color:=clRed
      else mddtxd1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<m_ddt) and m_ddt is not null and fwdt_o is not null and m_end is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_ddtxd002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then m_ddtxd002.font.color:=clRed
      else m_ddtxd002.font.color:=clBlack;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when mcup_ddt0 is not null then mcup_ddt0 else mcup_ddt end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when mcup_ddt0 is not null then mcup_ddt0 else mcup_ddt end>'''+formatdatetime('yyyy-mm-dd',date)+''') and mcup_mstart is null and mcup=''Y''';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mx1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mx1001.font.color:=clRed
      else mx1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when mcup_ddt0 is not null then mcup_ddt0 else mcup_ddt end<='''+formatdatetime('yyyy-mm-dd',date)+''') and mcup_mstart is null and mcup=''Y''';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mx10001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mx10001.font.color:=clRed
      else mx10001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<mcup_mddt) and mcup_mddt is not null and fwdt_o is not null and mcup_mend is null and mcup=''Y''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx20001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mx20001.font.color:=clRed
      else mx20001.font.color:=clBlack;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when fwdt_r is not null then fwdt_r else fwdt_o end>'''+formatdatetime('yyyy-mm-dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_oxd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then fwdt_oxd001.font.color:=clRed
      else fwdt_oxd001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy-mm-dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_oxd1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then fwdt_oxd1001.font.color:=clRed
      else fwdt_oxd1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end<='''+formatdatetime('yyyy-mm-dd',date+14)+''') and (case when ex_r is not null then ex_r else ex_o end>'''+formatdatetime('yyyy-mm-dd',date+7)+''') and act_cmpdt is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+14;
    //parameters[1].value:=date+7;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_oxd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then ex_oxd001.font.color:=clRed
      else ex_oxd001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and act_cmpdt is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_oxd002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then ex_oxd002.font.color:=clRed
      else ex_oxd002.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end>=case when t3dt_r is not null then t3dt_r else t3dt end+7) and ((t3dt is not null) or (t3dt_r is not null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      t3dtxd002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then begin
        t3dtxd002.font.color:=clBlue;
        t3dtxd002.Font.Style:=[fsBold];
      end else begin
        t3dtxd002.font.color:=clBlack;
        t3dtxd002.Font.Style:=[];
      end;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end+7>=case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end<case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and (sp_appdt_o is not null or sp_appdt_r is not null) and (fwdt_r is not null or fwdt_o is not null) and sp_appdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appxd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then sp_appxd001.font.color:=clRed
      else sp_appxd001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end>=case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and (sp_appdt_o is not null or sp_appdt_r is not null) and (fwdt_r is not null or fwdt_o is not null) and sp_appdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appxd1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then sp_appxd1001.font.color:=clRed
      else sp_appxd1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where exdiff<0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      exdiffd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then exdiffd001.font.color:=clRed
      else exdiffd001.font.color:=clBlack;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where act_item>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      act_itemd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
end;

procedure TfrmCarte_Reports1.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Reports1.ppSummaryBand2BeforePrint(Sender: TObject);
var
  sqlstr1:string;
begin
  sqlstr1:='';
    if frmCarte_Ordprocessing.combobox1.text>'' then sqlstr1:=sqlstr1+' and cgrp='''+frmCarte_Ordprocessing.combobox1.text+'''';
    if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
    if frmCarte_Ordprocessing.combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
    if frmCarte_Ordprocessing.cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(booking,'''+frmCarte_Ordprocessing.cxcombobox2.text+''')>0';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sqlstr1:=sqlstr1+' and cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
    if frmCarte_Ordprocessing.combobox6.text>'' then sqlstr1:=sqlstr1+' and custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
    if frmCarte_Ordprocessing.combobox3.text>'' then begin
       if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr1:=sqlstr1+' and workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sqlstr1:=sqlstr1+' and prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sqlstr1:=sqlstr1+' and prod_site in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sqlstr1:=sqlstr1+' and prod_site in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sqlstr1:=sqlstr1+' and ((prod_site is null) or (prod_site=''''))';
    end;
    if frmCarte_Ordprocessing.combobox8.text>'' then sqlstr1:=sqlstr1+' and div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
    if frmCarte_Ordprocessing.cbb1.text>'' then begin
      if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=1 and c.act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                 +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
      else sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                    +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb1.text+'''))';
    end;
    if frmCarte_Ordprocessing.cbb2.text>'' then sqlstr1:=sqlstr1+' and (exists (select c.seq from tbl_carte_sopc3 c,tbl_carte_sopc2 d '
                                                               +'where a.seq=c.seq and a.seq=d.seq and c.seq_i=d.seq_i and c.act_cmp3=0 and d.act_cnt=1 and d.act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                                               +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
    if frmCarte_Ordprocessing.dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
    if frmCarte_Ordprocessing.dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
    if frmCarte_Ordprocessing.dateedit3.date>0 then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
    if frmCarte_Ordprocessing.edit1.text>'' then sqlstr1:=sqlstr1+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
    if frmCarte_Ordprocessing.edit2.text>'' then sqlstr1:=sqlstr1+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
    if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
      if frmCarte_Ordprocessing.dateedit4.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
      if frmCarte_Ordprocessing.dateedit5.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
    end else begin
      if frmCarte_Ordprocessing.chk3.checked then sqlstr1:=sqlstr1+' and ex_a is not null'
      else sqlstr1:=sqlstr1+' and ex_a is null';
    end;
    if frmCarte_Ordprocessing.chk4.checked then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if frmCarte_Ordprocessing.chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr1:=sqlstr1+' and workorderno>''''';
    end;

  custx001.caption:=frmCarte_Ordprocessing.combobox4.text;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct workorderno) as x2,count(distinct custpo) as x3,count(distinct custstyle) as x4,'
             +'count(distinct phcolor) as x5 from tbl_carte_sopc1 a where 1=1';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prj001.caption:=fieldbyname('x1').asstring;
      wo001.caption:=fieldbyname('x2').asstring;
      //custpo001.caption:=fieldbyname('x3').asstring;
      custstyle001.caption:=fieldbyname('x4').asstring;
      phcolor001.caption:=fieldbyname('x5').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custpo) as x1 from tbl_carte_sopc1 a where custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpo001.caption:=fieldbyname('x1').asstring;
    end else custpo001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custcolor) as x1 from tbl_carte_sopc1 a where custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custcolor001.caption:=fieldbyname('x1').asstring;
    end else custcolor001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where sp_appdt_a is null and ((sp_app1 is null) or (sp_app1='''') or (sp_app1=''N''))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_app001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mddt001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_ddt002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_start is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_start001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_end is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_end002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      my02.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_ddt is null and mcup=''Y'')';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx102.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_mddt is null and mcup=''Y'')';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx202.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_mstart is null and mcup=''Y'')';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx302.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_mend is null and mcup=''Y'')';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx402.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_o001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_a is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_a001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ex_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_o001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (t3dt is null) and (t3dt_r is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      t3dtx001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null)) and qty1>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prod_site001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site1='''') or (prod_site1 is null)) and sp_qty>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prod_site1001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((custpo='''') or (custpo is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpoxa001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((etam_pak='''') or (etam_pak is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      pakx001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((pvh_dest='''') or (pvh_dest is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      destx001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((case when ddt0 is not null then ddt0 else ddt end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when ddt0 is not null then ddt0 else ddt end>'''+formatdatetime('yyyy-mm-dd',date)+''')) and m_start is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtx001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mddtx001.font.color:=clRed
      else mddtx001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((case when ddt0 is not null then ddt0 else ddt end<='''+formatdatetime('yyyy-mm-dd',date)+''')) and m_start is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtx1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mddtx1001.font.color:=clRed
      else mddtx1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<m_ddt) and m_ddt is not null and fwdt_o is not null and m_end is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_ddtx002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then m_ddtx002.font.color:=clRed
      else m_ddtx002.font.color:=clBlack;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when mcup_ddt0 is not null then mcup_ddt0 else mcup_ddt end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when mcup_ddt0 is not null then mcup_ddt0 else mcup_ddt end>'''+formatdatetime('yyyy-mm-dd',date)+''') and mcup_mstart is null and mcup=''Y''';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mx1002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mx1002.font.color:=clRed
      else mx1002.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when mcup_ddt0 is not null then mcup_ddt0 else mcup_ddt end<='''+formatdatetime('yyyy-mm-dd',date)+''') and mcup_mstart is null and mcup=''Y''';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mx10002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mx10002.font.color:=clRed
      else mx10002.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<mcup_mddt) and mcup_mddt is not null and fwdt_o is not null and mcup=''Y'' and mcup_mend is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mx20002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mx20002.font.color:=clRed
      else mx20002.font.color:=clBlack;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when fwdt_r is not null then fwdt_r else fwdt_o end>'''+formatdatetime('yyyy-mm-dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_ox001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then fwdt_ox001.font.color:=clRed
      else fwdt_ox001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy-mm-dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_ox1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then fwdt_ox1001.font.color:=clRed
      else fwdt_ox1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end<='''+formatdatetime('yyyy-mm-dd',date+14)+''') and (case when ex_r is not null then ex_r else ex_o end>'''+formatdatetime('yyyy-mm-dd',date+7)+''') and act_cmpdt is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+14;
    //parameters[1].value:=date+7;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_ox001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then ex_ox001.font.color:=clRed
      else ex_ox001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and act_cmpdt is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_ox002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then ex_ox002.font.color:=clRed
      else ex_ox002.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end>=case when t3dt_r is not null then t3dt_r else t3dt end+7) and ((t3dt is not null) or (t3dt_r is not null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      t3dtx002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then begin
        t3dtx002.font.color:=clBlue;
        t3dtx002.Font.Style:=[fsBold];
      end else begin
        t3dtx002.font.color:=clBlack;
        t3dtx002.Font.Style:=[];
      end;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end+7>=case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end<case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and (sp_appdt_o is not null or sp_appdt_r is not null) and (fwdt_r is not null or fwdt_o is not null) and sp_appdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appx001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then sp_appx001.font.color:=clRed
      else sp_appx001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end>=case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and (sp_appdt_o is not null or sp_appdt_r is not null) and (fwdt_r is not null or fwdt_o is not null) and sp_appdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appx1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then sp_appx1001.font.color:=clRed
      else sp_appx1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where exdiff<0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      exdiff001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then exdiff001.font.color:=clRed
      else exdiff001.font.color:=clBlack;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where act_item>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      act_item001.caption:=fieldbyname('x1').asstring;
    end;
  end;
end;

end.
