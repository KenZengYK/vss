unit newcap_nostyleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, GridsEh, DBGridEh, Spin, DB,
  DBClient, DateUtils;

type
  Tfrmnewcap_nostyle = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label3: TLabel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DBGridEh2: TDBGridEh;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGridEh1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns13EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns15EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns17EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns19EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns21EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns23EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query4AfterOpen(DataSet: TDataSet);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure ComboBox2Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure DataSource2StateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Shownostyledetailform(const m1: integer);
  end;

var
  frmnewcap_nostyle: Tfrmnewcap_nostyle;

implementation

uses mainformu, oaprojectionformu, newcap_nostyle_wkformu,
  newcap_notepadformu, CP_ActionlogFormu;

{$R *.dfm}

procedure Tfrmnewcap_nostyle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_nostyle:=nil;
end;

procedure Tfrmnewcap_nostyle.FormShow(Sender: TObject);
begin
  spinedit1.value:=yearof(date);
  spinedit2.value:=1;
  spinedit3.value:=12;
  combobox1change(self);
  //combobox2change(self);
end;

procedure Tfrmnewcap_nostyle.ComboBox1Change(Sender: TObject);
var
  tplant:string;
begin
  if combobox1.text>'' then begin
    combobox2.text:=combobox1.text;
    if combobox1.text='BD' then tplant:='CL' else tplant:='SL';
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_oa_proj_all where tplant='''+tplant+''' and yr='+inttostr(spinedit1.value);
      open;
    end;
    {
    with query4 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_fty_all where tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
      open;
    end;
    }
    combobox2change(self);
  end;
end;

procedure Tfrmnewcap_nostyle.Shownostyledetailform(const m1: integer);
var
  tplant:string;
  y,m,d:word;
  scap:boolean;
