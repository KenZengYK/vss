unit printscheduleu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, Buttons, Db, DBTables, DBClient, Spin, ExtCtrls,
  ShellApi;

type
  Tfrmprintschedule = class(TForm)
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    opt1: TRadioGroup;
    chk1: TCheckBox;
    chk2: TCheckBox;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    GroupBox2: TGroupBox;
    chk3: TCheckBox;
    SpinEdit1: TSpinEdit;
    chk4: TCheckBox;
    SpinEdit2: TSpinEdit;
    chk5: TCheckBox;
    SpinEdit3: TSpinEdit;
    opt7: TRadioGroup;
    GroupBox5: TGroupBox;
    opt2: TRadioButton;
    opt3: TRadioButton;
    opt4: TRadioButton;
    opt5: TRadioButton;
    opt6: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn3: TBitBtn;
    opt8: TRadioButton;
    chk6: TCheckBox;
    SpinEdit4: TSpinEdit;
    GroupBox6: TGroupBox;
    chk7: TCheckBox;
    SpinEdit5: TSpinEdit;
    chk8: TCheckBox;
    SpinEdit6: TSpinEdit;
    chk9: TCheckBox;
    SpinEdit7: TSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ClientDataSet4: TClientDataSet;
    Chk10: TCheckBox;
    SpinEdit8: TSpinEdit;
    ComboBox1: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Edit7: TEdit;
    ComboBox5: TComboBox;
    Edit3: TEdit;
    ComboBox6: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Edit8: TEdit;
    CheckBox6: TCheckBox;
    BitBtn4: TBitBtn;
    CheckBox7: TCheckBox;
    CheckBox10: TCheckBox;
    DataSource3: TDataSource;
    ClientDataSet5: TClientDataSet;
    chk11: TCheckBox;
    chk12: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chk1Click(Sender: TObject);
    procedure opt6Click(Sender: TObject);
    procedure opt7Click(Sender: TObject);
    procedure opt4Click(Sender: TObject);
    procedure opt2Click(Sender: TObject);
    procedure opt3Click(Sender: TObject);
    procedure opt5Click(Sender: TObject);
    procedure opt1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure opt8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprintschedule: Tfrmprintschedule;

implementation

uses mainformu, worksheet, printformu, printform1u, print00formu;

{$R *.DFM}

procedure Tfrmprintschedule.BitBtn1Click(Sender: TObject);
var
  opt,cust,pline,tshop,cstyle,tplant,grp,j_no,flag60,flag61,dbzs,flag2,acol:string;
  str00,str1,str2,str3,str4,str5,str6:string;
  dt:tdatetime;
  y,m,d:word;
  dt1,dt2:tdate;
