unit scxdyformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppVar,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppViewr, myChkBox, ExtCtrls,
  ppStrtch, ppMemo, ppParameter;

type
  Tfrmscxdy = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    opt1: TRadioButton;
    opt2: TRadioButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    title001: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    cust1: TppLabel;
    tshop1: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel15: TppLabel;
    ppShape2: TppShape;
    ppLabel16: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    cust2: TppLabel;
    tshop2: TppLabel;
    ppLabel23: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText13: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText14: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel27: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine3: TppLine;
    ppLine4: TppLine;
    opt3: TRadioButton;
    Label5: TLabel;
    ComboBox3: TComboBox;
    ppDBText15: TppDBText;
    Label6: TLabel;
    ComboBox4: TComboBox;
    Label7: TLabel;
    ComboBox5: TComboBox;
    ppSummaryBand2: TppSummaryBand;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBText3: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBText4: TppDBText;
    ppLabel11: TppLabel;
    ppLine8: TppLine;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel13: TppLabel;
    tplant1: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText22: TppDBText;
    ppLabel14: TppLabel;
    ppDBText23: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText24: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine13: TppLine;
    ppDBText25: TppDBText;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine14: TppLine;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText17: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel46: TppLabel;
    ppDBText19: TppDBText;
    ppLine17: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppLabel50: TppLabel;
    ppDBText20: TppDBText;
    ppLabel51: TppLabel;
    ppDBText29: TppDBText;
    ppLine18: TppLine;
    ppLabel57: TppLabel;
    ppDBText30: TppDBText;
    ppLabel60: TppLabel;
    ppLine19: TppLine;
    ppLabel61: TppLabel;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel33: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLine20: TppLine;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppLabel9: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText7: TppDBText;
    ppLabel12: TppLabel;
    ppDBText21: TppDBText;
    xh1: TRadioGroup;
    ppLabel1: TppLabel;
    ppDBText31: TppDBText;
    act01: TppLabel;
    ppMemo1: TppMemo;
    ppShape3: TppShape;
    sectox01: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmscxdy: Tfrmscxdy;

implementation

uses mainformu, tbfx1formu;

{$R *.dfm}

procedure Tfrmscxdy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmtbfx1<>nil then frmtbfx1:=nil;
  action:=cafree;
  frmscxdy:=nil;
end;

procedure Tfrmscxdy.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmscxdy.BitBtn1Click(Sender: TObject);
var
  dt1,dt2:tdatetime;
  y1,m1,d1:word;
  str1:string;
