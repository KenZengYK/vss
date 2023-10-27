unit newcap_notepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Mask, rxToolEdit, DB,
  DBClient, Buttons, DBCtrls, dbcgrids, DBCtrlsEh, ShellApi, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr,
  ppVar, ppPrnabl, ppCtrls, ppBands, ppCache, ppStrtch, ppMemo, ppParameter;

type
  Tfrmnewcap_notepad = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    GroupBox1: TGroupBox;
    xh1: TRadioButton;
    xh2: TRadioButton;
    ComboBox1: TComboBox;
    chk1: TCheckBox;
    GroupBox2: TGroupBox;
    chk4: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    chk3: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBCtrlGrid1: TDBCtrlGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label9: TLabel;
    DateEdit2: TDateEdit;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    Edit7: TEdit;
    Label4: TLabel;
    DBDateEdit1: TDBDateTimeEditEh;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    Edit8: TEdit;
    GroupBox4: TGroupBox;
    chk5: TCheckBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    GroupBox5: TGroupBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    st01: TRadioGroup;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    xh3: TRadioButton;
    BitBtn10: TBitBtn;
    chk2: TCheckBox;
    ComboBox2: TComboBox;
    xh4: TRadioButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppShape1: TppShape;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
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
    Label16: TLabel;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    ppDBText16: TppDBText;
    ppLabel14: TppLabel;
    ppLine13: TppLine;
    ppDBText17: TppDBText;
    ppLabel15: TppLabel;
    ppLine14: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure chk1Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBComboBox2Enter(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure chk5Click(Sender: TObject);
    procedure Query1BeforePost(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure xh3Click(Sender: TObject);
    procedure xh4Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_notepad: Tfrmnewcap_notepad;

implementation

uses mainformu, newcapformu;

{$R *.dfm}

procedure Tfrmnewcap_notepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_notepad:=nil;
end;

procedure Tfrmnewcap_notepad.FormShow(Sender: TObject);
begin
  //dateedit1.date:=date;
  //dateedit2.date:=date;
  bitbtn3.Visible:=false;
  bitbtn4.Visible:=false;
  bitbtn7.Visible:=false;
  chk1.Checked:=true;
  xh1.Checked:=true;
  xh2.Checked:=false;
  combobox1.Enabled:=false;
  chk2.Checked:=false;
  chk3.Checked:=false;
  chk4.Checked:=false;
  chk1click(self);
  chk2click(self);
  chk3click(self);
  chk4click(self);
  st01.ItemIndex:=0;
  panel1.Enabled:=false;
end;

procedure Tfrmnewcap_notepad.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q from tbl_cap_notepad';
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1 else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('usr').value:=frmmain.ComboBox1.text;
  query1.fieldbyname('dt').value:=date;
  query1.fieldbyname('team').value:='Broadcast';
  query1.fieldbyname('customer').value:='';
  query1.fieldbyname('range').value:='';
  query1.fieldbyname('style1').value:='';
  query1.fieldbyname('style2').value:='';
  query1.fieldbyname('style3').value:='';
  query1.fieldbyname('style4').value:='';
  query1.fieldbyname('style5').value:='';
  query1.fieldbyname('stitle').value:='';
  query1.fieldbyname('event1').value:='';
  query1.fieldbyname('event2').value:='';
  query1.fieldbyname('event3').value:='';
  query1.fieldbyname('amd').value:=0;
  {
  if xh1.Enabled then begin
    if xh1.Checked then query1.fieldbyname('team').value:='Broadcast'
    else if xh2.Checked then query1.fieldbyname('team').value:='Team: '+combobox1.text;
  end else query1.fieldbyname('team').value:='Broadcast';
  if chk2.checked then query1.fieldbyname('customer').value:=combobox2.text
  else query1.fieldbyname('customer').value:='N.A.';
  if chk3.Checked then query1.fieldbyname('range').value:=edit6.text
  else query1.fieldbyname('range').value:='N.A.';
  if chk4.checked then begin
    query1.fieldbyname('style1').value:=edit1.text;
    query1.fieldbyname('style2').value:=edit2.text;
    query1.fieldbyname('style3').value:=edit3.text;
    query1.fieldbyname('style4').value:=edit4.text;
    query1.fieldbyname('style5').value:=edit5.text;
  end else begin
    query1.fieldbyname('style1').value:='N.A.';
    query1.fieldbyname('style2').value:='';
    query1.fieldbyname('style3').value:='';
    query1.fieldbyname('style4').value:='';
    query1.fieldbyname('style5').value:='';
  end;
  if edit7.text>'' then query1.fieldbyname('stitle').value:=edit7.text
  else query1.fieldbyname('stitle').value:='';
  }
end;

procedure Tfrmnewcap_notepad.chk1Click(Sender: TObject);
begin
  if chk1.Checked then begin
    xh1.Enabled:=true;
    xh2.Enabled:=true;
    xh3.Enabled:=true;
    xh4.Enabled:=true;
    xh1.Checked:=true;
  end else begin
    xh1.Checked:=false;
    xh2.Checked:=false;
    xh3.Checked:=false;
    xh4.Checked:=false;
    xh1.Enabled:=false;
    xh2.Enabled:=false;
    xh3.Enabled:=false;
    xh4.Enabled:=false;
    combobox1.text:='';
    combobox1.Enabled:=false;
  end;
end;

procedure Tfrmnewcap_notepad.chk4Click(Sender: TObject);
begin
  if chk4.Checked then begin
    edit1.Enabled:=true;
    edit2.Enabled:=true;
    edit3.Enabled:=true;
    edit4.Enabled:=true;
    edit5.Enabled:=true;
  end else begin
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    edit5.Enabled:=false;
    edit1.text:='';
    edit2.text:='';
    edit3.text:='';
    edit4.text:='';
    edit5.text:='';
  end;
end;

procedure Tfrmnewcap_notepad.chk2Click(Sender: TObject);
begin
  if chk2.Checked then combobox2.enabled:=true
  else begin
    combobox2.enabled:=false;
    combobox2.text:='';
  end;
end;

procedure Tfrmnewcap_notepad.chk3Click(Sender: TObject);
begin
  if chk3.Checked then edit6.enabled:=true
  else begin
    edit6.enabled:=false;
    edit6.Text:='';
  end;
end;

procedure Tfrmnewcap_notepad.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
  rmks:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_cap_notepad where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('usr').isnull then begin
      {
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x0',ptinput);
        params.createparam(ftstring,'x01',ptinput);
        params.createparam(ftinteger,'x02',ptinput);
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='update tbl_cap_notepad set notepad=:x0,stitle=:x01,amd=:x02 where seq=:x1';

        if not query1.fieldbyname('notepad').isnull then
        params[0].asstring:=query1.fieldbyname('notepad').value
        else params[0].asstring:='';
        if not query1.fieldbyname('stitle').isnull then
        params[1].asstring:=query1.fieldbyname('stitle').value
        else params[1].asstring:='';
        params[2].asinteger:=query1.fieldbyname('amd').value;
        params[3].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      }
        str1:='update tbl_cap_notepad set ';
        if not query1.fieldbyname('notepad').isnull then begin
          rmks:=query1.fieldbyname('notepad').value;
          if pos('''',rmks)>0 then
          rmks:=copy(rmks,1,pos('''',rmks)-1)+'"'+copy(rmks,pos('''',rmks)+1,3000);
          str1:=str1+'notepad='''+rmks+''','//query1.fieldbyname('notepad').value+''','
        end else str1:=str1+'notepad='''',';
        if not query1.fieldbyname('stitle').isnull then
        str1:=str1+'stitle='''+query1.fieldbyname('stitle').value+''','
        else str1:=str1+'stitle='''',';
        if not query1.fieldbyname('team').isnull then
        str1:=str1+'team='''+query1.fieldbyname('team').value+''','
        else str1:=str1+'team='''',';
        if not query1.fieldbyname('customer').isnull then
        str1:=str1+'customer='''+query1.fieldbyname('customer').value+''','
        else str1:=str1+'customer='''',';
        if not query1.fieldbyname('style1').isnull then
        str1:=str1+'style1='''+query1.fieldbyname('style1').value+''','
        else str1:=str1+'style1='''',';
        if not query1.fieldbyname('style2').isnull then
        str1:=str1+'style2='''+query1.fieldbyname('style2').value+''','
        else str1:=str1+'style2='''',';
        if not query1.fieldbyname('style3').isnull then
        str1:=str1+'style3='''+query1.fieldbyname('style3').value+''','
        else str1:=str1+'style3='''',';
        if not query1.fieldbyname('style4').isnull then
        str1:=str1+'style4='''+query1.fieldbyname('style4').value+''','
        else str1:=str1+'style4='''',';
        if not query1.fieldbyname('style5').isnull then
        str1:=str1+'style5='''+query1.fieldbyname('style5').value+''','
        else str1:=str1+'style5='''',';
        if not query1.fieldbyname('range').isnull then
        str1:=str1+'range='''+query1.fieldbyname('range').value+''','
        else str1:=str1+'range='''',';
        if not query1.fieldbyname('event1').isnull then
        str1:=str1+'event1='''+query1.fieldbyname('event1').value+''','
        else str1:=str1+'event1='''',';
        if not query1.fieldbyname('event2').isnull then
        str1:=str1+'event2='''+query1.fieldbyname('event2').value+''','
        else str1:=str1+'event2='''',';
        if not query1.fieldbyname('event3').isnull then
        str1:=str1+'event3='''+query1.fieldbyname('event3').value+''','
        else str1:=str1+'event3='''',';
        if not query1.fieldbyname('usr').isnull then
        str1:=str1+'usr='''+query1.fieldbyname('usr').value+''','
        else str1:=str1+'usr='''',';
        if not query1.fieldbyname('to1').isnull then
        str1:=str1+'to1='''+query1.fieldbyname('to1').value+''','
        else str1:=str1+'to1='''',';
        if not query1.fieldbyname('cc1').isnull then
        str1:=str1+'cc1='''+query1.fieldbyname('cc1').value+''','
        else str1:=str1+'cc1='''',';
        str1:=str1+'amd='+query1.fieldbyname('amd').asstring+' ';
        str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
        //showmessage(str1);
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
    end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x0',ptinput);
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        params.createparam(ftstring,'x8',ptinput);
        params.createparam(ftstring,'x9',ptinput);
        params.createparam(ftstring,'x10',ptinput);
        params.createparam(ftinteger,'x11',ptinput);
        params.createparam(ftstring,'x12',ptinput);
        params.createparam(ftstring,'x13',ptinput);
        params.createparam(ftstring,'x14',ptinput);
        params.createparam(ftstring,'x15',ptinput);
        params.createparam(ftstring,'x16',ptinput);
        params.createparam(ftstring,'x17',ptinput);
        commandtext:='insert into tbl_cap_notepad(notepad,usr,dt,team,customer,style1,style2,style3,style4,style5,range,seq,stitle,event1,event2,event3,to1,cc1) '
                    +'values(:x0,:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17)';
        if not query1.fieldbyname('notepad').isnull then
        params[0].asstring:=query1.fieldbyname('notepad').value
        else params[0].asstring:='';
        params[1].asstring:=query1.fieldbyname('usr').value;
        params[2].asdate:=query1.fieldbyname('dt').value;
        params[3].asstring:=query1.fieldbyname('team').value;
        params[4].asstring:=query1.fieldbyname('customer').value;
        params[5].asstring:=query1.fieldbyname('style1').value;
        params[6].asstring:=query1.fieldbyname('style2').value;
        params[7].asstring:=query1.fieldbyname('style3').value;
        params[8].asstring:=query1.fieldbyname('style4').value;
        params[9].asstring:=query1.fieldbyname('style5').value;
        params[10].asstring:=query1.fieldbyname('range').value;
        params[11].asinteger:=query1.fieldbyname('seq').value;
        if not query1.fieldbyname('stitle').isnull then
        params[12].asstring:=query1.fieldbyname('stitle').value
        else params[12].asstring:='';
        if not query1.fieldbyname('event1').isnull then
        params[13].asstring:=query1.fieldbyname('event1').value
        else params[13].asstring:='';
        if not query1.fieldbyname('event2').isnull then
        params[14].asstring:=query1.fieldbyname('event2').value
        else params[14].asstring:='';
        if not query1.fieldbyname('event3').isnull then
        params[15].asstring:=query1.fieldbyname('event3').value
        else params[15].asstring:='';
        if not query1.fieldbyname('to1').isnull then
        params[16].asstring:=query1.fieldbyname('to1').value
        else params[16].asstring:='';
        if not query1.fieldbyname('cc1').isnull then
        params[17].asstring:=query1.fieldbyname('cc1').value
        else params[17].asstring:='';
        execute;
      end;
    end;
  end;
end;

procedure Tfrmnewcap_notepad.BitBtn1Click(Sender: TObject);
begin
  label15.Caption:='REVIEW';
  panel1.Visible:=true;
  panel1.Enabled:=true;
  bitbtn3.Visible:=false;
  bitbtn4.Visible:=true;
  bitbtn6.Visible:=false;
  bitbtn7.Visible:=true;
  dbedit1.readonly:=true;
  dbdateedit1.enabled:=false;
  dbcombobox1.enabled:=false;
  dbcombobox2.Enabled:=false;
  //dbedit2.enabled:=false;
  dbedit3.Enabled:=false;
  dbedit4.enabled:=false;
  dbedit5.enabled:=false;
  dbedit6.enabled:=false;
  dbedit7.Enabled:=false;
  dbedit8.Enabled:=false;
  dbedit10.Enabled:=false;
  dbedit11.enabled:=false;
  dbmemo1.Readonly:=true;
  dbcombobox3.Enabled:=false;
  dbcombobox4.Enabled:=false;
  dbcombobox5.Enabled:=false;
  //bitbtn3click(self);
  query1.active:=false;
  query1.close;
  dateedit1.setfocus;
end;

procedure Tfrmnewcap_notepad.BitBtn2Click(Sender: TObject);
begin
  label15.Caption:='ADD';
  panel1.Visible:=false;
  bitbtn3.Visible:=true;
  bitbtn4.Visible:=false;
  bitbtn6.Visible:=false;
  bitbtn7.Visible:=true;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select * from tbl_cap_notepad where dt=:x1';
    params[0].asdate:=encodedate(3000,1,1);
    open;
  end;
  query1.append;
  dbctrlgrid1.SetFocus;
  dbedit1.readonly:=false;
  dbdateedit1.enabled:=true;
  dbcombobox1.enabled:=true;
  dbcombobox2.Enabled:=true;
  //dbedit2.enabled:=true;
  dbedit3.Enabled:=true;
  dbedit4.enabled:=true;
  dbedit5.enabled:=true;
  dbedit6.enabled:=true;
  dbedit7.Enabled:=true;
  dbedit8.Enabled:=true;
  dbmemo1.Readonly:=false;
  dbcombobox3.Enabled:=true;
  dbcombobox4.Enabled:=true;
  dbcombobox5.Enabled:=true;
  dbedit1.SetFocus;
end;

procedure Tfrmnewcap_notepad.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmnewcap_notepad.BitBtn5Click(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2011,1,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from tbl_cap_notepad where dt>=:x1 and dt<=:x2';
    if chk1.Checked then begin
      if xh1.checked then begin
        if xh1.Checked then commandtext:=commandtext+' and team=''Broadcast''';
      end;
      if xh2.checked then begin
        if combobox1.Text>'' then commandtext:=commandtext+' and team='''+combobox1.text+'''';
      end;
      if xh3.checked then begin
        if xh3.Checked then commandtext:=commandtext+' and team=''Help''';
      end;
      if xh4.checked then begin
        if xh4.Checked then commandtext:=commandtext+' and team=''Other''';
      end;
    end;
    if chk2.Checked then begin
      if combobox2.text>'' then commandtext:=commandtext+' and customer='''+combobox2.text+'''';
    end;
    if chk3.Checked then begin
      if edit6.text>'' then commandtext:=commandtext+' and range='''+edit6.text+'''';
    end;
    if chk4.Checked then begin
      if edit1.text>'' then commandtext:=commandtext+' and ((style1='''+edit1.text+''') or (style2='''+edit1.text+''') or (style3='''+edit1.text+''') or (style4='''+edit1.text+''') or (style5='''+edit1.text+'''))';
      if edit2.text>'' then commandtext:=commandtext+' and ((style1='''+edit2.text+''') or (style2='''+edit2.text+''') or (style3='''+edit2.text+''') or (style4='''+edit2.text+''') or (style5='''+edit2.text+'''))';
      if edit3.text>'' then commandtext:=commandtext+' and ((style1='''+edit3.text+''') or (style2='''+edit3.text+''') or (style3='''+edit3.text+''') or (style4='''+edit3.text+''') or (style5='''+edit3.text+'''))';
      if edit4.text>'' then commandtext:=commandtext+' and ((style1='''+edit4.text+''') or (style2='''+edit4.text+''') or (style3='''+edit4.text+''') or (style4='''+edit4.text+''') or (style5='''+edit4.text+'''))';
      if edit5.text>'' then commandtext:=commandtext+' and ((style1='''+edit5.text+''') or (style2='''+edit5.text+''') or (style3='''+edit5.text+''') or (style4='''+edit5.text+''') or (style5='''+edit5.text+'''))';
    end;
    if chk5.Checked then begin
      if combobox3.text>'' then commandtext:=commandtext+' and ((event1='''+combobox3.text+''') or (event2='''+combobox3.text+''') or (event3='''+combobox3.text+'''))';
      if combobox4.text>'' then commandtext:=commandtext+' and ((event1='''+combobox4.text+''') or (event2='''+combobox4.text+''') or (event3='''+combobox4.text+'''))';
      if combobox5.text>'' then commandtext:=commandtext+' and ((event1='''+combobox5.text+''') or (event2='''+combobox5.text+''') or (event3='''+combobox5.text+'''))';
    end;
    if edit7.text>'' then commandtext:=commandtext+' and stitle like ''%'+edit7.text+'%''';
    if edit8.text>'' then commandtext:=commandtext+' and usr like '''+edit8.text+'%''';
    if st01.ItemIndex=0 then
    commandtext:=commandtext+' order by dt desc,stitle,seq'
    else if st01.ItemIndex=1 then begin
      commandtext:=commandtext+' and stitle>'''' order by stitle,dt desc,seq desc'
    end else if st01.ItemIndex=2 then begin
      commandtext:=commandtext+' and usr>'''' order by usr,dt desc,seq desc';
    end else if st01.ItemIndex=3 then begin
      commandtext:=commandtext+' and event1>'''' order by event1,dt desc,seq desc';
    end;
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
  end;
end;

procedure Tfrmnewcap_notepad.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp as cust from cust_exfty where act=1';
    if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_notepad.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    combobox1.Text:='';
    combobox1.enabled:=false;
  end;
end;

procedure Tfrmnewcap_notepad.xh2Click(Sender: TObject);
begin
  if xh2.Checked then combobox1.Enabled:=true;
end;

procedure Tfrmnewcap_notepad.BitBtn4Click(Sender: TObject);
begin
  if not query1.fieldbyname('dt').isnull then begin
    if application.MessageBox('Delete this notepad?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from tbl_cap_notepad where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      query1.delete;
    end;
  end;
end;

procedure Tfrmnewcap_notepad.DBComboBox2Enter(Sender: TObject);
begin
  dbcombobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp as cust from cust_exfty where act=1';
    //if dbcombobox1.text>'' then commandtext:=commandtext+' and grp='''+dbcombobox1.text+'''';
    open;
    first;
    while not eof do begin
      dbcombobox2.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_notepad.BitBtn7Click(Sender: TObject);
begin
  if bitbtn3.Visible=true then begin
    if label15.Caption='EDIT' then begin
      bitbtn1click(self);
      bitbtn5click(self);
    end else bitbtn1click(self);
  end else begin
    query1.Active:=false;
    bitbtn3.Visible:=false;
    bitbtn4.Visible:=false;
    bitbtn6.Visible:=true;
    bitbtn7.Visible:=false;
    chk1.Checked:=true;
    xh1.Checked:=true;
    xh2.Checked:=false;
    combobox1.Enabled:=false;
    chk2.Checked:=false;
    chk3.Checked:=false;
    chk4.Checked:=false;
    chk1click(self);
    chk2click(self);
    chk3click(self);
    chk4click(self);
    panel1.Enabled:=false;
  end;
end;

procedure Tfrmnewcap_notepad.chk5Click(Sender: TObject);
begin
  if chk5.Checked then begin
    combobox3.Enabled:=true;
    combobox4.Enabled:=true;
    combobox5.Enabled:=true;
  end else begin
    combobox3.Enabled:=false;
    combobox4.Enabled:=false;
    combobox5.Enabled:=false;
    combobox3.text:='';
    combobox4.text:='';
    combobox5.text:='';
  end;
end;

procedure Tfrmnewcap_notepad.Query1BeforePost(DataSet: TDataSet);
begin
  if query1.state=dsedit then
  query1.fieldbyname('amd').value:=query1.fieldbyname('amd').value+1;
end;

procedure Tfrmnewcap_notepad.BitBtn8Click(Sender: TObject);
var
  seq:integer;
begin
  label15.Caption:='EDIT';
  if query1.active then begin
    seq:=query1.fieldbyname('seq').value;
    //panel1.Visible:=false;
    bitbtn3.Visible:=true;
    bitbtn4.Visible:=false;
    bitbtn6.Visible:=false;
    bitbtn7.Visible:=true;
    {
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_cap_notepad where seq=:x1';
      params[0].asinteger:=seq;
      open;
    end;
    }
    dbctrlgrid1.SetFocus;
    dbedit1.readonly:=false;
    dbdateedit1.enabled:=true;
    dbcombobox1.enabled:=true;
    dbcombobox2.Enabled:=true;
    dbedit3.Enabled:=true;
    dbedit4.enabled:=true;
    dbedit5.enabled:=true;
    dbedit6.enabled:=true;
    dbedit7.Enabled:=true;
    dbedit8.Enabled:=true;
    dbedit10.Enabled:=true;
    dbedit11.enabled:=true;
    dbmemo1.Readonly:=false;
    dbcombobox3.Enabled:=true;
    dbcombobox4.Enabled:=true;
    dbcombobox5.Enabled:=true;
    dbedit1.SetFocus;
  end;
end;

procedure Tfrmnewcap_notepad.BitBtn9Click(Sender: TObject);
var
  str1:string;
  str2:widestring;
begin
  if query1.Active then begin
    str1:=extractfiledir(application.exename);
    str2:='"'+query1.fieldbyname('stitle').value+'" "Sender: '+query1.fieldbyname('usr').value+'   Date: '+formatdatetime('yyyy/MM/dd',query1.fieldbyname('dt').value)+'  Amendment#: '+query1.fieldbyname('amd').asstring
         +'" "'+'Classification: '+query1.fieldbyname('team').value+'  Customer: '+query1.fieldbyname('customer').value
         +'" "'+'Related Style#: '+query1.fieldbyname('style1').value+' '+query1.fieldbyname('style2').value
         +' '+query1.fieldbyname('style3').value+' '+query1.fieldbyname('style4').value+' '+query1.fieldbyname('style5').value+'  Range: '+query1.fieldbyname('range').value
         +'" "'+'Happening event on: '+query1.fieldbyname('event1').value+' '+query1.fieldbyname('event2').value+' '+query1.fieldbyname('event3').value
         +'" "'+query1.fieldbyname('notepad').value+'"';
    //str2:='"'+tplant+':'+query1.fieldbyname('pdn').value+'" "'+frmvoyage.query1.fieldbyname('voyn').value+'" "'+query1.fieldbyname('rcode').value+'" "'+formatfloat('0.00%',query1.fieldbyname('per_factory').value)+'" "'+formatfloat('0.00%',query1.fieldbyname('per_headoffice').value)+'" "'+formatfloat('0.00%',query1.fieldbyname('per_supplier').value)+'" "'+formatfloat('0.00%',query1.fieldbyname('per_buyer').value)
    //+'" "'+formatfloat('0.00',query1.fieldbyname('estttlfrtcost').value)+'" "'+query2.fieldbyname('toaddress').value+'" "'+query2.fieldbyname('ccaddress').value+'"';
    //showmessage(str2);
    shellexecute(0,'open',pchar(str1+'\dotnet\email for notepad.exe'),pchar(str2),nil,sw_show);
  end;
end;

procedure Tfrmnewcap_notepad.xh3Click(Sender: TObject);
begin
  if xh3.Checked then begin
    combobox1.Text:='';
    combobox1.enabled:=false;
  end;
end;

procedure Tfrmnewcap_notepad.xh4Click(Sender: TObject);
begin
  if xh4.Checked then begin
    combobox1.Text:='';
    combobox1.enabled:=false;
  end;
end;

procedure Tfrmnewcap_notepad.BitBtn10Click(Sender: TObject);
begin
  if not query1.fieldbyname('dt').isnull then ppReport1.Print;
end;

procedure Tfrmnewcap_notepad.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

end.
