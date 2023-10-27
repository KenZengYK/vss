unit printschedule1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Spin, DBClient, Mask, rxToolEdit;

type
  Tfrmprintschedule1 = class(TForm)
    chk1: TCheckBox;
    GroupBox3: TGroupBox;
    opt1: TRadioButton;
    opt2: TRadioButton;
    opt3: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    opt4: TRadioButton;
    DataSource2: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    GroupBox1: TGroupBox;
    rbt1: TRadioButton;
    chk2: TCheckBox;
    GroupBox2: TGroupBox;
    xh1: TRadioButton;
    xh2: TRadioButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    opt5: TRadioButton;
    opt6: TRadioButton;
    Label3: TLabel;
    chk3: TCheckBox;
    SpinEdit2: TSpinEdit;
    rbt4: TRadioButton;
    xh3: TRadioButton;
    chk4: TCheckBox;
    GroupBox4: TGroupBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    GroupBox6: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    DateEdit5: TDateEdit;
    DateEdit6: TDateEdit;
    opt7: TRadioButton;
    rbt5: TRadioButton;
    rbt6: TRadioButton;
    opt8: TRadioButton;
    opt9: TRadioButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprintschedule1: Tfrmprintschedule1;

implementation

uses mainformu, worksheet, printformu, printform1u;//, printform2u;

{$R *.DFM}

