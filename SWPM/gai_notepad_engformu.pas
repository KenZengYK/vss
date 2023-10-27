unit gai_notepad_engformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmgai_notepad_eng = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    a01: TCheckBox;
    at01: TEdit;
    a02: TCheckBox;
    a03: TCheckBox;
    at03: TEdit;
    a04: TCheckBox;
    at04: TEdit;
    at02: TComboBox;
    Bevel2: TBevel;
    Label5: TLabel;
    b01: TCheckBox;
    b02: TCheckBox;
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
    b03: TCheckBox;
    b04: TCheckBox;
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
    dt01: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1: TClientDataSet;
    Label41: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure b02Click(Sender: TObject);
    procedure b04Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgai_notepad_eng: Tfrmgai_notepad_eng;

implementation

uses mainformu, zktdformu, achievingformu;

{$R *.dfm}

procedure Tfrmgai_notepad_eng.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmgai_notepad_eng:=nil;
end;

procedure Tfrmgai_notepad_eng.FormShow(Sender: TObject);
begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select * from line_shjs_remarks1 where pline=:x1 and seq=:x2 and dt1=:x3';
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
      a01.Checked:=fieldbyname('a01').value;
      a02.Checked:=fieldbyname('a02').value;
      a03.Checked:=fieldbyname('a03').value;
      a04.Checked:=fieldbyname('a04').value;
      at01.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('at01').value);
      at02.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('at02').value);
      at03.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('at03').value);
      at04.Text:=formatfloat('0.00;-0.00;''''',fieldbyname('at04').value);
      b01.Checked:=fieldbyname('b01').value;
      b02.Checked:=fieldbyname('b02').value;
      b03.Checked:=fieldbyname('b03').value;
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
      b04.Checked:=fieldbyname('b04').value;
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
    b02click(self);
    b04click(self);
end;

procedure Tfrmgai_notepad_eng.b02Click(Sender: TObject);
begin
  if (b02.Checked) or (b03.Checked) then begin
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
  end;
end;

procedure Tfrmgai_notepad_eng.b04Click(Sender: TObject);
begin
  if b04.checked then begin
    b401.Enabled:=true; b4t01.Enabled:=true; b4t02.Enabled:=true;
    b402.Enabled:=true; b4t03.Enabled:=true; b4t04.Enabled:=true;
    b403.Enabled:=true; b404.Enabled:=true; b405.Enabled:=true;
    b406.Enabled:=true; b407.Enabled:=true;
  end else begin
    b401.Enabled:=false; b4t01.Enabled:=false; b4t02.Enabled:=false;
    b402.Enabled:=false; b4t03.Enabled:=false; b4t04.Enabled:=false;
    b403.Enabled:=false; b404.Enabled:=false; b405.Enabled:=false;
    b406.Enabled:=false; b407.Enabled:=false;
  end;
end;

procedure Tfrmgai_notepad_eng.BitBtn1Click(Sender: TObject);
var
  s1:string;
  str1:string;
begin
  {
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftboolean,'x1',ptinput);
    params.createparam(ftboolean,'x2',ptinput);
    params.createparam(ftboolean,'x3',ptinput);
    params.createparam(ftboolean,'x4',ptinput);
    params.createparam(ftfloat,'x5',ptinput);
    params.createparam(ftfloat,'x6',ptinput);
    params.createparam(ftfloat,'x7',ptinput);
    params.createparam(ftfloat,'x8',ptinput);
    params.createparam(ftboolean,'x9',ptinput);
    params.createparam(ftboolean,'x10',ptinput);
    params.createparam(ftboolean,'x11',ptinput);
    params.createparam(ftboolean,'x12',ptinput);
    params.createparam(ftboolean,'x13',ptinput);
    params.createparam(ftboolean,'x14',ptinput);
    params.createparam(ftboolean,'x15',ptinput);
    params.createparam(ftboolean,'x16',ptinput);
    params.createparam(ftboolean,'x17',ptinput);
    params.createparam(ftboolean,'x18',ptinput);
    params.createparam(ftboolean,'x19',ptinput);
    params.createparam(ftboolean,'x20',ptinput);
    params.createparam(ftboolean,'x21',ptinput);
    params.createparam(ftboolean,'x22',ptinput);
    params.createparam(ftboolean,'x23',ptinput);
    params.createparam(ftboolean,'x24',ptinput);
    params.createparam(ftboolean,'x25',ptinput);
    params.createparam(ftboolean,'x26',ptinput);
    params.createparam(ftboolean,'x27',ptinput);
    params.createparam(ftboolean,'x28',ptinput);
    params.createparam(ftboolean,'x29',ptinput);
    params.createparam(ftboolean,'x30',ptinput);
    params.createparam(ftboolean,'x31',ptinput);
    params.createparam(ftfloat,'x32',ptinput);
    params.createparam(ftfloat,'x33',ptinput);
    params.createparam(ftfloat,'x34',ptinput);
    params.createparam(ftfloat,'x35',ptinput);
    params.createparam(ftfloat,'x36',ptinput);
    params.createparam(ftfloat,'x37',ptinput);
    params.createparam(ftfloat,'x38',ptinput);
    params.createparam(ftfloat,'x39',ptinput);
    params.createparam(ftfloat,'x40',ptinput);
    params.createparam(ftfloat,'x41',ptinput);
    params.createparam(ftfloat,'x42',ptinput);
    params.createparam(ftfloat,'x43',ptinput);
    params.createparam(ftfloat,'x44',ptinput);
    params.createparam(ftfloat,'x45',ptinput);
    params.createparam(ftfloat,'x46',ptinput);
    params.createparam(ftfloat,'x47',ptinput);
    params.createparam(ftfloat,'x48',ptinput);
    params.createparam(ftfloat,'x49',ptinput);
    params.createparam(ftfloat,'x50',ptinput);
    params.createparam(ftfloat,'x51',ptinput);
    params.createparam(ftfloat,'x52',ptinput);
    params.createparam(ftfloat,'x53',ptinput);
    params.createparam(ftfloat,'x54',ptinput);
    params.createparam(ftfloat,'x55',ptinput);
    params.createparam(ftfloat,'x56',ptinput);
    params.createparam(ftfloat,'x57',ptinput);
    params.createparam(ftfloat,'x58',ptinput);
    params.createparam(ftfloat,'x59',ptinput);
    params.createparam(ftfloat,'x60',ptinput);
    params.createparam(ftboolean,'x61',ptinput);
    params.createparam(ftboolean,'x62',ptinput);
    params.createparam(ftboolean,'x63',ptinput);
    params.createparam(ftboolean,'x64',ptinput);
    params.createparam(ftboolean,'x65',ptinput);
    params.createparam(ftboolean,'x66',ptinput);
    params.createparam(ftboolean,'x67',ptinput);
    params.createparam(ftboolean,'x68',ptinput);
    params.createparam(ftfloat,'x69',ptinput);
    params.createparam(ftfloat,'x60',ptinput);
    params.createparam(ftfloat,'x71',ptinput);
    params.createparam(ftfloat,'x72',ptinput);
    params.createparam(ftboolean,'x73',ptinput);
    params.createparam(ftboolean,'x74',ptinput);
    params.createparam(ftstring,'x75',ptinput);
    params.createparam(ftstring,'x76',ptinput);
    params.createparam(ftinteger,'x77',ptinput);
    params.createparam(ftdate,'x78',ptinput);
    commandtext:='update line_shjs_remarks1 set a01=:x1,a02=:x2,a03=:x3,a04=:x4,at01=:x5,at02=:x6,at03=:x7,at04=:x8,'
                +'b01=:x9,b02=:x10,b03=:x11,b201=:x12,b202=:x13,b203=:x14,b204=:x15,b205=:x16,b206=:x17,b207=:x18,'
                +'b208=:x19,b209=:x20,b210=:x21,b211=:x22,b212=:x23,b213=:x24,b214=:x25,b215=:x26,b216=:x27,b217=:x28,'
                +'b218=:x29,b219=:x30,b220=:x31,b2t01=:x32,b2t02=:x33,b2t03=:x34,b2t04=:x35,b2t05=:x36,b2t06=:x37,'
                +'b2t07=:x38,b2t08=:x39,b2t09=:x40,b2t10=:x41,b2t11=:x42,b2t12=:x43,b2t13=:x44,b2t14=:x45,b2t15=:x46,'
                +'b2t16=:x47,b2t17=:x48,b2t18=:x49,b2t19=:x50,b2t20=:x51,b2t21=:x52,b2t22=:x53,b2t23=:x54,b2t24=:x55,'
                +'b2t25=:x56,b2t26=:x57,b2t27=:x58,b2t28=:x59,b2t29=:x60,b04=:x61,b401=:x62,b402=:x63,b403=:x64,'
                +'b404=:x65,b405=:x66,b406=:x67,b407=:x68,b4t01=:x69,b4t02=:x70,b4t03=:x71,b4t04=:x72,c01=:x73,'
                +'c02=:x74,dt01=:x75 where pline=:x76 and seq=:x77 and dt1=:x78';
    params[0].asboolean:=a01.Checked;
    params[1].asboolean:=a02.Checked;
    params[2].asboolean:=a03.Checked;
    params[3].asboolean:=a04.Checked;
    if at01.text>'' then params[4].AsFloat:=strtofloat(at01.text)
    else params[4].asfloat:=0;
    if at02.Text>'' then params[5].AsFloat:=strtofloat(at02.text)
    else params[5].asfloat:=0;
    if at03.Text>'' then params[6].asfloat:=strtofloat(at03.text)
    else params[6].asfloat:=0;
    if at04.text>'' then params[7].asfloat:=strtofloat(at04.text)
    else params[7].asfloat:=0;
    params[8].asboolean:=b01.Checked;
    params[9].asboolean:=b02.Checked;
    params[10].asboolean:=b03.Checked;
    params[11].asboolean:=b201.Checked;
    params[12].asboolean:=b202.Checked;
    params[13].asboolean:=b203.Checked;
    params[14].asboolean:=b204.Checked;
    params[15].asboolean:=b205.Checked;
    params[16].asboolean:=b206.Checked;
    params[17].asboolean:=b207.Checked;
    params[18].asboolean:=b208.Checked;
    params[19].asboolean:=b209.Checked;
    params[20].asboolean:=b210.Checked;
    params[21].asboolean:=b211.Checked;
    params[22].asboolean:=b212.Checked;
    params[23].asboolean:=b213.Checked;
    params[24].asboolean:=b214.Checked;
    params[25].asboolean:=b215.Checked;
    params[26].asboolean:=b216.Checked;
    params[27].asboolean:=b217.Checked;
    params[28].asboolean:=b218.Checked;
    params[29].asboolean:=b219.Checked;
    params[30].asboolean:=b220.Checked;
    if b2t01.text>'' then params[31].AsFloat:=strtofloat(b2t01.text)
    else params[31].asfloat:=0;
    if b2t02.text>'' then params[32].AsFloat:=strtofloat(b2t02.text)
    else params[32].asfloat:=0;
    if b2t03.text>'' then params[33].AsFloat:=strtofloat(b2t03.text)
    else params[33].asfloat:=0;
    if b2t04.text>'' then params[34].AsFloat:=strtofloat(b2t04.text)
    else params[34].asfloat:=0;
    if b2t05.text>'' then params[35].AsFloat:=strtofloat(b2t05.text)
    else params[35].asfloat:=0;
    if b2t06.text>'' then params[36].AsFloat:=strtofloat(b2t06.text)
    else params[36].asfloat:=0;
    if b2t07.text>'' then params[37].AsFloat:=strtofloat(b2t07.text)
    else params[37].asfloat:=0;
    if b2t08.text>'' then params[38].AsFloat:=strtofloat(b2t08.text)
    else params[38].asfloat:=0;
    if b2t09.text>'' then params[39].AsFloat:=strtofloat(b2t09.text)
    else params[39].asfloat:=0;
    if b2t10.text>'' then params[40].AsFloat:=strtofloat(b2t10.text)
    else params[40].asfloat:=0;
    if b2t11.text>'' then params[41].AsFloat:=strtofloat(b2t11.text)
    else params[41].asfloat:=0;
    if b2t12.text>'' then params[42].AsFloat:=strtofloat(b2t12.text)
    else params[42].asfloat:=0;
    if b2t13.text>'' then params[43].AsFloat:=strtofloat(b2t13.text)
    else params[43].asfloat:=0;
    if b2t14.text>'' then params[44].AsFloat:=strtofloat(b2t14.text)
    else params[44].asfloat:=0;
    if b2t15.text>'' then params[45].AsFloat:=strtofloat(b2t15.text)
    else params[45].asfloat:=0;
    if b2t16.text>'' then params[46].AsFloat:=strtofloat(b2t16.text)
    else params[46].asfloat:=0;
    if b2t17.text>'' then params[47].AsFloat:=strtofloat(b2t17.text)
    else params[47].asfloat:=0;
    if b2t18.text>'' then params[48].AsFloat:=strtofloat(b2t18.text)
    else params[48].asfloat:=0;
    if b2t19.text>'' then params[49].AsFloat:=strtofloat(b2t19.text)
    else params[49].asfloat:=0;
    if b2t20.text>'' then params[50].AsFloat:=strtofloat(b2t20.text)
    else params[50].asfloat:=0;
    if b2t21.text>'' then params[51].AsFloat:=strtofloat(b2t21.text)
    else params[51].asfloat:=0;
    if b2t22.text>'' then params[52].AsFloat:=strtofloat(b2t22.text)
    else params[52].asfloat:=0;
    if b2t23.text>'' then params[53].AsFloat:=strtofloat(b2t23.text)
    else params[53].asfloat:=0;
    if b2t24.text>'' then params[54].AsFloat:=strtofloat(b2t24.text)
    else params[54].asfloat:=0;
    if b2t25.text>'' then params[55].AsFloat:=strtofloat(b2t25.text)
    else params[55].asfloat:=0;
    if b2t26.text>'' then params[56].AsFloat:=strtofloat(b2t26.text)
    else params[56].asfloat:=0;
    if b2t27.text>'' then params[57].AsFloat:=strtofloat(b2t27.text)
    else params[57].asfloat:=0;
    if b2t28.text>'' then params[58].AsFloat:=strtofloat(b2t28.text)
    else params[58].asfloat:=0;
    if b2t29.text>'' then params[59].AsFloat:=strtofloat(b2t29.text)
    else params[59].asfloat:=0;
    params[60].asboolean:=b04.Checked;
    params[61].asboolean:=b401.Checked;
    params[62].asboolean:=b402.Checked;
    params[63].asboolean:=b403.Checked;
    params[64].asboolean:=b404.Checked;
    params[65].asboolean:=b405.Checked;
    params[66].asboolean:=b406.Checked;
    params[67].asboolean:=b407.Checked;
    if b4t01.text>'' then params[68].AsFloat:=strtofloat(b4t01.text)
    else params[68].asfloat:=0;
    if b4t02.text>'' then params[69].AsFloat:=strtofloat(b4t02.text)
    else params[69].asfloat:=0;
    if b4t03.text>'' then params[70].AsFloat:=strtofloat(b4t03.text)
    else params[70].asfloat:=0;
    if b4t04.text>'' then params[71].AsFloat:=strtofloat(b4t04.text)
    else params[71].asfloat:=0;
    params[72].asboolean:=c01.Checked;
    params[73].asboolean:=c02.Checked;
    params[74].asstring:=dt01.Text;
    if label41.Caption='ZKTD' then begin
      params[75].asstring:=frmzktd.Query1.fieldbyname('pline').value;
      params[76].asinteger:=frmzktd.Query1.fieldbyname('seq').value;
      params[77].asdate:=frmzktd.Query1.fieldbyname('dt1').value;
    end else if label41.Caption='ACHI' then begin
      params[75].asstring:=frmachieving.Query1.fieldbyname('pline').value;
      params[76].asinteger:=frmachieving.Query1.fieldbyname('seq').value;
      params[77].asdate:=frmachieving.Query1.fieldbyname('dt1').value;
    end;
    execute;
  end;
  }
    str1:='update line_shjs_remarks1 set ';
    if a01.checked=true then str1:=str1+'a01=1,'
    else str1:=str1+'a01=0,';
    if a02.checked=true then str1:=str1+'a02=1,'
    else str1:=str1+'a02=0,';
    if a03.checked=true then str1:=str1+'a03=1,'
    else str1:=str1+'a03=0,';
    if a04.checked=true then str1:=str1+'a04=1,'
    else str1:=str1+'a04=0,';
    if at01.text>'' then str1:=str1+'at01='+at01.text+','
    else str1:=str1+'at01=0,';
    if at02.text>'' then str1:=str1+'at02='+at02.text+','
    else str1:=str1+'at02=0,';
    if at03.text>'' then str1:=str1+'at03='+at03.text+','
    else str1:=str1+'at03=0,';
    if at04.text>'' then str1:=str1+'at04='+at04.text+','
    else str1:=str1+'at04=0,';
    if b01.checked=true then str1:=str1+'b01=1,'
    else str1:=str1+'b01=0,';
    if b02.checked=true then str1:=str1+'b02=1,'
    else str1:=str1+'b02=0,';
    if b03.checked=true then str1:=str1+'b03=1,'
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
    if b04.checked=true then str1:=str1+'b04=1,'
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

  s1:='';
  if a01.Checked then s1:=s1+'~'+a01.Caption+at01.Text+label1.Caption;
  if a02.Checked then s1:=s1+'~'+a02.Caption+at02.Text+label2.Caption;
  if a03.Checked then s1:=s1+'~'+a03.Caption+at03.Text+label3.Caption;
  if a04.Checked then s1:=s1+'~'+a04.Caption+at04.Text+label4.Caption;
  if b01.Checked then s1:=s1+'~Efficiency '+b01.Caption;
  if b02.Checked then s1:=s1+'~Efficiency '+b02.Caption;
  if b03.Checked then s1:=s1+'~'+b03.Caption;
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
  if b04.Checked then s1:=s1+'~Efficiency '+b04.Caption;
  if b401.Checked then s1:=s1+'~'+b401.Caption+b4t01.Text+label6.Caption+b4t02.Text+label7.Caption;
  if b402.Checked then s1:=s1+'~'+b402.Caption+b4t03.Text+label6.Caption+b4t04.Text+label7.Caption;
  if b403.Checked then s1:=s1+'~'+b403.Caption;
  if b404.Checked then s1:=s1+'~'+b404.Caption;
  if b405.Checked then s1:=s1+'~'+b405.Caption;
  if b406.Checked then s1:=s1+'~'+b406.Caption;
  if b407.Checked then s1:=s1+'~'+b407.Caption;
  if c01.Checked then s1:=s1+'~'+c01.Caption;
  if c02.Checked then s1:=s1+'~'+c02.Caption;
  if dt01.Text>'' then s1:=s1+'~'+dt01.Text;
  s1:=trim(s1);
  if copy(s1,1,1)='~' then s1:=copy(s1,2,251);
  if label41.caption='ZKTD' then begin
    //QN GAI
    with frmzktd.Query1 do begin
      edit;
      fieldbyname('marks').value:=copy(trim(s1),1,250);
      post;
    end;
  end else begin
    //Fty GAI
    with frmachieving.Query1 do begin
      edit;
      fieldbyname('marks').value:=copy(trim(s1),1,250);
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
  if label41.Caption='ZKTD' then
    str1:='update line_shjs set marks='''+copy(trim(s1),1,250)+''' where pline='''+frmzktd.Query1.fieldbyname('pline').value+''' and seq='+frmzktd.Query1.fieldbyname('seq').asstring+' and dt1='''+formatdatetime('yyyy-MM-dd',frmzktd.Query1.fieldbyname('dt1').value)+''''
  else if label41.Caption='ACHI' then
    str1:='update line_shjs set marks='''+copy(trim(s1),1,250)+''' where pline='''+frmachieving.Query1.fieldbyname('pline').value+''' and seq='+frmachieving.Query1.fieldbyname('seq').asstring+' and dt1='''+formatdatetime('yyyy-MM-dd',frmachieving.Query1.fieldbyname('dt1').value)+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

end.
 