unit achieving_enformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppParameter, ppBands, ppMemo, ppReport, ppStrtch, ppSubRpt, myChkBox,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppDB, ppComm, ppRelatv,
  ppDBPipe, ppViewr, DB;

type
  Tfrmachieving_en = class(TForm)
    ppDBPipeline5: TppDBPipeline;
    ppReport4: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape22: TppShape;
    ppShape34: TppShape;
    ppShape29: TppShape;
    ppShape28: TppShape;
    ppShape27: TppShape;
    ppShape26: TppShape;
    title_001: TppLabel;
    ppLabel60: TppLabel;
    ppLabel65: TppLabel;
    ppLabel68: TppLabel;
    ppDBText12: TppDBText;
    ppLabel102: TppLabel;
    wk001: TppLabel;
    ppLabel117: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel122: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel127: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLine6: TppLine;
    ppLine40: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine69: TppLine;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLine81: TppLine;
    ws001: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel151: TppLabel;
    ppLine83: TppLine;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLine87: TppLine;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLine89: TppLine;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLine91: TppLine;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLine93: TppLine;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLine95: TppLine;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLine97: TppLine;
    ppLabel177: TppLabel;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLabel178: TppLabel;
    ppLine103: TppLine;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLine105: TppLine;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLine106: TppLine;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLine109: TppLine;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine114: TppLine;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLabel199: TppLabel;
    ppLabel202: TppLabel;
    ppLine123: TppLine;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLine129: TppLine;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel213: TppLabel;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLabel214: TppLabel;
    ppLine137: TppLine;
    ppLabel176: TppLabel;
    ppLine102: TppLine;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLine135: TppLine;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLine140: TppLine;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLine142: TppLine;
    ppLabel229: TppLabel;
    ppLine143: TppLine;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel238: TppLabel;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLabel239: TppLabel;
    ppLabel241: TppLabel;
    ppLabel212: TppLabel;
    ppLine155: TppLine;
    ppLabel217: TppLabel;
    ppLine161: TppLine;
    ppLabel245: TppLabel;
    ppLine163: TppLine;
    plant001: TppLabel;
    ppLabel334: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLine124: TppLine;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLabel128: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppShape24: TppShape;
    ppDBText13: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppDBText48: TppDBText;
    ppLine82: TppLine;
    ppDBText49: TppDBText;
    ppLine85: TppLine;
    ppDBText51: TppDBText;
    ppLine88: TppLine;
    ppDBText53: TppDBText;
    ppLine90: TppLine;
    ppDBText54: TppDBText;
    ppLine92: TppLine;
    ppDBText55: TppDBText;
    ppLine94: TppLine;
    ppDBText56: TppDBText;
    ppLine96: TppLine;
    ppDBText58: TppDBText;
    ppLine99: TppLine;
    ppDBText59: TppDBText;
    ppLine104: TppLine;
    ppDBText60: TppDBText;
    ppLine107: TppLine;
    ppDBText61: TppDBText;
    ppLine108: TppLine;
    ppDBText62: TppDBText;
    ppLine110: TppLine;
    ppDBText63: TppDBText;
    ppLine113: TppLine;
    ppDBText64: TppDBText;
    ppLine115: TppLine;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppLine128: TppLine;
    ppDBText70: TppDBText;
    ppLine130: TppLine;
    ppDBText72: TppDBText;
    ppLine136: TppLine;
    ppLine138: TppLine;
    ppDBText57: TppDBText;
    dbl001: TppDBText;
    ppLine139: TppLine;
    ppLine141: TppLine;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    ppLine144: TppLine;
    ppLine145: TppLine;
    myDBCheckBox4: TmyDBCheckBox;
    ppDBText74: TppDBText;
    sjrs001: TppDBText;
    sjrs002: TppDBText;
    ppLine150: TppLine;
    ppLine152: TppLine;
    ppDBText71: TppDBText;
    ppLine162: TppLine;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppLine164: TppLine;
    lflag1_01: TppLabel;
    ppLine125: TppLine;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppShape25: TppShape;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel216: TppLabel;
    ppLine98: TppLine;
    zl001: TppLabel;
    zpj001: TppLabel;
    ppLine134: TppLine;
    zjb001: TppLabel;
    zqn001: TppLabel;
    zstyle001: TppLabel;
    zm001: TppLabel;
    zp001: TppLabel;
    zsqty001: TppLabel;
    zpqty001: TppLabel;
    zmqty001: TppLabel;
    zeot001: TppLabel;
    zcsect001: TppLabel;
    zsjsh001: TppLabel;
    zr001: TppLabel;
    zx001: TppLabel;
    zprj001: TppLabel;
    zaqty001: TppLabel;
    zawf001: TppLabel;
    zsjrs001: TppLabel;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLabel246: TppLabel;
    zppc001: TppLabel;
    zswd001: TppLabel;
    zws001: TppLabel;
    zdbl001: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape36: TppShape;
    ppMemo6: TppMemo;
    ppDetailBand7: TppDetailBand;
    ppLine243: TppLine;
    ppSummaryBand7: TppSummaryBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand8: TppDetailBand;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppSummaryBand8: TppSummaryBand;
    ppLabel335: TppLabel;
    tawf001: TppLabel;
    tsjrs001: TppLabel;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    xc001: TppLabel;
    xc002: TppLabel;
    ppParameterList4: TppParameterList;
    ppReport5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape30: TppShape;
    ppShape33: TppShape;
    ppShape32: TppShape;
    title_002: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppDBText8: TppDBText;
    ppLabel251: TppLabel;
    wk002: TppLabel;
    ppLabel253: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel254: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel258: TppLabel;
    ppLine168: TppLine;
    ppLine177: TppLine;
    ws002: TppLabel;
    ppLine179: TppLine;
    ppLine185: TppLine;
    plant002: TppLabel;
    ppLabel252: TppLabel;
    ppLabel255: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLine166: TppLine;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLine167: TppLine;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLine169: TppLine;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    ppLine170: TppLine;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLine171: TppLine;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel259: TppLabel;
    ppLine165: TppLine;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLine174: TppLine;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppLine178: TppLine;
    ppLabel284: TppLabel;
    ppLabel285: TppLabel;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppLine180: TppLine;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppLine181: TppLine;
    ppLabel291: TppLabel;
    ppLabel293: TppLabel;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppLine182: TppLine;
    ppLabel292: TppLabel;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLine183: TppLine;
    ppLine199: TppLine;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLine204: TppLine;
    ppLine205: TppLine;
    ppLine206: TppLine;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppLabel305: TppLabel;
    ppLabel306: TppLabel;
    ppLabel307: TppLabel;
    ppLine209: TppLine;
    ppLine210: TppLine;
    ppLine211: TppLine;
    ppLabel308: TppLabel;
    ppLine212: TppLine;
    ppLine213: TppLine;
    ppLine214: TppLine;
    ppLine215: TppLine;
    ppLabel310: TppLabel;
    ppLabel312: TppLabel;
    ppLabel313: TppLabel;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLabel328: TppLabel;
    ppLine228: TppLine;
    ppLine229: TppLine;
    ppLine230: TppLine;
    ppLine231: TppLine;
    ppLine232: TppLine;
    ppLine236: TppLine;
    ppLine237: TppLine;
    ppLine238: TppLine;
    ppLabel329: TppLabel;
    ppLabel330: TppLabel;
    ppLine216: TppLine;
    ppLabel309: TppLabel;
    ppLabel311: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppLabel333: TppLabel;
    ppLine221: TppLine;
    ppLine244: TppLine;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppShape35: TppShape;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppLine175: TppLine;
    ppLine176: TppLine;
    ppLine184: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLine191: TppLine;
    ppLine192: TppLine;
    ppLine193: TppLine;
    ppLine194: TppLine;
    ppLine195: TppLine;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLine202: TppLine;
    ppLine203: TppLine;
    ppLine207: TppLine;
    ppLine208: TppLine;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppLine217: TppLine;
    ppLine218: TppLine;
    ppLine219: TppLine;
    ppLine220: TppLine;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppLine222: TppLine;
    ppLine223: TppLine;
    ppLine224: TppLine;
    ppLine225: TppLine;
    ppLine239: TppLine;
    ppLine240: TppLine;
    ppDBText113: TppDBText;
    ppDBText104: TppDBText;
    ppDBText114: TppDBText;
    ppLine241: TppLine;
    ppLine242: TppLine;
    ppLine245: TppLine;
    ppDBText117: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppShape31: TppShape;
    ppLabel373: TppLabel;
    ppLabel374: TppLabel;
    ppLabel375: TppLabel;
    ppLine263: TppLine;
    ppLine264: TppLine;
    ppLine265: TppLine;
    ppLine269: TppLine;
    zjb002: TppLabel;
    zl002: TppLabel;
    zpj002: TppLabel;
    zr002: TppLabel;
    zeff1002: TppLabel;
    zstyle002: TppLabel;
    zprj4002: TppLabel;
    zeff2002: TppLabel;
    zeff3002: TppLabel;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel338: TppLabel;
    ppColumnHeaderBand4: TppColumnHeaderBand;
    ppDetailBand9: TppDetailBand;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppColumnFooterBand4: TppColumnFooterBand;
    ppSummaryBand9: TppSummaryBand;
    ppParameterList5: TppParameterList;
    ppDBPipeline6: TppDBPipeline;
    ppDBPipeline7: TppDBPipeline;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport4PreviewFormCreate(Sender: TObject);
    procedure ppReport5PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure ppSummaryBand5BeforePrint(Sender: TObject);
    procedure ppTitleBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand7BeforePrint(Sender: TObject);
    procedure ppSummaryBand6BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmachieving_en: Tfrmachieving_en;

