unit lard_ibookingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh, DBCtrls,
  ExtCtrls, cxControls, cxSSheet, ppCtrls, ppPrnabl, ppClass, ppDB,
  ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppVar,
  ppViewr, rxCurrEdit, Mask, rxToolEdit, ComCtrls, myChkBox, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  ppParameter;

type
  Tfrmlard_ibooking = class(TForm)
    sSheet1: TcxSpreadSheet;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    SaveDialog1: TSaveDialog;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppImage1: TppImage;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppShape1: TppShape;
    ppLabel22: TppLabel;
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
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLine1: TppLine;
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
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    rmk001: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel55: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel56: TppLabel;
    ppDBText11: TppDBText;
    Label5: TLabel;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    cEdit1: TCurrencyEdit;
    dt001: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLabel57: TppLabel;
    ppDBCalc2: TppDBCalc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppImage2: TppImage;
    ppLabel66: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel80: TppLabel;
    ppShape5: TppShape;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    dt002: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape6: TppShape;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine60: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    rmk002: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppShape7: TppShape;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine70: TppLine;
    ppLabel115: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel99: TppLabel;
    ppLabel63: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel93: TppLabel;
    ppLabel100: TppLabel;
    mychk1: TmyCheckBox;
    ppLabel101: TppLabel;
    mychk2: TmyCheckBox;
    ppLabel102: TppLabel;
    mychk3: TmyCheckBox;
    ppLabel103: TppLabel;
    mychk4: TmyCheckBox;
    ppLabel104: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ichk1: TCheckBox;
    ichk2: TCheckBox;
    schk1: TCheckBox;
    schk2: TCheckBox;
    DBGridEh2: TDBGridEh;
    ppLabel67: TppLabel;
    ppLine44: TppLine;
    ppLine59: TppLine;
    ppLine69: TppLine;
    ppLabel84: TppLabel;
    ppLabel64: TppLabel;
    ppLabel91: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel65: TppLabel;
    ppLabel92: TppLabel;
    ppLabel105: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel116: TppLabel;
    ppDBText12: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlard_ibooking: Tfrmlard_ibooking;

implementation

uses mainformu, pdnformu, pdnprintformu;

{$R *.dfm}

procedure Tfrmlard_ibooking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmlard_ibooking:=nil;
end;

procedure Tfrmlard_ibooking.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      commandtext:='update tbl_pdn_iblard set season=:x1,clinet=:x2,indt=:x3,findt=:x4,rfindt=:x5,clsdt=:x6 where seq=:x7 and dseq=:x8';

      if not query1.fieldbyname('season').isnull then
      params[0].asstring:=query1.fieldbyname('season').value
      else params[0].asstring:='';
      if not query1.fieldbyname('clinet').isnull then
      params[1].asstring:=query1.fieldbyname('clinet').value
      else params[1].asstring:='';
      if not query1.fieldbyname('indt').isnull then
      params[2].asdate:=query1.fieldbyname('indt').value;
      if not query1.fieldbyname('findt').isnull then
      params[3].asdate:=query1.fieldbyname('findt').value;
      if not query1.fieldbyname('rfindt').isnull then
      params[4].asdate:=query1.fieldbyname('rfindt').value;
      if not query1.fieldbyname('clsdt').isnull then
      params[5].asdate:=query1.fieldbyname('clsdt').value;
      params[6].asinteger:=query1.fieldbyname('seq').value;
      params[7].asinteger:=query1.fieldbyname('dseq').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_pdn_iblard set ';
      if not query1.fieldbyname('season').isnull then
      str1:=str1+'season='''+query1.fieldbyname('season').value+''','
      else str1:=str1+'season='''',';
      if not query1.fieldbyname('clinet').isnull then
      str1:=str1+'client='''+query1.fieldbyname('clinet').value+''','
      else str1:=str1+'client='''',';
      if not query1.fieldbyname('indt').isnull then
      str1:=str1+'indt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('indt').value)+''','
      else str1:=str1+'indt=null,';
      if not query1.fieldbyname('findt').isnull then
      str1:=str1+'findt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('findt').value)+''','
      else str1:=str1+'findt=null,';
      if not query1.fieldbyname('rfindt').isnull then
      str1:=str1+'rfindt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('rfindt').value)+''','
      else str1:=str1+'rfindt=null,';
      if not query1.fieldbyname('clsdt').isnull then
      str1:=str1+'clsdt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('clsdt').value)+''' '
      else str1:=str1+'clsdt=null ';
      str1:=str1+'where seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and dseq='+query1.fieldbyname('dseq').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
end;

procedure Tfrmlard_ibooking.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmlard_ibooking.BitBtn3Click(Sender: TObject);
var
  cobject: TcxSSCellObject;
  i:integer;
