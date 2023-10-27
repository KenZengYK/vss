unit oamoduleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, rxToolEdit, DateUtils, Db,
  DBClient;

type
  Tfrmoamodule = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    GroupBox4: TGroupBox;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    GroupBox5: TGroupBox;
    xh1: TCheckBox;
    xh2: TCheckBox;
    xh3: TCheckBox;
    xh4: TCheckBox;
    xh5: TCheckBox;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    GroupBox6: TGroupBox;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    GroupBox7: TGroupBox;
    BitBtn16: TBitBtn;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    xh6: TCheckBox;
    xh7: TCheckBox;
    xh8: TCheckBox;
    xh9: TCheckBox;
    xh10: TCheckBox;
    xh11: TCheckBox;
    xh12: TCheckBox;
    xh13: TCheckBox;
    xh14: TCheckBox;
    xh15: TCheckBox;
    xh16: TCheckBox;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmoamodule: Tfrmoamodule;

implementation

uses mainformu, custformu, oaprojectionformu, custenqformu, newcap_comformu, pjc1formu,
  ordersummaryformu, ordersummary2formu, rwoformu, oareport1formu, pdnformu,
  pdnpastformu, selpdnformu, ftycalendarformu, glossaryformu, aqlflowformu,
  flagformu, printscheduleu, oareport2formu;

{$R *.dfm}

procedure Tfrmoamodule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmoamodule:=nil;
end;

procedure Tfrmoamodule.BitBtn1Click(Sender: TObject);
begin
  if frmcustomer=nil then frmcustomer:=tfrmcustomer.Create(nil);
  {
  with frmcustomer.query1 do begin
    close;
    params.clear;
    commandtext:='select * from cust_sku order by cust,ptyp,lst2,pcol,fits,sizs';
    open;
  end;
  }
  with frmcustomer.query2 do begin
    close;
    params.clear;
    commandtext:='select * from cust_exfty';
    open;
  end;
  frmcustomer.TabSheet2.TabVisible:=true;
  frmcustomer.TabSheet1.TabVisible:=false;
  frmcustomer.BringToFront;
  frmcustomer.PageControl1.ActivePageIndex:=1;
  frmcustomer.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmcustomer.Caption:=frmcustomer.Caption+' - Test';
end;

procedure Tfrmoamodule.BitBtn2Click(Sender: TObject);
begin
  if frmcustomer=nil then frmcustomer:=tfrmcustomer.Create(nil);
  with frmcustomer.query1 do begin
    close;
    params.clear;
    commandtext:='select * from cust_sku order by cust,ptyp,lst2,pcol,fits,sizs';
    open;
  end;
  {
  with frmcustomer.query2 do begin
    close;
    params.clear;
    commandtext:='select * from cust_exfty';
    open;
  end;
  }
  frmcustomer.TabSheet1.TabVisible:=true;
  frmcustomer.TabSheet2.TabVisible:=false;
  frmcustomer.BringToFront;
  frmcustomer.PageControl1.ActivePageIndex:=0;
  frmcustomer.WindowState:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmcustomer.Caption:=frmcustomer.Caption+' - Test';
end;

procedure Tfrmoamodule.BitBtn3Click(Sender: TObject);
begin
  if frmoaprojection=nil then frmoaprojection:=tfrmoaprojection.Create(nil);
  frmoaprojection.ComboBox1.Text:='SL';
  frmoaprojection.SpinEdit1.Value:=yearof(date);
  frmoaprojection.Show;
end;

procedure Tfrmoamodule.BitBtn4Click(Sender: TObject);
begin
  if frmcustenq=nil then frmcustenq:=tfrmcustenq.create(nil);
  frmcustenq.Show;
end;

procedure Tfrmoamodule.BitBtn5Click(Sender: TObject);
begin
  if frmnewcap_com=nil then frmnewcap_com:=tfrmnewcap_com.Create(nil);
  frmnewcap_com.Show;
end;

procedure Tfrmoamodule.BitBtn6Click(Sender: TObject);
begin
  if frmpjc1=nil then frmpjc1:=tfrmpjc1.create(nil);
  frmpjc1.Show;
end;

