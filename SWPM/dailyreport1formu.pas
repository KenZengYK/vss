unit dailyreport1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Mask, rxToolEdit, ExtCtrls, Buttons, dateutils,
  ADODB;

type
  Tfrmdailyreport1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DateEdit1: TDateEdit;
    Edit1: TComboBox;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    opt1: TCheckBox;
    GroupBox1: TGroupBox;
    fo01: TCheckBox;
    fo02: TCheckBox;
    fo03: TCheckBox;
    fo04: TCheckBox;
    fo05: TCheckBox;
    fo06: TCheckBox;
    fo07: TCheckBox;
    fo08: TCheckBox;
    fo09: TCheckBox;
    opt2: TCheckBox;
    GroupBox2: TGroupBox;
    wo01: TCheckBox;
    wo02: TCheckBox;
    wo03: TCheckBox;
    wo04: TCheckBox;
    wo05: TCheckBox;
    wo06: TCheckBox;
    wo07: TCheckBox;
    wo08: TCheckBox;
    wo09: TCheckBox;
    opt3: TCheckBox;
    GroupBox3: TGroupBox;
    lo01: TCheckBox;
    lo02: TCheckBox;
    lo03: TCheckBox;
    lo04: TCheckBox;
    opt4: TCheckBox;
    GroupBox4: TGroupBox;
    of01: TCheckBox;
    of02: TCheckBox;
    of03: TCheckBox;
    opt5: TCheckBox;
    GroupBox5: TGroupBox;
    ow01: TCheckBox;
    ow02: TCheckBox;
    opt6: TCheckBox;
    GroupBox6: TGroupBox;
    mo01: TCheckBox;
    mo02: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    of04: TCheckBox;
    of05: TCheckBox;
    of06: TCheckBox;
    mo03: TCheckBox;
    lo05: TCheckBox;
    ClientDataSet2: TClientDataSet;
    DataSet2: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure opt1Click(Sender: TObject);
    procedure opt2Click(Sender: TObject);
    procedure opt3Click(Sender: TObject);
    procedure opt4Click(Sender: TObject);
    procedure opt5Click(Sender: TObject);
    procedure opt6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdailyreport1: Tfrmdailyreport1;
  logseq:integer;

implementation

uses mainformu, achievingformu, wkfformu, zktdformu, lwoformu, calendarformu,
  currcalformu, dailyt2formu, dailyt3formu, dailyt4formu, qnsumformu, glossaryformu,
  flow2report1formu, fprofileformu, wprofileformu, lineinfou, lineeffformu,
  calendarchartformu, worksheet, selpdnformu, aqlflowformu;

{$R *.dfm}

procedure Tfrmdailyreport1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmachieving<>nil then frmachieving:=nil;
  if frmwkf<>nil then frmwkf:=nil;
  if frmqnsum<>nil then frmqnsum:=nil;
  if frmzktd<>nil then frmzktd:=nil;
  if frmlwo<>nil then frmlwo:=nil;
  if frmdailyt2<>nil then frmdailyt2:=nil;
  if frmdailyt3<>nil then frmdailyt3:=nil;
  if frmdailyt4<>nil then frmdailyt4:=nil;
  if frmcalendar<>nil then frmcalendar:=nil;
  if frmcurrcal<>nil then frmcurrcal:=nil;
  if frmglossary<>nil then frmglossary:=nil;
  if frmflow2report1<>nil then frmflow2report1:=nil;
  if frmfprofile<>nil then frmfprofile:=nil;
  if frmwprofile<>nil then frmwprofile:=nil;
  if frmlineinfo<>nil then frmlineinfo:=nil;
  if frmlineeff<>nil then frmlineeff:=nil;
  if frmcalendarchart<>nil then frmcalendarchart:=nil;
  if worksheet1<>nil then worksheet1:=nil;
  if frmselpdn<>nil then frmselpdn:=nil;
  if frmaqlflow<>nil then frmaqlflow:=nil;
  action:=cafree;
  frmdailyreport1:=nil;