begin
  screen.cursor:=crHourglass;
  try
  //savedialog1.InitialDir:=extractfiledir(application.ExeName);
  sSheet1.LoadFromFile(extractfilepath(application.ExeName)+'LWPM_IBLARD.xls');
  if query1.state=dsedit then query1.post;
  cobject:=sSheet1.Sheet.GetCellObject(1,10);
  cobject.Text:=frmpdn.Query1.fieldbyname('exfty').asstring;
  cobject:=sSheet1.Sheet.GetCellObject(8,11);
  //if not fieldbyname('dseq').IsNull then
  cobject.text:='PDN#: '+frmpdn.query1.fieldbyname('pdn').value;
  //else cobject.Text:='';
  i:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_iblard where seq=:x1 order by seq,dseq';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    first;
    while not eof do begin
      cobject:=sSheet1.Sheet.GetCellObject(0,14+i);
      if not fieldbyname('dseq').IsNull then
      cobject.text:=fieldbyname('dseq').asstring
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(1,14+i);
      if not fieldbyname('season').IsNull then
      cobject.text:=fieldbyname('season').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(2,14+i);
      if not fieldbyname('clinet').IsNull then
      cobject.text:=fieldbyname('clinet').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(3,14+i);
      if not fieldbyname('cstyle').IsNull then
      cobject.text:=fieldbyname('cstyle').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(4,14+i);
      if not fieldbyname('custpo').IsNull then
      cobject.text:=fieldbyname('custpo').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(5,14+i);
      if not fieldbyname('qty').IsNull then
      cobject.text:=fieldbyname('qty').asstring
      else cobject.Text:='0';
      cobject:=sSheet1.Sheet.GetCellObject(6,14+i);
      if not fieldbyname('indt').IsNull then
      cobject.text:=formatdatetime('yyyy-MM-dd',fieldbyname('indt').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(7,14+i);
      if not fieldbyname('findt').IsNull then
      cobject.text:=formatdatetime('yyyy-MM-dd',fieldbyname('findt').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(8,14+i);
      if not fieldbyname('rfindt').IsNull then
      cobject.text:=formatdatetime('yyyy-MM-dd',fieldbyname('rfindt').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(9,14+i);
      if not fieldbyname('clsdt').IsNull then
      cobject.text:=formatdatetime('yyyy-MM-dd',fieldbyname('clsdt').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(10,14+i);
      if not fieldbyname('j2_job').isnull then
      cobject.Text:=fieldbyname('j_no').value+'/'+fieldbyname('j2_job').value
      else cobject.Text:=fieldbyname('j_no').value;

      i:=i+1;
      application.ProcessMessages;
      next;
    end;
  end;
  savedialog1.Execute;
  if pos('XLS',uppercase(savedialog1.FileName))>0 then
  sSheet1.savetofile(savedialog1.FileName)
  else sSheet1.SaveToFile(savedialog1.FileName+'.xls');
  showmessage('Completed!');
  finally
    cobject.Free;
    screen.cursor:=crDefault
  end;
end;

procedure Tfrmlard_ibooking.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.Handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmlard_ibooking.BitBtn2Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
  {
  if not query1.fieldbyname('dseq').isnull then begin
    if pagecontrol1.ActivePageIndex=0 then begin
      dt001.Caption:=dateedit1.Text;
      ppReport1.Print;
    end else if pagecontrol1.ActivePageIndex=1 then begin
      dt002.Caption:=dateedit1.Text;
      ppReport2.Print;
    end;
  end;
  }
      dt002.Caption:=dateedit1.Text;
      mychk1.Checked:=ichk1.Checked;
      mychk2.Checked:=ichk2.Checked;
      mychk3.Checked:=schk1.Checked;
      mychk4.Checked:=schk2.Checked;
      ppReport2.Print;
end;

procedure Tfrmlard_ibooking.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if not query1.fieldbyname('j2_job').isnull then
  rmk001.Caption:=query1.fieldbyname('j_no').value+'/'+query1.fieldbyname('j2_job').value
  else rmk001.Caption:=query1.fieldbyname('j_no').value;
end;

procedure Tfrmlard_ibooking.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlard_ibooking.PageControl1Change(Sender: TObject);
begin
  //{
  if pagecontrol1.ActivePageIndex=0 then begin
    with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_iblard where seq=:x1 and ((shpm=''AIR'') or (shpm is null))';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        open;
    end;
    schk1.Checked:=true;
    schk2.Checked:=false;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_iblard where seq=:x1 and shpm=''BOAT''';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        open;
    end;
    schk1.Checked:=false;
    schk2.Checked:=true;
  end;
  //}
  {
    with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_iblard where seq=:x1';// and ((shpm=''AIR'') or (shpm is null))';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        open;
    end;
  }
end;

procedure Tfrmlard_ibooking.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlard_ibooking.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if not query1.fieldbyname('j2_job').isnull then
  rmk002.Caption:=query1.fieldbyname('j_no').value+'/'+query1.fieldbyname('j2_job').value
  else rmk002.Caption:=query1.fieldbyname('j_no').value;
end;

end.
 