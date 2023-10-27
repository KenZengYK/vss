unit cmyr_ibookingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh, DBCtrls,
  ExtCtrls, cxControls, cxSSheet, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppBands, ppCache, ppVar,
  myChkBox, ppStrtch, ppMemo, ppViewr, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, ppParameter;

type
  Tfrmcmyr_ibooking = class(TForm)
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
    DBGridEh1: TDBGridEh;
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
    ppSummaryBand1: TppSummaryBand;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    myCheckBox1: TmyCheckBox;
    ppLabel3: TppLabel;
    myCheckBox2: TmyCheckBox;
    ppLabel4: TppLabel;
    myCheckBox3: TmyCheckBox;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    myCheckBox4: TmyCheckBox;
    ppLabel24: TppLabel;
    myCheckBox5: TmyCheckBox;
    ppLabel25: TppLabel;
    myCheckBox6: TmyCheckBox;
    ppLabel26: TppLabel;
    ppShape1: TppShape;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel35: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
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
    ppShape2: TppShape;
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
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppDBText12: TppDBText;
    ppMemo1: TppMemo;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
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
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    ppLabel73: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel74: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcmyr_ibooking: Tfrmcmyr_ibooking;

implementation

uses mainformu, pdnformu, pdnprintformu;

{$R *.dfm}

procedure Tfrmcmyr_ibooking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcmyr_ibooking:=nil;
end;

