unit ttlcsh1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, DBCtrls, Mask, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, siComp;

type
  Tfrmttlcsh1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label34: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label33: TLabel;
    qns001: TLabel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText6: TDBText;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Query10: TClientDataSet;
    Label21: TLabel;
    Label22: TLabel;
    Label32: TLabel;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel5: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1A2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1B2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1C2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1D2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1G2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1H2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1J_NO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1J2_JOB: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CWO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RWO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FCCS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1LSECT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QNSEQ1: TcxGridDBBandedColumn;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    week52: TClientDataSet;
    DataSource2: TDataSource;
    Edit5: TEdit;
    cxGrid1DBBandedTableView1s2: TcxGridDBBandedColumn;
    siLang1: TsiLang;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FieldChange(Sender: TField);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure week52AfterOpen(DataSet: TDataSet);
    procedure secttchange(Sender: TField);
    procedure week52AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmttlcsh1: Tfrmttlcsh1;

implementation

uses mainformu, achievingformu, qn_calcsectsformu;

{$R *.dfm}

procedure Tfrmttlcsh1.BitBtn1Click(Sender: TObject);
begin
    if query1.state=dsedit then query1.post;
    if week52.state=dsedit then week52.post;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select def_tg,arr_ky,ttl from week52 where line=:x1 and date1=:x2';
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('def_tg').isnull then edit2.text:=formatfloat('0.0',fieldbyname('def_tg').value)
      else edit2.text:='0.0';
      if not fieldbyname('arr_ky').isnull then edit3.text:=formatfloat('0.0',fieldbyname('arr_ky').value)
      else edit3.text:='0.0';
      if not fieldbyname('ttl').isnull then edit5.text:=formatfloat('0.0',fieldbyname('ttl').value) else edit5.text:='0.0';
      if fieldbyname('def_tg').value>0 then edit4.text:=formatfloat('0.00%',100.00-fieldbyname('ttl').value*100.00/fieldbyname('def_tg').value)
      else edit4.text:='0.00%';
    end;
end;

procedure Tfrmttlcsh1.FieldChange(Sender: TField);
var
  a,b,c,d,e,f,g,h:double;
  z1,a1,r1,e1,ckh3,ccl:double;
  str1:string;
begin
  if not query1.fieldbyname('a2').isnull then a:=query1.fieldbyname('a2').value else a:=0;
  if not query1.fieldbyname('b2').isnull then b:=query1.fieldbyname('b2').value else b:=0;
  if not query1.fieldbyname('c2').isnull then c:=query1.fieldbyname('c2').value else c:=0;
  if not query1.fieldbyname('d2').isnull then d:=query1.fieldbyname('d2').value else d:=0;
  if not query1.fieldbyname('g2').isnull then g:=query1.fieldbyname('g2').value else g:=0;
  if not query1.fieldbyname('h2').isnull then h:=query1.fieldbyname('h2').value else h:=0;
  query1.fieldbyname('lsect').value:=a+b+c+d+g+h;
end;

procedure Tfrmttlcsh1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmttlcsh1:=nil;
end;

procedure Tfrmttlcsh1.FormCreate(Sender: TObject);
begin
  //siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmttlcsh1.FormShow(Sender: TObject);
begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select def_tg,arr_ky,ttl from week52 where line=:x1 and date1=:x2';
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('def_tg').isnull then edit2.text:=formatfloat('0.0',fieldbyname('def_tg').value)
      else edit2.text:='0.0';
      if not fieldbyname('arr_ky').isnull then edit3.text:=formatfloat('0.0',fieldbyname('arr_ky').value)
      else edit3.text:='0.0';
      if not fieldbyname('ttl').isnull then edit5.text:=formatfloat('0.0',fieldbyname('ttl').value) else edit5.text:='0.0';
      if fieldbyname('def_tg').value>0 then edit4.text:=formatfloat('0.00%',100.00-fieldbyname('ttl').value*100.00/fieldbyname('def_tg').value)
      else edit4.text:='0.00%';
    end;
