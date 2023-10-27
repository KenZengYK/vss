unit newcap_wstyleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, DBCtrls, StdCtrls, Mask, Buttons;

type
  Tfrmnewcap_wstyle = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit3: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBEdit4: TDBEdit;
    DBComboBox4: TDBComboBox;
    DBEdit5: TDBEdit;
    DBComboBox5: TDBComboBox;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    lbldue1: TLabel;
    lbldue2: TLabel;
    lbldue3: TLabel;
    lbldue4: TLabel;
    lbldue5: TLabel;
    lblex1: TLabel;
    lblex2: TLabel;
    lblex3: TLabel;
    lblex4: TLabel;
    lblex5: TLabel;
    lblt31: TLabel;
    lblt32: TLabel;
    lblt33: TLabel;
    lblt34: TLabel;
    lblt35: TLabel;
    BitBtn2: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure queryq01change(Sender: TField);
    procedure queryq02change(Sender: TField);
    procedure queryq03change(Sender: TField);
    procedure queryq04change(Sender: TField);
    procedure queryq05change(Sender: TField);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function calcwkday(const dt: TDateTime):String;
  end;

var
  frmnewcap_wstyle: Tfrmnewcap_wstyle;

implementation

uses mainformu, newcap_styleformu, newcap_wcustformu;

{$R *.dfm}

procedure Tfrmnewcap_wstyle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_wstyle:=nil;
end;

procedure Tfrmnewcap_wstyle.FormShow(Sender: TObject);
begin
  if not query1.fieldbyname('due01').isnull then begin
    lbldue1.Caption:=calcwkday(query1.fieldbyname('due01').value);
    lblex1.Caption:=calcwkday(query1.fieldbyname('exf01').value);
    lblt31.Caption:=calcwkday(query1.fieldbyname('t301').value);
  end else begin
    lbldue1.caption:='';
    lblex1.Caption:='';
    lblt31.Caption:='';
  end;
  lbldue2.Caption:=calcwkday(query1.fieldbyname('due02').value);
  lbldue3.Caption:=calcwkday(query1.fieldbyname('due03').value);
  lbldue4.Caption:=calcwkday(query1.fieldbyname('due04').value);
  lblex2.Caption:=calcwkday(query1.fieldbyname('exf02').value);
  lblex3.Caption:=calcwkday(query1.fieldbyname('exf03').value);
  lblex4.Caption:=calcwkday(query1.fieldbyname('exf04').value);
  lblt32.Caption:=calcwkday(query1.fieldbyname('t302').value);
  lblt33.Caption:=calcwkday(query1.fieldbyname('t303').value);
  lblt34.Caption:=calcwkday(query1.fieldbyname('t304').value);
  if not query1.fieldbyname('due05').isnull then begin
    lbldue5.Caption:=calcwkday(query1.fieldbyname('due05').value);
    lblex5.Caption:=calcwkday(query1.fieldbyname('exf05').value);
    lblt35.Caption:=calcwkday(query1.fieldbyname('t305').value);
  end else begin
    lbldue5.caption:='';
    lblex5.caption:='';
    lblt35.caption:='';
  end;
  if query1.fieldbyname('due01').isnull then begin
    dbedit1.Enabled:=false;dbcombobox1.Enabled:=false;
  end else begin
    dbedit1.Enabled:=true;dbcombobox1.Enabled:=true;
  end;
  if query1.fieldbyname('due05').isnull then begin
    dbedit5.Enabled:=false;dbcombobox5.Enabled:=false;
  end else begin
    dbedit5.Enabled:=true;dbcombobox5.Enabled:=true;
  end;
end;

procedure Tfrmnewcap_wstyle.BitBtn1Click(Sender: TObject);
var
  tw01,tw02,tw03,tw04,tw05,tw06,tw07,tw08,tw09,tw10,tw11,tw12:double;