begin
  screen.cursor:=crHourglass;
  dt:=now;
  try
    if opt6.Checked then begin
      if (dateedit1.date=0) or (dateedit2.date=0) then begin
        showmessage('Date can not be blank!');
        exit;
      end;
    end;
    if dateedit1.date>0 then begin
      decodedate(dateedit1.date,y,m,d);
      dt1:=encodedate(y,m,d);
    end else dt1:=encodedate(1899,12,30);
    if dateedit2.date>0 then begin
      decodedate(dateedit2.date,y,m,d);
      dt2:=encodedate(y,m,d);
    end else dt2:=encodedate(2020,12,31);
    cust:=edit1.text;
    pline:=edit2.text;
    tshop:=edit4.text;
    cstyle:=edit5.text;
    if edit6.text<>'CN' then
    tplant:=edit6.text else tplant:='';
    grp:=ComboBox2.text;
    j_no:=Edit7.text;
    flag60:=ComboBox3.text;
    flag61:=ComboBox4.text;
    dbzs:=ComboBox5.text;
    acol:=edit3.text;
    flag2:=ComboBox6.text;

    LABEL1.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      if chk12.checked then begin
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
      end;
      if checkbox2.Checked then begin
        commandtext:='insert into tempshedule_sqn select a.*,:dt,0,'''' from tblshedule a where 0=0';
      end else begin
        commandtext:='insert into tempshedule select a.*,:dt from tblshedule a where 0=0';
      end;
      if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
      if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
      if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
      if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
      if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+'''';
      if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
      if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
      if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
      if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
      if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
      if acol>'' then commandtext:=commandtext+' and acol='''+acol+'''';
      if flag2>'' then commandtext:=commandtext+' and flag2='''+flag2+'''';
      if checkbox1.Checked then commandtext:=commandtext+' and ((lflag like ''!%'')) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
      if checkbox2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
      if checkbox3.Checked then commandtext:=commandtext+' and plan_date is null';
      //if checkbox4.Checked then commandtext:=commandtext+' and dta in (''3'',''4'')';
      if checkbox5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
      if checkbox6.Checked then commandtext:=commandtext+' and substr(flag3,1,2) in (''2s'',''3s'',''4s'',''5s'',''6s'',''7s'',''8s'',''9s'')';
      if checkbox7.Checked then commandtext:=commandtext+' and tshop in (''3A'',''3B'',''3D'',''3G'',''4A'',''4B'',''4C'',''4D'',''KB1A'',''KB1B'',''KB2'',''KB1C'',''KB1D'',''KB1E'') and flag4 in (''a'')';//+formatdatetime('yyyy-MM-dd',date+20);
      //if checkbox10.Checked then commandtext:=commandtext+' and (((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%'')) or (dta in (''3'',''4'')) '
      //                                       +'or (substr(flag3,1,2) in (''2s'',''3s'',''4s'',''5s'',''6s'',''7s'',''8s'',''9s'')))';
      if edit8.text>'' then commandtext:=commandtext+' and jhrs='''+edit8.text+'''';
      commandtext:=commandtext+' and pline not in (select pline from tblschedule_hide where hide=1)';
      if chk3.Checked then begin
        if spinedit1.Value>=0 then commandtext:=commandtext+' and rqxc>='+inttostr(spinedit1.Value)
        else if spinedit1.Value<0 then commandtext:=commandtext+' and rqxc<'+inttostr(spinedit1.Value);
      end;
      if chk4.Checked then begin
        if spinedit2.Value>=0 then commandtext:=commandtext+' and qrxc>='+inttostr(spinedit2.Value)
        else if spinedit2.Value<0 then commandtext:=commandtext+' and qrxc<'+inttostr(spinedit2.Value);
      end;
      if chk5.Checked then begin
        if spinedit3.Value>=0 then commandtext:=commandtext+' and rqxc1>='+inttostr(spinedit3.Value)
        else if spinedit3.Value<0 then commandtext:=commandtext+' and rqxc1<'+inttostr(spinedit3.Value);
      end;
      if chk6.Checked then begin
        if spinedit4.Value>=0 then commandtext:=commandtext+' and xc4>='+inttostr(spinedit4.Value)
        else if spinedit4.Value<0 then commandtext:=commandtext+' and xc4<'+inttostr(spinedit4.Value);
      end;
      if chk10.Checked then begin
        if spinedit8.Value>=0 then commandtext:=commandtext+' and unbal>='+inttostr(spinedit8.Value)
        else if spinedit8.Value<0 then commandtext:=commandtext+' and unbal<'+inttostr(spinedit8.Value);
      end;
      if chk7.Checked then commandtext:=commandtext+' and xc1'+combobox1.text+inttostr(spinedit5.value);
      if chk8.Checked then commandtext:=commandtext+' and xc2<='+inttostr(spinedit6.Value);
      if chk9.Checked then commandtext:=commandtext+' and xc3<='+inttostr(spinedit7.Value);
      if chk11.checked then commandtext:=commandtext+' and rqxc<qrxc and rqxc<0';
      if chk12.checked then commandtext:=commandtext+' and (rqxc>0) and (tzlcrq>=:x1) and (tzlcrq<=:x2)';
      if opt7.ItemIndex=0 then begin
        commandtext:=commandtext+' and yzh=0';
      end else if opt7.ItemIndex=1 then begin
        commandtext:=commandtext+' and yzh=0 and flag3>=''1'' and flag3<''w''';
      end else if opt7.ItemIndex=2 then begin
        commandtext:=commandtext+' and yzh=0 and substr(flag3,1,1) in (''X'',''x'')';
      end else if opt7.ItemIndex=3 then begin
        commandtext:=commandtext+' and yzh=1';
      end else if opt7.ItemIndex=4 then begin
        commandtext:=commandtext+' and yzh=0 and ((flag3<=''w'') or (flag3 is null))';
      end else if opt7.ItemIndex=5 then begin
        commandtext:=commandtext+' and yzh=0 and flag3 in (''W'',''w'',''h1'',''h2'',''h3'',''h4'',''!h1'',''!h2'',''!h3'',''!h4'')';
      end else if opt7.ItemIndex=6 then begin
        commandtext:=commandtext+' and yzh=0 and ((flag3='''') or (flag3 is null))';
      end;
      if worksheet1.dateedit1.date>0 then commandtext:=commandtext+' and cfwcrq>='''+formatdatetime('yyyy-MM-dd',worksheet1.dateedit1.date)+'''';
      if worksheet1.dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<='''+formatdatetime('yyyy-MM-dd',worksheet1.dateedit2.date)+'''';
      if worksheet1.combobox6.text>'' then commandtext:=commandtext+' and flag1='''+worksheet1.combobox6.text+'''';
      params[0].asdatetime:=dt;
      if chk12.checked then begin
        params[1].asdate:=worksheet1.dateedit3.date;
        params[2].asdate:=worksheet1.dateedit4.date;
      end;
      execute;
    end;
    if checkbox2.Checked then begin
    WITH CLIENTDATASET2 DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      COMMANDTEXT:='EXECUTE PROCEDURE SP_GEN_TEMPSHEDULE_SQN(:X1,:X2,:X3,:X4)';
      PARAMS[0].ASDATETIME:=DT;
      IF OPT2.Checked THEN PARAMS[1].ASINTEGER:=2
      ELSE IF OPT3.Checked THEN PARAMS[1].ASINTEGER:=3
      ELSE IF OPT4.Checked THEN PARAMS[1].ASINTEGER:=4
      ELSE IF OPT5.Checked THEN PARAMS[1].ASINTEGER:=5
      ELSE IF OPT6.Checked THEN PARAMS[1].AsInteger:=6
      else if opt8.Checked then params[1].asinteger:=7;
      PARAMS[2].AsDate:=DT1;
      PARAMS[3].ASDATE:=DT2;
      EXECUTE;
    END;
    end else begin
    WITH CLIENTDATASET2 DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      COMMANDTEXT:='EXECUTE PROCEDURE SP_GEN_TEMPSHEDULE(:X1,:X2,:X3,:X4)';
      PARAMS[0].ASDATETIME:=DT;
      IF OPT2.Checked THEN PARAMS[1].ASINTEGER:=2
      ELSE IF OPT3.Checked THEN PARAMS[1].ASINTEGER:=3
      ELSE IF OPT4.Checked THEN PARAMS[1].ASINTEGER:=4
      ELSE IF OPT5.Checked THEN PARAMS[1].ASINTEGER:=5
      ELSE IF OPT6.Checked THEN PARAMS[1].AsInteger:=6
      else if opt8.Checked then params[1].asinteger:=7;
      PARAMS[2].AsDate:=DT1;
      PARAMS[3].ASDATE:=DT2;
      EXECUTE;
    END;
    end;

    LABEL2.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ', NOW);

    //calculate hc;
    if chk1.Checked then begin
      if opt1.ItemIndex=0 then begin
        if opt2.Checked then opt:='01'
        else if opt3.Checked then opt:='02'
        else if opt4.Checked then opt:='03'
        else if opt5.Checked then opt:='04'
        else if opt6.Checked then opt:='05'
        else if opt8.Checked then opt:='06';
      end else if opt1.ItemIndex=1 then begin
        if opt2.Checked then opt:='11'
        else if opt3.Checked then opt:='12'
        else if opt4.Checked then opt:='13'
        else if opt5.Checked then opt:='14'
        else if opt6.Checked then opt:='15'
        else if opt8.Checked then opt:='16';
      end;
    end else begin
      if opt2.Checked then opt:='21'
      else if opt3.Checked then opt:='22'
      else if opt4.Checked then opt:='23'
      else if opt5.Checked then opt:='24'
      else if opt6.Checked then opt:='25'
      else if opt8.Checked then opt:='26';
    end;
    if checkbox2.Checked then opt:='27';

    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      params.createparam(ftstring,'opt',ptinput);
      commandtext:='execute procedure sp_gentemp_hc(:dt,:opt)';
      params[0].asdatetime:=dt;
      params[1].asstring:=opt;
      execute;
    end;
    LABEL3.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);

    str00:=opt7.Items[opt7.itemindex];
    str1:='';
    if chk1.Checked then str1:=opt1.items[opt1.itemindex];
    if str1>'' then begin
      if opt2.Checked then str1:=str1+'/'+opt2.Caption
      else if opt3.Checked then str1:=str1+'/'+opt3.Caption
      else if opt4.Checked then str1:=str1+'/'+opt4.Caption
      else if opt5.Checked then str1:=str1+'/'+opt5.Caption
      else if opt6.Checked then str1:=str1+'/'+opt6.Caption
      else if opt8.Checked then str1:=str1+'/'+opt8.Caption;
    end else begin
      if opt2.Checked then str1:=opt2.Caption
      else if opt3.Checked then str1:=opt3.Caption
      else if opt4.Checked then str1:=opt4.Caption
      else if opt5.Checked then str1:=opt5.Caption
      else if opt6.Checked then str1:=opt6.Caption
      else if opt8.Checked then str1:=opt8.Caption;
    end;
    if chk3.Checked then begin
      if spinedit1.Value>=0 then str1:=str1+'/現況離廠期日差>='+inttostr(spinedit1.value)
      else if spinedit1.Value<0 then str1:=str1+'/現況離廠期日差<='+inttostr(spinedit1.value);
    end;
    if chk4.Checked then begin
      if spinedit2.Value>=0 then str1:=str1+'/離廠期鎖定日差>='+inttostr(spinedit2.Value)
      else if spinedit2.Value<0 then str1:=str1+'/離廠期鎖定日差<='+inttostr(spinedit2.value);
    end;
    if chk5.Checked then begin
      if spinedit3.Value>=0 then str1:=str1+'/實際離廠期日差>='+inttostr(spinedit3.value)
      else if spinedit3.Value<0 then str1:=str1+'/實際離廠期日差<='+inttostr(spinedit3.value);
    end;
    if chk6.Checked then begin
      if spinedit4.Value>=0 then str1:=str1+'/輪制單廠開始期日差>='+inttostr(spinedit4.Value)
      else if spinedit4.Value<0 then str1:=str1+'/輪制單廠開始期日差<='+inttostr(spinedit4.Value);
    end;
    if chk10.Checked then begin
      if spinedit8.Value>=0 then str1:=str1+'/輪制單廠開始期鎖定日差>='+inttostr(spinedit8.Value)
      else if spinedit8.Value<0 then str1:=str1+'/輪制單廠開始期鎖定日差<'+inttostr(spinedit8.Value);
    end;
    if chk7.Checked then str1:=str1+'/齊料到縫合前時框<='+inttostr(spinedit5.Value);
    if chk8.Checked then str1:=str1+'/數頁安排時框<='+inttostr(spinedit6.value);
    if chk9.Checked then str1:=str1+'/輪制單製作時框<='+inttostr(spinedit7.Value);
    str2:=tplant;
    if str2>'' then begin
      if tshop>'' then str2:=str2+'/'+tshop;
    end else begin
      if tshop>'' then str2:=tshop;
    end;
    if str2>'' then begin
      if grp>'' then str2:=str2+'/'+grp;
    end else begin
      if grp>'' then str2:=grp;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      if checkbox2.Checked then begin
        commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2,count(distinct substr(j_no,1,4)) as cnt3,'
                    +'count(distinct j_no) as cnt4,sum(tmu*scqty)/sum(scqty) as avgtmu from tempshedule_sqn where dt=:dt';
      end else begin
        commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2,count(distinct substr(j_no,1,4)) as cnt3,'
                    +'count(distinct j_no) as cnt4,sum(tmu*scqty)/sum(scqty) as avgtmu from tempshedule where dt=:dt';
      end;
      params[0].asdatetime:=dt;
      open;
      if not fieldbyname('cnt1').isnull then str3:='客款數: '+fieldbyname('cnt1').asstring
      else str3:='';
      if not fieldbyname('cnt2').isnull then str4:='拉數: '+fieldbyname('cnt2').asstring
      else str4:='';
      if not fieldbyname('cnt3').isnull then str5:='客數: '+fieldbyname('cnt3').asstring+'  工程數: '+fieldbyname('cnt4').asstring
      else str5:='';
      if not fieldbyname('avgtmu').isnull then str6:=formatfloat('0.0000',fieldbyname('avgtmu').value)
      else str6:='0.0000';
    end;
    LABEL6.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      if checkbox2.Checked then begin
        commandtext:='select distinct * from tempshedule_sqn where dt=:dt order by hc';
      end else begin
        commandtext:='select distinct * from tempshedule where dt=:dt order by hc';
      end;
      params[0].asdatetime:=dt;
      open;
      if not fieldbyname('pline').isnull then begin
        if (opt7.ItemIndex<3) or (opt7.itemindex>3) then begin
          if frmprint=nil then frmprint:=tfrmprint.Create(nil);
          if opt2.Checked then frmprint.subtitle01.Caption:=opt2.Caption
          else if opt3.Checked then frmprint.subtitle01.Caption:=opt3.Caption
          else if opt4.Checked then frmprint.subtitle01.Caption:=opt4.Caption
          else if opt5.Checked then frmprint.subtitle01.Caption:=opt5.Caption
          else if opt6.Checked then frmprint.subtitle01.Caption:=opt6.Caption
          else if opt8.Checked then frmprint.subtitle01.Caption:=opt8.Caption;
          frmprint.dt01.Caption:=dateedit1.text;
          frmprint.dt02.Caption:=dateedit2.text;
          if j_no>'' then frmprint.project1.Caption:=j_no
          else if cust>'' then frmprint.project1.Caption:=cust;
          frmprint.wks001.Caption:=edit4.Text;
          frmprint.pline.Caption:=pline;
          frmprint.xdhq.Visible:=true;
          if checkbox2.Checked then begin
            str00:='未完成數頁';
            str1:='數頁號';
          end;
          frmprint.xdhq.Caption:=str00+'('+str1+'/--/'+str2+')';
          frmprint.pttl1.Caption:=str4;
          frmprint.pttl2.Caption:=str3;
          frmprint.pttl3.Caption:=str5;
          frmprint.avgtmu.caption:=str6;
          frmprint.ppReport1.DeviceType:='Screen';
          frmprint.ppReport1.ShowCancelDialog:=true;
          frmprint.ppReport1.ShowPrintDialog:=true;
          if checkbox5.checked then begin
            frmprint.ppsubreport1.visible:=true;
            with clientdataset5 do begin
              close;
              //commandtext:='select distinct tplant,cust,yr,mn,sum(scqty) as scqty from v_simws group by tplant,cust,yr,mn order by tplant,cust,yr,mn';
              commandtext:='select * from sp_simws order by fty,cust,fdt';
              open;
            end;
          end else begin
            frmprint.ppsubreport1.visible:=false;
          end;
          if checkbox1.Checked then frmprint.ppLabel59.Caption:=' ----  數頁重排或轉移 (待落實段學提示)'
          else if checkbox2.Checked then frmprint.ppLabel59.Caption:=' ----  分游數頁提示'
          else if checkbox4.Checked then frmprint.ppLabel59.Caption:=' ----  QN/DSQN SKU exchange Dashboard - DTA'
          else if checkbox5.Checked then frmprint.ppLabel59.Caption:=' ----  數頁安排 (待選拉提示)'
          else if checkbox7.Checked then frmprint.ppLabel59.Caption:=' ----  數頁未有尺碼分配提示'
          else if chk11.checked then frmprint.pplabel59.caption:=' ----  排期落後於付運期提示'
          else if chk12.checked then frmprint.pplabel59.caption:=' ----  Waiting for packing (without PDN)'
          else if checkbox10.Checked then frmprint.ppLabel59.Caption:=' ----  QN PII Report'
          else if checkbox3.Checked then frmprint.ppLabel59.Caption:=' ----  計劃與排程  -  '+checkbox3.Caption
          else frmprint.ppLabel59.Caption:=' ----  計劃與排程';
          if pos('test',application.ExeName)>0 then frmprint.ppLabel59.Caption:=frmprint.ppLabel59.Caption+' -Test';
            frmprint.xx01.Visible:=false;
            frmprint.xx02.Visible:=false;
            frmprint.xx03.Visible:=false;
          if checkbox1.Checked then begin
            frmprint.ppDBText1.Font.Color:=clRed;
          end else begin
            frmprint.ppDBText1.Font.Color:=clBlack;
          end;
          frmprint.ppreport1.print;
        end else if opt7.ItemIndex=3 then begin
          if frmprint1=nil then frmprint1:=tfrmprint1.Create(nil);
          if opt2.Checked then frmprint1.subtitle01.Caption:=opt2.Caption
          else if opt3.Checked then frmprint1.subtitle01.Caption:=opt3.Caption
          else if opt4.Checked then frmprint1.subtitle01.Caption:=opt4.Caption
          else if opt5.Checked then frmprint1.subtitle01.Caption:=opt5.Caption
          else if opt6.Checked then frmprint1.subtitle01.Caption:=opt6.Caption
          else if opt8.Checked then frmprint1.subtitle01.Caption:=opt8.Caption;
          frmprint1.dt01.Caption:=dateedit1.text;
          frmprint1.dt02.Caption:=dateedit2.text;
          if j_no>'' then frmprint1.project1.Caption:=j_no
          else if cust>'' then frmprint1.project1.Caption:=cust;
          frmprint1.wks002.Caption:=Edit4.text;
          frmprint1.pline.Caption:=pline;
          frmprint1.xdhq.Visible:=true;
          frmprint1.xdhq.Caption:=str00+'('+str1+'/'+str2+')';
          frmprint1.pttl1.Caption:=str4;
          frmprint1.pttl2.Caption:=str3;
          frmprint1.pttl3.Caption:=str5;
          frmprint1.avgtmu.caption:=str6;
          frmprint1.ppReport1.DeviceType:='Screen';
          frmprint1.ppReport1.ShowCancelDialog:=true;
          frmprint1.ppReport1.ShowPrintDialog:=true;
          if pos('test',application.ExeName)>0 then frmprint1.ppLabel59.Caption:=frmprint1.ppLabel59.Caption+' -Test';
          frmprint1.ppreport1.print;
        end;
      end;
    end;
    LABEL7.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmprintschedule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmprint<>nil then frmprint:=nil;
  if frmprint1<>nil then frmprint1:=nil;
  if frmprint00<>nil then frmprint00:=nil;
  action:=cafree;
  frmprintschedule:=nil;
end;

procedure Tfrmprintschedule.chk1Click(Sender: TObject);
begin
  if chk1.Checked=false then opt1.ItemIndex:=-1
  else if chk1.Checked then begin
    if opt1.ItemIndex=-1 then opt1.ItemIndex:=0;
  end;
end;

procedure Tfrmprintschedule.opt6Click(Sender: TObject);
begin
  if opt6.Checked then opt7.ItemIndex:=3;
end;

procedure Tfrmprintschedule.opt7Click(Sender: TObject);
begin
  if opt6.Checked then opt7.ItemIndex:=3
  else begin
    if opt7.ItemIndex=3 then opt7.ItemIndex:=0;
  end;
end;

procedure Tfrmprintschedule.opt4Click(Sender: TObject);
begin
  if opt4.Checked then if opt7.ItemIndex=3 then opt7.ItemIndex:=0;
end;

procedure Tfrmprintschedule.opt2Click(Sender: TObject);
begin
  if opt2.Checked then if opt7.ItemIndex=3 then opt7.ItemIndex:=0;
end;

procedure Tfrmprintschedule.opt3Click(Sender: TObject);
begin
  if opt3.Checked then if opt7.ItemIndex=3 then opt7.ItemIndex:=0;
end;

procedure Tfrmprintschedule.opt5Click(Sender: TObject);
begin
  if opt5.Checked then if opt7.ItemIndex=3 then opt7.ItemIndex:=0;
end;

procedure Tfrmprintschedule.opt1Click(Sender: TObject);
begin
  if chk1.Checked=false then opt1.ItemIndex:=-1;
end;

procedure Tfrmprintschedule.BitBtn2Click(Sender: TObject);
var
  opt,cust,pline,tshop,cstyle,tplant,grp,j_no,flag60,flag61,dbzs,flag2,acol:string;
  str00,str1,str2,str3,str4,str5,str6:string;
  dt:tdatetime;
  y,m,d:word;
  dt1,dt2:tdate;
begin
  screen.cursor:=crHourglass;
  dt:=now;
  try
    if opt6.Checked then begin
      if (dateedit1.date=0) or (dateedit2.date=0) then begin
        showmessage('Date can not be blank!');
        exit;
      end;
    end;
    if dateedit1.date>0 then begin
      decodedate(dateedit1.date,y,m,d);
      dt1:=encodedate(y,m,d);
    end else dt1:=encodedate(1899,12,30);
    if dateedit2.date>0 then begin
      decodedate(dateedit2.date,y,m,d);
      dt2:=encodedate(y,m,d);
    end else dt2:=encodedate(2020,12,31);
    cust:=worksheet1.edit1.text;
    pline:=worksheet1.edit2.text;
    tshop:=worksheet1.edit4.text;
    cstyle:=worksheet1.edit5.text;
    tplant:=worksheet1.edit6.text;
    grp:=worksheet1.ComboBox1.text;
    j_no:=worksheet1.Edit7.text;
    flag60:=worksheet1.ComboBox2.text;
    flag61:=worksheet1.ComboBox3.text;
    dbzs:=worksheet1.ComboBox4.text;
    acol:=worksheet1.edit3.text;
    flag2:=worksheet1.ComboBox5.text;

    LABEL1.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);
    //insert records to tempshedule1;
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      commandtext:='insert into tempshedule select a.*,:dt from tblshedule a where 0=0';
      if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
      if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
      if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
      if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
      if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+'''';
      if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
      if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
      if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
      if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
      if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
      if acol>'' then commandtext:=commandtext+' and acol='''+acol+'''';
      if flag2>'' then commandtext:=commandtext+' and flag2='''+flag2+'''';
      if chk3.Checked then begin
        if spinedit1.Value>=0 then commandtext:=commandtext+' and rqxc>='+inttostr(spinedit1.Value)//:x3'
        else if spinedit1.Value<0 then commandtext:=commandtext+' and rqxc<='+inttostr(spinedit1.Value);//:x3';
      end;
      if chk4.Checked then begin
        if spinedit2.Value>=0 then commandtext:=commandtext+' and qrxc>='+inttostr(spinedit2.Value)//:x4'
        else if spinedit2.Value<0 then commandtext:=commandtext+' and qrxc<='+inttostr(spinedit2.Value);//:x4';
      end;
      if chk5.Checked then begin
        if spinedit3.Value>=0 then commandtext:=commandtext+' and rqxc1>='+inttostr(spinedit3.Value)//:x5'
        else if spinedit3.Value<0 then commandtext:=commandtext+' and rqxc1<='+inttostr(spinedit3.Value);//:x5';
      end;
      if chk6.Checked then begin
        if spinedit4.Value>=0 then commandtext:=commandtext+' and xc4>='+inttostr(spinedit4.Value)//:x5'
        else if spinedit4.Value<0 then commandtext:=commandtext+' and xc4<='+inttostr(spinedit4.Value);//:x5';
      end;
      if chk7.Checked then commandtext:=commandtext+' and xc1<='+inttostr(spinedit5.Value);
      if chk8.Checked then commandtext:=commandtext+' and xc2<='+inttostr(spinedit6.Value);
      if chk9.Checked then commandtext:=commandtext+' and xc3<='+inttostr(spinedit7.Value);
      if opt7.ItemIndex=0 then begin
        commandtext:=commandtext+' and yzh=0';
      end else if opt7.ItemIndex=1 then begin
        //commandtext:=commandtext+' and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'',''W'',''w'')';
        commandtext:=commandtext+' and yzh=0 and flag3>=''1'' and flag3<''w''';
      end else if opt7.ItemIndex=2 then begin
        commandtext:=commandtext+' and yzh=0 and substr(flag3,1,1) in (''X'',''x'')';
      end else if opt7.ItemIndex=3 then begin
        commandtext:=commandtext+' and yzh=1';
      end else if opt7.ItemIndex=4 then begin
        commandtext:=commandtext+' and yzh=0 and ((flag3<=''w'') or (flag3 is null))';
      end else if opt7.ItemIndex=1 then begin
        commandtext:=commandtext+' and yzh=0 and flag3 in (''W'',''w'',''h1'',''h2'',''h3'',''h4'',''!h1'',''!h2'',''!h3'',''!h4'')';
      end;
      params[0].asdatetime:=dt;
      execute;
    end;
    WITH CLIENTDATASET2 DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      COMMANDTEXT:='EXECUTE PROCEDURE SP_GEN_TEMPSHEDULE(:X1,:X2,:X3,:X4)';
      PARAMS[0].ASDATETIME:=DT;
      IF OPT2.Checked THEN PARAMS[1].ASINTEGER:=2
      ELSE IF OPT3.Checked THEN PARAMS[1].ASINTEGER:=3
      ELSE IF OPT4.Checked THEN PARAMS[1].ASINTEGER:=4
      ELSE IF OPT5.Checked THEN PARAMS[1].ASINTEGER:=5
      ELSE IF OPT6.Checked THEN PARAMS[1].AsInteger:=6;
      PARAMS[2].AsDate:=DT1;
      PARAMS[3].ASDATE:=DT2;
      EXECUTE; 
    END;

    LABEL2.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ', NOW);

    //calculate hc;
    if chk1.Checked then begin
      if opt1.ItemIndex=0 then begin
        if opt2.Checked then opt:='01'
        else if opt3.Checked then opt:='02'
        else if opt4.Checked then opt:='03'
        else if opt5.Checked then opt:='04'
        else if opt6.Checked then opt:='05';
      end else if opt1.ItemIndex=1 then begin
        if opt2.Checked then opt:='11'
        else if opt3.Checked then opt:='12'
        else if opt4.Checked then opt:='13'
        else if opt5.Checked then opt:='14'
        else if opt6.Checked then opt:='15';
      end;
    end else begin
      if opt2.Checked then opt:='21'
      else if opt3.Checked then opt:='22'
      else if opt4.Checked then opt:='23'
      else if opt5.Checked then opt:='24'
      else if opt6.Checked then opt:='25';
    end;

    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      params.createparam(ftstring,'opt',ptinput);
      commandtext:='execute procedure sp_gentemp_hc(:dt,:opt)';
      params[0].asdatetime:=dt;
      params[1].asstring:=opt;
      execute;
    end;
    LABEL3.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);

    str00:=opt7.Items[opt7.itemindex];
    str1:='';
    if chk1.Checked then str1:=opt1.items[opt1.itemindex];
    if str1>'' then begin
      if opt2.Checked then str1:=str1+'/'+opt2.Caption
      else if opt3.Checked then str1:=str1+'/'+opt3.Caption
      else if opt4.Checked then str1:=str1+'/'+opt4.Caption
      else if opt5.Checked then str1:=str1+'/'+opt5.Caption
      else if opt6.Checked then str1:=str1+'/'+opt6.Caption
      else if opt8.Checked then str1:=str1+'/'+opt8.Caption;
    end else begin
      if opt2.Checked then str1:=opt2.Caption
      else if opt3.Checked then str1:=opt3.Caption
      else if opt4.Checked then str1:=opt4.Caption
      else if opt5.Checked then str1:=opt5.Caption
      else if opt6.Checked then str1:=opt6.Caption
      else if opt8.Checked then str1:=opt8.Caption;
    end;
    if chk3.Checked then begin
      if spinedit1.Value>=0 then str1:=str1+'/ex-fty date current diff>='+inttostr(spinedit1.value)
      else if spinedit1.Value<0 then str1:=str1+'/ex-fty date current diff<='+inttostr(spinedit1.value);
    end;
    if chk4.Checked then begin
      if spinedit2.Value>=0 then str1:=str1+'/ex-fty date locked diff>='+inttostr(spinedit2.Value)
      else if spinedit2.Value<0 then str1:=str1+'/ex-fty date locked diff<='+inttostr(spinedit2.value);
    end;
    if chk5.Checked then begin
      if spinedit3.Value>=0 then str1:=str1+'/ex-fty date actual diff>='+inttostr(spinedit3.value)
      else if spinedit3.Value<0 then str1:=str1+'/ex-fty date actual diff<='+inttostr(spinedit3.value);
    end;
    if chk6.Checked then begin
      if spinedit4.Value>=0 then str1:=str1+'/RWO fty start date diff>='+inttostr(spinedit4.Value)
      else if spinedit4.Value<0 then str1:=str1+'/RWO fty start date diff<='+inttostr(spinedit4.Value);
    end;
    if chk7.Checked then str1:=str1+'/QN start CT<='+inttostr(spinedit5.Value);
    if chk8.Checked then str1:=str1+'/QN org. CT<='+inttostr(spinedit6.value);
    if chk9.Checked then str1:=str1+'/RWO work CT<='+inttostr(spinedit7.Value);
    str2:=tplant;
    if str2>'' then begin
      if tshop>'' then str2:=str2+'/'+tshop;
    end else begin
      if tshop>'' then str2:=tshop;
    end;
    if str2>'' then begin
      if grp>'' then str2:=str2+'/'+grp;
    end else begin
      if grp>'' then str2:=grp;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2,count(distinct substr(j_no,1,4)) as cnt3,'
                  +'count(distinct j_no) as cnt4,sum(tmu*scqty)/sum(scqty) as avgtmu from tempshedule where dt=:dt';
      params[0].asdatetime:=dt;
      open;
      if not fieldbyname('cnt1').isnull then str3:='Ttl # of cust style: '+fieldbyname('cnt1').asstring
      else str3:='';
      if not fieldbyname('cnt2').isnull then str4:='Ttl # of line: '+fieldbyname('cnt2').asstring
      else str4:='';
      if not fieldbyname('cnt3').isnull then str5:='Ttl # of customer: '+fieldbyname('cnt3').asstring+'  Ttl # of project: '+fieldbyname('cnt4').asstring
      else str5:='';
      if not fieldbyname('avgtmu').isnull then str6:=formatfloat('0.0000',fieldbyname('avgtmu').value)
      else str6:='0.0000';
    end;
    LABEL6.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      commandtext:='select distinct * from tempshedule where dt=:dt order by hc';
      params[0].asdatetime:=dt;
      open;
      if not fieldbyname('pline').isnull then begin
        if (opt7.ItemIndex<3) or (opt7.ItemIndex>3) then begin
          if frmprint=nil then frmprint:=tfrmprint.Create(nil);
          if opt2.Checked then frmprint.subtitle01.Caption:=opt2.Caption
          else if opt3.Checked then frmprint.subtitle01.Caption:=opt3.Caption
          else if opt4.Checked then frmprint.subtitle01.Caption:=opt4.Caption
          else if opt5.Checked then frmprint.subtitle01.Caption:=opt5.Caption
          else if opt6.Checked then frmprint.subtitle01.Caption:=opt6.Caption;
          frmprint.dt01.Caption:=dateedit1.text;
          frmprint.dt02.Caption:=dateedit2.text;
          if j_no>'' then frmprint.project1.Caption:=j_no
          else if cust>'' then frmprint.project1.Caption:=cust;
          frmprint.pline.Caption:=pline;
          frmprint.xdhq.Visible:=true;
          frmprint.xdhq.Caption:=str00+'('+str1+'/'+str2+')';
          frmprint.pttl1.Caption:=str4;
          frmprint.pttl2.Caption:=str3;
          frmprint.pttl3.Caption:=str5;
          frmprint.avgtmu.caption:=str6;
          frmprint.ppReport1.DeviceType:='PDFFile';
          frmprint.ppReport1.ShowCancelDialog:=false;
          frmprint.ppReport1.ShowPrintDialog:=false;
          frmprint.ppReport1.TextFileName:='c:\A'+formatdatetime('mmddhhnnss',now)+'.pdf';
          frmprint.ppreport1.print;
          shellexecute(0,'open',pchar(frmprint.ppReport1.TextFileName),nil,'c:',sw_show);
        end else if opt7.ItemIndex=3 then begin
          if frmprint1=nil then frmprint1:=tfrmprint1.Create(nil);
          if opt2.Checked then frmprint1.subtitle01.Caption:=opt2.Caption
          else if opt3.Checked then frmprint1.subtitle01.Caption:=opt3.Caption
          else if opt4.Checked then frmprint1.subtitle01.Caption:=opt4.Caption
          else if opt5.Checked then frmprint1.subtitle01.Caption:=opt5.Caption
          else if opt6.Checked then frmprint1.subtitle01.Caption:=opt6.Caption;
          frmprint1.dt01.Caption:=dateedit1.text;
          frmprint1.dt02.Caption:=dateedit2.text;
          if j_no>'' then frmprint1.project1.Caption:=j_no
          else if cust>'' then frmprint1.project1.Caption:=cust;
          frmprint1.pline.Caption:=pline;
          frmprint1.xdhq.Visible:=true;
          frmprint1.xdhq.Caption:=str00+'('+str1+'/--/'+str2+')';
          frmprint1.pttl1.Caption:=str4;
          frmprint1.pttl2.Caption:=str3;
          frmprint1.pttl3.Caption:=str5;
          frmprint1.avgtmu.caption:=str6;
          frmprint1.ppReport1.DeviceType:='PDFFile';
          frmprint1.ppReport1.ShowCancelDialog:=false;
          frmprint1.ppReport1.ShowPrintDialog:=false;
          frmprint1.ppReport1.TextFileName:='c:\B'+formatdatetime('mmddhhnnss',now)+'.pdf';
          frmprint1.ppreport1.print;
          shellexecute(0,'open',pchar(frmprint1.ppReport1.TextFileName),nil,'c:',sw_show);
        end;
      end;
    end;
    LABEL7.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmprintschedule.opt8Click(Sender: TObject);
