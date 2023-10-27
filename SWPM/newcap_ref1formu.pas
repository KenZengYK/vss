unit newcap_ref1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, DB, DBClient, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, myChkBox, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppViewr, ppParameter, ppVar, ppStrtch, ppSubRpt;

type
  Tfrmnewcap_ref1 = class(TForm)
    xh1: TRadioButton;
    xh2: TRadioButton;
    xh3: TRadioButton;
    xh4: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DateEdit1: TDateEdit;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    Label14: TLabel;
    Label15: TLabel;
    xh5: TRadioButton;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel3: TppLabel;
    backdt001: TppLabel;
    chk001: TmyCheckBox;
    ppLabel4: TppLabel;
    lbl1001: TppLabel;
    lbl1002: TppLabel;
    chk002: TmyCheckBox;
    ppLabel5: TppLabel;
    lbl2001: TppLabel;
    lbl2002: TppLabel;
    chk003: TmyCheckBox;
    ppLabel6: TppLabel;
    lbl3001: TppLabel;
    lbl3002: TppLabel;
    chk004: TmyCheckBox;
    ppLabel9: TppLabel;
    lbl4001: TppLabel;
    lbl4002: TppLabel;
    chk005: TmyCheckBox;
    ppLabel7: TppLabel;
    lbl5001: TppLabel;
    lbl5002: TppLabel;
    BitBtn5: TBitBtn;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    myCheckBox1: TmyCheckBox;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    myCheckBox2: TmyCheckBox;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    myCheckBox3: TmyCheckBox;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    myCheckBox4: TmyCheckBox;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    myCheckBox5: TmyCheckBox;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine2: TppLine;
    ppFooterBand2: TppFooterBand;
    ppParameterList2: TppParameterList;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel30: TppLabel;
    backdt003: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLine18: TppLine;
    ppFooterBand3: TppFooterBand;
    ppParameterList3: TppParameterList;
    ppLabel10: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine43: TppLine;
    lblc001: TppLabel;
    lblc002: TppLabel;
    lblc003: TppLabel;
    lblc004: TppLabel;
    lblc005: TppLabel;
    lblc006: TppLabel;
    lblc007: TppLabel;
    lblc008: TppLabel;
    lblc009: TppLabel;
    lblc101: TppLabel;
    lblc102: TppLabel;
    lblc103: TppLabel;
    lblc104: TppLabel;
    lblc105: TppLabel;
    lblc106: TppLabel;
    lblc107: TppLabel;
    lblc108: TppLabel;
    lblc109: TppLabel;
    lblc201: TppLabel;
    lblc202: TppLabel;
    lblc203: TppLabel;
    lblc204: TppLabel;
    lblc205: TppLabel;
    lblc206: TppLabel;
    lblc207: TppLabel;
    lblc208: TppLabel;
    lblc209: TppLabel;
    lblcn001: TppLabel;
    lblcn002: TppLabel;
    lblcn003: TppLabel;
    lblcn004: TppLabel;
    lblcn005: TppLabel;
    lblcn006: TppLabel;
    lblcn007: TppLabel;
    lblcn008: TppLabel;
    lblcn009: TppLabel;
    lblcn101: TppLabel;
    lblcn102: TppLabel;
    lblcn103: TppLabel;
    lblcn104: TppLabel;
    lblcn105: TppLabel;
    lblcn106: TppLabel;
    lblcn107: TppLabel;
    lblcn108: TppLabel;
    lblcn109: TppLabel;
    lbllb3001: TppLabel;
    lbllb3002: TppLabel;
    lbllb3003: TppLabel;
    lbllb36001: TppLabel;
    lbllb36002: TppLabel;
    lbllb36003: TppLabel;
    lbllb6001: TppLabel;
    lbllb6002: TppLabel;
    lbllb6003: TppLabel;
    lblmn001: TppLabel;
    lbln001: TppLabel;
    lbln002: TppLabel;
    lbln003: TppLabel;
    lbln004: TppLabel;
    lbln005: TppLabel;
    lbln006: TppLabel;
    lbln007: TppLabel;
    lbln008: TppLabel;
    lbln009: TppLabel;
    lbln101: TppLabel;
    lbln102: TppLabel;
    lbln103: TppLabel;
    lbln104: TppLabel;
    lbln105: TppLabel;
    lbln106: TppLabel;
    lbln107: TppLabel;
    lbln108: TppLabel;
    lbln109: TppLabel;
    ppLabel11: TppLabel;
    ppLabel29: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel89: TppLabel;
    ppLabel97: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine3: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine4: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine44: TppLine;
    lblc0001: TppLabel;
    lblc0002: TppLabel;
    lblc0003: TppLabel;
    lblc0004: TppLabel;
    lblc0005: TppLabel;
    lblc0006: TppLabel;
    lblc1001: TppLabel;
    lblc1002: TppLabel;
    lblc1003: TppLabel;
    lblc1004: TppLabel;
    lblc1005: TppLabel;
    lblc1006: TppLabel;
    lblc2001: TppLabel;
    lblc2002: TppLabel;
    lblc2003: TppLabel;
    lblc2004: TppLabel;
    lblc2005: TppLabel;
    lblc2006: TppLabel;
    lblcn0001: TppLabel;
    lblcn0002: TppLabel;
    lblcn0003: TppLabel;
    lblcn0004: TppLabel;
    lblcn0005: TppLabel;
    lblcn0006: TppLabel;
    lblcn1001: TppLabel;
    lblcn1002: TppLabel;
    lblcn1003: TppLabel;
    lblcn1004: TppLabel;
    lblcn1005: TppLabel;
    lblcn1006: TppLabel;
    lbllb30001: TppLabel;
    lbllb30002: TppLabel;
    lbllb30003: TppLabel;
    lbllb360001: TppLabel;
    lbllb360002: TppLabel;
    lbllb360003: TppLabel;
    lbllb60001: TppLabel;
    lbllb60002: TppLabel;
    lbllb60003: TppLabel;
    lblmn0001: TppLabel;
    lbln0001: TppLabel;
    lbln0002: TppLabel;
    lbln0003: TppLabel;
    lbln0004: TppLabel;
    lbln0005: TppLabel;
    lbln0006: TppLabel;
    lbln1001: TppLabel;
    lbln1002: TppLabel;
    lbln1003: TppLabel;
    lbln1004: TppLabel;
    lbln1005: TppLabel;
    lbln1006: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine64: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape15: TppShape;
    ppShape17: TppShape;
    ppLabel69: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppShape14: TppShape;
    ppLine48: TppLine;
    ppLabel31: TppLabel;
    ppLine51: TppLine;
    ppLabel35: TppLabel;
    ppLine52: TppLine;
    ppLine56: TppLine;
    ppLabel36: TppLabel;
    ppLabel67: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppShape16: TppShape;
    ppLabel57: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure DateEdit1AcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_ref1: Tfrmnewcap_ref1;