begin
  screen.cursor:=crSQLWait;
  try
    if query1.state=dsedit then query1.post;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select distinct m1,sum(tq) as t3q from tbl_cap_oa_style_new2 where seq=:x1 and yr=:x2 group by m1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      open;
      while not eof do begin
        if fieldbyname('m1').value=1 then tw01:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=2 then tw02:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=3 then tw03:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=4 then tw04:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=5 then tw05:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=6 then tw06:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=7 then tw07:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=8 then tw08:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=9 then tw09:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=10 then tw10:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=11 then tw11:=fieldbyname('t3q').value
        else if fieldbyname('m1').value=12 then tw12:=fieldbyname('t3q').value;
        application.ProcessMessages;
        next;
      end;
    end;
    with frmnewcap_style.Query1 do begin
      edit;
      fieldbyname('tw01').value:=tw01;
      fieldbyname('tw02').value:=tw02;
      fieldbyname('tw03').value:=tw03;
      fieldbyname('tw04').value:=tw04;
      fieldbyname('tw05').value:=tw05;
      fieldbyname('tw06').value:=tw06;
      fieldbyname('tw07').value:=tw07;
      fieldbyname('tw08').value:=tw08;
      fieldbyname('tw09').value:=tw09;
      fieldbyname('tw10').value:=tw10;
      fieldbyname('tw11').value:=tw11;
      fieldbyname('tw12').value:=tw12;
      post;
    end;
    frmnewcap_wstyle.close;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_wstyle.Query1AfterPost(DataSet: TDataSet);
var
  s1:double;
  //s2:double;
  s0,m:integer;