begin
  if opt8.Checked then if opt7.ItemIndex=3 then opt7.ItemIndex:=0;
end;

procedure Tfrmprintschedule.FormShow(Sender: TObject);
begin
  if worksheet1.chk6.Checked then begin
    chk1.Checked:=true;
    opt1.ItemIndex:=1;
  end else begin
    chk1.Checked:=false;
    opt1.ItemIndex:=-1;
  end;
end;

procedure Tfrmprintschedule.BitBtn3Click(Sender: TObject);
var
  opt,cust,pline,tshop,cstyle,tplant,grp,j_no,flag60,flag61,dbzs,flag2,acol:string;
  str00,str1,str2,str3,str4,str5,str6:string;
  dt:tdatetime;
  y,m,d:word;
  dt1,dt2:tdate;
begin
  screen.cursor:=crHourglass;
  dt:=now;
  try
    if opt6.Checked then begin
      if (dateedit1.date=0) or (dateedit2.date=0) then begin
        showmessage('Date can not be blank!');
        exit;
      end;
    end;
    if dateedit1.date>0 then begin
      decodedate(dateedit1.date,y,m,d);
      dt1:=encodedate(y,m,d);
    end else dt1:=encodedate(1899,12,30);
    if dateedit2.date>0 then begin
      decodedate(dateedit2.date,y,m,d);
      dt2:=encodedate(y,m,d);
    end else dt2:=encodedate(2020,12,31);
    cust:=edit1.text;
    pline:=edit2.text;
    tshop:=edit4.text;
    cstyle:=edit5.text;
    tplant:=edit6.text;
    grp:=ComboBox2.text;
    j_no:=Edit7.text;
    flag60:=ComboBox3.text;
    flag61:=ComboBox4.text;
    dbzs:=ComboBox5.text;
    acol:=edit3.text;
    flag2:=ComboBox6.text;

    LABEL1.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      if checkbox2.Checked then begin
        commandtext:='insert into tempshedule_sqn select a.*,:dt,0,'''' from tblshedule a where 0=0';
      end else begin
        commandtext:='insert into tempshedule select a.*,:dt from tblshedule a where 0=0';
      end;
      if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
      if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
      if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
      if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
      if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+'''';
      if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
      if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
      if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
      if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
      if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
      if acol>'' then commandtext:=commandtext+' and acol='''+acol+'''';
      if flag2>'' then commandtext:=commandtext+' and flag2='''+flag2+'''';
      if checkbox1.Checked then commandtext:=commandtext+' and ((lflag like ''!%'')) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
      if checkbox2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
      if checkbox3.Checked then commandtext:=commandtext+' and plan_date is null';
      //if checkbox4.Checked then commandtext:=commandtext+' and dta in (''3'',''4'')';
      if checkbox5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
      if checkbox6.Checked then commandtext:=commandtext+' and substr(flag3,1,2) in (''2s'',''3s'',''4s'',''5s'',''6s'',''7s'',''8s'',''9s'')';
      if edit8.text>'' then commandtext:=commandtext+' and jhrs='''+edit8.text+'''';
      commandtext:=commandtext+' and pline not in (select pline from tblschedule_hide where hide=1)';
      if chk3.Checked then begin
        if spinedit1.Value>=0 then commandtext:=commandtext+' and rqxc>='+inttostr(spinedit1.Value)//:x3'
        else if spinedit1.Value<0 then commandtext:=commandtext+' and rqxc<'+inttostr(spinedit1.Value);//:x3';
      end;
      if chk4.Checked then begin
        if spinedit2.Value>=0 then commandtext:=commandtext+' and qrxc>='+inttostr(spinedit2.Value)//:x4'
        else if spinedit2.Value<0 then commandtext:=commandtext+' and qrxc<'+inttostr(spinedit2.Value);//:x4';
      end;
      if chk5.Checked then begin
        if spinedit3.Value>=0 then commandtext:=commandtext+' and rqxc1>='+inttostr(spinedit3.Value)//:x5'
        else if spinedit3.Value<0 then commandtext:=commandtext+' and rqxc1<'+inttostr(spinedit3.Value);//:x5';
      end;
      if chk6.Checked then begin
        if spinedit4.Value>=0 then commandtext:=commandtext+' and xc4>='+inttostr(spinedit4.Value)//:x5'
        else if spinedit4.Value<0 then commandtext:=commandtext+' and xc4<'+inttostr(spinedit4.Value);//:x5';
      end;
      if chk10.Checked then begin
        if spinedit8.Value>=0 then commandtext:=commandtext+' and unbal>='+inttostr(spinedit8.Value)
        else if spinedit8.Value<0 then commandtext:=commandtext+' and unbal<'+inttostr(spinedit8.Value);
      end;
      if chk7.Checked then commandtext:=commandtext+' and xc1'+combobox1.text+inttostr(spinedit5.value);//'<='+inttostr(spinedit5.Value);
      if chk8.Checked then commandtext:=commandtext+' and xc2<='+inttostr(spinedit6.Value);
      if chk9.Checked then commandtext:=commandtext+' and xc3<='+inttostr(spinedit7.Value);
      if opt7.ItemIndex=0 then begin
        commandtext:=commandtext+' and yzh=0';
      end else if opt7.ItemIndex=1 then begin
        commandtext:=commandtext+' and yzh=0 and flag3>=''1'' and flag3<''w''';
      end else if opt7.ItemIndex=2 then begin
        commandtext:=commandtext+' and yzh=0 and substr(flag3,1,1) in (''X'',''x'')';
      end else if opt7.ItemIndex=3 then begin
        commandtext:=commandtext+' and yzh=1';
      end else if opt7.ItemIndex=4 then begin
        commandtext:=commandtext+' and yzh=0 and ((flag3<=''w'') or (flag3 is null))';
      end else if opt7.ItemIndex=5 then begin
        commandtext:=commandtext+' and yzh=0 and flag3 in (''W'',''w'',''h1'',''h2'',''h3'',''h4'',''!h1'',''!h2'',''!h3'',''!h4'')';
      end else if opt7.ItemIndex=6 then begin
        commandtext:=commandtext+' and yzh=0 and ((flag3='''') or (flag3 is null))';
      end;
      params[0].asdatetime:=dt;
      execute;
    end;
    if checkbox2.Checked then begin
    WITH CLIENTDATASET2 DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      COMMANDTEXT:='EXECUTE PROCEDURE SP_GEN_TEMPSHEDULE_SQN(:X1,:X2,:X3,:X4)';
      PARAMS[0].ASDATETIME:=DT;
      IF OPT2.Checked THEN PARAMS[1].ASINTEGER:=2
      ELSE IF OPT3.Checked THEN PARAMS[1].ASINTEGER:=3
      ELSE IF OPT4.Checked THEN PARAMS[1].ASINTEGER:=4
      ELSE IF OPT5.Checked THEN PARAMS[1].ASINTEGER:=5
      ELSE IF OPT6.Checked THEN PARAMS[1].AsInteger:=6
      else if opt8.Checked then params[1].asinteger:=7;
      PARAMS[2].AsDate:=DT1;
      PARAMS[3].ASDATE:=DT2;
      EXECUTE;
    END;
    end else begin
    WITH CLIENTDATASET2 DO BEGIN
      CLOSE;
      PARAMS.CLEAR;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      COMMANDTEXT:='EXECUTE PROCEDURE SP_GEN_TEMPSHEDULE(:X1,:X2,:X3,:X4)';
      PARAMS[0].ASDATETIME:=DT;
      IF OPT2.Checked THEN PARAMS[1].ASINTEGER:=2
      ELSE IF OPT3.Checked THEN PARAMS[1].ASINTEGER:=3
      ELSE IF OPT4.Checked THEN PARAMS[1].ASINTEGER:=4
      ELSE IF OPT5.Checked THEN PARAMS[1].ASINTEGER:=5
      ELSE IF OPT6.Checked THEN PARAMS[1].AsInteger:=6
      else if opt8.Checked then params[1].asinteger:=7;
      PARAMS[2].AsDate:=DT1;
      PARAMS[3].ASDATE:=DT2;
      EXECUTE;
    END;
    end;

    LABEL2.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ', NOW);

    if chk1.Checked then begin
      if opt1.ItemIndex=0 then begin
        if opt2.Checked then opt:='01'
        else if opt3.Checked then opt:='02'
        else if opt4.Checked then opt:='03'
        else if opt5.Checked then opt:='04'
        else if opt6.Checked then opt:='05'
        else if opt8.Checked then opt:='06';
      end else if opt1.ItemIndex=1 then begin
        if opt2.Checked then opt:='11'
        else if opt3.Checked then opt:='12'
        else if opt4.Checked then opt:='13'
        else if opt5.Checked then opt:='14'
        else if opt6.Checked then opt:='15'
        else if opt8.Checked then opt:='16';
      end;
    end else begin
      if opt2.Checked then opt:='21'
      else if opt3.Checked then opt:='22'
      else if opt4.Checked then opt:='23'
      else if opt5.Checked then opt:='24'
      else if opt6.Checked then opt:='25'
      else if opt8.Checked then opt:='26';
    end;
    if checkbox2.Checked then opt:='27';

    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      params.createparam(ftstring,'opt',ptinput);
      commandtext:='execute procedure sp_gentemp_hc(:dt,:opt)';
      params[0].asdatetime:=dt;
      params[1].asstring:=opt;
      execute;
    end;
    LABEL3.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);

    str00:=opt7.Items[opt7.itemindex];
    str1:='';
    if chk1.Checked then str1:=opt1.items[opt1.itemindex];
    if str1>'' then begin
      if opt2.Checked then str1:=str1+'/'+opt2.Caption
      else if opt3.Checked then str1:=str1+'/'+opt3.Caption
      else if opt4.Checked then str1:=str1+'/'+opt4.Caption
      else if opt5.Checked then str1:=str1+'/'+opt5.Caption
      else if opt6.Checked then str1:=str1+'/'+opt6.Caption
      else if opt8.Checked then str1:=str1+'/'+opt8.Caption;
    end else begin
      if opt2.Checked then str1:=opt2.Caption
      else if opt3.Checked then str1:=opt3.Caption
      else if opt4.Checked then str1:=opt4.Caption
      else if opt5.Checked then str1:=opt5.Caption
      else if opt6.Checked then str1:=opt6.Caption
      else if opt8.Checked then str1:=opt8.Caption;
    end;
    if chk3.Checked then begin
      if spinedit1.Value>=0 then str1:=str1+'/ex-fty date current diff>='+inttostr(spinedit1.value)
      else if spinedit1.Value<0 then str1:=str1+'/ex-fty date current diff<='+inttostr(spinedit1.value);
    end;
    if chk4.Checked then begin
      if spinedit2.Value>=0 then str1:=str1+'/ex-fty date locked diff>='+inttostr(spinedit2.Value)
      else if spinedit2.Value<0 then str1:=str1+'/ex-fty date locked diff<='+inttostr(spinedit2.value);
    end;
    if chk5.Checked then begin
      if spinedit3.Value>=0 then str1:=str1+'/ex-fty date actual diff>='+inttostr(spinedit3.value)
      else if spinedit3.Value<0 then str1:=str1+'/ex-fty date actual diff<='+inttostr(spinedit3.value);
    end;
    if chk6.Checked then begin
      if spinedit4.Value>=0 then str1:=str1+'/RWO fty start date diff>='+inttostr(spinedit4.Value)
      else if spinedit4.Value<0 then str1:=str1+'/RWO fty start date diff<='+inttostr(spinedit4.Value);
    end;
    if chk10.Checked then begin
      if spinedit8.Value>=0 then str1:=str1+'/RWO fty start date locked diff>='+inttostr(spinedit8.Value)
      else if spinedit8.Value<0 then str1:=str1+'/RWO fty start date locked diff<'+inttostr(spinedit8.Value);
    end;
    if chk7.Checked then str1:=str1+'/QN start CT<='+inttostr(spinedit5.Value);
    if chk8.Checked then str1:=str1+'/QN org. CT<='+inttostr(spinedit6.value);
    if chk9.Checked then str1:=str1+'/RWO work CT<='+inttostr(spinedit7.Value);
    str2:=tplant;
    if str2>'' then begin
      if tshop>'' then str2:=str2+'/'+tshop;
    end else begin
      if tshop>'' then str2:=tshop;
    end;
    if str2>'' then begin
      if grp>'' then str2:=str2+'/'+grp;
    end else begin
      if grp>'' then str2:=grp;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      if checkbox2.Checked then begin
        commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2,count(distinct substr(j_no,1,4)) as cnt3,'
                    +'count(distinct j_no) as cnt4,sum(tmu*scqty)/sum(scqty) as avgtmu from tempshedule_sqn where dt=:dt';
      end else begin
        commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2,count(distinct substr(j_no,1,4)) as cnt3,'
                    +'count(distinct j_no) as cnt4,sum(tmu*scqty)/sum(scqty) as avgtmu from tempshedule where dt=:dt';
      end;
      params[0].asdatetime:=dt;
      open;
      if not fieldbyname('cnt1').isnull then str3:='Ttl # of cust style: '+fieldbyname('cnt1').asstring
      else str3:='';
      if not fieldbyname('cnt2').isnull then str4:='Ttl # of line: '+fieldbyname('cnt2').asstring
      else str4:='';
      if not fieldbyname('cnt3').isnull then str5:='Ttl # of customer: '+fieldbyname('cnt3').asstring+'  Ttl # of project: '+fieldbyname('cnt4').asstring
      else str5:='';
      if not fieldbyname('avgtmu').isnull then str6:=formatfloat('0.0000',fieldbyname('avgtmu').value)
      else str6:='0.0000';
    end;
    LABEL6.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'dt',ptinput);
      if checkbox2.Checked then begin
        commandtext:='select distinct * from tempshedule_sqn where dt=:dt order by hc';
      end else begin
        commandtext:='select distinct * from tempshedule where dt=:dt order by hc';
      end;
      params[0].asdatetime:=dt;
      open;
      if not fieldbyname('pline').isnull then begin
        if (opt7.ItemIndex<3) or (opt7.itemindex>3) then begin
          if frmprint00=nil then frmprint00:=tfrmprint00.Create(nil);
          if opt2.Checked then frmprint00.subtitle01.Caption:=opt2.Caption
          else if opt3.Checked then frmprint00.subtitle01.Caption:=opt3.Caption
          else if opt4.Checked then frmprint00.subtitle01.Caption:=opt4.Caption
          else if opt5.Checked then frmprint00.subtitle01.Caption:=opt5.Caption
          else if opt6.Checked then frmprint00.subtitle01.Caption:=opt6.Caption
          else if opt8.Checked then frmprint00.subtitle01.Caption:=opt8.Caption;
          frmprint00.dt01.Caption:=dateedit1.text;
          frmprint00.dt02.Caption:=dateedit2.text;
          if j_no>'' then frmprint00.project1.Caption:=j_no
          else if cust>'' then frmprint00.project1.Caption:=cust;
          frmprint00.wks001.Caption:=edit4.Text;
          frmprint00.pline.Caption:=pline;
          frmprint00.xdhq.Visible:=true;
          if checkbox2.Checked then begin
            str00:='Non-completed SQNs';
            str1:='QN #';
          end;
          frmprint00.xdhq.Caption:=str00+'('+str1+'/--/'+str2+')';
          frmprint00.pttl1.Caption:=str4;
          frmprint00.pttl2.Caption:=str3;
          frmprint00.pttl3.Caption:=str5;
          frmprint00.avgtmu.caption:=str6;
          frmprint00.ppReport1.DeviceType:='Screen';
          frmprint00.ppReport1.ShowCancelDialog:=true;
          frmprint00.ppReport1.ShowPrintDialog:=true;
          if checkbox1.Checked then frmprint00.ppLabel59.Caption:=' ----  數頁重排或轉移 (待落實段學提示)'
          else if checkbox2.Checked then frmprint00.ppLabel59.Caption:=' ----  分游數頁提示'
          else if checkbox4.Checked then frmprint00.ppLabel59.Caption:=' ----  QN/DSQN SKU exchange Dashboard - DTA'
          else if checkbox5.Checked then frmprint00.ppLabel59.Caption:=' ----  數頁安排 (待選拉提示)'
          else if checkbox6.Checked then frmprint00.ppLabel59.Caption:=' ----  夾數頁提示'
          else if checkbox3.Checked then frmprint00.ppLabel59.Caption:=' ----  計劃與排程  -  '+checkbox3.Caption
          else frmprint00.ppLabel59.Caption:=' ----  計劃與排程';
          if pos('test',application.ExeName)>0 then frmprint00.ppLabel59.Caption:=frmprint00.ppLabel59.Caption+' -Test';
            frmprint00.xx01.Visible:=false;
            frmprint00.xx02.Visible:=false;
            frmprint00.xx03.Visible:=false;
          if checkbox1.Checked then begin
            frmprint00.ppDBText1.Font.Color:=clRed;
          end else begin
            frmprint00.ppDBText1.Font.Color:=clBlack;
          end;
          frmprint00.ppreport1.print;
        end else if opt7.ItemIndex=3 then begin
          if frmprint1=nil then frmprint1:=tfrmprint1.Create(nil);
          if opt2.Checked then frmprint1.subtitle01.Caption:=opt2.Caption
          else if opt3.Checked then frmprint1.subtitle01.Caption:=opt3.Caption
          else if opt4.Checked then frmprint1.subtitle01.Caption:=opt4.Caption
          else if opt5.Checked then frmprint1.subtitle01.Caption:=opt5.Caption
          else if opt6.Checked then frmprint1.subtitle01.Caption:=opt6.Caption
          else if opt8.Checked then frmprint1.subtitle01.Caption:=opt8.Caption;
          frmprint1.dt01.Caption:=dateedit1.text;
          frmprint1.dt02.Caption:=dateedit2.text;
          if j_no>'' then frmprint1.project1.Caption:=j_no
          else if cust>'' then frmprint1.project1.Caption:=cust;
          frmprint1.wks002.Caption:=Edit4.text;
          frmprint1.pline.Caption:=pline;
          frmprint1.xdhq.Visible:=true;
          frmprint1.xdhq.Caption:=str00+'('+str1+'/'+str2+')';
          frmprint1.pttl1.Caption:=str4;
          frmprint1.pttl2.Caption:=str3;
          frmprint1.pttl3.Caption:=str5;
          frmprint1.avgtmu.caption:=str6;
          frmprint1.ppReport1.DeviceType:='Screen';
          frmprint1.ppReport1.ShowCancelDialog:=true;
          frmprint1.ppReport1.ShowPrintDialog:=true;
          if pos('test',application.ExeName)>0 then frmprint1.ppLabel59.Caption:=frmprint1.ppLabel59.Caption+' -Test';
          frmprint1.ppreport1.print;
        end;
      end;
    end;
    LABEL7.Caption:=FORMATDATETIME('HH:NN:SS:ZZZ',NOW);
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