end;

procedure Tfrmdailyreport1.opt1Click(Sender: TObject);
begin
  if opt1.Checked then begin
    if (fo01.Checked=false) and (fo02.Checked=false) and (fo03.Checked=false) and (fo04.Checked=false) and (fo05.Checked=false)
    and (fo06.Checked=false) and (fo07.Checked=false) and (fo08.Checked=false) and (fo09.Checked=false) then begin
      //fo01.Checked:=true;
      fo02.Checked:=true;
      //fo03.Checked:=true;
      fo04.Checked:=true;
      fo05.Checked:=true;
      //fo06.Checked:=true;
      fo07.Checked:=true;
      fo08.Checked:=true;
      fo09.Checked:=true;
    end;
  end else begin
    //fo01.Checked:=false;
    fo02.Checked:=false;
    //fo03.Checked:=false;
    fo04.Checked:=false;
    fo05.Checked:=false;
    //fo06.Checked:=false;
    fo07.Checked:=false;
    fo08.Checked:=false;
    fo09.Checked:=false;
  end;
end;

procedure Tfrmdailyreport1.opt2Click(Sender: TObject);
begin
  if opt2.Checked then begin
    if (wo01.Checked=false) and (wo02.Checked=false) and (wo03.Checked=false) and (wo04.Checked=false) and (wo05.Checked=false)
    and (wo06.Checked=false) and (wo07.Checked=false) and (wo08.Checked=false) and (wo09.Checked=false) then begin
      wo01.Checked:=true;
      wo02.Checked:=true;
      wo03.Checked:=true;
      wo04.Checked:=true;
      wo05.Checked:=true;
      wo06.Checked:=true;
      wo07.Checked:=true;
      wo08.Checked:=true;
      wo09.Checked:=true;
    end;
  end else begin
    wo01.Checked:=false;
    wo02.Checked:=false;
    wo03.Checked:=false;
    wo04.Checked:=false;
    wo05.Checked:=false;
    wo06.Checked:=false;
    wo07.Checked:=false;
    wo08.Checked:=false;
    wo09.Checked:=false;
  end;
end;

procedure Tfrmdailyreport1.opt3Click(Sender: TObject);
begin
  if opt3.Checked then begin
    if (lo01.Checked=false) and (lo02.Checked=false) and (lo03.Checked=false) and (lo04.Checked=false) and (lo05.Checked=false) then begin
      lo01.Checked:=true;
      lo02.Checked:=true;
      lo03.Checked:=true;
      lo04.Checked:=true;
      lo05.Checked:=true;
    end;
  end else begin
    lo01.Checked:=false;
    lo02.Checked:=false;
    lo03.Checked:=false;
    lo04.Checked:=false;
    lo05.Checked:=false;
  end;
end;

procedure Tfrmdailyreport1.opt4Click(Sender: TObject);
begin
  if opt4.Checked then begin
    if (of01.Checked=false) and (of02.Checked=false) and (of03.Checked=false) and (of04.Checked=false) and (of05.Checked=false) and (of06.Checked=false) then begin
      of01.Checked:=true;
      of02.Checked:=true;
      of03.Checked:=true;
      of04.Checked:=true;
      of05.Checked:=true;
      of06.Checked:=true;
    end;
  end else begin
    of01.Checked:=false;
    of02.Checked:=false;
    of03.Checked:=false;
    of04.Checked:=false;
    of05.Checked:=false;
    of06.Checked:=false;
  end;
end;

procedure Tfrmdailyreport1.opt5Click(Sender: TObject);
begin
  if opt5.Checked then begin
    if (ow01.Checked=false) and (ow02.Checked=false) then begin
      ow01.Checked:=true;
      ow02.Checked:=true;
    end;
  end else begin
    ow01.Checked:=false;
    ow02.Checked:=false;
  end;
end;