implementation

uses mainformu, worksheet, achievingformu;

{$R *.dfm}

procedure Tfrmachieving_en.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmachieving_en:=nil;
end;

procedure Tfrmachieving_en.ppDetailBand5BeforePrint(Sender: TObject);
begin
  if not frmachieving.query1.fieldbyname('mwflbc').isnull then begin
    if frmachieving.query1.fieldbyname('mwflbc').value<0 then begin
      sjrs001.font.color:=clRed;
      sjrs002.font.color:=clRed;
    end else begin
      sjrs001.font.color:=clBlack;
      sjrs002.font.color:=clBlack;
    end;
  end;
  if not frmachieving.query1.fieldbyname('dbl_sp').isnull then begin
    if (frmachieving.query1.fieldbyname('dbl_sp').value>0.00) and (frmachieving.query1.fieldbyname('dbl_sp').value<100.00) then
      dbl001.font.color:=clRed
    else dbl001.font.color:=clBlack;
  end;
  with frmachieving.query10 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lflag from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asinteger:=frmachieving.query1.fieldbyname('seq').value;
    Open;
    if not fieldbyname('lflag').isnull then lflag1_01.caption:=fieldbyname('lflag').value+'.0'
    else lflag1_01.caption:='1.0';
  end;
end;

procedure Tfrmachieving_en.ppReport4PreviewFormCreate(Sender: TObject);
begin
  ppReport4.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport4.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmachieving_en.ppReport5PreviewFormCreate(Sender: TObject);
