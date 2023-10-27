unit pdnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, ComCtrls, Grids, DBGridEh,
  Buttons, DB, DBClient, Menus, GridsEh, DBCtrls, Spin, DateUtils,
  QExport4, QExport4XLS, ADODB, DBTables, DBGridEhImpExp;

type
  Tfrmpdn = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    PageControl1: TPageControl;
    Panel2: TPanel;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    DBGridEh2: TDBGridEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    Query7: TClientDataSet;
    Query8: TClientDataSet;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Panel6: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    TabSheet2: TTabSheet;
    DBGridEh3: TDBGridEh;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    TabSheet22: TTabSheet;
    DataSource5: TDataSource;
    PageControl2: TPageControl;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    TabSheet27: TTabSheet;
    TabSheet28: TTabSheet;
    TabSheet29: TTabSheet;
    TabSheet30: TTabSheet;
    TabSheet31: TTabSheet;
    TabSheet32: TTabSheet;
    TabSheet33: TTabSheet;
    TabSheet34: TTabSheet;
    TabSheet35: TTabSheet;
    TabSheet36: TTabSheet;
    TabSheet37: TTabSheet;
    DBGridEh23: TDBGridEh;
    BitBtn7: TBitBtn;
    TabSheet48: TTabSheet;
    TabSheet49: TTabSheet;
    TabSheet50: TTabSheet;
    TabSheet51: TTabSheet;
    TabSheet52: TTabSheet;
    TabSheet53: TTabSheet;
    TabSheet54: TTabSheet;
    TabSheet55: TTabSheet;
    TabSheet56: TTabSheet;
    TabSheet57: TTabSheet;
    TabSheet58: TTabSheet;
    TabSheet59: TTabSheet;
    TabSheet60: TTabSheet;
    TabSheet61: TTabSheet;
    TabSheet62: TTabSheet;
    PopupMenu1: TPopupMenu;
    UpdOSQTY1: TMenuItem;
    Label7: TLabel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBGridEh24: TDBGridEh;
    DBGridEh25: TDBGridEh;
    DBGridEh26: TDBGridEh;
    DBGridEh27: TDBGridEh;
    DBGridEh28: TDBGridEh;
    DBGridEh29: TDBGridEh;
    DBGridEh30: TDBGridEh;
    DBGridEh31: TDBGridEh;
    DBGridEh32: TDBGridEh;
    DBGridEh33: TDBGridEh;
    DBGridEh34: TDBGridEh;
    DBGridEh35: TDBGridEh;
    DBGridEh36: TDBGridEh;
    DBGridEh37: TDBGridEh;
    DBGridEh48: TDBGridEh;
    DBGridEh49: TDBGridEh;
    DBGridEh50: TDBGridEh;
    DBGridEh51: TDBGridEh;
    DBGridEh52: TDBGridEh;
    DBGridEh53: TDBGridEh;
    DBGridEh54: TDBGridEh;
    DBGridEh55: TDBGridEh;
    DBGridEh56: TDBGridEh;
    DBGridEh57: TDBGridEh;
    DBGridEh58: TDBGridEh;
    DBGridEh59: TDBGridEh;
    DBGridEh60: TDBGridEh;
    DBGridEh61: TDBGridEh;
    DBGridEh62: TDBGridEh;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    TabSheet93: TTabSheet;
    TabSheet94: TTabSheet;
    TabSheet95: TTabSheet;
    TabSheet96: TTabSheet;
    TabSheet97: TTabSheet;
    TabSheet98: TTabSheet;
    TabSheet99: TTabSheet;
    TabSheet100: TTabSheet;
    TabSheet101: TTabSheet;
    TabSheet102: TTabSheet;
    DBGridEh93: TDBGridEh;
    DBGridEh94: TDBGridEh;
    DBGridEh95: TDBGridEh;
    DBGridEh96: TDBGridEh;
    DBGridEh97: TDBGridEh;
    DBGridEh98: TDBGridEh;
    DBGridEh99: TDBGridEh;
    DBGridEh100: TDBGridEh;
    DBGridEh101: TDBGridEh;
    DBGridEh102: TDBGridEh;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    wEdit1: TSpinEdit;
    BitBtn13: TBitBtn;
    ChangePDN1: TMenuItem;
    RecalculateVoyage1: TMenuItem;
    FirstPage1: TMenuItem;
    PDNEnquiry1: TMenuItem;
    BitBtn14: TBitBtn;
    RemoveRWO1: TMenuItem;
    Releaseto01: TMenuItem;
    Releaseto21: TMenuItem;
    BitBtn15: TBitBtn;
    CheckRWO1: TMenuItem;
    RemoveVoyage1: TMenuItem;
    RefreshPDN1: TMenuItem;
    PrintRWO1: TMenuItem;
    SaveDialog1: TSaveDialog;
    ransferDatatoWeb1: TMenuItem;
    ADOQuery2: TADOQuery;
    Database1: TDatabase;
    ADOQuery1: TQuery;
    ComparePDNMNF1: TMenuItem;
    PrintInspectionBooking1: TMenuItem;
    ClientDataSet2: TClientDataSet;
    DataSet2: TADOQuery;
    BitBtn16: TBitBtn;
    ROQuery1: TClientDataSet;
    PDNpastbymonth1: TMenuItem;
    eXLS1: TQExport4XLS;
    RefreshActualDate1: TMenuItem;
    CheckSampleQty1: TMenuItem;
    OutstandingRWOs1: TMenuItem;
    PopupMenu2: TPopupMenu;
    ExporttoExcel1: TMenuItem;
    UpdateWeight1: TMenuItem;
    ADOQuery3: TADOQuery;
    ACCESSCUSTPOQTY1: TMenuItem;
    DepartmentalTransitT3AQLpassExfty1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query3AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGridEh3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBGridEh2Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query2AfterPost(DataSet: TDataSet);
    procedure Query1AfterClose(DataSet: TDataSet);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn13Click(Sender: TObject);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure QuerySQTYChange(Sender: TField);
    procedure ChangePDN1Click(Sender: TObject);
    procedure UpdOSQTY1Click(Sender: TObject);
    procedure RecalculateVoyage1Click(Sender: TObject);
    procedure FirstPage1Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure PDNEnquiry1Click(Sender: TObject);
    procedure Query2BeforeOpen(DataSet: TDataSet);
    procedure BitBtn14Click(Sender: TObject);
    procedure RemoveRWO1Click(Sender: TObject);
    procedure Releaseto01Click(Sender: TObject);
    procedure Releaseto21Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CheckRWO1Click(Sender: TObject);
    procedure RemoveVoyage1Click(Sender: TObject);
    procedure RefreshPDN1Click(Sender: TObject);
    procedure PrintRWO1Click(Sender: TObject);
    procedure ransferDatatoWeb1Click(Sender: TObject);
    procedure ComparePDNMNF1Click(Sender: TObject);
    procedure PrintInspectionBooking1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure PDNpastbymonth1Click(Sender: TObject);
    procedure RefreshActualDate1Click(Sender: TObject);
    procedure CheckSampleQty1Click(Sender: TObject);
    procedure OutstandingRWOs1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ExporttoExcel1Click(Sender: TObject);
    procedure UpdateWeight1Click(Sender: TObject);
    procedure ACCESSCUSTPOQTY1Click(Sender: TObject);
    procedure DepartmentalTransitT3AQLpassExfty1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure opentable(Const seq: integer);
    procedure showpage;
    procedure updnnw(const seq: integer);
    procedure updcustpoqty(const seq: integer);
    procedure updcustpoqty_1(const seq, dseq: integer);
  end;

var
  frmpdn: Tfrmpdn;
  tm:tdatetime;
  logseq:integer;
  strupd:string;

implementation

uses mainformu, selpdnformu, pdnreportformu, pdnsplitformu, pdnmarksformu,
  pdnprintformu, pdnwriteformu, bcnformu, voyageformu, pdnqty_enqformu,
  pdnversionformu, missingrwoformu, rwotransformu, pdnpastformu, cmppdnmnfformu,
  ibprintformu, pdn_notepadformu, pdn_osrwosformu, PDN_T3AQLEXFTYformu;

{$R *.dfm}

procedure Tfrmpdn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmpdn:=nil;
end;

procedure Tfrmpdn.Edit2Change(Sender: TObject);
begin
  if edit2.text>'' then
    query4.Locate('j_no',edit2.Text,[lopartialkey])
  else query4.First;
end;

procedure Tfrmpdn.ExporttoExcel1Click(Sender: TObject);
begin
  try
  if savedialog1.execute then
  SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh1,SaveDialog1.FileName,true);
  finally
    showmessage('succeeded!');
  end;
end;

procedure Tfrmpdn.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.Post;
  if query3.state=dsedit then query3.Post;
end;

procedure Tfrmpdn.Query3AfterPost(DataSet: TDataSet);
var
  pstr:string;
begin
  //if query3.ApplyUpdates(-1)>0 then begin
    {
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftboolean,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      commandtext:='update tbl_pdn_d set sqty=:x1,cfm=:x2,cfmtm=:x3 where seq=:x4 and j_no=:x5 and j2_job=:x6 and ordline=:x7 and rwo=:x8 and acol=:x9 and did=:x10';

      if not query3.fieldbyname('sqty').isnull then
      params[0].asinteger:=query3.fieldbyname('sqty').Value
      else params[0].asinteger:=0;
      if not query3.fieldbyname('cfm').IsNull then
      params[1].asboolean:=query3.fieldbyname('cfm').value
      else params[1].asboolean:=false;
      if not query3.fieldbyname('cfmtm').isnull then
      params[2].asdatetime:=query3.fieldbyname('cfmtm').value;
      params[3].asinteger:=query3.fieldbyname('seq').value;
      params[4].asstring:=query3.fieldbyname('j_no').value;
      params[5].asstring:=query3.fieldbyname('j2_job').value;
      params[6].asinteger:=query3.fieldbyname('ordline').value;
      params[7].asstring:=query3.fieldbyname('rwo').value;
      params[8].asstring:=query3.fieldbyname('acol').value;
      params[9].asinteger:=query3.fieldbyname('did').value;
      execute;
    end;
    }
      strupd:='update tbl_pdn_d set ';
      if not query3.fieldbyname('sqty').isnull then
      strupd:=strupd+'sqty='+query3.fieldbyname('sqty').asstring+' '
      else strupd:=strupd+'sqty=0 ';
      strupd:=strupd+'where seq='+query3.fieldbyname('seq').asstring+' ';
      strupd:=strupd+'and j_no='''+query3.fieldbyname('j_no').value+''' ';
      strupd:=strupd+'and j2_job='''+query3.fieldbyname('j2_job').value+''' ';
      strupd:=strupd+'and ordline='+query3.fieldbyname('ordline').asstring+' ';
      strupd:=strupd+'and rwo='''+query3.fieldbyname('rwo').value+''' ';
      strupd:=strupd+'and acol='''+query3.fieldbyname('acol').value+''' ';
      strupd:=strupd+'and did='+query3.fieldbyname('did').asstring;
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

  //end;
  {
        pstr:='21 '+query3.fieldbyname('seq').asstring+' '+query3.fieldbyname('j_no').value+' '+query3.fieldbyname('j2_job').value+' '+query3.fieldbyname('ordline').asstring+' '+query3.fieldbyname('rwo').value+' '+query3.fieldbyname('acol').value+' '+query3.fieldbyname('did').asstring;
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
  }
end;

procedure Tfrmpdn.FormShow(Sender: TObject);
var
  i:integer;
begin
  edit1.Text:='';
  combobox1.text:='';
  wEdit1.Value:=frmmain.weekno(date);//weekof(date);
  query1.Active:=false;
  query2.Active:=false;
  query3.Active:=false;
  query4.Active:=false;
  for i:=1 to 2 do begin
    pagecontrol1.Pages[i].TabVisible:=false;
  end;
  //if pos('CARTE',frmpdn.caption)>0 then dbgrideh2.columns[3].visible:=false
  //else dbgrideh2.columns[3].visible:=true;;
end;

procedure Tfrmpdn.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  seq:integer;
  pstr,fty:string;
begin
 if key=#13 then begin
  if combobox1.text='PHSL' then fty:='SL' else fty:=combobox1.text;
  if (edit1.text>'') and (combobox1.text>'') then begin
    with query5 do begin
      close;
      params.clear;
      commandtext:='select seq from tbl_pdn_m where pdn='''+edit1.text+''' and tplant='''+fty+'''';
      open;
      if not fieldbyname('seq').isnull then begin
        seq:=fieldbyname('seq').value;
        opentable(seq);
      end else begin
        with query6 do begin
          close;
          params.clear;
          commandtext:='select max(seq) as q1 from tbl_pdn_m';
          if combobox1.text<>'KB' then commandtext:=commandtext+' where seq<160000'
          else commandtext:=commandtext+' where seq>=160000';
          open;
          if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1
          else begin
            if combobox1.Text<>'KB' then seq:=1
            else seq:=160000;
          end;
        end;
        with query6 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='insert into tbl_pdn_m(seq,pdn,tplant,status) values(:x1,:x2,:x3,:x4)';
          params[0].asinteger:=seq;
          params[1].asstring:=edit1.text;
          params[2].asstring:=fty;//combobox1.text;
          params[3].asstring:='0';
          execute;
        end;
        opentable(seq);
      end;
    end;
    {
    pstr:='7 '+combobox1.text+' '+edit1.text;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
  end;
 end;
end;

procedure Tfrmpdn.opentable(const seq: integer);
begin
  screen.Cursor:=crSQLWait;
  try
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_m where seq=:x1';
    params[0].asinteger:=seq;
    open;
  end;
  {
  with query4 do begin
    close;
    params.clear;
    commandtext:='select distinct j_no,j2_job,rwo,acol,cstyle,plan_date,yqlcrq,qty from tblshedule where yzh=0';
    if combobox1.text='PHSL' then commandtext:=commandtext+' and tplant in (''SL'',''SC'',''GG'')'
    else if combobox1.text='SL' then commandtext:=commandtext+' and tplant in (''SL'',''SC'')'
    else if (combobox1.text='GG') or (combobox1.text='RX') then commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')'
    else commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if pos('CARTE',frmpdn.caption)>0 then commandtext:=commandtext+' and j_no like ''CRTE%'''
    else commandtext:=commandtext+' and j_no not like ''CRTE%''';
    open;
  end;
  }
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_rwo where seq=:x1';
    params[0].asinteger:=seq;
    open;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.OutstandingRWOs1Click(Sender: TObject);
begin
  //show outstanding RWOs
  if frmpdn_osrwos=nil then frmpdn_osrwos:=tfrmpdn_osrwos.create(nil);
  frmpdn_osrwos.show;
end;

procedure Tfrmpdn.SpeedButton1Click(Sender: TObject);
var
  seq,dseq:integer;
  r53:boolean;
  pstr:string;
