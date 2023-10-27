unit mainu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxGIF, ExtCtrls, Menus, jpeg, ComCtrls, ToolWin, ImgList, Db, DBTables,
  DBClient, MConnect, SConnect, StdCtrls, SOAPConn, scktcomp, siComp,
  Spin, ADODB, Buttons, RzBckgnd, DateUtils;

type
  Tfrmmain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    ToolBar1: TToolBar;
    fcgclr: TToolButton;
    lb_pbzl: TToolButton;
    lbgclr: TToolButton;
    lb_fxbg: TToolButton;
    cggclr: TToolButton;
    cg_fxbg: TToolButton;
    tc: TToolButton;
    yhgl: TToolButton;
    qxwh: TToolButton;
    ImageList1: TImageList;
    N10: TMenuItem;
    ToolButton1: TToolButton;
    N11: TMenuItem;
    N12: TMenuItem;
    ToolButton2: TToolButton;
    N13: TMenuItem;
    ToolButton3: TToolButton;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    ToolButton4: TToolButton;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    ToolButton5: TToolButton;
    query1: TClientDataSet;
    query2: TClientDataSet;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    Label1: TLabel;
    SocketConnection1: TSocketConnection;
    Label2: TLabel;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    Memo1: TMemo;
    siLang1: TsiLang;
    SpinEdit1: TSpinEdit;
    ADOConnection1: TADOConnection;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    FRN1: TMenuItem;
    N36: TMenuItem;
    ToolButton8: TToolButton;
    Yield1: TMenuItem;
    ToolButton9: TToolButton;
    TB10: TToolButton;
    mt1: TMenuItem;
    alc1: TMenuItem;
    ToolButton10: TToolButton;
    tbalc1: TToolButton;
    RzBackground1: TRzBackground;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox2: TComboBox;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    al_1: TMenuItem;
    tb_1: TToolButton;
    tb_s1: TToolButton;
    lbluser1: TLabel;
    eOrder1: TMenuItem;
    tb_eOrder1: TToolButton;
    ToolButton11: TToolButton;
    tb_fcjh: TToolButton;
    N37: TMenuItem;
    CalculationRules1: TMenuItem;
    ToolButton12: TToolButton;
    putocu1: TMenuItem;
    tb_pu2cu: TToolButton;
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure tcClick(Sender: TObject);
    procedure qxwhClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure yhglClick(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SocketConnection1BeforeConnect(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure Yield1Click(Sender: TObject);
    procedure alc1Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure al_1Click(Sender: TObject);
    procedure eOrder1Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure CalculationRules1Click(Sender: TObject);
    procedure putocu1Click(Sender: TObject);
    procedure ADOConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    cws1: TClientWinSocket;
    function GetFileEditTime(const FileName: String): TDateTime;
    procedure delete_cutplancsv;
    { Public declarations }
  end;

var
  frmmain: Tfrmmain;

implementation
uses fcu, zdsu, pbzlu, lbjhu, lbfxu, qxwhu, dlu, useru, cgjhu,
     fcjyu, fllru, xgwlu, sclfxu, lhjlu, cgbgu, wwcmju, wwclhu, drkcu,
  mjfdu, cgdu, zmzyu, zmdu, xsjlbu, xgzdformu, frnformu, Marking_YieldFormu,
  AL_categoryformu, cmpl_actionlogformu, eOrderFormu, fcjhformu, Calc_RulesFormu,
  pu2cuformu;
{$R *.DFM}

procedure Tfrmmain.N4Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmfc=nil then frmfc:=tfrmfc.create(self);
  {with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'nam',ptinput);
    commandtext:='select r2 from qx where nam=:nam';
    params[0].asstring:=frmxtdl.combobox1.text;
    open;
    if fieldbyname('r2').value=true then begin
      frmfc.dbedit2.enabled:=true;frmfc.dbedit3.enabled:=true;frmfc.dbedit4.enabled:=true;
      frmfc.dbedit5.enabled:=true;frmfc.dbedit6.enabled:=true;frmfc.dbedit1.enabled:=true;
      //frmfc.combobox1.enabled:=true;frmfc.wwdbdatetimepicker2.enabled:=true;frmfc.bitbtn1.enabled:=true;frmfc.bitbtn2.enabled:=true;
      frmfc.speedbutton1.enabled:=true;frmfc.speedbutton3.enabled:=true;frmfc.speedbutton4.enabled:=true;
      frmfc.speedbutton5.enabled:=true;frmfc.speedbutton7.enabled:=true;frmfc.speedbutton11.enabled:=true;
      frmfc.dbgrideh1.readonly:=false;frmfc.dbgrideh2.readonly:=false;frmfc.dbgrideh5.readonly:=false;
    end
    else begin
      frmfc.dbedit2.enabled:=false;frmfc.dbedit3.enabled:=false;frmfc.dbedit4.enabled:=false;
      frmfc.dbedit5.enabled:=false;frmfc.dbedit6.enabled:=false;frmfc.dbedit1.enabled:=false;
      //frmfc.combobox1.enabled:=false;frmfc.wwdbdatetimepicker2.enabled:=false;frmfc.bitbtn1.enabled:=false;frmfc.bitbtn2.enabled:=false;
      frmfc.speedbutton1.enabled:=false;frmfc.speedbutton3.enabled:=false;frmfc.speedbutton4.enabled:=false;
      frmfc.speedbutton5.enabled:=false;frmfc.speedbutton7.enabled:=false;frmfc.speedbutton11.enabled:=false;
      frmfc.dbgrideh1.readonly:=true;frmfc.dbgrideh2.readonly:=true;frmfc.dbgrideh5.readonly:=true;
    end;
  end;}
  frmfc.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N6Click(Sender: TObject);
begin
  if frmpbzl=nil then frmpbzl:=tfrmpbzl.create(self);
  frmpbzl.show;
end;

procedure Tfrmmain.N5Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  //showmessage('99');
  if frmlbjh=nil then frmlbjh:=tfrmlbjh.create(Application);
  {with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'nam',ptinput);
    commandtext:='select r8 from qx where nam=:nam';
    params[0].asstring:=frmxtdl.combobox1.text;
    open;
    if fieldbyname('r8').value=true then begin
      frmlbjh.dbedit3.enabled:=true;frmlbjh.dbedit4.enabled:=true;
      frmlbjh.dbedit19.enabled:=true;frmlbjh.dbedit20.enabled:=true;
      frmlbjh.speedbutton2.enabled:=true;frmlbjh.speedbutton3.enabled:=true;
      frmlbjh.speedbutton4.enabled:=true;frmlbjh.speedbutton6.enabled:=true;
      frmlbjh.speedbutton7.enabled:=true;frmlbjh.speedbutton10.enabled:=true;
      frmlbjh.bitbtn1.enabled:=true;
      frmlbjh.dbgrideh1.readonly:=false;frmlbjh.dbgrideh2.readonly:=false;
      frmlbjh.n1.visible:=true;frmlbjh.n2.visible:=true;
    end
    else begin
      frmlbjh.dbedit3.enabled:=false;frmlbjh.dbedit4.enabled:=false;
      frmlbjh.dbedit19.enabled:=false;frmlbjh.dbedit20.enabled:=false;
      frmlbjh.speedbutton2.enabled:=false;frmlbjh.speedbutton3.enabled:=false;
      frmlbjh.speedbutton4.enabled:=false;frmlbjh.speedbutton6.enabled:=false;
      frmlbjh.speedbutton7.enabled:=false;frmlbjh.speedbutton10.enabled:=false;
      frmlbjh.bitbtn1.enabled:=false;
      frmlbjh.dbgrideh1.readonly:=true;frmlbjh.dbgrideh2.readonly:=true;
      frmlbjh.n1.visible:=false;frmlbjh.n2.visible:=false;
    end;
  end;}
  //showmessage('0');
  frmlbjh.PageControl1.activepage:=frmlbjh.TabSheet1;
  //showmessage('1');
  frmlbjh.windowstate:=wsMaximized;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N7Click(Sender: TObject);
