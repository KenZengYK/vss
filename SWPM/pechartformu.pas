unit pechartformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, Mask, rxToolEdit, ppCtrls, ppBands,
  ppClass, myChkBox, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, DB, DBClient, dateutils, ppParameter;

type
  Tfrmpechart = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    xh1: TRadioButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    xh2: TRadioButton;
    Edit1: TSpinEdit;
    Edit2: TSpinEdit;
    Edit3: TSpinEdit;
    Edit4: TSpinEdit;
    xh3: TRadioButton;
    Edit5: TSpinEdit;
    Edit6: TSpinEdit;
    Edit7: TSpinEdit;
    Edit8: TSpinEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppDBPipeline1ppField15: TppField;
    ppDBPipeline1ppField16: TppField;
    ppDBPipeline1ppField17: TppField;
    ppDBPipeline1ppField18: TppField;
    ppDBPipeline1ppField19: TppField;
    ppDBPipeline1ppField20: TppField;
    ppDBPipeline1ppField21: TppField;
    ppDBPipeline1ppField22: TppField;
    ppDBPipeline1ppField23: TppField;
    ppDBPipeline1ppField24: TppField;
    ppDBPipeline1ppField25: TppField;
    ppDBPipeline1ppField26: TppField;
    ppDBPipeline1ppField27: TppField;
    ppDBPipeline1ppField28: TppField;
    ppDBPipeline1ppField29: TppField;
    ppDBPipeline1ppField30: TppField;
    ppDBPipeline1ppField31: TppField;
    ppDBPipeline1ppField32: TppField;
    ppDBPipeline1ppField33: TppField;
    ppDBPipeline1ppField34: TppField;
    ppDBPipeline1ppField35: TppField;
    ppDBPipeline1ppField36: TppField;
    ppDBPipeline1ppField37: TppField;
    ppDBPipeline1ppField38: TppField;
    ppDBPipeline1ppField39: TppField;
    ppDBPipeline1ppField40: TppField;
    ppDBPipeline1ppField41: TppField;
    ppDBPipeline1ppField42: TppField;
    ppDBPipeline1ppField43: TppField;
    ppDBPipeline1ppField44: TppField;
    ppDBPipeline1ppField45: TppField;
    ppDBPipeline1ppField46: TppField;
    ppDBPipeline1ppField47: TppField;
    ppDBPipeline1ppField48: TppField;
    ppDBPipeline1ppField49: TppField;
    ppDBPipeline1ppField50: TppField;
    ppDBPipeline1ppField51: TppField;
    ppDBPipeline1ppField52: TppField;
    ppDBPipeline1ppField53: TppField;
    ppDBPipeline1ppField54: TppField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine2: TppLine;
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
    ppLine22: TppLine;
    ppLabel3: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine3: TppLine;
    ppLine23: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel20: TppLabel;
    fty001: TppLabel;
    shop001: TppLabel;
    ppLabel24: TppLabel;
    date001: TppLabel;
    ppLine30: TppLine;
    ppLabel67: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel72: TppLabel;
    ppLabel75: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel7: TppLabel;
    ppLine8: TppLine;
    ppLabel85: TppLabel;
    ppLine9: TppLine;
    ppLabel88: TppLabel;
    ppLine34: TppLine;
    ppLabel90: TppLabel;
    ppLine35: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLabel14: TppLabel;
    ppLine20: TppLine;
    ppLabel28: TppLabel;
    ppLabel71: TppLabel;
    ppLabel13: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel73: TppLabel;
    ppLabel98: TppLabel;
    ppLine21: TppLine;
    ppLabel99: TppLabel;
    ppLine36: TppLine;
    ppLabel16: TppLabel;
    date002: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape10: TppShape;
    ppShape8: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape13: TppShape;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText25: TppDBText;
    ppDBText31: TppDBText;
    ppDBText23: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppLabel15: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText32: TppDBText;
    ppDBText34: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppShape14: TppShape;
    ppDBText1: TppDBText;
    eff2002: TppLabel;
    date1001: TppLabel;
    ppDBText2: TppDBText;
    dbxl01: TppLabel;
    pcflag1: TppLabel;
    scqty01: TppLabel;
    bal001: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    total001: TppLabel;
    ppLabel89: TppLabel;
    ppLabel93: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLabel6: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    ppDBCalc19: TppDBCalc;
    dbxl02: TppLabel;
    lstr01: TppLabel;
    trs01: TppLabel;
    sjrs101: TppLabel;
    sjrs201: TppLabel;
    sjrs01: TppLabel;
    sjyc01: TppLabel;
    Query3: TClientDataSet;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    ComboBox3: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure xh3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure calc_wkno1(const TM: TDateTime);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpechart: Tfrmpechart;

implementation

uses mainformu, pechart1formu;

{$R *.dfm}

procedure Tfrmpechart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmpechart1<>nil then frmpechart1:=nil;
  action:=cafree;
  frmpechart:=nil;
end;