procedure Tfrmdailyreport1.opt6Click(Sender: TObject);
begin
  if opt6.Checked then begin
    if (mo01.Checked=false) and (mo02.Checked=false) and (mo03.Checked=false) then begin
      mo01.Checked:=true;
      mo02.Checked:=true;
      mo03.Checked:=true;
    end;
  end else begin
    mo01.Checked:=false;
    mo02.Checked:=false;
    mo03.Checked:=false;
  end;
end;

procedure Tfrmdailyreport1.FormShow(Sender: TObject);
begin
  opt1.Checked:=true;
  opt2.Checked:=true;
  opt3.Checked:=true;
  opt4.Checked:=true;
  opt5.Checked:=true;
  opt6.Checked:=true;
end;

procedure Tfrmdailyreport1.ComboBox1Change(Sender: TObject);
var
  tplant:string;
begin
  if combobox1.text>'' then begin
    if combobox1.text<>'KBT' then tplant:=combobox1.text else tplant:='KB';
    combobox2.items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct tshop from tblline where tplant='''+tplant+''' and tshop>'''' and pline>'''' order by tshop';
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('tshop').value);
        application.ProcessMessages;
        next;
      end;
    end;
    if combobox1.text='SL' then begin
      combobox2.text:='4B';
      edit1.Text:='T002U';
    end else if combobox1.Text='KB' then begin
      combobox2.text:='KB2';
      edit1.Text:='T098';
    end;
  end;
end;

procedure Tfrmdailyreport1.ComboBox2Change(Sender: TObject);
var
  tplant:string;
