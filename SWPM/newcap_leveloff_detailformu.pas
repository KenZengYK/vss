unit newcap_leveloff_detailformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, GridsEh, DBGridEh, DBCtrls,
  ExtCtrls;

type
  Tfrmnewcap_leveloff_detail = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1BeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure querydtchange(Sender: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function monthtransfer(const m1: integer):string;
  end;

var
  frmnewcap_leveloff_detail: Tfrmnewcap_leveloff_detail;

implementation

uses mainformu, newcap_leveloffformu;

{$R *.dfm}

procedure Tfrmnewcap_leveloff_detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_leveloff_detail:=nil;
end;

procedure Tfrmnewcap_leveloff_detail.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmnewcap_leveloff_detail.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('woff').onchange:=querydtchange;
  query1.fieldbyname('wf1').onchange:=querydtchange;
  query1.fieldbyname('wf2').onchange:=querydtchange;
  query1.fieldbyname('wf3').onchange:=querydtchange;
  query1.fieldbyname('wf4').onchange:=querydtchange;
  query1.fieldbyname('wf5').onchange:=querydtchange;
  query1.fieldbyname('wf6').onchange:=querydtchange;
end;

procedure Tfrmnewcap_leveloff_detail.Query1AfterPost(DataSet: TDataSet);
var
  mttl,w1,w2,w3,w4,w5,w6:integer;
  str1:string;
begin
  screen.cursor:=crSQLWait;
  try
  //if query1.applyupdates(-1)>0 then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      params.createparam(ftstring,'x12',ptinput);
      params.createparam(ftstring,'x13',ptinput);
      params.createparam(ftinteger,'x14',ptinput);
      commandtext:='update tbl_cap_oa_proj_detail_woff set woff=:x1,wf1=:x2,wf2=:x3,wf3=:x4,wf4=:x5,wf5=:x6,wf6=:x7,bal1=:x8 where tplant=:x9 and yr=:x10 and m1=:x11 and cust=:x12 and flag6=:x13 and seq=:x14';

      if not query1.fieldbyname('woff').isnull then
      params[0].asinteger:=query1.fieldbyname('woff').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('wf1').isnull then
      params[1].asinteger:=query1.fieldbyname('wf1').value
      else params[1].asinteger:=0;
      if not query1.fieldbyname('wf2').isnull then
      params[2].asinteger:=query1.fieldbyname('wf2').value
      else params[2].asinteger:=0;
      if not query1.fieldbyname('wf3').isnull then
      params[3].asinteger:=query1.fieldbyname('wf3').value
      else params[3].asinteger:=0;
      if not query1.fieldbyname('wf4').isnull then
      params[4].asinteger:=query1.fieldbyname('wf4').value
      else params[4].asinteger:=0;
      if not query1.fieldbyname('wf5').isnull then
      params[5].asinteger:=query1.fieldbyname('wf5').value
      else params[5].asinteger:=0;
      if not query1.fieldbyname('wf6').isnull then
      params[6].asinteger:=query1.fieldbyname('wf6').value
      else params[6].asinteger:=0;
      if not query1.fieldbyname('bal1').isnull then
      params[7].asinteger:=query1.fieldbyname('bal1').value
      else params[7].asinteger:=0;
      params[8].asstring:=query1.fieldbyname('tplant').value;
      params[9].asinteger:=query1.fieldbyname('yr').value;
      params[10].asinteger:=query1.fieldbyname('m1').value;
      params[11].asstring:=query1.fieldbyname('cust').value;
      params[12].asstring:=query1.fieldbyname('flag6').value;
      params[13].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    }
      str1:='update tbl_cap_oa_proj_detail_woff set ';
      if not query1.fieldbyname('woff').isnull then
      str1:=str1+'woff='+query1.fieldbyname('woff').asstring+','
      else str1:=str1+'woff=0,';
      if not query1.fieldbyname('wf1').isnull then
      str1:=str1+'wf1='+query1.fieldbyname('wf1').asstring+','
      else str1:=str1+'wf1=0,';
      if not query1.fieldbyname('wf2').isnull then
      str1:=str1+'wf2='+query1.fieldbyname('wf2').asstring+','
      else str1:=str1+'wf2=0,';
      if not query1.fieldbyname('wf3').isnull then
      str1:=str1+'wf3='+query1.fieldbyname('wf3').asstring+','
      else str1:=str1+'wf3=0,';
      if not query1.fieldbyname('wf4').isnull then
      str1:=str1+'wf4='+query1.fieldbyname('wf4').asstring+','
      else str1:=str1+'wf4=0,';
      if not query1.fieldbyname('wf5').isnull then
      str1:=str1+'wf5='+query1.fieldbyname('wf5').asstring+','
      else str1:=str1+'wf5=0,';
      if not query1.fieldbyname('wf6').isnull then
      str1:=str1+'wf6='+query1.fieldbyname('wf6').asstring+','
      else str1:=str1+'wf6=0,';
      if not query1.fieldbyname('bal1').isnull then
      str1:=str1+'bal1='+query1.fieldbyname('bal1').asstring+' '
      else str1:=str1+'bal1=0 ';
      str1:=str1+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
      str1:=str1+'and yr='+query1.fieldbyname('yr').asstring+' ';
      str1:=str1+'and m1='+query1.fieldbyname('m1').asstring+' ';
      str1:=str1+'and cust='''+query1.fieldbyname('cust').value+''' ';
      str1:=str1+'and flag6='''+query1.fieldbyname('flag6').value+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  //end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x9',ptinput);
    params.createparam(ftinteger,'x10',ptinput);
    params.createparam(ftinteger,'x11',ptinput);
    params.createparam(ftstring,'x12',ptinput);
    params.createparam(ftstring,'x13',ptinput);
    commandtext:='select sum(woff) as x1,sum(wf1) as x2,sum(wf2) as x3,sum(wf3) as x4,sum(wf4) as x5,sum(wf5) as x6,sum(wf6) as x7 from tbl_cap_oa_proj_detail_woff where tplant=:x9 and yr=:x10 and m1=:x11 and cust=:x12 and flag6=:x13';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asinteger:=query1.fieldbyname('m1').value;
    params[3].asstring:=query1.fieldbyname('cust').value;
    params[4].asstring:=query1.fieldbyname('flag6').value;
    open;
    if not fieldbyname('x1').isnull then mttl:=fieldbyname('x1').value else mttl:=0;
    if not fieldbyname('x2').isnull then w1:=fieldbyname('x2').value else w1:=0;
    if not fieldbyname('x3').isnull then w2:=fieldbyname('x3').value else w2:=0;
    if not fieldbyname('x4').isnull then w3:=fieldbyname('x4').value else w3:=0;
    if not fieldbyname('x5').isnull then w4:=fieldbyname('x5').value else w4:=0;
    if not fieldbyname('x6').isnull then w5:=fieldbyname('x6').value else w5:=0;
    if not fieldbyname('x7').isnull then w6:=fieldbyname('x7').value else w6:=0;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    params.createparam(ftstring,'x9',ptinput);
    params.createparam(ftinteger,'x10',ptinput);
    params.createparam(ftinteger,'x11',ptinput);
    params.createparam(ftstring,'x12',ptinput);
    params.createparam(ftstring,'x13',ptinput);
    commandtext:='update tbl_cap_oa_proj set woff=:x1,wf1=:x2,wf2=:x3,wf3=:x4,wf4=:x5,wf5=:x6,wf6=:x7 where tplant=:x9 and yr=:x10 and m1=:x11 and cust=:x12 and flag6=:x13';

    params[0].asinteger:=mttl;
    params[1].asinteger:=w1;
    params[2].asinteger:=w2;
    params[3].asinteger:=w3;
    params[4].asinteger:=w4;
    params[5].asinteger:=w5;
    params[6].asinteger:=w6;
    params[7].asstring:=query1.fieldbyname('tplant').value;
    params[8].asinteger:=query1.fieldbyname('yr').value;
    params[9].asinteger:=query1.fieldbyname('m1').value;
    params[10].asstring:=query1.fieldbyname('cust').value;
    params[11].asstring:=query1.fieldbyname('flag6').value;
    execute;
  end;
  }
    str1:='update tbl_cap_oa_proj set ';
    str1:=str1+'woff='+inttostr(mttl)+',';
    str1:=str1+'wf1='+inttostr(w1)+',';
    str1:=str1+'wf2='+inttostr(w2)+',';
    str1:=str1+'wf3='+inttostr(w3)+',';
    str1:=str1+'wf4='+inttostr(w4)+',';
    str1:=str1+'wf5='+inttostr(w5)+',';
    str1:=str1+'wf6='+inttostr(w6)+' ';
    str1:=str1+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
    str1:=str1+'and yr='+query1.fieldbyname('yr').asstring+' ';
    str1:=str1+'and m1='+query1.fieldbyname('m1').asstring+' ';
    str1:=str1+'and cust='''+query1.fieldbyname('cust').value+''' ';
    str1:=str1+'and flag6='''+query1.fieldbyname('flag6').value+'''';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  frmnewcap_leveloff.show_data;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_leveloff_detail.Query1BeforePost(DataSet: TDataSet);
begin
  if query1.fieldbyname('bal1').value<>0 then begin
    showmessage('Balance is not zero, data can not be saved!');
    abort;
  end;
end;

procedure Tfrmnewcap_leveloff_detail.FormShow(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select wkno,flag,dt1 as x1,dt2 as x2,m1 from tbl_cap_wkno_new where yr='+inttostr(frmnewcap_leveloff.spinedit1.value)+' and m1='+frmnewcap_leveloff.query1.fieldbyname('m1').asstring+' and wkno>0 order by wkno';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        dbgrideh1.Columns[3].Title.caption:='Level off Del Qty of SP - '+monthtransfer(fieldbyname('m1').value)+'|Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      end else if i=2 then begin
        dbgrideh1.columns[4].Title.Caption:='Level off Del Qty of SP - '+monthtransfer(fieldbyname('m1').value)+'|Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      end else if i=3 then begin
        dbgrideh1.columns[5].Title.Caption:='Level off Del Qty of SP - '+monthtransfer(fieldbyname('m1').value)+'|Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      end else if i=4 then begin
        dbgrideh1.columns[6].Title.Caption:='Level off Del Qty of SP - '+monthtransfer(fieldbyname('m1').value)+'|Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      end else if i=5 then begin
        dbgrideh1.columns[7].Title.Caption:='Level off Del Qty of SP - '+monthtransfer(fieldbyname('m1').value)+'|Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      end else if i=6 then begin
        dbgrideh1.columns[8].title.caption:='Level off Del Qty of SP - '+monthtransfer(fieldbyname('m1').value)+'|Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  if i=6 then begin
    dbgrideh1.columns[8].visible:=true;
  end else if i=5 then begin
    dbgrideh1.columns[8].visible:=false;
    dbgrideh1.Columns[7].Visible:=true;
  end else begin
    dbgrideh1.Columns[8].Visible:=false;
    dbgrideh1.Columns[7].Visible:=false;
  end;
end;

function Tfrmnewcap_leveloff_detail.monthtransfer(
  const m1: integer): string;
begin
  if m1=1 then result:='Jan'
  else if m1=2 then result:='Feb'
  else if m1=3 then result:='Mar'
  else if m1=4 then result:='Apr'
  else if m1=5 then result:='May'
  else if m1=6 then result:='Jun'
  else if m1=7 then result:='Jul'
  else if m1=8 then result:='Aug'
  else if m1=9 then result:='Sep'
  else if m1=10 then result:='Oct'
  else if m1=11 then result:='Nov'
  else if m1=12 then result:='Dec';
end;

procedure Tfrmnewcap_leveloff_detail.querydtchange(Sender: TField);
var
  mttl,w1,w2,w3,w4,w5,w6:integer;
begin
  if not query1.fieldbyname('woff').isnull then mttl:=query1.fieldbyname('woff').value
  else mttl:=0;
  if not query1.fieldbyname('wf1').isnull then w1:=query1.fieldbyname('wf1').value
  else w1:=0;
  if not query1.fieldbyname('wf2').isnull then w2:=query1.fieldbyname('wf2').value
  else w2:=0;
  if not query1.fieldbyname('wf3').isnull then w3:=query1.fieldbyname('wf3').value
  else w3:=0;
  if not query1.fieldbyname('wf4').isnull then w4:=query1.fieldbyname('wf4').value
  else w4:=0;
  if not query1.fieldbyname('wf5').isnull then w5:=query1.fieldbyname('wf5').value
  else w5:=0;
  if not query1.fieldbyname('wf6').isnull then w6:=query1.fieldbyname('wf6').value
  else w6:=0;
  query1.fieldbyname('bal1').value:=mttl-w1-w2-w3-w4-w5-w6;
end;

procedure Tfrmnewcap_leveloff_detail.BitBtn3Click(Sender: TObject);
var
  seq:integer;
  tplant,cust,flag6:string;
  yr,m1:integer;
begin
  tplant:=query1.fieldbyname('tplant').value;
  cust:=query1.fieldbyname('cust').value;
  flag6:=query1.fieldbyname('flag6').value;
  yr:=query1.fieldbyname('yr').value;
  m1:=query1.fieldbyname('m1').value;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select max(seq) as q from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
    params[0].asstring:=tplant;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asstring:=cust;
    params[4].asstring:=flag6;
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1 else seq:=2;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftdate,'x7',ptinput);
    params.createparam(ftstring,'x8',ptinput);
    commandtext:='insert into tbl_cap_oa_proj_detail_woff(tplant,yr,m1,cust,flag6,seq,dt,act) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
    params[0].asstring:=tplant;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asstring:=cust;
    params[4].asstring:=flag6;
    params[5].asinteger:=seq;
    params[6].asdate:=date;
    params[7].asstring:='Add Qty';
    execute;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select * from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
    params[0].asstring:=tplant;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asstring:=cust;
    params[4].asstring:=flag6;
    open;
  end;
end;

procedure Tfrmnewcap_leveloff_detail.BitBtn4Click(Sender: TObject);
var
  seq:integer;
  tplant,cust,flag6:string;
  yr,m1:integer;
begin
  tplant:=query1.fieldbyname('tplant').value;
  cust:=query1.fieldbyname('cust').value;
  flag6:=query1.fieldbyname('flag6').value;
  yr:=query1.fieldbyname('yr').value;
  m1:=query1.fieldbyname('m1').value;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select max(seq) as q from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
    params[0].asstring:=tplant;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asstring:=cust;
    params[4].asstring:=flag6;
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1 else seq:=2;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftdate,'x7',ptinput);
    params.createparam(ftstring,'x8',ptinput);
    commandtext:='insert into tbl_cap_oa_proj_detail_woff(tplant,yr,m1,cust,flag6,seq,dt,act) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
    params[0].asstring:=tplant;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asstring:=cust;
    params[4].asstring:=flag6;
    params[5].asinteger:=seq;
    params[6].asdate:=date;
    params[7].asstring:='Reduce Qty';
    execute;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select * from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
    params[0].asstring:=tplant;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asstring:=cust;
    params[4].asstring:=flag6;
    open;
  end;
end;

procedure Tfrmnewcap_leveloff_detail.BitBtn5Click(Sender: TObject);
var
  seq:integer;
  tplant,cust,flag6:string;
  yr,m1:integer;
begin
  tplant:=query1.fieldbyname('tplant').value;
  cust:=query1.fieldbyname('cust').value;
  flag6:=query1.fieldbyname('flag6').value;
  yr:=query1.fieldbyname('yr').value;
  m1:=query1.fieldbyname('m1').value;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select max(seq) as q from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
    params[0].asstring:=tplant;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asstring:=cust;
    params[4].asstring:=flag6;
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1 else seq:=2;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftdate,'x7',ptinput);
    params.createparam(ftstring,'x8',ptinput);
    commandtext:='insert into tbl_cap_oa_proj_detail_woff(tplant,yr,m1,cust,flag6,seq,dt,act) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
    params[0].asstring:=tplant;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asstring:=cust;
    params[4].asstring:=flag6;
    params[5].asinteger:=seq;
    params[6].asdate:=date;
    params[7].asstring:='Reallocate Qty';
    execute;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select * from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
    params[0].asstring:=tplant;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asstring:=cust;
    params[4].asstring:=flag6;
    open;
  end;
end;

end.
 