begin
  if frmlbfx=nil then frmlbfx:=tfrmlbfx.create(self);
  frmlbfx.show;
end;

procedure Tfrmmain.tcClick(Sender: TObject);
begin
  //if application.ActiveForm<>nil then
  //  application.activeform.close
  //else application.Terminate;
  //frmmain.close;
  if mdichildcount>0 then begin
    activemdichild.close;
  end else application.Terminate;
end;

procedure Tfrmmain.qxwhClick(Sender: TObject);
begin
  if frmqxwh=nil then frmqxwh:=tfrmqxwh.create(self);
  frmqxwh.show;
end;

procedure Tfrmmain.al_1Click(Sender: TObject);
begin
  if frmcmpl_actionlog=nil then frmcmpl_actionlog:=tfrmcmpl_actionlog.create(application);
  frmcmpl_actionlog.bringtofront;
end;

procedure Tfrmmain.BitBtn1Click(Sender: TObject);
begin
  if combobox1.text<>'' then begin
      with adoquery1 do begin
        close;
        sql.text:='select nam,passwrd,r5 from tkt_yh where upper(nam)=:nam';
        parameters[0].value:=uppercase(combobox1.text);
        open;
      end;
        if (not adoquery1.fieldbyname('passwrd').isnull) and (uppercase(adoquery1.fieldbyname('passwrd').value)=edit1.text) then
        begin
          lbluser1.Caption:=ADOQuery1.FieldByName('nam').Value;
          frmmain.mt1.visible:=true;
          frmmain.frn1.visible:=true;
          frmmain.eOrder1.visible:=true;
          frmmain.al_1.visible:=true;
          frmmain.tb_1.visible:=true;
          frmmain.tb_s1.visible:=true;
          frmmain.Yield1.visible:=true;
          frmmain.cg_fxbg.visible:=true;
          frmmain.toolbutton8.visible:=true;

          frmmain.n1.visible:=true;
          frmmain.n2.visible:=true;
          frmmain.N33.Visible:=true;
          frmmain.ToolBar1.visible:=true;
          if adoquery1.fieldbyname('r5').value=true then
          frmmain.Label1.Caption:='PAUL'
          else frmmain.label1.caption:=combobox1.text;
          frmmain.Label2.Caption:=datetimetostr(now);
          frmmain.groupbox1.visible:=false;
          //frmxtdl.close;
        end else begin
          application.messagebox('Wrong User!','Confirmation',mb_ok+mb_iconinformation);
          combobox1.setfocus;
        end;
  end;