end;

procedure Tfrmttlcsh1.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('a2').onchange:=FieldChange;
  query1.fieldbyname('b2').onchange:=FieldChange;
  query1.fieldbyname('c2').onchange:=FieldChange;
  query1.fieldbyname('d2').onchange:=FieldChange;
  query1.fieldbyname('g2').onchange:=FieldChange;
  query1.fieldbyname('h2').onchange:=FieldChange;
  (query1.fieldbyname('a2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('b2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('c2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('d2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('g2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('h2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('lsect') as tfloatfield).displayformat:='0.0';
  //(query1.fieldbyname('ttl') as tfloatfield).displayformat:='0.0';
end;

procedure Tfrmttlcsh1.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  screen.Cursor:=crSQLWait;
  try
      str1:='update qn_calendar set ';
      if not query1.fieldbyname('a2').isnull then
      str1:=str1+'a2='+query1.fieldbyname('a2').asstring+','
      else str1:=str1+'a2=0,';
      if not query1.fieldbyname('b2').isnull then
      str1:=str1+'b2='+query1.fieldbyname('b2').asstring+','
      else str1:=str1+'b2=0,';
      if not query1.fieldbyname('c2').isnull then
      str1:=str1+'c2='+query1.fieldbyname('c2').asstring+','
      else str1:=str1+'c2=0,';
      if not query1.fieldbyname('d2').isnull then
      str1:=str1+'d2='+query1.fieldbyname('d2').asstring+','
      else str1:=str1+'d2=0,';
      if not query1.fieldbyname('e2').isnull then
      str1:=str1+'e2='+query1.fieldbyname('e2').asstring+','
      else str1:=str1+'e2=0,';
      if not query1.fieldbyname('f2').isnull then
      str1:=str1+'f2='+query1.fieldbyname('f2').asstring+','
      else str1:=str1+'f2=0,';
      if not query1.fieldbyname('g2').isnull then
      str1:=str1+'g2='+query1.fieldbyname('g2').asstring+','
      else str1:=str1+'g2=0,';
      if not query1.fieldbyname('h2').isnull then
      str1:=str1+'h2='+query1.fieldbyname('h2').asstring+','
      else str1:=str1+'h2=0,';
      if not query1.fieldbyname('cur_kh3').isnull then
      str1:=str1+'cur_kh3='+query1.fieldbyname('cur_kh3').asstring+','
      else str1:=str1+'cur_kh3=0,';
      if not query1.fieldbyname('cur_cl').isnull then
      str1:=str1+'cur_cl='+query1.fieldbyname('cur_cl').asstring+','
      else str1:=str1+'cur_cl=0,';
      if not query1.fieldbyname('cur_td').isnull then
      str1:=str1+'cur_td='+query1.fieldbyname('cur_td').asstring+','
      else str1:=str1+'cur_td=0,';
      if not query1.fieldbyname('flag').isnull then
      str1:=str1+'flag='''+query1.fieldbyname('flag').value+''','
      else str1:=str1+'flag='''',';
      if not query1.fieldbyname('lsect').isnull then
      str1:=str1+'lsect='+query1.fieldbyname('lsect').asstring+','
      else str1:=str1+'lsect=0,';
      if not query1.fieldbyname('zsect').isnull then
      str1:=str1+'zsect='+query1.fieldbyname('zsect').asstring+','
      else str1:=str1+'zsect=0,';
      if not query1.fieldbyname('asect').isnull then
      str1:=str1+'asect='+query1.fieldbyname('asect').asstring+','
      else str1:=str1+'asect=0,';
      if not query1.fieldbyname('rsect').isnull then
      str1:=str1+'rsect='+query1.fieldbyname('rsect').asstring+','
      else str1:=str1+'rsect=0,';
      if not query1.fieldbyname('esect').isnull then
      str1:=str1+'esect='+query1.fieldbyname('esect').asstring+','
      else str1:=str1+'esect=0,';
      if not query1.fieldbyname('emarks').isnull then
      str1:=str1+'emarks='''+query1.fieldbyname('emarks').value+''','
      else str1:=str1+'emarks='''',';
      str1:=str1+'ttl='+query1.fieldbyname('ttl').asstring+' ';
      str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and dt1='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt1').value)+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    //update week52
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='execute procedure sp_qnupdateweek52_new(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asdate:=query1.fieldbyname('dt1').value;
      execute;
    end;
  finally
  screen.Cursor:=crdefault;
  end;
end;

procedure Tfrmttlcsh1.secttchange(Sender: TField);
var
  s1,s2,s3,s4,s5,s6,s7,s8,a2,b2,c2,d2,e2,f2,g2,h2:double;
  ccl,ckh3:double;
  str2:string;
begin
  if not week52.fieldbyname('sectt').isnull then
  s1:=week52.fieldbyname('sectt').value else s1:=0;
  if not week52.fieldbyname('sectt1').isnull then
  s2:=week52.fieldbyname('sectt1').value else s2:=0;
  if not week52.fieldbyname('sectc').isnull then
  s3:=week52.fieldbyname('sectc').value else s3:=0;
  week52.fieldbyname('secto').value:=s1+s2+s3;
  if not week52.fieldbyname('osect').isnull then
  s5:=week52.fieldbyname('osect').value else s5:=0;
  if not week52.fieldbyname('zsect').isnull then
  s4:=week52.fieldbyname('zsect').value else s4:=0;
  if not week52.fieldbyname('esect').isnull then
  s6:=week52.fieldbyname('esect').value else s6:=0;
  if not week52.fieldbyname('asect').isnull then
  s7:=week52.fieldbyname('asect').value else s7:=0;
  if not week52.fieldbyname('rsect').isnull then
  s8:=week52.fieldbyname('rsect').value else s8:=0;
  if not week52.fieldbyname('e2').isnull then e2:=week52.fieldbyname('e2').value else e2:=0;
  if not week52.fieldbyname('f2').isnull then f2:=week52.fieldbyname('f2').value else f2:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select a2,b2,c2,d2,g2,h2 from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asdate:=query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('a2').isnull then a2:=fieldbyname('a2').value else a2:=0;
    if not fieldbyname('b2').isnull then b2:=fieldbyname('b2').value else b2:=0;
    if not fieldbyname('c2').isnull then c2:=fieldbyname('c2').value else c2:=0;
    if not fieldbyname('d2').isnull then d2:=fieldbyname('d2').value else d2:=0;
    if not fieldbyname('g2').isnull then g2:=fieldbyname('g2').value else g2:=0;
    if not fieldbyname('h2').isnull then h2:=fieldbyname('h2').value else h2:=0;
  end;
  if not week52.fieldbyname('cur_cl').isnull then
  ccl:=week52.fieldbyname('cur_cl').value else ccl:=0;
  if not week52.fieldbyname('cur_kh3').isnull then
  ckh3:=week52.fieldbyname('cur_kh3').value else ckh3:=0;
  str2:='';
  if e2>0 then begin
    if str2>'' then str2:=str2+',3.1a('+formatfloat('0.0',e2)+')' else str2:='3.1a('+formatfloat('0.0',e2)+')';
  end;
  if f2>0 then begin
    if str2>'' then str2:=str2+',3.1b('+formatfloat('0.0',f2)+')' else str2:='3.1b('+formatfloat('0.0',f2)+')';
  end;
  if ckh3>0 then begin
    if str2>'' then str2:=str2+',3.1c('+formatfloat('0.0',ckh3)+')' else str2:='3.1c('+formatfloat('0.0',ckh3)+')';
  end;
  if s4>0 then begin
    if str2>'' then str2:=str2+',3.2a('+formatfloat('0.0',s4)+')' else str2:='3.2a('+formatfloat('0.0',s4)+')';
  end;
  if ccl>0 then begin
    if str2>'' then str2:=str2+',3.3a('+formatfloat('0.0',ccl)+')' else str2:='3.3a('+formatfloat('0.0',ccl)+')';
  end;
  week52.fieldbyname('cur_td').value:=e2+f2+s4+ccl+ckh3;
  week52.fieldbyname('ttl').value:=s1+s2+s3+s5-(a2+b2+c2+d2+e2+f2+g2+h2)-ccl-ckh3-s4;
  week52.fieldbyname('cur_khe').value:=str2;
  if week52.fieldbyname('ttl').value>0 then week52.fieldbyname('dcu').value:=week52.fieldbyname('lsect').value*100.0/week52.fieldbyname('ttl').value
  else week52.fieldbyname('dcu').value:=0;
end;

procedure Tfrmttlcsh1.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='execute procedure sp_swpm_lineshjs_qnf(:x1,:x2)';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    execute;
  end;
  if frmqn_calcsects=nil then frmqn_calcsects:=tfrmqn_calcsects.create(nil);
  with frmqn_calcsects.query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from line_shjs_tmpjs where pline=:x1 and dt1=:x2';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    open;
  end;
  frmqn_calcsects.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmttlcsh1.week52AfterOpen(DataSet: TDataSet);
begin
  week52.FieldByName('e2').OnChange:=secttchange;
  week52.FieldByName('f2').OnChange:=secttchange;
  week52.FieldByName('zsect').OnChange:=secttchange;
  week52.FieldByName('cur_cl').OnChange:=secttchange;
  week52.FieldByName('cur_kh3').OnChange:=secttchange;
  (week52.fieldbyname('e2') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('f2') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('zsect') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('cur_cl') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('cur_kh3') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('cur_td') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('ttl') as tfloatfield).displayformat:='0.0';
end;

procedure Tfrmttlcsh1.week52AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
      str1:='update week52 set ';
      if not week52.fieldbyname('ttl').isnull then
      str1:=str1+'ttl='+week52.fieldbyname('ttl').asstring+','
      else str1:=str1+'ttl=0,';
      if not week52.fieldbyname('e2').isnull then
      str1:=str1+'e2='+week52.fieldbyname('e2').asstring+','
      else str1:=str1+'e2=0,';
      if not week52.fieldbyname('f2').isnull then
      str1:=str1+'f2='+week52.fieldbyname('f2').asstring+','
      else str1:=str1+'f2=0,';
      if not week52.fieldbyname('zsect').isnull then
      str1:=str1+'zsect='+week52.fieldbyname('zsect').asstring+','
      else str1:=str1+'zsect=0,';
      if not week52.fieldbyname('dcu').isnull then
      str1:=str1+'dcu='+week52.fieldbyname('dcu').asstring+','
      else str1:=str1+'dcu=0,';

      if not week52.fieldbyname('cur_khe').isnull then
      str1:=str1+'cur_khe='''+week52.fieldbyname('cur_khe').value+''','
      else str1:=str1+'cur_khe='''',';
      if not week52.fieldbyname('cur_td').isnull then
      str1:=str1+'cur_td='+week52.fieldbyname('cur_td').asstring+','
      else str1:=str1+'cur_td=0,';
      if not week52.fieldbyname('cur_cl').isnull then
      str1:=str1+'cur_cl='+week52.fieldbyname('cur_cl').asstring+','
      else str1:=str1+'cur_cl=0,';
      if not week52.fieldbyname('cur_kh3').isnull then
      str1:=str1+'cur_kh3='+week52.fieldbyname('cur_kh3').asstring+' '
      else str1:=str1+'cur_kh3=0 ';

      str1:=str1+'where date1='''+formatdatetime('yyyy-MM-dd',week52.fieldbyname('date1').value)+''' ';
      str1:=str1+'and line='''+week52.fieldbyname('line').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

end.
