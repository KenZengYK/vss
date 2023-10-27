unit ttlcshformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, rxCurrEdit, Mask, rxToolEdit, Buttons, Db, DBClient,
  ExtCtrls;

type
  Tfrmttlcsh = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label8: TLabel;
    DBText2: TDBText;
    Label9: TLabel;
    DBText3: TDBText;
    Label10: TLabel;
    DBText4: TDBText;
    Label11: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    Label18: TLabel;
    DBEdit11: TDBEdit;
    Label19: TLabel;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Bevel1: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBMemo1: TDBMemo;
    Edit1: TCurrencyEdit;
    Label31: TLabel;
    DateEdit1: TDateEdit;
    Query10: TClientDataSet;
    Label32: TLabel;
    Label33: TLabel;
    qns001: TLabel;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label34: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label16: TLabel;
    Edit4: TEdit;
    week52: TClientDataSet;
    DataSource2: TDataSource;
    Edit5: TEdit;
    Label35: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FieldChange(Sender: TField);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure week52AfterOpen(DataSet: TDataSet);
    procedure secttchange(Sender: TField);
    procedure week52AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmttlcsh: Tfrmttlcsh;

implementation

uses mainformu, zktdformu, achievingformu, qn_calcsectsformu;

{$R *.dfm}

procedure Tfrmttlcsh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmttlcsh:=nil;
end;

procedure Tfrmttlcsh.BitBtn1Click(Sender: TObject);
var
  seq:integer;