procedure Tfrmprintschedule1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprintschedule1.FormShow(Sender: TObject);
begin
  chk1.checked:=false;
  spinedit1.enabled:=false;
  opt1.checked:=true;
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select distinct dbzs from tblshedule where dbzs>'''' and yzh=0';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('dbzs').value);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox1.text:='ALL';
end;

procedure Tfrmprintschedule1.chk1Click(Sender: TObject);
begin
  if chk1.checked=true then begin
    spinedit1.enabled:=true;
  end
  else begin
    spinedit1.enabled:=false;
  end;
end;

procedure Tfrmprintschedule1.BitBtn1Click(Sender: TObject);
var
  str1,str2,str3,str4,str5,str6,str00:string;
  pline,cust,styleno,tshop,cstyle,tplant,grp,j_no,flag60,flag61,dbzs:string;
begin
 screen.Cursor:=crhourglass;
 with clientdataset1 do begin
   close;
   params.clear;
   commandtext:='delete from tempshedule1';
   execute;
   close;
   params.clear;
   commandtext:='execute procedure sp_updweekday';
   execute;
 end;
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

 if tplant>'' then str2:=' / '+tplant else str2:='';
 if chk2.checked=false then begin
  if not xh3.Checked then begin
    if opt1.checked=true then  str1:=' order by a.pline,a.seq,a.j_no,a.j2_job,a.artno,a.acol'
    else if opt2.checked=true then str1:=' order by cust,a.cstyle,a.pline,a.tzlcrq,a.j_no,a.j2_job,a.seq,a.artno,a.acol'
    else if opt3.checked=true then str1:=' order by a.pline,a.yqlcrq,a.j_no,a.j2_job,a.artno,a.acol,a.seq'
    else if opt4.checked=true then str1:=' order by cust,a.cstyle,a.j_no,a.tzlcrq,a.j2_job,a.seq,a.artno,a.acol'
    else if opt5.checked=true then str1:=' order by a.rqxc,a.artno,a.acol,a.pline,a.seq,a.j_no,a.j2_job'
    else if opt6.Checked=true then str1:=' order by a.rqxc desc,a.artno,a.acol,a.pline,a.seq,a.j_no,a.j2_job'
    else if opt7.Checked=true then str1:=' order by cust,a.cstyle,a.j_no,a.rwo,a.j2_job,a.tzlcrq,a.seq,a.artno,a.acol';

    str1:=' order by hc';
    if chk1.checked=true then begin
     if rbt1.checked=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and rqxc<=:rqxc';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        params[0].asinteger:=0-spinedit1.value;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=0'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=0 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=0 and a.dbzs='''+combobox1.text+''''+str1;
        params[0].asinteger:=0-spinedit1.Value;
        open;
      end;
     end else if rbt4.checked=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and rqxc<=:rqxc and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        params[0].asinteger:=0-spinedit1.value;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

       with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and a.dbzs='''+combobox1.text+''''+str1;
        params[0].asinteger:=0-spinedit1.Value;
        open;
       end;
     end else if rbt5.Checked then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        params.createparam(ftdate,'wcrq',ptinput);
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and rqxc<=:rqxc and cfwcrq<:wcrq';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        params[0].asinteger:=0-spinedit1.value;
        params[1].asdate:=date;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

       with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=0 and a.cfwcrq<:x2'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=0 and a.cfwcrq<:x2 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=0 and a.cfwcrq<:x2 and a.dbzs='''+combobox1.text+''''+str1;
        params[0].asinteger:=0-spinedit1.Value;
        params[1].asdate:=date;
        open;
       end;
     end;
    end else if chk3.Checked then begin
     if rbt1.checked=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and rqxc>=:rqxc';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        params[0].asinteger:=spinedit2.value;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=0'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=0 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=0 and a.dbzs='''+combobox1.text+''''+str1;
        params[0].asinteger:=spinedit2.Value;
        open;
      end;
     end else if rbt4.checked=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and rqxc>=:rqxc and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        params[0].asinteger:=spinedit2.value;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

       with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and a.dbzs='''+combobox1.text+''''+str1;
        params[0].asinteger:=spinedit2.Value;
        open;
       end;
     end else if rbt5.Checked then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        params.createparam(ftdate,'wcrq',ptinput);
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and rqxc>=:rqxc and cfwcrq<:wcrq';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        params[0].asinteger:=spinedit2.value;
        params[1].asdate:=date;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

       with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=0 and a.cfwcrq<:x2'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=0 and a.cfwcrq<:x2 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=0 and a.cfwcrq<:x2 and a.dbzs='''+combobox1.text+''''+str1;
        params[0].asinteger:=spinedit2.Value;
        params[1].asdate:=date;
        open;
       end;      
     end;
    end else if chk4.Checked then begin
     if rbt1.checked=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and rqxc<qrxc';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

      with clientdataset1 do begin
        close;
        params.clear;
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<qrxc and yzh=0'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<qrxc and yzh=0 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<qrxc and yzh=0 and a.dbzs='''+combobox1.text+''''+str1;
        open;
      end;
     end else if rbt4.checked=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and rqxc<qrxc and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

       with clientdataset1 do begin
        close;
        params.clear;
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<qrxc and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<qrxc and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<qrxc and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and a.dbzs='''+combobox1.text+''''+str1;
        open;
       end;
     end else if rbt5.Checked then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'wcrq',ptinput);
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and rqxc<qrxc and cfwcrq<:wcrq';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        params[0].asdate:=date;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

       with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x2',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<qrxc and yzh=0 and a.cfwcrq<:x2'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<qrxc and yzh=0 and a.cfwcrq<:x2 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<qrxc and yzh=0 and a.cfwcrq<:x2 and a.dbzs='''+combobox1.text+''''+str1;
        params[0].asdate:=date;
        open;
       end;
     end;
    end else begin
     if rbt1.checked=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

      with clientdataset1 do begin
        close;
        params.clear;
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and yzh=0'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and yzh=0 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and yzh=0 and a.dbzs='''+combobox1.text+''''+str1;
        open;
      end;
     end else if rbt4.checked=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

       with clientdataset1 do begin
        close;
        params.clear;
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.sopno=b.sopno and a.j2_job=b.jobno and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.sopno=b.sopno and a.j2_job=b.jobno and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.sopno=b.sopno and a.j2_job=b.jobno and yzh=0 and a.flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and a.dbzs='''+combobox1.text+''''+str1;
        open;
       end;
     end else if rbt5.Checked then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'wcrq',ptinput);
        if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
        if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
        if dateedit5.date>0 then params.createparam(ftdate,'x3',ptinput);
        if dateedit6.date>0 then params.createparam(ftdate,'x4',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=0 and cfwcrq<:wcrq';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+datetostr(dateedit1.date);
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+datetostr(dateedit2.date);
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x3';//+datetostr(dateedit5.date);
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x4';//+datetostr(dateedit6.date);
        params[0].asdate:=date;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
        if dateedit5.date>0 then params.ParamByName('x3').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x4').AsDate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

       with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x2',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.sopno=b.sopno and a.j2_job=b.jobno and yzh=0 and a.cfwcrq<:x2'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.sopno=b.sopno and a.j2_job=b.jobno and yzh=0 and a.cfwcrq<:x2 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.sopno=b.sopno and a.j2_job=b.jobno and yzh=0 and a.cfwcrq<:x2 and a.dbzs='''+combobox1.text+''''+str1;
        params[0].AsDate:=date;
        open;
       end;

     end;
    end;

    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2,count(distinct substr(j_no,1,4)) as cnt3,'
                  +'count(distinct j_no) as cnt4,sum(tmu*scqty)/sum(scqty) as avgtmu from tempshedule1 where yzh=0';
      if chk1.Checked then begin
        if rbt1.Checked then begin
          params.createparam(ftinteger,'rqxc',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=0'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=0 and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=0 and dbzs='''+combobox1.text+'''';
          params[0].asinteger:=0-spinedit1.Value;
          open;
        end else if rbt4.Checked then begin
          params.createparam(ftinteger,'rqxc',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and dbzs='''+combobox1.text+'''';
          params[0].asinteger:=0-spinedit1.Value;
          open;
        end else if rbt5.Checked then begin
          params.createparam(ftinteger,'rqxc',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=0 and cfwcrq<:x2'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=0 and cfwcrq<:x2 and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=0 and cfwcrq<:x2 and dbzs='''+combobox1.text+'''';
          params[0].asinteger:=0-spinedit1.Value;
          params[1].asdate:=date;
          open;
        end;
      end else if chk3.Checked then begin
        if rbt1.Checked then begin
          params.createparam(ftinteger,'rqxc',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=0'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=0 and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=0 and dbzs='''+combobox1.text+'''';
          params[0].asinteger:=spinedit2.Value;
          open;
        end else if rbt4.Checked then begin
          params.createparam(ftinteger,'rqxc',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and dbzs='''+combobox1.text+'''';
          params[0].asinteger:=spinedit2.Value;
          open;
        end else if rbt5.Checked then begin
          params.createparam(ftinteger,'rqxc',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=0 and cfwcrq<:x2'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=0 and cfwcrq<:x2 and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=0 and cfwcrq<:x2 and dbzs='''+combobox1.text+'''';
          params[0].asinteger:=spinedit2.Value;
          params[1].asdate:=date;
          open;
        end;
      end else if chk4.Checked then begin
        if rbt1.Checked then begin
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc<qrxc and yzh=0'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc<qrxc and yzh=0 and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc<qrxc and yzh=0 and dbzs='''+combobox1.text+'''';
          open;
        end else if rbt4.Checked then begin
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc<qrxc and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc<qrxc and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc<qrxc and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and dbzs='''+combobox1.text+'''';
          open;
        end else if rbt5.Checked then begin
          params.createparam(ftdate,'x2',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc<qrxc and yzh=0 and cfwcrq<:x2'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc<qrxc and yzh=0 and cfwcrq<:x2 and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc<qrxc and yzh=0 and cfwcrq<:x2 and dbzs='''+combobox1.text+'''';
          params.createparam(ftdate,'x2',ptinput);
          open;
        end;
      end else begin
        if rbt1.Checked then begin
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and yzh=0'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and yzh=0 and dbzs>'''''
          else
            commandtext:=commandtext+' and yzh=0 and dbzs='''+combobox1.text+'''';
          open;
        end else if rbt4.Checked then begin
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'')'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and dbzs>'''''
          else
            commandtext:=commandtext+' and yzh=0 and flag3 in (''1'',''2'',''3'',''4'',''5'',''W'',''w'') and dbzs='''+combobox1.text+'''';
          open;
        end else if rbt5.Checked then begin
          params.createparam(ftdate,'x2',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and yzh=0 and cfwcrq<:x2'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and yzh=0 and cfwcrq<:x2 and dbzs>'''''
          else
            commandtext:=commandtext+' and yzh=0 and cfwcrq<:x2 and dbzs='''+combobox1.text+'''';
          params[0].asdate:=date;
          open;
        end;
      end;
      if not fieldbyname('cnt1').isnull then str3:='Ttl # of styles: '+fieldbyname('cnt1').asstring
      else str3:='';
      if not fieldbyname('cnt2').isnull then str4:='Ttl # of lines: '+fieldbyname('cnt2').asstring
      else str4:='';
      if not fieldbyname('cnt3').isnull then str5:='Ttl # of customers: '+fieldbyname('cnt3').asstring+'      Ttl # of projects: '+fieldbyname('cnt4').asstring
      else str5:='';
      if not fieldbyname('avgtmu').isnull then str6:=formatfloat('0.0000',fieldbyname('avgtmu').value)
      else str6:='0.0000';
    end;

    if rbt1.Checked then str00:=rbt1.Caption
    else if rbt4.Checked then str00:=rbt4.Caption
    else if rbt5.Checked then str00:=rbt5.Caption
    else if rbt6.Checked then str00:=rbt6.Caption
    else str00:='';

    if frmprint=nil then frmprint:=tfrmprint.create(nil);

    if xh1.Checked then begin
      frmprint.artno2.Caption:='PH Style';
      frmprint.artno1.DataField:='artno';
    end else if xh2.Checked then begin
      frmprint.artno2.Caption:='Cust Style';
      frmprint.artno1.DataField:='cstyle';
    end;
    if rbt1.checked=true then frmprint.xdhq.Visible:=false;
    frmprint.project1.text:=uppercase(worksheet1.edit1.text);
    frmprint.pline.text:=worksheet1.edit2.text;
    if opt1.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Line Work Start Date(by line)'+str2+')';
    end else if opt2.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Customer/Style/Line/LW Organized Ex-fty Date'+str2+')';
    end else if opt4.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Customer/Style/Project/LW Organized Ex-fty Date'+str2+')';
    end else if opt7.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Customer/Style/RWO'+str2+')';
    end else if chk1.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Ex-fty Date Present Diff<='+spinedit1.text+str2+')';
    end else if chk3.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Ex-fty Date Present Diff>='+spinedit2.text+str2+')';
    end else if (combobox1.text>'') and (combobox1.text<>'ALL') then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(With Impact Code'+str2+')';
    end else if chk4.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Present Diff vs Locked Diff - Negative Bal only'+str2+')';
    end else if opt8.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Line Work Start Date(by cust style)'+str2+')';
    end else if opt9.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Line Work Start Date(by start date)'+str2+')';
    end;
    frmprint.pttl1.Caption:=str4;
    frmprint.pttl2.Caption:=str3;
    frmprint.pttl3.Caption:=str5;
    frmprint.avgtmu.Caption:=str6;
    frmprint.ppreport1.print;
  end else if xh3.Checked then begin
    if opt1.checked=true then  str1:=' order by a.pline,a.seq,a.j_no,a.j2_job,a.artno,a.acol'
    else if opt2.checked=true then str1:=' order by cust,a.cstyle,a.pline,a.tzlcrq,a.j_no,a.j2_job,a.seq,a.artno,a.acol'
    else if opt3.checked=true then str1:=' order by a.pline,a.yqlcrq,a._no,a.j2_job,a.artno,a.acol,a.seq'
    else if opt4.checked=true then str1:=' order by cust,a.cstyle,a.j_no,a.tzlcrq,a.j2_job,a.seq,a.artno,a.acol'
    else if opt5.checked=true then str1:=' order by a.rqxc,a.artno,a.acol,a.pline,a.seq,a.j_no,a.j2_job'
    else if opt6.Checked=true then str1:=' order by a.rqxc desc,a.artno,a.acol,a.pline,a.seq,a.j_no,a.j2_job'
    else if opt7.Checked=true then str1:=' order by cust,a.cstyle,a.j_no,a.rwo,a.j2_job,a.tzlcrq,a.seq,a.artno,a.acol';

    str1:=' order by hc';
    if chk1.checked=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        params.createparam(ftdate,'x6',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=1 and rqxc<=:rqxc';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+dateedit1.text;
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+dateedit2.text;
        if dateedit3.date>0 then commandtext:=commandtext+' and pd8>=:x3';//+dateedit3.text;
        if dateedit4.date>0 then commandtext:=commandtext+' and pd8<=:x4';//+dateedit4.text;
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x5';//+dateedit5.text;
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x6';//+dateedit6.text;
        params[0].asinteger:=0-spinedit1.value;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').asdate:=dateedit2.date;
        if dateedit3.date>0 then params.ParamByName('x3').asdate:=dateedit3.date;
        if dateedit4.date>0 then params.ParamByName('x4').asdate:=dateedit4.date;
        if dateedit5.date>0 then params.ParamByName('x5').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x6').asdate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=1 and b.qty>0'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=1 and b.qty>0 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc<=:rqxc and yzh=1 and b.qty>0 and a.dbzs='''+combobox1.text+''''+str1;
        params[0].asinteger:=0-spinedit1.Value;
        open;
      end;
    end else if chk3.Checked then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        params.createparam(ftdate,'x6',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=1 and rqxc>=:rqxc';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+dateedit1.text;
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+dateedit2.text;
        if dateedit3.date>0 then commandtext:=commandtext+' and pd8>=:x3';//+dateedit3.text;
        if dateedit4.date>0 then commandtext:=commandtext+' and pd8<=:x4';//+dateedit4.text;
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x5';//+dateedit5.text;
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x6';//+dateedit6.text;
        params[0].asinteger:=spinedit2.value;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').asdate:=dateedit2.date;
        if dateedit3.date>0 then params.ParamByName('x3').asdate:=dateedit3.date;
        if dateedit4.date>0 then params.ParamByName('x4').asdate:=dateedit4.date;
        if dateedit5.date>0 then params.ParamByName('x5').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x6').asdate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'rqxc',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=1 and b.qty>0'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=1 and b.qty>0 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and rqxc>=:rqxc and yzh=1 and b.qty>0 and a.dbzs='''+combobox1.text+''''+str1;
        params[0].asinteger:=spinedit2.Value;
        open;
      end;
    end else begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        params.createparam(ftdate,'x6',ptinput);
        commandtext:='insert into tempshedule1 select * from tblshedule where yzh=1';
        if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
        if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
        if styleno>'' then commandtext:=commandtext+' and (artno like '''+styleno+'%'')';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
        if tplant>'' then commandtext:=commandtext+' and (tplant='''+tplant+''')';
        if grp>'' then commandtext:=commandtext+' and grp='''+grp+'''';
        if j_no>'' then commandtext:=commandtext+' and j_no like '''+j_no+'%''';
        if flag60>'' then commandtext:=commandtext+' and flag6 like '''+flag60+'%''';
        if flag61>'' then commandtext:=commandtext+' and flag6='''+flag61+'''';
        if dbzs>'' then commandtext:=commandtext+' and dbzs='''+dbzs+'''';
        if combobox1.Text='*ALL' then commandtext:=commandtext+' and dbzs='''''
        else if combobox1.text<>'ALL' then commandtext:=commandtext+' and dbzs='''+combobox1.text+'''';
        if dateedit1.date>0 then commandtext:=commandtext+' and cfksrq>=:x1';//+dateedit1.text;
        if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<=:x2';//+dateedit2.text;
        if dateedit3.date>0 then commandtext:=commandtext+' and pd8>=:x3';//+dateedit3.text;
        if dateedit4.date>0 then commandtext:=commandtext+' and pd8<=:x4';//+dateedit4.text;
        if dateedit5.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)>=:x5';//+dateedit5.text;
        if dateedit6.date>0 then commandtext:=commandtext+' and cast(yqlcrq as date)<=:x6';//+dateedit6.text;
        if dateedit1.date>0 then params.ParamByName('x1').asdate:=dateedit1.date;
        if dateedit2.date>0 then params.ParamByName('x2').asdate:=dateedit2.date;
        if dateedit3.date>0 then params.ParamByName('x3').asdate:=dateedit3.date;
        if dateedit4.date>0 then params.ParamByName('x4').asdate:=dateedit4.date;
        if dateedit5.date>0 then params.ParamByName('x5').asdate:=dateedit5.date;
        if dateedit6.date>0 then params.ParamByName('x6').asdate:=dateedit6.date;
        execute;
      end;
      // calculate hc
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        if opt1.Checked then params[0].asstring:='1'
        else if opt2.Checked then params[0].asstring:='2'
        else if opt3.Checked then params[0].asstring:='3'
        else if opt4.Checked then params[0].asstring:='4'
        else if opt5.Checked then params[0].asstring:='5'
        else if opt6.Checked then params[0].asstring:='6'
        else if opt7.Checked then params[0].asstring:='7'
        else if opt8.Checked then params[0].asstring:='8'
        else if opt9.Checked then params[0].asstring:='9';
        execute;
      end;

      with clientdataset1 do begin
        close;
        params.clear;
        if combobox1.text='ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and yzh=1 and b.qty>0'+str1
        else if combobox1.text='*ALL' then
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and yzh=1 and b.qty>0 and a.dbzs>'''''+str1
        else
          commandtext:='select a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbljobno b where a.j_no=b.sopno and a.j2_job=b.jobno and yzh=1 and b.qty>0 and a.dbzs='''+combobox1.text+''''+str1;
        open;
      end;
    end;

    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2,count(distinct substr(j_no,1,4)) as cnt3,'
                  +'count(distinct j_no) as cnt4,sum(tmu*scqty)/sum(scqty) as avgtmu from tempshedule1 where yzh=1';
      if chk1.Checked then begin
          params.createparam(ftinteger,'rqxc',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=1'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=1 and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc<=:rqxc and yzh=1 and dbzs='''+combobox1.text+'''';
          params[0].asinteger:=0-spinedit1.Value;
          open;
      end else if chk3.Checked then begin
          params.createparam(ftinteger,'rqxc',ptinput);
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=1'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=1 and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc>=:rqxc and yzh=1 and dbzs='''+combobox1.text+'''';
          params[0].asinteger:=spinedit2.Value;
          open;
      end else if chk4.Checked then begin
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and rqxc<qrxc and yzh=1'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and rqxc<qrxc and yzh=1 and dbzs>'''''
          else
            commandtext:=commandtext+' and rqxc<qrxc and yzh=1 and dbzs='''+combobox1.text+'''';
          open;
      end else begin
          if combobox1.text='ALL' then
            commandtext:=commandtext+' and yzh=1'
          else if combobox1.text='*ALL' then
            commandtext:=commandtext+' and yzh=1 and dbzs>'''''
          else
            commandtext:=commandtext+' and yzh=1 and dbzs='''+combobox1.text+'''';
          open;
      end;
      if not fieldbyname('cnt1').isnull then str3:='Ttl # of styles: '+fieldbyname('cnt1').asstring
      else str3:='';
      if not fieldbyname('cnt2').isnull then str4:='Ttl # of lines: '+fieldbyname('cnt2').asstring
      else str4:='';
      if not fieldbyname('cnt3').isnull then str5:='Ttl # of customers: '+fieldbyname('cnt3').asstring+'      Ttl # of projects: '+fieldbyname('cnt4').asstring
      else str5:='';
      if not fieldbyname('avgtmu').isnull then str6:=formatfloat('0.0000',fieldbyname('avgtmu').value)
      else str6:='0.0000';
    end;

    if frmprint1=nil then frmprint1:=tfrmprint1.create(nil);
    if xh1.Checked then begin
      frmprint1.artno2.Caption:='PH Style';
      frmprint1.artno1.DataField:='artno';
    end else if xh2.Checked then begin
      frmprint1.artno2.Caption:='Cust Style';
      frmprint1.artno1.DataField:='cstyle';
    end;
    if rbt1.checked=true then frmprint1.xdhq.Visible:=false;
    frmprint1.project1.text:=uppercase(worksheet1.edit1.text);
    frmprint1.pline.text:=worksheet1.edit2.text;
    if opt1.Checked then begin
      frmprint1.xdhq.Visible:=true;
      frmprint1.xdhq.Caption:=str00+'(Line Work Start Date(by line)'+str2+')';
    end else if opt2.Checked then begin
      frmprint1.xdhq.Visible:=true;
      frmprint1.xdhq.Caption:=str00+'(Customer/Style/Line/LW Organized Ex-fty Date'+str2+')';
    end else if opt4.Checked then begin
      frmprint1.xdhq.Visible:=true;
      frmprint1.xdhq.Caption:=str00+'(Customer/Style/Project/LW Organized Ex-fty Date'+str2+')';
    end else if opt7.Checked then begin
      frmprint1.xdhq.Visible:=true;
      frmprint1.xdhq.Caption:=str00+'(Customer/Style/RWO'+str2+')';
    end else if chk1.Checked then begin
      frmprint1.xdhq.Visible:=true;
      frmprint1.xdhq.Caption:=str00+'(Ex-fty Date Present Diff<='+spinedit1.text+str2+')';
    end else if chk3.Checked then begin
      frmprint1.xdhq.Visible:=true;
      frmprint1.xdhq.Caption:=str00+'(Ex-fty Date Present Diff>='+spinedit2.text+str2+')';
    end else if (combobox1.text>'') and (combobox1.text<>'ALL') then begin
      frmprint1.xdhq.Visible:=true;
      frmprint1.xdhq.Caption:=str00+'(With Impact Code'+str2+')';
    end else if chk4.Checked then begin
      frmprint1.xdhq.Visible:=true;
      frmprint1.xdhq.Caption:=str00+'(Present Diff vs Locked Diff - Negative Bal only'+str2+')';
    end else if opt8.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Line Work Start Date(by cust style)'+str2+')';
    end else if opt9.Checked then begin
      frmprint.xdhq.Visible:=true;
      frmprint.xdhq.Caption:=str00+'(Line Work Start Date(by start date)'+str2+')';
    end;
    frmprint1.pttl1.Caption:=str4;
    frmprint1.pttl2.Caption:=str3;
    frmprint1.pttl3.Caption:=str5;
    frmprint1.avgtmu.Caption:=str6;
    frmprint1.ppreport1.print;
  end;
 end;
 screen.cursor:=crdefault;
end;

procedure Tfrmprintschedule1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmprint<>nil then frmprint:=nil;
  if frmprint1<>nil then frmprint1:=nil;
  //if frmprint2<>nil then frmprint2:=nil;
  action:=cafree;
  frmprintschedule1:=nil;
end;

end.
