unit gai_notepad_chnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBClient, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, cxDBEdit, DBCtrls, GridsEh, DBGridEh, siComp;

type
  Tfrmgai_notepad_chn = class(TForm)
    Bevel2: TBevel;
    b201: TCheckBox;
    b202: TCheckBox;
    b203: TCheckBox;
    b204: TCheckBox;
    b205: TCheckBox;
    b206: TCheckBox;
    b207: TCheckBox;
    b208: TCheckBox;
    b209: TCheckBox;
    b210: TCheckBox;
    b211: TCheckBox;
    b212: TCheckBox;
    b213: TCheckBox;
    b214: TCheckBox;
    b2t01: TEdit;
    Label6: TLabel;
    b2t02: TEdit;
    Label7: TLabel;
    b2t03: TEdit;
    Label8: TLabel;
    b2t04: TEdit;
    Label9: TLabel;
    b2t05: TEdit;
    Label10: TLabel;
    b2t06: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    b2t08: TEdit;
    Label13: TLabel;
    b2t07: TEdit;
    b2t09: TEdit;
    Label14: TLabel;
    b2t10: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    b2t12: TEdit;
    Label17: TLabel;
    b2t11: TEdit;
    b2t13: TEdit;
    Label18: TLabel;
    b2t14: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    b2t16: TEdit;
    Label21: TLabel;
    b2t15: TEdit;
    b2t17: TEdit;
    Label22: TLabel;
    b2t18: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    b2t20: TEdit;
    Label25: TLabel;
    b2t19: TEdit;
    b2t21: TEdit;
    Label26: TLabel;
    b215: TCheckBox;
    b216: TCheckBox;
    b217: TCheckBox;
    b218: TCheckBox;
    b2t22: TEdit;
    Label27: TLabel;
    b2t23: TEdit;
    Label28: TLabel;
    b2t24: TEdit;
    Label29: TLabel;
    b2t25: TEdit;
    Label30: TLabel;
    b2t26: TEdit;
    Label31: TLabel;
    b2t27: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    b2t29: TEdit;
    Label34: TLabel;
    b2t28: TEdit;
    b219: TCheckBox;
    b220: TCheckBox;
    b401: TCheckBox;
    b402: TCheckBox;
    b403: TCheckBox;
    b404: TCheckBox;
    b4t01: TEdit;
    Label35: TLabel;
    b4t02: TEdit;
    Label36: TLabel;
    b4t03: TEdit;
    Label37: TLabel;
    b4t04: TEdit;
    Label38: TLabel;
    b405: TCheckBox;
    b406: TCheckBox;
    b407: TCheckBox;
    Bevel3: TBevel;
    Label39: TLabel;
    c01: TCheckBox;
    c02: TCheckBox;
    Label40: TLabel;
    Label41: TLabel;
    dt01: TMemo;
    Label45: TLabel;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    bvl1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl850: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    DBText1: TDBText;
    Label52: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label53: TLabel;
    Label54: TLabel;
    DBText4: TDBText;
    Edtat01: TEdit;
    chka03: TCheckBox;
    Edtat03: TEdit;
    chka04: TCheckBox;
    Edtat04: TEdit;
    at02: TComboBox;
    cEdit1: TcxDBCurrencyEdit;
    cEdit2: TcxCurrencyEdit;
    chk1: TCheckBox;
    chk2: TCheckBox;
    Edit1: TEdit;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1: TClientDataSet;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label50: TLabel;
    chka01: TCheckBox;
    chka02: TCheckBox;
    chkb01: TCheckBox;
    chkb02: TCheckBox;
    chkb03: TCheckBox;
    chkb04: TCheckBox;
    cEdit3: TcxDBCurrencyEdit;
    cEdit4: TcxCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkb02Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure Query4AfterOpen(DataSet: TDataSet);
    procedure Query4AfterPost(DataSet: TDataSet);
    procedure Query4Field1Change(Sender: TField);
    procedure Query4Field2Change(Sender: TField);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    function cvtfl_zb(const s1:string):integer;
  end;

var
  frmgai_notepad_chn: Tfrmgai_notepad_chn;

implementation

uses mainformu, zktdformu, achievingformu;

{$R *.dfm}

procedure Tfrmgai_notepad_chn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmgai_notepad_chn:=nil;
end;

procedure Tfrmgai_notepad_chn.FormShow(Sender: TObject);
var
  trs,sjyc:double;