begin
  screen.cursor:=crSQLWait;
  if label31.Visible=false then begin
    if query1.state=dsedit then query1.post;
    if week52.state=dsedit then week52.post;
  end else if label31.Visible=true then begin
  if label4.Caption='ZKTD' then seq:=frmzktd.Query1.fieldbyname('seq').value
  else if label4.Caption='ACHIEVE' then seq:=frmachieving.Query1.fieldbyname('seq').value;
  
  //Update record
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='delete from tbl_linezjs where pline=:x1 and date1=:x2';
    params[0].asstring:=dbtext1.Caption;
    params[1].asdate:=dateedit1.date;
    execute;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftfloat,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftdatetime,'x5',ptinput);
    commandtext:='insert into tbl_linezjs(pline,date1,zjs,usr,tm) values(:x1,:x2,:x3,:x4,:x5)';
    params[0].asstring:=dbtext1.Caption;
    params[1].asdate:=dateedit1.Date;
    params[2].asfloat:=edit1.Value;
    params[3].asstring:=frmmain.combobox1.text;
    params[4].asdatetime:=now;
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select def_tg,arr_ky,ttl from week52 where line=:x1 and date1=:x2';
    if label4.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    open;
    if not fieldbyname('def_tg').isnull then edit2.text:=formatfloat('0.0',fieldbyname('def_tg').value)
    else edit2.text:='0.0';
    if not fieldbyname('arr_ky').isnull then edit3.text:=formatfloat('0.0',fieldbyname('arr_ky').value)
    else edit3.text:='0.0';
    if not fieldbyname('ttl').isnull then edit5.text:=formatfloat('0.0',fieldbyname('ttl').value) else edit5.text:='0.0';
    if fieldbyname('def_tg').value>0 then edit4.text:=formatfloat('0.00%',100.00-fieldbyname('ttl').value*100.00/fieldbyname('def_tg').value)
    else edit4.text:='0.00%';
  end;
  //Modify Line_SHJS
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='execute procedure sp_updline_csect(:x1,:x2)';
    params[0].asstring:=dbtext1.Caption;
    params[1].asdate:=dateedit1.Date;
    execute;
  end;
  if label4.Caption='ZKTD' then begin
    with frmzktd.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from line_shjs where pline=:x1 and seq=:x2';
      params[0].asstring:=dbtext1.Caption;
      params[1].asinteger:=seq;
      open;
      locate('dt1',dateedit1.Date,[]);
    end;
  end else if label4.Caption='ACHIEVE' then begin
    frmachieving.ComboBox1Change(self);
    frmachieving.Query1.Locate('pline;seq;dt1',vararrayof([dbtext1.caption,seq,dateedit1.date]),[])
  end;
  end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmttlcsh.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('a2').onchange:=FieldChange;
  query1.fieldbyname('b2').onchange:=FieldChange;
  query1.fieldbyname('c2').onchange:=FieldChange;
  query1.fieldbyname('d2').onchange:=FieldChange;
  query1.fieldbyname('e2').onchange:=FieldChange;
  query1.fieldbyname('f2').onchange:=FieldChange;
  query1.fieldbyname('g2').onchange:=FieldChange;
  query1.fieldbyname('h2').onchange:=FieldChange;
  query1.fieldbyname('zsect').onchange:=FieldChange;
  query1.fieldbyname('asect').onchange:=FieldChange;
  query1.fieldbyname('rsect').onchange:=FieldChange;
  query1.fieldbyname('esect').onchange:=FieldChange;
  query1.fieldbyname('cur_kh3').onchange:=FieldChange;
  query1.fieldbyname('cur_cl').onchange:=FieldChange;
  (query1.fieldbyname('a2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('b2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('c2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('d2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('e2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('f2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('g2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('h2') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('zsect') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('asect') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('rsect') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('esect') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('csect') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('ttl') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('cur_kh3') as tfloatfield).displayformat:='0.0';
  (query1.fieldbyname('cur_cl') as tfloatfield).displayformat:='0.0';
end;

procedure Tfrmttlcsh.FormShow(Sender: TObject);
begin
  {
  if (frmmain.eng_chn01.ItemIndex=1) then begin
    with query10 do begin
      close;
      params.Clear;
      commandtext:='select * from tbl_ver_engchn where f_mod=''GAI'' and f_frm=''QNCAL'' order by f_lbl_grd,f_xh';
      open;
      first;
      while not eof do begin
        if (fieldbyname('f_lbl_grd').value='LABEL') then begin
          if fieldbyname('f_xh').value=1 then frmttlcsh.label1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=2 then frmttlcsh.label8.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=3 then frmttlcsh.label9.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=4 then frmttlcsh.label2.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=5 then frmttlcsh.groupbox1.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=6 then frmttlcsh.label16.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=7 then frmttlcsh.label17.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=8 then frmttlcsh.label18.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=9 then frmttlcsh.label19.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=10 then frmttlcsh.label21.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=11 then frmttlcsh.label22.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=12 then frmttlcsh.bitbtn1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=13 then frmttlcsh.bitbtn2.Caption:=fieldbyname('f_chn').value;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  }
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select * from qn_calendar where pline=:x1 and seq=:x2 and dt1=:x3';
    if label4.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    open;
  end;
  with week52 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from week52 where line=:x1 and date1=:x2';
    if label4.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    open;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select def_tg,arr_ky,ttl from week52 where line=:x1 and date1=:x2';
    if label4.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    open;
    if not fieldbyname('def_tg').isnull then edit2.text:=formatfloat('0.0',fieldbyname('def_tg').value)
    else edit2.text:='0.0';
    if not fieldbyname('arr_ky').isnull then edit3.text:=formatfloat('0.0',fieldbyname('arr_ky').value)
    else edit3.text:='0.0';
    if not fieldbyname('ttl').isnull then edit5.text:=formatfloat('0.0',fieldbyname('ttl').value) else edit5.text:='0.0';
    if fieldbyname('def_tg').value>0 then edit4.text:=formatfloat('0.00%',100.00-fieldbyname('ttl').value*100.00/fieldbyname('def_tg').value)
    else edit4.text:='0.00%';
  end;
end;

procedure Tfrmttlcsh.FieldChange(Sender: TField);
var
  sct1,sct2,sct3,sct4,a,b,c,d,e,f,g,h:double;
  z1,a1,r1,e1,ckh3,ccl:double;
  str1:string;
begin
  if not query1.fieldbyname('a2').isnull then a:=query1.fieldbyname('a2').value else a:=0;
  if not query1.fieldbyname('b2').isnull then b:=query1.fieldbyname('b2').value else b:=0;
  if not query1.fieldbyname('c2').isnull then c:=query1.fieldbyname('c2').value else c:=0;
  if not query1.fieldbyname('d2').isnull then d:=query1.fieldbyname('d2').value else d:=0;
  if not query1.fieldbyname('e2').isnull then e:=query1.fieldbyname('e2').value else e:=0;
  if not query1.fieldbyname('f2').isnull then f:=query1.fieldbyname('f2').value else f:=0;
  if not query1.fieldbyname('g2').isnull then g:=query1.fieldbyname('g2').value else g:=0;
  if not query1.fieldbyname('h2').isnull then h:=query1.fieldbyname('h2').value else h:=0;
  if not query1.fieldbyname('zsect').isnull then z1:=query1.fieldbyname('zsect').value else z1:=0;
  if not query1.fieldbyname('asect').isnull then a1:=query1.fieldbyname('asect').value else a1:=0;
  if not query1.fieldbyname('rsect').isnull then r1:=query1.fieldbyname('rsect').value else r1:=0;
  if not query1.fieldbyname('esect').isnull then e1:=query1.fieldbyname('esect').value else e1:=0;
  if not query1.fieldbyname('cur_kh3').isnull then ckh3:=query1.fieldbyname('cur_kh3').value else ckh3:=0;
  if not query1.fieldbyname('cur_cl').isnull then ccl:=query1.fieldbyname('cur_cl').value else ccl:=0;
  //{
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sectt,sectt1,sectc,osect from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asdate:=query1.fieldbyname('dt1').value;
    open;
  end;
  if not query2.fieldbyname('sectt').isnull then sct1:=query2.fieldbyname('sectt').value else sct1:=0;
  if not query2.fieldbyname('sectt1').isnull then sct2:=query2.fieldbyname('sectt1').value else sct2:=0;
  if not query2.fieldbyname('sectc').isnull then sct3:=query2.fieldbyname('sectc').value else sct3:=0;
  if not query2.fieldbyname('osect').isnull then sct4:=query2.fieldbyname('osect').value else sct4:=0;
  //}
  query1.fieldbyname('lsect').value:=a+b+c+d+g+h;
  query1.fieldbyname('cur_td').value:=e+f+ckh3+ccl;
  query1.fieldbyname('ttl').value:=sct1+sct2+sct3+sct4-z1-(a+b+c+d+e+f+g+h)-ckh3-ccl;
  str1:='';
  if a>0 then begin
    if str1>'' then str1:=str1+',2a('+formatfloat('0.0',a)+')' else str1:='2a('+formatfloat('0.0',a)+')';
  end;
  if b>0 then begin
    if str1>'' then str1:=str1+',2b('+formatfloat('0.0',b)+')' else str1:='2b('+formatfloat('0.0',b)+')';
  end;
  if c>0 then begin
    if str1>'' then str1:=str1+',2c('+formatfloat('0.0',c)+')' else str1:='2c('+formatfloat('0.0',c)+')';
  end;
  if d>0 then begin
    if str1>'' then str1:=str1+',2d('+formatfloat('0.0',d)+')' else str1:='2d('+formatfloat('0.0',d)+')';
  end;
  if e>0 then begin
    if str1>'' then str1:=str1+',2e('+formatfloat('0.0',e)+')' else str1:='2e('+formatfloat('0.0',e)+')';
  end;
  if f>0 then begin
    if str1>'' then str1:=str1+',2f('+formatfloat('0.0',f)+')' else str1:='2f('+formatfloat('0.0',f)+')';
  end;
  if g>0 then begin
    if str1>'' then str1:=str1+',2g('+formatfloat('0.0',g)+')' else str1:='2g('+formatfloat('0.0',g)+')';
  end;
  if h>0 then begin
    if str1>'' then str1:=str1+',2h('+formatfloat('0.0',h)+')' else str1:='2h('+formatfloat('0.0',h)+')';
  end;
  query1.fieldbyname('flag').value:=str1;
end;

procedure Tfrmttlcsh.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  screen.Cursor:=crSQLWait;
  try
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
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftfloat,'x7',ptinput);
      params.createparam(ftfloat,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftfloat,'x10',ptinput);
      params.createparam(ftfloat,'x11',ptinput);
      params.createparam(ftfloat,'x12',ptinput);
      params.createparam(ftfloat,'x13',ptinput);
      params.createparam(ftfloat,'x14',ptinput);
      params.createparam(ftstring,'x15',ptinput);
      params.createparam(ftfloat,'x16',ptinput);
      params.createparam(ftstring,'x17',ptinput);
      params.createparam(ftinteger,'x18',ptinput);
      params.createparam(ftdate,'x19',ptinput);
      commandtext:='update qn_calendar set a2=:x1,b2=:x2,c2=:x3,d2=:x4,e2=:x5,f2=:x6,g2=:x7,h2=:x8,'
                  +'flag=:x9,lsect=:x10,zsect=:x11,asect=:x12,rsect=:x13,esect=:x14,emarks=:x15,ttl=:x16 '
                  +'where pline=:x17 and seq=:x18 and dt1=:x19';

      if not query1.fieldbyname('a2').isnull then
      params[0].asfloat:=query1.fieldbyname('a2').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('b2').isnull then
      params[1].asfloat:=query1.fieldbyname('b2').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('c2').isnull then
      params[2].asfloat:=query1.fieldbyname('c2').value
      else params[2].asfloat:=0;
      if not query1.fieldbyname('d2').isnull then
      params[3].asfloat:=query1.fieldbyname('d2').value
      else params[3].asfloat:=0;
      if not query1.fieldbyname('e2').isnull then
      params[4].asfloat:=query1.fieldbyname('e2').value
      else params[4].asfloat:=0;
      if not query1.fieldbyname('f2').isnull then
      params[5].asfloat:=query1.fieldbyname('f2').value
      else params[5].asfloat:=0;
      if not query1.fieldbyname('g2').isnull then
      params[6].asfloat:=query1.fieldbyname('g2').value
      else params[6].asfloat:=0;
      if not query1.fieldbyname('h2').isnull then
      params[7].asfloat:=query1.fieldbyname('h2').value
      else params[7].asfloat:=0;
      if not query1.fieldbyname('flag').isnull then
      params[8].asstring:=query1.fieldbyname('flag').value
      else params[8].asstring:='';
      if not query1.fieldbyname('lsect').isnull then
      params[9].asfloat:=query1.fieldbyname('lsect').value
      else params[9].asfloat:=0;
      if not query1.fieldbyname('zsect').isnull then
      params[10].asfloat:=query1.fieldbyname('zsect').value
      else params[10].asfloat:=0;
      if not query1.fieldbyname('asect').isnull then
      params[11].asfloat:=query1.fieldbyname('asect').value
      else params[11].asfloat:=0;
      if not query1.fieldbyname('rsect').isnull then
      params[12].asfloat:=query1.fieldbyname('rsect').value
      else params[12].asfloat:=0;
      if not query1.fieldbyname('esect').isnull then
      params[13].asfloat:=query1.fieldbyname('esect').value
      else params[13].asfloat:=0;
      if not query1.fieldbyname('emarks').isnull then
      params[14].asstring:=query1.fieldbyname('emarks').value
      else params[14].asstring:='';
      params[15].asfloat:=query1.fieldbyname('ttl').value;
      params[16].asstring:=query1.fieldbyname('pline').value;
      params[17].asinteger:=query1.fieldbyname('seq').value;
      params[18].asdate:=query1.fieldbyname('dt1').value;
      execute;
    end;
  end;
  }
      str1:='update qn_calendar set ';
      if not query1.fieldbyname('a2').isnull then
      str1:=str1+'a2='+query1.fieldbyname('a2').asstring+','
      else str1:=str1+'a2=0,';
      if not query1.fieldbyname('b2').isnull then
      str1:=str1+'b2='+query1.fieldbyname('b2').asstring+','
      else str1:=str1+'b2=0,';
      if not query1.fieldbyname('c2').isnull then
      str1:=str1+'c2='+query1.fieldbyname('c2').asstring+','
      else str1:=str1+'c2=0,';
      if not query1.fieldbyname('d2').isnull then
      str1:=str1+'d2='+query1.fieldbyname('d2').asstring+','
      else str1:=str1+'d2=0,';
      if not query1.fieldbyname('e2').isnull then
      str1:=str1+'e2='+query1.fieldbyname('e2').asstring+','
      else str1:=str1+'e2=0,';
      if not query1.fieldbyname('f2').isnull then
      str1:=str1+'f2='+query1.fieldbyname('f2').asstring+','
      else str1:=str1+'f2=0,';
      if not query1.fieldbyname('g2').isnull then
      str1:=str1+'g2='+query1.fieldbyname('g2').asstring+','
      else str1:=str1+'g2=0,';
      if not query1.fieldbyname('h2').isnull then
      str1:=str1+'h2='+query1.fieldbyname('h2').asstring+','
      else str1:=str1+'h2=0,';
      if not query1.fieldbyname('cur_kh3').isnull then
      str1:=str1+'cur_kh3='+query1.fieldbyname('cur_kh3').asstring+','
      else str1:=str1+'cur_kh3=0,';
      if not query1.fieldbyname('cur_cl').isnull then
      str1:=str1+'cur_cl='+query1.fieldbyname('cur_cl').asstring+','
      else str1:=str1+'cur_cl=0,';
      if not query1.fieldbyname('cur_td').isnull then
      str1:=str1+'cur_td='+query1.fieldbyname('cur_td').asstring+','
      else str1:=str1+'cur_td=0,';
      if not query1.fieldbyname('flag').isnull then
      str1:=str1+'flag='''+query1.fieldbyname('flag').value+''','
      else str1:=str1+'flag='''',';
      if not query1.fieldbyname('lsect').isnull then
      str1:=str1+'lsect='+query1.fieldbyname('lsect').asstring+','
      else str1:=str1+'lsect=0,';
      if not query1.fieldbyname('zsect').isnull then
      str1:=str1+'zsect='+query1.fieldbyname('zsect').asstring+','
      else str1:=str1+'zsect=0,';
      if not query1.fieldbyname('asect').isnull then
      str1:=str1+'asect='+query1.fieldbyname('asect').asstring+','
      else str1:=str1+'asect=0,';
      if not query1.fieldbyname('rsect').isnull then
      str1:=str1+'rsect='+query1.fieldbyname('rsect').asstring+','
      else str1:=str1+'rsect=0,';
      if not query1.fieldbyname('esect').isnull then
      str1:=str1+'esect='+query1.fieldbyname('esect').asstring+','
      else str1:=str1+'esect=0,';
      if not query1.fieldbyname('emarks').isnull then
      str1:=str1+'emarks='''+query1.fieldbyname('emarks').value+''','
      else str1:=str1+'emarks='''',';
      str1:=str1+'ttl='+query1.fieldbyname('ttl').asstring+' ';
      str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and dt1='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt1').value)+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
    //update week52
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='execute procedure sp_qnupdateweek52_new(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asdate:=query1.fieldbyname('dt1').value;
      execute;
    end;
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select def_tg,arr_ky,ttl from week52 where line=:x1 and date1=:x2';
      if label4.Caption='ZKTD' then begin
        params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
        params[1].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
      end else begin
        params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
        params[1].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
      end;
      open;
      if not fieldbyname('def_tg').isnull then edit2.text:=formatfloat('0.0',fieldbyname('def_tg').value)
      else edit2.text:='0.0';
      if not fieldbyname('arr_ky').isnull then edit3.text:=formatfloat('0.0',fieldbyname('arr_ky').value)
      else edit3.text:='0.0';
      if fieldbyname('def_tg').value>0 then edit4.text:=formatfloat('0.00%',100.00-fieldbyname('ttl').value*100.00/fieldbyname('def_tg').value)
      else edit4.text:='0.00%';
    end;
    }
  finally
  screen.Cursor:=crdefault;
  end;
