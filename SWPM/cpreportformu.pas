unit cpreportformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, ppVar, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppViewr, ExtCtrls, ppParameter;

type
  Tfrmcpreport = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    Query2: TClientDataSet;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Combobox3: TEdit;
    BitBtn3: TBitBtn;
    rg01: TRadioGroup;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    title003: TppLabel;
    dt001: TppLabel;
    ppLabel4: TppLabel;
    dt002: TppLabel;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel19: TppLabel;
    title002: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel27: TppLabel;
    ppLine17: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine18: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine19: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine20: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    q0001: TppDBText;
    s0001: TppDBText;
    dt003: TppLabel;
    ppLabel20: TppLabel;
    dt004: TppLabel;
    av001: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    diff01: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape2: TppShape;
    v001: TppDBCalc;
    v002: TppDBCalc;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    q001: TppLabel;
    s001: TppLabel;
    q002: TppLabel;
    s002: TppLabel;
    q003: TppLabel;
    s003: TppLabel;
    q004: TppLabel;
    s004: TppLabel;
    q005: TppLabel;
    s005: TppLabel;
    wavg01: TppLabel;
    ttl001: TppLabel;
    ppLabel18: TppLabel;
    ppLabel13: TppLabel;
    p001: TppLabel;
    p002: TppLabel;
    p003: TppLabel;
    p004: TppLabel;
    p005: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    v003: TppDBCalc;
    diff03: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel26: TppLabel;
    dv001: TppDBCalc;
    dv002: TppDBCalc;
    dv003: TppDBCalc;
    diff02: TppLabel;
    av002: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel42: TppLabel;
    ppDBText13: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel24: TppLabel;
    ppDBText14: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    xh1: TRadioButton;
    DateEdit3: TDateEdit;
    Label6: TLabel;
    DateEdit4: TDateEdit;
    Label7: TLabel;
    xh2: TRadioButton;
    DateEdit5: TDateEdit;
    Label8: TLabel;
    DateEdit6: TDateEdit;
    Label9: TLabel;
    xh3: TRadioButton;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    xh4: TRadioButton;
    DateEdit7: TDateEdit;
    Label10: TLabel;
    DateEdit8: TDateEdit;
    Label11: TLabel;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure xh3Click(Sender: TObject);
    procedure xh4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcpreport: Tfrmcpreport;

implementation

uses mainformu, worksheet, cprep1formu;

{$R *.dfm}

procedure Tfrmcpreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmcprep1<>nil then frmcprep1:=nil;
  action:=cafree;
  frmcpreport:=nil;
end;

