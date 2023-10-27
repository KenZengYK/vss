unit output_sectformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons, DB, DBClient, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe, ppViewr, Mask, rxToolEdit, DateUtils, ppParameter;

type
  Tfrmoutput_sect = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    Query4: TClientDataSet;
    Query3: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    sub1: TppLabel;
    sub2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppShape1: TppShape;
    m001: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    m002: TppLabel;
    m003: TppLabel;
    m004: TppLabel;
    m005: TppLabel;
    m006: TppLabel;
    m007: TppLabel;
    m008: TppLabel;
    m009: TppLabel;
    m010: TppLabel;
    m011: TppLabel;
    m012: TppLabel;
    ppLine1: TppLine;
    ppShape2: TppShape;
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
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    x001: TppDBText;
    x002: TppDBText;
    x003: TppDBText;
    x004: TppDBText;
    x005: TppDBText;
    x006: TppDBText;
    x007: TppDBText;
    x008: TppDBText;
    x009: TppDBText;
    x010: TppDBText;
    x011: TppDBText;
    x012: TppDBText;
    ppShape3: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    sx001: TppLabel;
    sx002: TppLabel;
    sx003: TppLabel;
    sx004: TppLabel;
    sx005: TppLabel;
    sx0001: TppLabel;
    sx0002: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    xh1: TRadioButton;
    xh2: TRadioButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    xh3: TRadioButton;
    xh4: TRadioButton;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    SpinEdit9: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmoutput_sect: Tfrmoutput_sect;

implementation

uses mainformu, addreportsformu;

{$R *.dfm}

procedure Tfrmoutput_sect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmoutput_sect:=nil;
end;

procedure Tfrmoutput_sect.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if (query2.fieldbyname('seq').value=3) or (query2.fieldbyname('seq').value=4) or
  (query2.fieldbyname('seq').value=7) or
  (query2.fieldbyname('seq').value=10) or (query2.fieldbyname('seq').value=11) or
  (query2.fieldbyname('seq').value=13) or (query2.fieldbyname('seq').value=14) then begin
    x001.DisplayFormat:='0.000';x002.DisplayFormat:='0.000';x003.DisplayFormat:='0.000';
    x004.DisplayFormat:='0.000';x005.DisplayFormat:='0.000';x006.DisplayFormat:='0.000';
    x007.DisplayFormat:='0.000';x008.DisplayFormat:='0.000';x009.DisplayFormat:='0.000';
    x010.DisplayFormat:='0.000';x011.DisplayFormat:='0.000';x012.DisplayFormat:='0.000';
{  end else if (query2.fieldbyname('seq').value=7) or (query2.fieldbyname('seq').value=14) then begin
    x001.DisplayFormat:='0.00%';x002.DisplayFormat:='0.00%';x003.DisplayFormat:='0.00%';
    x004.DisplayFormat:='0.00%';x005.DisplayFormat:='0.00%';x006.DisplayFormat:='0.00%';
    x007.DisplayFormat:='0.00%';x008.DisplayFormat:='0.00%';x009.DisplayFormat:='0.00%';
    x010.DisplayFormat:='0.00%';x011.DisplayFormat:='0.00%';x012.DisplayFormat:='0.00%';
}  end else begin
    x001.DisplayFormat:='#,0';x002.DisplayFormat:='#,0';x003.DisplayFormat:='#,0';
    x004.DisplayFormat:='#,0';x005.DisplayFormat:='#,0';x006.DisplayFormat:='#,0';
    x007.DisplayFormat:='#,0';x008.DisplayFormat:='#,0';x009.DisplayFormat:='#,0';
    x010.DisplayFormat:='#,0';x011.DisplayFormat:='#,0';x012.DisplayFormat:='#,0';
  end;
end;