end;

procedure Tfrmmain.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmain.CalculationRules1Click(Sender: TObject);
begin
  if frmcalc_rules=nil then frmcalc_rules:=Tfrmcalc_rules.Create(Application);
  frmcalc_rules.BringToFront;
  frmcalc_rules.WindowState:=wsMaximized;
end;

procedure Tfrmmain.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  with adoquery1 do begin
    close;
    sql.text:='select distinct upper(nam) as name from tkt_yh';
    open;
    first;
    while not eof do begin
      combobox1.items.add(trim(fieldbyname('name').value));
      next;
    end;
  end;
end;

procedure Tfrmmain.ComboBox2Change(Sender: TObject);
begin
  if combobox2.itemindex=0 then begin
    frmmain.n34.checked:=true;
  end else if combobox2.itemindex=1 then begin
    frmmain.n35.checked:=true;
  //end else if combobox2.itemindex=2 then begin
  //  frmmain.n36.checked:=true;
  end;
  frmmain.SpinEdit1.Value:=combobox2.ItemIndex+1;
  silang1.ActiveLanguage:=combobox2.ItemIndex+1;
end;

procedure Tfrmmain.delete_cutplancsv;
var
   r:TsearchRec;
   filelist:Tstringlist;
   i:integer;
begin
    filelist:=Tstringlist.create;
    if findfirst('c:\temp\csv\'+'cutplan*.csv',faanyfile,r)=0 then filelist.add(r.name);
    while findnext(r)=0 do
    filelist.add(r.name);
    findclose(r);
    for i:=0 to filelist.count-1 do
    begin
      if hoursBetween(GetFileEditTime('E:\test\'+filelist[i]),Now)>0.5  then
         begin
            try
            deletefile('c:\temp\csv\'+filelist[i]);
            except
            end;
         end;
    end;
    filelist.free;
end;

procedure Tfrmmain.eOrder1Click(Sender: TObject);
begin
  if frmeOrder=nil then frmeOrder:=TfrmeOrder.Create(Application);
  frmeOrder.BringToFront;
  frmeOrder.WindowState:=wsMaximized;
end;

procedure Tfrmmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'logouttm',ptinput);
    params.createparam(ftstring,'hostid',ptinput);
    params.createparam(ftdatetime,'logintm',ptinput);
    commandtext:='update phg_log set logouttm=:logouttm where hostid=:hostid and logintm=:logintm';
    params[0].asdatetime:=now;
    params[1].asstring:=cws1.LocalHost;
    params[2].asdatetime:=strtodatetime(label2.Caption);
    execute;
  end;
  }
  application.Terminate;
end;

procedure Tfrmmain.yhglClick(Sender: TObject);
begin
  if frmuser=nil then frmuser:=tfrmuser.create(self);
  frmuser.show;
end;

procedure Tfrmmain.N8Click(Sender: TObject);
begin
  if frmcgjh=nil then frmcgjh:=tfrmcgjh.create(self);
  {with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'nam',ptinput);
    commandtext:='select r12 from qx where nam=:nam';
    params[0].asstring:=frmxtdl.combobox1.text;
    open;
    if fieldbyname('r12').value=true then begin
      frmcgjh.dbedit3.readonly:=false;
      frmcgjh.dbedit22.readonly:=false;
      frmcgjh.dbedit23.readonly:=false;
      frmcgjh.dbrichedit1.ReadOnly:=false;
      frmcgjh.dbgrideh1.readonly:=false;
      frmcgjh.dbgrideh4.readonly:=false;
      frmcgjh.n2.visible:=true;
    end
    else begin
      frmcgjh.dbedit3.readonly:=true;
      frmcgjh.dbedit22.readonly:=true;
      frmcgjh.dbedit23.readonly:=true;
      frmcgjh.dbrichedit1.ReadOnly:=true;
      frmcgjh.dbgrideh1.readonly:=true;
      frmcgjh.dbgrideh4.readonly:=true;
      frmcgjh.n2.Visible:=false;
    end;
  end;}
  frmcgjh.show;
end;

procedure Tfrmmain.putocu1Click(Sender: TObject);
begin
  if frmpu2cuele=nil then frmpu2cuele:=Tfrmpu2cuele.Create(Application);
  frmpu2cuele.BringToFront;
  frmpu2cuele.WindowState:=wsMaximized;
end;

procedure Tfrmmain.N10Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmfcjy=nil then frmfcjy:=tfrmfcjy.create(self);
  frmfcjy.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.ToolButton2Click(Sender: TObject);
begin
  if frmfllr=nil then frmfllr:=tfrmfllr.create(self);
  frmfllr.show;
end;

procedure Tfrmmain.ToolButton3Click(Sender: TObject);
begin
  if frmxgwl=nil then frmxgwl:=tfrmxgwl.create(self);
  frmxgwl.show;
end;

procedure Tfrmmain.N14Click(Sender: TObject);
begin
  if frmsclfx=nil then frmsclfx:=tfrmsclfx.create(self);
  frmsclfx.dateedit1.Date:=date-7;
  frmsclfx.dateedit2.date:=date;
  frmsclfx.edit1.text:='';
  frmsclfx.label4.caption:='lbjh';
  frmsclfx.show;
end;

procedure Tfrmmain.N15Click(Sender: TObject);
begin
  if frmlhjl=nil then frmlhjl:=tfrmlhjl.create(self);
  frmlhjl.combobox1.text:='';
  frmlhjl.edit1.text:='';frmlhjl.edit2.text:='';
  frmlhjl.dateedit1.text:='    /  /  ';
  frmlhjl.dateedit2.text:='    /  /  ';
  frmlhjl.label6.caption:='lbjh';
  frmlhjl.show;
end;

procedure Tfrmmain.N17Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmcgbg=nil then frmcgbg:=tfrmcgbg.create(self);
  {with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'nam',ptinput);
    commandtext:='select r16 from qx where nam=:nam';
    params[0].asstring:=frmxtdl.combobox1.text;
    open;
    if fieldbyname('r16').value=true then begin
      frmcgbg.dbedit3.readonly:=false;frmcgbg.dbedit22.readonly:=false;
      frmcgbg.dbedit23.readonly:=false;frmcgbg.dbedit5.readonly:=false;
      frmcgbg.dbedit24.readonly:=false;frmcgbg.dbedit25.readonly:=false;
      frmcgbg.dbedit10.readonly:=false;frmcgbg.dbedit30.readonly:=false;
      frmcgbg.dbedit31.readonly:=false;frmcgbg.dbedit11.readonly:=false;
      frmcgbg.dbedit32.readonly:=false;frmcgbg.dbedit33.readonly:=false;
      frmcgbg.dbrichedit1.ReadOnly:=false;frmcgbg.dbgrideh4.readonly:=false;
      frmcgbg.dbcheckbox2.ReadOnly:=false;frmcgbg.dbcheckbox3.ReadOnly:=false;
      frmcgbg.dbcheckbox4.ReadOnly:=false;frmcgbg.dbcheckbox5.ReadOnly:=false;
      frmcgbg.dbcheckbox6.ReadOnly:=false;frmcgbg.dbcheckbox7.ReadOnly:=false;
      frmcgbg.dbcheckbox8.ReadOnly:=false;frmcgbg.dbcheckbox9.ReadOnly:=false;
      frmcgbg.dbcheckbox10.ReadOnly:=false;frmcgbg.dbcheckbox11.ReadOnly:=false;
      frmcgbg.dbcheckbox12.ReadOnly:=false;frmcgbg.dbcheckbox13.ReadOnly:=false;
      frmcgbg.dbcheckbox14.ReadOnly:=false;frmcgbg.dbcheckbox15.ReadOnly:=false;
      frmcgbg.dbcheckbox16.readonly:=false;frmcgbg.n2.visible:=true;
      frmcgbg.speedbutton2.Enabled:=true;frmcgbg.speedbutton3.Enabled:=true;
      frmcgbg.speedbutton4.Enabled:=true;frmcgbg.speedbutton5.Enabled:=true;
    end
    else begin
      frmcgbg.dbedit3.readonly:=true;frmcgbg.dbedit22.readonly:=true;
      frmcgbg.dbedit23.readonly:=true;frmcgbg.dbedit5.readonly:=true;
      frmcgbg.dbedit24.readonly:=true;frmcgbg.dbedit25.readonly:=true;
      frmcgbg.dbedit10.readonly:=true;frmcgbg.dbedit30.readonly:=true;
      frmcgbg.dbedit31.readonly:=true;frmcgbg.dbedit11.readonly:=true;
      frmcgbg.dbedit32.readonly:=true;frmcgbg.dbedit33.readonly:=true;
      frmcgbg.dbrichedit1.ReadOnly:=true;frmcgbg.dbgrideh4.readonly:=true;
      frmcgbg.dbcheckbox2.ReadOnly:=true;frmcgbg.dbcheckbox3.ReadOnly:=true;
      frmcgbg.dbcheckbox4.ReadOnly:=true;frmcgbg.dbcheckbox5.ReadOnly:=true;
      frmcgbg.dbcheckbox6.ReadOnly:=true;frmcgbg.dbcheckbox7.ReadOnly:=true;
      frmcgbg.dbcheckbox8.ReadOnly:=true;frmcgbg.dbcheckbox9.ReadOnly:=true;
      frmcgbg.dbcheckbox10.ReadOnly:=true;frmcgbg.dbcheckbox11.ReadOnly:=true;
      frmcgbg.dbcheckbox12.ReadOnly:=true;frmcgbg.dbcheckbox13.ReadOnly:=true;
      frmcgbg.dbcheckbox14.ReadOnly:=true;frmcgbg.dbcheckbox15.ReadOnly:=true;
      frmcgbg.dbcheckbox16.readonly:=true;frmcgbg.n2.visible:=false;
      frmcgbg.speedbutton2.Enabled:=false;frmcgbg.speedbutton3.Enabled:=false;
      frmcgbg.speedbutton4.Enabled:=false;frmcgbg.speedbutton5.Enabled:=false;
    end;
  end;}
  frmcgbg.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N18Click(Sender: TObject);