begin
  screen.cursor:=crHourglass;
  if opt1.Checked then begin
    if xh1.ItemIndex=0 then str1:='  - All'
    else if xh1.ItemIndex=1 then str1:='  - Active'
    else if xh1.ItemIndex=2 then str1:='  - Inactive';
    with query1 do begin
      close;
      params.clear;
      if xh1.ItemIndex=0 then
      commandtext:='select * from tblline where tshop>'''''
      else if xh1.ItemIndex=1 then
      commandtext:='select * from tblline where tshop>'''' and lactive=1'
      else if xh1.ItemIndex=2 then
      commandtext:='select * from tblline where tshop>'''' and lactive=0';
      if combobox1.text>'' then commandtext:=commandtext+' and ldesc='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox4.text>'' then commandtext:=commandtext+' and tplant='''+combobox4.text+''''
      else commandtext:=commandtext+' and tplant in (''SL'',''KB'')';
      if combobox5.text>'' then commandtext:=commandtext+' and ttype='''+combobox5.Text+'''';
      if combobox6.text>'' then commandtext:=commandtext+' and ldesc1='''+combobox6.text+'''';
      if combobox7.text>'' then commandtext:=commandtext+' and ttype1='''+combobox7.text+'''';
      commandtext:=commandtext+' order by tplant,tshop,pline';
      open;
      if recordcount>0 then begin
        if combobox2.text>'' then title001.Caption:='Workshop''s Line Profile'+str1
        else if combobox4.Text>'' then title001.Caption:='Factory''s Line profile'+str1;
        cust1.Caption:=combobox1.text;
        tshop1.Caption:=combobox2.Text;
        tplant1.Caption:=combobox4.text;
        ppReport1.print;
      end;
    end;
  end else if opt2.Checked then begin
    decodedate(date,y1,m1,d1);
    if dateedit1.date>0 then dt1:=dateedit1.date
    else dt1:=encodedate(y1,1,1);
    if dateedit2.Date>0 then dt2:=dateedit2.date
    else dt2:=encodedate(y1,12,31);
    with query1 do begin
      close;
      params.clear;
      if combobox1.text>'' then begin
        if combobox2.text>'' then begin
          params.createparam(ftstring,'ldesc',ptinput);
          params.createparam(ftstring,'tshop',ptinput);
          params.createparam(ftdate,'dt1',ptinput);
          params.createparam(ftdate,'dt2',ptinput);
          commandtext:='select distinct a.pline,a.ldesc,a.tshop,b.wkno,sum(b.secto*b.workert) as tcap from tblline a,week52 b '
                      +'where a.pline=b.line and a.ldesc=:ldesc and a.tshop=:tshop and b.date1>=:dt1 and b.date1<=:dt2 '
                      +'group by a.pline,a.ldesc,a.tshop,b.wkno order by a.ldesc,a.tshop,a.pline,b.wkno';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          params[2].asdate:=dt1;
          params[3].asdate:=dt2;
          open;
        end else begin
          params.createparam(ftstring,'ldesc',ptinput);
          params.createparam(ftdate,'dt1',ptinput);
          params.createparam(ftdate,'dt2',ptinput);
          commandtext:='select distinct a.pline,a.ldesc,a.tshop,b.wkno,sum(b.secto*b.workert) as tcap from tblline a,week52 b '
                      +'where a.pline=b.line and a.ldesc=:ldesc and b.date1>=:dt1 and b.date1<=:dt2 '
                      +'group by a.pline,a.ldesc,a.tshop,b.wkno order by a.ldesc,a.tshop,a.pline,b.wkno';
          params[0].asstring:=combobox1.text;
          params[1].asdate:=dt1;
          params[2].asdate:=dt2;
          open;
        end;
      end else begin
        if combobox2.text>'' then begin
          params.createparam(ftstring,'tshop',ptinput);
          params.createparam(ftdate,'dt1',ptinput);
          params.createparam(ftdate,'dt2',ptinput);
          commandtext:='select distinct a.pline,a.ldesc,a.tshop,b.wkno,sum(b.secto*b.workert) as tcap from tblline a,week52 b '
                      +'where a.pline=b.line and a.tshop=:tshop and b.date1>=:dt1 and b.date1<=:dt2 '
                      +'group by a.pline,a.ldesc,a.tshop,b.wkno order by a.ldesc,a.tshop,a.pline,b.wkno';
          params[0].asstring:=combobox2.text;
          params[1].asdate:=dt1;
          params[2].asdate:=dt2;
          open;
        end else begin
          params.createparam(ftdate,'dt1',ptinput);
          params.createparam(ftdate,'dt2',ptinput);
          commandtext:='select distinct a.pline,a.ldesc,a.tshop,b.wkno,sum(b.secto*b.workert) as tcap from tblline a,week52 b '
                      +'where a.pline=b.line and b.date1>=:dt1 and b.date1<=:dt2 '
                      +'group by a.pline,a.ldesc,a.tshop,b.wkno order by a.ldesc,a.tshop,a.pline,b.wkno';
          params[0].asdate:=dt1;
          params[1].asdate:=dt2;
          open;
        end;
      end;
      if recordcount>0 then begin
        cust2.Caption:=combobox1.Text;
        tshop2.Caption:=combobox2.Text;
        ppReport2.Print;
      end;
    end;
  end else if opt3.Checked then begin
    decodedate(date,y1,m1,d1);
    if dateedit1.date>0 then dt1:=dateedit1.date
    else dt1:=encodedate(y1,1,1);
    if dateedit2.Date>0 then dt2:=dateedit2.date
    else dt2:=encodedate(y1,12,31);
    if combobox3.text>'' then begin
      {
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'dt1',ptinput);
        params.createparam(ftdate,'dt2',ptinput);
        commandtext:='select distinct line,wkno,sum(secto*workert) as tcap from week52 where date1>=:dt1 and date1<=:dt2 group by line,wkno';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        open;
        if recordcount>0 then begin
        end;
      end;
      }
      if frmtbfx1=nil then frmtbfx1:=tfrmtbfx1.Create(nil);
      with frmtbfx1.Query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'dt1',ptinput);
        params.createparam(ftdate,'dt2',ptinput);
        params.createparam(ftstring,'line',ptinput);
        commandtext:='select distinct line,wkno,sum(secto*workert) as tcap from week52 where date1>=:dt1 and date1<=:dt2 and line=:line group by line,wkno';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=combobox3.text;
        open;
        if recordcount>0 then begin
          //frmtbfx1.hd2.Caption:='( 生產線: '+combobox3.Text+' )';
          //frmtbfx1.QuickRep1.Preview;
        end;
      end;
    end else begin
      showmessage('請選擇拉名!');
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmscxdy.FormShow(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  combobox1.items.clear;
  combobox2.items.clear;
  combobox3.items.clear;
  combobox4.items.clear;
  combobox5.items.clear;
  combobox6.items.clear;
  combobox7.items.clear;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'ldesc',ptinput);
    commandtext:='select distinct ldesc from tblline where (ldesc is not null) and (ldesc>:ldesc)';
    params[0].asstring:='';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('ldesc').value);
      application.ProcessMessages;
      next;
    end;
    close;
    params.clear;
    params.createparam(ftstring,'tshop',ptinput);
    commandtext:='select distinct tshop from tblline where (tshop is not null) and (tshop>:tshop)';
    params[0].asstring:='';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where (pline is not null)';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
    close;
    params.clear;
    commandtext:='select distinct tplant from tblline where (tplant is not null)';
    open;
    first;
    while not eof do begin
      combobox4.items.add(fieldbyname('tplant').value);
      application.ProcessMessages;
      next;
    end;
    close;
    params.clear;
    commandtext:='select distinct ttype from tblline where (ttype is not null)';
    open;
    first;
    while not eof do begin
      combobox5.items.add(fieldbyname('ttype').value);
      application.ProcessMessages;
      next;
    end;
    close;
    params.clear;
    params.createparam(ftstring,'ldesc',ptinput);
    commandtext:='select distinct ldesc1 from tblline where (ldesc1 is not null) and (ldesc1>:ldesc)';
    params[0].asstring:='';
    open;
    first;
    while not eof do begin
      combobox6.items.add(fieldbyname('ldesc1').value);
      application.ProcessMessages;
      next;
    end;
    close;
    params.clear;
    commandtext:='select distinct ttype1 from tblline where (ttype1 is not null)';
    open;
    first;
    while not eof do begin
      combobox7.items.add(fieldbyname('ttype1').value);
      application.ProcessMessages;
      next;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmscxdy.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmscxdy.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmscxdy.ppSummaryBand2BeforePrint(Sender: TObject);
var
  act001,inact001:integer;
  n1,n2:double;
begin
    with query2 do begin
      close;
      params.clear;
      if xh1.ItemIndex=0 then
      commandtext:='select count(*) as cnt from tblline where tshop>'''''
      else if xh1.ItemIndex=1 then
      commandtext:='select count(*) as cnt from tblline where tshop>'''' and lactive=1'
      else if xh1.ItemIndex=2 then
      commandtext:='select count(*) as cnt from tblline where tshop>'''' and lactive=0';
      if combobox1.text>'' then commandtext:=commandtext+' and ldesc='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox4.text>'' then commandtext:=commandtext+' and tplant='''+combobox4.text+''''
      else commandtext:=commandtext+' and tplant in (''SL'',''KB'')';
      if combobox5.text>'' then commandtext:=commandtext+' and ttype='''+combobox5.Text+'''';
      if combobox6.text>'' then commandtext:=commandtext+' and ldesc1='''+combobox6.text+'''';
      if combobox7.text>'' then commandtext:=commandtext+' and ttype1='''+combobox7.text+'''';
      commandtext:=commandtext+' and lactive=1';
      open;
      if not fieldbyname('cnt').isnull then act001:=fieldbyname('cnt').value else act001:=0;//act01.Caption:='Active: '+fieldbyname('cnt').asstring
      //else act01.Caption:='Active: 0';
    end;
    with query2 do begin
      close;
      params.clear;
      if xh1.ItemIndex=0 then
      commandtext:='select count(*) as cnt from tblline where tshop>'''''
      else if xh1.ItemIndex=1 then
      commandtext:='select count(*) as cnt from tblline where tshop>'''' and lactive=1'
      else if xh1.ItemIndex=2 then
      commandtext:='select count(*) as cnt from tblline where tshop>'''' and lactive=0';
      if combobox1.text>'' then commandtext:=commandtext+' and ldesc='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox4.text>'' then commandtext:=commandtext+' and tplant='''+combobox4.text+''''
      else commandtext:=commandtext+' and tplant in (''SL'',''KB'')';
      if combobox5.text>'' then commandtext:=commandtext+' and ttype='''+combobox5.Text+'''';
      if combobox6.text>'' then commandtext:=commandtext+' and ldesc1='''+combobox6.text+'''';
      if combobox7.text>'' then commandtext:=commandtext+' and ttype1='''+combobox7.text+'''';
      commandtext:=commandtext+' and lactive=0';
      open;
      if not fieldbyname('cnt').isnull then inact001:=fieldbyname('cnt').value else inact001:=0; //inact01.Caption:='Inactive: '+fieldbyname('cnt').asstring
      //else inact01.Caption:='Inactive: 0';
    end;
    act01.Caption:='# of lines:    Active: '+inttostr(act001)+'    Inactive: '+inttostr(inact001)+'    Ttl: '+inttostr(act001+inact001);
    with query2 do begin
      close;
      params.clear;
      if xh1.ItemIndex=0 then
      commandtext:='select sum(workert) as n1,sum(workero) as n2 from tblline where tshop>'''''
      else if xh1.ItemIndex=1 then
      commandtext:='select  sum(workert) as n1,sum(workero) as n2 from tblline where tshop>'''' and lactive=1'
      else if xh1.ItemIndex=2 then
      commandtext:='select  sum(workert) as n1,sum(workero) as n2 from tblline where tshop>'''' and lactive=0';
      if combobox1.text>'' then commandtext:=commandtext+' and ldesc='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox4.text>'' then commandtext:=commandtext+' and tplant='''+combobox4.text+''''
      else commandtext:=commandtext+' and tplant in (''SL'',''KB'')';
      if combobox5.text>'' then commandtext:=commandtext+' and ttype='''+combobox5.Text+'''';
      if combobox6.text>'' then commandtext:=commandtext+' and ldesc1='''+combobox6.text+'''';
      if combobox7.text>'' then commandtext:=commandtext+' and ttype1='''+combobox7.text+'''';
      open;
      if not fieldbyname('n1').isnull then n1:=fieldbyname('n1').value else n1:=0;
      if not fieldbyname('n2').isnull then n2:=fieldbyname('n2').value else n2:=0;
    end;
    act01.Caption:=act01.Caption+'      Ttl of stationed wf: '+formatfloat('#0',n1)+'    Ttl of curr wf: '+formatfloat('#0',n2)+'    Ttl over/shortage wf: '+formatfloat('#0',n2-n1);
end;

procedure Tfrmscxdy.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if query1.fieldbyname('tplant').value='KB' then sectox01.Caption:='na' else sectox01.Caption:=query1.fieldbyname('sectox').asstring;
end;

end.