procedure Tfrmoutput_sect.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
  i:integer;
  s1,s2:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with query1 do begin
      close;
      params.clear;
      {
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='execute procedure sp_analysis_temp4(:x1,:x2,:x3)';
      params[0].asdatetime:=tm;
      params[1].asinteger:=spinedit1.value;
      params[2].AsString:=combobox1.text;
      }
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftdate,'x7',ptinput);
      params.createparam(ftdate,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      params.createparam(ftinteger,'x12',ptinput);
      params.createparam(ftinteger,'x13',ptinput);
      params.createparam(ftinteger,'x14',ptinput);
      params.createparam(ftinteger,'x15',ptinput);
      params.createparam(ftinteger,'x16',ptinput);
      commandtext:='execute procedure sp_analysis_temp4_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asstring:=combobox2.text;
      params[3].asstring:=combobox3.text;
      if xh1.Checked then params[4].asinteger:=1
      else if xh2.Checked then params[4].asinteger:=2
      else if xh3.Checked then params[4].asinteger:=3
      else if xh4.Checked then params[4].asinteger:=4;
      params[5].asinteger:=spinedit1.Value;
      if dateedit1.Date>0 then
      params[6].asdate:=dateedit1.date
      else params[6].asdate:=date;
      if dateedit2.Date>0 then
      params[7].asdate:=dateedit2.date
      else params[7].asdate:=date;
      params[8].asinteger:=spinedit2.Value;
      params[9].asinteger:=spinedit3.Value;
      params[10].AsInteger:=spinedit4.Value;
      params[11].asinteger:=spinedit5.Value;
      params[12].AsInteger:=spinedit6.Value;
      params[13].asinteger:=spinedit7.Value;
      params[14].asinteger:=spinedit8.Value;
      params[15].AsInteger:=spinedit9.Value;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from analysis_tmp4 where tm=:x1 order by seq';
      params[0].asdatetime:=tm;
      open;
    end;
    if combobox3.text>'' then sub1.caption:='<  '+combobox3.text+'  >'
    else if combobox2.text>'' then sub1.Caption:='<  '+combobox2.text+'  >'
    else if combobox1.text>'' then sub1.Caption:='<  '+combobox1.text+'  >'
    else sub1.Caption:='< SL & KB >';
    if xh1.Checked then begin
      sub2.Caption:='[ Year '+inttostr(spinedit1.Value)+' ]';
      m001.Caption:='Jan'; m002.Caption:='Feb'; m003.Caption:='Mar'; m004.Caption:='Apr';
      m005.Caption:='May'; m006.Caption:='Jun'; m007.Caption:='Jul'; m008.Caption:='Aug';
      m009.Caption:='Sep'; m010.Caption:='Oct'; m011.Caption:='Nov'; m012.Caption:='Dec';
    end else if xh2.Checked then begin
      sub2.Caption:='[ Date from '+formatdatetime('yyyy/MM/dd',dateedit1.date)+' - to '+formatdatetime('yyyy/MM/dd',dateedit2.date)+' ]';
      m001.Caption:='Total'; m002.Caption:=''; m003.Caption:=''; m004.Caption:='';
      m005.Caption:=''; m006.Caption:=''; m007.Caption:=''; m008.Caption:='';
      m009.Caption:=''; m010.Caption:=''; m011.Caption:=''; m012.Caption:='';
    end else if xh3.Checked then begin
      sub2.Caption:='[ Week from '+inttostr(spinedit2.value)+'-'+inttostr(spinedit3.Value)+' to '+inttostr(spinedit4.value)+'-'+inttostr(spinedit5.value)+' ]';
      s1:=inttostr(spinedit2.value)+'-'+copy('0'+inttostr(spinedit3.value),length('0'+inttostr(spinedit3.value))-1,2);
      s2:=inttostr(spinedit4.value)+'-'+copy('0'+inttostr(spinedit5.value),length('0'+inttostr(spinedit5.value))-1,2);
      m001.Caption:=''; m002.Caption:=''; m003.Caption:=''; m004.Caption:='';
      m005.Caption:=''; m006.Caption:=''; m007.Caption:=''; m008.Caption:='';
      m009.Caption:=''; m010.Caption:=''; m011.Caption:=''; m012.Caption:='';
      i:=0;
      with query3 do begin
        close;
        params.clear;
        commandtext:='select wk from v_weekofyear where yrwk>='''+s1+''' and yrwk<='''+s2+''' order by yrwk';
        open;
        first;
        while not eof do begin
          i:=i+1;
          if i=1 then m001.Caption:=fieldbyname('wk').asstring
          else if i=2 then m002.Caption:=fieldbyname('wk').asstring
          else if i=3 then m003.Caption:=fieldbyname('wk').asstring
          else if i=4 then m004.Caption:=fieldbyname('wk').asstring
          else if i=5 then m005.Caption:=fieldbyname('wk').asstring
          else if i=6 then m006.Caption:=fieldbyname('wk').asstring
          else if i=7 then m007.Caption:=fieldbyname('wk').asstring
          else if i=8 then m008.Caption:=fieldbyname('wk').asstring
          else if i=9 then m009.Caption:=fieldbyname('wk').asstring
          else if i=10 then m010.Caption:=fieldbyname('wk').asstring
          else if i=11 then m011.Caption:=fieldbyname('wk').asstring
          else if i=12 then m012.Caption:=fieldbyname('wk').asstring;
          application.ProcessMessages;
          next;
        end;
      end;
    end else if xh4.Checked then begin
      sub2.Caption:='[ Month from '+inttostr(spinedit6.value)+'-'+inttostr(spinedit7.Value)+' to '+inttostr(spinedit8.value)+'-'+inttostr(spinedit9.value)+' ]';
      s1:=inttostr(spinedit6.value)+'-'+copy('0'+inttostr(spinedit7.value),length('0'+inttostr(spinedit7.value))-1,2);
      s2:=inttostr(spinedit8.value)+'-'+copy('0'+inttostr(spinedit9.value),length('0'+inttostr(spinedit9.value))-1,2);
      m001.Caption:=''; m002.Caption:=''; m003.Caption:=''; m004.Caption:='';
      m005.Caption:=''; m006.Caption:=''; m007.Caption:=''; m008.Caption:='';
      m009.Caption:=''; m010.Caption:=''; m011.Caption:=''; m012.Caption:='';
      i:=0;
      with query3 do begin
        close;
        params.clear;
        commandtext:='select mn as wk from v_monthofyear where yrmn>='''+s1+''' and yrmn<='''+s2+''' order by yrmn';
        open;
        first;
        while not eof do begin
          i:=i+1;
          if i=1 then m001.Caption:=fieldbyname('wk').asstring
          else if i=2 then m002.Caption:=fieldbyname('wk').asstring
          else if i=3 then m003.Caption:=fieldbyname('wk').asstring
          else if i=4 then m004.Caption:=fieldbyname('wk').asstring
          else if i=5 then m005.Caption:=fieldbyname('wk').asstring
          else if i=6 then m006.Caption:=fieldbyname('wk').asstring
          else if i=7 then m007.Caption:=fieldbyname('wk').asstring
          else if i=8 then m008.Caption:=fieldbyname('wk').asstring
          else if i=9 then m009.Caption:=fieldbyname('wk').asstring
          else if i=10 then m010.Caption:=fieldbyname('wk').asstring
          else if i=11 then m011.Caption:=fieldbyname('wk').asstring
          else if i=12 then m012.Caption:=fieldbyname('wk').asstring;
          application.ProcessMessages;
          next;
        end;
      end;
    end;
    ppReport1.Print;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmoutput_sect.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmoutput_sect.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  dt1,dt2:tdate;
  d1:word;
begin
  if xh1.Checked then begin
    dt1:=encodedate(spinedit1.value,1,1);
    dt2:=encodedate(spinedit1.value,12,31);
  end else if xh2.Checked then begin
    dt1:=dateedit1.Date;
    dt2:=dateedit2.date;
  end else if xh3.Checked then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as dt from week52 where tplant=''KB'' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=spinedit2.Value;
      params[1].asinteger:=spinedit3.Value;
      open;
      dt1:=fieldbyname('dt').value;
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt from week52 where tplant=''KB'' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=spinedit4.Value;
      params[1].asinteger:=spinedit5.Value;
      open;
      dt2:=fieldbyname('dt').value;
    end;
  end else if xh4.Checked then begin
    //dt1:=encodedate(spinedit6.Value,spinedit7.value,1);
    //if spinedit9.value=2 then d1:=28
    //else if (spinedit9.Value=4) or (spinedit9.value=6) or (spinedit9.value=9) or (spinedit9.value=11) then d1:=30
    //else d1:=31;
    //dt2:=encodedate(spinedit8.Value,spinedit9.Value,d1);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as dt from week52 where tplant=''KB'' and f_year(date1)=:x1 and f_month(date1)=:x2';
      params[0].asinteger:=spinedit6.Value;
      params[1].asinteger:=spinedit7.Value;
      open;
      dt1:=fieldbyname('dt').value;
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt from week52 where tplant=''KB'' and f_year(date1)=:x1 and f_month(date1)=:x2';
      params[0].asinteger:=spinedit8.Value;
      params[1].asinteger:=spinedit9.Value;
      open;
      dt2:=fieldbyname('dt').value;
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select * from sp_analysis_temp4_smv_2(:x1,:x2,:x3,:x4,:x5)';
    params[0].asstring:=query2.fieldbyname('tplant').value;
    params[1].asdate:=dt1;
    params[2].asdate:=dt2;
    params[3].asstring:=combobox2.text;
    params[4].asstring:=combobox3.text;
    open;
    sx001.Caption:=formatfloat('#,0',fieldbyname('o_sect1').value);
    sx002.Caption:=formatfloat('#,0',fieldbyname('o_diff1').value);
    sx003.Caption:=formatfloat('#,0',fieldbyname('o_sect2').value);
    sx004.Caption:=formatfloat('#,0',fieldbyname('o_diff2').value);
    sx005.Caption:=formatfloat('#,0',fieldbyname('o_diff1').value+fieldbyname('o_diff2').value);
    if fieldbyname('o_diff1').value>0 then sx0001.Caption:=formatfloat('0.000',fieldbyname('o_sect01').value*30/fieldbyname('o_diff1').value)
    else sx0001.Caption:='0.000';
    if fieldbyname('o_diff2').value>0 then sx0002.Caption:=formatfloat('0.000',fieldbyname('o_sect02').value*30/fieldbyname('o_diff2').value)
    else sx0002.Caption:='0.000';
  end;
end;

procedure Tfrmoutput_sect.FormShow(Sender: TObject);
begin
  combobox3.Items.clear;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct j_no from tbl_cap_custgrp';
    open;
    first;
    while not eof do begin
      combobox3.items.Add(fieldbyname('j_no').value);
      application.ProcessMessages;
      next;
    end;
  end;
  spinedit1.Value:=yearof(date);
  dateedit1.Date:=date;
  dateedit2.date:=date;
  spinedit2.Value:=yearof(date);
  spinedit3.Value:=weekof(date);
  spinedit4.Value:=yearof(date);
  spinedit5.Value:=weekof(date);
  spinedit6.Value:=yearof(date);
  spinedit7.Value:=monthof(date);
  spinedit8.Value:=yearof(date);
  spinedit9.Value:=monthof(date);
end;

procedure Tfrmoutput_sect.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty where act=1';
    open;
    first;
    while not eof do begin
      combobox3.Items.Add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