begin
  if frmsclfx=nil then frmsclfx:=tfrmsclfx.create(self);
  frmsclfx.dateedit1.Date:=date-7;
  frmsclfx.dateedit2.date:=date;
  frmsclfx.edit1.text:='';
  frmsclfx.label4.caption:='cgjh';
  frmsclfx.show;
end;

procedure Tfrmmain.N19Click(Sender: TObject);
begin
  if frmlhjl=nil then frmlhjl:=tfrmlhjl.create(self);
  frmlhjl.combobox1.text:='';
  frmlhjl.edit1.text:='';frmlhjl.edit2.text:='';
  frmlhjl.dateedit1.text:='    /  /  ';
  frmlhjl.dateedit2.text:='    /  /  ';
  //frmlhjl.label6.caption:='cgbg';
  frmlhjl.label6.caption:='lbjh';
  frmlhjl.show;
end;

procedure Tfrmmain.N20Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmwwcmj=nil then frmwwcmj:=tfrmwwcmj.create(self);
  try
    with query1 do begin
      close;
      params.clear;
      commandtext:='delete from wwcmj';
      execute;
    end;
  except
    with query1 do begin
      close;
      params.clear;
      commandtext:='create table "wwcmj"(prjno char(20),mjh char(20),wl char(20),xh integer)';
      execute;
    end;
  end;
  with frmwwcmj.query2 do begin
    close;
    params.clear;
    commandtext:='select distinct prjno,wl from cgbg3 where qr=true';
    open;
    first;
    while not eof do begin
      with frmwwcmj.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'wl',ptinput);
        commandtext:='select prjno,wl,mjh,xh from cgbg1 where cfm=false and prjno=:prjno and wl=:wl';
        params[0].asstring:=frmwwcmj.query2.fieldbyname('prjno').value;
        params[1].asstring:=frmwwcmj.query2.fieldbyname('wl').value;
        open;
        if recordcount=0 then begin
          with frmwwcmj.query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'wl',ptinput);
            commandtext:='select prjno,wl,mjh,xh from cgbg1 where prjno=:prjno and wl=:wl';
            params[0].asstring:=frmwwcmj.query2.fieldbyname('prjno').value;
            params[1].asstring:=frmwwcmj.query2.fieldbyname('wl').value;
            open;
            first;
            while not eof do begin
              with frmwwcmj.query4 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'mjh',ptinput);
                params.createparam(ftstring,'wl',ptinput);
                params.createparam(ftinteger,'xh',ptinput);
                commandtext:='insert into wwcmj(prjno,mjh,wl,xh) values(:prjno,:mjh,:wl,:xh)';
                params[0].asstring:=frmwwcmj.query3.fieldbyname('prjno').value;
                params[1].asstring:=frmwwcmj.query3.fieldbyname('mjh').value;
                params[2].asstring:=frmwwcmj.query3.fieldbyname('wl').value;
                params[3].asinteger:=frmwwcmj.query3.fieldbyname('xh').value;
                execute;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
        end
        else begin
          first;
          while not eof do begin
            with frmwwcmj.query4 do begin
              close;
              params.clear;
              params.createparam(ftstring,'prjno',ptinput);
              params.createparam(ftstring,'mjh',ptinput);
              params.createparam(ftstring,'wl',ptinput);
              params.createparam(ftinteger,'xh',ptinput);
              commandtext:='insert into wwcmj(prjno,mjh,wl,xh) values(:prjno,:mjh,:wl,:xh)';
              params[0].asstring:=frmwwcmj.query1.fieldbyname('prjno').value;
              params[1].asstring:=frmwwcmj.query1.fieldbyname('mjh').value;
              params[2].asstring:=frmwwcmj.query1.fieldbyname('wl').value;
              params[3].asinteger:=frmwwcmj.query1.fieldbyname('xh').value;
              execute;
            end;
            application.ProcessMessages;
            next;
          end;
        end;
      end;
      next;
    end;
  end;
  with frmwwcmj.query1 do begin
    close;
    params.clear;
    commandtext:='select * from wwcmj';
    open;
    if recordcount>0 then frmwwcmj.ppreport1.print;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N21Click(Sender: TObject);