begin
  ppReport5.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport5.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmachieving_en.ppSummaryBand5BeforePrint(Sender: TObject);
var
  tplant:string;
  tq1,tq2:double;
begin
  //zppc001, zswd001, zws001
  if frmachieving.combobox1.text>'' then begin
    if (frmachieving.combobox1.text='CN') or (frmachieving.combobox1.text='GX') then tplant:=''
    else if frmachieving.combobox1.text='GD' then tplant:='SL' else tplant:=frmachieving.combobox1.text;
  end else tplant:='';
  with frmachieving.query2 do begin
    close;
    params.clear;
    if frmachieving.dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and ppccfm=0'
      else if frmachieving.xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and ppccfm=0'
      else if frmachieving.xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and ppccfm=0'
      else if frmachieving.xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0';
      if frmachieving.combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if frmachieving.combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if frmachieving.combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+frmachieving.combobox2.text+''')>=0';
      if frmachieving.edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+frmachieving.edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=frmachieving.dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then zppc001.caption:=fieldbyname('xcnt').asstring else zppc001.caption:='0';
    end;
  end;
  with frmachieving.query2 do begin
    close;
    params.clear;
    if frmachieving.dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and cfm1=0'
      else if frmachieving.xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and cfm1=0'
      else if frmachieving.xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and cfm1=0'
      else if frmachieving.xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0';
      if frmachieving.combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if frmachieving.combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if frmachieving.combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+frmachieving.combobox2.text+''')>=0';
      if frmachieving.edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+frmachieving.edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=frmachieving.dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then zswd001.caption:=fieldbyname('xcnt').asstring else zswd001.caption:='0';
    end;
  end;
  with frmachieving.query2 do begin
    close;
    params.clear;
    if frmachieving.dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and cfm=0'
      else if frmachieving.xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and cfm=0'
      else if frmachieving.xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and cfm=0'
      else if frmachieving.xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0';
      if frmachieving.combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if frmachieving.combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if frmachieving.combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+frmachieving.combobox2.text+''')>=0';
      if frmachieving.edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+frmachieving.edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=frmachieving.dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then zws001.caption:=fieldbyname('xcnt').asstring else zws001.caption:='0';
    end;
  end;
  //tawf001, tsjrs001
  tq1:=0; tq2:=0;
  with frmachieving.query2 do begin
    close;
    params.clear;
    if frmachieving.dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if frmachieving.xh0.checked then
      commandtext:='select distinct pline,sum(mwfsc*csect_sp)/sum(csect_sp) as q1,sum(alrs*csect_sp)/sum(csect_sp) as q2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and csect_sp>0'
      else if frmachieving.xh1.checked then
      commandtext:='select distinct pline,sum(mwfsc*csect_sp)/sum(csect_sp) as q1,sum(alrs*csect_sp)/sum(csect_sp) as q2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and csect_sp>0'
      else if frmachieving.xh3.checked then
      commandtext:='select distinct pline,sum(mwfsc*csect_sp)/sum(csect_sp) as q1,sum(alrs*csect_sp)/sum(csect_sp) as q2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and csect_sp>0'
      else if frmachieving.xh2.checked then
      commandtext:='select distinct pline,sum(mwfsc*csect_sp)/sum(csect_sp) as q1,sum(alrs*csect_sp)/sum(csect_sp) as q2 '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect_sp>0';
      if frmachieving.combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if frmachieving.combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if frmachieving.combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+frmachieving.combobox2.text+''')>=0';
      if frmachieving.edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+frmachieving.edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      commandtext:=commandtext+' group by pline';
      params[0].asdate:=frmachieving.dateedit1.date;
      open;
      first;
      while not eof do begin
        tq1:=tq1+fieldbyname('q1').value;
        tq2:=tq2+fieldbyname('q2').value;
        application.processmessages;
        next;
      end;
      //if not fieldbyname('xcnt').isnull then zws001.caption:=fieldbyname('xcnt').asstring else zws001.caption:='0';
    end;
  end;
  if frmachieving.dateedit1.date>=date then begin
    tq1:=0; tq2:=0;
  end;
  if tq1>0 then tawf001.caption:=formatfloat('0.00',tq1) else tawf001.caption:='';
  if tq2>0 then tsjrs001.caption:=formatfloat('0.00',tq2) else tsjrs001.caption:='';
  //if frmachieving.dateedit1.date>=date then ppSubReport2.visible:=false
  //else ppSubReport2.visible:=true;