begin
  screen.cursor:=crSQLWait;
  decodedate(date,y,m,d);
  try
    if combobox1.text='BD' then tplant:='CL' else tplant:='SL';
    with query2 do begin
      close;
      params.clear;
      commandtext:='select scap from tbluser where usr='''+frmmain.ComboBox1.text+'''';
      open;
      if not fieldbyname('scap').isnull then scap:=fieldbyname('scap').value else scap:=false;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_cap_gen_nostyle_wk(:x1,:x2,:x3)';
      params[0].asstring:=tplant;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=m1;
      execute;
    end;
    if frmnewcap_nostyle_wk=nil then frmnewcap_nostyle_wk:=tfrmnewcap_nostyle_wk.Create(nil);
    frmnewcap_nostyle_wk.ComboBox1.text:=tplant;//combobox1.text;//tplant;
    frmnewcap_nostyle_wk.SpinEdit1.value:=spinedit1.value;
    //showmessage('1');
    with frmnewcap_nostyle_wk.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_oa_proj where tplant='''+tplant+''' and yr='+inttostr(spinedit1.value)+' and m1='+inttostr(m1);
      open;
    end;
    if scap=true then frmnewcap_nostyle_wk.DBGridEh1.ReadOnly:=false
    else begin
      if (y>spinedit1.value) then frmnewcap_nostyle_wk.DBGridEh1.readonly:=true
      else if (y=spinedit1.Value) then begin
        if m1<m+5 then frmnewcap_nostyle_wk.DBGridEh1.ReadOnly:=true
        else frmnewcap_nostyle_wk.DBGridEh1.ReadOnly:=false;
      end else if (y=spinedit1.value-1) then begin
        if m<9 then frmnewcap_nostyle_wk.DBGridEh1.readonly:=false
        else if m=9 then begin
          if m1>1 then frmnewcap_nostyle_wk.DBGridEh1.readonly:=false
          else frmnewcap_nostyle_wk.DBGridEh1.readonly:=true;
        end else if m=10 then begin
          if m1>2 then frmnewcap_nostyle_wk.DBGridEh1.readonly:=false
          else frmnewcap_nostyle_wk.DBGridEh1.readonly:=true;
        end else if m=11 then begin
          if m1>3 then frmnewcap_nostyle_wk.DBGridEh1.readonly:=false
          else frmnewcap_nostyle_wk.DBGridEh1.readonly:=true;
        end else if m=12 then begin
          if m1>4 then frmnewcap_nostyle_wk.DBGridEh1.readonly:=false
          else frmnewcap_nostyle_wk.DBGridEh1.readonly:=true;
        end;
      end;
    end;
    frmnewcap_nostyle_wk.dbgrideh1.ReadOnly:=false;
    frmnewcap_nostyle_wk.Label10.Caption:='Review';
    //showmessage('2');
    frmnewcap_nostyle_wk.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns1EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(1);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns3EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(2);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns5EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(3);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns7EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(4);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns9EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(5);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns11EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(6);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns13EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(7);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns15EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(8);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns17EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(9);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns19EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(10);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns21EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(11);
end;

procedure Tfrmnewcap_nostyle.DBGridEh1Columns23EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  shownostyledetailform(12);
end;

procedure Tfrmnewcap_nostyle.Query1AfterOpen(DataSet: TDataSet);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select distinct m1,min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno_new where yr=:x1 and wkno>0 group by m1 order by m1';
    params[0].asinteger:=spinedit1.value;
    open;
    first;
    while not eof do begin
      if fieldbyname('m1').value=1 then begin
        dbgrideh1.columns[3].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[4].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[3].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[4].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=2 then begin
        dbgrideh1.columns[5].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[6].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[5].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[6].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=3 then begin
        dbgrideh1.columns[7].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[8].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[7].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[8].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=4 then begin
        dbgrideh1.columns[9].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[10].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[9].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[10].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=5 then begin
        dbgrideh1.columns[11].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[12].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[11].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[12].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=6 then begin
        dbgrideh1.columns[13].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[14].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[13].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[14].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=7 then begin
        dbgrideh1.columns[15].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[16].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[15].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[16].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=8 then begin
        dbgrideh1.columns[17].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[18].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[17].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[18].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=9 then begin
        dbgrideh1.columns[19].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[20].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[19].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[20].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=10 then begin
        dbgrideh1.columns[21].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[22].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[21].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[22].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=11 then begin
        dbgrideh1.columns[23].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[24].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[23].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[24].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end else if fieldbyname('m1').value=12 then begin
        dbgrideh1.columns[25].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh1.columns[26].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
        dbgrideh2.columns[25].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Qty';
        dbgrideh2.columns[26].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')|Net Ttl Working Hrs';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_nostyle.Query4AfterOpen(DataSet: TDataSet);
var
  q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,tq1:double;
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,ts1:double;
  fty:string;
begin
  if (query4.fieldbyname('flag6').value='B') then begin
    with query2 do begin
      close;
      params.clear;
      if combobox2.text<>'CHINA' then begin
        if combobox2.text='BD' then fty:='CL' else fty:=combobox2.text;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(tq1) as tq1,sum(ts1) as ts1,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_oa_proj_all where tplant=:x1 and yr=:x2';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end else begin
        //params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(tq1) as tq1,sum(ts1) as ts1,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_oa_proj_all where tplant in (''SL'',''FJ'') and yr=:x2';
        //params[0].asstring:=query1.fieldbyname('tplant').value;
        params[0].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end;
      open;
      if not fieldbyname('tq1').isnull then
      tq1:=fieldbyname('tq1').value else tq1:=0;
      if not fieldbyname('ts1').isnull then
      ts1:=fieldbyname('ts1').value else ts1:=0;
      q1:=fieldbyname('m1').value;
      q2:=fieldbyname('m2').value;
      q3:=fieldbyname('m3').value;
      q4:=fieldbyname('m4').value;
      q5:=fieldbyname('m5').value;
      q6:=fieldbyname('m6').value;
      q7:=fieldbyname('m7').value;
      q8:=fieldbyname('m8').value;
      q9:=fieldbyname('m9').value;
      q10:=fieldbyname('m10').value;
      q11:=fieldbyname('m11').value;
      q12:=fieldbyname('m12').value;
      s1:=fieldbyname('s1').value;
      s2:=fieldbyname('s2').value;
      s3:=fieldbyname('s3').value;
      s4:=fieldbyname('s4').value;
      s5:=fieldbyname('s5').value;
      s6:=fieldbyname('s6').value;
      s7:=fieldbyname('s7').value;
      s8:=fieldbyname('s8').value;
      s9:=fieldbyname('s9').value;
      s10:=fieldbyname('s10').value;
      s11:=fieldbyname('s11').value;
      s12:=fieldbyname('s12').value;
    end;
    with query2 do begin
      close;
      params.clear;
      if combobox2.text<>'CHINA' then begin
        if combobox2.text='BD' then fty:='CL' else fty:=combobox2.text;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(tq1) as tq1,sum(ts1) as ts1,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_fty_all where tplant=:x1 and yr=:x2';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end else begin
        //params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(tq1) as tq1,sum(ts1) as ts1,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_fty_all where tplant in (''SL'',''FJ'') and yr=:x2';
        //params[0].asstring:=query1.fieldbyname('tplant').value;
        params[0].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end;
      open;
    end;
    if not query2.fieldbyname('tq1').isnull then begin
      if query2.fieldbyname('tq1').value>0 then
      dbgrideh2.Columns[1].footers[0].value:=formatfloat('#.00',tq1*100.00/query2.fieldbyname('tq1').value)
      else dbgrideh2.columns[1].Footers[0].value:='0.00';
      if query2.fieldbyname('ts1').value>0 then
      dbgrideh2.Columns[2].footers[0].value:=formatfloat('#.00',ts1*100.00/query2.fieldbyname('ts1').value)
      else dbgrideh2.columns[2].Footers[0].value:='0.00';
    end;
    if query2.fieldbyname('q1').value>0 then
    dbgrideh2.Columns[3].footers[0].value:=formatfloat('#.00',q1*100.00/query2.fieldbyname('m1').value)
    else dbgrideh2.columns[3].Footers[0].value:='0.00';
    if query2.fieldbyname('s1').value>0 then
    dbgrideh2.Columns[4].footers[0].value:=formatfloat('#.00',s1*100.00/query2.fieldbyname('s1').value)
    else dbgrideh2.columns[4].Footers[0].value:='0.00';
    if query2.fieldbyname('q2').value>0 then
    dbgrideh2.Columns[5].footers[0].value:=formatfloat('#.00',q2*100.00/query2.fieldbyname('m2').value)
    else dbgrideh2.columns[5].Footers[0].value:='0.00';
    if query2.fieldbyname('s2').value>0 then
    dbgrideh2.Columns[6].footers[0].value:=formatfloat('#.00',s2*100.00/query2.fieldbyname('s2').value)
    else dbgrideh2.columns[6].Footers[0].value:='0.00';
    if query2.fieldbyname('q3').value>0 then
    dbgrideh2.Columns[7].footers[0].value:=formatfloat('#.00',q3*100.00/query2.fieldbyname('m3').value)
    else dbgrideh2.columns[7].Footers[0].value:='0.00';
    if query2.fieldbyname('s3').value>0 then
    dbgrideh2.Columns[8].footers[0].value:=formatfloat('#.00',s3*100.00/query2.fieldbyname('s3').value)
    else dbgrideh2.columns[8].Footers[0].value:='0.00';
    if query2.fieldbyname('q4').value>0 then
    dbgrideh2.Columns[9].footers[0].value:=formatfloat('#.00',q4*100.00/query2.fieldbyname('m4').value)
    else dbgrideh2.columns[9].Footers[0].value:='0.00';
    if query2.fieldbyname('s4').value>0 then
    dbgrideh2.Columns[10].footers[0].value:=formatfloat('#.00',s4*100.00/query2.fieldbyname('s4').value)
    else dbgrideh2.columns[10].Footers[0].value:='0.00';
    if query2.fieldbyname('q5').value>0 then
    dbgrideh2.Columns[11].footers[0].value:=formatfloat('#.00',q5*100.00/query2.fieldbyname('m5').value)
    else dbgrideh2.columns[11].Footers[0].value:='0.00';
    if query2.fieldbyname('s5').value>0 then
    dbgrideh2.Columns[12].footers[0].value:=formatfloat('#.00',s5*100.00/query2.fieldbyname('s5').value)
    else dbgrideh2.columns[12].Footers[0].value:='0.00';
    if query2.fieldbyname('q6').value>0 then
    dbgrideh2.Columns[13].footers[0].value:=formatfloat('#.00',q6*100.00/query2.fieldbyname('m6').value)
    else dbgrideh2.columns[13].Footers[0].value:='0.00';
    if query2.fieldbyname('s6').value>0 then
    dbgrideh2.Columns[14].footers[0].value:=formatfloat('#.00',s6*100.00/query2.fieldbyname('s6').value)
    else dbgrideh2.columns[14].Footers[0].value:='0.00';
    if query2.fieldbyname('q7').value>0 then
    dbgrideh2.Columns[15].footers[0].value:=formatfloat('#.00',q7*100.00/query2.fieldbyname('m7').value)
    else dbgrideh2.columns[15].Footers[0].value:='0.00';
    if query2.fieldbyname('s7').value>0 then
    dbgrideh2.Columns[16].footers[0].value:=formatfloat('#.00',s7*100.00/query2.fieldbyname('s7').value)
    else dbgrideh2.columns[16].Footers[0].value:='0.00';
    if query2.fieldbyname('q8').value>0 then
    dbgrideh2.Columns[17].footers[0].value:=formatfloat('#.00',q8*100.00/query2.fieldbyname('m8').value)
    else dbgrideh2.columns[17].Footers[0].value:='0.00';
    if query2.fieldbyname('s8').value>0 then
    dbgrideh2.Columns[18].footers[0].value:=formatfloat('#.00',s8*100.00/query2.fieldbyname('s8').value)
    else dbgrideh2.columns[18].Footers[0].value:='0.00';
    if query2.fieldbyname('q9').value>0 then
    dbgrideh2.Columns[19].footers[0].value:=formatfloat('#.00',q9*100.00/query2.fieldbyname('m9').value)
    else dbgrideh2.columns[19].Footers[0].value:='0.00';
    if query2.fieldbyname('s9').value>0 then
    dbgrideh2.Columns[20].footers[0].value:=formatfloat('#.00',s9*100.00/query2.fieldbyname('s9').value)
    else dbgrideh2.columns[20].Footers[0].value:='0.00';
    if query2.fieldbyname('q10').value>0 then
    dbgrideh2.Columns[21].footers[0].value:=formatfloat('#.00',q10*100.00/query2.fieldbyname('m10').value)
    else dbgrideh2.columns[21].Footers[0].value:='0.00';
    if query2.fieldbyname('s10').value>0 then
    dbgrideh2.Columns[22].footers[0].value:=formatfloat('#.00',s10*100.00/query2.fieldbyname('s10').value)
    else dbgrideh2.columns[22].Footers[0].value:='0.00';
    if query2.fieldbyname('q11').value>0 then
    dbgrideh2.Columns[23].footers[0].value:=formatfloat('#.00',q11*100.00/query2.fieldbyname('m11').value)
    else dbgrideh2.columns[23].Footers[0].value:='0.00';
    if query2.fieldbyname('s11').value>0 then
    dbgrideh2.Columns[24].footers[0].value:=formatfloat('#.00',s11*100.00/query2.fieldbyname('s11').value)
    else dbgrideh2.columns[24].Footers[0].value:='0.00';
    if query2.fieldbyname('q12').value>0 then
    dbgrideh2.Columns[25].footers[0].value:=formatfloat('#.00',q12*100.00/query2.fieldbyname('m12').value)
    else dbgrideh2.columns[25].Footers[0].value:='0.00';
    if query2.fieldbyname('s12').value>0 then
    dbgrideh2.Columns[26].footers[0].value:=formatfloat('#.00',s12*100.00/query2.fieldbyname('s12').value)
    else dbgrideh2.columns[26].Footers[0].value:='0.00';

    if q1>query2.fieldbyname('m1').value then dbgrideh2.Columns[3].Font.Color:=clGreen
    else if q1<query2.fieldbyname('m1').value then dbgrideh2.Columns[3].Font.Color:=clRed
    else dbgrideh2.columns[3].font.color:=clBlack;
    if q2>query2.fieldbyname('m2').value then dbgrideh2.Columns[5].Font.Color:=clGreen
    else if q2<query2.fieldbyname('m2').value then dbgrideh2.Columns[5].Font.Color:=clRed
    else dbgrideh2.columns[5].font.color:=clBlack;
    if q3>query2.fieldbyname('m3').value then dbgrideh2.Columns[7].Font.Color:=clGreen
    else if q3<query2.fieldbyname('m3').value then dbgrideh2.Columns[7].Font.Color:=clRed
    else dbgrideh2.columns[7].font.color:=clBlack;
    if q4>query2.fieldbyname('m4').value then dbgrideh2.Columns[9].Font.Color:=clGreen
    else if q4<query2.fieldbyname('m4').value then dbgrideh2.Columns[9].Font.Color:=clRed
    else dbgrideh2.columns[9].font.color:=clBlack;
    if q5>query2.fieldbyname('m5').value then dbgrideh2.Columns[11].Font.Color:=clGreen
    else if q5<query2.fieldbyname('m5').value then dbgrideh2.Columns[11].Font.Color:=clRed
    else dbgrideh2.columns[11].font.color:=clBlack;
    if q6>query2.fieldbyname('m6').value then dbgrideh2.Columns[13].Font.Color:=clGreen
    else if q6<query2.fieldbyname('m6').value then dbgrideh2.Columns[13].Font.Color:=clRed
    else dbgrideh2.columns[13].font.color:=clBlack;
    if q7>query2.fieldbyname('m7').value then dbgrideh2.Columns[15].Font.Color:=clGreen
    else if q7<query2.fieldbyname('m7').value then dbgrideh2.Columns[15].Font.Color:=clRed
    else dbgrideh2.columns[15].font.color:=clBlack;
    if q8>query2.fieldbyname('m8').value then dbgrideh2.Columns[17].Font.Color:=clGreen
    else if q8<query2.fieldbyname('m8').value then dbgrideh2.Columns[17].Font.Color:=clRed
    else dbgrideh2.columns[17].font.color:=clBlack;
    if q9>query2.fieldbyname('m9').value then dbgrideh2.Columns[19].Font.Color:=clGreen
    else if q9<query2.fieldbyname('m9').value then dbgrideh2.Columns[19].Font.Color:=clRed
    else dbgrideh2.columns[19].font.color:=clBlack;
    if q10>query2.fieldbyname('m10').value then dbgrideh2.Columns[21].Font.Color:=clGreen
    else if q10<query2.fieldbyname('m10').value then dbgrideh2.Columns[21].Font.Color:=clRed
    else dbgrideh2.columns[21].font.color:=clBlack;
    if q11>query2.fieldbyname('m11').value then dbgrideh2.Columns[23].Font.Color:=clGreen
    else if q11<query2.fieldbyname('m11').value then dbgrideh2.Columns[23].Font.Color:=clRed
    else dbgrideh2.columns[23].font.color:=clBlack;
    if q12>query2.fieldbyname('m12').value then dbgrideh2.Columns[25].Font.Color:=clGreen
    else if q12<query2.fieldbyname('m12').value then dbgrideh2.Columns[25].Font.Color:=clRed
    else dbgrideh2.columns[25].font.color:=clBlack;

    if s1>query2.fieldbyname('s1').value then dbgrideh2.Columns[4].Font.Color:=clGreen
    else if s1<query2.fieldbyname('s1').value then dbgrideh2.Columns[4].Font.Color:=clRed
    else dbgrideh2.columns[4].font.color:=clBlack;
    if s2>query2.fieldbyname('s2').value then dbgrideh2.Columns[6].Font.Color:=clGreen
    else if s2<query2.fieldbyname('s2').value then dbgrideh2.Columns[6].Font.Color:=clRed
    else dbgrideh2.columns[6].font.color:=clBlack;
    if s3>query2.fieldbyname('s3').value then dbgrideh2.Columns[8].Font.Color:=clGreen
    else if s3<query2.fieldbyname('s3').value then dbgrideh2.Columns[8].Font.Color:=clRed
    else dbgrideh2.columns[8].font.color:=clBlack;
    if s4>query2.fieldbyname('s4').value then dbgrideh2.Columns[10].Font.Color:=clGreen
    else if s4<query2.fieldbyname('s4').value then dbgrideh2.Columns[10].Font.Color:=clRed
    else dbgrideh2.columns[10].font.color:=clBlack;
    if s5>query2.fieldbyname('s5').value then dbgrideh2.Columns[12].Font.Color:=clGreen
    else if s5<query2.fieldbyname('s5').value then dbgrideh2.Columns[12].Font.Color:=clRed
    else dbgrideh2.columns[12].font.color:=clBlack;
    if s6>query2.fieldbyname('s6').value then dbgrideh2.Columns[14].Font.Color:=clGreen
    else if s6<query2.fieldbyname('s6').value then dbgrideh2.Columns[14].Font.Color:=clRed
    else dbgrideh2.columns[14].font.color:=clBlack;
    if s7>query2.fieldbyname('s7').value then dbgrideh2.Columns[16].Font.Color:=clGreen
    else if s7<query2.fieldbyname('s7').value then dbgrideh2.Columns[16].Font.Color:=clRed
    else dbgrideh2.columns[16].font.color:=clBlack;
    if s8>query2.fieldbyname('s8').value then dbgrideh2.Columns[18].Font.Color:=clGreen
    else if s8<query2.fieldbyname('s8').value then dbgrideh2.Columns[18].Font.Color:=clRed
    else dbgrideh2.columns[18].font.color:=clBlack;
    if s9>query2.fieldbyname('s9').value then dbgrideh2.Columns[20].Font.Color:=clGreen
    else if s9<query2.fieldbyname('s9').value then dbgrideh2.Columns[20].Font.Color:=clRed
    else dbgrideh2.columns[20].font.color:=clBlack;
    if s10>query2.fieldbyname('s10').value then dbgrideh2.Columns[22].Font.Color:=clGreen
    else if s10<query2.fieldbyname('s10').value then dbgrideh2.Columns[22].Font.Color:=clRed
    else dbgrideh2.columns[22].font.color:=clBlack;
    if s11>query2.fieldbyname('s11').value then dbgrideh2.Columns[24].Font.Color:=clGreen
    else if s11<query2.fieldbyname('s11').value then dbgrideh2.Columns[24].Font.Color:=clRed
    else dbgrideh2.columns[24].font.color:=clBlack;
    if s12>query2.fieldbyname('s12').value then dbgrideh2.Columns[26].Font.Color:=clGreen
    else if s12<query2.fieldbyname('s12').value then dbgrideh2.Columns[26].Font.Color:=clRed
    else dbgrideh2.columns[26].font.color:=clBlack;
  {
  end else if (query4.fieldbyname('flag6').value='K') then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12 from tbl_cap_oa_proj_all where tplant=:x1 and yr=:x2 and flag6=:x3';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asstring:=query4.fieldbyname('flag6').value;
      open;
      q1:=fieldbyname('m1').value;
      q2:=fieldbyname('m2').value;
      q3:=fieldbyname('m3').value;
      q4:=fieldbyname('m4').value;
      q5:=fieldbyname('m5').value;
      q6:=fieldbyname('m6').value;
      q7:=fieldbyname('m7').value;
      q8:=fieldbyname('m8').value;
      q9:=fieldbyname('m9').value;
      q10:=fieldbyname('m10').value;
      q11:=fieldbyname('m11').value;
      q12:=fieldbyname('m12').value;
    end;
    if q1>query4.fieldbyname('m1').value then dbgrideh2.Columns[1].Font.Color:=clGreen
    else if q1<query4.fieldbyname('m1').value then dbgrideh2.Columns[1].Font.Color:=clRed
    else dbgrideh2.columns[1].font.color:=clBlack;
    if q2>query4.fieldbyname('m2').value then dbgrideh2.Columns[3].Font.Color:=clGreen
    else if q2<query4.fieldbyname('m2').value then dbgrideh2.Columns[3].Font.Color:=clRed
    else dbgrideh2.columns[3].font.color:=clBlack;
    if q3>query4.fieldbyname('m3').value then dbgrideh2.Columns[5].Font.Color:=clGreen
    else if q3<query4.fieldbyname('m3').value then dbgrideh2.Columns[5].Font.Color:=clRed
    else dbgrideh2.columns[5].font.color:=clBlack;
    if q4>query4.fieldbyname('m4').value then dbgrideh2.Columns[7].Font.Color:=clGreen
    else if q4<query4.fieldbyname('m4').value then dbgrideh2.Columns[7].Font.Color:=clRed
    else dbgrideh2.columns[7].font.color:=clBlack;
    if q5>query4.fieldbyname('m5').value then dbgrideh2.Columns[9].Font.Color:=clGreen
    else if q5<query4.fieldbyname('m5').value then dbgrideh2.Columns[9].Font.Color:=clRed
    else dbgrideh2.columns[9].font.color:=clBlack;
    if q6>query4.fieldbyname('m6').value then dbgrideh2.Columns[11].Font.Color:=clGreen
    else if q6<query4.fieldbyname('m6').value then dbgrideh2.Columns[11].Font.Color:=clRed
    else dbgrideh2.columns[11].font.color:=clBlack;
    if q7>query4.fieldbyname('m7').value then dbgrideh2.Columns[13].Font.Color:=clGreen
    else if q7<query4.fieldbyname('m7').value then dbgrideh2.Columns[13].Font.Color:=clRed
    else dbgrideh2.columns[13].font.color:=clBlack;
    if q8>query4.fieldbyname('m8').value then dbgrideh2.Columns[15].Font.Color:=clGreen
    else if q8<query4.fieldbyname('m8').value then dbgrideh2.Columns[15].Font.Color:=clRed
    else dbgrideh2.columns[15].font.color:=clBlack;
    if q9>query4.fieldbyname('m9').value then dbgrideh2.Columns[17].Font.Color:=clGreen
    else if q9<query4.fieldbyname('m9').value then dbgrideh2.Columns[17].Font.Color:=clRed
    else dbgrideh2.columns[17].font.color:=clBlack;
    if q10>query4.fieldbyname('m10').value then dbgrideh2.Columns[19].Font.Color:=clGreen
    else if q10<query4.fieldbyname('m10').value then dbgrideh2.Columns[19].Font.Color:=clRed
    else dbgrideh2.columns[19].font.color:=clBlack;
    if q11>query4.fieldbyname('m11').value then dbgrideh2.Columns[21].Font.Color:=clGreen
    else if q11<query4.fieldbyname('m11').value then dbgrideh2.Columns[21].Font.Color:=clRed
    else dbgrideh2.columns[21].font.color:=clBlack;
    if q12>query4.fieldbyname('m12').value then dbgrideh2.Columns[23].Font.Color:=clGreen
    else if q12<query4.fieldbyname('m12').value then dbgrideh2.Columns[23].Font.Color:=clRed
    else dbgrideh2.columns[23].font.color:=clBlack;
  end else if (query4.fieldbyname('flag6').value='U') then begin
    dbgrideh2.columns[1].Font.color:=clBlack;
    dbgrideh2.columns[3].Font.color:=clBlack;
    dbgrideh2.columns[5].Font.color:=clBlack;
    dbgrideh2.columns[7].Font.color:=clBlack;
    dbgrideh2.columns[9].Font.color:=clBlack;
    dbgrideh2.columns[11].Font.color:=clBlack;
    dbgrideh2.columns[13].Font.color:=clBlack;
    dbgrideh2.columns[15].Font.color:=clBlack;
    dbgrideh2.columns[17].Font.color:=clBlack;
    dbgrideh2.columns[19].Font.color:=clBlack;
    dbgrideh2.columns[21].Font.color:=clBlack;
    dbgrideh2.columns[23].Font.color:=clBlack;
  }
  end;
end;

procedure Tfrmnewcap_nostyle.Query1AfterScroll(DataSet: TDataSet);
begin
  if query1.fieldbyname('flag6').value='B' then begin
    dbgrideh1.Columns[3].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[5].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[7].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[9].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[11].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[13].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[15].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[17].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[19].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[21].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[23].ButtonStyle:=cbsEllipsis;
    dbgrideh1.Columns[25].ButtonStyle:=cbsEllipsis;
  end else begin
    dbgrideh1.Columns[3].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[5].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[7].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[9].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[11].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[13].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[15].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[17].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[19].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[21].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[23].ButtonStyle:=cbsAuto;
    dbgrideh1.Columns[25].ButtonStyle:=cbsAuto;
  end;
end;

procedure Tfrmnewcap_nostyle.ComboBox2Change(Sender: TObject);
var
  tplant:string;
begin
  if combobox2.text>'' then begin
    if combobox2.text='BD' then tplant:='CL' else if combobox2.text='CHINA' then tplant:='SL' else tplant:=combobox2.text;
    if (combobox2.text<>'CHINA') then begin
      //showmessage('00');
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_cap_gen_ftyall(:x1,:x2)';
        params[0].asstring:=tplant;//combobox2.text;
        params[1].asinteger:=spinedit1.value;
        execute;
      end;
      //showmessage('10');
      with query4 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_fty_all where tplant='''+tplant+''' and yr='+inttostr(spinedit1.value);
        open;
      end;
      //showmessage('20');
      spinedit2change(self);


    end else if (combobox2.text='CHINA') then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_cap_gen_ftyall(:x1,:x2)';
        params[0].asstring:='SL';
        params[1].asinteger:=spinedit1.value;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_cap_gen_ftyall(:x1,:x2)';
        params[0].asstring:='FJ';
        params[1].asinteger:=spinedit1.value;
        execute;
      end;
      with query4 do begin
        close;
        params.clear;
        commandtext:='select distinct flag6,sum(m1) as m1,sum(s1) as s1,sum(m2) as m2,sum(s2) as s2,sum(m3) as m3,sum(s3) as s3,sum(m4) as m4,sum(s4) as s4,'
                    +'sum(m5) as m5,sum(s5) as s5,sum(m6) as m6,sum(s6) as s6,sum(m7) as m7,sum(s7) as s7,sum(m8) as m8,sum(s8) as s8,sum(m9) as m9,sum(s9) as s9,'
                    +'sum(m10) as m10,sum(s10) as s10,sum(m11) as m11,sum(s11) as s11,sum(m12) as m12,sum(s12) as s12,sum(tq) as tq,sum(ts) as ts,sum(tq1) as tq1,sum(ts1) as ts1 from tbl_cap_fty_all '
                    +'where tplant in (''SL'',''FJ'') and yr='+inttostr(spinedit1.value)+' group by flag6';
        open;
      end;
      spinedit2change(self);

    end else if (combobox2.text='THAI') then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_cap_gen_ftyall(:x1,:x2)';
        params[0].asstring:='KB';
        params[1].asinteger:=spinedit1.value;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_cap_gen_ftyall(:x1,:x2)';
        params[0].asstring:='KBC';
        params[1].asinteger:=spinedit1.value;
        execute;
      end;
      with query4 do begin
        close;
        params.clear;
        commandtext:='select distinct flag6,sum(m1) as m1,sum(s1) as s1,sum(m2) as m2,sum(s2) as s2,sum(m3) as m3,sum(s3) as s3,sum(m4) as m4,sum(s4) as s4,'
                    +'sum(m5) as m5,sum(s5) as s5,sum(m6) as m6,sum(s6) as s6,sum(m7) as m7,sum(s7) as s7,sum(m8) as m8,sum(s8) as s8,sum(m9) as m9,sum(s9) as s9,'
                    +'sum(m10) as m10,sum(s10) as s10,sum(m11) as m11,sum(s11) as s11,sum(m12) as m12,sum(s12) as s12,sum(tq) as tq,sum(ts) as ts,sum(tq1) as tq1,sum(ts1) as ts1 from tbl_cap_fty_all '
                    +'where tplant in (''KB'') and yr='+inttostr(spinedit1.value)+' group by flag6';
        open;
      end;
      spinedit2change(self);

    end;
  end;
end;

procedure Tfrmnewcap_nostyle.SpinEdit2Change(Sender: TObject);
var
  i:integer;
  m1:array[1..12] of integer;
  tq1,ts1,tq2,ts2:double;
begin
  if spinedit2.value>1 then begin
    for i:=3 to 26 do begin
      dbgrideh1.Columns[i].Visible:=true;
      dbgrideh2.Columns[i].Visible:=true;
    end;
    for i:=3 to 3+(spinedit2.value-1)*2-1 do begin
      dbgrideh1.Columns[i].Visible:=false;
      dbgrideh2.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=26-(12-spinedit3.value)*2+1 to 26 do begin
        dbgrideh1.columns[i].visible:=false;
        dbgrideh2.columns[i].visible:=false;
      end;
    end;
  end else begin
    for i:=3 to 26 do begin
      dbgrideh1.Columns[i].Visible:=true;
      dbgrideh2.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=26-(12-spinedit3.value)*2+1 to 26 do begin
        dbgrideh1.columns[i].visible:=false;
        dbgrideh2.columns[i].visible:=false;
      end;
    end;
  end;

  for i:=1 to 12 do begin
    m1[i]:=1;
  end;
  if spinedit2.value>1 then begin
    for i:=1 to spinedit2.value-1 do begin
      m1[i]:=0;
    end;
    if spinedit3.value<12 then begin
      for i:=spinedit3.value+1 to 12 do begin
        m1[i]:=0;
      end;
    end;
  end else begin
    if spinedit3.value<12 then begin
      for i:=spinedit3.value+1 to 12 do begin
        m1[i]:=0;
      end;
    end;
  end;
  tq1:=0; ts1:=0; tq2:=0; ts2:=0;
  if query1.active then begin
    with query1 do begin
      first;
      while not eof do begin
        edit;
        fieldbyname('tq1').value:=fieldbyname('m1').value*m1[1]+fieldbyname('m2').value*m1[2]+fieldbyname('m3').value*m1[3]+fieldbyname('m4').value*m1[4]+fieldbyname('m5').value*m1[5]+fieldbyname('m6').value*m1[6]+fieldbyname('m7').value*m1[7]+fieldbyname('m8').value*m1[8]+fieldbyname('m9').value*m1[9]+fieldbyname('m10').value*m1[10]+fieldbyname('m11').value*m1[11]+fieldbyname('m12').value*m1[12];
        fieldbyname('ts1').value:=fieldbyname('s1').value*m1[1]+fieldbyname('s2').value*m1[2]+fieldbyname('s3').value*m1[3]+fieldbyname('s4').value*m1[4]+fieldbyname('s5').value*m1[5]+fieldbyname('s6').value*m1[6]+fieldbyname('s7').value*m1[7]+fieldbyname('s8').value*m1[8]+fieldbyname('s9').value*m1[9]+fieldbyname('s10').value*m1[10]+fieldbyname('s11').value*m1[11]+fieldbyname('s12').value*m1[12];
        post;
        tq1:=tq1+fieldbyname('tq1').value;
        ts1:=ts1+fieldbyname('ts1').value;
        application.ProcessMessages;
        next;
      end;
    end;
    with query4 do begin
      first;
      while not eof do begin
        edit;
        fieldbyname('tq1').value:=fieldbyname('m1').value*m1[1]+fieldbyname('m2').value*m1[2]+fieldbyname('m3').value*m1[3]+fieldbyname('m4').value*m1[4]+fieldbyname('m5').value*m1[5]+fieldbyname('m6').value*m1[6]+fieldbyname('m7').value*m1[7]+fieldbyname('m8').value*m1[8]+fieldbyname('m9').value*m1[9]+fieldbyname('m10').value*m1[10]+fieldbyname('m11').value*m1[11]+fieldbyname('m12').value*m1[12];
        fieldbyname('ts1').value:=fieldbyname('s1').value*m1[1]+fieldbyname('s2').value*m1[2]+fieldbyname('s3').value*m1[3]+fieldbyname('s4').value*m1[4]+fieldbyname('s5').value*m1[5]+fieldbyname('s6').value*m1[6]+fieldbyname('s7').value*m1[7]+fieldbyname('s8').value*m1[8]+fieldbyname('s9').value*m1[9]+fieldbyname('s10').value*m1[10]+fieldbyname('s11').value*m1[11]+fieldbyname('s12').value*m1[12];
        post;
        tq2:=tq2+fieldbyname('tq1').value;
        ts2:=ts2+fieldbyname('ts1').value;
        application.ProcessMessages;
        next;
      end;
    end;
    if tq2>0 then dbgrideh2.columns[1].Footers[0].value:=formatfloat('0.00',tq1*100.00/tq2);
    if ts2>0 then dbgrideh2.columns[2].footers[0].value:=formatfloat('0.00',ts1*100.00/ts2);
  end;
end;

procedure Tfrmnewcap_nostyle.DataSource2StateChange(Sender: TObject);
var
  q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12:double;
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12:double;
begin
  if query4.state=dsbrowse then begin
    q1:=0; q2:=0; q3:=0; q4:=0; q5:=0; q6:=0; q7:=0; q8:=0; q9:=0; q10:=0; q11:=0; q12:=0;
    s1:=0; s2:=0; s3:=0; s4:=0; s5:=0; s6:=0; s7:=0; s8:=0; s9:=0; s10:=0; s11:=0; s12:=0;
    with query2 do begin
      close;
      params.clear;
      if (combobox2.text<>'CHINA') then begin
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_oa_proj_all where tplant=:x1 and yr=:x2';
        params[0].asstring:=combobox2.text;
        params[1].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end else if (combobox2.text='CHINA') then begin
        //params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_oa_proj_all where tplant in (''SL'',''FJ'') and yr=:x2';
        //params[0].asstring:=query1.fieldbyname('tplant').value;
        params[0].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end else if (combobox2.text='THAI') then begin
        //params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_oa_proj_all where tplant in (''KB'',''KBC'') and yr=:x2';
        //params[0].asstring:=query1.fieldbyname('tplant').value;
        params[0].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end;
      open;
      if not fieldbyname('m1').isnull then begin
      q1:=fieldbyname('m1').value;
      q2:=fieldbyname('m2').value;
      q3:=fieldbyname('m3').value;
      q4:=fieldbyname('m4').value;
      q5:=fieldbyname('m5').value;
      q6:=fieldbyname('m6').value;
      q7:=fieldbyname('m7').value;
      q8:=fieldbyname('m8').value;
      q9:=fieldbyname('m9').value;
      q10:=fieldbyname('m10').value;
      q11:=fieldbyname('m11').value;
      q12:=fieldbyname('m12').value;
      s1:=fieldbyname('s1').value;
      s2:=fieldbyname('s2').value;
      s3:=fieldbyname('s3').value;
      s4:=fieldbyname('s4').value;
      s5:=fieldbyname('s5').value;
      s6:=fieldbyname('s6').value;
      s7:=fieldbyname('s7').value;
      s8:=fieldbyname('s8').value;
      s9:=fieldbyname('s9').value;
      s10:=fieldbyname('s10').value;
      s11:=fieldbyname('s11').value;
      s12:=fieldbyname('s12').value;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      if (combobox2.text<>'CHINA') then begin
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_fty_all where tplant=:x1 and yr=:x2';
        params[0].asstring:=combobox2.text;
        params[1].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end else if (combobox2.text='CHINA') then begin
        //params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_fty_all where tplant in (''SL'',''FJ'') and yr=:x2';
        //params[0].asstring:=query1.fieldbyname('tplant').value;
        params[0].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end else if (combobox2.text='THAI') then begin
        //params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        //params.createparam(ftstring,'x3',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,'
                    +'sum(m7) as m7,sum(m8) as m8,sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,'
                    +'sum(s1) as s1,sum(s2) as s2,sum(s3) as s3,sum(s4) as s4,sum(s5) as s5,sum(s6) as s6,sum(s7) as s7,'
                    +'sum(s8) as s8,sum(s9) as s9,sum(s10) as s10,sum(s11) as s11,sum(s12) as s12 from tbl_cap_fty_all where tplant in (''KB'',''KBC'') and yr=:x2';
        //params[0].asstring:=query1.fieldbyname('tplant').value;
        params[0].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
        //params[2].asstring:=query4.fieldbyname('flag6').value;
      end;
      open;
    end;
    if query2.fieldbyname('m1').value>0 then
    dbgrideh2.Columns[3].footers[0].value:=formatfloat('#.00',q1*100.00/query2.fieldbyname('m1').value)
    else dbgrideh2.columns[3].Footers[0].value:='0.00';
    if query2.fieldbyname('s1').value>0 then
    dbgrideh2.Columns[4].footers[0].value:=formatfloat('#.00',s1*100.00/query2.fieldbyname('s1').value)
    else dbgrideh2.columns[4].Footers[0].value:='0.00';
    if query2.fieldbyname('m2').value>0 then
    dbgrideh2.Columns[5].footers[0].value:=formatfloat('#.00',q2*100.00/query2.fieldbyname('m2').value)
    else dbgrideh2.columns[5].Footers[0].value:='0.00';
    if query2.fieldbyname('s2').value>0 then
    dbgrideh2.Columns[6].footers[0].value:=formatfloat('#.00',s2*100.00/query2.fieldbyname('s2').value)
    else dbgrideh2.columns[6].Footers[0].value:='0.00';
    if query2.fieldbyname('m3').value>0 then
    dbgrideh2.Columns[7].footers[0].value:=formatfloat('#.00',q3*100.00/query2.fieldbyname('m3').value)
    else dbgrideh2.columns[7].Footers[0].value:='0.00';
    if query2.fieldbyname('s3').value>0 then
    dbgrideh2.Columns[8].footers[0].value:=formatfloat('#.00',s3*100.00/query2.fieldbyname('s3').value)
    else dbgrideh2.columns[8].Footers[0].value:='0.00';
    if query2.fieldbyname('m4').value>0 then
    dbgrideh2.Columns[9].footers[0].value:=formatfloat('#.00',q4*100.00/query2.fieldbyname('m4').value)
    else dbgrideh2.columns[9].Footers[0].value:='0.00';
    if query2.fieldbyname('s4').value>0 then
    dbgrideh2.Columns[10].footers[0].value:=formatfloat('#.00',s4*100.00/query2.fieldbyname('s4').value)
    else dbgrideh2.columns[10].Footers[0].value:='0.00';
    if query2.fieldbyname('m5').value>0 then
    dbgrideh2.Columns[11].footers[0].value:=formatfloat('#.00',q5*100.00/query2.fieldbyname('m5').value)
    else dbgrideh2.columns[11].Footers[0].value:='0.00';
    if query2.fieldbyname('s5').value>0 then
    dbgrideh2.Columns[12].footers[0].value:=formatfloat('#.00',s5*100.00/query2.fieldbyname('s5').value)
    else dbgrideh2.columns[12].Footers[0].value:='0.00';
    if query2.fieldbyname('m6').value>0 then
    dbgrideh2.Columns[13].footers[0].value:=formatfloat('#.00',q6*100.00/query2.fieldbyname('m6').value)
    else dbgrideh2.columns[13].Footers[0].value:='0.00';
    if query2.fieldbyname('s6').value>0 then
    dbgrideh2.Columns[14].footers[0].value:=formatfloat('#.00',s6*100.00/query2.fieldbyname('s6').value)
    else dbgrideh2.columns[14].Footers[0].value:='0.00';
    if query2.fieldbyname('m7').value>0 then
    dbgrideh2.Columns[15].footers[0].value:=formatfloat('#.00',q7*100.00/query2.fieldbyname('m7').value)
    else dbgrideh2.columns[15].Footers[0].value:='0.00';
    if query2.fieldbyname('s7').value>0 then
    dbgrideh2.Columns[16].footers[0].value:=formatfloat('#.00',s7*100.00/query2.fieldbyname('s7').value)
    else dbgrideh2.columns[16].Footers[0].value:='0.00';
    if query2.fieldbyname('m8').value>0 then
    dbgrideh2.Columns[17].footers[0].value:=formatfloat('#.00',q8*100.00/query2.fieldbyname('m8').value)
    else dbgrideh2.columns[17].Footers[0].value:='0.00';
    if query2.fieldbyname('s8').value>0 then
    dbgrideh2.Columns[18].footers[0].value:=formatfloat('#.00',s8*100.00/query2.fieldbyname('s8').value)
    else dbgrideh2.columns[18].Footers[0].value:='0.00';
    if query2.fieldbyname('m9').value>0 then
    dbgrideh2.Columns[19].footers[0].value:=formatfloat('#.00',q9*100.00/query2.fieldbyname('m9').value)
    else dbgrideh2.columns[19].Footers[0].value:='0.00';
    if query2.fieldbyname('s9').value>0 then
    dbgrideh2.Columns[20].footers[0].value:=formatfloat('#.00',s9*100.00/query2.fieldbyname('s9').value)
    else dbgrideh2.columns[20].Footers[0].value:='0.00';
    if query2.fieldbyname('m10').value>0 then
    dbgrideh2.Columns[21].footers[0].value:=formatfloat('#.00',q10*100.00/query2.fieldbyname('m10').value)
    else dbgrideh2.columns[21].Footers[0].value:='0.00';
    if query2.fieldbyname('s10').value>0 then
    dbgrideh2.Columns[22].footers[0].value:=formatfloat('#.00',s10*100.00/query2.fieldbyname('s10').value)
    else dbgrideh2.columns[22].Footers[0].value:='0.00';
    if query2.fieldbyname('m11').value>0 then
    dbgrideh2.Columns[23].footers[0].value:=formatfloat('#.00',q11*100.00/query2.fieldbyname('m11').value)
    else dbgrideh2.columns[23].Footers[0].value:='0.00';
    if query2.fieldbyname('s11').value>0 then
    dbgrideh2.Columns[24].footers[0].value:=formatfloat('#.00',s11*100.00/query2.fieldbyname('s11').value)
    else dbgrideh2.columns[24].Footers[0].value:='0.00';
    if query2.fieldbyname('m12').value>0 then
    dbgrideh2.Columns[25].footers[0].value:=formatfloat('#.00',q12*100.00/query2.fieldbyname('m12').value)
    else dbgrideh2.columns[25].Footers[0].value:='0.00';
    if query2.fieldbyname('s12').value>0 then
    dbgrideh2.Columns[26].footers[0].value:=formatfloat('#.00',s12*100.00/query2.fieldbyname('s12').value)
    else dbgrideh2.columns[26].Footers[0].value:='0.00';

    if q1>query2.fieldbyname('m1').value then dbgrideh2.Columns[3].Font.Color:=clGreen
    else if q1<query2.fieldbyname('m1').value then dbgrideh2.Columns[3].Font.Color:=clRed
    else dbgrideh2.columns[3].font.color:=clBlack;
    if q2>query2.fieldbyname('m2').value then dbgrideh2.Columns[5].Font.Color:=clGreen
    else if q2<query2.fieldbyname('m2').value then dbgrideh2.Columns[5].Font.Color:=clRed
    else dbgrideh2.columns[5].font.color:=clBlack;
    if q3>query2.fieldbyname('m3').value then dbgrideh2.Columns[7].Font.Color:=clGreen
    else if q3<query2.fieldbyname('m3').value then dbgrideh2.Columns[7].Font.Color:=clRed
    else dbgrideh2.columns[7].font.color:=clBlack;
    if q4>query2.fieldbyname('m4').value then dbgrideh2.Columns[9].Font.Color:=clGreen
    else if q4<query2.fieldbyname('m4').value then dbgrideh2.Columns[9].Font.Color:=clRed
    else dbgrideh2.columns[9].font.color:=clBlack;
    if q5>query2.fieldbyname('m5').value then dbgrideh2.Columns[11].Font.Color:=clGreen
    else if q5<query2.fieldbyname('m5').value then dbgrideh2.Columns[11].Font.Color:=clRed
    else dbgrideh2.columns[11].font.color:=clBlack;
    if q6>query2.fieldbyname('m6').value then dbgrideh2.Columns[13].Font.Color:=clGreen
    else if q6<query2.fieldbyname('m6').value then dbgrideh2.Columns[13].Font.Color:=clRed
    else dbgrideh2.columns[13].font.color:=clBlack;
    if q7>query2.fieldbyname('m7').value then dbgrideh2.Columns[15].Font.Color:=clGreen
    else if q7<query2.fieldbyname('m7').value then dbgrideh2.Columns[15].Font.Color:=clRed
    else dbgrideh2.columns[15].font.color:=clBlack;
    if q8>query2.fieldbyname('m8').value then dbgrideh2.Columns[17].Font.Color:=clGreen
    else if q8<query2.fieldbyname('m8').value then dbgrideh2.Columns[17].Font.Color:=clRed
    else dbgrideh2.columns[17].font.color:=clBlack;
    if q9>query2.fieldbyname('m9').value then dbgrideh2.Columns[19].Font.Color:=clGreen
    else if q9<query2.fieldbyname('m9').value then dbgrideh2.Columns[19].Font.Color:=clRed
    else dbgrideh2.columns[19].font.color:=clBlack;
    if q10>query2.fieldbyname('m10').value then dbgrideh2.Columns[21].Font.Color:=clGreen
    else if q10<query2.fieldbyname('m10').value then dbgrideh2.Columns[21].Font.Color:=clRed
    else dbgrideh2.columns[21].font.color:=clBlack;
    if q11>query2.fieldbyname('m11').value then dbgrideh2.Columns[23].Font.Color:=clGreen
    else if q11<query2.fieldbyname('m11').value then dbgrideh2.Columns[23].Font.Color:=clRed
    else dbgrideh2.columns[23].font.color:=clBlack;
    if q12>query2.fieldbyname('m12').value then dbgrideh2.Columns[25].Font.Color:=clGreen
    else if q12<query2.fieldbyname('m12').value then dbgrideh2.Columns[25].Font.Color:=clRed
    else dbgrideh2.columns[25].font.color:=clBlack;

    if s1>query2.fieldbyname('s1').value then dbgrideh2.Columns[4].Font.Color:=clGreen
    else if s1<query2.fieldbyname('s1').value then dbgrideh2.Columns[4].Font.Color:=clRed
    else dbgrideh2.columns[4].font.color:=clBlack;
    if s2>query2.fieldbyname('s2').value then dbgrideh2.Columns[6].Font.Color:=clGreen
    else if s2<query2.fieldbyname('s2').value then dbgrideh2.Columns[6].Font.Color:=clRed
    else dbgrideh2.columns[6].font.color:=clBlack;
    if s3>query2.fieldbyname('s3').value then dbgrideh2.Columns[8].Font.Color:=clGreen
    else if s3<query2.fieldbyname('s3').value then dbgrideh2.Columns[8].Font.Color:=clRed
    else dbgrideh2.columns[8].font.color:=clBlack;
    if s4>query2.fieldbyname('s4').value then dbgrideh2.Columns[10].Font.Color:=clGreen
    else if s4<query2.fieldbyname('s4').value then dbgrideh2.Columns[10].Font.Color:=clRed
    else dbgrideh2.columns[10].font.color:=clBlack;
    if s5>query2.fieldbyname('s5').value then dbgrideh2.Columns[12].Font.Color:=clGreen
    else if s5<query2.fieldbyname('s5').value then dbgrideh2.Columns[12].Font.Color:=clRed
    else dbgrideh2.columns[12].font.color:=clBlack;
    if s6>query2.fieldbyname('s6').value then dbgrideh2.Columns[14].Font.Color:=clGreen
    else if s6<query2.fieldbyname('s6').value then dbgrideh2.Columns[14].Font.Color:=clRed
    else dbgrideh2.columns[14].font.color:=clBlack;
    if s7>query2.fieldbyname('s7').value then dbgrideh2.Columns[16].Font.Color:=clGreen
    else if s7<query2.fieldbyname('s7').value then dbgrideh2.Columns[16].Font.Color:=clRed
    else dbgrideh2.columns[16].font.color:=clBlack;
    if s8>query2.fieldbyname('s8').value then dbgrideh2.Columns[18].Font.Color:=clGreen
    else if s8<query2.fieldbyname('s8').value then dbgrideh2.Columns[18].Font.Color:=clRed
    else dbgrideh2.columns[18].font.color:=clBlack;
    if s9>query2.fieldbyname('s9').value then dbgrideh2.Columns[20].Font.Color:=clGreen
    else if s9<query2.fieldbyname('s9').value then dbgrideh2.Columns[20].Font.Color:=clRed
    else dbgrideh2.columns[20].font.color:=clBlack;
    if s10>query2.fieldbyname('s10').value then dbgrideh2.Columns[22].Font.Color:=clGreen
    else if s10<query2.fieldbyname('s10').value then dbgrideh2.Columns[22].Font.Color:=clRed
    else dbgrideh2.columns[22].font.color:=clBlack;
    if s11>query2.fieldbyname('s11').value then dbgrideh2.Columns[24].Font.Color:=clGreen
    else if s11<query2.fieldbyname('s11').value then dbgrideh2.Columns[24].Font.Color:=clRed
    else dbgrideh2.columns[24].font.color:=clBlack;
    if s12>query2.fieldbyname('s12').value then dbgrideh2.Columns[26].Font.Color:=clGreen
    else if s12<query2.fieldbyname('s12').value then dbgrideh2.Columns[26].Font.Color:=clRed
    else dbgrideh2.columns[26].font.color:=clBlack;
  end;
end;

procedure Tfrmnewcap_nostyle.BitBtn1Click(Sender: TObject);
begin
  if dbgrideh1.SelectedIndex>=3 then begin
    shownostyledetailform((dbgrideh1.selectedindex-1) div 2);
    //frmnewcap_nostyle_wk.Caption:='Sales Projection - on Volume Worksheet - Customer Dependent (by week)  '+bitbtn1.Caption;
    frmnewcap_nostyle_wk.Label10.Caption:='Edit / Addnew';
    frmnewcap_nostyle_wk.DBGridEh1.ReadOnly:=false;
  end;
end;

procedure Tfrmnewcap_nostyle.BitBtn4Click(Sender: TObject);
begin
  //if frmnewcap_notepad=nil then frmnewcap_notepad:=tfrmnewcap_notepad.create(nil);
  //frmnewcap_notepad.show;
  if frmcarte_requestaction=nil then frmcarte_requestaction:=tfrmcarte_requestaction.create(nil);
  frmcarte_requestaction.show;
end;

procedure Tfrmnewcap_nostyle.BitBtn2Click(Sender: TObject);
begin
  if dbgrideh1.SelectedIndex>=3 then begin
    shownostyledetailform((dbgrideh1.selectedindex-1) div 2);
    //frmnewcap_nostyle_wk.Caption:='Sales Projection - on Volume Worksheet - Customer Dependent (by week)  '+bitbtn2.Caption;
    frmnewcap_nostyle_wk.Label10.Caption:='Review';
    frmnewcap_nostyle_wk.DBGridEh1.ReadOnly:=false;
  end;
end;

procedure Tfrmnewcap_nostyle.BitBtn3Click(Sender: TObject);
begin
  if dbgrideh1.SelectedIndex>=3 then begin
    shownostyledetailform((dbgrideh1.selectedindex-1) div 2);
    //frmnewcap_nostyle_wk.Caption:='Sales Projection - on Volume Worksheet - Customer Dependent (by week)  '+bitbtn3.Caption;
    frmnewcap_nostyle_wk.Label10.Caption:='Edit / Addnew';
    frmnewcap_nostyle_wk.DBGridEh1.ReadOnly:=false;
  end;
end;

end.