procedure Tfrmoamodule.BitBtn7Click(Sender: TObject);
begin
  if frmordersummary=nil then frmordersummary:=tfrmordersummary.create(nil);
  frmordersummary.show;
end;

procedure Tfrmoamodule.BitBtn8Click(Sender: TObject);
begin
  if frmordersummary2=nil then frmordersummary2:=tfrmordersummary2.Create(nil);
  frmordersummary2.ComboBox3.Text:=combobox3.text;
  frmordersummary2.ComboBox1.text:='81';
  frmordersummary2.ComboBox2.text:='94';
  frmordersummary2.Show;
end;

procedure Tfrmoamodule.BitBtn9Click(Sender: TObject);
begin
  if frmrwo=nil then frmrwo:=tfrmrwo.create(application);
  frmrwo.bringtofront;
  frmrwo.WindowState:=wsMaximized;
end;

procedure Tfrmoamodule.BitBtn10Click(Sender: TObject);
begin
  if frmoareport2=nil then frmoareport2:=tfrmoareport2.Create(nil);
  frmoareport2.Caption:=bitbtn10.Caption;
  frmoareport2.DateEdit1.Date:=dateedit1.date;
  frmoareport2.Show;
end;

procedure Tfrmoamodule.BitBtn11Click(Sender: TObject);
begin
  if frmoareport1=nil then frmoareport1:=tfrmoareport1.Create(nil);
  frmoareport1.Caption:=bitbtn11.Caption;
  frmoareport1.combobox3.Items:=combobox3.items;
  frmoareport1.DateEdit1.Date:=dateedit1.date;
  frmoareport1.DateEdit2.Date:=dateedit2.date;
  frmoareport1.Edit1.Text:=edit1.Text;
  frmoareport1.Show;
end;

procedure Tfrmoamodule.BitBtn12Click(Sender: TObject);
begin
  //
  showmessage('Under developing!');
end;

procedure Tfrmoamodule.BitBtn13Click(Sender: TObject);
begin
  if frmpdn=nil then frmpdn:=tfrmpdn.create(application);
  frmpdn.BringToFront;
  frmpdn.windowstate:=wsmaximized;
  if pos('test',application.ExeName)>0 then frmpdn.Caption:=frmpdn.Caption+' - Test';
end;

procedure Tfrmoamodule.BitBtn14Click(Sender: TObject);
begin
  if frmpdnpast=nil then frmpdnpast:=tfrmpdnpast.create(nil);
  frmpdnpast.ComboBox1.Text:='SL';
  frmpdnpast.ComboBox2.text:='CUST BY CUST';
  frmpdnpast.SpinEdit1.Value:=yearof(date);
  frmpdnpast.SpinEdit2.Value:=weekof(date);
  frmpdnpast.SpinEdit3.Value:=yearof(date);
  frmpdnpast.SpinEdit4.Value:=weekof(date);
  frmpdnpast.show;
end;

procedure Tfrmoamodule.BitBtn15Click(Sender: TObject);
begin
  if frmselpdn=nil then frmselpdn:=tfrmselpdn.create(nil);
  frmselpdn.show;
end;

procedure Tfrmoamodule.BitBtn16Click(Sender: TObject);
begin
  if frmftycalendar=nil then frmftycalendar:=tfrmftycalendar.create(application);
  frmftycalendar.BringToFront;
  //frmftycalendar.Left:=0;
  //frmftycalendar.top:=0;
  //frmftycalendar.Width:=666;
  //frmftycalendar.Height:=483;
  frmftycalendar.windowstate:=wsMaximized;
  if pos('test',application.ExeName)>0 then frmftycalendar.Caption:=frmftycalendar.Caption+' - Test';
end;

procedure Tfrmoamodule.BitBtn17Click(Sender: TObject);
begin
  if frmglossary=nil then frmglossary:=tfrmglossary.Create(nil);
  with frmglossary.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_glossary';
    open;
  end;
  frmglossary.Show;
end;

procedure Tfrmoamodule.BitBtn18Click(Sender: TObject);
begin
  if frmaqlflow=nil then frmaqlflow:=tfrmaqlflow.create(nil);
  frmaqlflow.show;
end;