procedure Tfrmcmyr_ibooking.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmcmyr_ibooking.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftboolean,'x01',ptinput);
      params.createparam(ftboolean,'x02',ptinput);
      params.createparam(ftboolean,'x03',ptinput);
      params.createparam(ftboolean,'x04',ptinput);
      params.createparam(ftboolean,'x05',ptinput);
      params.createparam(ftboolean,'x06',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      commandtext:='update tbl_pdn_ibcmyr set inloc=:x1,indt=:x2,dept=:x3,pdesc=:x4,fwddt=:x5,neword=:x6,fext=:x7,qcfl=:8,memo1=:x9,'
                  +'gm=:x01,app=:x02,ft=:x03,iin=:x04,ffi=:x05,rfi=:x06 where seq=:x10 and dseq=:x11';

      if not query1.fieldbyname('inloc').isnull then
      params[0].asstring:=query1.fieldbyname('inloc').value
      else params[0].asstring:='';
      if not query1.FieldByName('indt').isnull then
      params[1].asdate:=query1.fieldbyname('indt').value;
      if not query1.fieldbyname('dept').isnull then
      params[2].asstring:=query1.fieldbyname('dept').value
      else params[2].asstring:='';
      if not query1.fieldbyname('pdesc').isnull then
      params[3].asstring:=query1.fieldbyname('pdesc').value
      else params[3].asstring:='';
      if not query1.fieldbyname('fwddt').isnull then
      params[4].asdate:=query1.fieldbyname('fwddt').value;
      if not query1.fieldbyname('neword').isnull then
      params[5].asstring:=query1.fieldbyname('neword').value
      else params[5].asstring:='';
      if not query1.fieldbyname('fext').isnull then
      params[6].asstring:=query1.fieldbyname('fext').value
      else params[6].asstring:='';
      if not query1.fieldbyname('qcfl').isnull then
      params[7].asstring:=query1.fieldbyname('qcfl').value
      else params[7].asstring:='';
      if not query1.fieldbyname('memo1').isnull then
      params[8].asstring:=query1.fieldbyname('memo1').value
      else params[8].asstring:='';
      if not query1.fieldbyname('gm').isnull then
      params[9].asboolean:=query1.fieldbyname('gm').value
      else params[9].asboolean:=false;
      if not query1.fieldbyname('app').isnull then
      params[10].asboolean:=query1.fieldbyname('app').value
      else params[10].asboolean:=false;
      if not query1.fieldbyname('ft').isnull then
      params[11].asboolean:=query1.fieldbyname('ft').value
      else params[11].asboolean:=false;
      if not query1.fieldbyname('iin').isnull then
      params[12].asboolean:=query1.fieldbyname('iin').value
      else params[12].asboolean:=false;
      if not query1.fieldbyname('ffi').isnull then
      params[13].asboolean:=query1.fieldbyname('ffi').value
      else params[13].asboolean:=false;
      if not query1.fieldbyname('rfi').isnull then
      params[14].asboolean:=query1.fieldbyname('rfi').value
      else params[14].asboolean:=false;
      params[15].asinteger:=query1.fieldbyname('seq').value;
      params[16].asinteger:=query1.fieldbyname('dseq').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_pdn_ibcmyr set ';
      if not query1.fieldbyname('inloc').isnull then
      str1:=str1+'inloc='''+query1.fieldbyname('inloc').value+''','
      else str1:=str1+'inloc='''',';
      if not query1.FieldByName('indt').isnull then
      str1:=str1+'indt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('indt').value)+''','
      else str1:=str1+'indt=null,';
      if not query1.fieldbyname('dept').isnull then
      str1:=str1+'dept='''+query1.fieldbyname('dept').value+''','
      else str1:=str1+'dept='''',';
      if not query1.fieldbyname('pdesc').isnull then
      str1:=str1+'pdesc='''+query1.fieldbyname('pdesc').value+''','
      else str1:=str1+'pdesc='''',';
      if not query1.fieldbyname('fwddt').isnull then
      str1:=str1+'fwddt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('fwddt').value)+''','
      else str1:=str1+'fwddt=null,';
      if not query1.fieldbyname('neword').isnull then
      str1:=str1+'neword='''+query1.fieldbyname('neword').value+''','
      else str1:=str1+'neword='''',';
      if not query1.fieldbyname('fext').isnull then
      str1:=str1+'fext='''+query1.fieldbyname('fext').value+''','
      else str1:=str1+'fext='''',';
      if not query1.fieldbyname('qcfl').isnull then
      str1:=str1+'qcfl='''+query1.fieldbyname('qcfl').value+''','
      else str1:=str1+'qcfl='''',';
      if not query1.fieldbyname('memo1').isnull then
      str1:=str1+'memo1='''+query1.fieldbyname('memo1').value+''','
      else str1:=str1+'memo1='''',';
      if not query1.fieldbyname('gm').isnull then
      str1:=str1+'gm='+query1.fieldbyname('gm').asstring+','
      else str1:=str1+'gm=0,';
      if not query1.fieldbyname('app').isnull then
      str1:=str1+'app='+query1.fieldbyname('app').asstring+','
      else str1:=str1+'app=0,';
      if not query1.fieldbyname('ft').isnull then
      str1:=str1+'ft='+query1.fieldbyname('ft').asstring+','
      else str1:=str1+'ft=0,';
      if not query1.fieldbyname('iin').isnull then
      str1:=str1+'iin='+query1.fieldbyname('iin').asstring+','
      else str1:=str1+'iin=0,';
      if not query1.fieldbyname('ffi').isnull then
      str1:=str1+'ffi='+query1.fieldbyname('ffi').asstring+','
      else str1:=str1+'ffi=0,';
      if not query1.fieldbyname('rfi').isnull then
      str1:=str1+'rfi='+query1.fieldbyname('rfi').asstring+' '
      else str1:=str1+'rfi=0 ';
      str1:=str1+'where seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and dseq='+query1.fieldbyname('dseq').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
end;

procedure Tfrmcmyr_ibooking.BitBtn3Click(Sender: TObject);
var
  cobject: TcxSSCellObject;
  i:integer;
begin
  screen.cursor:=crHourglass;
  try
  //savedialog1.InitialDir:=extractfiledir(application.ExeName);
  sSheet1.LoadFromFile(extractfilepath(application.ExeName)+'LWPM_IBCMYR.xls');
  if query1.state=dsedit then query1.post;
  i:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_ibcmyr where seq=:x1 order by seq,dseq';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    first;
    while not eof do begin
      cobject:=sSheet1.Sheet.GetCellObject(0,14+i);
      if not fieldbyname('inloc').IsNull then
      cobject.text:=fieldbyname('inloc').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(1,14+i);
      if not fieldbyname('indt').IsNull then
      cobject.text:=formatdatetime('yy-MM-dd',fieldbyname('indt').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(2,14+i);
      if not fieldbyname('dept').IsNull then
      cobject.text:=fieldbyname('dept').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(3,14+i);
      if not fieldbyname('custpo').IsNull then
      cobject.text:=fieldbyname('custpo').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(4,14+i);
      if not fieldbyname('cstyle').IsNull then
      cobject.text:=fieldbyname('cstyle').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(5,14+i);
      if not fieldbyname('qty').IsNull then
      cobject.text:=fieldbyname('qty').asstring
      else cobject.Text:='0';
      cobject:=sSheet1.Sheet.GetCellObject(6,14+i);
      if not fieldbyname('pdesc').IsNull then
      cobject.text:=fieldbyname('pdesc').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(7,14+i);
      if not fieldbyname('fwddt').IsNull then
      cobject.text:=formatdatetime('yy-MM-dd',fieldbyname('fwddt').value)
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(8,14+i);
      if not fieldbyname('neword').IsNull then
      cobject.text:=fieldbyname('neword').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(9,14+i);
      if not fieldbyname('fext').IsNull then
      cobject.text:=fieldbyname('fext').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(10,14+i);
      if not fieldbyname('qcfl').IsNull then
      cobject.text:=fieldbyname('qcfl').value
      else cobject.Text:='';
      cobject:=sSheet1.Sheet.GetCellObject(11,14+i);
      if not fieldbyname('memo1').IsNull then
      cobject.text:=fieldbyname('memo1').value
      else cobject.Text:='';

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

procedure Tfrmcmyr_ibooking.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.Handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmcmyr_ibooking.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcmyr_ibooking.BitBtn2Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
  if not query1.fieldbyname('dseq').isnull then begin
    mycheckbox1.Checked:=query1.fieldbyname('gm').value;
    mycheckbox2.Checked:=query1.fieldbyname('app').value;
    mycheckbox3.Checked:=query1.fieldbyname('ft').value;
    mycheckbox4.Checked:=query1.fieldbyname('iin').value;
    mycheckbox5.Checked:=query1.fieldbyname('ffi').value;
    mycheckbox6.Checked:=query1.fieldbyname('rfi').value;
    ppReport1.Print;
  end;
end;

end.
 