begin
  m:=query1.fieldbyname('m1').value;
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftstring,'x10',ptinput);
      params.createparam(ftfloat,'x11',ptinput);
      params.createparam(ftfloat,'x12',ptinput);
      params.createparam(ftfloat,'x13',ptinput);
      params.createparam(ftfloat,'x14',ptinput);
      params.createparam(ftfloat,'x15',ptinput);
      params.createparam(ftfloat,'x16',ptinput);
      params.createparam(ftinteger,'x17',ptinput);
      params.createparam(ftinteger,'x18',ptinput);
      commandtext:='update tbl_cap_oa_style_new1 set q01=:x1,cfm01=:x2,q02=:x3,cfm02=:x4,q03=:x5,cfm03=:x6,'
                  +'q04=:x7,cfm04=:x8,q05=:x9,cfm05=:x10,tq01=:x11,tq02=:x12,tq03=:x13,tq04=:x14,tq05=:x15,tq06=:x16 where seq=:x17 and m1=:x18';
      if not query1.fieldbyname('q01').isnull then
      params[0].asinteger:=query1.fieldbyname('q01').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('cfm01').IsNull then
      params[1].asstring:=query1.fieldbyname('cfm01').value
      else params[1].asstring:='';
      if not query1.fieldbyname('q02').isnull then
      params[2].asinteger:=query1.fieldbyname('q02').value
      else params[2].asinteger:=0;
      if not query1.fieldbyname('cfm02').IsNull then
      params[3].asstring:=query1.fieldbyname('cfm02').value
      else params[3].asstring:='';
      if not query1.fieldbyname('q03').isnull then
      params[4].asinteger:=query1.fieldbyname('q03').value
      else params[4].asinteger:=0;
      if not query1.fieldbyname('cfm03').IsNull then
      params[5].asstring:=query1.fieldbyname('cfm03').value
      else params[5].asstring:='';
      if not query1.fieldbyname('q04').isnull then
      params[6].asinteger:=query1.fieldbyname('q04').value
      else params[6].asinteger:=0;
      if not query1.fieldbyname('cfm04').IsNull then
      params[7].asstring:=query1.fieldbyname('cfm04').value
      else params[7].asstring:='';
      if not query1.fieldbyname('q05').isnull then
      params[8].asinteger:=query1.fieldbyname('q05').value
      else params[8].asinteger:=0;
      if not query1.fieldbyname('cfm05').IsNull then
      params[9].asstring:=query1.fieldbyname('cfm05').value
      else params[9].asstring:='';
      if not query1.fieldbyname('tq01').isnull then
      params[10].asfloat:=query1.fieldbyname('tq01').value
      else params[10].asfloat:=0;
      if not query1.fieldbyname('tq02').isnull then
      params[11].asfloat:=query1.fieldbyname('tq02').value
      else params[11].asfloat:=0;
      if not query1.fieldbyname('tq03').isnull then
      params[12].asfloat:=query1.fieldbyname('tq03').value
      else params[12].asfloat:=0;
      if not query1.fieldbyname('tq04').isnull then
      params[13].asfloat:=query1.fieldbyname('tq04').value
      else params[13].asfloat:=0;
      if not query1.fieldbyname('tq05').isnull then
      params[14].asfloat:=query1.fieldbyname('tq05').value
      else params[14].asfloat:=0;
      if not query1.fieldbyname('tq06').isnull then
      params[15].asfloat:=query1.fieldbyname('tq06').value
      else params[15].asfloat:=0;
      params[16].asinteger:=query1.fieldbyname('seq').value;
      params[17].asinteger:=m;
      execute;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select q01+q02+q03+q04+q05 as s0,(q01+q02+q03+q04+q05)*sah as s1,(q01+q02+q03+q04+q05)*e101/100.00 as s2 from tbl_cap_oa_style_new1 where seq=:x1 and m1=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=m;
    open;
    if not fieldbyname('s0').isnull then s0:=fieldbyname('s0').value else s0:=0;
    if not fieldbyname('s1').isnull then s1:=fieldbyname('s1').value else s1:=0;
    //if not fieldbyname('s2').isnull then s2:=fieldbyname('s2').value else s2:=0;
  end;
  with frmnewcap_style.Query1 do begin
    edit;
    if m=1 then begin
      fieldbyname('q01').value:=s0;
      fieldbyname('tsah01').value:=s1;
      //fieldbyname('tw01').value:=s2;
    end else if m=2 then begin
      fieldbyname('q02').value:=s0;
      fieldbyname('tsah02').value:=s1;
      //fieldbyname('tw02').value:=s2;
    end else if m=3 then begin
      fieldbyname('q03').value:=s0;
      fieldbyname('tsah03').value:=s1;
      //fieldbyname('tw04').value:=s2;
    end else if m=4 then begin
      fieldbyname('q04').value:=s0;
      fieldbyname('tsah04').value:=s1;
      //fieldbyname('tw04').value:=s2;
    end else if m=5 then begin
      fieldbyname('q05').value:=s0;
      fieldbyname('tsah05').value:=s1;
      //fieldbyname('tw05').value:=s2;
    end else if m=6 then begin
      fieldbyname('q06').value:=s0;
      fieldbyname('tsah06').value:=s1;
      //fieldbyname('tw06').value:=s2;
    end else if m=7 then begin
      fieldbyname('q07').value:=s0;
      fieldbyname('tsah07').value:=s1;
      //fieldbyname('tw07').value:=s2;
    end else if m=8 then begin
      fieldbyname('q08').value:=s0;
      fieldbyname('tsah08').value:=s1;
      //fieldbyname('tw08').value:=s2;
    end else if m=9 then begin
      fieldbyname('q09').value:=s0;
      fieldbyname('tsah09').value:=s1;
      //fieldbyname('tw09').value:=s2;
    end else if m=10 then begin
      fieldbyname('q10').value:=s0;
      fieldbyname('tsah10').value:=s1;
      //fieldbyname('tw10').value:=s2;
    end else if m=11 then begin
      fieldbyname('q11').value:=s0;
      fieldbyname('tsah11').value:=s1;
      //fieldbyname('tw11').value:=s2;
    end else if m=12 then begin
      fieldbyname('q12').value:=s0;
      fieldbyname('tsah12').value:=s1;
      //fieldbyname('tw12').value:=s2;
    end;
    post;
  end;
end;

function Tfrmnewcap_wstyle.calcwkday(const dt: TDateTime): String;
begin
  result:=formatdatetime('yyyy-MM-dd',dt);
  if dayofweek(dt)=1 then result:=result+'(Sun)'
  else if dayofweek(dt)=2 then result:=result+'(Mon)'
  else if dayofweek(dt)=3 then result:=result+'(Tue)'
  else if dayofweek(dt)=4 then result:=result+'(Wed)'
  else if dayofweek(dt)=5 then result:=result+'(Thu)'
  else if dayofweek(dt)=6 then result:=result+'(Fri)'
  else if dayofweek(dt)=7 then result:=result+'(Sat)';
end;