begin
  if (lbl850.caption='SPE') then begin
    chk1.visible:=true; label45.visible:=true; chk2.visible:=true; label49.visible:=true; edit1.visible:=true;
  end else begin
    chk1.visible:=false; label45.visible:=false; chk2.visible:=false; label49.visible:=false; edit1.visible:=false;
  end;
  trs:=0; sjyc:=0;
  if label41.caption='ZKTD' then begin
    cedit1.databinding.datasource:=frmzktd.datasource1;
    cedit3.databinding.datasource:=frmzktd.datasource1;
    chk1.checked:=frmzktd.query1.fieldbyname('marks_sp_wip').value;
    chk2.checked:=frmzktd.query1.fieldbyname('marks_sp_cmp').value;
    if not frmzktd.query1.fieldbyname('muser').isnull then
    edit1.text:=frmzktd.query1.fieldbyname('muser').value
    else edit1.text:='';
    trs:=frmzktd.query1.fieldbyname('trs').value;
    if not frmzktd.query1.fieldbyname('sjyc').isnull then begin
      if frmzktd.query1.fieldbyname('sjyc').value>0 then
      sjyc:=frmzktd.query1.fieldbyname('sjyc').value;
    end;
  end else if label41.caption='ACHI' then begin
    cedit1.databinding.datasource:=frmachieving.datasource1;
    cedit3.databinding.datasource:=frmachieving.datasource1;
    chk1.checked:=frmachieving.query1.fieldbyname('marks_sp_wip').value;
    chk2.checked:=frmachieving.query1.fieldbyname('marks_sp_cmp').value;
    if not frmachieving.query1.fieldbyname('muser').isnull then
    edit1.text:=frmachieving.query1.fieldbyname('muser').value
    else edit1.text:='';
    trs:=frmachieving.query1.fieldbyname('trs').value;
    if not frmachieving.query1.fieldbyname('sjyc').isnull then begin
      if frmachieving.query1.fieldbyname('sjyc').value>0 then
      sjyc:=frmachieving.query1.fieldbyname('sjyc').value;
    end;
  end;
  if sjyc>0 then cedit4.value:=sjyc-trs else cedit4.value:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select def_tg,arr_ky,ttl from week52 where line=:x1 and date1=:x2';
    if label41.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    open;
    if fieldbyname('def_tg').value>0 then cedit2.value:=100.00-fieldbyname('ttl').value*100.00/fieldbyname('def_tg').value
    else cedit2.value:=0;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    if lbl850.caption='SPE' then
    commandtext:='select * from line_shjs_remarks1_sp where pline=:x1 and seq=:x2 and dt1=:x3'
    else commandtext:='select * from line_shjs_remarks1 where pline=:x1 and seq=:x2 and dt1=:x3';
    if label41.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else if label41.Caption='ACHI' then begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    open;
    chka01.Checked:=fieldbyname('a01').value;
    chka02.Checked:=fieldbyname('a02').value;
    chka03.Checked:=fieldbyname('a03').value;
    chka04.Checked:=fieldbyname('a04').value;
    edtat01.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('at01').value);
    at02.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('at02').value);
    edtat03.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('at03').value);
    edtat04.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('at04').value);
    chkb01.Checked:=fieldbyname('b01').value;
    chkb02.Checked:=fieldbyname('b02').value;
    chkb03.Checked:=fieldbyname('b03').value;
    b201.Checked:=fieldbyname('b201').value;
    b2t01.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t01').value);
    b2t02.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t02').value);
    b202.Checked:=fieldbyname('b202').value;
    b2t03.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t03').value);
    b2t04.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t04').value);
    b203.Checked:=fieldbyname('b203').value;
    b2t05.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t05').value);
    b2t06.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t06').value);
    b204.Checked:=fieldbyname('b204').value;
    b2t07.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t07').value);
    b2t08.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t08').value);
    b205.Checked:=fieldbyname('b205').value;
    b2t09.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t09').value);
    b2t10.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t10').value);
    b206.Checked:=fieldbyname('b206').value;
    b2t11.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t11').value);
    b2t12.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t12').value);
    b207.Checked:=fieldbyname('b207').value;
    b2t13.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t13').value);
    b2t14.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t14').value);
    b208.Checked:=fieldbyname('b208').value;
    b2t15.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t15').value);
    b2t16.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t16').value);
    b209.Checked:=fieldbyname('b209').value;
    b2t17.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t17').value);
    b2t18.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t18').value);
    b210.Checked:=fieldbyname('b210').value;
    b2t19.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t19').value);
    b2t20.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t20').value);
    b211.Checked:=fieldbyname('b211').value;
    b2t21.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t21').value);
    b212.Checked:=fieldbyname('b212').value;
    b213.Checked:=fieldbyname('b213').value;
    b214.Checked:=fieldbyname('b214').value;
    b215.Checked:=fieldbyname('b215').value;
    b2t22.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t22').value);
    b2t23.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t23').value);
    b216.Checked:=fieldbyname('b216').value;
    b2t24.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t24').value);
    b2t25.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t25').value);
    b217.Checked:=fieldbyname('b217').value;
    b2t26.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t26').value);
    b2t27.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t27').value);
    b218.Checked:=fieldbyname('b218').value;
    b2t28.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t28').value);
    b2t29.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b2t29').value);
    b219.Checked:=fieldbyname('b219').value;
    b220.Checked:=fieldbyname('b220').value;
    chkb04.Checked:=fieldbyname('b04').value;
    b401.Checked:=fieldbyname('b401').value;
    b4t01.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b4t01').value);
    b4t02.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b4t02').value);
    b402.Checked:=fieldbyname('b402').value;
    b4t03.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b4t03').value);
    b4t04.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('b4t04').value);
    b403.Checked:=fieldbyname('b403').value;
    b404.Checked:=fieldbyname('b404').value;
    b405.Checked:=fieldbyname('b405').value;
    b406.Checked:=fieldbyname('b406').value;
    b407.Checked:=fieldbyname('b407').value;
    c01.Checked:=fieldbyname('c01').value;
    c02.Checked:=fieldbyname('c02').value;
    dt01.Text:=fieldbyname('dt01').value;
  end;
  chkb02click(self);
  //b04click(self);
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select * from line_shjs_remarks_new1 where pline=:x1 and seq=:x2 and dt1=:x3 and spe=:x4';
    if label41.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
      if lbl850.caption='SPE' then
      params[3].asstring:='SPE' else params[3].asstring:='';
    end else if label41.Caption='ACHI' then begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
      if lbl850.caption='SPE' then
      params[3].asstring:='SPE' else params[3].asstring:='';
    end;
    open;
  end;