begin
  screen.Cursor:=crSQLWait;
  if query1.State=dsedit then query1.post;
  try
  seq:=query1.fieldbyname('seq').value;
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r52 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r52').isnull then r53:=fieldbyname('r52').value else r53:=false;
  end;
  if r53 then begin
  if query1.fieldbyname('status').value<'20' then begin
  if not query4.FieldByName('j_no').IsNull then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select dseq from tbl_pdn_rwo where j_no='''+query4.fieldbyname('j_no').value+''' and j2_job='''+query4.fieldbyname('j2_job').value+''' and rwo='''+query4.fieldbyname('rwo').value+''' and acol='''+query4.fieldbyname('acol').value+''' and seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if fieldbyname('dseq').isnull then begin
        with query6 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select max(dseq) as q1 from tbl_pdn_rwo where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          open;
          if not fieldbyname('q1').isnull then dseq:=fieldbyname('q1').value+1 else dseq:=1;
        end;
        with query6 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftdate,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftdate,'x10',ptinput);
          params.createparam(ftdate,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          commandtext:='insert into tbl_pdn_rwo(seq,dseq,j_no,j2_job,rwo,acol,cstyle,adddt,addusr,fwdt,exdt,ddt,custpo) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13)';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          params[1].asinteger:=dseq;
          params[2].asstring:=query4.fieldbyname('j_no').value;
          params[3].asstring:=query4.fieldbyname('j2_job').value;
          params[4].asstring:=query4.fieldbyname('rwo').value;
          params[5].asstring:=query4.fieldbyname('acol').value;
          params[6].asstring:=query4.fieldbyname('cstyle').value;
          params[7].asdate:=date;
          params[8].asstring:=frmmain.combobox1.text;
          params[9].asdate:=query4.fieldbyname('fwdt').value;
          params[10].asdate:=query4.fieldbyname('exdt').value;
          params[11].asdate:=query4.fieldbyname('ddt').value;
          if not query4.fieldbyname('custpo').isnull then
          params[12].asstring:=query4.fieldbyname('custpo').value
          else params[12].asstring:='';
          execute;
        end;
        {
        pstr:='19 '+query1.fieldbyname('seq').asstring+' '+inttostr(dseq)+' '+query4.fieldbyname('j_no').value+' '+query4.fieldbyname('j2_job').value+' '+query4.fieldbyname('rwo').value+' '+query4.fieldbyname('acol').value+' '+query4.fieldbyname('cstyle').value;
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
        }
        //updcustpoqty_1(seq,dseq);
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_rwo where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          open;
          last;
        end;
        if not query4.Eof then query4.Next;
      end;
    end;
  end;
  end;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.SpeedButton2Click(Sender: TObject);
var
  dseq,maxd:integer;
  r53,r62:boolean;
  pstr:string;
begin
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r52,r62 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r52').isnull then r53:=fieldbyname('r52').value else r53:=false;
    if not fieldbyname('r62').isnull then r62:=fieldbyname('r62').value else r62:=false;
  end;
  if r53 then begin
  if ((query1.fieldbyname('status').value<'1') or (r62=true)) then begin
  if not query2.fieldbyname('dseq').isnull then begin
    dseq:=query2.fieldbyname('dseq').value;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select max(dseq) as q1 from tbl_pdn_rwo where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      maxd:=fieldbyname('q1').value;
    end;
    if application.messagebox('Delete this RWO?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_removerwo(:x1,:x2)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=dseq;
        execute;
      end;
      {
        pstr:='20 '+query1.fieldbyname('seq').asstring+' '+inttostr(dseq);
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
      }
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_rwo where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        open;
        if dseq<maxd then locate('dseq',dseq,[lopartialkey])
        else last;
      end;
      showpage;
    end;
  end;
  end;
  end;
end;

procedure Tfrmpdn.SpeedButton3Click(Sender: TObject);
var
  r53:boolean;
  pstr:string;
begin
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r52 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r52').isnull then r53:=fieldbyname('r52').value else r53:=false;
  end;
  if r53 then begin
  if query1.fieldbyname('status').value<'1' then begin
  if not query2.fieldbyname('dseq').isnull then begin
    if application.messagebox('Delete all RWOs?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_removerwo(:x1,:x2)';
        params[0].asinteger:=query2.fieldbyname('seq').value;
        params[1].asinteger:=0;
        execute;
      end;
      {
        pstr:='20 '+query1.fieldbyname('seq').asstring+' 0';
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
      }
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_rwo where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        open;
      end;
    end;
  end;
  end;
  end;
end;

procedure Tfrmpdn.Query2AfterOpen(DataSet: TDataSet);
begin
  screen.cursor:=crSQLWait;
  try
  showpage;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.showpage;
var
  i:integer;
begin
    for i:=1 to 2 do begin
      pagecontrol1.Pages[i].TabVisible:=true;
    end;
    if not query2.fieldbyname('j_no').isnull then
    pagecontrol1.Pages[2].Caption:=query2.fieldbyname('j_no').value+' - '+query2.fieldbyname('j2_job').value+' - '+query2.fieldbyname('rwo').value;
end;

procedure Tfrmpdn.PageControl1Change(Sender: TObject);
var
  i,dseq:integer;
  grdeh1:TDBGridEh;
  j_no,j2_job,rwo,acol:string;
  r53,r62:boolean;
begin
  screen.Cursor:=crSQLWait;
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r52,r62 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r52').isnull then r53:=fieldbyname('r52').value else r53:=false;
    if not fieldbyname('r62').isnull then r62:=fieldbyname('r62').value else r62:=false;
  end;
  try
  if pagecontrol1.ActivePageIndex>1 then begin
    dseq:=query2.fieldbyname('dseq').value;//pagecontrol1.ActivePageIndex-1;
    //showmessage(inttostr(dseq));
    grdeh1:=TDBGRIDEH(pagecontrol1.Pages[pagecontrol1.ActivePageIndex].Controls[0]);
    for i:=3 to 177 do begin
      grdeh1.columns[i].Visible:=false;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_pdn_rwo where seq=:x1 and dseq=:x2';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=dseq;
      open;
      j_no:=fieldbyname('j_no').value;
      j2_job:=fieldbyname('j2_job').value;
      rwo:=fieldbyname('rwo').value;
      acol:=fieldbyname('acol').value;
    end;
    pagecontrol1.ActivePage.Caption:=j_no+' - ' +j2_job+' - '+rwo;
    //-- PDN Detail Data generate --//
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_generate(:x1,:x2)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=dseq;
        execute;
      end;
    if (query1.FieldByName('status').Value<'20') or (r62=true) then begin
      if r53 then
      grdeh1.ReadOnly:=false
      else grdeh1.ReadOnly:=true;
    end else grdeh1.ReadOnly:=true;
    //--Display PDN Records --//
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_d where seq=:x1 and j_no='''+j_no+''' and j2_job='''+j2_job+''' and rwo='''+rwo+''' and acol='''+acol+'''';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select * from tbl_pdn_h where seq=:x1 and j_no=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asstring:=j_no;
      params[2].asstring:=j2_job;
      params[3].asstring:=rwo;
      params[4].asstring:=acol;
      open;
      if not fieldbyname('q1line').isnull then begin
        for i:=3 to 9 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[3].title.caption:=fieldbyname('qn1').value+'|QN Qty';
        grdeh1.columns[4].title.caption:=fieldbyname('qn1').value+'|PDN Qty';
        grdeh1.columns[5].title.caption:=fieldbyname('qn1').value+'|T1 Qty';
        grdeh1.columns[6].title.caption:=fieldbyname('qn1').value+'|T2 Qty';
        grdeh1.columns[7].title.caption:=fieldbyname('qn1').value+'|T3 Qty';
        grdeh1.Columns[8].Title.caption:=fieldbyname('qn1').value+'|AQL Qty';
        grdeh1.columns[9].title.caption:=fieldbyname('qn1').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q2line').isnull then begin
        for i:=10 to 16 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[10].title.caption:=fieldbyname('qn2').value+'|QN Qty';
        grdeh1.columns[11].title.caption:=fieldbyname('qn2').value+'|PDN Qty';
        grdeh1.columns[12].title.caption:=fieldbyname('qn2').value+'|T1 Qty';
        grdeh1.columns[13].title.caption:=fieldbyname('qn2').value+'|T2 Qty';
        grdeh1.columns[14].title.caption:=fieldbyname('qn2').value+'|T3 Qty';
        grdeh1.Columns[15].Title.caption:=fieldbyname('qn2').value+'|AQL Qty';
        grdeh1.columns[16].title.caption:=fieldbyname('qn2').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q3line').isnull then begin
        for i:=17 to 23 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[17].title.caption:=fieldbyname('qn3').value+'|QN Qty';
        grdeh1.columns[18].title.caption:=fieldbyname('qn3').value+'|PDN Qty';
        grdeh1.columns[19].title.caption:=fieldbyname('qn3').value+'|T1 Qty';
        grdeh1.columns[20].title.caption:=fieldbyname('qn3').value+'|T2 Qty';
        grdeh1.columns[21].title.caption:=fieldbyname('qn3').value+'|T3 Qty';
        grdeh1.Columns[22].Title.caption:=fieldbyname('qn3').value+'|AQL Qty';
        grdeh1.columns[23].title.caption:=fieldbyname('qn3').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q4line').isnull then begin
        for i:=24 to 30 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[24].title.caption:=fieldbyname('qn4').value+'|QN Qty';
        grdeh1.columns[25].title.caption:=fieldbyname('qn4').value+'|PDN Qty';
        grdeh1.columns[26].title.caption:=fieldbyname('qn4').value+'|T1 Qty';
        grdeh1.columns[27].title.caption:=fieldbyname('qn4').value+'|T2 Qty';
        grdeh1.columns[28].title.caption:=fieldbyname('qn4').value+'|T3 Qty';
        grdeh1.Columns[29].Title.caption:=fieldbyname('qn4').value+'|AQL Qty';
        grdeh1.columns[30].title.caption:=fieldbyname('qn4').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q5line').isnull then begin
        for i:=31 to 37 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[31].title.caption:=fieldbyname('qn5').value+'|QN Qty';
        grdeh1.columns[32].title.caption:=fieldbyname('qn5').value+'|PDN Qty';
        grdeh1.columns[33].title.caption:=fieldbyname('qn5').value+'|T1 Qty';
        grdeh1.columns[34].title.caption:=fieldbyname('qn5').value+'|T2 Qty';
        grdeh1.columns[35].title.caption:=fieldbyname('qn5').value+'|T3 Qty';
        grdeh1.Columns[36].Title.caption:=fieldbyname('qn5').value+'|AQL Qty';
        grdeh1.columns[37].title.caption:=fieldbyname('qn5').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q6line').isnull then begin
        for i:=38 to 44 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[38].title.caption:=fieldbyname('qn6').value+'|QN Qty';
        grdeh1.columns[39].title.caption:=fieldbyname('qn6').value+'|PDN Qty';
        grdeh1.columns[40].title.caption:=fieldbyname('qn6').value+'|T1 Qty';
        grdeh1.columns[41].title.caption:=fieldbyname('qn6').value+'|T2 Qty';
        grdeh1.columns[42].title.caption:=fieldbyname('qn6').value+'|T3 Qty';
        grdeh1.Columns[43].Title.caption:=fieldbyname('qn6').value+'|AQL Qty';
        grdeh1.columns[44].title.caption:=fieldbyname('qn6').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q7line').isnull then begin
        for i:=45 to 51 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[45].title.caption:=fieldbyname('qn7').value+'|QN Qty';
        grdeh1.columns[46].title.caption:=fieldbyname('qn7').value+'|PDN Qty';
        grdeh1.columns[47].title.caption:=fieldbyname('qn7').value+'|T1 Qty';
        grdeh1.columns[48].title.caption:=fieldbyname('qn7').value+'|T2 Qty';
        grdeh1.columns[49].title.caption:=fieldbyname('qn7').value+'|T3 Qty';
        grdeh1.Columns[50].Title.caption:=fieldbyname('qn7').value+'|AQL Qty';
        grdeh1.columns[51].title.caption:=fieldbyname('qn7').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q8line').isnull then begin
        for i:=52 to 58 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[52].title.caption:=fieldbyname('qn8').value+'|QN Qty';
        grdeh1.columns[53].title.caption:=fieldbyname('qn8').value+'|PDN Qty';
        grdeh1.columns[54].title.caption:=fieldbyname('qn8').value+'|T1 Qty';
        grdeh1.columns[55].title.caption:=fieldbyname('qn8').value+'|T2 Qty';
        grdeh1.columns[56].title.caption:=fieldbyname('qn8').value+'|T3 Qty';
        grdeh1.Columns[57].Title.caption:=fieldbyname('qn8').value+'|AQL Qty';
        grdeh1.columns[58].title.caption:=fieldbyname('qn8').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q9line').isnull then begin
        for i:=59 to 65 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[59].title.caption:=fieldbyname('qn9').value+'|QN Qty';
        grdeh1.columns[60].title.caption:=fieldbyname('qn9').value+'|PDN Qty';
        grdeh1.columns[61].title.caption:=fieldbyname('qn9').value+'|T1 Qty';
        grdeh1.columns[62].title.caption:=fieldbyname('qn9').value+'|T2 Qty';
        grdeh1.columns[63].title.caption:=fieldbyname('qn9').value+'|T3 Qty';
        grdeh1.Columns[64].Title.caption:=fieldbyname('qn9').value+'|AQL Qty';
        grdeh1.columns[65].title.caption:=fieldbyname('qn9').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q10line').isnull then begin
        for i:=66 to 72 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[66].title.caption:=fieldbyname('qn10').value+'|QN Qty';
        grdeh1.columns[67].title.caption:=fieldbyname('qn10').value+'|PDN Qty';
        grdeh1.columns[68].title.caption:=fieldbyname('qn10').value+'|T1 Qty';
        grdeh1.columns[69].title.caption:=fieldbyname('qn10').value+'|T2 Qty';
        grdeh1.columns[70].title.caption:=fieldbyname('qn10').value+'|T3 Qty';
        grdeh1.Columns[71].Title.caption:=fieldbyname('qn10').value+'|AQL Qty';
        grdeh1.columns[72].title.caption:=fieldbyname('qn10').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q11line').isnull then begin
        for i:=73 to 79 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[73].title.caption:=fieldbyname('qn11').value+'|QN Qty';
        grdeh1.columns[74].title.caption:=fieldbyname('qn11').value+'|PDN Qty';
        grdeh1.columns[75].title.caption:=fieldbyname('qn11').value+'|T1 Qty';
        grdeh1.columns[76].title.caption:=fieldbyname('qn11').value+'|T2 Qty';
        grdeh1.columns[77].title.caption:=fieldbyname('qn11').value+'|T3 Qty';
        grdeh1.Columns[78].Title.caption:=fieldbyname('qn11').value+'|AQL Qty';
        grdeh1.columns[79].title.caption:=fieldbyname('qn11').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q12line').isnull then begin
        for i:=80 to 86 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[80].title.caption:=fieldbyname('qn12').value+'|QN Qty';
        grdeh1.columns[81].title.caption:=fieldbyname('qn12').value+'|PDN Qty';
        grdeh1.columns[82].title.caption:=fieldbyname('qn12').value+'|T1 Qty';
        grdeh1.columns[83].title.caption:=fieldbyname('qn12').value+'|T2 Qty';
        grdeh1.columns[84].title.caption:=fieldbyname('qn12').value+'|T3 Qty';
        grdeh1.Columns[85].Title.caption:=fieldbyname('qn12').value+'|AQL Qty';
        grdeh1.columns[86].title.caption:=fieldbyname('qn12').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q13line').isnull then begin
        for i:=87 to 93 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[87].title.caption:=fieldbyname('qn13').value+'|QN Qty';
        grdeh1.columns[88].title.caption:=fieldbyname('qn13').value+'|PDN Qty';
        grdeh1.columns[89].title.caption:=fieldbyname('qn13').value+'|T1 Qty';
        grdeh1.columns[90].title.caption:=fieldbyname('qn13').value+'|T2 Qty';
        grdeh1.columns[91].title.caption:=fieldbyname('qn13').value+'|T3 Qty';
        grdeh1.Columns[92].Title.caption:=fieldbyname('qn13').value+'|AQL Qty';
        grdeh1.columns[93].title.caption:=fieldbyname('qn13').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q14line').isnull then begin
        for i:=94 to 100 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[94].title.caption:=fieldbyname('qn14').value+'|QN Qty';
        grdeh1.columns[95].title.caption:=fieldbyname('qn14').value+'|PDN Qty';
        grdeh1.columns[96].title.caption:=fieldbyname('qn14').value+'|T1 Qty';
        grdeh1.columns[97].title.caption:=fieldbyname('qn14').value+'|T2 Qty';
        grdeh1.columns[98].title.caption:=fieldbyname('qn14').value+'|T3 Qty';
        grdeh1.Columns[99].Title.caption:=fieldbyname('qn14').value+'|AQL Qty';
        grdeh1.columns[100].title.caption:=fieldbyname('qn14').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q15line').isnull then begin
        for i:=101 to 107 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[101].title.caption:=fieldbyname('qn15').value+'|QN Qty';
        grdeh1.columns[102].title.caption:=fieldbyname('qn15').value+'|PDN Qty';
        grdeh1.columns[103].title.caption:=fieldbyname('qn15').value+'|T1 Qty';
        grdeh1.columns[104].title.caption:=fieldbyname('qn15').value+'|T2 Qty';
        grdeh1.columns[105].title.caption:=fieldbyname('qn15').value+'|T3 Qty';
        grdeh1.Columns[106].Title.caption:=fieldbyname('qn15').value+'|AQL Qty';
        grdeh1.columns[107].title.caption:=fieldbyname('qn15').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q16line').isnull then begin
        for i:=108 to 114 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[108].title.caption:=fieldbyname('qn16').value+'|QN Qty';
        grdeh1.columns[109].title.caption:=fieldbyname('qn16').value+'|PDN Qty';
        grdeh1.columns[110].title.caption:=fieldbyname('qn16').value+'|T1 Qty';
        grdeh1.columns[111].title.caption:=fieldbyname('qn16').value+'|T2 Qty';
        grdeh1.columns[112].title.caption:=fieldbyname('qn16').value+'|T3 Qty';
        grdeh1.Columns[113].Title.caption:=fieldbyname('qn16').value+'|AQL Qty';
        grdeh1.columns[114].title.caption:=fieldbyname('qn16').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q17line').isnull then begin
        for i:=115 to 121 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[115].title.caption:=fieldbyname('qn17').value+'|QN Qty';
        grdeh1.columns[116].title.caption:=fieldbyname('qn17').value+'|PDN Qty';
        grdeh1.columns[117].title.caption:=fieldbyname('qn17').value+'|T1 Qty';
        grdeh1.columns[118].title.caption:=fieldbyname('qn17').value+'|T2 Qty';
        grdeh1.columns[119].title.caption:=fieldbyname('qn17').value+'|T3 Qty';
        grdeh1.Columns[120].Title.caption:=fieldbyname('qn17').value+'|AQL Qty';
        grdeh1.columns[121].title.caption:=fieldbyname('qn17').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q18line').isnull then begin
        for i:=122 to 128 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[122].title.caption:=fieldbyname('qn18').value+'|QN Qty';
        grdeh1.columns[123].title.caption:=fieldbyname('qn18').value+'|PDN Qty';
        grdeh1.columns[124].title.caption:=fieldbyname('qn18').value+'|T1 Qty';
        grdeh1.columns[125].title.caption:=fieldbyname('qn18').value+'|T2 Qty';
        grdeh1.columns[126].title.caption:=fieldbyname('qn18').value+'|T3 Qty';
        grdeh1.Columns[127].Title.caption:=fieldbyname('qn18').value+'|AQL Qty';
        grdeh1.columns[128].title.caption:=fieldbyname('qn18').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q19line').isnull then begin
        for i:=129 to 135 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[129].title.caption:=fieldbyname('qn19').value+'|QN Qty';
        grdeh1.columns[130].title.caption:=fieldbyname('qn19').value+'|PDN Qty';
        grdeh1.columns[131].title.caption:=fieldbyname('qn19').value+'|T1 Qty';
        grdeh1.columns[132].title.caption:=fieldbyname('qn19').value+'|T2 Qty';
        grdeh1.columns[133].title.caption:=fieldbyname('qn19').value+'|T3 Qty';
        grdeh1.Columns[134].Title.caption:=fieldbyname('qn19').value+'|AQL Qty';
        grdeh1.columns[135].title.caption:=fieldbyname('qn19').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q20line').isnull then begin
        for i:=136 to 142 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[136].title.caption:=fieldbyname('qn20').value+'|QN Qty';
        grdeh1.columns[137].title.caption:=fieldbyname('qn20').value+'|PDN Qty';
        grdeh1.columns[138].title.caption:=fieldbyname('qn20').value+'|T1 Qty';
        grdeh1.columns[139].title.caption:=fieldbyname('qn20').value+'|T2 Qty';
        grdeh1.columns[140].title.caption:=fieldbyname('qn20').value+'|T3 Qty';
        grdeh1.Columns[141].Title.caption:=fieldbyname('qn20').value+'|AQL Qty';
        grdeh1.columns[142].title.caption:=fieldbyname('qn20').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q21line').isnull then begin
        for i:=143 to 149 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[143].title.caption:=fieldbyname('qn21').value+'|QN Qty';
        grdeh1.columns[144].title.caption:=fieldbyname('qn21').value+'|PDN Qty';
        grdeh1.columns[145].title.caption:=fieldbyname('qn21').value+'|T1 Qty';
        grdeh1.columns[146].title.caption:=fieldbyname('qn21').value+'|T2 Qty';
        grdeh1.columns[147].title.caption:=fieldbyname('qn21').value+'|T3 Qty';
        grdeh1.Columns[148].Title.caption:=fieldbyname('qn21').value+'|AQL Qty';
        grdeh1.columns[149].title.caption:=fieldbyname('qn21').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q22line').isnull then begin
        for i:=150 to 156 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[150].title.caption:=fieldbyname('qn22').value+'|QN Qty';
        grdeh1.columns[151].title.caption:=fieldbyname('qn22').value+'|PDN Qty';
        grdeh1.columns[152].title.caption:=fieldbyname('qn22').value+'|T1 Qty';
        grdeh1.columns[153].title.caption:=fieldbyname('qn22').value+'|T2 Qty';
        grdeh1.columns[154].title.caption:=fieldbyname('qn22').value+'|T3 Qty';
        grdeh1.Columns[155].Title.caption:=fieldbyname('qn22').value+'|AQL Qty';
        grdeh1.columns[156].title.caption:=fieldbyname('qn22').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q23line').isnull then begin
        for i:=157 to 163 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[157].title.caption:=fieldbyname('qn23').value+'|QN Qty';
        grdeh1.columns[158].title.caption:=fieldbyname('qn23').value+'|PDN Qty';
        grdeh1.columns[159].title.caption:=fieldbyname('qn23').value+'|T1 Qty';
        grdeh1.columns[160].title.caption:=fieldbyname('qn23').value+'|T2 Qty';
        grdeh1.columns[161].title.caption:=fieldbyname('qn23').value+'|T3 Qty';
        grdeh1.Columns[162].Title.caption:=fieldbyname('qn23').value+'|AQL Qty';
        grdeh1.columns[163].title.caption:=fieldbyname('qn23').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q24line').isnull then begin
        for i:=164 to 170 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[164].title.caption:=fieldbyname('qn24').value+'|QN Qty';
        grdeh1.columns[165].title.caption:=fieldbyname('qn24').value+'|PDN Qty';
        grdeh1.columns[166].title.caption:=fieldbyname('qn24').value+'|T1 Qty';
        grdeh1.columns[167].title.caption:=fieldbyname('qn24').value+'|T2 Qty';
        grdeh1.columns[168].title.caption:=fieldbyname('qn24').value+'|T3 Qty';
        grdeh1.Columns[169].Title.caption:=fieldbyname('qn24').value+'|AQL Qty';
        grdeh1.columns[170].title.caption:=fieldbyname('qn24').value+'|Ex-fty Qty';
      end;
      if not fieldbyname('q25line').isnull then begin
        for i:=171 to 177 do begin
          grdeh1.Columns[i].Visible:=true;
        end;
        grdeh1.columns[171].title.caption:=fieldbyname('qn25').value+'|QN Qty';
        grdeh1.columns[172].title.caption:=fieldbyname('qn25').value+'|PDN Qty';
        grdeh1.columns[173].title.caption:=fieldbyname('qn25').value+'|T1 Qty';
        grdeh1.columns[174].title.caption:=fieldbyname('qn25').value+'|T2 Qty';
        grdeh1.columns[175].title.caption:=fieldbyname('qn25').value+'|T3 Qty';
        grdeh1.Columns[176].Title.caption:=fieldbyname('qn25').value+'|AQL Qty';
        grdeh1.columns[177].title.caption:=fieldbyname('qn25').value+'|Ex-fty Qty';
      end;
    end;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    //Summary page
    tm:=now;
    for i:=6 to 75 do begin
      dbgrideh23.Columns[i].Visible:=false;
    end;
    for i:=0 to 39 do begin
      pagecontrol2.Pages[i].TabVisible:=false;
    end;
    i:=0;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct j_no,j2_job from tbl_pdn_rwo where seq=:x1 order by j_no,j2_job';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      first;
      while not eof do begin
        if i<=39 then begin
          pagecontrol2.Pages[i].Caption:=fieldbyname('j_no').value+' - '+fieldbyname('j2_job').value;
          pagecontrol2.Pages[i].TabVisible:=true;
        end;
        i:=i+1;
        application.ProcessMessages;
        next;
      end;
    end;
    pagecontrol2.ActivePageIndex:=0;
    pagecontrol2change(self);
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.Query1AfterPost(DataSet: TDataSet);
var
  pstr:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftdate,'x7',ptinput);
      params.createparam(fttime,'x8',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='update tbl_pdn_m set exfty=:x1,tplant=:x2,marks=:x3,marks1=:x4,status=:x6,actdt=:x7,acttm=:x8 where seq=:x5';

      if not query1.fieldbyname('exfty').isnull then
      params[0].asdate:=query1.fieldbyname('exfty').value;
      if not query1.fieldbyname('tplant').isnull then
      params[1].asstring:=query1.fieldbyname('tplant').value
      else params[1].asstring:='';
      if not query1.fieldbyname('marks').isnull then
      params[2].asstring:=query1.fieldbyname('marks').value
      else params[2].asstring:='';
      if not query1.fieldbyname('marks1').isnull then
      params[3].asstring:=query1.fieldbyname('marks1').value
      else params[3].asstring:='';
      if not query1.fieldbyname('status').isnull then
      params[4].asstring:=query1.fieldbyname('status').value
      else params[4].asstring:='';
      if not query1.fieldbyname('actdt').isnull then
      params[5].asdate:=query1.fieldbyname('actdt').value;
      if not query1.fieldbyname('acttm').isnull then
      params[6].astime:=query1.fieldbyname('acttm').value;
      params[7].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  }
      strupd:='update tbl_pdn_m set ';
      if not query1.fieldbyname('exfty').isnull then
      strupd:=strupd+'exfty='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('exfty').value)+''','
      else strupd:=strupd+'exfty=null,';
      if not query1.fieldbyname('tplant').isnull then
      strupd:=strupd+'tplant='''+query1.fieldbyname('tplant').value+''','
      else strupd:=strupd+'tplant='''',';
      {
      if not query1.fieldbyname('marks').isnull then
      strupd:=strupd+'marks='''+query1.fieldbyname('marks').value+''','
      else strupd:=strupd+'marks='''',';
      if not query1.fieldbyname('marks1').isnull then
      strupd:=strupd+'marks1='''+query1.fieldbyname('marks1').value+''','
      else strupd:=strupd+'marks1='''',';
      }
      if not query1.fieldbyname('status').isnull then
      strupd:=strupd+'status='''+query1.fieldbyname('status').value+''','
      else strupd:=strupd+'status='''',';
      if not query1.fieldbyname('ds_marks').isnull then
      strupd:=strupd+'ds_marks='''+query1.fieldbyname('ds_marks').value+''','
      else strupd:=strupd+'ds_marks='''',';
      if not query1.fieldbyname('actdt').isnull then
      strupd:=strupd+'actdt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('actdt').value)+''','
      else strupd:=strupd+'actdt=null,';
      if not query1.fieldbyname('acttm').isnull then
      strupd:=strupd+'acttm='''+formatdatetime('hh:nn:ss',query1.fieldbyname('acttm').value)+''' '
      else strupd:=strupd+'acttm=null ';
      strupd:=strupd+'where seq='+query1.fieldbyname('seq').asstring;
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='execute procedure sp_pdn_updstatus_1(:x1)';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  {
    pstr:='18 '+query1.fieldbyname('seq').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
  }
end;

procedure Tfrmpdn.SpeedButton5Click(Sender: TObject);
begin
  if frmselpdn=nil then frmselpdn:=tfrmselpdn.create(nil);
  if pos('CARTE',frmpdn.caption)>0 then frmselpdn.caption:=frmselpdn.caption+' - CARTE';
  if pos('OCEN',frmpdn.caption)>0 then frmselpdn.caption:=frmselpdn.caption+' - OCEN';
  with query5 do begin
    close;
    params.clear;
    commandtext:='select logcst from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('logcst').isnull then begin
      if fieldbyname('logcst').value=true then begin
        //frmselpdn.BitBtn5.Visible:=false;
        frmselpdn.BitBtn6.Visible:=true;
        frmselpdn.BitBtn7.Visible:=true;
      end else begin
        //frmselpdn.BitBtn5.Visible:=true;
        frmselpdn.BitBtn6.Visible:=false;
        frmselpdn.BitBtn7.Visible:=false;
      end;
    end else begin
      //frmselpdn.BitBtn5.Visible:=true;
      frmselpdn.BitBtn6.Visible:=false;
      frmselpdn.BitBtn7.Visible:=false;
    end;
  end;
  frmselpdn.show;
end;

procedure Tfrmpdn.UpdateWeight1Click(Sender: TObject);
var
  str1:string;
begin
  screen.cursor:=crSQLWait;
  try
    with adoquery3 do begin
      close;
      sql.text:='select distinct styleno,rtrim(custsize)+rtrim(custcup) as psiz,weight as nnw from [ph.mr]..stylesizeweight where weight>0';
      open;
      first;
      while not eof do begin
        str1:='update tbl_pdn_d set nnw='+adoquery3.fieldbyname('nnw').asstring;
        str1:=str1+' where seq>=85928 and cstyle='''+adoquery3.fieldbyname('styleno').value+''' and psiz='''+adoquery3.fieldbyname('psiz').value+'''';
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
        str1:='update tbl_pdn_voyage_d set nnw='+adoquery3.fieldbyname('nnw').asstring;
        str1:=str1+' where seq>=85928 and cstyle='''+adoquery3.fieldbyname('styleno').value+''' and psiz='''+adoquery3.fieldbyname('psiz').value+'''';
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
        application.processmessages;
        next;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.updcustpoqty(const seq: integer);
begin
  with query6 do begin
    close;
    params.clear;
    commandtext:='delete from tbl_pdn_poqty where seq='+inttostr(seq);
    execute;
  end;

  with query6 do begin
    close;
    params.clear;
    commandtext:='select distinct dseq,j2_job,rwo,acol from tbl_pdn_rwo where seq='+inttostr(seq);
    open;
    first;
    while not eof do begin
      with adoquery3 do begin
        close;
        sql.text:='select rtrim(custsize)+rtrim(custcup) as psiz,bulkqty from [ph.rwo1]..view_woc_rwo '
                   +'where bulkqty>0 and workorderno='''+query6.fieldbyname('j2_job').value+''' and rwo='''+query6.fieldbyname('rwo').value+''' and colorcode='''+query6.fieldbyname('acol').value+'''';
        open;
        first;
        while not eof do begin
          with query7 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            params.createparam(ftstring,'x5',ptinput);
            params.createparam(ftstring,'x6',ptinput);
            params.createparam(ftinteger,'x7',ptinput);
            commandtext:='insert into tbl_pdn_poqty(seq,dseq,j2_job,acol,rwo,psiz,bulk) '
                          +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
            params[0].asinteger:=seq;
            params[1].asinteger:=query6.fieldbyname('dseq').value;
            params[2].asstring:=query6.fieldbyname('j2_job').value;
            params[3].asstring:=query6.fieldbyname('acol').value;
            params[4].asstring:=query6.fieldbyname('rwo').value;
            params[5].asstring:=adoquery3.fieldbyname('psiz').value;
            params[6].asinteger:=adoquery3.fieldbyname('bulkqty').value;
            execute;
          end;
          application.processmessages;
          next;
        end;
      end;
      application.processmessages;
      next;
    end;
  end;
  showmessage('OK!');
end;

procedure Tfrmpdn.updcustpoqty_1(const seq, dseq: integer);
begin
  with query6 do begin
    close;
    params.clear;
    commandtext:='delete from tbl_pdn_poqty where seq='+inttostr(seq)+' and dseq='+inttostr(dseq);
    execute;
  end;

  with query6 do begin
    close;
    params.clear;
    commandtext:='select distinct dseq,j2_job,rwo,acol from tbl_pdn_rwo where seq='+inttostr(seq)+' and dseq='+inttostr(dseq);
    open;
    first;
    while not eof do begin
      with adoquery3 do begin
        close;
        sql.text:='select rtrim(custsize)+rtrim(custcup) as psiz,bulkqty from [ph.rwo1]..view_woc_rwo '
                   +'where bulkqty>0 and workorderno='''+query6.fieldbyname('j2_job').value+''' and rwo='''+query6.fieldbyname('rwo').value+''' and colorcode='''+query6.fieldbyname('acol').value+'''';
        open;
        first;
        while not eof do begin
          with query7 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            params.createparam(ftstring,'x5',ptinput);
            params.createparam(ftstring,'x6',ptinput);
            params.createparam(ftinteger,'x7',ptinput);
            commandtext:='insert into tbl_pdn_poqty(seq,dseq,j2_job,acol,rwo,psiz,bulk) '
                          +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
            params[0].asinteger:=seq;
            params[1].asinteger:=query6.fieldbyname('dseq').value;
            params[2].asstring:=query6.fieldbyname('j2_job').value;
            params[3].asstring:=query6.fieldbyname('acol').value;
            params[4].asstring:=query6.fieldbyname('rwo').value;
            params[5].asstring:=adoquery3.fieldbyname('psiz').value;
            params[6].asinteger:=adoquery3.fieldbyname('bulkqty').value;
            execute;
          end;
          application.processmessages;
          next;
        end;
      end;
      application.processmessages;
      next;
    end;
  end;
end;

procedure Tfrmpdn.updnnw(const seq: integer);
var
  str1:string;
begin
  with query6 do begin
    close;
    params.clear;
    commandtext:='select distinct j_no,cstyle,psiz from tbl_pdn_d where seq='+query1.fieldbyname('seq').asstring;
    open;
    first;
    while not eof do begin
      with adoquery3 do begin
        close;
        //sql.text:='select weight from [ph.mr]..stylesizeweight where styleno='''+query6.fieldbyname('cstyle').value
        //         +''' and rtrim(custsize)+rtrim(isnull(custcup,''''))='''+query6.fieldbyname('psiz').value+'''';
        sql.text:='select max(weight) as weight from [ph.mr]..stylesizeweight where styleno='''+query6.fieldbyname('cstyle').value
                 +''' and rtrim(custsize)+rtrim(isnull(custcup,''''))='''+query6.fieldbyname('psiz').value+'''';// and customer='''+copy(query6.fieldbyname('j_no').value,1,4)+'''';
        open;
        if not fieldbyname('weight').isnull then begin
          str1:='update tbl_pdn_d set nnw='+adoquery3.fieldbyname('weight').asstring;
          str1:=str1+' where seq='+query1.fieldbyname('seq').asstring+' and cstyle='''+query6.fieldbyname('cstyle').value+''' and psiz='''+query6.fieldbyname('psiz').value+'''';
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          str1:='update tbl_pdn_voyage_d set nnw='+adoquery3.fieldbyname('weight').asstring;
          str1:=str1+' where seq='+query1.fieldbyname('seq').asstring+' and cstyle='''+query6.fieldbyname('cstyle').value+''' and psiz='''+query6.fieldbyname('psiz').value+'''';
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
        end;
      end;
      application.processmessages;
      next;
    end;
  end;
end;

procedure Tfrmpdn.BitBtn2Click(Sender: TObject);
var
  i:integer;
begin
  if query1.Active then begin
    if query1.fieldbyname('status').value='0' then begin
      if application.MessageBox('Want to delete this PDN?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with ROQuery1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_pdn_deletevoyage(:x1,:x2)';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          params[1].asinteger:=-1;
          execute;
        end;
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='delete from tbl_pdn_rwo where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='delete from tbl_pdn_h where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='delete from tbl_pdn_d where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='delete from tbl_pdn_m where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        edit1.Text:='';
        query1.Active:=false;
        query2.Active:=false;
        query3.Active:=false;
        query4.Active:=false;
        for i:=1 to 2 do begin
          pagecontrol1.Pages[i].TabVisible:=false;
        end;
      end;
    end;
  end;
end;

procedure Tfrmpdn.BitBtn3Click(Sender: TObject);
var
  r52:boolean;
begin
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r52 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r52').isnull then r52:=fieldbyname('r52').value else r52:=false;
  end;
  if r52 then begin
  if query1.fieldbyname('status').value<='0' then begin
  if application.MessageBox('Submission this PDN?','confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query1 do begin
      edit;
      fieldbyname('status').value:='01';
      post;
    end;
  end;
  end;
  end else showmessage('You have no right!');
end;

procedure Tfrmpdn.PageControl2Change(Sender: TObject);
var
  i:integer;
  grdeh1:TDBGridEh;
  s1,j_no,j2_job:string;
begin
  screen.cursor:=crSQLWait;
  try
  grdeh1:=TDBGRIDEH(pagecontrol2.Pages[pagecontrol2.ActivePageIndex].Controls[0]);
  for i:=6 to 75 do begin
    grdeh1.Columns[i].Visible:=false;
  end;
  s1:=pagecontrol2.Pages[pagecontrol2.ActivePageIndex].Caption;
  j_no:=copy(s1,1,pos(' - ',s1)-1);
  j2_job:=copy(s1,pos(' - ',s1)+3,10);
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_pdn_summary(:x1,:x2,:x3,:x4)';
    params[0].asdatetime:=tm;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:=j_no;
    params[3].asstring:=j2_job;
    execute;
  end;
  with query8 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select * from tbl_pdn_r_tmp where tm=:x1 and seq=:x2 and j_no=:x3 and j2_job=:x4 order by acol,did';
    params[0].asdatetime:=tm;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:=j_no;
    params[3].asstring:=j2_job;
    open;
  end;
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select * from tbl_pdn_r_tmp1 where tm=:x1 and seq=:x2 and j_no=:x3 and j2_job=:x4';
    params[0].asdatetime:=tm;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:=j_no;
    params[3].asstring:=j2_job;
    open;
    if not fieldbyname('r1').isnull then begin
      for i:=6 to 12 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[6].Title.Caption:=fieldbyname('r1').value+'|QN Qty';
        grdeh1.Columns[7].Title.Caption:=fieldbyname('r1').value+'|PDN Qty';
        grdeh1.Columns[8].Title.Caption:=fieldbyname('r1').value+'|T1 Qty';
        grdeh1.Columns[9].Title.Caption:=fieldbyname('r1').value+'|T2 Qty';
        grdeh1.Columns[10].Title.Caption:=fieldbyname('r1').value+'|T3 Qty';
        grdeh1.Columns[11].Title.Caption:=fieldbyname('r1').value+'|AQL Qty';
        grdeh1.Columns[12].Title.Caption:=fieldbyname('r1').value+'|Ex-fty Qty';
      end;
    end;
    if not fieldbyname('r2').isnull then begin
      for i:=13 to 19 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[13].Title.Caption:=fieldbyname('r2').value+'|QN Qty';
        grdeh1.Columns[14].Title.Caption:=fieldbyname('r2').value+'|PDN Qty';
        grdeh1.Columns[15].Title.Caption:=fieldbyname('r2').value+'|T1 Qty';
        grdeh1.Columns[16].Title.Caption:=fieldbyname('r2').value+'|T2 Qty';
        grdeh1.Columns[17].Title.Caption:=fieldbyname('r2').value+'|T3 Qty';
        grdeh1.Columns[18].Title.Caption:=fieldbyname('r2').value+'|AQL Qty';
        grdeh1.Columns[19].Title.Caption:=fieldbyname('r2').value+'|Ex-fty Qty';
      end;
    end;
    if not fieldbyname('r3').isnull then begin
      for i:=20 to 26 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[20].Title.Caption:=fieldbyname('r3').value+'|QN Qty';
        grdeh1.Columns[21].Title.Caption:=fieldbyname('r3').value+'|PDN Qty';
        grdeh1.Columns[22].Title.Caption:=fieldbyname('r3').value+'|T1 Qty';
        grdeh1.Columns[23].Title.Caption:=fieldbyname('r3').value+'|T2 Qty';
        grdeh1.Columns[24].Title.Caption:=fieldbyname('r3').value+'|T3 Qty';
        grdeh1.Columns[25].Title.Caption:=fieldbyname('r3').value+'|AQL Qty';
        grdeh1.Columns[26].Title.Caption:=fieldbyname('r3').value+'|Ex-fty Qty';
      end;
    end;
    if not fieldbyname('r4').isnull then begin
      for i:=27 to 33 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[27].Title.Caption:=fieldbyname('r4').value+'|QN Qty';
        grdeh1.Columns[28].Title.Caption:=fieldbyname('r4').value+'|PDN Qty';
        grdeh1.Columns[29].Title.Caption:=fieldbyname('r4').value+'|T1 Qty';
        grdeh1.Columns[30].Title.Caption:=fieldbyname('r4').value+'|T2 Qty';
        grdeh1.Columns[31].Title.Caption:=fieldbyname('r4').value+'|T3 Qty';
        grdeh1.Columns[32].Title.Caption:=fieldbyname('r4').value+'|AQL Qty';
        grdeh1.Columns[33].Title.Caption:=fieldbyname('r4').value+'|Ex-fty Qty';
      end;
    end;
    if not fieldbyname('r5').isnull then begin
      for i:=34 to 40 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[34].Title.Caption:=fieldbyname('r5').value+'|QN Qty';
        grdeh1.Columns[35].Title.Caption:=fieldbyname('r5').value+'|PDN Qty';
        grdeh1.Columns[36].Title.Caption:=fieldbyname('r5').value+'|T1 Qty';
        grdeh1.Columns[37].Title.Caption:=fieldbyname('r5').value+'|T2 Qty';
        grdeh1.Columns[38].Title.Caption:=fieldbyname('r5').value+'|T3 Qty';
        grdeh1.Columns[39].Title.Caption:=fieldbyname('r5').value+'|AQL Qty';
        grdeh1.Columns[40].Title.Caption:=fieldbyname('r5').value+'|Ex-fty Qty';
      end;
    end;
    if not fieldbyname('r6').isnull then begin
      for i:=41 to 47 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[41].Title.Caption:=fieldbyname('r6').value+'|QN Qty';
        grdeh1.Columns[42].Title.Caption:=fieldbyname('r6').value+'|PDN Qty';
        grdeh1.Columns[43].Title.Caption:=fieldbyname('r6').value+'|T1 Qty';
        grdeh1.Columns[44].Title.Caption:=fieldbyname('r6').value+'|T2 Qty';
        grdeh1.Columns[45].Title.Caption:=fieldbyname('r6').value+'|T3 Qty';
        grdeh1.Columns[46].Title.Caption:=fieldbyname('r6').value+'|AQL Qty';
        grdeh1.Columns[47].Title.Caption:=fieldbyname('r6').value+'|Ex-fty Qty';
      end;
    end;
    if not fieldbyname('r7').isnull then begin
      for i:=48 to 54 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[48].Title.Caption:=fieldbyname('r7').value+'|QN Qty';
        grdeh1.Columns[49].Title.Caption:=fieldbyname('r7').value+'|PDN Qty';
        grdeh1.Columns[50].Title.Caption:=fieldbyname('r7').value+'|T1 Qty';
        grdeh1.Columns[51].Title.Caption:=fieldbyname('r7').value+'|T2 Qty';
        grdeh1.Columns[52].Title.Caption:=fieldbyname('r7').value+'|T3 Qty';
        grdeh1.Columns[53].Title.Caption:=fieldbyname('r7').value+'|AQL Qty';
        grdeh1.Columns[54].Title.Caption:=fieldbyname('r7').value+'|Ex-fty Qty';
      end;
    end;
    if not fieldbyname('r8').isnull then begin
      for i:=55 to 61 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[55].Title.Caption:=fieldbyname('r8').value+'|QN Qty';
        grdeh1.Columns[56].Title.Caption:=fieldbyname('r8').value+'|PDN Qty';
        grdeh1.Columns[57].Title.Caption:=fieldbyname('r8').value+'|T1 Qty';
        grdeh1.Columns[58].Title.Caption:=fieldbyname('r8').value+'|T2 Qty';
        grdeh1.Columns[59].Title.Caption:=fieldbyname('r8').value+'|T3 Qty';
        grdeh1.Columns[60].Title.Caption:=fieldbyname('r8').value+'|AQL Qty';
        grdeh1.Columns[61].Title.Caption:=fieldbyname('r8').value+'|Ex-fty Qty';
      end;
    end;
    if not fieldbyname('r9').isnull then begin
      for i:=62 to 68 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[62].Title.Caption:=fieldbyname('r9').value+'|QN Qty';
        grdeh1.Columns[63].Title.Caption:=fieldbyname('r9').value+'|PDN Qty';
        grdeh1.Columns[64].Title.Caption:=fieldbyname('r9').value+'|T1 Qty';
        grdeh1.Columns[65].Title.Caption:=fieldbyname('r9').value+'|T2 Qty';
        grdeh1.Columns[66].Title.Caption:=fieldbyname('r9').value+'|T3 Qty';
        grdeh1.Columns[67].Title.Caption:=fieldbyname('r9').value+'|AQL Qty';
        grdeh1.Columns[68].Title.Caption:=fieldbyname('r9').value+'|Ex-fty Qty';
      end;
    end;
    if not fieldbyname('r10').isnull then begin
      for i:=69 to 75 do begin
        grdeh1.Columns[i].Visible:=true;
        grdeh1.Columns[69].Title.Caption:=fieldbyname('r10').value+'|QN Qty';
        grdeh1.Columns[70].Title.Caption:=fieldbyname('r10').value+'|PDN Qty';
        grdeh1.Columns[71].Title.Caption:=fieldbyname('r10').value+'|T1 Qty';
        grdeh1.Columns[72].Title.Caption:=fieldbyname('r10').value+'|T2 Qty';
        grdeh1.Columns[73].Title.Caption:=fieldbyname('r10').value+'|T3 Qty';
        grdeh1.Columns[74].Title.Caption:=fieldbyname('r10').value+'|AQL Qty';
        grdeh1.Columns[75].Title.Caption:=fieldbyname('r10').value+'|Ex-fty Qty';
      end;
    end;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.BitBtn5Click(Sender: TObject);
var
  r53:boolean;
begin
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r52 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r52').isnull then r53:=fieldbyname('r52').value else r53:=false;
  end;
  if pagecontrol1.ActivePageIndex>1 then begin
    if query1.FieldByName('status').value<'20' then begin
      if r53 then begin
      if application.MessageBox('Copy data?','Confirmation',mb_iconquestion+mb_YesNo)=idYes then begin
      with query3 do begin
        first;
        while not eof do begin
          edit;
          fieldbyname('sqty').value:=fieldbyname('qty').value;
          post;
          application.ProcessMessages;
          next;
        end;
      end;
      end;
      end;
    end;
  end;
end;

procedure Tfrmpdn.BitBtn4Click(Sender: TObject);
var
  r53,r58:boolean;
  pstr:string;
begin
  screen.cursor:=crSQLWait;
  try
  updnnw(query1.fieldbyname('seq').value);
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r54,r58 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r54').isnull then r53:=fieldbyname('r54').value else r53:=false;
    if not fieldbyname('r58').isnull then r58:=fieldbyname('r58').value else r58:=false;
  end;
  if r53 then begin
    if query1.fieldbyname('status').value<='2' then begin
      if application.MessageBox('Want to do manifest?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with ROQuery1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='execute procedure sp_pdn_newvoyage(:x1,0)';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          execute;
        end;
        {
        pstr:='22 '+query1.fieldbyname('seq').asstring+' 0';
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
        }
        if frmvoyage=nil then frmvoyage:=tfrmvoyage.create(nil);
        with frmvoyage.Query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=1';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        with frmvoyage.Query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=1 order by seq,seq1,dseq';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        with frmvoyage.Query4 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_rwo where seq=:x1 order by seq,dseq';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        frmvoyage.DBText1.Enabled:=true;
        frmvoyage.DBText2.Enabled:=true;
        frmvoyage.DBDTEdit1.ReadOnly:=false;
        frmvoyage.DBDTEdit2.ReadOnly:=false;
        frmvoyage.DBDTEdit3.ReadOnly:=false;
        //frmvoyage.DBTimeEdit1.Enabled:=true;
        frmvoyage.DBTimeEdit2.Enabled:=true;
        frmvoyage.SpeedButton2.Enabled:=true;
        frmvoyage.BitBtn2.Enabled:=false;
        frmvoyage.Label9.Caption:='Edit';
        frmvoyage.show;
      end;
    end else if query1.fieldbyname('status').value>'2' then begin
      //View manifest
        if frmvoyage=nil then frmvoyage:=tfrmvoyage.create(nil);
        with frmvoyage.Query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=1';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        with frmvoyage.Query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=1 order by seq,seq1,dseq';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        with frmvoyage.Query4 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_rwo where seq=:x1 order by seq,dseq';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        frmvoyage.DBText1.Enabled:=false;
        frmvoyage.DBText2.Enabled:=false;
        frmvoyage.DBDTEdit1.ReadOnly:=true;
        frmvoyage.DBDTEdit2.ReadOnly:=true;
        frmvoyage.DBDTEdit3.ReadOnly:=true;
        //frmvoyage.DBTimeEdit1.Enabled:=false;
        frmvoyage.DBTimeEdit2.Enabled:=false;
        frmvoyage.SpeedButton2.Enabled:=false;
        frmvoyage.BitBtn2.Enabled:=false;
        frmvoyage.Label9.Caption:='View';
        frmvoyage.show;
    end;
    if r58 then begin
      //frmvoyage.BitBtn2.Enabled:=true;
      frmvoyage.dbediteh1.readonly:=false;
    end else begin
      //frmvoyage.BitBtn2.Enabled:=false;
      frmvoyage.dbediteh1.readonly:=true;
    end;
  end else begin
      //View manifest
        if frmvoyage=nil then frmvoyage:=tfrmvoyage.create(nil);
        with frmvoyage.Query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=1';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        with frmvoyage.Query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=1 order by seq,seq1,dseq';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        with frmvoyage.Query4 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_rwo where seq=:x1 order by seq,dseq';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        frmvoyage.DBText1.Enabled:=false;
        frmvoyage.DBText2.Enabled:=false;
        frmvoyage.DBDTEdit1.ReadOnly:=true;
        frmvoyage.DBDTEdit2.ReadOnly:=true;
        frmvoyage.DBDTEdit3.ReadOnly:=true;
        //frmvoyage.DBTimeEdit1.Enabled:=false;
        frmvoyage.DBTimeEdit2.Enabled:=false;
        frmvoyage.SpeedButton2.Enabled:=false;
        frmvoyage.BitBtn2.Enabled:=false;
        frmvoyage.Label9.Caption:='View';
        frmvoyage.show;
    if r58 then begin
      //frmvoyage.BitBtn2.Enabled:=true;
      frmvoyage.dbediteh1.readonly:=false;
    end else begin
      //frmvoyage.BitBtn2.Enabled:=false;
      frmvoyage.dbediteh1.readonly:=true;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.BitBtn6Click(Sender: TObject);
begin
  if query1.Active then begin
    if query1.state=dsedit then query1.post;
    if frmpdnprint=nil then frmpdnprint:=tfrmpdnprint.create(nil);
    frmpdnprint.xh01.checked:=false;
    frmpdnprint.xh11.checked:=false;
    frmpdnprint.xh02.checked:=false;
    frmpdnprint.xh12.checked:=false;
    frmpdnprint.xh03.checked:=false;
    frmpdnprint.xh13.checked:=false;
    frmpdnprint.xh04.checked:=false;
    frmpdnprint.xh14.checked:=false;
    frmpdnprint.xh05.checked:=false;
    frmpdnprint.xh15.checked:=false;
    frmpdnprint.xh06.checked:=false;
    frmpdnprint.xh16.checked:=false;
    frmpdnprint.xh07.checked:=false;
    frmpdnprint.xh17.checked:=false;
    frmpdnprint.xh08.checked:=false;
    frmpdnprint.xh18.checked:=false;
    
    frmpdnprint.xh01.enabled:=false;
    frmpdnprint.xh11.enabled:=false;
    frmpdnprint.xh02.enabled:=false;
    frmpdnprint.xh12.enabled:=false;
    frmpdnprint.xh03.enabled:=false;
    frmpdnprint.xh13.enabled:=false;
    frmpdnprint.xh04.enabled:=false;
    frmpdnprint.xh14.enabled:=false;
    frmpdnprint.xh05.enabled:=false;
    frmpdnprint.xh15.enabled:=false;
    frmpdnprint.xh06.enabled:=false;
    frmpdnprint.xh16.enabled:=false;
    frmpdnprint.xh07.enabled:=false;
    frmpdnprint.xh17.enabled:=false;
    frmpdnprint.xh08.enabled:=false;
    frmpdnprint.xh18.enabled:=false;
    frmpdnprint.chk3.Enabled:=false;
    if query1.fieldbyname('status').value='0' then begin
      frmpdnprint.xh01.enabled:=true;
      frmpdnprint.xh11.enabled:=true;
      frmpdnprint.xh01.Checked:=true;
      frmpdnprint.xh11.Checked:=true;
    end else if query1.fieldbyname('status').value='1' then begin
      frmpdnprint.xh02.enabled:=true;
      frmpdnprint.xh12.enabled:=true;
      frmpdnprint.xh02.Checked:=true;
      frmpdnprint.xh12.Checked:=true;
    end else if query1.fieldbyname('status').value='2' then begin
      frmpdnprint.xh03.enabled:=true;
      frmpdnprint.xh13.enabled:=true;
      frmpdnprint.xh03.Checked:=true;
      frmpdnprint.xh13.Checked:=true;
      frmpdnprint.chk3.Enabled:=true;
    end else if query1.fieldbyname('status').value='3' then begin
      frmpdnprint.xh04.enabled:=true;
      frmpdnprint.xh14.enabled:=true;
      frmpdnprint.xh04.Checked:=true;
      frmpdnprint.xh14.Checked:=true;
      frmpdnprint.chk3.Enabled:=true;
    end else if query1.fieldbyname('status').value='4' then begin
      frmpdnprint.xh05.enabled:=true;
      frmpdnprint.xh15.enabled:=true;
      frmpdnprint.xh05.Checked:=true;
      frmpdnprint.xh15.Checked:=true;
      frmpdnprint.chk3.Enabled:=true;
    end else if query1.fieldbyname('status').value='5' then begin
      frmpdnprint.xh06.enabled:=true;
      frmpdnprint.xh16.enabled:=true;
      frmpdnprint.xh06.Checked:=true;
      frmpdnprint.xh16.Checked:=true;
      frmpdnprint.chk3.Enabled:=true;
    end else if query1.fieldbyname('status').value='6' then begin
      frmpdnprint.xh07.enabled:=true;
      frmpdnprint.xh17.enabled:=true;
      frmpdnprint.xh07.Checked:=true;
      frmpdnprint.xh17.Checked:=true;
      frmpdnprint.chk3.Enabled:=true;
    end else if query1.fieldbyname('status').value='20' then begin
      frmpdnprint.xh08.enabled:=true;
      frmpdnprint.xh18.enabled:=true;
      frmpdnprint.xh08.Checked:=true;
      frmpdnprint.xh18.Checked:=true;
      frmpdnprint.chk3.Enabled:=true;
    end;
    if ((pos('SA',query1.fieldbyname('pdn').value)>0) or (pos('HU',query1.fieldbyname('pdn').value)>0)) then begin
      frmpdnprint.BitBtn2.Enabled:=true;
      frmpdnprint.BitBtn2.Caption:='Turnkey Vendor Booking';
      frmpdnprint.BitBtn3.Visible:=false;
      frmpdnprint.BitBtn4.Visible:=true;
      frmpdnprint.BitBtn5.Visible:=true;
      frmpdnprint.BitBtn7.Visible:=false;
      frmpdnprint.BitBtn8.Visible:=false;
      frmpdnprint.BitBtn9.Enabled:=true;
      //frmpdnprint.Height:=355;
    end else if (pos('TM',query1.fieldbyname('pdn').value)>0) or (pos('AF',query1.fieldbyname('pdn').value)>0) or (pos('SL',query1.fieldbyname('pdn').value)>0) or (pos('MU',query1.fieldbyname('pdn').value)>0) then begin
      frmpdnprint.BitBtn2.Enabled:=false;//true;
      frmpdnprint.BitBtn2.Caption:='Dispatch Plan';
      frmpdnprint.BitBtn3.Visible:=false;
      frmpdnprint.BitBtn4.Visible:=true;
      frmpdnprint.BitBtn5.Visible:=true;
      frmpdnprint.BitBtn7.Visible:=true;
      frmpdnprint.BitBtn8.Visible:=true;
      frmpdnprint.BitBtn9.Enabled:=true;
      //frmpdnprint.Height:=387;
    end else begin
      frmpdnprint.BitBtn2.Enabled:=false;
      frmpdnprint.BitBtn2.Caption:='Dispatch Plan';
      frmpdnprint.BitBtn3.Visible:=true;
      frmpdnprint.BitBtn4.Visible:=false;
      frmpdnprint.BitBtn5.Visible:=false;
      frmpdnprint.BitBtn7.Visible:=false;
      frmpdnprint.BitBtn8.Visible:=false;
      frmpdnprint.BitBtn9.Enabled:=false;
      //frmpdnprint.Height:=355;
    end;
    frmpdnprint.show;
  end;
end;

procedure Tfrmpdn.DBGridEh3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage((sender as tdbgrideh).Handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmpdn.DepartmentalTransitT3AQLpassExfty1Click(Sender: TObject);
begin
  if query1.active=true then begin
    if not query2.fieldbyname('j2_job').isnull then begin
      if frmpdn_t3aqlexfty=nil then frmpdn_t3aqlexfty:=tfrmpdn_t3aqlexfty.create(nil);
      frmpdn_t3aqlexfty.show;
    end;
  end;
end;

procedure Tfrmpdn.BitBtn7Click(Sender: TObject);
var
  pdnemail:boolean;
begin
  {
  if query1.active then begin
    if frmpdnmarks=nil then frmpdnmarks:=tfrmpdnmarks.create(nil);
    frmpdnmarks.DBText1.DataSource:=frmpdn.DataSource1;
    frmpdnmarks.DBText1.DataField:='pdn';
    frmpdnmarks.DBText2.DataSource:=frmpdn.DataSource1;
    frmpdnmarks.DBText2.DataField:='exfty';
    frmpdnmarks.DBMemo1.DataSource:=frmpdn.DataSource1;
    frmpdnmarks.DBmemo1.DataField:='marks';
    frmpdnmarks.DBMemo2.DataSource:=frmpdn.DataSource1;
    frmpdnmarks.DBmemo2.DataField:='marks1';
    frmpdnmarks.show;
  end else begin
    if frmpdn_notepad=nil then frmpdn_notepad:=tfrmpdn_notepad.create(nil);
    frmpdn_notepad.show;
  end;
  }
  {
  with query5 do begin
    close;
    params.clear;
    commandtext:='select pdnemail from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    pdnemail:=fieldbyname('pdnemail').value;
  end;
  if not pdnemail then begin
    if frmpdnmarks=nil then frmpdnmarks:=tfrmpdnmarks.create(nil);
    frmpdnmarks.DBText1.DataSource:=frmpdn.DataSource1;
    frmpdnmarks.DBText1.DataField:='pdn';
    frmpdnmarks.DBText2.DataSource:=frmpdn.DataSource1;
    frmpdnmarks.DBText2.DataField:='exfty';
    frmpdnmarks.DBMemo1.DataSource:=frmpdn.DataSource1;
    frmpdnmarks.DBmemo1.DataField:='marks';
    frmpdnmarks.DBMemo2.DataSource:=frmpdn.DataSource1;
    frmpdnmarks.DBmemo2.DataField:='marks1';
    frmpdnmarks.show;
  end else begin
  }
  if query1.active=true then begin
    if frmpdn_notepad=nil then frmpdn_notepad:=tfrmpdn_notepad.create(nil);
    frmpdn_notepad.show;
  end else begin
    //
  end;
  {
  end;
  }
end;

procedure Tfrmpdn.ACCESSCUSTPOQTY1Click(Sender: TObject);
var
  seq:integer;
begin
  if query1.active=true then seq:=query1.fieldbyname('seq').value
  else seq:=0;
  //updcustpoqty(seq);
end;

procedure Tfrmpdn.BitBtn10Click(Sender: TObject);
var
  r53:boolean;
begin
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r53 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r53').isnull then r53:=fieldbyname('r53').value else r53:=false;
  end;
  if r53 then begin
  if query1.fieldbyname('status').value<'1' then begin
  if application.MessageBox('Active this PDN?','confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query1 do begin
      edit;
      fieldbyname('status').value:='1';
      post;
    end;
  end;
  end;
  end else showmessage('You have no right!');
end;

procedure Tfrmpdn.BitBtn8Click(Sender: TObject);
var
  r53:boolean;
begin
  screen.Cursor:=crSQLWait;
  try
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r55 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r55').isnull then r53:=fieldbyname('r55').value else r53:=false;
  end;
  if r53 then begin
  if query1.fieldbyname('status').value<'5' then begin
    if application.MessageBox('Want to write off some SKU?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      if query1.fieldbyname('status').value>='20' then begin
        with query1 do begin
          edit;
          fieldbyname('status').value:='5';
          post;
        end;
      end;
    end;
  end;
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      //commandtext:='execute procedure sp_pdn_writeoff(:x1)';
      commandtext:='execute procedure sp_pdn_updspqty(:x1)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    if frmpdnwrite=nil then frmpdnwrite:=tfrmpdnwrite.Create(nil);
    frmpdnwrite.Label3.Caption:='WRITEOFF';
    frmpdnwrite.Caption:='Write off';
    with frmpdnwrite.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_writeoff where seq=:x1';
      params[0].AsInteger:=query1.fieldbyname('seq').value;
      open;
    end;
    frmpdnwrite.DBGridEh1.Columns[6].ReadOnly:=true;
    frmpdnwrite.DBGridEh1.Columns[7].ReadOnly:=true;
    frmpdnwrite.DBGridEh1.Columns[8].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[9].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[10].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[11].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[12].ReadOnly:=true;
    frmpdnwrite.DBGridEh1.Columns[13].ReadOnly:=true;
    frmpdnwrite.BitBtn2.Caption:='Confirm';
    frmpdnwrite.label4.visible:=false;
    frmpdnwrite.dateedit1.visible:=false;
    frmpdnwrite.Show;
  end else showmessage('You have no right!');
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.BitBtn11Click(Sender: TObject);
var
  r53:boolean;
begin
  screen.Cursor:=crSQLWait;
  try
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r55 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r55').isnull then r53:=fieldbyname('r55').value else r53:=false;
  end;
  if r53 then begin
  if query1.fieldbyname('status').value<='3' then begin
    if application.MessageBox('Want to delay ship rest SKU?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      if query1.fieldbyname('status').value>='20' then begin
        with query1 do begin
          edit;
          fieldbyname('status').value:='3';
          post;
        end;
      end;
    end;
  end;
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      //commandtext:='execute procedure sp_pdn_writeoff(:x1)';
      commandtext:='execute procedure sp_pdn_updspqty(:x1)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    if frmpdnwrite=nil then frmpdnwrite:=tfrmpdnwrite.Create(nil);
    frmpdnwrite.Label3.Caption:='DELAY';
    frmpdnwrite.Caption:='Delay Shipment';
    with frmpdnwrite.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_writeoff where seq=:x1';
      params[0].AsInteger:=query1.fieldbyname('seq').value;
      open;
    end;
    frmpdnwrite.DBGridEh1.Columns[6].ReadOnly:=true;
    frmpdnwrite.DBGridEh1.Columns[7].ReadOnly:=true;
    frmpdnwrite.DBGridEh1.Columns[8].ReadOnly:=true;
    frmpdnwrite.DBGridEh1.Columns[9].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[10].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[11].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[12].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[13].ReadOnly:=false;
    frmpdnwrite.BitBtn2.Caption:='Confirm';
    frmpdnwrite.label4.visible:=false;
    frmpdnwrite.dateedit1.visible:=false;
    frmpdnwrite.Show;
  end else showmessage('You have no right!');
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.BitBtn12Click(Sender: TObject);
var
  r53:boolean;
begin
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r56 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r56').isnull then r53:=fieldbyname('r56').value else r53:=false;
  end;
  if r53 then begin
  if (query1.fieldbyname('status').value<'6') and (query1.fieldbyname('status').value>='3') then begin
  if application.MessageBox('Want to act this PDN?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query1 do begin
      edit;
      fieldbyname('status').value:='6';
      fieldbyname('actdt').value:=date;
      fieldbyname('acttm').value:=now;
      post;
    end;
  end;
  end;
  end else showmessage('You have no right!');
end;

procedure Tfrmpdn.DBGridEh2Columns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmbcn=nil then frmbcn:=tfrmbcn.create(nil);
  frmbcn.show;
end;

procedure Tfrmpdn.DBGridEh2Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmbcn=nil then frmbcn:=tfrmbcn.create(nil);
  frmbcn.show;
end;

procedure Tfrmpdn.Query2AfterPost(DataSet: TDataSet);
begin
  {
  if query2.ApplyUpdates(-1)>0 then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftboolean,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='update tbl_pdn_rwo set bcn=:x1,castl1=:x2,custpo=:x3 where seq=:x4 and dseq=:x5';

      if not query2.fieldbyname('bcn').isnull then
      params[0].asstring:=query2.fieldbyname('bcn').value
      else params[0].asstring:='';
      if not query2.fieldbyname('castl1').isnull then
      params[1].asboolean:=query2.fieldbyname('castl1').value
      else params[1].asboolean:=false;
      if not query2.fieldbyname('custpo').isnull then
      params[2].asstring:=query2.fieldbyname('custpo').value
      else params[2].asstring:='';
      params[3].asinteger:=query2.fieldbyname('seq').value;
      params[4].asinteger:=query2.fieldbyname('dseq').value;
      execute;
    end;
  end;
  }
      strupd:='update tbl_pdn_rwo set ';
      if not query2.fieldbyname('bcn').isnull then
      strupd:=strupd+'bcn='''+query2.fieldbyname('bcn').value+''','
      else strupd:=strupd+'bcn='''',';
      if not query2.fieldbyname('castl1').isnull then begin
        if query2.fieldbyname('castl1').value=true then strupd:=strupd+'castl1=1,'
        else strupd:=strupd+'castl1=0,';
      end else strupd:=strupd+'castl1=0,';
      if not query2.fieldbyname('custpo').isnull then
      strupd:=strupd+'custpo='''+query2.fieldbyname('custpo').value+''' '
      else strupd:=strupd+'custpo='''' ';
      strupd:=strupd+'where seq='+query2.fieldbyname('seq').asstring+' ';
      strupd:=strupd+'and dseq='+query2.fieldbyname('dseq').asstring;
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

end;

procedure Tfrmpdn.Query1AfterClose(DataSet: TDataSet);
begin
  combobox1.text:='';
  edit1.Text:='';
  label8.Caption:='';
  wEdit1.Value:=weekof(date);
end;

procedure Tfrmpdn.DataSource1DataChange(Sender: TObject; Field: TField);
var
  ver,str1:string;
begin
  //if query1.fieldbyname('tplant').value='SL' then combobox1.text:='PHSL' else
  combobox1.text:=query1.fieldbyname('tplant').value;
  if not query1.fieldbyname('wk').isnull then
    wEdit1.Value:=query1.fieldbyname('wk').value
  else wEdit1.value:=weekof(date);
  edit1.Text:=query1.fieldbyname('pdn').value;
  if not query1.fieldbyname('status').isnull then begin
    if query1.fieldbyname('status').value='0' then str1:='1'
    else if query1.fieldbyname('status').value='1' then str1:='2.1'
    else if query1.fieldbyname('status').value='2' then str1:='3.1'
    else if query1.fieldbyname('status').value='20' then str1:='3.3'
    else if query1.fieldbyname('status').value='3' then str1:='4.2'
    else if query1.fieldbyname('status').value='4' then str1:='4.3'
    else if query1.fieldbyname('status').value='5' then str1:='5.1'
    else if query1.fieldbyname('status').value='6' then str1:='5.2';
  end else str1:='';
  if not query1.fieldbyname('stt').isnull then label8.Caption:=str1+' - '+query1.fieldbyname('stt').value else label8.Caption:='';

  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select max(ver) as ver1 from tbl_pdn_voyage_m where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('ver1').isnull then begin
      if label8.Caption>'' then label8.Caption:=label8.Caption+'      Version: '+fieldbyname('ver1').value
      else label8.Caption:='Version: '+fieldbyname('ver1').value;
    end;
  end;
end;

procedure Tfrmpdn.BitBtn13Click(Sender: TObject);
var
  r53:boolean;
begin
  //status change to "20" for manifest confirmation
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r58 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r58').isnull then r53:=fieldbyname('r58').value else r53:=false;
  end;
  if r53 then begin
  if (query1.fieldbyname('status').value<'20') and (query1.fieldbyname('status').value>='2') then begin
  if application.MessageBox('Want to confirm manifest?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query1 do begin
      edit;
      fieldbyname('status').value:='20';
      post;
    end;
        if frmvoyage=nil then frmvoyage:=tfrmvoyage.create(nil);
        with frmvoyage.Query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=1';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        with frmvoyage.Query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_voyage_rwo where seq=:x1 and seq1=1 order by seq,seq1,dseq';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        with frmvoyage.Query4 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_rwo where seq=:x1 order by seq,dseq';
          params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          open;
        end;
        frmvoyage.DBText1.Enabled:=true;
        frmvoyage.DBText2.Enabled:=false;
        frmvoyage.DBDTEdit1.ReadOnly:=true;
        frmvoyage.DBDTEdit2.ReadOnly:=false;
        frmvoyage.DBTimeEdit1.Enabled:=false;
        frmvoyage.DBTimeEdit2.Enabled:=true;
        frmvoyage.SpeedButton2.Enabled:=false;
        frmvoyage.BitBtn2.Enabled:=true;
        frmvoyage.Caption:='Manifest Confirmation';
        frmvoyage.Label9.Caption:='Confirm';
        frmvoyage.show;
  end;
  end;
  end else showmessage('You have no right!');
end;

procedure Tfrmpdn.Query3AfterOpen(DataSet: TDataSet);
begin
  query3.FieldByName('sqty').OnChange:=querysqtychange;
end;

procedure Tfrmpdn.QuerySQTYChange(Sender: TField);
var
  tplant:string;
  ttlqty:integer;
begin
  if not query3.fieldbyname('sqty').isnull then begin
    tplant:=query1.fieldbyname('tplant').value;
    {
    if query3.fieldbyname('sqty').value>query3.fieldbyname('qty').value then begin
      showmessage('PDN ttl Qty can not larger than RWO Qty!');
      //exit;
      query3.fieldbyname('sqty').value:=0;
    end else begin
    }
    with query6 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      commandtext:='select ttl_shp from sp_pdn_ttlshpqty(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asstring:=tplant;
      params[1].asinteger:=query3.fieldbyname('seq').value;
      params[2].asstring:=query3.fieldbyname('j2_job').value;
      params[3].asstring:=query3.fieldbyname('rwo').value;
      params[4].asstring:=query3.fieldbyname('acol').value;
      params[5].asstring:=query3.fieldbyname('psiz').value;
      open;
      ttlqty:=fieldbyname('ttl_shp').value;
    end;
    if query3.fieldbyname('sqty').value+ttlqty>query3.fieldbyname('qty').value then begin
      showmessage('PDN ttl Qty can not larger than RWO Qty!');
      query3.fieldbyname('sqty').value:=query3.fieldbyname('qty').value-ttlqty;
    end;
    //end;
  end;
end;

procedure Tfrmpdn.ChangePDN1Click(Sender: TObject);
var
  opdn,npdn:string;
begin
  //ALT+U
  screen.Cursor:=crSQLWait;
  opdn:=query1.fieldbyname('pdn').value;
  try
  npdn:=inputbox('Change PDN #','Please input new PDN #','');
  if npdn>'' then begin
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='execute procedure sp_pdn_changepdnnumber :x1,'''+opdn+''','''+npdn+'''';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.UpdOSQTY1Click(Sender: TObject);
begin
  //ALT+S
  screen.Cursor:=crSQLWait;
  try
  with ROQuery1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_pdn_updrwosqty(-1)';
    execute;
    close;
    params.clear;
    commandtext:='execute procedure sp_pdn_voyage_updrwosqty(-1)';
    execute;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.RecalculateVoyage1Click(Sender: TObject);
begin
  //ALT+M
  screen.Cursor:=crSQLWait;
  try
  with ROQuery1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_pdn_voyage_recalc(-1)';
    execute;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.FirstPage1Click(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex>0 then begin
    pagecontrol1.ActivePageIndex:=0;
    pagecontrol1change(self);
  end;
end;

procedure Tfrmpdn.DBGridEh2DblClick(Sender: TObject);
begin
  if dbgrideh2.SelectedIndex=9 then begin
   //create or view RWO Transit
   if frmrwotrans=nil then frmrwotrans:=tfrmrwotrans.create(nil);
   with ROQuery1 do begin
     close;
     params.clear;
     params.createparam(ftstring,'x1',ptinput);
     params.createparam(ftstring,'x2',ptinput);
     params.createparam(ftstring,'x3',ptinput);
     params.createparam(ftstring,'x4',ptinput);
     commandtext:='execute procedure sp_rtrs1(:x1,:x2,:x3,:x4)';
     params[0].asstring:=query1.fieldbyname('tplant').value;
     params[1].asstring:=query2.fieldbyname('j_no').value;
     params[2].asstring:=query2.fieldbyname('j2_job').value;
     params[3].asstring:=query2.fieldbyname('rwo').value;
     execute;
   end;
   with frmrwotrans.Query1 do begin
     close;
     params.clear;
     params.createparam(ftstring,'x1',ptinput);
     params.createparam(ftstring,'x2',ptinput);
     params.createparam(ftstring,'x3',ptinput);
     params.createparam(ftstring,'x4',ptinput);
     commandtext:='select * from tbl_rtrs1 where tplant=:x1 and j_no=:x2 and j2_job=:x3 and rwo=:x4';
     params[0].asstring:=query1.fieldbyname('tplant').value;
     params[1].asstring:=query2.fieldbyname('j_no').value;
     params[2].asstring:=query2.fieldbyname('j2_job').value;
     params[3].asstring:=query2.fieldbyname('rwo').value;
     open;
   end;
    frmrwotrans.dbtext1.DataSource:=DataSource2;
    frmrwotrans.dbtext2.DataSource:=DataSource2;
    frmrwotrans.dbtext3.DataSource:=DataSource2;
    frmrwotrans.dbtext4.DataSource:=DataSource2;
    frmrwotrans.dbtext5.DataSource:=DataSource2;
    frmrwotrans.show;
  end else begin
    pagecontrol1.ActivePageIndex:=2;
    pagecontrol1change(self);
  end;
end;

procedure Tfrmpdn.PDNEnquiry1Click(Sender: TObject);
begin
  if frmpdnqty_enq=nil then frmpdnqty_enq:=tfrmpdnqty_enq.Create(nil);
  frmpdnqty_enq.Show;
end;

procedure Tfrmpdn.Query2BeforeOpen(DataSet: TDataSet);
begin
  screen.cursor:=crSQLWait;
  try
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='execute procedure sp_pdn_updrwosqty(:x1)';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.BitBtn14Click(Sender: TObject);
var
  r53:boolean;
begin
  screen.cursor:=crSQLWait;
  try
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r61 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r61').isnull then r53:=fieldbyname('r61').value else r53:=false;
  end;
  if r53 then begin
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='execute procedure sp_pdn_updspqty(:x1)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    if frmpdnwrite=nil then frmpdnwrite:=tfrmpdnwrite.Create(nil);
    frmpdnwrite.Label3.Caption:='SAMPLE';
    frmpdnwrite.Caption:='Sample Qty';
    with frmpdnwrite.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_writeoff where seq=:x1';
      params[0].AsInteger:=query1.fieldbyname('seq').value;
      open;
    end;
    frmpdnwrite.DBGridEh1.Columns[6].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[7].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[8].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[9].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[10].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[11].ReadOnly:=false;
    frmpdnwrite.DBGridEh1.Columns[12].ReadOnly:=true;
    frmpdnwrite.DBGridEh1.Columns[13].ReadOnly:=true;
    //frmpdnwrite.DBGridEh1.Columns[7].Visible:=false;
    //frmpdnwrite.DBGridEh1.Columns[8].Visible:=false;
    //frmpdnwrite.DBGridEh1.Columns[9].Visible:=false;
    frmpdnwrite.BitBtn2.Caption:='Preview';
    frmpdnwrite.label4.visible:=true;
    frmpdnwrite.dateedit1.visible:=true;
    frmpdnwrite.dateedit1.date:=date;
    frmpdnwrite.Show;
  end else showmessage('You have no right!');
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.RemoveRWO1Click(Sender: TObject);
var
  dseq,maxd:integer;
  pstr:string;
begin
  if not query2.fieldbyname('dseq').isnull then begin
    dseq:=query2.fieldbyname('dseq').value;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select max(dseq) as q1 from tbl_pdn_rwo where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      maxd:=fieldbyname('q1').value;
    end;
    if application.messagebox('Delete this RWO?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_removerwo(:x1,:x2)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=dseq;
        execute;
      end;
      {
        pstr:='20 '+query1.fieldbyname('seq').asstring+' '+inttostr(dseq);
        if pos('test',lowercase(application.ExeName))>0 then
        winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
        else winexec(pansichar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
      }
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_rwo where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        open;
        if dseq<maxd then locate('dseq',dseq,[lopartialkey])
        else last;
      end;
      showpage;
    end;
  end;
end;

procedure Tfrmpdn.Releaseto01Click(Sender: TObject);
var
  r53:boolean;
begin
  //status change to "PDN Apply"
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r58 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r58').isnull then r53:=fieldbyname('r58').value else r53:=false;
  end;
  if r53 then begin
    strupd:='update tbl_pdn_m set status=''0'',stt=''PDN apply'' where seq='+query1.fieldbyname('seq').asstring;
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
  end;
end;

procedure Tfrmpdn.Releaseto21Click(Sender: TObject);
var
  r53:boolean;
begin
  //status change to "manifest instruction"
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r58 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r58').isnull then r53:=fieldbyname('r58').value else r53:=false;
  end;
  if r53 then begin
    strupd:='update tbl_pdn_m set status=''2'',stt=''PDN manifest instruction'',actdt=null,acttm=null where seq='+query1.fieldbyname('seq').asstring;
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
    strupd:='update tbl_pdn_voyage_m set status=''2'',stt=''PDN manifest instruction'',actdt=null,acttm=null where seq='+query1.fieldbyname('seq').asstring;
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
  end;
end;

procedure Tfrmpdn.BitBtn9Click(Sender: TObject);
begin
  //
  {
  if frmpdnversion=nil then frmpdnversion:=tfrmpdnversion.create(nil);
  with frmpdnversion.query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select distinct seq1,dseq,item from tbl_pdn_version where seq=:x1 order by seq1,dseq';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  }
  if frmpdnpast=nil then frmpdnpast:=tfrmpdnpast.create(nil);
  frmpdnpast.ComboBox1.Text:='SL';
  frmpdnpast.ComboBox2.text:='CUST BY CUST';
  frmpdnpast.SpinEdit1.Value:=yearof(date);
  frmpdnpast.SpinEdit2.Value:=weekof(date);
  frmpdnpast.SpinEdit3.Value:=yearof(date);
  frmpdnpast.SpinEdit4.Value:=weekof(date);
  frmpdnpast.Label4.Caption:='Week';
  frmpdnpast.Label7.Caption:='Week';
  frmpdnpast.SpinEdit2.MaxValue:=53;
  frmpdnpast.SpinEdit4.MaxValue:=53;
  frmpdnpast.show;
end;

procedure Tfrmpdn.CheckRWO1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.cursor:=crSQLWait;
  try
  tm:=now;
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_pdn_genwithoutrwo(:x1,:x2)';
    params[0].asdatetime:=tm;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='execute procedure sp_pdn_voyage_genwithoutrwo(:x1,:x2,:x3)';
    params[0].asdatetime:=tm;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asinteger:=-1;
    execute;
  end;
  if frmmissingrwo=nil then frmmissingrwo:=tfrmmissingrwo.create(nil);
  with frmmissingrwo.query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_pdn_withoutrwo where tm=:x1 order by j_no,j2_job,rwo';
    params[0].asdatetime:=tm;
    open;
  end;
  with frmmissingrwo.query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_pdn_voyage_withoutrwo where tm=:x1 order by seq1,j_no,j2_job,rwo';
    params[0].asdatetime:=tm;
    open;
  end;
  frmmissingrwo.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.CheckSampleQty1Click(Sender: TObject);
begin
  //
end;

procedure Tfrmpdn.RemoveVoyage1Click(Sender: TObject);
begin
  //
end;

procedure Tfrmpdn.RefreshActualDate1Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  with ROQuery1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_pdn_updcustpo';
    execute;
    close;
    params.clear;
    commandtext:='update tbl_pdn_voyage_m set actdt=exfty where status=''6'' and actdt is null and exfty is not null';
    execute;
    close;
    params.clear;
    commandtext:='update tbl_pdn_voyage_m set acttm=extm where status=''6'' and acttm is null and extm is not null';
    execute;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.RefreshPDN1Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='execute procedure sp_pdn_updrwo(:x1)';
    params[0].asstring:=query1.fieldbyname('seq').value;
    execute;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.PrintRWO1Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
    with query7 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct j_no as Project,j2_job as WO,rwo as RWO,cstyle as Cust_Style,acol as Clr_Code,qty as RWO_Qty,sqty as PDN_Qty from tbl_pdn_rwo where seq=:x1';
      params[0].AsInteger:=query1.fieldbyname('seq').value;
      open;
    end;
    if savedialog1.Execute then exls1.FileName:=savedialog1.FileName;
    exls1.Execute;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.ransferDatatoWeb1Click(Sender: TObject);
var
  tm:tdatetime;
  c00,c01,c02,c03,c04:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with adoquery1 do begin
      close;
      sql.Clear;
      sql.Text:='delete from tbl_pdn_wksum_1 where seq='+query1.fieldbyname('seq').asstring;
      execsql;
      close;
      sql.Clear;
      sql.Text:='delete from tbl_pdn_voyage_m where seq='+query1.fieldbyname('seq').asstring;
      execsql;
      close;
      sql.Clear;
      sql.Text:='delete from tbl_pdn_pack_1 where seq='+query1.fieldbyname('seq').asstring;
      execsql;
    end;
    c00:=copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2);
    with query5 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_contact where cust='''+c00+'''';
      open;
      if not fieldbyname('contact').isnull then begin
        c01:=fieldbyname('contact').value;
        c02:=fieldbyname('telno').value;
        c03:=fieldbyname('faxno').value;
        c04:=fieldbyname('email').value;
      end else begin
        c01:='';c02:='';c03:='';c04:='';
      end;
    end;

    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_wksum_1(:x1,:x2)';
      params[0].asdatetime:=tm;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    //WK_SUM
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_pdn_wksum where tm=:x1 and seq=:x2';
      params[0].asdatetime:=tm;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
      first;
      while not eof do begin
        with adoquery1 do begin
          close;
          sql.text:='insert into tbl_pdn_wksum_1(tm,seq,pdn,seq1,bcn,qty,rqty,sqty,t1qty,t2qty,t3qty,aqqty,eqty,shpqty,bal1,bal2,diff,dp,docstatus,stt,';
          sql.text:=sql.text+'wk,cust,exfty,tplant,extm,shpm,spqty,writeoff,ver,spqty1,writeoff1,lstqty,lstqty1,swing,memo1,pkqty,cap,pval,eval,hold,';
          sql.text:=sql.text+'hold1,status,vendor,contact,telno,faxno,email) ';
          sql.text:=sql.text+'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,';
          sql.text:=sql.text+':x21,:x22,:x23,:x24,:x25,:x26,:x27,:x28,:x29,:x30,:x31,:x32,:x33,:x34,:x35,:x36,:x37,:x38,:x39,:x40,';
          sql.text:=sql.text+':x41,:x42,:x43,:x44,:x45,:x46,:x47)';
          prepare;
          params[0].asdatetime:=tm;
          params[1].asinteger:=query5.fieldbyname('seq').value;
          params[2].value:=query5.fieldbyname('pdn').value;
          params[3].value:=query5.fieldbyname('seq1').value;
          params[4].value:=query5.fieldbyname('bcn').value;
          params[5].value:=query5.fieldbyname('qty').value;
          params[6].value:=query5.fieldbyname('rqty').value;
          params[7].value:=query5.fieldbyname('sqty').value;
          params[8].value:=query5.fieldbyname('t1qty').value;
          params[9].value:=query5.fieldbyname('t2qty').value;
          params[10].value:=query5.fieldbyname('t3qty').value;
          params[11].value:=query5.fieldbyname('aqqty').value;
          params[12].value:=query5.fieldbyname('eqty').value;
          params[13].value:=query5.fieldbyname('shpqty').value;
          params[14].value:=query5.fieldbyname('bal1').value;
          params[15].value:=query5.fieldbyname('bal2').value;
          params[16].value:=query5.fieldbyname('diff').value;
          params[17].value:=query5.fieldbyname('dp').value;
          params[18].value:='Incomplete';//query5.fieldbyname('status').value;
          params[19].value:=query5.fieldbyname('stt').value;
          params[20].value:=query5.fieldbyname('wk').value;
          params[21].value:=query5.fieldbyname('cust').value;
          params[22].value:=query5.fieldbyname('exfty').value;
          params[23].value:=query5.fieldbyname('tplant').value;
          if not query5.fieldbyname('extm').isnull then
          params[24].asdatetime:=query5.fieldbyname('extm').value
          else params[24].asdatetime:=0;
          if not query5.fieldbyname('shpm').isnull then
          params[25].value:=query5.fieldbyname('shpm').value
          else params[25].value:='';
          params[26].value:=query5.fieldbyname('spqty').value;
          params[27].value:=query5.fieldbyname('writeoff').value;
          if not query5.fieldbyname('ver').isnull then
          params[28].asstring:=query5.fieldbyname('ver').value
          else params[28].asstring:='';
          params[29].asinteger:=query5.fieldbyname('spqty1').value;
          params[30].asinteger:=query5.fieldbyname('writeoff1').value;
          params[31].asinteger:=query5.fieldbyname('lstqty').value;
          params[32].asinteger:=query5.fieldbyname('lstqty1').value;
          params[33].asinteger:=query5.fieldbyname('swing').value;
          if not query5.fieldbyname('memo1').isnull then
          params[34].asstring:=query5.fieldbyname('memo1').value
          else params[34].asstring:='';
          params[35].asinteger:=query5.fieldbyname('pkqty').value;
          params[36].asinteger:=query5.fieldbyname('cap').value;
          params[37].asfloat:=query5.fieldbyname('pval').value;
          params[38].asfloat:=query5.fieldbyname('eval').value;
          params[39].asinteger:=query5.fieldbyname('hqty').value;
          params[40].asinteger:=query5.fieldbyname('hqty1').value;
          if query5.fieldbyname('stt').value='PDN acted' then
          params[41].asstring:='6'
          else if (query5.fieldbyname('stt').value='PDN to be acted') then
          params[41].asstring:='5'
          else if (query5.fieldbyname('stt').value='PDN waiting for write off inactive sku') then
          params[41].asstring:='4'
          else if (query5.fieldbyname('stt').value='PDN manifest confirmation') then
          params[41].asstring:='3'
          else if (query5.fieldbyname('stt').value='PDN manifest instruction') then
          params[41].asstring:='2';
          params[42].asstring:='PH Garment';
          params[43].asstring:=c01;//'Angela Lam';
          params[44].asstring:=c02;//'852-2610 3334';
          params[45].asstring:=c03;//'852-2494 3591';
          params[46].asstring:=c04;//'Angelalam@phgmt.com.hk';
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //VOYAGE_M
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_voyage_m where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      first;
      while not eof do begin
        with adoquery1 do begin
          close;
          sql.text:='insert into tbl_pdn_voyage_m(seq,pdn,exfty,cust,marks,cfm,wk,tplant,marks1,status,actdt,acttm,stt,seq1,voyn,';
          sql.text:=sql.text+'shpm,extm,ver,truck,indt,intm,ondt,vess,lport,dest,box,wght,cbm,memo1,rair) ';
          sql.text:=sql.text+'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,';
          sql.text:=sql.text+':x16,:x17,:x18,:x19,:x20,:x21,:x22,:x23,:x24,:x25,:x26,:x27,:x28,:x29,:x30)';
          prepare;
          params[0].value:=query5.fieldbyname('seq').value;
          params[1].value:=query5.fieldbyname('pdn').value;
          params[2].value:=query5.fieldbyname('exfty').value;
          params[3].value:=query5.fieldbyname('cust').value;
          if not query5.fieldbyname('marks').isnull then
          params[4].value:=query5.fieldbyname('marks').value
          else params[4].Value:='';
          params[5].value:=query5.fieldbyname('cfm').value;
          params[6].value:=query5.fieldbyname('wk').value;
          params[7].value:=query5.fieldbyname('tplant').value;
          if not query5.fieldbyname('marks1').isnull then
          params[8].value:=query5.fieldbyname('marks1').value
          else params[8].Value:='';
          params[9].value:=query5.fieldbyname('status').value;
          if not query5.fieldbyname('actdt').isnull then
          params[10].asdatetime:=query5.fieldbyname('actdt').value
          else params[10].asdatetime:=0;
          if not query5.fieldbyname('acttm').isnull then
          params[11].asdatetime:=query5.fieldbyname('acttm').value
          else params[11].asdatetime:=0;
          params[12].value:=query5.fieldbyname('stt').value;
          params[13].value:=query5.fieldbyname('seq1').value;
          params[14].value:=query5.fieldbyname('voyn').value;
          params[15].value:=query5.fieldbyname('shpm').value;
          if not query5.fieldbyname('extm').isnull then
          params[16].asdatetime:=query5.fieldbyname('extm').value
          else params[16].asdatetime:=0;
          if not query5.fieldbyname('ver').isnull then
          params[17].value:=query5.fieldbyname('ver').value
          else params[17].Value:='';
          if not query5.fieldbyname('truck').isnull then
          params[18].value:=query5.fieldbyname('truck').value
          else params[18].Value:='';
          if not query5.fieldbyname('indt').isnull then
          params[19].asdatetime:=query5.fieldbyname('indt').value
          else params[19].asdatetime:=0;
          if not query5.fieldbyname('intm').isnull then
          params[20].asdatetime:=query5.fieldbyname('intm').value
          else params[20].asdatetime:=0;
          if not query5.fieldbyname('ondt').isnull then
          params[21].asdatetime:=query5.fieldbyname('ondt').value
          else params[21].asdatetime:=0;
          if not query5.fieldbyname('vess').isnull then
          params[22].value:=query5.fieldbyname('vess').value
          else params[22].Value:='';
          if not query5.fieldbyname('lport').isnull then
          params[23].value:=query5.fieldbyname('lport').value
          else params[23].Value:='';
          if not query5.fieldbyname('dest').isnull then
          params[24].value:=query5.fieldbyname('dest').value
          else params[24].Value:='';
          params[25].value:=query5.fieldbyname('box').value;
          params[26].value:=query5.fieldbyname('wght').value;
          params[27].value:=query5.fieldbyname('cbm').value;
          if not query5.fieldbyname('memo1').IsNull then
          params[28].value:=query5.fieldbyname('memo1').value
          else params[28].Value:='';
          if not query5.fieldbyname('rair').isnull then
          params[29].value:=query5.fieldbyname('rair').value
          else params[29].Value:='';
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //PACK
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_pack where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      first;
      while not eof do begin
        with adoquery1 do begin
          close;
          sql.text:='insert into tbl_pdn_pack_1(seq,seq1,dseq,custpo,cstyle,cname,sqty,box,wght,cbm,exfty,extm,truck,indt,intm,ondt,shpm,vess,lport,dest,';
          sql.text:=sql.text+'voyn,j_no,j2_job,acol,poqty,aqqty,t4qty,diff,dp,rwo,qty,shpqty,spqty,writeoff,bal,memo1,lqcdt,fqcdt,fqcdt1,qcrst,cnph,rair) ';
          sql.text:=sql.text+'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,';
          sql.text:=sql.text+':x21,:x22,:x23,:x24,:x25,:x26,:x27,:x28,:x29,:x30,:x31,:x32,:x33,:x34,:x35,:x36,:x37,:x38,:x39,:x40,:x41,:x42)';
          prepare;
          params[0].value:=query5.fieldbyname('seq').value;
          params[1].value:=query5.fieldbyname('seq1').value;
          params[2].value:=query5.fieldbyname('dseq').value;
          if not query5.fieldbyname('custpo').isnull then
          params[3].value:=query5.fieldbyname('custpo').value
          else params[3].value:='';
          if not query5.fieldbyname('cstyle').isnull then
          params[4].value:=query5.fieldbyname('cstyle').value
          else params[4].Value:='';
          if not query5.fieldbyname('cname').isnull then
          params[5].value:=query5.fieldbyname('cname').value
          else params[5].Value:='';
          params[6].value:=query5.fieldbyname('sqty').value;
          params[7].value:=query5.fieldbyname('box').value;
          params[8].value:=query5.fieldbyname('wght').value;
          params[9].value:=query5.fieldbyname('cbm').value;
          params[10].value:=query5.fieldbyname('exfty').value;
          if not query5.fieldbyname('extm').isnull then
          params[11].asdatetime:=query5.fieldbyname('extm').value
          else params[11].asdatetime:=0;
          if not query5.fieldbyname('truck').isnull then
          params[12].value:=query5.fieldbyname('truck').value
          else params[12].value:='';
          if not query5.fieldbyname('indt').isnull then
          params[13].asdatetime:=query5.fieldbyname('indt').value
          else params[13].asdatetime:=0;
          if not query5.fieldbyname('intm').isnull then
          params[14].asdatetime:=query5.fieldbyname('intm').value
          else params[14].asdatetime:=0;
          if not query5.fieldbyname('ondt').isnull then
          params[15].asdatetime:=query5.fieldbyname('ondt').value
          else params[15].AsDateTime:=0;
          if not query5.fieldbyname('shpm').isnull then
          params[16].value:=query5.fieldbyname('shpm').value
          else params[16].value:='';
          if not query5.fieldbyname('vess').isnull then
          params[17].value:=query5.fieldbyname('vess').value
          else params[17].value:='';
          if not query5.fieldbyname('lport').isnull then
          params[18].value:=query5.fieldbyname('lport').value
          else params[18].Value:='';
          if not query5.fieldbyname('dest').isnull then
          params[19].value:=query5.fieldbyname('dest').value
          else params[19].value:='';
          params[20].value:=query5.fieldbyname('voyn').value;
          params[21].value:=query5.fieldbyname('j_no').value;
          params[22].value:=query5.fieldbyname('j2_job').value;
          params[23].value:=query5.fieldbyname('acol').value;
          params[24].value:=query5.fieldbyname('poqty').value;
          params[25].value:=query5.fieldbyname('aqqty').value;
          params[26].value:=query5.fieldbyname('t4qty').value;
          params[27].value:=query5.fieldbyname('diff').value;
          params[28].value:=query5.fieldbyname('dp').value;
          params[29].value:=query5.fieldbyname('rwo').value;
          params[30].value:=query5.fieldbyname('qty').value;
          params[31].value:=query5.fieldbyname('shpqty').value;
          params[32].value:=query5.fieldbyname('spqty').value;
          params[33].value:=query5.fieldbyname('writeoff').value;
          params[34].value:=query5.fieldbyname('qty').value-query5.fieldbyname('sqty').value-query5.fieldbyname('shpqty').value;//query5.fieldbyname('bal').value;
          if not query5.fieldbyname('memo1').isnull then
          params[35].value:=query5.fieldbyname('memo1').value
          else params[35].Value:='';
          if not query5.fieldbyname('lqcdt').isnull then
          params[36].asdatetime:=query5.fieldbyname('lqcdt').value
          else params[36].asdatetime:=0;
          if not query5.fieldbyname('fqcdt').isnull then
          params[37].asdatetime:=query5.fieldbyname('fqcdt').value
          else params[37].asdatetime:=0;
          if not query5.fieldbyname('fqcdt1').isnull then
          params[38].asdatetime:=query5.fieldbyname('fqcdt1').value
          else params[38].asdatetime:=0;
          if not query5.fieldbyname('qcrst').isnull then
          params[39].value:=query5.fieldbyname('qcrst').value
          else params[39].value:='';
          if not query5.fieldbyname('cnph').isnull then
          params[40].value:=query5.fieldbyname('cnph').value
          else params[40].value:='';
          if not query5.fieldbyname('rair').isnull then
          params[41].value:=query5.fieldbyname('rair').value
          else params[41].Value:='';
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with adoquery1 do begin
      close;
      sql.text:='exec sp_updpack :x1';
      prepare;
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execsql;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.ComboBox1Change(Sender: TObject);
var
  tm0:tdatetime;
begin
  tm0:=now;
  screen.cursor:=crSQLWait;
  try
  if (combobox1.text>'') then begin
    with query6 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='execute procedure sp_pdn_outstanding(:x1,:x2,:x3)';
      params[0].asdatetime:=tm0;
      params[1].asstring:=combobox1.text;
      if pos('CARTE',frmpdn.caption)>0 then params[2].asstring:='CRTE'
      else params[2].asstring:='';
      execute;
    end;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_pdn_outstanding where tm=:x1';
      if pos('CARTE',frmpdn.caption)>0 then
      commandtext:=commandtext+' and j_no like ''CRTE%'''
      else commandtext:=commandtext+' and j_no not like ''CRTE%''';
      params[0].asdatetime:=tm0;
      open;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.ComparePDNMNF1Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='execute procedure sp_pdn_cmppdnmnf(:x1)';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  if frmcmppdnmnf=nil then frmcmppdnmnf:=tfrmcmppdnmnf.create(nil);
  with frmcmppdnmnf.query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_tmp_pdnmnf where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  frmcmppdnmnf.show;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdn.PrintInspectionBooking1Click(Sender: TObject);
begin
  if frmibprint=nil then frmibprint:=tfrmibprint.Create(nil);
  with frmibprint.Query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_pack where seq=:x1 order by seq,seq1,fqcdt,j_no,j2_job,acol';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('seq').isnull then begin
      frmibprint.fty001.Caption:=query1.fieldbyname('tplant').value;
      frmibprint.pdn001.Caption:=query1.fieldbyname('pdn').value;
      frmibprint.ppReport1.Print;
    end;
  end;
end;

procedure Tfrmpdn.FormCreate(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select max(dseq) as q1 from tbl_logging where seq=:x1';
          params[0].asinteger:=frmmain.SpinEdit1.Value;
          open;
          if not fieldbyname('q1').isnull then logseq:=fieldbyname('q1').value+1
          else logseq:=2;
        end;
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdatetime,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='insert into tbl_logging(seq,usr,frmid,strdt,ip,dseq) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asinteger:=frmmain.spinedit1.Value;
          params[1].AsString:=frmmain.combobox1.text;
          params[2].AsString:='PDN';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - PDN';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmpdn.FormDestroy(Sender: TObject);
begin
  {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and dseq=:x3';
          params[0].AsDateTime:=now;
          params[1].asinteger:=frmmain.spinedit1.Value;
          params[2].asinteger:=logseq;
          execute;
        end;
  }
end;

procedure Tfrmpdn.BitBtn16Click(Sender: TObject);
var
  r53:boolean;
begin
  with query5 do begin
    close;
    params.clear;
    commandtext:='select r52 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r52').isnull then r53:=fieldbyname('r52').value else r53:=false;
  end;
  if r53 then begin
    query1.Active:=false;
    query2.Active:=false;
    query3.Active:=false;
    query4.Active:=false;
    combobox1.text:='';
    edit1.text:='';
    combobox1.SetFocus;
  end;
end;

procedure Tfrmpdn.PDNpastbymonth1Click(Sender: TObject);
begin
  if frmpdnpast=nil then frmpdnpast:=tfrmpdnpast.create(nil);
  frmpdnpast.ComboBox1.Text:='SL';
  frmpdnpast.ComboBox2.text:='CUST BY CUST';
  frmpdnpast.SpinEdit1.Value:=yearof(date);
  frmpdnpast.SpinEdit2.Value:=monthof(date);
  frmpdnpast.SpinEdit3.Value:=yearof(date);
  frmpdnpast.SpinEdit4.Value:=monthof(date);
  frmpdnpast.Label4.Caption:='Month';
  frmpdnpast.Label7.Caption:='Month';
  frmpdnpast.SpinEdit2.MaxValue:=12;
  frmpdnpast.SpinEdit4.MaxValue:=12;
  frmpdnpast.show;
end;

end.