procedure Tfrmnewcap_wstyle.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.FieldByName('q01').onchange:=queryq01change;
  query1.FieldByName('q02').onchange:=queryq02change;
  query1.FieldByName('q03').onchange:=queryq03change;
  query1.FieldByName('q04').onchange:=queryq04change;
  query1.FieldByName('q05').onchange:=queryq05change;
  (query1.fieldbyname('tq01') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('tq02') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('tq03') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('tq04') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('tq05') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('tq06') as tfloatfield).displayformat:='0.0';
end;

procedure Tfrmnewcap_wstyle.queryq01change(Sender: TField);
var
  tq,tq01,tq02:double;
begin
  if not query1.fieldbyname('q01').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_cap_gent3qty(:x1,:x2,:x3)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asdate:=query1.fieldbyname('t301').value;
      params[2].asinteger:=query1.fieldbyname('q01').value;
      execute;
    end;
    tq01:=0; tq02:=0;
    if query1.fieldbyname('m1').value=1 then begin
      with query2 do begin
        close;
        params.clear;
        params.Createparam(ftinteger,'x1',ptinput);
        params.Createparam(ftinteger,'x2',ptinput);
        params.Createparam(ftinteger,'x3',ptinput);
        params.Createparam(ftinteger,'x4',ptinput);
        commandtext:='select distinct sum(tq) as t3q from tbl_cap_oa_style_new2 '
                    +'where seq=:x1 and ((yr=:x2 and wk1=:x3) or (yr<:x4))';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('w1').value;
        params[3].asinteger:=query1.fieldbyname('yr').value;
        open;
        if not fieldbyname('t3q').isnull then tq01:=fieldbyname('t3q').value else tq01:=0;
      end;
      with query2 do begin
        close;
        params.clear;
        params.Createparam(ftinteger,'x1',ptinput);
        params.Createparam(ftinteger,'x2',ptinput);
        params.Createparam(ftinteger,'x3',ptinput);
        commandtext:='select distinct sum(tq) as t3q from tbl_cap_oa_style_new2 '
                    +'where seq=:x1 and yr=:x2 and wk1=:x3';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('w2').value;
        open;
        if not fieldbyname('t3q').isnull then tq02:=fieldbyname('t3q').value else tq02:=0;
      end;
    end else begin
      with query2 do begin
        close;
        params.clear;
        params.Createparam(ftinteger,'x1',ptinput);
        params.Createparam(ftinteger,'x2',ptinput);
        params.Createparam(ftinteger,'x3',ptinput);
        params.Createparam(ftinteger,'x4',ptinput);
        commandtext:='select distinct wk1,sum(tq) as t3q from tbl_cap_oa_style_new2 '
                    +'where seq=:x1 and yr=:x2 and ((wk1=:x3) or (wk1=:x4)) group by wk1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('w1').value;
        params[3].asinteger:=query1.fieldbyname('w2').value;
        open;
        while not eof do begin
          if not fieldbyname('t3q').isnull then tq:=fieldbyname('t3q').value else tq:=0;
          if fieldbyname('wk1').value=query1.fieldbyname('w1').value then tq01:=tq
          else if fieldbyname('wk1').value=query1.fieldbyname('w2').value then tq02:=tq;
          application.ProcessMessages;
          next;
        end;
      end;
    end;
    query1.fieldbyname('tq01').value:=tq01;
    query1.fieldbyname('tq02').value:=tq02;
  end;
end;

procedure Tfrmnewcap_wstyle.queryq02change(Sender: TField);
var
  tq,tq01,tq02,tq03:double;