end;

procedure Tfrmttlcsh.secttchange(Sender: TField);
var
  s1,s2,s3,s4,s5,s6,s7,s8,a2,b2,c2,d2,e2,f2,g2,h2:double;
  ccl,ckh3:double;
  str2:string;
begin
  if not week52.fieldbyname('sectt').isnull then
  s1:=week52.fieldbyname('sectt').value else s1:=0;
  if not week52.fieldbyname('sectt1').isnull then
  s2:=week52.fieldbyname('sectt1').value else s2:=0;
  if not week52.fieldbyname('sectc').isnull then
  s3:=week52.fieldbyname('sectc').value else s3:=0;
  week52.fieldbyname('secto').value:=s1+s2+s3;
  if not week52.fieldbyname('osect').isnull then
  s5:=week52.fieldbyname('osect').value else s5:=0;
  if not week52.fieldbyname('zsect').isnull then
  s4:=week52.fieldbyname('zsect').value else s4:=0;
  if not week52.fieldbyname('esect').isnull then
  s6:=week52.fieldbyname('esect').value else s6:=0;
  if not week52.fieldbyname('asect').isnull then
  s7:=week52.fieldbyname('asect').value else s7:=0;
  if not week52.fieldbyname('rsect').isnull then
  s8:=week52.fieldbyname('rsect').value else s8:=0;
  if not week52.fieldbyname('e2').isnull then e2:=week52.fieldbyname('e2').value else e2:=0;
  if not week52.fieldbyname('f2').isnull then f2:=week52.fieldbyname('f2').value else f2:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select a2,b2,c2,d2,g2,h2 from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asdate:=query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('a2').isnull then a2:=fieldbyname('a2').value else a2:=0;
    if not fieldbyname('b2').isnull then b2:=fieldbyname('b2').value else b2:=0;
    if not fieldbyname('c2').isnull then c2:=fieldbyname('c2').value else c2:=0;
    if not fieldbyname('d2').isnull then d2:=fieldbyname('d2').value else d2:=0;
    if not fieldbyname('g2').isnull then g2:=fieldbyname('g2').value else g2:=0;
    if not fieldbyname('h2').isnull then h2:=fieldbyname('h2').value else h2:=0;
  end;
  if not week52.fieldbyname('cur_cl').isnull then
  ccl:=week52.fieldbyname('cur_cl').value else ccl:=0;
  if not week52.fieldbyname('cur_kh3').isnull then
  ckh3:=week52.fieldbyname('cur_kh3').value else ckh3:=0;
  str2:='';
  if e2>0 then begin
    if str2>'' then str2:=str2+',3.1a('+formatfloat('0.0',e2)+')' else str2:='3.1a('+formatfloat('0.0',e2)+')';
  end;
  if f2>0 then begin
    if str2>'' then str2:=str2+',3.1b('+formatfloat('0.0',f2)+')' else str2:='3.1b('+formatfloat('0.0',f2)+')';
  end;
  if ckh3>0 then begin
    if str2>'' then str2:=str2+',3.1c('+formatfloat('0.0',ckh3)+')' else str2:='3.1c('+formatfloat('0.0',ckh3)+')';
  end;
  if s4>0 then begin
    if str2>'' then str2:=str2+',3.2a('+formatfloat('0.0',s4)+')' else str2:='3.2a('+formatfloat('0.0',s4)+')';
  end;
  if ccl>0 then begin
    if str2>'' then str2:=str2+',3.3a('+formatfloat('0.0',ccl)+')' else str2:='3.3a('+formatfloat('0.0',ccl)+')';
  end;
  week52.fieldbyname('cur_td').value:=e2+f2+s4+ccl+ckh3;
  week52.fieldbyname('ttl').value:=s1+s2+s3+s5-(a2+b2+c2+d2+e2+f2+g2+h2)-ccl-ckh3-s4;
  week52.fieldbyname('cur_khe').value:=str2;
  if week52.fieldbyname('ttl').value>0 then week52.fieldbyname('dcu').value:=week52.fieldbyname('lsect').value*100.0/week52.fieldbyname('ttl').value
  else week52.fieldbyname('dcu').value:=0;