var
  zds,ycs1:integer;
begin
  screen.cursor:=crHourglass;
  if frmwwclh=nil then frmwwclh:=tfrmwwclh.create(self);
  with frmwwclh.query1 do begin
    close;
    params.clear;
    commandtext:='delete from wwclh';
    execute;
    close;
    params.clear;
    params.createparam(ftdate,'rq',ptinput);
    commandtext:='select distinct prjno from cgbg1 where cfm=true and rq>=:rq';
    params[0].asdate:=date-180;
    open;
    first;
    while not eof do begin
      with frmwwclh.query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        commandtext:='select distinct prjno,gch,zdh,kh,sh from fcjy3 where prjno=:prjno';
        params[0].asstring:=frmwwclh.query1.fieldbyname('prjno').value;
        open;
        first;
        while not eof do begin
          with frmwwclh.query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            commandtext:='select * from lhjl where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by qhs';
            params[0].asstring:=frmwwclh.query2.fieldbyname('prjno').value;
            params[1].asstring:=frmwwclh.query2.fieldbyname('gch').value;
            params[2].asstring:=frmwwclh.query2.fieldbyname('zdh').value;
            params[3].asstring:=frmwwclh.query2.fieldbyname('kh').value;
            params[4].asstring:=frmwwclh.query2.fieldbyname('sh').value;
            open;
            if recordcount=0 then begin
              with frmwwclh.query4 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                commandtext:='insert into wwclh(prjno,gch,zdh,kh,sh,zds,ycs,lhs,lhxs,qhs,rq,tm) '
                            +'values(:prjno,:gch,:zdh,:kh,:sh,0,0,0,0,0,date,time)';
                params[0].asstring:=frmwwclh.query2.fieldbyname('prjno').value;
                params[1].asstring:=frmwwclh.query2.fieldbyname('gch').value;
                params[2].asstring:=frmwwclh.query2.fieldbyname('zdh').value;
                params[3].asstring:=frmwwclh.query2.fieldbyname('kh').value;
                params[4].asstring:=frmwwclh.query2.fieldbyname('sh').value;
                execute;
              end;
            end
            else begin
              if fieldbyname('qhs').value>0 then begin
               with frmwwclh.query4 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftinteger,'zds',ptinput);
                params.createparam(ftinteger,'ycs',ptinput);
                params.createparam(ftinteger,'lhs',ptinput);
                params.createparam(ftinteger,'lhxs',ptinput);
                params.createparam(ftinteger,'qhs',ptinput);
                params.createparam(ftdate,'rq',ptinput);
                params.createparam(fttime,'tm',ptinput);
                commandtext:='insert into wwclh(prjno,gch,zdh,kh,sh,zds,ycs,lhs,lhxs,qhs,rq,tm) '
                            +'values(:prjno,:gch,:zdh,:kh,:sh,:zds,:ycs,:lhs,:lhxs,:qhs,:rq,:tm)';
                params[0].asstring:=frmwwclh.query3.fieldbyname('prjno').value;
                params[1].asstring:=frmwwclh.query3.fieldbyname('gch').value;
                params[2].asstring:=frmwwclh.query3.fieldbyname('zdh').value;
                params[3].asstring:=frmwwclh.query3.fieldbyname('kh').value;
                params[4].asstring:=frmwwclh.query3.fieldbyname('sh').value;
                params[5].asinteger:=frmwwclh.query3.fieldbyname('zds').value;
                params[6].asinteger:=frmwwclh.query3.fieldbyname('ycs').value;
                params[7].asinteger:=frmwwclh.query3.fieldbyname('lhxs').value;
                params[8].asinteger:=frmwwclh.query3.fieldbyname('qhs').value;
                params[9].asinteger:=fieldbyname('ycs').value-fieldbyname('qhs').value;
                params[10].asdate:=frmwwclh.query3.fieldbyname('rq').value;
                params[11].astime:=frmwwclh.query3.fieldbyname('tm').value;
                execute;
               end;
              end;
            end;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with frmwwclh.query1 do begin
    close;
    params.clear;
    commandtext:='select * from wwclh where zds=0';
    open;
    first;
    while not eof do begin
      with frmwwclh.query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select zds from fczd1 where gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by zds desc';
        params[0].asstring:=frmwwclh.query1.fieldbyname('gch').value;
        params[1].asstring:=frmwwclh.query1.fieldbyname('zdh').value;
        params[2].asstring:=frmwwclh.query1.fieldbyname('kh').value;
        params[3].asstring:=frmwwclh.query1.fieldbyname('sh').value;
        open;
        if not fieldbyname('zds').isnull then zds:=fieldbyname('zds').value
        else zds:=0;
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select b.wl,sum(b.mjjs) as ycs from cgbg1 a,cgbg2 b where b.prjno=a.prjno and b.wl=a.wl and b.xh=a.xh and a.cfm=true and a.prjno=:prjno and b.kh=:kh and b.sh=:sh group by b.wl order by ycs';
        params[0].asstring:=frmwwclh.query1.fieldbyname('prjno').value;
        params[1].asstring:=frmwwclh.query1.fieldbyname('kh').value;
        params[2].asstring:=frmwwclh.query1.fieldbyname('sh').value;
        open;
        if not fieldbyname('ycs').isnull then ycs1:=fieldbyname('ycs').value
        else ycs1:=0;
      end;
      with frmwwclh.query3 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'zds',ptinput);
        params.createparam(ftinteger,'ycs',ptinput);
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='update wwclh set zds=:zds,ycs=:ycs,qhs=ycs where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
        params[0].asinteger:=zds;
        params[1].asinteger:=ycs1;
        params[2].asstring:=frmwwclh.query1.fieldbyname('prjno').value;
        params[3].asstring:=frmwwclh.query1.fieldbyname('gch').value;
        params[4].asstring:=frmwwclh.query1.fieldbyname('zdh').value;
        params[5].asstring:=frmwwclh.query1.fieldbyname('kh').value;
        params[6].asstring:=frmwwclh.query1.fieldbyname('sh').value;
        execute;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with frmwwclh.query1 do begin
    close;
    params.clear;
    commandtext:='select * from wwclh where zds>0';
    open;
    if recordcount>0 then frmwwclh.ppreport1.print;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N22Click(Sender: TObject);