begin
  if not query1.fieldbyname('q02').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_cap_gent3qty(:x1,:x2,:x3)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asdate:=query1.fieldbyname('t302').value;
      params[2].asinteger:=query1.fieldbyname('q02').value;
      execute;
    end;
    tq01:=0; tq02:=0; tq03:=0;
    if query1.fieldbyname('m1').value=1 then begin
      with query2 do begin
        close;
        params.clear;
        params.Createparam(ftinteger,'x1',ptinput);
        params.Createparam(ftinteger,'x2',ptinput);
        params.Createparam(ftinteger,'x3',ptinput);
        params.Createparam(ftinteger,'x4',ptinput);
        commandtext:='select distinct sum(tq) as t3q from tbl_cap_oa_style_new2 '
                    +'where seq=:x1 and ((yr=:x2 and wk1=:x3) or (yr<:x4))';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('w1').value;
        params[3].asinteger:=query1.fieldbyname('yr').value;
        open;
        if not fieldbyname('t3q').isnull then tq01:=fieldbyname('t3q').value else tq01:=0;
      end;
      with query2 do begin
        close;
        params.clear;
        params.Createparam(ftinteger,'x1',ptinput);
        params.Createparam(ftinteger,'x2',ptinput);
        params.Createparam(ftinteger,'x3',ptinput);
        params.Createparam(ftinteger,'x4',ptinput);
        commandtext:='select distinct wk1,sum(tq) as t3q from tbl_cap_oa_style_new2 '
                    +'where seq=:x1 and yr=:x2 and ((wk1>=:x3) or (wk1<=:x4)) group by wk1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('w2').value;
        params[3].asinteger:=query1.fieldbyname('w3').value;
        open;
        while not eof do begin
          if not fieldbyname('t3q').isnull then tq:=fieldbyname('t3q').value else tq:=0;
          if fieldbyname('wk1').value=query1.fieldbyname('w2').value then tq02:=tq
          else if fieldbyname('wk1').value=query1.fieldbyname('w3').value then tq03:=tq;
          application.ProcessMessages;
          next;
        end;
      end;
    end else begin
      with query2 do begin
        close;
        params.clear;
        params.Createparam(ftinteger,'x1',ptinput);
        params.Createparam(ftinteger,'x2',ptinput);
        params.Createparam(ftinteger,'x3',ptinput);
        params.Createparam(ftinteger,'x4',ptinput);
        commandtext:='select distinct wk1,sum(tq) as t3q from tbl_cap_oa_style_new2 '
                    +'where seq=:x1 and yr=:x2 and ((wk1>=:x3) or (wk1<=:x4)) group by wk1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('w1').value;
        params[3].asinteger:=query1.fieldbyname('w3').value;
        open;
        while not eof do begin
          if not fieldbyname('t3q').isnull then tq:=fieldbyname('t3q').value else tq:=0;
          if fieldbyname('wk1').value=query1.fieldbyname('w1').value then tq01:=tq
          else if fieldbyname('wk1').value=query1.fieldbyname('w2').value then tq02:=tq
          else if fieldbyname('wk1').value=query1.fieldbyname('w3').value then tq03:=tq;
          application.ProcessMessages;
          next;
        end;
      end;
    end;
    query1.fieldbyname('tq01').value:=tq01;
    query1.fieldbyname('tq02').value:=tq02;
    query1.fieldbyname('tq03').value:=tq03;
  end;
end;

procedure Tfrmnewcap_wstyle.queryq03change(Sender: TField);
var
  tq,tq01,tq02,tq03:double;
begin
  if not query1.fieldbyname('q03').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_cap_gent3qty(:x1,:x2,:x3)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asdate:=query1.fieldbyname('t303').value;
      params[2].asinteger:=query1.fieldbyname('q03').value;
      execute;
    end;
    tq01:=0; tq02:=0; tq03:=0;
    with query2 do begin
      close;
      params.clear;
      params.Createparam(ftinteger,'x1',ptinput);
      params.Createparam(ftinteger,'x2',ptinput);
      params.Createparam(ftinteger,'x3',ptinput);
      params.Createparam(ftinteger,'x4',ptinput);
      commandtext:='select distinct wk1,sum(tq) as t3q from tbl_cap_oa_style_new2 '
                  +'where seq=:x1 and yr=:x2 and ((wk1>=:x3) or (wk1<=:x4)) group by wk1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('w2').value;
      params[3].asinteger:=query1.fieldbyname('w4').value;
      open;
      while not eof do begin
        if not fieldbyname('t3q').isnull then tq:=fieldbyname('t3q').value else tq:=0;
        if fieldbyname('wk1').value=query1.fieldbyname('w2').value then tq01:=tq
        else if fieldbyname('wk1').value=query1.fieldbyname('w3').value then tq02:=tq
        else if fieldbyname('wk1').value=query1.fieldbyname('w4').value then tq03:=tq;
        application.ProcessMessages;
        next;
      end;
    end;
    query1.fieldbyname('tq02').value:=tq01;
    query1.fieldbyname('tq03').value:=tq02;
    query1.fieldbyname('tq04').value:=tq03;
  end;