procedure Tfrmoamodule.CheckBox1Click(Sender: TObject);
begin
  xh1.Checked:=checkbox1.Checked;
  xh2.Checked:=checkbox1.Checked;
  xh3.Checked:=checkbox1.Checked;
  xh4.Checked:=checkbox1.Checked;
  xh5.Checked:=checkbox1.Checked;
end;

procedure Tfrmoamodule.CheckBox2Click(Sender: TObject);
begin
  xh6.Checked:=checkbox2.Checked;
  xh7.Checked:=checkbox2.Checked;
  xh8.Checked:=checkbox2.Checked;
  xh9.Checked:=checkbox2.Checked;
  xh10.Checked:=checkbox2.Checked;
  xh11.Checked:=checkbox2.Checked;
  xh12.Checked:=checkbox2.Checked;
  xh13.Checked:=checkbox2.Checked;
  xh14.Checked:=checkbox2.Checked;
  xh15.Checked:=checkbox2.Checked;
  xh16.Checked:=checkbox2.Checked;
end;

procedure Tfrmoamodule.FormShow(Sender: TObject);
begin
  checkbox1.Checked:=true;
  checkbox2.Checked:=true;
  combobox3.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct substr(j_no,1,4) as cust from tbl_erpsop';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox3.Text:='TAMA';
end;

procedure Tfrmoamodule.BitBtn19Click(Sender: TObject);
var
 cont:boolean;