begin
  if frmdrkc=nil then frmdrkc:=tfrmdrkc.create(self);
  frmdrkc.dateedit1.date:=date-1;
  frmdrkc.dateedit2.date:=date;
  frmdrkc.show;
end;

procedure Tfrmmain.N23Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmmjfd=nil then frmmjfd:=tfrmmjfd.create(self);
  frmmjfd.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.ToolButton5Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmcgd=nil then frmcgd:=tfrmcgd.create(self);
  frmcgd.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N27Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmzmzy=nil then frmzmzy:=tfrmzmzy.create(self);
  frmzmzy.edit1.text:='';
  frmzmzy.edit2.text:='';
  frmzmzy.label3.caption:='0';
  frmzmzy.edit1.readonly:=false;
  frmzmzy.edit2.readonly:=false;
  frmzmzy.SpeedButton1.visible:=true;
  frmzmzy.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N28Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmzmd=nil then frmzmd:=tfrmzmd.create(self);
  frmzmd.edit1.text:='';
  frmzmd.edit2.text:='';
  frmzmd.edit3.text:='';
  frmzmd.edit4.text:='';
  frmzmd.dateedit1.date:=0;
  frmzmd.dateedit2.date:=0;
  frmzmd.maskedit1.text:='  :  :  ';
  frmzmd.maskedit2.text:='  :  :  ';
  frmzmd.opt1.checked:=true;
  frmzmd.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N29Click(Sender: TObject);
