unit stirling_qcbookingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons, DB, DBClient,
  DBCtrls, cxControls, cxSSheet, cxSSTypes, ShellApi, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppVar, Mask, rxToolEdit, rxCurrEdit, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  ppParameter;

type
  Tfrmstirling_qcbooking = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    SaveDialog1: TSaveDialog;
    sSheet1: TcxSpreadSheet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    dt001: TppLabel;
    ver001: TppLabel;
    ppLabel13: TppLabel;
    wk001: TppLabel;
    pdn001: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel16: TppLabel;
    ppLine3: TppLine;
    ppShape2: TppShape;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine4: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine10: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine11: TppLine;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine12: TppLine;
    ppLabel37: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    dt002: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
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
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
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
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    cEdit1: TCurrencyEdit;
    ppLabel12: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine38: TppLine;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel62: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLabel67: TppLabel;
    ppLine41: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmstirling_qcbooking: Tfrmstirling_qcbooking;

implementation

uses mainformu, pdnformu, pdnprintformu;

{$R *.dfm}

procedure Tfrmstirling_qcbooking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmstirling_qcbooking:=nil;
end;

procedure Tfrmstirling_qcbooking.BitBtn3Click(Sender: TObject);
var
  cobject: TcxSSCellObject;
  i:integer;