implementation

uses mainformu, newcapformu, newcap_simftyformu, newcap_pastperfformu;

{$R *.dfm}

procedure Tfrmnewcap_ref1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_ref1:=nil;
end;

procedure Tfrmnewcap_ref1.BitBtn1Click(Sender: TObject);
var
  s,tplant:string;
  dt0,dt1:tdatetime;
  y,m,d:word;
  ext:string;
  str1:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if combobox1.text<>'KBT' then tplant:=combobox1.text else tplant:='KB';
  if (xh1.checked) or (xh2.checked) or (xh3.checked) or (xh4.checked) or (xh5.Checked) then begin
    dt0:=dateedit1.date;
    decodedate(dt0,y,m,d);
    if xh1.Checked then begin
      s:='12';
      dt1:=encodedate(y-1,m,d);
    end else if xh2.Checked then begin
      s:='9';
      if m>9 then dt1:=encodedate(y,m-9,d)
      else dt1:=encodedate(y-1,m+3,d);
    end else if xh3.Checked then begin
      s:='6';
      if m>6 then dt1:=encodedate(y,m-6,d)
      else dt1:=encodedate(y-1,m+6,d);
    end else if xh4.Checked then begin
      s:='3';
      if m>3 then dt1:=encodedate(y,m-3,d)
      else dt1:=encodedate(y-1,m+9,d);
    end else if xh5.Checked then begin
      s:='1';
      if m>1 then dt1:=encodedate(y,m-1,d)
      else dt1:=encodedate(y-1,m+11,d);
    end;
    {
    with query2 do begin
      close;
      params.clear;
      commandtext:='update tbl_cap_date set sel=0 where tplant='''+tplant+'''';
      execute;
      close;
    end;
    }
    str1:='update tbl_cap_date set sel=0 where tplant='''+tplant+'''';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select tplant from tbl_cap_date where tplant=:x1 and stdt=:x2 and m1=:x3';
      params[0].asstring:=tplant;
      params[1].asdate:=dateedit1.date;
      params[2].asinteger:=strtoint(s);
      open;
      if not fieldbyname('tplant').isnull then ext:='1' else ext:='0';
    end;
    if ext='1' then begin
      {
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='update tbl_cap_date set sel=1 where tplant=:x1 and stdt=:x2 and m1=:x3';
        params[0].asstring:=tplant;
        params[1].asdate:=dateedit1.date;
        params[2].asinteger:=strtoint(s);
        execute;
      end;
      }
      str1:='update tbl_cap_date set sel=1 where tplant='''+tplant+''' and stdt='''+formatdatetime('yyyy-MM-dd',dateedit1.Date)+''' and m1='+s;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_cap_updpastrecord_01(:x1)';
        params[0].asstring:=tplant;
        execute;
      end;
    end else begin
      with query2 do begin
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='insert into tbl_cap_date(stdt,m1,dt1,sel,tplant) values(:x1,:x2,:x3,1,:x4)';
        params[0].asdate:=dt0;
        params[1].asinteger:=strtoint(s);
        params[2].asdate:=dt1;
        params[3].asstring:=tplant;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_cap_updpastrecord(:x1)';
        params[0].asstring:=tplant;
        execute;
      end;
    end;
    //frmnewcap_simfty.DateEdit1.Date:=dateedit1.date;
    //frmnewcap_simfty.Edit1.text:=s;
  end;
  frmnewcap_ref1.close;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ref1.DateEdit1Change(Sender: TObject);
var
  y,m,d:word;
  dt0,dt1,dt2,dt3,dt4,dt5,mdt:tdatetime;
  tplant:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if combobox1.text<>'KBT' then tplant:=combobox1.text else tplant:='KB';
  if dayofweek(dateedit1.date)>1 then exit;
  dt0:=dateedit1.date;
  decodedate(dt0,y,m,d);
  dt1:=encodedate(y-1,m,d);
  if m>9 then dt2:=encodedate(y,m-9,d)
  else dt2:=encodedate(y-1,m+3,d);
  if m>6 then dt3:=encodedate(y,m-6,d)
  else dt3:=encodedate(y-1,m+6,d);
  if m>3 then dt4:=encodedate(y,m-3,d)
  else dt4:=encodedate(y-1,m+9,d);
  if m>1 then dt5:=encodedate(y,m-1,d)
  else dt5:=encodedate(y-1,m+11,d);
  Label1.Caption:='('+formatdatetime('yy/MM/dd',dt1)+' to '+formatdatetime('yy/MM/dd',dt0)+')';
  Label2.Caption:='('+formatdatetime('yy/MM/dd',dt2)+' to '+formatdatetime('yy/MM/dd',dt0)+')';
  Label3.Caption:='('+formatdatetime('yy/MM/dd',dt3)+' to '+formatdatetime('yy/MM/dd',dt0)+')';
  Label4.Caption:='('+formatdatetime('yy/MM/dd',dt4)+' to '+formatdatetime('yy/MM/dd',dt0)+')';
  Label14.Caption:='('+formatdatetime('yy/MM/dd',dt5)+' to '+formatdatetime('yy/MM/dd',dt0)+')';

  with query2 do begin
    close;
    params.clear;
    commandtext:='select min(dt1) as dt1 from view_cust_flag6_sah where tplant='''+tplant+'''';
    open;
    mdt:=fieldbyname('dt1').Value;
  end;

  label5.caption:='';
  if dt1>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      //params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:=tplant;//label10.caption;
      //params[1].asstring:=label12.caption;
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        //label5.caption:='SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%: '+formatfloat('0.00',fieldbyname('eff').value);
        if label5.Caption>'' then label5.caption:=label5.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else label5.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  label6.caption:='';
  if dt2>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      //params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:=tplant;//label10.caption;
      //params[1].asstring:=label12.caption;
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        //label6.caption:='SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%: '+formatfloat('0.00',fieldbyname('eff').value);
        if label6.Caption>'' then label6.caption:=label6.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else label6.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  label7.caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt3;
    open;
    first;
    while not eof do begin
      //label7.caption:='SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%: '+formatfloat('0.00',fieldbyname('eff').value);
      if label7.Caption>'' then label7.caption:=label7.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else label7.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
  end;
  label8.caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt4;
    open;
    first;
    while not eof do begin
      //label8.caption:='SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%: '+formatfloat('0.00',fieldbyname('eff').value);
      if label8.Caption>'' then label8.caption:=label8.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else label8.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
  end;
  label15.caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt5;
    open;
    first;
    while not eof do begin
      //label8.caption:='SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%: '+formatfloat('0.00',fieldbyname('eff').value);
      if label15.Caption>'' then label15.caption:=label15.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else label15.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff(:x1,:x2,:x3,:x4)';
    params[0].asstring:=label10.caption;
    params[1].asstring:=label12.caption;
    params[2].asdate:=dt0;
    params[3].asdate:=dt2;
    open;
    label6.caption:='SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%: '+formatfloat('0.00',fieldbyname('eff').value);
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff(:x1,:x2,:x3,:x4)';
    params[0].asstring:=label10.caption;
    params[1].asstring:=label12.caption;
    params[2].asdate:=dt0;
    params[3].asdate:=dt3;
    open;
    label7.caption:='SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%: '+formatfloat('0.00',fieldbyname('eff').value);
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff(:x1,:x2,:x3,:x4)';
    params[0].asstring:=label10.caption;
    params[1].asstring:=label12.caption;
    params[2].asdate:=dt0;
    params[3].asdate:=dt4;
    open;
    label8.caption:='SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%: '+formatfloat('0.00',fieldbyname('eff').value);
  end;
  }
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ref1.DateEdit1AcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  if dayofweek(ADate)>1 then Action:=false;
end;

procedure Tfrmnewcap_ref1.ComboBox1Change(Sender: TObject);
var
  tplant:string;
begin
  if combobox1.text<>'' then begin
    if combobox1.text<>'KBT' then tplant:=combobox1.text else tplant:='KB';
    with query2 do begin
      close;
      params.clear;
      commandtext:='select stdt,m1 from tbl_cap_date where tplant='''+tplant+''' and sel=1';
      open;
      if not fieldbyname('m1').isnull then begin
        if fieldbyname('m1').value=12 then xh1.Checked:=true
        else if fieldbyname('m1').value=9 then xh2.Checked:=true
        else if fieldbyname('m1').value=6 then xh3.Checked:=true
        else if fieldbyname('m1').value=3 then xh4.Checked:=true
        else if fieldbyname('m1').value=1 then xh5.Checked:=true;
      end;
      if not fieldbyname('stdt').isnull then dateedit1.date:=fieldbyname('stdt').value;
    end;
    dateedit1change(self);
  end;
end;

procedure Tfrmnewcap_ref1.BitBtn2Click(Sender: TObject);
var
  y,m,d:word;
  dt0,dt1,dt2,dt3,dt4,dt5,mdt:tdatetime;
  tplant:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if combobox1.text<>'KBT' then tplant:=combobox1.text else tplant:='KB';
  if dayofweek(dateedit1.date)>1 then exit;
  dt0:=dateedit1.date;
  decodedate(dt0,y,m,d);
  dt1:=encodedate(y-1,m,d);
  if m>9 then dt2:=encodedate(y,m-9,d)
  else dt2:=encodedate(y-1,m+3,d);
  if m>6 then dt3:=encodedate(y,m-6,d)
  else dt3:=encodedate(y-1,m+6,d);
  if m>3 then dt4:=encodedate(y,m-3,d)
  else dt4:=encodedate(y-1,m+9,d);
  if m>1 then dt5:=encodedate(y,m-1,d)
  else dt5:=encodedate(y-1,m+11,d);
  if frmnewcap_pastperf=nil then frmnewcap_pastperf:=tfrmnewcap_pastperf.Create(nil);
  frmnewcap_pastperf.Edit1.Text:=tplant;
  frmnewcap_pastperf.DateEdit1.Date:=dateedit1.Date;

  with query2 do begin
    close;
    params.clear;
    commandtext:='select min(dt1) as dt1 from view_cust_flag6_sah where tplant='''+tplant+'''';
    open;
    mdt:=fieldbyname('dt1').Value;
  end;

  if dt1>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      //params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:=tplant;//label10.caption;
      //params[1].asstring:=label12.caption;
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if frmnewcap_pastperf.lbln12.Caption>'' then frmnewcap_pastperf.lbln12.caption:=frmnewcap_pastperf.lbln12.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else frmnewcap_pastperf.lbln12.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      frmnewcap_pastperf.lbln12.caption:=frmnewcap_pastperf.lbln12.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
  end;
  if dt2>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      //params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:=tplant;//label10.caption;
      //params[1].asstring:=label12.caption;
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if frmnewcap_pastperf.lbln09.Caption>'' then frmnewcap_pastperf.lbln09.caption:=frmnewcap_pastperf.lbln09.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else frmnewcap_pastperf.lbln09.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      frmnewcap_pastperf.lbln09.caption:=frmnewcap_pastperf.lbln09.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt3;
    open;
    first;
    while not eof do begin
      if frmnewcap_pastperf.lbln06.Caption>'' then frmnewcap_pastperf.lbln06.caption:=frmnewcap_pastperf.lbln06.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else frmnewcap_pastperf.lbln06.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
    frmnewcap_pastperf.lbln06.caption:=frmnewcap_pastperf.lbln06.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt4;
    open;
    first;
    while not eof do begin
      if frmnewcap_pastperf.lbln03.Caption>'' then frmnewcap_pastperf.lbln03.caption:=frmnewcap_pastperf.lbln03.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else frmnewcap_pastperf.lbln03.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
    frmnewcap_pastperf.lbln03.caption:=frmnewcap_pastperf.lbln03.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt5;
    open;
    first;
    while not eof do begin
      if frmnewcap_pastperf.lbln01.Caption>'' then frmnewcap_pastperf.lbln01.caption:=frmnewcap_pastperf.lbln01.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else frmnewcap_pastperf.lbln01.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
    frmnewcap_pastperf.lbln01.caption:=frmnewcap_pastperf.lbln01.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
  end;
  if dt1>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      //params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:=tplant;//label10.caption;
      //params[1].asstring:=label12.caption;
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if frmnewcap_pastperf.lblc12.Caption>'' then frmnewcap_pastperf.lblc12.caption:=frmnewcap_pastperf.lblc12.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else frmnewcap_pastperf.lblc12.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      frmnewcap_pastperf.lblc12.caption:=frmnewcap_pastperf.lblc12.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
  end;
  if dt2>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      //params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:=tplant;//label10.caption;
      //params[1].asstring:=label12.caption;
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if frmnewcap_pastperf.lblc09.Caption>'' then frmnewcap_pastperf.lblc09.caption:=frmnewcap_pastperf.lblc09.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else frmnewcap_pastperf.lblc09.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      frmnewcap_pastperf.lblc09.caption:=frmnewcap_pastperf.lblc09.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt3;
    open;
    first;
    while not eof do begin
      if frmnewcap_pastperf.lblc06.Caption>'' then frmnewcap_pastperf.lblc06.caption:=frmnewcap_pastperf.lblc06.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else frmnewcap_pastperf.lblc06.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
    if not fieldbyname('tsah').isnull then
    frmnewcap_pastperf.lblc06.caption:=frmnewcap_pastperf.lblc06.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt4;
    open;
    first;
    while not eof do begin
      if frmnewcap_pastperf.lblc03.Caption>'' then frmnewcap_pastperf.lblc03.caption:=frmnewcap_pastperf.lblc03.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else frmnewcap_pastperf.lblc03.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
    if not fieldbyname('tsah').isnull then
    frmnewcap_pastperf.lblc03.caption:=frmnewcap_pastperf.lblc03.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt5;
    open;
    first;
    while not eof do begin
      if frmnewcap_pastperf.lblc01.Caption>'' then frmnewcap_pastperf.lblc01.caption:=frmnewcap_pastperf.lblc01.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else frmnewcap_pastperf.lblc01.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
    if not fieldbyname('tsah').isnull then
    frmnewcap_pastperf.lblc01.caption:=frmnewcap_pastperf.lblc01.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
  end;
  with query2 do begin
    if dt1>=mdt then begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:=tplant;
      params[1].asdate:=dt1;
      params[2].asdate:=dt0;
      open;
      frmnewcap_pastperf.lblc12.Caption:=frmnewcap_pastperf.lblc12.Caption+'   CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
    end;
    if dt2>=mdt then begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:=tplant;
      params[1].asdate:=dt2;
      params[2].asdate:=dt0;
      open;
      frmnewcap_pastperf.lblc09.Caption:=frmnewcap_pastperf.lblc09.Caption+'   CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/9.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
    end;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
    params[0].asstring:=tplant;
    params[1].asdate:=dt3;
    params[2].asdate:=dt0;
    open;
    frmnewcap_pastperf.lblc06.Caption:=frmnewcap_pastperf.lblc06.Caption+'   CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/6.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
    params[0].asstring:=tplant;
    params[1].asdate:=dt4;
    params[2].asdate:=dt0;
    open;
    frmnewcap_pastperf.lblc03.Caption:=frmnewcap_pastperf.lblc03.Caption+'   CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/3.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
    params[0].asstring:=tplant;
    params[1].asdate:=dt5;
    params[2].asdate:=dt0;
    open;
    frmnewcap_pastperf.lblc01.Caption:=frmnewcap_pastperf.lblc01.Caption+'   CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
  end;
  if dt1>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      //params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:=tplant;//label10.caption;
      //params[1].asstring:=label12.caption;
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if frmnewcap_pastperf.lblcn12.Caption>'' then frmnewcap_pastperf.lblcn12.caption:=frmnewcap_pastperf.lblcn12.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else frmnewcap_pastperf.lblcn12.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      frmnewcap_pastperf.lblcn12.caption:=frmnewcap_pastperf.lblcn12.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
  end;
  if dt2>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      //params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:=tplant;//label10.caption;
      //params[1].asstring:=label12.caption;
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if frmnewcap_pastperf.lblcn09.Caption>'' then frmnewcap_pastperf.lblcn09.caption:=frmnewcap_pastperf.lblcn09.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else frmnewcap_pastperf.lblcn09.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      frmnewcap_pastperf.lblcn09.caption:=frmnewcap_pastperf.lblcn09.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt3;
    open;
    first;
    while not eof do begin
      if frmnewcap_pastperf.lblcn06.Caption>'' then frmnewcap_pastperf.lblcn06.caption:=frmnewcap_pastperf.lblcn06.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else frmnewcap_pastperf.lblcn06.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
    frmnewcap_pastperf.lblcn06.caption:=frmnewcap_pastperf.lblcn06.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt4;
    open;
    first;
    while not eof do begin
      if frmnewcap_pastperf.lblcn03.Caption>'' then frmnewcap_pastperf.lblcn03.caption:=frmnewcap_pastperf.lblcn03.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else frmnewcap_pastperf.lblcn03.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
    frmnewcap_pastperf.lblcn03.caption:=frmnewcap_pastperf.lblcn03.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
    params[0].asstring:=tplant;//label10.caption;
    //params[1].asstring:=label12.caption;
    params[1].asdate:=dt0;
    params[2].asdate:=dt5;
    open;
    first;
    while not eof do begin
      if frmnewcap_pastperf.lblcn01.Caption>'' then frmnewcap_pastperf.lblcn01.caption:=frmnewcap_pastperf.lblcn01.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
      else frmnewcap_pastperf.lblcn01.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
      application.ProcessMessages;
      next;
    end;
    frmnewcap_pastperf.lblcn01.caption:=frmnewcap_pastperf.lblcn01.caption+' / W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
  end;
  if dt1>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
      params[0].asstring:=tplant;//label10.caption;
      params[1].asdate:=dt0;
      params[2].AsDate:=dt1;
      open;
      if not fieldbyname('x1').isnull then frmnewcap_pastperf.label26.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl/line ';
      if not fieldbyname('x2').isnull then frmnewcap_pastperf.label31.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl/line ';
      if fieldbyname('x1').value>0 then frmnewcap_pastperf.label36.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
      else frmnewcap_pastperf.label36.caption:='0.00%';
    end;
  end else begin
    frmnewcap_pastperf.label26.Caption:='';
    frmnewcap_pastperf.label31.Caption:='';
    frmnewcap_pastperf.label36.Caption:='';
  end;
  if dt2>=mdt then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
      params[0].asstring:=tplant;//label10.caption;
      params[1].asdate:=dt0;
      params[2].AsDate:=dt2;
      open;
      if not fieldbyname('x1').isnull then frmnewcap_pastperf.label27.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl/line ';
      if not fieldbyname('x2').isnull then frmnewcap_pastperf.label32.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl/line ';
      if fieldbyname('x1').value>0 then frmnewcap_pastperf.label37.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
      else frmnewcap_pastperf.label37.caption:='0.00%';
    end;
  end else begin
    frmnewcap_pastperf.label27.Caption:='';
    frmnewcap_pastperf.label32.Caption:='';
    frmnewcap_pastperf.label37.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
    params[0].asstring:=tplant;//label10.caption;
    params[1].asdate:=dt0;
    params[2].AsDate:=dt3;
    open;
    if not fieldbyname('x1').isnull then frmnewcap_pastperf.label28.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl/line ';
    if not fieldbyname('x2').isnull then frmnewcap_pastperf.label33.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl/line ';
    if fieldbyname('x1').value>0 then frmnewcap_pastperf.label38.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
    else frmnewcap_pastperf.label38.caption:='0.00%';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
    params[0].asstring:=tplant;//label10.caption;
    params[1].asdate:=dt0;
    params[2].AsDate:=dt4;
    open;
    if not fieldbyname('x1').isnull then frmnewcap_pastperf.label29.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl/line ';
    if not fieldbyname('x2').isnull then frmnewcap_pastperf.label34.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl/line ';
    if fieldbyname('x1').value>0 then frmnewcap_pastperf.label39.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
    else frmnewcap_pastperf.label39.caption:='0.00%';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
    params[0].asstring:=tplant;//label10.caption;
    params[1].asdate:=dt0;
    params[2].AsDate:=dt5;
    open;
    if not fieldbyname('x1').isnull then frmnewcap_pastperf.label30.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl/line ';
    if not fieldbyname('x2').isnull then frmnewcap_pastperf.label35.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl/line ';
    if fieldbyname('x1').value>0 then frmnewcap_pastperf.label40.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
    else frmnewcap_pastperf.label40.caption:='0.00%';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
    params[0].asstring:=tplant;//label10.caption;
    params[1].asdate:=dt0;
    if xh1.Checked then params[2].AsDate:=dt1
    else if xh2.Checked then params[2].asdate:=dt2
    else if xh3.Checked then params[2].asdate:=dt3
    else if xh4.Checked then params[2].asdate:=dt4
    else if xh5.Checked then params[2].asdate:=dt5;
    open;
    if not fieldbyname('x1').isnull then frmnewcap_pastperf.lblwf3.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl/line ';
    if not fieldbyname('x2').isnull then frmnewcap_pastperf.lblwf6.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl/line ';
    if fieldbyname('x1').value>0 then frmnewcap_pastperf.label24.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
    else frmnewcap_pastperf.label24.caption:='0.00%'; 
  end;
  if xh1.checked then frmnewcap_pastperf.Label25.Caption:='12 months: '
  else if xh2.Checked then frmnewcap_pastperf.label25.Caption:='9 months: '
  else if xh3.Checked then frmnewcap_pastperf.Label25.Caption:='6 months: '
  else if xh4.Checked then frmnewcap_pastperf.Label25.Caption:='3 months: '
  else if xh5.Checked then frmnewcap_pastperf.Label25.Caption:='1 month: ';

  frmnewcap_pastperf.Show;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ref1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmnewcap_ref1.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmnewcap_ref1.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmnewcap_ref1.BitBtn3Click(Sender: TObject);
begin
  if label14.Caption>'' then begin
    if combobox1.text='GG' then fty001.Caption:='GG (RX) '
    else fty001.Caption:=combobox1.text;
    backdt001.Caption:=formatdatetime('yyyy-MM-dd',dateedit1.Date);
    chk001.Checked:=xh1.Checked;
    chk002.Checked:=xh2.Checked;
    chk003.Checked:=xh3.Checked;
    chk004.Checked:=xh4.Checked;
    chk005.Checked:=xh5.Checked;
    lbl1001.Caption:=label1.Caption;
    lbl1002.Caption:=label5.Caption;
    lbl1002.Font.Color:=label5.Font.Color;
    lbl2001.Caption:=label2.Caption;
    lbl2002.Caption:=label6.Caption;
    lbl2002.Font.Color:=label6.Font.Color;
    lbl3001.Caption:=label3.Caption;
    lbl3002.Caption:=label7.Caption;
    lbl3002.Font.Color:=label7.Font.Color;
    lbl4001.Caption:=label4.Caption;
    lbl4002.Caption:=label8.Caption;
    lbl4002.Font.Color:=label8.Font.Color;
    lbl5001.Caption:=label14.Caption;
    lbl5002.Caption:=label15.Caption;
    lbl5002.Font.Color:=label15.Font.Color;
    ppReport1.Print;
  end;
end;

procedure Tfrmnewcap_ref1.BitBtn4Click(Sender: TObject);
var
  y,m,d:word;
  dt0,dt1,dt2,dt3,dt4,dt5,mdt:tdatetime;
  tplant:string;
begin
  screen.Cursor:=crSQLWait;
  try
    dt0:=dateedit1.date;
    decodedate(dt0,y,m,d);
    dt1:=encodedate(y-1,m,d);
    if m>9 then dt2:=encodedate(y,m-9,d)
    else dt2:=encodedate(y-1,m+3,d);
    if m>6 then dt3:=encodedate(y,m-6,d)
    else dt3:=encodedate(y-1,m+6,d);
    if m>3 then dt4:=encodedate(y,m-3,d)
    else dt4:=encodedate(y-1,m+9,d);
    if m>1 then dt5:=encodedate(y,m-1,d)
    else dt5:=encodedate(y-1,m+11,d);
    lbln001.Caption:='';  lbln004.Caption:='';  lbln007.Caption:='';
    lbln002.Caption:='';  lbln005.Caption:='';  lbln008.Caption:='';
    lbln003.Caption:='';  lbln006.Caption:='';  lbln009.Caption:='';
    lbln101.Caption:='';  lbln104.Caption:='';  lbln107.Caption:='';
    lbln102.Caption:='';  lbln105.Caption:='';  lbln108.Caption:='';
    lbln103.Caption:='';  lbln106.Caption:='';  lbln109.Caption:='';
    lblc001.Caption:='';  lblc004.Caption:='';  lblc007.Caption:='';
    lblc002.Caption:='';  lblc005.Caption:='';  lblc008.Caption:='';
    lblc003.Caption:='';  lblc006.Caption:='';  lblc009.Caption:='';
    lblc101.Caption:='';  lblc104.Caption:='';  lblc107.Caption:='';
    lblc102.Caption:='';  lblc105.Caption:='';  lblc108.Caption:='';
    lblc103.Caption:='';  lblc106.Caption:='';  lblc109.Caption:='';
    lblc201.Caption:='';  lblc204.Caption:='';  lblc207.Caption:='';
    lblc202.Caption:='';  lblc205.Caption:='';  lblc208.Caption:='';
    lblc203.Caption:='';  lblc206.Caption:='';  lblc209.Caption:='';
    lblcn001.Caption:='';  lblcn004.Caption:='';  lblcn007.Caption:='';
    lblcn002.Caption:='';  lblcn005.Caption:='';  lblcn008.Caption:='';
    lblcn003.Caption:='';  lblcn006.Caption:='';  lblcn009.Caption:='';
    lblcn101.Caption:='';  lblcn104.Caption:='';  lblcn107.Caption:='';
    lblcn102.Caption:='';  lblcn105.Caption:='';  lblcn108.Caption:='';
    lblcn103.Caption:='';  lblcn106.Caption:='';  lblcn109.Caption:='';
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      first;
      while not eof do begin
        if lbln007.Caption>'' then lbln007.caption:=lbln007.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln007.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln107.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      first;
      while not eof do begin
        if lbln008.Caption>'' then lbln008.caption:=lbln008.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln008.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lbln108.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      first;
      while not eof do begin
        if lbln009.Caption>'' then lbln009.caption:=lbln009.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln009.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln109.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt4;
      open;
      first;
      while not eof do begin
        if lbln004.Caption>'' then lbln004.caption:=lbln004.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln004.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln104.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt4;
      open;
      first;
      while not eof do begin
        if lbln005.Caption>'' then lbln005.caption:=lbln005.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln005.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lbln105.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt4;
      open;
      first;
      while not eof do begin
        if lbln006.Caption>'' then lbln006.caption:=lbln006.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln006.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln106.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt5;
      open;
      first;
      while not eof do begin
        if lbln001.Caption>'' then lbln001.caption:=lbln001.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln001.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln101.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt5;
      open;
      first;
      while not eof do begin
        if lbln002.Caption>'' then lbln002.caption:=lbln002.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln002.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lbln102.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt5;
      open;
      first;
      while not eof do begin
        if lbln003.Caption>'' then lbln003.caption:=lbln003.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln003.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln103.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      first;
      while not eof do begin
        if lblc007.Caption>'' then lblc007.caption:=lblc007.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc007.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc107.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='SL';
      params[1].asdate:=dt3;
      params[2].asdate:=dt0;
      open;
      lblc207.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      first;
      while not eof do begin
        if lblc008.Caption>'' then lblc008.caption:=lblc008.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc008.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc108.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='GG';
      params[1].asdate:=dt3;
      params[2].asdate:=dt0;
      open;
      if not fieldbyname('x1').isnull then
      lblc208.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      first;
      while not eof do begin
        if lblc009.Caption>'' then lblc009.caption:=lblc009.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc009.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc109.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='RX';
      params[1].asdate:=dt3;
      params[2].asdate:=dt0;
      open;
      lblc209.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt4;
      open;
      first;
      while not eof do begin
        if lblc004.Caption>'' then lblc004.caption:=lblc004.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc004.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc104.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='SL';
      params[1].asdate:=dt4;
      params[2].asdate:=dt0;
      open;
      lblc204.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt4;
      open;
      first;
      while not eof do begin
        if lblc005.Caption>'' then lblc005.caption:=lblc005.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc005.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc105.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='GG';
      params[1].asdate:=dt4;
      params[2].asdate:=dt0;
      open;
      if not fieldbyname('x1').isnull then
      lblc205.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt4;
      open;
      first;
      while not eof do begin
        if lblc006.Caption>'' then lblc006.caption:=lblc006.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc006.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc106.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='RX';
      params[1].asdate:=dt4;
      params[2].asdate:=dt0;
      open;
      lblc206.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt5;
      open;
      first;
      while not eof do begin
        if lblc001.Caption>'' then lblc001.caption:=lblc001.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc001.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc101.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='SL';
      params[1].asdate:=dt5;
      params[2].asdate:=dt0;
      open;
      lblc201.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt5;
      open;
      first;
      while not eof do begin
        if lblc002.Caption>'' then lblc002.caption:=lblc002.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc002.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc102.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='GG';
      params[1].asdate:=dt5;
      params[2].asdate:=dt0;
      open;
      if not fieldbyname('x1').isnull then
      lblc202.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt5;
      open;
      first;
      while not eof do begin
        if lblc003.Caption>'' then lblc003.caption:=lblc003.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc003.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc103.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='RX';
      params[1].asdate:=dt5;
      params[2].asdate:=dt0;
      open;
      lblc203.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      first;
      while not eof do begin
        if lblcn007.Caption>'' then lblcn007.caption:=lblcn007.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn007.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn107.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      first;
      while not eof do begin
        if lblcn008.Caption>'' then lblcn008.caption:=lblcn008.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn008.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn108.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      first;
      while not eof do begin
        if lblcn009.Caption>'' then lblcn009.caption:=lblcn009.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn009.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn109.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt4;
      open;
      first;
      while not eof do begin
        if lblcn004.Caption>'' then lblcn004.caption:=lblcn004.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn004.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn104.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt4;
      open;
      first;
      while not eof do begin
        if lblcn005.Caption>'' then lblcn005.caption:=lblcn005.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn005.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn105.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt4;
      open;
      first;
      while not eof do begin
        if lblcn006.Caption>'' then lblcn006.caption:=lblcn006.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn006.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn106.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt5;
      open;
      first;
      while not eof do begin
        if lblcn001.Caption>'' then lblcn001.caption:=lblcn001.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn001.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn101.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt5;
      open;
      first;
      while not eof do begin
        if lblcn002.Caption>'' then lblcn002.caption:=lblcn002.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn002.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn102.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt5;
      open;
      first;
      while not eof do begin
        if lblcn003.Caption>'' then lblcn003.caption:=lblcn003.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn003.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn103.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
    end;
    lblmn001.Caption:='6 months ';
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      if not fieldbyname('x1').isnull then lbllb3001.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl / Line ';
      if not fieldbyname('x2').isnull then lbllb6001.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl / Line ';
      if fieldbyname('x1').value>0 then lbllb36001.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
      else lbllb36001.caption:='0.00%';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      if not fieldbyname('x1').isnull then lbllb3002.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl / Line ';
      if not fieldbyname('x2').isnull then lbllb6002.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl / Line ';
      if not fieldbyname('x1').isnull then begin
        if fieldbyname('x1').value>0 then lbllb36002.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
        else lbllb36002.caption:='0.00%';
      end;
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt3;
      open;
      if not fieldbyname('x1').isnull then lbllb3003.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl / Line ';
      if not fieldbyname('x2').isnull then lbllb6003.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl / Line ';
      if fieldbyname('x1').value>0 then lbllb36003.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
      else lbllb36003.caption:='0.00%';
    end;
    backdt003.Caption:=formatdatetime('yyyy-MM-dd',dateedit1.Date);
    lbln0001.Caption:='';  lbln0004.Caption:='';
    lbln0002.Caption:='';  lbln0005.Caption:='';
    lbln0003.Caption:='';  lbln0006.Caption:='';
    lbln1001.Caption:='';  lbln1004.Caption:='';
    lbln1002.Caption:='';  lbln1005.Caption:='';
    lbln1003.Caption:='';  lbln1006.Caption:='';
    lblc0001.Caption:='';  lblc0004.Caption:='';
    lblc0002.Caption:='';  lblc0005.Caption:='';
    lblc0003.Caption:='';  lblc0006.Caption:='';
    lblc1001.Caption:='';  lblc1004.Caption:='';
    lblc1002.Caption:='';  lblc1005.Caption:='';
    lblc1003.Caption:='';  lblc1006.Caption:='';
    lblc2001.Caption:='';  lblc2004.Caption:='';
    lblc2002.Caption:='';  lblc2005.Caption:='';
    lblc2003.Caption:='';  lblc2006.Caption:='';
    lblcn0001.Caption:='';  lblcn0004.Caption:='';
    lblcn0002.Caption:='';  lblcn0005.Caption:='';
    lblcn0003.Caption:='';  lblcn0006.Caption:='';
    lblcn1001.Caption:='';  lblcn1004.Caption:='';
    lblcn1002.Caption:='';  lblcn1005.Caption:='';
    lblcn1003.Caption:='';  lblcn1006.Caption:='';
    lbllb30003.Caption:=''; lbllb60003.Caption:=''; lbllb360003.Caption:='';
    with query2 do begin
      close;
      params.clear;
      commandtext:='select min(dt1) as dt1 from view_cust_flag6_sah where tplant=''RX''';
      open;
      mdt:=fieldbyname('dt1').Value;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lbln0001.Caption>'' then lbln0001.caption:=lbln0001.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln0001.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln1001.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lbln0002.Caption>'' then lbln0002.caption:=lbln0002.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln0002.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lbln1002.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      if dt2>=mdt then begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lbln0003.Caption>'' then lbln0003.caption:=lbln0003.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln0003.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln1003.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lbln0004.Caption>'' then lbln0004.caption:=lbln0004.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln0004.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln1004.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if lbln0005.Caption>'' then lbln0005.caption:=lbln0005.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln0005.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lbln1005.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      if dt1>=mdt then begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_not(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if lbln0006.Caption>'' then lbln0006.caption:=lbln0006.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lbln0006.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      lbln1006.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lblc0001.Caption>'' then lblc0001.caption:=lblc0001.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc0001.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc1001.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='SL';
      params[1].asdate:=dt2;
      params[2].asdate:=dt0;
      open;
      lblc2001.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lblc0002.Caption>'' then lblc0002.caption:=lblc0002.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc0002.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc1002.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='GG';
      params[1].asdate:=dt2;
      params[2].asdate:=dt0;
      open;
      if not fieldbyname('x1').isnull then
      lblc2002.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      if dt2>=mdt then begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lblc0003.Caption>'' then lblc0003.caption:=lblc0003.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc0003.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc1003.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='RX';
      params[1].asdate:=dt2;
      params[2].asdate:=dt0;
      open;
      lblc2003.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if lblc0004.Caption>'' then lblc0004.caption:=lblc0004.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc0004.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc1004.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='SL';
      params[1].asdate:=dt1;
      params[2].asdate:=dt0;
      open;
      lblc2004.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if lblc0005.Caption>'' then lblc0005.caption:=lblc0005.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc0005.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc1005.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='GG';
      params[1].asdate:=dt1;
      params[2].asdate:=dt0;
      open;
      if not fieldbyname('x1').isnull then
      lblc2005.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      if dt1>=mdt then begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new_cst(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if lblc0006.Caption>'' then lblc0006.caption:=lblc0006.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblc0006.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblc1006.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(cst) as x1,sum(sah) as x2 from view_cust_flag6_sah_02 where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:='RX';
      params[1].asdate:=dt1;
      params[2].asdate:=dt0;
      open;
      lblc2006.Caption:='CsT''s Time: '+formatfloat('#,0.00',fieldbyname('x1').value/12.00)+' ('+formatfloat('0.00%',fieldbyname('x1').value*100.00/fieldbyname('x2').value)+')';
      end;
    end;


    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lblcn0001.Caption>'' then lblcn0001.caption:=lblcn0001.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn0001.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn1001.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lblcn0002.Caption>'' then lblcn0002.caption:=lblcn0002.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn0002.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn1002.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      if dt2>=mdt then begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt2;
      open;
      first;
      while not eof do begin
        if lblcn0003.Caption>'' then lblcn0003.caption:=lblcn0003.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn0003.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn1003.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if lblcn0004.Caption>'' then lblcn0004.caption:=lblcn0004.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn0004.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn1004.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if lblcn0005.Caption>'' then lblcn0005.caption:=lblcn0005.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn0005.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn1005.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      if dt1>=mdt then begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_cap_saheff_new(:x1,:x3,:x4) order by flag6';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      first;
      while not eof do begin
        if lblcn0006.Caption>'' then lblcn0006.caption:=lblcn0006.caption+' / '+fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')'
        else lblcn0006.caption:=fieldbyname('flag6').value+' (SAH: '+formatfloat('0.0000',fieldbyname('sah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('eff').value)+')';
        application.ProcessMessages;
        next;
      end;
      if not fieldbyname('tsah').isnull then
      lblcn1006.caption:='W/A (SAH: '+formatfloat('0.0000',fieldbyname('tsah').value)+'  Eff%*: '+formatfloat('0.00',fieldbyname('teff').value)+')';
      end;
    end;
    lblmn0001.Caption:='12 months ';
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
      params[0].asstring:='SL';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      if not fieldbyname('x1').isnull then lbllb30001.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl / Line ';
      if not fieldbyname('x2').isnull then lbllb60001.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl / Line ';
      if fieldbyname('x1').value>0 then lbllb360001.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
      else lbllb360001.caption:='0.00%';
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
      params[0].asstring:='GG';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      if not fieldbyname('x1').isnull then lbllb30002.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl / Line ';
      if not fieldbyname('x2').isnull then lbllb60002.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl / Line ';
      if not fieldbyname('x1').isnull then begin
        if fieldbyname('x1').value>0 then lbllb360002.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
        else lbllb360002.caption:='0.00%';
      end;
      if dt1>=mdt then begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select sum(sah*lstr)/sum(sah) as x1,sum(sjrs*sah)/sum(sah) as x2 from view_cust_flag6_sah_01 where tplant=:x1 and dt1<=:x2 and dt1>=:x3';
      params[0].asstring:='RX';
      params[1].asdate:=dt0;
      params[2].asdate:=dt1;
      open;
      if not fieldbyname('x1').isnull then lbllb30003.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ppl / Line ';
      if not fieldbyname('x2').isnull then lbllb60003.Caption:=formatfloat('0.00',fieldbyname('x2').value)+' ppl / Line ';
      if fieldbyname('x1').value>0 then lbllb360003.caption:=formatfloat('0.00%',(fieldbyname('x2').value-fieldbyname('x1').value)*100.00/fieldbyname('x1').value)
      else lbllb360003.caption:='0.00%';
      end;
    end;

    ppReport3.Print;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
