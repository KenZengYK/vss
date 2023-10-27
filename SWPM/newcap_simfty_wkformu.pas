unit newcap_simfty_wkformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh, Spin,
  ExtCtrls, DBCtrls, DateUtils;

type
  Tfrmnewcap_simfty_wk = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_simfty_wk: Tfrmnewcap_simfty_wk;

implementation

uses mainformu, newcap_simftyformu, newcap_ftysimulationformu;

{$R *.dfm}

procedure Tfrmnewcap_simfty_wk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if label5.Caption='Setup' then
    frmnewcap_simfty.ComboBox1Change(self)
  else frmnewcap_ftysimulation.ComboBox2change(self);
  action:=cafree;
  frmnewcap_simfty_wk:=nil;
end;

procedure Tfrmnewcap_simfty_wk.Query1AfterPost(DataSet: TDataSet);
var
  mi:double;
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftfloat,'x11',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      commandtext:='update tbl_cap_ftyelements_wk set w1=:x1,w2=:x2,w3=:x3,w4=:x4,w5=:x5,w6=:x11 where tplant=:x6 and yr=:x7 and m1=:x8 and seq=:x9 and seq1=:x10';
      str1:='update tbl_cap_ftyelements_wk set ';
      if not query1.fieldbyname('w1').isnull then
      str1:=str1+'w1='+query1.fieldbyname('w1').asstring+','
      else str1:=str1+'w1=0,';
      if not query1.fieldbyname('w2').isnull then
      str1:=str1+'w2='+query1.fieldbyname('w2').asstring+','
      else str1:=str1+'w2=0,';
      if not query1.fieldbyname('w3').isnull then
      str1:=str1+'w3='+query1.fieldbyname('w3').asstring+','
      else str1:=str1+'w3=0,';
      if not query1.fieldbyname('w4').isnull then
      str1:=str1+'w4='+query1.fieldbyname('w4').asstring+','
      else str1:=str1+'w4=0,';
      if not query1.fieldbyname('w5').isnull then
      str1:=str1+'w5='+query1.fieldbyname('w5').asstring+','
      else str1:=str1+'w5=0,';
      if not query1.fieldbyname('w6').isnull then
      str1:=str1+'w6='+query1.fieldbyname('w6').asstring+' '
      else str1:=str1+'w6=0 ';
      str1:=str1+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
      str1:=str1+'and yr='+query1.fieldbyname('yr').asstring+' ';
      str1:=str1+'and m1='+query1.fieldbyname('m1').asstring+' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and seq1='+query1.fieldbyname('seq1').asstring;

      if not query1.fieldbyname('w1').isnull then
      params[0].asfloat:=query1.fieldbyname('w1').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('w2').isnull then
      params[1].asfloat:=query1.fieldbyname('w2').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('w3').isnull then
      params[2].asfloat:=query1.fieldbyname('w3').value
      else params[2].asfloat:=0;
      if not query1.fieldbyname('w4').isnull then
      params[3].asfloat:=query1.fieldbyname('w4').value
      else params[3].asfloat:=0;
      if not query1.fieldbyname('w5').isnull then
      params[4].asfloat:=query1.fieldbyname('w5').value
      else params[4].asfloat:=0;
      if not query1.fieldbyname('w6').isnull then
      params[5].asfloat:=query1.fieldbyname('w6').value
      else params[5].asfloat:=0;
      params[6].asstring:=query1.fieldbyname('tplant').value;
      params[7].asinteger:=query1.fieldbyname('yr').value;
      params[8].asinteger:=query1.fieldbyname('m1').value;
      params[9].asinteger:=query1.fieldbyname('seq').value;
      params[10].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_cap_ftyelements_wk set ';
      if not query1.fieldbyname('w1').isnull then
      str1:=str1+'w1='+query1.fieldbyname('w1').asstring+','
      else str1:=str1+'w1=0,';
      if not query1.fieldbyname('w2').isnull then
      str1:=str1+'w2='+query1.fieldbyname('w2').asstring+','
      else str1:=str1+'w2=0,';
      if not query1.fieldbyname('w3').isnull then
      str1:=str1+'w3='+query1.fieldbyname('w3').asstring+','
      else str1:=str1+'w3=0,';
      if not query1.fieldbyname('w4').isnull then
      str1:=str1+'w4='+query1.fieldbyname('w4').asstring+','
      else str1:=str1+'w4=0,';
      if not query1.fieldbyname('w5').isnull then
      str1:=str1+'w5='+query1.fieldbyname('w5').asstring+','
      else str1:=str1+'w5=0,';
      if not query1.fieldbyname('w6').isnull then
      str1:=str1+'w6='+query1.fieldbyname('w6').asstring+' '
      else str1:=str1+'w6=0 ';
      str1:=str1+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
      str1:=str1+'and yr='+query1.fieldbyname('yr').asstring+' ';
      str1:=str1+'and m1='+query1.fieldbyname('m1').asstring+' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and seq1='+query1.fieldbyname('seq1').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
  if (query1.fieldbyname('seq1').value<>9) and (query1.fieldbyname('seq1').value<>8) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      if dbgrideh1.columns[6].visible=true then
        commandtext:='select sum(w1+w2+w3+w4+w5)/5.0 as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5'
      else
        commandtext:='select sum(w1+w2+w3+w4)/4.0 as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      params[4].asinteger:=query1.fieldbyname('seq1').value;
      open;
      if not fieldbyname('x1').isnull then mi:=fieldbyname('x1').value else mi:=0;
    end;
  end else begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='select sum(w1+w2+w3+w4+w5+w6) as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      params[4].asinteger:=query1.fieldbyname('seq1').value;
      open;
      if not fieldbyname('x1').isnull then mi:=fieldbyname('x1').value else mi:=0;
    end;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftfloat,'x0',ptinput);
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    if query1.fieldbyname('m1').value=1 then
    commandtext:='update tbl_cap_ftyelements set m1=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=2 then
    commandtext:='update tbl_cap_ftyelements set m2=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=3 then
    commandtext:='update tbl_cap_ftyelements set m3=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=4 then
    commandtext:='update tbl_cap_ftyelements set m4=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=5 then
    commandtext:='update tbl_cap_ftyelements set m5=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=6 then
    commandtext:='update tbl_cap_ftyelements set m6=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=7 then
    commandtext:='update tbl_cap_ftyelements set m7=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=8 then
    commandtext:='update tbl_cap_ftyelements set m8=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=9 then
    commandtext:='update tbl_cap_ftyelements set m9=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=10 then
    commandtext:='update tbl_cap_ftyelements set m10=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=11 then
    commandtext:='update tbl_cap_ftyelements set m11=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=12 then
    commandtext:='update tbl_cap_ftyelements set m12=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5';
    params[0].asfloat:=mi;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    params[2].asinteger:=query1.fieldbyname('yr').value;
    params[3].asinteger:=query1.fieldbyname('seq').value;
    params[4].asinteger:=query1.fieldbyname('seq1').value;
    execute;
  end;
  }
    if query1.fieldbyname('m1').value=1 then
    str1:='update tbl_cap_ftyelements set m1='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=2 then
    str1:='update tbl_cap_ftyelements set m2='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=3 then
    str1:='update tbl_cap_ftyelements set m3='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=4 then
    str1:='update tbl_cap_ftyelements set m4='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=5 then
    str1:='update tbl_cap_ftyelements set m5='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=6 then
    str1:='update tbl_cap_ftyelements set m6='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=7 then
    str1:='update tbl_cap_ftyelements set m7='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=8 then
    str1:='update tbl_cap_ftyelements set m8='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=9 then
    str1:='update tbl_cap_ftyelements set m9='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=10 then
    str1:='update tbl_cap_ftyelements set m10='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=11 then
    str1:='update tbl_cap_ftyelements set m11='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=12 then
    str1:='update tbl_cap_ftyelements set m12='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').value+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring;
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_cap_updftyelements_new(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    params[3].asstring:='';
    execute;
  end;
end;

procedure Tfrmnewcap_simfty_wk.BitBtn2Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmnewcap_simfty_wk.FormShow(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  with query2 do begin
    close;
    params.clear;
    //commandtext:='select wkno from tbl_cap_wkno where yr='+inttostr(spinedit1.value)+' and m1='+query1.fieldbyname('m1').asstring+' order by wkno';
    //commandtext:='select distinct a.wkno,min(b.date1) as x1,max(b.date1) as x2 from tbl_cap_wkno a,week52 b '
    //            +'where a.yr=f_year(b.date1) and a.wkno=b.wkno and a.yr='+inttostr(spinedit1.value)+' and a.m1='+query1.fieldbyname('m1').asstring+' group by a.wkno order by a.wkno';
    commandtext:='select wkno,flag,dt1 as x1,dt2 as x2 from tbl_cap_wkno_new where yr='+inttostr(spinedit1.value)+' and m1='+query1.fieldbyname('m1').asstring+' and wkno>0 order by wkno';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then dbgrideh1.Columns[3].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=2 then dbgrideh1.columns[4].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=3 then dbgrideh1.columns[5].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=4 then dbgrideh1.columns[6].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=5 then dbgrideh1.columns[7].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=6 then dbgrideh1.columns[8].title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      application.ProcessMessages;
      next;
    end;
  end;
  if i=6 then dbgrideh1.columns[8].visible:=true
  else if i=5 then begin
    dbgrideh1.columns[8].visible:=false;
    dbgrideh1.Columns[7].Visible:=true;
  end else begin
    dbgrideh1.columns[8].visible:=false;
    dbgrideh1.Columns[7].Visible:=false;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno_new where yr=:x1 and m1=:x2 and wkno>0';
    params[0].asinteger:=spinedit1.value;
    params[1].asinteger:=query1.fieldbyname('m1').value;
    open;
    label4.Caption:='(wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')';
  end;
end;

procedure Tfrmnewcap_simfty_wk.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  set1:set of 1..90;
begin
  //set1:=[4,7,8,18,19,21,22,23,24];
  //if (query1.fieldbyname('seq1').asinteger in set1) then
  //dbgrideh1.Canvas.Brush.Color:=$00CDFCFB;
  //dbgrideh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  set1:=[4,7,9,17,18,19,24,60,61,65];
  if (query1.fieldbyname('seq1').asinteger in set1) then
  dbgrideh1.Canvas.Brush.Color:=$00CDFCFB;
  dbgrideh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