end;

procedure Tfrmgai_notepad_chn.Query4AfterOpen(DataSet: TDataSet);
begin
  query4.fieldbyname('rs').onchange:=query4field1change;
  query4.fieldbyname('js').onchange:=query4field2change;
end;

procedure Tfrmgai_notepad_chn.Query4AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update line_shjs_remarks_new1 set ';
  if not query4.fieldbyname('opt').isnull then
  str1:=str1+'opt='+query4.fieldbyname('opt').asstring+','
  else str1:=str1+'opt=null,';
  if not query4.fieldbyname('rs').isnull then
  str1:=str1+'rs='+query4.fieldbyname('rs').asstring+','
  else str1:=str1+'rs=null,';
  if not query4.fieldbyname('rsbl').isnull then
  str1:=str1+'rsbl='+query4.fieldbyname('rsbl').asstring+','
  else str1:=str1+'rsbl=null,';
  if not query4.fieldbyname('js').isnull then
  str1:=str1+'js='+query4.fieldbyname('js').asstring+','
  else str1:=str1+'js=null,';
  if not query4.fieldbyname('jsbl').isnull then
  str1:=str1+'jsbl='+query4.fieldbyname('jsbl').asstring+','
  else str1:=str1+'jsbl=null,';
  if not query4.fieldbyname('oth').isnull then
  str1:=str1+'oth='''+query4.fieldbyname('oth').asstring+''','
  else str1:=str1+'oth='''',';
  if not query4.fieldbyname('wip1').isnull then begin
    if query4.fieldbyname('wip1').value=true then
    str1:=str1+'wip1=1,' else str1:=str1+'wip1=0,';
  end else str1:=str1+'wip1=0,';
  if not query4.fieldbyname('cmp1').isnull then begin
    if query4.fieldbyname('cmp1').value=true then
    str1:=str1+'cmp1=1,' else str1:=str1+'cmp1=0,';
  end else str1:=str1+'wip1=0,';
  if not query4.fieldbyname('chk').isnull then begin
    if query4.fieldbyname('chk').value=true then
    str1:=str1+'chk=1 ' else str1:=str1+'chk=0 ';
  end else str1:=str1+'chk=0 ';
  str1:=str1+'where pline='''+query4.fieldbyname('pline').value+''' ';
  str1:=str1+'and seq='+query4.fieldbyname('seq').asstring+' ';
  str1:=str1+'and dt1='''+formatdatetime('yyyy/MM/dd',query4.fieldbyname('dt1').value)+''' ';
  str1:=str1+'and spe='''+query4.fieldbyname('spe').value+''' ';
  str1:=str1+'and rseq='+query4.fieldbyname('rseq').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmgai_notepad_chn.Query4Field1Change(Sender: TField);
var
  alrs,rs:double;
begin
  alrs:=0; rs:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select alrs from line_shjs where pline=:x1 and seq=:x2 and dt1=:x3 and flag=''0''';
    if label41.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else if label41.Caption='ACHI' then begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    open;
    if not fieldbyname('alrs').isnull then alrs:=fieldbyname('alrs').value;
  end;
  if not query4.fieldbyname('rs').isnull then rs:=query4.fieldbyname('rs').value;
  if alrs>0 then query4.fieldbyname('rsbl').value:=rs*100.00/alrs;
end;

procedure Tfrmgai_notepad_chn.Query4Field2Change(Sender: TField);
var
  csect_sp,js:double;