begin
  if combobox2.text>'' then begin
    if combobox1.text<>'KBT' then tplant:=combobox1.text else tplant:='KB';
    combobox2.items.clear;
    edit1.Items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline from tblline where tplant='''+tplant+''' and tshop='''+combobox2.text+''' and pline>'''' order by pline';
      open;
      edit1.Text:=fieldbyname('pline').value;
      first;
      while not eof do begin
        edit1.Items.add(fieldbyname('pline').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmdailyreport1.Edit1Enter(Sender: TObject);
var
  tplant:string;
begin
  if combobox2.text>'' then begin
    if combobox1.text<>'KBT' then tplant:=combobox1.text else tplant:='KB';
    combobox2.items.clear;
    edit1.Items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline from tblline where tplant='''+tplant+''' and tshop='''+combobox2.text+''' and pline>'''' order by pline';
      open;
      first;
      while not eof do begin
        edit1.Items.add(fieldbyname('pline').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmdailyreport1.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  pline:string;
  seq:integer;
  cont,cfm:boolean;
  flag4,j_no,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  cont:=true;
  try
  if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
  or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
  or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
  or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
  or (ow01.Checked or ow02.Checked)
  or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
    //Factory
    if (fo02.Checked) then begin
      if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
      frmachieving.FormStyle:=fsNormal;
      frmachieving.Hide;
      frmachieving.ComboBox1.text:=combobox1.text;
      frmachieving.ComboBox2.Text:='';
      frmachieving.DateEdit1.date:=dateedit1.Date;
      frmachieving.opt1.ItemIndex:=1;
      frmachieving.bitbtn8click(self);
    end;
    if fo02.checked and cont then frmachieving.BitBtn2click(self);

    if (fo04.checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
    or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked) then
      if fo04.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if (fo04.Checked or fo05.Checked) then begin
      if frmwkf=nil then frmwkf:=tfrmwkf.Create(nil);
      frmwkf.Hide;
      frmwkf.ComboBox1.text:=combobox1.Text;
      frmwkf.ComboBox2.Text:='';
      frmwkf.xh1.Checked:=true;
      frmwkf.DateEdit1.Date:=dateedit1.date;
      frmwkf.DateEdit2.Date:=dateedit1.date;
      frmwkf.BitBtn1click(self);
    end;
    if fo04.Checked and cont then frmwkf.BitBtn2click(self);

    if (fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
    or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked) then
      if fo05.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if fo05.checked and cont then frmwkf.BitBtn3click(self);

    if (fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
    or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked) then
      if fo07.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if fo07.checked and cont then begin
      if frmcalendar=nil then frmcalendar:=tfrmcalendar.Create(nil);
      frmcalendar.FormStyle:=fsNormal;
      frmcalendar.Hide;
      frmcalendar.ComboBox1.text:=combobox1.text;
      frmcalendar.ComboBox2.Text:='';
      frmcalendar.DateEdit1.Date:=dateedit1.date;
      frmcalendar.DateEdit2.Date:=dateedit1.date;
      frmcalendar.SpeedButton2click(self);
      frmcalendar.pre_bywks_dtl;
    end;

    if (fo08.Checked or fo09.Checked)
    or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked) then
      if fo08.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;
    
    if fo08.checked and cont then begin
      if frmcurrcal=nil then frmcurrcal:=tfrmcurrcal.Create(nil);
      frmcurrcal.FormStyle:=fsNormal;
      frmcurrcal.Hide;
      frmcurrcal.ComboBox1.text:=combobox1.text;
      frmcurrcal.ComboBox2.Text:='';
      frmcurrcal.DateEdit1.Date:=dateedit1.date;
      frmcurrcal.DateEdit2.Date:=dateedit1.date;
      frmcurrcal.SpeedButton2click(self);
      frmcurrcal.pre_bywks_dtl;
    end;

    if (fo09.Checked)
    or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked) then
      if fo09.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if fo09.Checked and cont then begin
      if frmfprofile=nil then frmfprofile:=tfrmfprofile.Create(nil);
      //frmfprofile.Hide;
      with frmfprofile.Query1 do begin
        close;
        params.clear;
        commandtext:='select * from tblplant where tplant='''+combobox1.text+'''';
        open;
      end;
      frmfprofile.SpeedButton1Click(self);
    end;
    //Workshop
    if (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked) then
      if wo01.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if (wo01.Checked or wo02.Checked or wo03.Checked) then begin
      if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
      frmachieving.FormStyle:=fsNormal;
      frmachieving.Hide;
      frmachieving.ComboBox1.text:=combobox1.text;
      frmachieving.ComboBox2.Text:=combobox2.Text;
      frmachieving.DateEdit1.date:=dateedit1.Date;
      frmachieving.opt1.ItemIndex:=1;
      frmachieving.bitbtn8click(self);
    end;
    if wo01.checked and cont then frmachieving.BitBtn5click(self);

    if (wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked) then
      if wo02.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if wo02.checked and cont then frmachieving.BitBtn2click(self);

    if (wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked) then
      if wo03.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if wo03.checked and cont then frmachieving.BitBtn4click(self);

    if (wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked) then
      if wo04.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if (wo04.Checked or wo05.Checked) then begin
      if frmwkf=nil then frmwkf:=tfrmwkf.Create(nil);
      frmwkf.Hide;
      frmwkf.ComboBox1.text:=combobox1.Text;
      frmwkf.ComboBox2.Text:=combobox2.Text;
      frmwkf.xh1.Checked:=true;
      frmwkf.DateEdit1.Date:=dateedit1.date;
      frmwkf.DateEdit2.Date:=dateedit1.date;
      frmwkf.BitBtn1click(self);
    end;
    if wo04.Checked and cont then frmwkf.BitBtn2click(self);

    if (wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked) then
      if wo05.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if wo05.Checked and cont then frmwkf.BitBtn3click(self);

    if (wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked) then
      if wo06.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if wo06.Checked and cont then begin
      if frmqnsum=nil then frmqnsum:=tfrmqnsum.create(nil);
      frmqnsum.ComboBox1.text:=combobox1.text;
      frmqnsum.ComboBox2.Text:=combobox2.Text;
      frmqnsum.ComboBox3.Text:='';
      frmqnsum.Edit1.text:='';
      frmqnsum.Edit2.text:='';
      frmqnsum.DateEdit1.Date:=dateedit1.Date;
      frmqnsum.DateEdit2.Date:=dateedit1.date;
      with frmqnsum.Query2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select cfm from line_shjs where flag=''0'' and dt1=:x1 and (flag6 is not null) and cfm=0';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        params[0].asdate:=dateedit1.date;
        open;
        if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
      end;
      with frmqnsum.query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        commandtext:='execute procedure sp_pdn_deldashboard(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asstring:=combobox1.text;
        params[2].asstring:=combobox2.text;
        params[3].asdate:=dateedit1.date;
        execute;
      end;
      with frmqnsum.query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_deldashboard where tm=:x1 order by pline,seq';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmqnsum.Query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select * from line_shjs where tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and dt1=:x1 and flag=''0'' order by pline,seq';
        params[0].asdate:=dateedit1.date;
        open;
        frmqnsum.rpttitle.Caption:='LWPM - Workshop Delivery Dashboard (On-time / Lock Diff)';
        if cfm=false then frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmation - incomplete *'
        else frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmed *';
        frmqnsum.date001.caption:=dateedit1.Text;
        frmqnsum.wk01.Caption:=inttostr(weekof(dateedit1.date));
        frmqnsum.wks001.Caption:='Workshop '+combobox2.text;
        frmqnsum.ppSubReport2.Visible:=false;
        frmqnsum.ppReport1.Print;
      end;
    end;

    if (wo07.Checked or wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked) then
      if wo07.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if wo07.checked and cont then begin
      if frmcalendar=nil then frmcalendar:=tfrmcalendar.Create(nil);
      frmcalendar.FormStyle:=fsNormal;
      frmcalendar.Hide;
      frmcalendar.ComboBox1.text:=combobox1.text;
      frmcalendar.ComboBox2.Text:=combobox2.text;
      frmcalendar.DateEdit1.Date:=dateedit1.date;
      frmcalendar.DateEdit2.Date:=dateedit1.date;
      frmcalendar.SpeedButton2click(self);
      frmcalendar.pre_byline_dtl;
    end;

    if (wo08.Checked or wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked) then
      if wo08.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if wo08.checked and cont then begin
      if frmcurrcal=nil then frmcurrcal:=tfrmcurrcal.Create(nil);
      frmcurrcal.FormStyle:=fsNormal;
      frmcurrcal.Hide;
      frmcurrcal.ComboBox1.text:=combobox1.text;
      frmcurrcal.ComboBox2.Text:=combobox2.text;
      frmcurrcal.DateEdit1.Date:=dateedit1.date;
      frmcurrcal.DateEdit2.Date:=dateedit1.date;
      frmcurrcal.SpeedButton2click(self);
      frmcurrcal.pre_byline_dtl;
    end;

    if (wo09.Checked)
    or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked) then
      if wo09.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if wo09.Checked and cont then begin
      if frmwprofile=nil then frmwprofile:=tfrmwprofile.Create(nil);
      with frmwprofile.Query1 do begin
        close;
        params.clear;
        commandtext:='select * from tblwks where tshop='''+combobox2.text+'''';
        open;
      end;
      frmwprofile.SpeedButton1Click(self);
    end;
    //Line
    if (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      then
      if lo05.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if (lo05.Checked) then begin
      if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
      frmachieving.FormStyle:=fsNormal;
      frmachieving.Hide;
      frmachieving.ComboBox1.text:=combobox1.text;
      frmachieving.ComboBox2.Text:=combobox2.Text;
      frmachieving.Edit1.Text:=edit1.text;
      frmachieving.DateEdit1.date:=dateedit1.Date;
      frmachieving.opt1.ItemIndex:=1;
      frmachieving.bitbtn8click(self);
    end;
    if lo05.checked and cont then frmachieving.BitBtn2click(self);

    if (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo05.checked) then
      if lo01.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if lo01.Checked and cont then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct pline,seq from tblshedule where yzh=0 and tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and flag3>'''' and cfksrq<=:x1 and cfwcrq>=:x2';
        if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
        first;
        while not eof do begin
          pline:=fieldbyname('pline').value;
          seq:=fieldbyname('seq').value;
          if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
          frmzktd.hide;
          with frmzktd.query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
          end;
          frmzktd.BitBtn2click(self);
          application.ProcessMessages;
          next;
        end;
      end;
    end;

    if (lo02.Checked or lo03.Checked or lo04.Checked )
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo05.checked) then
      if lo02.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if lo02.Checked and cont then begin
      if frmlwo<>nil then frmlwo:=nil;
      if frmlwo=nil then frmlwo:=tfrmlwo.create(nil);
      //QN transit summary
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct pline,seq from tblshedule where yzh=0 and tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and flag3>'''' and cfksrq<=:x1 and cfwcrq>=:x2';
        if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
        first;
        while not eof do begin
          pline:=fieldbyname('pline').value;
          seq:=fieldbyname('seq').value;
          with frmlwo.Query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
          end;
          frmlwo.BitBtn3click(self);
          application.ProcessMessages;
          next;
        end;
      end;
    end;

    if (lo03.Checked or lo04.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo05.checked) then
      if lo03.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if lo03.Checked and cont then begin
      if frmlwo<>nil then frmlwo:=nil;
      if frmlwo=nil then frmlwo:=tfrmlwo.create(nil);
      frmlwo.DateTimePicker1.DateTime:=tm;
      //Transit Flow 1-4
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct pline,seq from tblshedule where yzh=0 and tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and flag3>'''' and cfksrq<=:x1 and cfwcrq>=:x2';
        if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
        first;
        while not eof do begin
          pline:=fieldbyname('pline').value;
          seq:=fieldbyname('seq').value;

          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select flag4,j_no,tplant from tblshedule where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
            if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
            else flag4:='';
            j_no:=fieldbyname('j_no').value;
            tplant:=fieldbyname('tplant').value;
          end;

          with frmlwo.Query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
          end;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='1';
            params[3].asdatetime:=tm;
            execute;
          end;
          //frmlwo.previewT1;
          if (copy(uppercase(flag4),1,1)>'A') and (copy(uppercase(flag4),1,1)<'E') then frmlwo.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),1,1)>='E') then frmlwo.title001.caption:=' - Finished'
          else frmlwo.title001.Caption:=' - Planning';
          frmlwo.previewT_1;
          if (pos('TAMA',j_no)>0) and (tplant='SL') then begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans_aql(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='2';
            params[3].asdatetime:=tm;
            execute;
          end;
          if frmflow2report1=nil then frmflow2report1:=tfrmflow2report1.create(nil);
          with frmflow2report1.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='2';
            open;
          end;
          if (copy(uppercase(flag4),2,1)>='F') and (copy(uppercase(flag4),2,1)<'H') then frmflow2report1.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),2,1)>='H') then frmflow2report1.title001.caption:=' - Finished'
          else frmflow2report1.title001.Caption:=' - Planning';
          frmflow2report1.ppReport2.Print;
          end else begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='2';
            params[3].asdatetime:=tm;
            execute;
          end;
          if frmdailyt2=nil then frmdailyt2:=tfrmdailyt2.create(nil);
          with frmdailyt2.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='2';
            open;
          end;
          if (copy(uppercase(flag4),2,1)>='F') and (copy(uppercase(flag4),2,1)<'H') then frmdailyt2.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),2,1)>='H') then frmdailyt2.title001.caption:=' - Finished'
          else frmdailyt2.title001.Caption:=' - Planning';
          frmdailyt2.ppReport2.Print;
          end;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='3';
            params[3].asdatetime:=tm;
            execute;
          end;
          if frmdailyt3=nil then frmdailyt3:=tfrmdailyt3.create(nil);
          with frmdailyt3.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='3';
            open;
          end;
          if (copy(uppercase(flag4),3,1)>='J') and (copy(uppercase(flag4),3,1)<'L') then frmdailyt3.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),3,1)>='L') then frmdailyt3.title001.caption:=' - Finished'
          else frmdailyt3.title001.Caption:=' - Planning';
          frmdailyt3.ppReport2.Print;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asstring:='4';
            params[3].asdatetime:=tm;
            execute;
          end;
          if frmdailyt4=nil then frmdailyt4:=tfrmdailyt4.create(nil);
          with frmdailyt4.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='4';
            open;
          end;
          if (copy(flag4,4,1)='m') then frmdailyt4.title001.Caption:=' - WIP'
          else if (copy(flag4,4,1)='M') then frmdailyt4.title001.caption:=' - Finished'
          else frmdailyt4.title001.Caption:=' - Planning';
          frmdailyt4.ppReport2.Print;
          application.ProcessMessages;
          next;
        end;
      end;
    end;

    if (lo04.Checked)
    or (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo05.Checked) then
      if lo04.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if lo04.Checked and cont then begin
      if frmlineinfo=nil then frmlineinfo:=tfrmlineinfo.Create(nil);
      frmlineinfo.FormStyle:=fsNormal;
      frmlineinfo.Hide;
      frmlineinfo.tblline.Locate('pline',edit1.Text,[lopartialkey]);
      frmlineinfo.PageControl1.ActivePageIndex:=1;
      frmlineinfo.speedbutton2click(self);
    end;

    //Others(Factory)
    if (of01.Checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked) then
      if of01.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if of01.Checked and cont then begin
      if frmlineeff=nil then frmlineeff:=tfrmlineeff.Create(nil);
      frmlineeff.ComboBox1.text:=combobox1.text;
      frmlineeff.xh1.Checked:=true;
      frmlineeff.DateEdit1.Date:=dateedit1.Date;
      frmlineeff.DateEdit2.Date:=dateedit1.date;
      frmlineeff.BitBtn2click(self);
    end;

    if (of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked) then
      if of02.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if of02.Checked and cont then begin
      if frmcalendarchart=nil then frmcalendarchart:=tfrmcalendarchart.Create(nil);
      frmcalendarchart.ComboBox1.text:=combobox1.text;
      frmcalendarchart.xh1.Checked:=true;
      frmcalendarchart.DateEdit1.date:=dateedit1.date;
      frmcalendarchart.DateEdit2.date:=dateedit1.Date;
      frmcalendarchart.BitBtn1click(self);
    end;

    if (of03.Checked or of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked or of02.Checked) then
      if of03.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if (of03.Checked or of04.Checked or of05.Checked) then begin
      if worksheet1=nil then worksheet1:=tworksheet1.Create(nil);
      worksheet1.FormStyle:=fsNormal;
      worksheet1.Hide;
      worksheet1.Edit6.text:=combobox1.text;
    end;

    if of03.Checked and cont then begin
      worksheet1.chk1.Checked:=true;
      worksheet1.chk2.Checked:=false;
      worksheet1.chk4.Checked:=false;
    end;

    if (of04.Checked or of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked or of02.Checked or of03.Checked) then
      if of04.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if of04.Checked and cont then begin
      worksheet1.chk2.Checked:=true;
      worksheet1.chk1.Checked:=false;
      worksheet1.chk4.Checked:=false;
    end;

    if (of05.Checked or of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked or of02.Checked or of03.Checked or of04.Checked) then
      if of05.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if of05.Checked and cont then begin
      worksheet1.chk4.Checked:=true;
      worksheet1.chk2.Checked:=false;
      worksheet1.chk1.Checked:=false;
    end;
    
    if (of06.Checked)
    or (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked) then
      if of06.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if of06.Checked and cont then begin
      if frmselpdn=nil then frmselpdn:=tfrmselpdn.Create(nil);
      frmselpdn.ComboBox1.text:=combobox1.text;
      frmselpdn.yEdit1.Value:=yearof(dateedit1.date);
      frmselpdn.wEdit1.Value:=weekof(dateedit1.date);
      with frmselpdn.Query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_pdn_m where tplant='''+frmselpdn.combobox1.text+''' and wk='+inttostr(frmselpdn.wEdit1.value)+' and f_year(exfty)='+inttostr(frmselpdn.yEdit1.value)+' order by wk,cust,exfty,tplant';
        open;
      end;
      frmselpdn.BitBtn2click(self);
    end;
    //Others(Workshop)
    if (ow01.Checked or ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked) then
      if ow01.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if ow01.Checked and cont then begin
      if frmlineeff=nil then frmlineeff:=tfrmlineeff.Create(nil);
      frmlineeff.ComboBox1.text:=combobox1.text;
      frmlineeff.ComboBox2.Text:=combobox2.Text;
      frmlineeff.xh1.Checked:=true;
      frmlineeff.DateEdit1.Date:=dateedit1.Date;
      frmlineeff.DateEdit2.Date:=dateedit1.date;
      frmlineeff.BitBtn2click(self);
    end;

    if (ow02.Checked)
    or (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
      or (ow01.Checked) then
      if ow02.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if ow02.Checked and cont then begin
      if frmcalendarchart=nil then frmcalendarchart:=tfrmcalendarchart.Create(nil);
      frmcalendarchart.ComboBox1.text:=combobox1.text;
      frmcalendarchart.ComboBox2.Text:=combobox2.Text;
      frmcalendarchart.xh1.Checked:=true;
      frmcalendarchart.DateEdit1.date:=dateedit1.date;
      frmcalendarchart.DateEdit2.date:=dateedit1.Date;
      frmcalendarchart.BitBtn1click(self);
    end;
    //Misc
    if (mo01.Checked or mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
      or (ow01.Checked or ow02.Checked) then
      if mo01.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if mo01.Checked and cont then begin
      if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
      frmachieving.FormStyle:=fsNormal;
      frmachieving.Hide;
      frmachieving.ComboBox1.text:=combobox1.text;
      frmachieving.ComboBox2.Text:=combobox2.Text;
      frmachieving.DateEdit1.date:=dateedit1.Date;
      frmachieving.opt1.ItemIndex:=1;
      frmachieving.bitbtn8click(self);
      frmachieving.temp_flag;
    end;

    if (mo02.Checked or mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
      or (ow01.Checked or ow02.Checked)
      or (mo01.Checked) then
      if mo02.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if (mo02.Checked) and cont then begin
      if frmglossary=nil then frmglossary:=tfrmglossary.Create(nil);
      frmglossary.BitBtn4Click(self);
    end;

    if (mo03.Checked) then begin
      if (fo01.Checked or fo02.Checked or fo03.Checked or fo04.Checked or fo05.Checked or fo06.Checked or fo07.Checked or fo08.Checked or fo09.Checked)
      or (wo01.Checked or wo02.Checked or wo03.Checked or wo04.Checked or wo05.Checked or wo06.Checked or wo07.Checked or wo08.Checked or wo09.Checked)
      or (lo01.Checked or lo02.Checked or lo03.Checked or lo04.Checked or lo05.Checked)
      or (of01.checked or of02.Checked or of03.Checked or of04.Checked or of05.Checked or of06.Checked)
      or (ow01.Checked or ow02.Checked)
      or (mo01.Checked or mo02.Checked) then
      if mo03.checked then if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_yesno)=idno then cont:=false;
    end;
    if cont=false then exit;

    if (mo03.Checked) and cont then begin
      if frmaqlflow=nil then frmaqlflow:=tfrmaqlflow.create(nil);
      with frmaqlflow.query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_aqlflow_cust';
        open;
      end;
      frmaqlflow.bitbtn2click(self);
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmdailyreport1.FormCreate(Sender: TObject);
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
          params[2].AsString:='Daily Report(Top Management)';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - Daily Report(Top Management)';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmdailyreport1.FormDestroy(Sender: TObject);
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

end.