var
  str1,str2:string;
begin
  screen.cursor:=crHourglass;
  if frmxsjlb=nil then frmxsjlb:=tfrmxsjlb.create(self);
  frmxsjlb.edit1.text:='';
  frmxsjlb.edit2.text:='';
  frmxsjlb.edit3.text:='';
  frmxsjlb.edit4.text:='';
  frmxsjlb.opt1.Checked:=true;
  frmxsjlb.mxsb.active:=false;
  frmxsjlb.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.N32Click(Sender: TObject);
begin
  if frmxgzd=nil then frmxgzd:=tfrmxgzd.create(self);
  frmxgzd.combobox1.text:='';
  frmxgzd.combobox2.text:='';
  frmxgzd.edit1.text:='';
  frmxgzd.show;
end;

procedure Tfrmmain.FormShow(Sender: TObject);
begin
  delete_cutplancsv;

  frn1.visible:=false;
  mt1.visible:=false;
  eOrder1.visible:=false;
  frmmain.al_1.visible:=false;
  frmmain.tb_1.visible:=false;
  frmmain.tb_s1.visible:=false;
  Yield1.visible:=false;
  cg_fxbg.visible:=false;
  toolbutton8.visible:=false;

  n1.visible:=false;
  n2.visible:=false;
  n3.visible:=false;
  n11.visible:=false;
  n16.visible:=false;
  n23.visible:=false;
  n25.visible:=false;
  n33.Visible:=false;
  toolbar1.visible:=false;
  //if frmxtdl=nil then frmxtdl:=tfrmxtdl.create(application);
  //frmxtdl.bringtofront;
  //frmxtdl.WindowState:=wsNormal;
  combobox1.setfocus;
  groupbox1.Left:=(screen.Width-groupbox1.Width) div 2;
  groupbox1.top:=(screen.height-groupbox1.Height) div 2;