end;

procedure Tfrmachieving_en.ppSummaryBand6BeforePrint(Sender: TObject);
var
  tplant:string;
begin
  {
  if (combobox1.text='CN') or (combobox1.text='GX') then tplant:=''
  else if combobox1.text='GD' then tplant:='SL' else tplant:=combobox1.text;
  with query9 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct tplant,tshop,line,fsx from week52 where date1=:x1 and fsx>''''';
    if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+''''
    else if combobox1.text='GX' then begin
      commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and line='''+edit1.text+'''';
    commandtext:=commandtext+' order by tplant,tshop,line';
    params[0].asdate:=dateedit1.date;
    open;
  end;
  }
  //if frmachieving.dateedit1.date>=date then ppSubReport4.visible:=false
  //else ppSubReport4.visible:=true;
end;

procedure Tfrmachieving_en.ppSummaryBand7BeforePrint(Sender: TObject);
var
  tplant:string;
begin
  if (frmachieving.combobox1.text='CN') or (frmachieving.combobox1.text='GX') then tplant:=''
  else if frmachieving.combobox1.text='GD' then tplant:='SL' else tplant:=frmachieving.combobox1.text;
  with frmachieving.query8 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct tplant,tshop,pline,seq,qnseq,marks_sp from line_shjs where dt1=:x1 and mpsect_sp>0 and tshop<>''SC1''';
    if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+''''
    else if frmachieving.combobox1.text='GX' then begin
      commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
    end else if frmachieving.combobox1.text='CN' then begin
      commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
    if frmachieving.combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+frmachieving.combobox2.text+''')>=0';
    if frmachieving.edit1.text>'' then commandtext:=commandtext+' and pline='''+frmachieving.edit1.text+'''';
    commandtext:=commandtext+' order by tplant,tshop,pline,seq';
    params[0].asdate:=frmachieving.dateedit1.date;
    open;
  end;
end;

procedure Tfrmachieving_en.ppTitleBand2BeforePrint(Sender: TObject);
var
  tplant:string;
begin
  if (frmachieving.combobox1.text='CN') or (frmachieving.combobox1.text='GX') then tplant:=''
  else if frmachieving.combobox1.text='GD' then tplant:='SL' else tplant:=frmachieving.combobox1.text;
  ppMemo6.lines.clear;
  ppMemo6.lines.add('AL Ws Remarks: - ');
  with frmachieving.query6 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct tshop,remarks from tbl_wksremarks where dt1=:x1 and spe=''SPE''';
    if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+''''
    else if frmachieving.combobox1.text='GX' then begin
      commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
    end else if frmachieving.combobox1.text='CN' then begin
      commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if frmachieving.combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+frmachieving.combobox2.text+''')>=0';
    commandtext:=commandtext+' order by tplant,tshop';
    params[0].asdate:=frmachieving.dateedit1.date;
    open;
    first;
    while not eof do begin
      if not fieldbyname('remarks').isnull then
      ppMemo6.lines.add('   '+fieldbyname('tshop').value+': '+fieldbyname('remarks').value);
      application.processmessages;
      next;
    end;
  end;
  ppMemo6.lines.add('  ');
end;

end.