procedure Tfrmpechart.FormShow(Sender: TObject);
begin
  combobox2.items.clear;
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct substr(j_no,1,4) as cust from tblshedule where yzh=0';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where lactive=1 and tshop is not null';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
  dateedit1.date:=date;
  dateedit2.date:=date;
  edit1.Value:=yearof(date);
  edit2.Value:=weekof(date);
  edit3.Value:=yearof(date);
  edit4.Value:=weekof(date);
  edit5.value:=yearof(date);
  edit6.Value:=monthof(date);
  edit7.Value:=yearof(date);
  edit8.Value:=monthof(date);
  xh1.Checked:=true;
  dateedit1.Enabled:=true;
  dateedit2.Enabled:=true;
  edit1.Enabled:=false;
  edit2.Enabled:=false;
  edit3.Enabled:=false;
  edit4.Enabled:=false;
  edit5.Enabled:=false;
  edit6.Enabled:=false;
  edit7.Enabled:=false;
  edit8.Enabled:=false;
end;

procedure Tfrmpechart.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    dateedit1.Enabled:=true;
    dateedit2.Enabled:=true;
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    edit5.Enabled:=false;
    edit6.Enabled:=false;
    edit7.Enabled:=false;
    edit8.Enabled:=false;
  end;
end;

procedure Tfrmpechart.xh2Click(Sender: TObject);
begin
  if xh2.Checked then begin
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    edit1.Enabled:=true;
    edit2.Enabled:=true;
    edit3.Enabled:=true;
    edit4.Enabled:=true;
    edit5.Enabled:=false;
    edit6.Enabled:=false;
    edit7.Enabled:=false;
    edit8.Enabled:=false;
  end;
end;

procedure Tfrmpechart.xh3Click(Sender: TObject);
begin
  if xh3.Checked then begin
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    edit5.Enabled:=true;
    edit6.Enabled:=true;
    edit7.Enabled:=true;
    edit8.Enabled:=true;
  end;
end;

procedure Tfrmpechart.BitBtn2Click(Sender: TObject);
var
  tm:tdatetime;
  s1,s2,s3,s4:string;
  mi1,ma1,mi2,ma2:integer;
  i:integer;
  dt1,dt2:tdate;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
  if xh1.Checked then begin
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date;
  end else if xh2.Checked then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as dt1 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit1.Value;
      params[1].asinteger:=edit2.value;
      open;
      dt1:=fieldbyname('dt1').value;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit3.Value;
      params[1].asinteger:=edit4.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end else if xh3.Checked then begin
    dt1:=encodedate(edit5.value,edit6.value,1);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and f_month(date1)=:x2';
      params[0].asinteger:=edit7.Value;
      params[1].asinteger:=edit8.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      commandtext:='execute procedure sp_gen_pechart_new(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.Text;
      params[2].asstring:=combobox3.text;
      params[3].asdate:=dt1;
      params[4].asdate:=dt2;
      if xh1.Checked then params[5].asinteger:=1
      else if xh2.Checked then params[5].asinteger:=2
      else if xh3.Checked then params[5].asinteger:=3;
      execute;
    end;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select min(pe) as x1,max(pe) as x2 from pe_tmp_03 where tm=:x1';
      params[0].asdatetime:=tm;
      open;
      if fieldbyname('x1').value>=5 then
      mi1:=(round(fieldbyname('x1').value-5) div 10) *10
      else mi1:=(round(fieldbyname('x1').value-0) div 10) *10;
      ma1:=(round(fieldbyname('x2').value+10) div 10) *10;
    end;
    if frmpechart1=nil then frmpechart1:=tfrmpechart1.Create(nil);
    frmpechart1.dbchart1.Title.Text.clear;
    frmpechart1.dbchart2.Title.Text.Clear;
    frmpechart1.dbchart1.Title.Text.add('Productivity Eff %');
    frmpechart1.dbchart2.Title.Text.add('Productivity Eff %');
    frmpechart1.DBChart1.LeftAxis.Maximum:=ma1;
    frmpechart1.DBChart1.LeftAxis.Minimum:=mi1;
    frmpechart1.DBChart2.LeftAxis.Maximum:=ma1;
    frmpechart1.DBChart2.LeftAxis.Minimum:=mi1;
    with frmpechart1.Query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      if combobox3.text>'' then
        commandtext:='select * from pe_tmp_03 where tm=:x1 and seq>-1 and tshop<>'''+combobox3.Text+' '' order by seq,tshop'
      else if combobox1.text>'' then
        commandtext:='select * from pe_tmp_03 where tm=:x1 and seq>-1 and substr(tshop,1,3)<>'''+combobox1.Text+' '' order by seq,tshop';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmpechart1.Query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from pe_tmp_03 where tm=:x1 and seq=-1';
      params[0].asdatetime:=tm;
      open;
    end;
    frmpechart1.dbchart1.Series[0].Pen.Width:=5;
    frmpechart1.dbchart2.Series[0].Pen.Width:=5;
    for i:=1 to frmpechart1.dbchart2.SeriesCount-1 do begin
      frmpechart1.dbchart2.Series[i].Pen.Width:=2;
    end;
    s1:='c:\temp\'+formatdatetime('hhnnss',tm)+'PE1.bmp';
    s2:='c:\temp\'+formatdatetime('hhnnss',tm)+'PE2.bmp';
    frmpechart1.dbchart1.SaveToBitmapFile(s1);
    frmpechart1.dbchart2.SaveToBitmapFile(s2);
    with frmpechart1.Query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from pe_tmp_04 where tm=:x1 and seq>-1 order by seq,tshop';
      params[0].asdatetime:=tm;
      open;
      if combobox3.Text>'' then
      frmpechart1.title001.Caption:='Workshop''s Productivity Efficiency Analysis Report by Line'
      else if combobox1.Text>'' then frmpechart1.title001.Caption:='Factory''s Productivity Efficiency Analysis Report by Workshop';
      frmpechart1.fty001.Caption:=combobox1.text;
      frmpechart1.workshop001.Caption:=combobox3.Text;
      frmpechart1.cust001.Caption:=combobox2.Text;
      frmpechart1.cstyle001.Caption:=edit9.Text;
      frmpechart1.chk01.Checked:=xh1.Checked;
      frmpechart1.chk02.Checked:=xh2.Checked;
      frmpechart1.chk03.Checked:=xh3.Checked;
      if xh1.Checked then begin
        frmpechart1.from001.Caption:=dateedit1.Text;
        frmpechart1.to001.Caption:=dateedit2.Text;
      end else begin
        frmpechart1.from001.Caption:='';
        frmpechart1.to001.Caption:='';
      end;
      if xh2.Checked then begin
        frmpechart1.year001.Caption:=inttostr(edit1.value);
        frmpechart1.wk001.Caption:=inttostr(edit2.value);
        frmpechart1.year002.Caption:=inttostr(edit3.value);
        frmpechart1.wk002.Caption:=inttostr(edit4.value);
      end else begin
        frmpechart1.year001.Caption:='';
        frmpechart1.wk001.Caption:='';
        frmpechart1.year002.Caption:='';
        frmpechart1.wk002.Caption:='';
      end;
      if xh3.Checked then begin
        frmpechart1.year003.Caption:=inttostr(edit5.value);
        frmpechart1.month003.Caption:=inttostr(edit6.Value);
        frmpechart1.year004.Caption:=inttostr(edit7.value);
        frmpechart1.month004.Caption:=inttostr(edit8.value);
      end else begin
        frmpechart1.year003.Caption:='';
        frmpechart1.month003.Caption:='';
        frmpechart1.year004.Caption:='';
        frmpechart1.month004.Caption:='';
      end;
      calc_wkno1(tm);
      frmpechart1.ppimage1.Picture.LoadFromFile(s1);
      frmpechart1.ppimage2.Picture.LoadFromFile(s2);
      frmpechart1.ppReport1.Print;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpechart.calc_wkno1(const TM: TDateTime);