end;

function Tfrmmain.GetFileEditTime(const FileName: String): TDateTime;
var
  FileTime: TFileTime;
  LocalFileTime: TFileTime;
  hFile: THandle;
  SystemTime: TSystemTime;
begin
  Result := 0;
  FileTime.dwLowDateTime := 0;
  FileTime.dwHighDateTime := 0;
  hFile := FileOpen(FileName, fmShareDenyNone);
  try
    if hFile <> 0 then
    begin
      Windows.GetFileTime(hFile, nil, nil, @FileTime);
      FileTimeToLocalFileTime(FileTime, LocalFileTime);
      FileTime := LocalFileTime;
    end;
  finally
    FileClose(hFile);
  end;
  if FileTimeToSystemTime(FileTime, SystemTime) then
    Result := SystemTimeToDateTime(SystemTime);
end;

procedure Tfrmmain.N12Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmfllr=nil then frmfllr:=tfrmfllr.create(application);
  frmfllr.bringtofront;
  frmfllr.windowstate:=wsmaximized;
  screen.cursor:=crDefault;
end;

procedure Tfrmmain.FormCreate(Sender: TObject);
begin
  cws1:=TClientWinSocket.Create(0);
  spinedit1.Value:=1;
  siLang1.LoadAllFromFile('cutplan.sil',false);
end;

procedure Tfrmmain.SocketConnection1BeforeConnect(Sender: TObject);
var
  s1:string;
begin
  memo1.Lines.clear;
  memo1.Lines.LoadFromFile('conip.ini');
  s1:=memo1.Lines.Strings[0];
  if pos(' ',s1)>0 then s1:=copy(s1,1,pos(' ',s1)-1);
  socketconnection1.Address:=s1;
  socketconnection1.ServerName:=memo1.Lines.Strings[2];
end;

procedure Tfrmmain.SpinEdit1Change(Sender: TObject);
var
  i:integer;
begin
  silang1.ActiveLanguage:=spinedit1.Value;
  if frmmain.ActiveMDIChild<>nil then begin
    for i:=0 to frmmain.ActiveMDIChild.ComponentCount-1 do begin
      if frmmain.ActiveMDIChild.Components[i].Name='siLang1' then
      TsiLang(frmmain.ActiveMDIChild.Components[i]).ActiveLanguage:=spinedit1.Value;
    end;
  end;
end;

procedure Tfrmmain.N34Click(Sender: TObject);
begin
  spinedit1.Value:=(sender as TMenuItem).Tag;
end;

procedure Tfrmmain.N36Click(Sender: TObject);
begin
  if frmfrn=nil then frmfrn:=tfrmfrn.create(application);
  frmfrn.WindowState:=wsMaximized;
  frmfrn.BringToFront;
end;

procedure Tfrmmain.N37Click(Sender: TObject);
begin
  if frmfcjh=nil then frmfcjh:=Tfrmfcjh.Create(Application);
  frmfcjh.BringToFront;
  frmfcjh.WindowState:=wsMaximized;
end;

procedure Tfrmmain.Yield1Click(Sender: TObject);
begin
  if frmMarking_Yield=nil then frmMarking_Yield:=TfrmMarking_Yield.create(application);
  frmMarking_Yield.WindowState:=wsMaximized;
  frmMarking_Yield.BringToFront;
end;

procedure Tfrmmain.ADOConnection1BeforeConnect(Sender: TObject);
begin
  ADOConnection1.ConnectionString:='FILE NAME='+extractfilepath(application.ExeName)+'DBLink_cf.udl';
end;

procedure Tfrmmain.alc1Click(Sender: TObject);
begin
  if frmal_category=nil then frmal_category:=Tfrmal_category.create(application);
  frmal_category.WindowState:=wsMaximized;
  frmal_category.BringToFront;
end;

end.