end;

procedure Tfrmnewcap_wstyle.queryq04change(Sender: TField);
var
  tq,tq01,tq02,tq03:double;
begin
  if not query1.fieldbyname('q04').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_cap_gent3qty(:x1,:x2,:x3)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asdate:=query1.fieldbyname('t304').value;
      params[2].asinteger:=query1.fieldbyname('q04').value;
      execute;
    end;
    tq01:=0; tq02:=0; tq03:=0;
    with query2 do begin
      close;
      params.clear;
      params.Createparam(ftinteger,'x1',ptinput);
      params.Createparam(ftinteger,'x2',ptinput);
      params.Createparam(ftinteger,'x3',ptinput);
      params.Createparam(ftinteger,'x4',ptinput);
      commandtext:='select distinct wk1,sum(tq) as t3q from tbl_cap_oa_style_new2 '
                  +'where seq=:x1 and yr=:x2 and ((wk1>=:x3) or (wk1<=:x4)) group by wk1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('w3').value;
      params[3].asinteger:=query1.fieldbyname('w5').value;
      open;
      while not eof do begin
        if not fieldbyname('t3q').isnull then tq:=fieldbyname('t3q').value else tq:=0;
        if fieldbyname('wk1').value=query1.fieldbyname('w3').value then tq01:=tq
        else if fieldbyname('wk1').value=query1.fieldbyname('w4').value then tq02:=tq
        else if fieldbyname('wk1').value=query1.fieldbyname('w5').value then tq03:=tq;
        application.ProcessMessages;
        next;
      end;
    end;
    query1.fieldbyname('tq03').value:=tq01;
    query1.fieldbyname('tq04').value:=tq02;
    query1.fieldbyname('tq05').value:=tq03;
  end;
end;

procedure Tfrmnewcap_wstyle.queryq05change(Sender: TField);
var
  tq,tq01,tq02,tq03:double;
begin
  if not query1.fieldbyname('q05').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_cap_gent3qty(:x1,:x2,:x3)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asdate:=query1.fieldbyname('t305').value;
      params[2].asinteger:=query1.fieldbyname('q05').value;
      execute;
    end;
    tq01:=0; tq02:=0; tq03:=0;
    with query2 do begin
      close;
      params.clear;
      params.Createparam(ftinteger,'x1',ptinput);
      params.Createparam(ftinteger,'x2',ptinput);
      params.Createparam(ftinteger,'x3',ptinput);
      params.Createparam(ftinteger,'x4',ptinput);
      commandtext:='select distinct wk1,sum(tq) as t3q from tbl_cap_oa_style_new2 '
                  +'where seq=:x1 and yr=:x2 and ((wk1>=:x3) or (wk1<=:x4)) group by wk1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('w4').value;
      params[3].asinteger:=query1.fieldbyname('w6').value;
      open;
      while not eof do begin
        if not fieldbyname('t3q').isnull then tq:=fieldbyname('t3q').value else tq:=0;
        if fieldbyname('wk1').value=query1.fieldbyname('w4').value then tq01:=tq
        else if fieldbyname('wk1').value=query1.fieldbyname('w5').value then tq02:=tq
        else if fieldbyname('wk1').value=query1.fieldbyname('w6').value then tq03:=tq;
        application.ProcessMessages;
        next;
      end;
    end;
    query1.fieldbyname('tq04').value:=tq01;
    query1.fieldbyname('tq05').value:=tq02;
    query1.fieldbyname('tq06').value:=tq03;
  end;
end;

procedure Tfrmnewcap_wstyle.BitBtn2Click(Sender: TObject);
begin
  if frmnewcap_wcust=nil then frmnewcap_wcust:=tfrmnewcap_wcust.create(nil);
  frmnewcap_wcust.ComboBox5.Text:=query1.fieldbyname('cust').value;
  frmnewcap_wcust.ComboBox2Change(self);
  frmnewcap_wcust.show;
end;

end.
 