end;

procedure Tfrmttlcsh.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='execute procedure sp_swpm_lineshjs_qnf(:x1,:x2)';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    execute;
  end;
  if frmqn_calcsects=nil then frmqn_calcsects:=tfrmqn_calcsects.create(nil);
  with frmqn_calcsects.query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from line_shjs_tmpjs where pline=:x1 and dt1=:x2';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    open;
  end;
  frmqn_calcsects.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmttlcsh.week52AfterOpen(DataSet: TDataSet);
begin
  week52.FieldByName('e2').OnChange:=secttchange;
  week52.FieldByName('f2').OnChange:=secttchange;
  week52.FieldByName('zsect').OnChange:=secttchange;
  week52.FieldByName('cur_cl').OnChange:=secttchange;
  week52.FieldByName('cur_kh3').OnChange:=secttchange;
  (week52.fieldbyname('e2') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('f2') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('zsect') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('cur_cl') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('cur_kh3') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('cur_td') as tfloatfield).displayformat:='0.0';
  (week52.fieldbyname('ttl') as tfloatfield).displayformat:='0.0';
end;

procedure Tfrmttlcsh.week52AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
      str1:='update week52 set ';
      if not week52.fieldbyname('ttl').isnull then
      str1:=str1+'ttl='+week52.fieldbyname('ttl').asstring+','
      else str1:=str1+'ttl=0,';
      if not week52.fieldbyname('e2').isnull then
      str1:=str1+'e2='+week52.fieldbyname('e2').asstring+','
      else str1:=str1+'e2=0,';
      if not week52.fieldbyname('f2').isnull then
      str1:=str1+'f2='+week52.fieldbyname('f2').asstring+','
      else str1:=str1+'f2=0,';
      if not week52.fieldbyname('zsect').isnull then
      str1:=str1+'zsect='+week52.fieldbyname('zsect').asstring+','
      else str1:=str1+'zsect=0,';
      if not week52.fieldbyname('dcu').isnull then
      str1:=str1+'dcu='+week52.fieldbyname('dcu').asstring+','
      else str1:=str1+'dcu=0,';

      if not week52.fieldbyname('cur_khe').isnull then
      str1:=str1+'cur_khe='''+week52.fieldbyname('cur_khe').value+''','
      else str1:=str1+'cur_khe='''',';
      if not week52.fieldbyname('cur_td').isnull then
      str1:=str1+'cur_td='+week52.fieldbyname('cur_td').asstring+','
      else str1:=str1+'cur_td=0,';
      if not week52.fieldbyname('cur_cl').isnull then
      str1:=str1+'cur_cl='+week52.fieldbyname('cur_cl').asstring+','
      else str1:=str1+'cur_cl=0,';
      if not week52.fieldbyname('cur_kh3').isnull then
      str1:=str1+'cur_kh3='+week52.fieldbyname('cur_kh3').asstring+' '
      else str1:=str1+'cur_kh3=0 ';

      str1:=str1+'where date1='''+formatdatetime('yyyy-MM-dd',week52.fieldbyname('date1').value)+''' ';
      str1:=str1+'and line='''+week52.fieldbyname('line').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

end.