begin
  screen.cursor:=crHourglass;
  try
  //savedialog1.InitialDir:=extractfiledir(application.ExeName);
  sSheet1.LoadFromFile(extractfilepath(application.ExeName)+'LWPM_IBTAMA.xls');
  if query1.state=dsedit then query1.post;
  cobject:=sSheet1.Sheet.GetCellObject(11,7);
  //cobject.Text:='Date ���: '+formatdatetime('yyyy/MM/dd',query1.fieldbyname('exfty').value);
  cobject.Text:='Date ���: '+formatdatetime('yyyy/MM/dd',dateedit1.date);
  cobject:=sSheet1.Sheet.GetCellObject(16,7);
  cobject.Text:='Version: '+formatfloat('0.0',cedit1.value);
  cobject:=sSheet1.Sheet.GetCellObject(11,9);
  cobject.Text:='Week: '+query1.fieldbyname('wk').asstring;
  cobject:=sSheet1.Sheet.GetCellObject(16,9);
  cobject.Text:='PDN No: '+query1.fieldbyname('pdn').asstring;
  i:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_ibtama where seq=:x1 order by seq,j_no,custpo,cstyle,acol';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    first;
    while not eof do begin
      cobject:=sSheet1.Sheet.GetCellObject(1,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eLeft].Style:=lsMedium;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('j_no').IsNull then
      cobject.text:=fieldbyname('j_no').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(2,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('custpo').isnull then
      cobject.Text:=fieldbyname('custpo').value
      else cobject.text:='';
      cobject:=sSheet1.Sheet.GetCellObject(3,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('cstyle').isnull then
      cobject.Text:=fieldbyname('cstyle').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(4,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('range').isnull then
      cobject.Text:=fieldbyname('range').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(5,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('cname').isnull then
      cobject.Text:=fieldbyname('cname').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(6,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('ccol').isnull then
      cobject.Text:=fieldbyname('ccol').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(7,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('acol').isnull then
      cobject.Text:=fieldbyname('acol').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(8,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('pqty').isnull then
      cobject.Text:=fieldbyname('pqty').asstring
      else cobject.Text:='0';
      cobject:=sSheet1.Sheet.GetCellObject(9,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('wqty').isnull then
      cobject.Text:=fieldbyname('wqty').asstring
      else cobject.Text:='0';
      cobject:=sSheet1.Sheet.GetCellObject(10,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('sqty').isnull then
      cobject.Text:=fieldbyname('sqty').asstring
      else cobject.Text:='0';
      cobject:=sSheet1.Sheet.GetCellObject(11,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('spqty').isnull then
      cobject.Text:=fieldbyname('spqty').asstring
      else cobject.Text:='0';
      cobject:=sSheet1.Sheet.GetCellObject(12,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('oqty').isnull then
      cobject.Text:=fieldbyname('oqty').asstring
      else cobject.Text:='0';
      cobject:=sSheet1.Sheet.GetCellObject(13,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('bqty').isnull then
      cobject.Text:=fieldbyname('bqty').asstring
      else cobject.Text:='0';
      cobject:=sSheet1.Sheet.GetCellObject(14,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('dt01').isnull then
      cobject.Text:=formatdatetime('yy/MM/dd',fieldbyname('dt01').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(15,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('dt02').isnull then
      cobject.Text:=formatdatetime('yy/MM/dd',fieldbyname('dt02').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(16,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('exfty').isnull then
      cobject.Text:=formatdatetime('yy/MM/dd, hh.nn',fieldbyname('exfty').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(17,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('lstqc').isnull then
      cobject.Text:=formatdatetime('yy/MM/dd, hh.nn',fieldbyname('lstqc').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(18,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsThin;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('pline').isnull then
      cobject.Text:=fieldbyname('pline').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(19,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsMedium;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      if not fieldbyname('remark').isnull then
      cobject.Text:=fieldbyname('remark').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(20,13+i);
      cobject.Style.Font.Size:=9;
      cobject.Style.Borders.Edges[eLeft].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Color:=clBlack;
      cobject.Style.Borders.Edges[eBottom].Color:=clBlack;
      cobject.Style.Borders.Edges[eRight].Style:=lsMedium;
      cobject.Style.Borders.Edges[eBottom].Style:=lsThin;
      cobject.Text:='';

      i:=i+1;
      application.ProcessMessages;
      next;
    end;
  end;

  savedialog1.Execute;
  if pos('XLS',uppercase(savedialog1.FileName))>0 then
  sSheet1.savetofile(savedialog1.FileName)
  else sSheet1.SaveToFile(savedialog1.FileName+'.xls');

  //shellexecute(0,'open',pchar(savedialog1.FileName+'.xls'),'','c:\temp',sw_show);
  //winexec(pchar(savedialog1.FileName+'.xls'),sw_show);
  showmessage('Completed!');
  finally
    cobject.Free;
    screen.cursor:=crDefault
  end;
end;

procedure Tfrmstirling_qcbooking.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.Post;
end;

procedure Tfrmstirling_qcbooking.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftdatetime,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftdate,'x11',ptinput);
      params.createparam(ftdate,'x12',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftstring,'x10',ptinput);
      commandtext:='update tbl_pdn_ibtama set range=:x1,ccol=:x2,exfty=:x3,lstqc=:x4,pline=:x5,remark=:x6,dt01=:x11,dt02=:x12 '
                  +'where seq=:x7 and j_no=:x8 and custpo=:x9 and acol=:x10';

      if not query1.fieldbyname('range').isnull then
      params[0].asstring:=query1.fieldbyname('range').value
      else params[0].asstring:='';
      if not query1.fieldbyname('ccol').isnull then
      params[1].asstring:=query1.fieldbyname('ccol').value
      else params[1].asstring:='';
      if not query1.fieldbyname('exfty').isnull then
      params[2].asdatetime:=query1.fieldbyname('exfty').value;
      if not query1.fieldbyname('lstqc').isnull then
      params[3].asdatetime:=query1.fieldbyname('lstqc').value
      else params[3].asdatetime:=now;
      if not query1.fieldbyname('pline').isnull then
      params[4].asstring:=query1.fieldbyname('pline').value
      else params[4].asstring:='';
      if not query1.fieldbyname('remark').isnull then
      params[5].asstring:=query1.fieldbyname('remark').value
      else params[5].asstring:='';
      if not query1.fieldbyname('dt01').isnull then
      params[6].asdate:=query1.fieldbyname('dt01').value;
      if not query1.fieldbyname('dt02').isnull then
      params[7].asdate:=query1.fieldbyname('dt02').value;
      params[8].asinteger:=query1.fieldbyname('seq').value;
      params[9].asstring:=query1.fieldbyname('j_no').value;
      params[10].asstring:=query1.fieldbyname('custpo').value;
      params[11].asstring:=query1.fieldbyname('acol').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_pdn_ibtama set ';
      if not query1.fieldbyname('range').isnull then
      str1:=str1+'range='''+query1.fieldbyname('range').value+''','
      else str1:=str1+'range='''',';
      if not query1.fieldbyname('ccol').isnull then
      str1:=str1+'ccol='''+query1.fieldbyname('ccol').value+''','
      else str1:=str1+'ccol='''',';
      if not query1.fieldbyname('exfty').isnull then
      str1:=str1+'exfty='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('exfty').value)+''','
      else str1:=str1+'exfty=null,';
      if not query1.fieldbyname('lstqc').isnull then
      str1:=str1+'lstqc='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('lstqc').value)+''','
      else str1:=str1+'lstqc='''+formatdatetime('yyyy-MM-dd',date)+''',';
      if not query1.fieldbyname('pline').isnull then
      str1:=str1+'pline='''+query1.fieldbyname('pline').value+''','
      else str1:=str1+'pline='''',';
      if not query1.fieldbyname('remark').isnull then
      str1:=str1+'remark='''+query1.fieldbyname('remark').value+''','
      else str1:=str1+'remark='''',';
      if not query1.fieldbyname('dt01').isnull then
      str1:=str1+'dt01='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt01').value)+''','
      else str1:=str1+'dt01=null,';
      if not query1.fieldbyname('dt02').isnull then
      str1:=str1+'dt02='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt02').value)+''' '
      else str1:=str1+'dt02=null ';
      str1:=str1+'where seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and j_no='''+query1.fieldbyname('j_no').value+''' ';
      str1:=str1+'and custpo='''+query1.fieldbyname('custpo').value+''' ';
      str1:=str1+'and acol='''+query1.fieldbyname('acol').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
end;

procedure Tfrmstirling_qcbooking.BitBtn2Click(Sender: TObject);
begin
  if query4.state=dsedit then query4.post;
  if not query1.fieldbyname('pdn').isnull then begin
    //dt002.Caption:=formatdatetime('yyyy/MM/dd',frmpdn.Query1.fieldbyname('exfty').value);
    dt002.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date);
    ver001.Caption:='Version: '+formatfloat('0.0',cEdit1.Value);
    wk001.Caption:='Week :  '+query1.fieldbyname('wk').asstring;
    pdn001.Caption:='PDN :  '+query1.fieldbyname('pdn').value;
    ppReport1.Print;
  end;
end;

procedure Tfrmstirling_qcbooking.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