var
  i1:integer;
  s1:string;
begin
  i1:=0;
  frmpechart1.wkno01.Caption:='';
  frmpechart1.wkno02.Caption:='';
  frmpechart1.wkno03.Caption:='';
  frmpechart1.wkno04.Caption:='';
  frmpechart1.wkno05.Caption:='';
  frmpechart1.wkno06.Caption:='';
  frmpechart1.wkno07.Caption:='';
  frmpechart1.wkno08.Caption:='';
  frmpechart1.wkno09.Caption:='';
  frmpechart1.wkno10.Caption:='';
  frmpechart1.wkno11.Caption:='';
  frmpechart1.wkno12.Caption:='';
  frmpechart1.wkno13.Caption:='';
  frmpechart1.wkno14.Caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct dt1,min(seq) as sq from pe_tmp_03 where tm=:x1 group by dt1 order by sq,dt1';
    params[0].asdatetime:=tm;
    open;
    first;
    while not eof do begin
      s1:=fieldbyname('dt1').value;
      i1:=i1+1;
      if i1=1 then frmpechart1.wkno01.Caption:=s1
      else if i1=2 then frmpechart1.wkno02.Caption:=s1
      else if i1=3 then frmpechart1.wkno03.Caption:=s1
      else if i1=4 then frmpechart1.wkno04.Caption:=s1
      else if i1=5 then frmpechart1.wkno05.Caption:=s1
      else if i1=6 then frmpechart1.wkno06.Caption:=s1
      else if i1=7 then frmpechart1.wkno07.Caption:=s1
      else if i1=8 then frmpechart1.wkno08.Caption:=s1
      else if i1=9 then frmpechart1.wkno09.Caption:=s1
      else if i1=10 then frmpechart1.wkno10.Caption:=s1
      else if i1=11 then frmpechart1.wkno11.Caption:=s1
      else if i1=12 then frmpechart1.wkno12.Caption:=s1
      else if i1=13 then frmpechart1.wkno13.Caption:=s1
      else if i1=14 then frmpechart1.wkno14.Caption:=s1;
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