begin
  cont:=true;
  if xh1.Checked then begin
    //All excluding exfty;
    if frmprintschedule=nil then frmprintschedule:=tfrmprintschedule.create(nil);
    frmprintschedule.Edit1.Text:='';
    frmprintschedule.Edit2.text:='';
    frmprintschedule.Edit3.Text:='';
    frmprintschedule.Edit4.text:='';
    frmprintschedule.Edit5.Text:=edit1.text;
    frmprintschedule.Edit6.text:=combobox1.text;
    frmprintschedule.Edit7.Text:=combobox3.text;
    frmprintschedule.Edit8.text:='';
    frmprintschedule.ComboBox2.Text:=combobox2.text;
    frmprintschedule.ComboBox3.Text:='';
    frmprintschedule.ComboBox4.Text:='';
    frmprintschedule.ComboBox5.Text:='';
    frmprintschedule.ComboBox6.Text:='';
    frmprintschedule.CheckBox1.Checked:=false;
    frmprintschedule.CheckBox2.Checked:=false;
    frmprintschedule.CheckBox3.Checked:=false;
    frmprintschedule.CheckBox4.Checked:=false;
    frmprintschedule.CheckBox5.Checked:=false;
    frmprintschedule.CheckBox6.Checked:=false;
    frmprintschedule.opt7.itemindex:=0;
    frmprintschedule.BitBtn1Click(self);
    if frmprintschedule<>nil then frmprintschedule:=nil;
  end;
  if xh1.Checked then begin
    if (xh2.Checked or xh3.Checked or xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked 
    or xh10.Checked or xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
    then begin
      if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
      cont:=true else cont:=false;
    end;
  end;
  if cont=true then begin
    if xh2.Checked then begin
      //QN Outstanding;
      if frmprintschedule=nil then frmprintschedule:=tfrmprintschedule.create(nil);
      frmprintschedule.Edit1.Text:='';
      frmprintschedule.Edit2.text:='';
      frmprintschedule.Edit3.Text:='';
      frmprintschedule.Edit4.text:='';
      frmprintschedule.Edit5.Text:=edit1.text;
      frmprintschedule.Edit6.text:=combobox1.text;
      frmprintschedule.Edit7.Text:=combobox3.text;
      frmprintschedule.Edit8.text:='';
      frmprintschedule.ComboBox2.Text:=combobox2.text;
      frmprintschedule.ComboBox3.Text:='';
      frmprintschedule.ComboBox4.Text:='';
      frmprintschedule.ComboBox5.Text:='';
      frmprintschedule.ComboBox6.Text:='';
      frmprintschedule.CheckBox1.Checked:=false;
      frmprintschedule.CheckBox2.Checked:=false;
      frmprintschedule.CheckBox3.Checked:=false;
      frmprintschedule.CheckBox4.Checked:=false;
      frmprintschedule.CheckBox5.Checked:=false;
      frmprintschedule.CheckBox6.Checked:=false;
      frmprintschedule.opt7.itemindex:=6;
      frmprintschedule.BitBtn1Click(self);
      if frmprintschedule<>nil then frmprintschedule:=nil;
    end;
    if (xh2.Checked) then begin
      if (xh3.Checked or xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked
      or xh10.Checked or xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh3.Checked then begin
      //QN WIP;
      if frmprintschedule=nil then frmprintschedule:=tfrmprintschedule.create(nil);
      frmprintschedule.Edit1.Text:='';
      frmprintschedule.Edit2.text:='';
      frmprintschedule.Edit3.Text:='';
      frmprintschedule.Edit4.text:='';
      frmprintschedule.Edit5.Text:=edit1.text;
      frmprintschedule.Edit6.text:=combobox1.text;
      frmprintschedule.Edit7.Text:=combobox3.text;
      frmprintschedule.Edit8.text:='';
      frmprintschedule.ComboBox2.Text:=combobox2.text;
      frmprintschedule.ComboBox3.Text:='';
      frmprintschedule.ComboBox4.Text:='';
      frmprintschedule.ComboBox5.Text:='';
      frmprintschedule.ComboBox6.Text:='';
      frmprintschedule.CheckBox1.Checked:=false;
      frmprintschedule.CheckBox2.Checked:=false;
      frmprintschedule.CheckBox3.Checked:=false;
      frmprintschedule.CheckBox4.Checked:=false;
      frmprintschedule.CheckBox5.Checked:=false;
      frmprintschedule.CheckBox6.Checked:=false;
      frmprintschedule.opt7.itemindex:=1;
      frmprintschedule.BitBtn1Click(self);
      if frmprintschedule<>nil then frmprintschedule:=nil;
    end;
    if (xh3.Checked) then begin
      if (xh4.Checked or xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked
      or xh10.Checked or xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh4.Checked then begin
      //QN WIP Halt;
      if frmprintschedule=nil then frmprintschedule:=tfrmprintschedule.create(nil);
      frmprintschedule.Edit1.Text:='';
      frmprintschedule.Edit2.text:='';
      frmprintschedule.Edit3.Text:='';
      frmprintschedule.Edit4.text:='';
      frmprintschedule.Edit5.Text:=edit1.text;
      frmprintschedule.Edit6.text:=combobox1.text;
      frmprintschedule.Edit7.Text:=combobox3.text;
      frmprintschedule.Edit8.text:='';
      frmprintschedule.ComboBox2.Text:=combobox2.text;
      frmprintschedule.ComboBox3.Text:='';
      frmprintschedule.ComboBox4.Text:='';
      frmprintschedule.ComboBox5.Text:='';
      frmprintschedule.ComboBox6.Text:='';
      frmprintschedule.CheckBox1.Checked:=false;
      frmprintschedule.CheckBox2.Checked:=false;
      frmprintschedule.CheckBox3.Checked:=false;
      frmprintschedule.CheckBox4.Checked:=false;
      frmprintschedule.CheckBox5.Checked:=false;
      frmprintschedule.CheckBox6.Checked:=false;
      frmprintschedule.opt7.itemindex:=5;
      frmprintschedule.BitBtn1Click(self);
      if frmprintschedule<>nil then frmprintschedule:=nil;
    end;
    if (xh4.Checked) then begin
      if (xh5.Checked or xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked
      or xh10.Checked or xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh5.Checked then begin
      //Wait for exfty;
      if frmprintschedule=nil then frmprintschedule:=tfrmprintschedule.create(nil);
      frmprintschedule.Edit1.Text:='';
      frmprintschedule.Edit2.text:='';
      frmprintschedule.Edit3.Text:='';
      frmprintschedule.Edit4.text:='';
      frmprintschedule.Edit5.Text:=edit1.text;
      frmprintschedule.Edit6.text:=combobox1.text;
      frmprintschedule.Edit7.Text:=combobox3.text;
      frmprintschedule.Edit8.text:='';
      frmprintschedule.ComboBox2.Text:=combobox2.text;
      frmprintschedule.ComboBox3.Text:='';
      frmprintschedule.ComboBox4.Text:='';
      frmprintschedule.ComboBox5.Text:='';
      frmprintschedule.ComboBox6.Text:='';
      frmprintschedule.CheckBox1.Checked:=false;
      frmprintschedule.CheckBox2.Checked:=false;
      frmprintschedule.CheckBox3.Checked:=false;
      frmprintschedule.CheckBox4.Checked:=false;
      frmprintschedule.CheckBox5.Checked:=false;
      frmprintschedule.CheckBox6.Checked:=false;
      frmprintschedule.opt7.itemindex:=2;
      frmprintschedule.BitBtn1Click(self);
      if frmprintschedule<>nil then frmprintschedule:=nil;
    end;
    if (xh5.Checked) then begin
      if (xh6.Checked or xh7.Checked or xh8.Checked or xh9.Checked
      or xh10.Checked or xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh6.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='1';
      frmflag.Caption:='Flag Explanation - Project Process/工程流程';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=:x1';
        params[0].asinteger:=1;
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=1';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh6.Checked) then begin
      if (xh7.Checked or xh8.Checked or xh9.Checked
      or xh10.Checked or xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh7.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='6';
      frmflag.Caption:='Flag explanation - Style prefix:- Product Categories / 款字首:- 產品種類';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=6';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=6';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh7.Checked) then begin
      if (xh8.Checked or xh9.Checked
      or xh10.Checked or xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh8.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='16';
      frmflag.Caption:='Flag explanation - Style suffix:- Season# & Range Name / 款字尾:- 季節#及系列名稱';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      frmflag.combobox1.text:=combobox3.text;
      with frmflag.query1 do begin
        close;
        params.clear;
        commandtext:='select * from flag_marks where fseq=16 and fname='''+frmflag.combobox1.text+'''';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=16 and fname='''+frmflag.combobox1.text+'''';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh8.Checked) then begin
      if (xh9.Checked or xh10.Checked or xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh9.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='9';
      frmflag.Caption:='Flag Explanation - Impact Code/衝擊顯示';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=9';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=9';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh9.Checked) then begin
      if (xh10.Checked or xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh10.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='10';
      frmflag.Caption:='Flag Explanation - QN Transit Process/數頁交收流程';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=10';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=10';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh10.Checked) then begin
      if (xh11.Checked or xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh11.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='2';
      frmflag.Caption:='Flag Explanation - SAH & BOO Process/SAH & BOO流程';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=2';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=2';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh11.Checked) then begin
      if (xh12.Checked or xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh12.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='14';
      frmflag.Caption:='Flag Explanation - Ref for default phase of line eff(opt perf) / 預設段拉效率參考(制作中表現)';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=14';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=14';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh12.Checked) then begin
      if (xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh13.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='4';
      frmflag.Caption:='Flag Explanation - Default phase of line eff.(opt perf)/預設段拉效率(制作中表現)';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=4';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=4';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh13.Checked) then begin
      if (xh14.Checked or xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh14.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='12';
      frmflag.Caption:='Flag Explanation - RWO Fty Start Date(Locked Diff Process)/輪製單廠開始日期(鎖定差距流程)';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=12';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=12';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh14.Checked) then begin
      if (xh15.Checked or xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh15.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='3';
      frmflag.Caption:='Flag Explanation - QN/SQN Dynamic Process at workshop / 數頁/游數頁動力流程-車間';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=3';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=3';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
    if (xh15.Checked) then begin
      if (xh16.Checked)
      then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
        cont:=true else cont:=false;
      end;
    end;
  end;
  if cont=true then begin
    if xh16.Checked then begin
      if frmflag=nil then frmflag:=tfrmflag.create(nil);
      frmflag.Label1.caption:='5';
      frmflag.Caption:='Flag Explanation - Locked Diff Process/鎖定差距流程';
      if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
      with frmflag.Query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from flag_marks where fseq=5';
        open;
      end;
      with frmflag.query4 do begin
        close;
        params.clear;
        commandtext:='select * from flag_memo where fseq=5';
        open;
      end;
      frmflag.BitBtn3click(self);
      if frmflag<>nil then frmflag:=nil;
    end;
  end;
end;

end.