procedure Tfrmcpreport.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcpreport.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select min(yqlcrq) as s1,max(yqlcrq) as s2 from tmp_grpplan where dt=:x1';
    if not query1.fieldbyname('grp').isnull then
    commandtext:=commandtext+' and grp='''+query1.fieldbyname('grp').value+'''';
    if not query1.fieldbyname('cust').isnull then
    commandtext:=commandtext+' and cust='''+query1.fieldbyname('cust').value+'''';
    if not query1.fieldbyname('ny').isnull then
    commandtext:=commandtext+' and ny='''+query1.fieldbyname('ny').value+'''';
    if not query1.fieldbyname('f6').isnull then
    commandtext:=commandtext+' and f6='''+query1.fieldbyname('f6').value+'''';
    commandtext:=commandtext+' and wk='+query1.fieldbyname('wk').asstring;
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('s1').isnull then
    dt003.Caption:=formatdatetime('yy/MM/dd',fieldbyname('s1').value)
    else dt003.Caption:=query1.fieldbyname('ny').value+'-01';
    if not fieldbyname('s2').isnull then
    dt004.Caption:=formatdatetime('yy/MM/dd',fieldbyname('s2').value)
    else dt004.Caption:=query1.fieldbyname('ny').value+'-30';
  end;
  if q0001.FieldValue>0 then
    av001.Caption:=formatfloat('0.0000',s0001.FieldValue/q0001.FieldValue/12.0)
  else av001.Caption:='0.0000';
  diff01.Caption:=formatfloat('#0',query1.fieldbyname('qty').value+query1.fieldbyname('qty2').value+query1.fieldbyname('qty3').value-query1.fieldbyname('qty1').value-query1.fieldbyname('qty01').value);
  //avl001.caption:=formatfloat('#0',query1.fieldbyname('qty3').value-query1.fieldbyname('qty').value-query1.fieldbyname('qty1').value-query1.fieldbyname('qty2').value);
  if (query1.fieldbyname('qty').value+query1.fieldbyname('qty2').value+query1.fieldbyname('qty3').value>=query1.fieldbyname('qty1').value+query1.fieldbyname('qty01').value) then
  diff01.Font.Color:=clBlack else diff01.Font.Color:=clRed
end;

procedure Tfrmcpreport.ppGroupFooterBand4BeforePrint(Sender: TObject);
var
  s1,s2:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag=''S'' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q001.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q001.caption:='0';
    if not fieldbyname('s1').isnull then s001.Caption:=formatfloat('0,0',fieldbyname('s1').value)
    else s001.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag=''X'' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q002.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q002.caption:='0';
    if not fieldbyname('s1').isnull then s002.Caption:=formatfloat('0,0',fieldbyname('s1').value)
    else s002.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag=''W'' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q003.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q003.caption:='0';
    if not fieldbyname('s1').isnull then s003.Caption:=formatfloat('0,0',fieldbyname('s1').value)
    else s003.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag=''1'' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q004.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q004.caption:='0';
    if not fieldbyname('s1').isnull then s004.Caption:=formatfloat('0,0',fieldbyname('s1').value)
    else s004.caption:='0';
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct flag,sum(qty) as q1,sum(sah) as s1 from grpplan_tmp_x '
                +'where dt=:x1 and ny='''+query1.fieldbyname('ny').value+''' ';
    commandtext:=commandtext+'and tplant='''+query1.fieldbyname('tplant').value+''' ';
    commandtext:=commandtext+'and grp='''+query1.fieldbyname('grp').value+''' ';
    commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' and flag='''' ';
    commandtext:=commandtext+'group by flag';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    open;
    if not fieldbyname('q1').isnull then q005.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else q005.caption:='0';
    if not fieldbyname('s1').isnull then s005.Caption:=formatfloat('0,0',fieldbyname('s1').value)
    else s005.caption:='0';
  end;
  if v001.Value>0 then begin
    wavg01.Caption:=formatfloat('0.0000',v002.Value/v001.Value/12.0);
    p001.Caption:=formatfloat('0.00%',strtofloat(q001.Caption)*100.0/v001.Value);
    p002.Caption:=formatfloat('0.00%',strtofloat(q002.Caption)*100.0/v001.Value);
    p003.Caption:=formatfloat('0.00%',strtofloat(q003.Caption)*100.0/v001.Value);
    p004.Caption:=formatfloat('0.00%',strtofloat(q004.Caption)*100.0/v001.Value);
    p005.Caption:=formatfloat('0.00%',strtofloat(q005.Caption)*100.0/v001.Value);
  end else begin
    wavg01.Caption:='0.0000';
    p001.Caption:='0.00%';
    p002.Caption:='0.00%';
    p003.Caption:='0.00%';
    p004.Caption:='0.00%';
    p005.Caption:='0.00%';
  end;
  {
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2 from tblshedule where tplant='''+query1.fieldbyname('tplant').value+'''';
    commandtext:=commandtext+' and grp='''+query1.fieldbyname('grp').value+'''';
    commandtext:=commandtext+' and substr(j_no,1,4)='''+query1.fieldbyname('cust').value+'''';
    commandtext:=commandtext+' and cast(f_year(yqlcrq) as varchar(4))='''+copy(query1.fieldbyname('ny').value,1,4)+'''';
    commandtext:=commandtext+' and cast(f_month(yqlcrq) as varchar(2))='''+inttostr(strtoint(copy(query1.fieldbyname('ny').value,6,2)))+'''';
    open;
    s1:=fieldbyname('cnt1').asstring;
    s2:=fieldbyname('cnt2').asstring;
  end;
  ttl001.Caption:='Ttl # of cust style : '+s1+'     Ttl # of line : '+s2;
  }
  ttl001.Caption:='';
  if v003.Value+ppdbcalc6.value<v001.Value+ppdbcalc2.value+ppdbcalc4.value then begin
    diff03.Caption:='+'+formatfloat('#0',v001.value+ppdbcalc2.value+ppdbcalc4.value-v003.value-ppdbcalc6.value);
    diff03.Font.Color:=clBlack;
  end else begin
    diff03.Caption:=formatfloat('#0',v001.Value-v003.Value-ppdbcalc6.value);
    diff03.Font.Color:=clRed;
  end;
end;

procedure Tfrmcpreport.ppGroupFooterBand5BeforePrint(Sender: TObject);
begin
  diff02.Caption:=formatfloat('#0',dv001.Value+ppdbcalc1.value+ppdbcalc3.value-dv002.Value-ppdbcalc5.Value);
  //avl002.caption:=formatfloat('#0',dv004.value-dv002.value-dv001.value);
  if dv001.Value>0 then av002.Caption:=formatfloat('0.0000',dv003.value/dv001.value/12.0)
  else av002.Caption:='0.0000';
  if (dv001.value+ppdbcalc1.value+ppdbcalc3.value>=dv002.value+ppdbcalc5.value) then
  diff02.Font.Color:=clBlack else diff02.Font.Color:=clRed
end;

procedure Tfrmcpreport.BitBtn2Click(Sender: TObject);
var
  dt:tdatetime;
  dt1,dt2:tdate;
begin
  screen.cursor:=crHourglass;
  if (combobox2.text>'') and (combobox3.text>'') then begin
  dt:=now;
  if xh1.Checked then begin
    if dateedit3.date>0 then dt1:=dateedit3.date else dt1:=encodedate(2006,1,1);
    if dateedit4.date>0 then dt2:=dateedit4.date else dt2:=encodedate(2020,12,31);
  end else if xh2.Checked then begin
    if dateedit5.date>0 then dt1:=dateedit5.date else dt1:=encodedate(2006,1,1);
    if dateedit6.date>0 then dt2:=dateedit6.date else dt2:=encodedate(2020,12,31);
  end else if xh3.Checked then begin
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  end else if xh4.Checked then begin
    if dateedit7.date>0 then dt1:=dateedit7.date else dt1:=encodedate(2006,1,1);
    if dateedit8.date>0 then dt2:=dateedit8.date else dt2:=encodedate(2020,12,31);
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='execute procedure sp_gengrpplan(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
    params[0].asdatetime:=dt;
    params[1].asstring:=combobox1.text;
    params[2].asdate:=dt1;
    params[3].asdate:=dt2;
    params[4].asstring:=combobox2.text;
    params[5].asstring:=combobox3.text;
    if xh1.Checked then params[6].asstring:='1'
    else if xh2.Checked then params[6].asstring:='2'
    else if xh3.Checked then params[6].asstring:='3'
    else if xh4.Checked then params[6].asstring:='4';
    execute;
  end;
  if rg01.ItemIndex=0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct dt,tplant,grp,cust,f6,ny,wk,sum(qty1) as qty1,sum(qty01) as qty01,sum(qty3) as qty3,sum(qty2) as qty2,avg(ct) as ct,sum(qty) as qty,sum(sah) as sah,'
                  +'avg(lbu) as lbu,avg(lbu1) as lbu1,avg(lbu2) as lbu2,sum(qty2) as qty2,avg(ct1) as ct1,count(*) as tline '
                  +'from tmp_grpplan where dt=:x1';
      if combobox1.Text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
      if combobox3.Text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
      commandtext:=commandtext+' group by dt,tplant,grp,cust,f6,ny,wk order by tplant,grp,cust,ny,f6,wk';
      params[0].asdatetime:=dt;
      open;
      if not fieldbyname('tplant').isnull then begin
        if xh1.Checked then begin
          title002.Caption:='- SO Delivery Date';
          title003.Caption:='SO Delivery Date From ';
          dt001.Caption:=dateedit3.Text;
          dt002.Caption:=dateedit4.Text;
        end else if xh2.Checked then begin
          title002.Caption:='- WO Ex-fty Date';
          title003.Caption:='WO Ex-fty Date From';
          dt001.Caption:=dateedit5.Text;
          dt002.Caption:=dateedit6.Text;
        end else if xh3.Checked then begin
          title002.Caption:='- RWO Ex-fty Date';
          title003.Caption:='RWO Ex-fty Date From';
          dt001.Caption:=dateedit1.Text;
          dt002.Caption:=dateedit2.Text;
        end else if xh4.Checked then begin
          title002.Caption:='- QN Ex-fty Date';;
          title003.Caption:='QN Ex-fty Date From';
          dt001.Caption:=dateedit7.Text;
          dt002.Caption:=dateedit8.Text;
        end;
        ppReport1.Print;
      end;
    end;
  end else begin
    if frmcprep1=nil then frmcprep1:=tfrmcprep1.Create(nil);
    with frmcprep1.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct dt,tplant,grp,cust,f6,ny,wk,sum(qty1) as qty1,sum(qty01) as qty01,sum(qty3) as qty3,sum(qty2) as qty2,avg(ct) as ct,sum(qty) as qty,sum(sah) as sah,'
                  +'avg(lbu) as lbu,avg(lbu1) as lbu1,avg(lbu2) as lbu2,sum(qty2) as qty2,avg(ct1) as ct1,count(*) as tline '
                  +'from tmp_grpplan where dt=:x1';
      if combobox1.Text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
      if combobox3.Text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
      commandtext:=commandtext+' group by dt,tplant,grp,cust,f6,ny,wk order by tplant,grp,cust,ny,f6,wk';
      params[0].asdatetime:=dt;
      open;
      if not fieldbyname('tplant').isnull then begin
        if xh1.Checked then begin
          frmcprep1.title002.Caption:='- SO Delivery Date';
          frmcprep1.title003.Caption:='SO Delivery Date From ';
          frmcprep1.dt001.Caption:=dateedit3.Text;
          frmcprep1.dt002.Caption:=dateedit4.Text;
        end else if xh2.Checked then begin
          frmcprep1.title002.Caption:='- WO Ex-fty Date';
          frmcprep1.title003.Caption:='WO Ex-fty Date From';
          frmcprep1.dt001.Caption:=dateedit5.Text;
          frmcprep1.dt002.Caption:=dateedit6.Text;
        end else if xh3.Checked then begin
          frmcprep1.title002.Caption:='- RWO Ex-fty Date';
          frmcprep1.title003.Caption:='RWO Ex-fty Date From';
          frmcprep1.dt001.Caption:=dateedit1.Text;
          frmcprep1.dt002.Caption:=dateedit2.Text;
        end else if xh4.Checked then begin
          frmcprep1.title002.Caption:='- QN Ex-fty Date';;
          frmcprep1.title003.Caption:='QN Ex-fty Date From';
          frmcprep1.dt001.Caption:=dateedit7.Text;
          frmcprep1.dt002.Caption:=dateedit8.Text;
        end;
        frmcprep1.ppReport1.Print;
      end;
    end;
  end;
  end else begin
    showmessage('Team and customer can not be blank!');
    combobox2.SetFocus;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmcpreport.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    dateedit3.Enabled:=true;
    dateedit4.Enabled:=true;
    dateedit5.Enabled:=false;
    dateedit6.Enabled:=false;
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    dateedit7.Enabled:=false;
    dateedit8.Enabled:=false;
  end;
end;

procedure Tfrmcpreport.xh2Click(Sender: TObject);
begin
  if xh2.Checked then begin
    dateedit3.Enabled:=false;
    dateedit4.Enabled:=false;
    dateedit5.Enabled:=true;
    dateedit6.Enabled:=true;
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    dateedit7.Enabled:=false;
    dateedit8.Enabled:=false;
  end;
end;

procedure Tfrmcpreport.xh3Click(Sender: TObject);
begin
  if xh3.Checked then begin
    dateedit3.Enabled:=false;
    dateedit4.Enabled:=false;
    dateedit5.Enabled:=false;
    dateedit6.Enabled:=false;
    dateedit1.Enabled:=true;
    dateedit2.Enabled:=true;
    dateedit7.Enabled:=false;
    dateedit8.Enabled:=false;
  end;
end;

procedure Tfrmcpreport.xh4Click(Sender: TObject);
begin
  if xh4.Checked then begin
    dateedit3.Enabled:=false;
    dateedit4.Enabled:=false;
    dateedit5.Enabled:=false;
    dateedit6.Enabled:=false;
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
    dateedit7.Enabled:=true;
    dateedit8.Enabled:=true;
  end;
end;

end.