begin
  csect_sp:=0; js:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select csect_sp,csect from line_shjs where pline=:x1 and seq=:x2 and dt1=:x3 and flag=''0''';
    if label41.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else if label41.Caption='ACHI' then begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    open;
    if lbl850.caption='SPE' then begin
      if not fieldbyname('csect_sp').isnull then csect_sp:=fieldbyname('csect_sp').value;
    end else begin
      if not fieldbyname('csect').isnull then csect_sp:=fieldbyname('csect').value;
    end;
  end;
  if not query4.fieldbyname('js').isnull then js:=query4.fieldbyname('js').value;
  if csect_sp>0 then query4.fieldbyname('jsbl').value:=js*100.00/csect_sp;
end;

procedure Tfrmgai_notepad_chn.chkb02Click(Sender: TObject);
begin
  if chka01.checked then begin
    chkb02.checked:=false;
    chkb03.checked:=false;
    chkb04.checked:=false;
    chkb01.checked:=false;
    chka02.checked:=false;
  end else if chka02.checked then begin
    chkb02.checked:=false;
    chkb03.checked:=false;
    chkb04.checked:=false;
    chka01.checked:=false;
    chkb01.checked:=false;
  end else if chkb01.checked then begin
    chkb02.checked:=false;
    chkb03.checked:=false;
    chkb04.checked:=false;
    chka01.checked:=false;
    chka02.checked:=false;
  end else if chkb02.checked then begin
    chkb01.checked:=false;
    chkb03.checked:=false;
    chkb04.checked:=false;
    chka01.checked:=false;
    chka02.checked:=false;
  end else if chkb03.checked then begin
    chkb01.checked:=false;
    chkb02.checked:=false;
    chkb04.checked:=false;
    chka01.checked:=false;
    chka02.checked:=false;
  end else if chkb04.checked then begin
    chkb01.checked:=false;
    chkb02.checked:=false;
    chkb03.checked:=false;
    chka01.checked:=false;
    chka02.checked:=false;
  end;
  {
  if (b01.Checked) or (b02.Checked) or (b03.Checked) or (b04.Checked) then begin
    b201.Enabled:=true; b2t01.Enabled:=true; b2t02.Enabled:=true;
    b202.Enabled:=true; b2t03.Enabled:=true; b2t04.Enabled:=true;
    b203.Enabled:=true; b2t05.Enabled:=true; b2t06.Enabled:=true;
    b204.Enabled:=true; b2t07.Enabled:=true; b2t08.Enabled:=true;
    b205.Enabled:=true; b2t09.Enabled:=true; b2t10.Enabled:=true;
    b206.Enabled:=true; b2t11.Enabled:=true; b2t12.Enabled:=true;
    b207.Enabled:=true; b2t13.Enabled:=true; b2t14.Enabled:=true;
    b208.Enabled:=true; b2t15.Enabled:=true; b2t16.Enabled:=true;
    b209.Enabled:=true; b2t17.Enabled:=true; b2t18.Enabled:=true;
    b210.Enabled:=true; b2t19.Enabled:=true; b2t20.Enabled:=true;
    b211.Enabled:=true; b2t21.Enabled:=true;
    b212.Enabled:=true; b213.Enabled:=true; b214.Enabled:=true;
    b215.Enabled:=true; b2t22.Enabled:=true; b2t23.Enabled:=true;
    b216.Enabled:=true; b2t24.Enabled:=true; b2t25.Enabled:=true;
    b217.Enabled:=true; b2t26.Enabled:=true; b2t27.Enabled:=true;
    b218.Enabled:=true; b2t28.Enabled:=true; b2t29.Enabled:=true;
    b219.Enabled:=true; b220.Enabled:=true;
    b401.Enabled:=true; b4t01.Enabled:=true; b4t02.Enabled:=true;
    b402.Enabled:=true; b4t03.Enabled:=true; b4t04.Enabled:=true;
    b403.Enabled:=true; b404.Enabled:=true; b405.Enabled:=true;
    b406.Enabled:=true; b407.Enabled:=true;
  end else begin
    b201.Enabled:=false; b2t01.Enabled:=false; b2t02.Enabled:=false;
    b202.Enabled:=false; b2t03.Enabled:=false; b2t04.Enabled:=false;
    b203.Enabled:=false; b2t05.Enabled:=false; b2t06.Enabled:=false;
    b204.Enabled:=false; b2t07.Enabled:=false; b2t08.Enabled:=false;
    b205.Enabled:=false; b2t09.Enabled:=false; b2t10.Enabled:=false;
    b206.Enabled:=false; b2t11.Enabled:=false; b2t12.Enabled:=false;
    b207.Enabled:=false; b2t13.Enabled:=false; b2t14.Enabled:=false;
    b208.Enabled:=false; b2t15.Enabled:=false; b2t16.Enabled:=false;
    b209.Enabled:=false; b2t17.Enabled:=false; b2t18.Enabled:=false;
    b210.Enabled:=false; b2t19.Enabled:=false; b2t20.Enabled:=false;
    b211.Enabled:=false; b2t21.Enabled:=false;
    b212.Enabled:=false; b213.Enabled:=false; b214.Enabled:=false;
    b215.Enabled:=false; b2t22.Enabled:=false; b2t23.Enabled:=false;
    b216.Enabled:=false; b2t24.Enabled:=false; b2t25.Enabled:=false;
    b217.Enabled:=false; b2t26.Enabled:=false; b2t27.Enabled:=false;
    b218.Enabled:=false; b2t28.Enabled:=false; b2t29.Enabled:=false;
    b219.Enabled:=false; b220.Enabled:=false;
    b401.Enabled:=false; b4t01.Enabled:=false; b4t02.Enabled:=false;
    b402.Enabled:=false; b4t03.Enabled:=false; b4t04.Enabled:=false;
    b403.Enabled:=false; b404.Enabled:=false; b405.Enabled:=false;
    b406.Enabled:=false; b407.Enabled:=false;
  end;
  }
end;

procedure Tfrmgai_notepad_chn.BitBtn1Click(Sender: TObject);
var
  s1:string;
  str1:string;
begin
    if lbl850.caption='SPE' then
      str1:='update line_shjs_remarks1_sp set '
    else str1:='update line_shjs_remarks1 set ';
    if chka01.checked=true then str1:=str1+'a01=1,'
    else str1:=str1+'a01=0,';
    if chka02.checked=true then str1:=str1+'a02=1,'
    else str1:=str1+'a02=0,';
    if chka03.checked=true then str1:=str1+'a03=1,'
    else str1:=str1+'a03=0,';
    if chka04.checked=true then str1:=str1+'a04=1,'
    else str1:=str1+'a04=0,';
    if edtat01.text>'' then str1:=str1+'at01='+edtat01.text+','
    else str1:=str1+'at01=0,';
    if at02.text>'' then str1:=str1+'at02='+at02.text+','
    else str1:=str1+'at02=0,';
    if edtat03.text>'' then str1:=str1+'at03='+edtat03.text+','
    else str1:=str1+'at03=0,';
    if edtat04.text>'' then str1:=str1+'at04='+edtat04.text+','
    else str1:=str1+'at04=0,';
    if chkb01.checked=true then str1:=str1+'b01=1,'
    else str1:=str1+'b01=0,';
    if chkb02.checked=true then str1:=str1+'b02=1,'
    else str1:=str1+'b02=0,';
    if chkb03.checked=true then str1:=str1+'b03=1,'
    else str1:=str1+'b03=0,';
    if b201.checked=true then str1:=str1+'b201=1,'
    else str1:=str1+'b201=0,';
    if b202.checked=true then str1:=str1+'b202=1,'
    else str1:=str1+'b202=0,';
    if b203.checked=true then str1:=str1+'b203=1,'
    else str1:=str1+'b203=0,';
    if b204.checked=true then str1:=str1+'b204=1,'
    else str1:=str1+'b204=0,';
    if b205.checked=true then str1:=str1+'b205=1,'
    else str1:=str1+'b205=0,';
    if b206.checked=true then str1:=str1+'b206=1,'
    else str1:=str1+'b206=0,';
    if b207.checked=true then str1:=str1+'b207=1,'
    else str1:=str1+'b207=0,';
    if b208.checked=true then str1:=str1+'b208=1,'
    else str1:=str1+'b208=0,';
    if b209.checked=true then str1:=str1+'b209=1,'
    else str1:=str1+'b209=0,';
    if b210.checked=true then str1:=str1+'b210=1,'
    else str1:=str1+'b210=0,';
    if b211.checked=true then str1:=str1+'b211=1,'
    else str1:=str1+'b211=0,';
    if b212.checked=true then str1:=str1+'b212=1,'
    else str1:=str1+'b212=0,';
    if b213.checked=true then str1:=str1+'b213=1,'
    else str1:=str1+'b213=0,';
    if b214.checked=true then str1:=str1+'b214=1,'
    else str1:=str1+'b214=0,';
    if b215.checked=true then str1:=str1+'b215=1,'
    else str1:=str1+'b215=0,';
    if b216.checked=true then str1:=str1+'b216=1,'
    else str1:=str1+'b216=0,';
    if b217.checked=true then str1:=str1+'b217=1,'
    else str1:=str1+'b217=0,';
    if b218.checked=true then str1:=str1+'b218=1,'
    else str1:=str1+'b218=0,';
    if b219.checked=true then str1:=str1+'b219=1,'
    else str1:=str1+'b219=0,';
    if b220.checked=true then str1:=str1+'b220=1,'
    else str1:=str1+'b220=0,';
    if b2t01.text>'' then str1:=str1+'b2t01='+b2t01.text+','
    else str1:=str1+'b2t01=0,';
    if b2t02.text>'' then str1:=str1+'b2t02='+b2t02.text+','
    else str1:=str1+'b2t02=0,';
    if b2t03.text>'' then str1:=str1+'b2t03='+b2t03.text+','
    else str1:=str1+'b2t03=0,';
    if b2t04.text>'' then str1:=str1+'b2t04='+b2t04.text+','
    else str1:=str1+'b2t04=0,';
    if b2t05.text>'' then str1:=str1+'b2t05='+b2t05.text+','
    else str1:=str1+'b2t05=0,';
    if b2t06.text>'' then str1:=str1+'b2t06='+b2t06.text+','
    else str1:=str1+'b2t06=0,';
    if b2t07.text>'' then str1:=str1+'b2t07='+b2t07.text+','
    else str1:=str1+'b2t07=0,';
    if b2t08.text>'' then str1:=str1+'b2t08='+b2t08.text+','
    else str1:=str1+'b2t08=0,';
    if b2t09.text>'' then str1:=str1+'b2t09='+b2t09.text+','
    else str1:=str1+'b2t09=0,';
    if b2t10.text>'' then str1:=str1+'b2t10='+b2t10.text+','
    else str1:=str1+'b2t10=0,';
    if b2t11.text>'' then str1:=str1+'b2t11='+b2t11.text+','
    else str1:=str1+'b2t11=0,';
    if b2t12.text>'' then str1:=str1+'b2t12='+b2t12.text+','
    else str1:=str1+'b2t12=0,';
    if b2t13.text>'' then str1:=str1+'b2t13='+b2t13.text+','
    else str1:=str1+'b2t13=0,';
    if b2t14.text>'' then str1:=str1+'b2t14='+b2t14.text+','
    else str1:=str1+'b2t14=0,';
    if b2t15.text>'' then str1:=str1+'b2t15='+b2t15.text+','
    else str1:=str1+'b2t15=0,';
    if b2t16.text>'' then str1:=str1+'b2t16='+b2t16.text+','
    else str1:=str1+'b2t16=0,';
    if b2t17.text>'' then str1:=str1+'b2t17='+b2t17.text+','
    else str1:=str1+'b2t17=0,';
    if b2t18.text>'' then str1:=str1+'b2t18='+b2t18.text+','
    else str1:=str1+'b2t18=0,';
    if b2t19.text>'' then str1:=str1+'b2t19='+b2t19.text+','
    else str1:=str1+'b2t19=0,';
    if b2t20.text>'' then str1:=str1+'b2t20='+b2t20.text+','
    else str1:=str1+'b2t20=0,';
    if b2t21.text>'' then str1:=str1+'b2t21='+b2t21.text+','
    else str1:=str1+'b2t21=0,';
    if b2t22.text>'' then str1:=str1+'b2t22='+b2t22.text+','
    else str1:=str1+'b2t22=0,';
    if b2t23.text>'' then str1:=str1+'b2t23='+b2t23.text+','
    else str1:=str1+'b2t23=0,';
    if b2t24.text>'' then str1:=str1+'b2t24='+b2t24.text+','
    else str1:=str1+'b2t24=0,';
    if b2t25.text>'' then str1:=str1+'b2t25='+b2t25.text+','
    else str1:=str1+'b2t25=0,';
    if b2t26.text>'' then str1:=str1+'b2t26='+b2t26.text+','
    else str1:=str1+'b2t26=0,';
    if b2t27.text>'' then str1:=str1+'b2t27='+b2t27.text+','
    else str1:=str1+'b2t27=0,';
    if b2t28.text>'' then str1:=str1+'b2t28='+b2t28.text+','
    else str1:=str1+'b2t28=0,';
    if b2t29.text>'' then str1:=str1+'b2t29='+b2t29.text+','
    else str1:=str1+'b2t29=0,';
    if chkb04.checked=true then str1:=str1+'b04=1,'
    else str1:=str1+'b04=0,';
    if b401.checked=true then str1:=str1+'b401=1,'
    else str1:=str1+'b401=0,';
    if b402.checked=true then str1:=str1+'b402=1,'
    else str1:=str1+'b402=0,';
    if b403.checked=true then str1:=str1+'b403=1,'
    else str1:=str1+'b403=0,';
    if b404.checked=true then str1:=str1+'b404=1,'
    else str1:=str1+'b404=0,';
    if b405.checked=true then str1:=str1+'b405=1,'
    else str1:=str1+'b405=0,';
    if b406.checked=true then str1:=str1+'b406=1,'
    else str1:=str1+'b406=0,';
    if b407.checked=true then str1:=str1+'b407=1,'
    else str1:=str1+'b407=0,';
    if b4t01.text>'' then str1:=str1+'b4t01='+b4t01.text+','
    else str1:=str1+'b4t01=0,';
    if b4t02.text>'' then str1:=str1+'b4t02='+b4t02.text+','
    else str1:=str1+'b4t02=0,';
    if b4t03.text>'' then str1:=str1+'b4t03='+b4t03.text+','
    else str1:=str1+'b4t03=0,';
    if b4t04.text>'' then str1:=str1+'b4t04='+b4t04.text+','
    else str1:=str1+'b4t04=0,';
    if c01.checked=true then str1:=str1+'c01=1,'
    else str1:=str1+'c01=0,';
    if c02.checked=true then str1:=str1+'c02=1,'
    else str1:=str1+'c02=0,';
    str1:=str1+'dt01='''+dt01.Text+''' ';
    if label41.Caption='ZKTD' then begin
      str1:=str1+'where pline='''+frmzktd.Query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+frmzktd.Query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and dt1='''+formatdatetime('yyyy-MM-dd',frmzktd.Query1.fieldbyname('dt1').value)+'''';
    end else if label41.Caption='ACHI' then begin
      str1:=str1+'where pline='''+frmachieving.Query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+frmachieving.Query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and dt1='''+formatdatetime('yyyy-MM-dd',frmachieving.Query1.fieldbyname('dt1').value)+'''';
    end;
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  if query4.state=dsedit then query4.post;

  s1:='';
  //if a01.Checked then s1:=s1+'~'+a01.Caption+at01.Text+label1.Caption;
  //if a02.Checked then s1:=s1+'~'+a02.Caption+at02.Text+label2.Caption;
  //if a03.Checked then s1:=s1+'~'+a03.Caption+at03.Text+label3.Caption;
  //if a04.Checked then s1:=s1+'~'+a04.Caption+at04.Text+label4.Caption;
  if chka01.Checked then s1:=s1+'~'+chka01.Caption;
  if chka02.Checked then s1:=s1+'~'+chka02.Caption;

  if chkb01.Checked then s1:=s1+'~'+chkb01.Caption;
  if chkb02.Checked then s1:=s1+'~'+chkb02.Caption;
  if chkb04.Checked then s1:=s1+'~'+chkb04.Caption;
  if chkb03.Checked then s1:=s1+'~'+chkb03.Caption;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select * from line_shjs_remarks_new1 where pline=:x1 and seq=:x2 and dt1=:x3 and spe=:x4 and chk=1 order by yy_seq';
    if label41.Caption='ZKTD' then begin
      params[0].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
      if lbl850.caption='SPE' then
      params[3].asstring:='SPE' else params[3].asstring:='';
    end else if label41.Caption='ACHI' then begin
      params[0].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[1].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[2].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
      if lbl850.caption='SPE' then
      params[3].asstring:='SPE' else params[3].asstring:='';
    end;
    open;
    first;
    while not eof do begin
      if fieldbyname('yy_seq').value<60 then begin
        s1:=s1+' ~'+fieldbyname('fl_zb').value+fieldbyname('yy_zb').asstring+' '+fieldbyname('yy_desc').value+'  '+fieldbyname('yy_desc_e').value;
        //if not fieldbyname('oth').isnull then begin
        //  if fieldbyname('oth').value>'' then
        //  s1:=s1+'; '+fieldbyname('oth').value;
        //end;
      end else begin
        if not fieldbyname('oth').isnull then begin
          if fieldbyname('oth').value>'' then
          s1:=s1+' ~'+fieldbyname('fl_zb').value+fieldbyname('yy_zb').asstring+' '+fieldbyname('oth').value;
        end;
      end;
      if not fieldbyname('rs').isnull then begin
        if fieldbyname('rs').value>0 then
        s1:=s1+', '+formatfloat('#0',fieldbyname('rs').value)+'人(比率'+formatfloat('#0.00%',fieldbyname('rsbl').value)+')';
      end;
      if not fieldbyname('js').isnull then begin
        if fieldbyname('js').value>0 then
        s1:=s1+' '+formatfloat('#0.0',fieldbyname('js').value)+'節(比率'+formatfloat('#0.00%',fieldbyname('jsbl').value)+')';
      end;
      if fieldbyname('yy_seq').value<60 then begin
        if not fieldbyname('oth').isnull then begin
          if fieldbyname('oth').value>'' then
          s1:=s1+'; 補充: '+fieldbyname('oth').value;
        end;
      end;
      application.processmessages;
      next
    end;
  end;
  {
  if b201.Checked then s1:=s1+'~'+b201.Caption+b2t01.Text+label6.Caption+b2t02.Text+label7.Caption;
  if b202.Checked then s1:=s1+'~'+b202.Caption+b2t03.Text+label6.Caption+b2t04.Text+label7.Caption;
  if b203.Checked then s1:=s1+'~'+b203.Caption+b2t05.Text+label6.Caption+b2t06.Text+label7.Caption;
  if b204.Checked then s1:=s1+'~'+b204.Caption+b2t07.Text+label6.Caption+b2t08.Text+label7.Caption;
  if b205.Checked then s1:=s1+'~'+b205.Caption+b2t09.Text+label6.Caption+b2t10.Text+label7.Caption;
  if b206.Checked then s1:=s1+'~'+b206.Caption+b2t11.Text+label6.Caption+b2t12.Text+label7.Caption;
  if b207.Checked then s1:=s1+'~'+b207.Caption+b2t13.Text+label6.Caption+b2t14.Text+label7.Caption;
  if b208.Checked then s1:=s1+'~'+b208.Caption+b2t15.Text+label6.Caption+b2t16.Text+label7.Caption;
  if b209.Checked then s1:=s1+'~'+b209.Caption+b2t17.Text+label6.Caption+b2t18.Text+label7.Caption;
  if b210.Checked then s1:=s1+'~'+b210.Caption+b2t19.Text+label6.Caption+b2t20.Text+label7.Caption;
  if b211.Checked then s1:=s1+'~'+b211.Caption+b2t21.Text+label6.Caption;
  if b212.Checked then s1:=s1+'~'+b212.Caption;
  if b213.Checked then s1:=s1+'~'+b213.Caption;
  if b214.Checked then s1:=s1+'~'+b214.Caption;
  if b215.Checked then s1:=s1+'~'+b215.Caption+b2t22.Text+label27.Caption+b2t23.Text+label28.Caption;
  if b216.Checked then s1:=s1+'~'+b216.Caption+b2t24.Text+label27.Caption+b2t25.Text+label28.Caption;
  if b217.Checked then s1:=s1+'~'+b217.Caption+b2t26.Text+label27.Caption+b2t27.Text+label28.Caption;
  if b218.Checked then s1:=s1+'~'+b218.Caption+b2t28.Text+label28.Caption+b2t29.Text+label28.Caption;
  if b219.Checked then s1:=s1+'~'+b219.Caption;
  if b220.Checked then s1:=s1+'~'+b220.Caption;
  if b401.Checked then s1:=s1+'~'+b401.Caption+b4t01.Text+label6.Caption+b4t02.Text+label7.Caption;
  if b402.Checked then s1:=s1+'~'+b402.Caption+b4t03.Text+label6.Caption+b4t04.Text+label7.Caption;
  if b403.Checked then s1:=s1+'~'+b403.Caption;
  if b404.Checked then s1:=s1+'~'+b404.Caption;
  if b405.Checked then s1:=s1+'~'+b405.Caption;
  if b406.Checked then s1:=s1+'~'+b406.Caption;
  if b407.Checked then s1:=s1+'~'+b407.Caption;
  if c01.Checked then s1:=s1+'~'+c01.Caption;
  if c02.Checked then s1:=s1+'~'+c02.Caption;
  }
  if dt01.Text>'' then s1:=s1+' ~'+dt01.Text;
  s1:=trim(s1);
  if copy(s1,1,1)='~' then s1:=copy(s1,2,351);
  if copy(s1,1,2)=' ~' then s1:=copy(s1,3,352);
  if label41.caption='ZKTD' then begin
    //QN GAI
    with frmzktd.Query1 do begin
      edit;
      if lbl850.caption='SPE' then
      fieldbyname('marks_sp').value:=copy(trim(s1),1,350)
      else fieldbyname('marks').value:=copy(trim(s1),1,350);
      if chk1.checked then fieldbyname('marks_sp_wip').value:=true
      else fieldbyname('marks_sp_wip').value:=false;
      if chk2.checked then fieldbyname('marks_sp_cmp').value:=true
      else fieldbyname('marks_sp_cmp').value:=false;
      fieldbyname('muser').value:=edit1.text;
      post;
    end;
  end else begin
    //Fty GAI
    with frmachieving.Query1 do begin
      edit;
      if lbl850.caption='SPE' then
      fieldbyname('marks_sp').value:=copy(trim(s1),1,350)
      else fieldbyname('marks').value:=copy(trim(s1),1,350);
      if chk1.checked then fieldbyname('marks_sp_wip').value:=true
      else fieldbyname('marks_sp_wip').value:=false;
      if chk2.checked then fieldbyname('marks_sp_cmp').value:=true
      else fieldbyname('marks_sp_cmp').value:=false;
      fieldbyname('muser').value:=edit1.text;
      post;
    end;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='update line_shjs set marks=:x1 where pline=:x2 and seq=:x3 and dt1=:x4';
    params[0].asstring:=copy(trim(s1),1,250);
    if label41.Caption='ZKTD' then begin
      params[1].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[2].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[3].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else if label41.Caption='ACHI' then begin
      params[1].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[2].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[3].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    execute;
  end;
  }
  if lbl850.caption='SPE' then begin
    if label41.Caption='ZKTD' then
      str1:='update line_shjs set marks_sp='''+copy(trim(s1),1,350)+''' where pline='''+frmzktd.Query1.fieldbyname('pline').value+''' and seq='+frmzktd.Query1.fieldbyname('seq').asstring+' and dt1='''+formatdatetime('yyyy-MM-dd',frmzktd.Query1.fieldbyname('dt1').value)+''''
    else if label41.Caption='ACHI' then
      str1:='update line_shjs set marks_sp='''+copy(trim(s1),1,350)+''' where pline='''+frmachieving.Query1.fieldbyname('pline').value+''' and seq='+frmachieving.Query1.fieldbyname('seq').asstring+' and dt1='''+formatdatetime('yyyy-MM-dd',frmachieving.Query1.fieldbyname('dt1').value)+'''';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  end else begin
    if label41.Caption='ZKTD' then
      str1:='update line_shjs set marks='''+copy(trim(s1),1,350)+''' where pline='''+frmzktd.Query1.fieldbyname('pline').value+''' and seq='+frmzktd.Query1.fieldbyname('seq').asstring+' and dt1='''+formatdatetime('yyyy-MM-dd',frmzktd.Query1.fieldbyname('dt1').value)+''''
    else if label41.Caption='ACHI' then
      str1:='update line_shjs set marks='''+copy(trim(s1),1,350)+''' where pline='''+frmachieving.Query1.fieldbyname('pline').value+''' and seq='+frmachieving.Query1.fieldbyname('seq').asstring+' and dt1='''+formatdatetime('yyyy-MM-dd',frmachieving.Query1.fieldbyname('dt1').value)+'''';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  end;
end;

procedure Tfrmgai_notepad_chn.chk1Click(Sender: TObject);
begin
  if chk1.checked then chk2.checked:=false;
end;

procedure Tfrmgai_notepad_chn.chk2Click(Sender: TObject);
begin
  if chk2.checked then chk1.checked:=false;
end;

function Tfrmgai_notepad_chn.cvtfl_zb(const s1: string): integer;
begin
  if pos('.',s1)>0 then result:=strtoint(formatfloat('#0',strtofloat(s1)*10))
  else result:=strtoint(s1);
end;

procedure Tfrmgai_notepad_chn.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (cvtfl_zb(query4.fieldbyname('fl_zb').value) mod 2 =0) then begin
    dbgrideh1.canvas.brush.color:=$00D9EEEE;
    dbgrideh1.defaultdrawcolumncell(Rect,DataCol,Column,State);
  end;
end;

end.
