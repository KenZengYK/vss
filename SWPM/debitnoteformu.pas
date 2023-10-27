unit debitnoteformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, DB, DBClient, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppBands,
  ppCache, ppVar, ppStrtch, ppMemo, ppViewr, ppParameter;

type
  Tfrmdebitnote = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    DBMemo2: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel6: TppLabel;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppShape3: TppShape;
    ppDBMemo2: TppDBMemo;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel22: TppLabel;
    ppLine6: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    custpo001: TppLabel;
    project001: TppLabel;
    style001: TppLabel;
    x001: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    x004: TppLabel;
    ppLine7: TppLine;
    x005: TppLabel;
    ppLabel23: TppLabel;
    ppLine8: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    curr001: TppLabel;
    ppShape7: TppShape;
    Edit1: TEdit;
    ppLabel12: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    vess002: TppLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    ppDBText6: TppDBText;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    eqty001: TppLabel;
    box001: TppLabel;
    SpeedButton1: TSpeedButton;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    function convertN2S(const n1,n2: integer):string;
  public
    { Public declarations }
  end;

var
  frmdebitnote: Tfrmdebitnote;

implementation

uses mainformu, pdnformu, voyageformu, airrequestformu, supselformu,
  airrpt1formu;

{$R *.dfm}

procedure Tfrmdebitnote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmsupsel<>nil then frmsupsel:=nil;
  if frmairrpt1<>nil then frmairrpt1:=nil;
  action:=cafree;
  frmdebitnote:=nil;
end;

procedure Tfrmdebitnote.BitBtn1Click(Sender: TObject);
begin
  if dbedit1.DataField='DEBIT_NO1' then begin
    dbedit1.DataField:='DEBIT_NO';
    dbedit2.DataField:='DEBIT_ATTN';
    dbedit3.DataField:='DEBIT_AIRFRTCOST';
    dbedit4.DataField:='DEBIT_CHARGE';
    dbedit5.DataField:='DEBIT_VNDR';
    dbmemo1.DataField:='DEBIT_MESSRS';
    dbmemo2.DataField:='DEBIT_REMARK';
  end;
end;

procedure Tfrmdebitnote.ppHeaderBand1BeforePrint(Sender: TObject);
var
  s1,s2:double;
  s3,s4,s5,s6,s7,s8,s9,s10:string;
begin
  if not frmairrequestform.Query1.fieldbyname('debit_airfrtcost').isnull then
    s1:=frmairrequestform.query1.fieldbyname('debit_airfrtcost').value else s1:=0;
  if not frmairrequestform.Query1.fieldbyname('debit_charge').isnull then
    s2:=frmairrequestform.query1.fieldbyname('debit_charge').value else s2:=0;
  if not frmairrequestform.query1.fieldbyname('currency').isnull then
    s3:=frmairrequestform.query1.fieldbyname('currency').value else s3:='HK$'; 
  curr001.Caption:='('+s3+')';

  custpo001.Caption:='';
  project001.Caption:='';
  style001.Caption:='';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct custpo from tbl_pdn_pack where seq=:x1 and seq1=:x2 and custpo>'''' and box>0';
    params[0].asinteger:=frmairrequestform.query1.fieldbyname('seq').value;
    params[1].asinteger:=frmairrequestform.query1.fieldbyname('seq1').value;
    open;
    first;
    while not eof do begin
      if custpo001.caption>'' then custpo001.Caption:=custpo001.Caption+' / '+fieldbyname('custpo').value
      else custpo001.Caption:=fieldbyname('custpo').value;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct j_no from tbl_pdn_pack where seq=:x1 and seq1=:x2 and box>0';
    params[0].asinteger:=frmairrequestform.query1.fieldbyname('seq').value;
    params[1].asinteger:=frmairrequestform.query1.fieldbyname('seq1').value;
    open;
    first;
    while not eof do begin
      if project001.caption>'' then project001.Caption:=project001.Caption+' / '+fieldbyname('j_no').value
      else project001.Caption:=fieldbyname('j_no').value;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct cstyle from tbl_pdn_pack where seq=:x1 and seq1=:x2 and cstyle>'''' and box>0';
    params[0].asinteger:=frmairrequestform.query1.fieldbyname('seq').value;
    params[1].asinteger:=frmairrequestform.query1.fieldbyname('seq1').value;
    open;
    first;
    while not eof do begin
      if style001.caption>'' then style001.Caption:=style001.Caption+' / '+fieldbyname('cstyle').value
      else style001.Caption:=fieldbyname('cstyle').value;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct vess from tbl_pdn_pack where seq=:x1 and seq1=:x2 and cstyle>'''' and box>0';
    params[0].asinteger:=frmairrequestform.query1.fieldbyname('seq').value;
    params[1].asinteger:=frmairrequestform.query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('vess').isnull then vess002.caption:=fieldbyname('vess').value
    else vess002.caption:='';
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(t4qty) as q1,sum(box) as q2 from tbl_pdn_pack where seq=:x1 and seq1=:x2 and cstyle>'''' and box>0';
    params[0].asinteger:=frmairrequestform.query1.fieldbyname('seq').value;
    params[1].asinteger:=frmairrequestform.query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('q1').isnull then eqty001.caption:=fieldbyname('q1').asstring
    else eqty001.caption:='0';
    if not fieldbyname('q2').isnull then box001.caption:=fieldbyname('q2').asstring
    else box001.caption:='0';
  end;

  x001.Caption:=s3+'  '+formatfloat('#,0.00',s1);
  x002.Caption:=formatfloat('0.00%',s2);
  x003.Caption:=s3+'  '+formatfloat('#,0.00',s1*s2/100.0);
  x004.Caption:=x003.Caption;
  s4:=formatfloat('0.00',s1*s2/100.0);
  s5:=copy(s4,1,length(s4)-3);
  s6:=copy(s4,length(s4)-1,2);

  if strtoint(s5)<20 then s8:=convertN2S(strtoint(s5),0)
  else if strtoint(s5)<100 then begin
    if strtoint(copy(s5,2,1))>0 then
    s8:=convertN2S(strtoint(copy(s5,1,1)),1)+' '+convertN2S(strtoint(copy(s5,2,1)),0)
    else s8:=convertN2S(strtoint(copy(s5,1,1)),1);
  end else if strtoint(s5)<1000 then begin
    if strtoint(copy(s5,2,2))<20 then begin
      s8:=convertN2S(strtoint(copy(s5,1,1)),2)+' '+convertN2S(strtoint(copy(s5,2,2)),0);
    end else begin
      if strtoint(copy(s5,3,1))>0 then
      s8:=convertN2S(strtoint(copy(s5,1,1)),2)+' '+convertN2S(strtoint(copy(s5,2,1)),1)+' '+convertN2S(strtoint(copy(s5,3,1)),0)
      else s8:=convertN2S(strtoint(copy(s5,1,1)),2)+' '+convertN2S(strtoint(copy(s5,2,1)),1);
    end;
  end else begin
    if strtoint(s5)>9999 then begin
      s9:=copy(s5,1,length(s5)-3);
      if strtoint(s9)<20 then s10:=convertN2S(strtoint(s9),0)
      else if strtoint(s9)<100 then begin
        if strtoint(copy(s9,2,1))>0 then
        s10:=convertN2S(strtoint(copy(s9,1,1)),1)+' '+convertN2S(strtoint(copy(s9,2,1)),0)
        else s10:=convertN2S(strtoint(copy(s9,1,1)),1);
      end else if strtoint(s9)<1000 then begin
        if strtoint(copy(s9,2,2))<20 then begin
          s10:=convertN2S(strtoint(copy(s9,1,1)),2)+' '+convertN2S(strtoint(copy(s9,2,2)),0);
        end else begin
          if strtoint(copy(s9,3,1))>0 then
          s10:=convertN2S(strtoint(copy(s9,1,1)),2)+' '+convertN2S(strtoint(copy(s9,2,1)),1)+' '+convertN2S(strtoint(copy(s9,3,1)),0)
          else s10:=convertN2S(strtoint(copy(s9,1,1)),2)+' '+convertN2S(strtoint(copy(s9,2,1)),1);
        end;
      end;
      s9:=copy(s5,length(s5)-2,3);
      if strtoint(s9)<20 then s8:=convertN2S(strtoint(s9),0)
      else if strtoint(s9)<100 then begin
        if strtoint(copy(s9,2,1))>0 then
        s8:=convertN2S(strtoint(copy(s9,2,1)),1)+' '+convertN2S(strtoint(copy(s9,3,1)),0)
        else s8:=convertN2S(strtoint(copy(s9,1,1)),1);
      end else if strtoint(s9)<1000 then begin
        if strtoint(copy(s9,2,2))<20 then begin
          s8:=convertN2S(strtoint(copy(s9,1,1)),2)+' '+convertN2S(strtoint(copy(s9,2,2)),0);
        end else begin
          if strtoint(copy(s9,3,1))>0 then
          s8:=convertN2S(strtoint(copy(s9,1,1)),2)+' '+convertN2S(strtoint(copy(s9,2,1)),1)+' '+convertN2S(strtoint(copy(s9,3,1)),0)
          else s8:=convertN2S(strtoint(copy(s9,1,1)),2)+' '+convertN2S(strtoint(copy(s9,2,1)),1);
        end;
      end;
      s8:=s10+' THOUSAND '+s8;
    end else begin
      if strtoint(copy(s5,3,2))<20 then begin
        s8:=convertN2S(strtoint(copy(s5,1,1)),3)+' '+convertN2S(strtoint(copy(s5,2,1)),2)+' '+convertN2S(strtoint(copy(s5,3,2)),0);
      end else begin
        if strtoint(copy(s5,4,1))>0 then
        s8:=convertN2S(strtoint(copy(s5,1,1)),3)+' '+convertN2S(strtoint(copy(s5,2,1)),2)+' '+convertN2S(strtoint(copy(s5,3,1)),1)+' '+convertN2S(strtoint(copy(s5,4,1)),0)
        else s8:=convertN2S(strtoint(copy(s5,1,1)),3)+' '+convertN2S(strtoint(copy(s5,2,1)),2)+' '+convertN2S(strtoint(copy(s5,3,1)),1);
      end;
    end;
  end;
  if strtoint(s6)<=0 then s7:=''
  else if strtoint(s6)<20 then s7:=convertN2S(strtoint(s6),0)+' CENT'
  else begin
    if strtoint(copy(s6,2,1))>0 then
    s7:=convertN2S(strtoint(copy(s6,1,1)),1)+' '+convertN2S(strtoint(copy(s6,2,1)),0)+' CENT'
    else s7:=convertN2S(strtoint(copy(s6,1,1)),1)+' CENT';
  end;
  if s7>'' then
  x005.Caption:='SAY TOTAL VALUE '+s3+' '+s8+' POINT '+s7+'*** '
  else x005.caption:='SAY TOTAL VALUE '+s3+' '+s8+'*** '
end;

procedure Tfrmdebitnote.BitBtn2Click(Sender: TObject);
begin
  if dbedit1.DataField='DEBIT_NO' then begin
    dbedit1.DataField:='DEBIT_NO1';
    dbedit2.DataField:='DEBIT_ATTN1';
    dbedit3.DataField:='DEBIT_AIRFRTCOST1';
    dbedit4.DataField:='DEBIT_CHARGE1';
    dbedit5.DataField:='DEBIT_VNDR1';
    dbmemo1.DataField:='DEBIT_MESSRS1';
    dbmemo2.DataField:='DEBIT_REMARK1';
  end;
end;

procedure Tfrmdebitnote.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

function Tfrmdebitnote.convertN2S(const n1, n2: integer): string;
begin
  if n2=0 then begin
    if n1=0 then result:='O'
    else if n1=1 then result:='ONE'
    else if n1=2 then result:='TWO'
    else if n1=3 then result:='THREE'
    else if n1=4 then result:='FOUR'
    else if n1=5 then result:='FIVE'
    else if n1=6 then result:='SIX'
    else if n1=7 then result:='SEVEN'
    else if n1=8 then result:='EIGHT'
    else if n1=9 then result:='NINE'
    else if n1=10 then result:='TEN'
    else if n1=11 then result:='ELEVEN'
    else if n1=12 then result:='TWELVE'
    else if n1=13 then result:='THIRTEEN'
    else if n1=14 then result:='FOURTEEN'
    else if n1=15 then result:='FIFTEEN'
    else if n1=16 then result:='SIXTEEN'
    else if n1=17 then result:='SEVENTEEN'
    else if n1=18 then result:='EIGHTEEN'
    else if n1=19 then result:='NINETEEN';
  end else if n2=1 then begin
    if n1=2 then result:='TWENTY'
    else if n1=3 then result:='THIRTY'
    else if n1=4 then result:='FORTY'
    else if n1=5 then result:='FIFTY'
    else if n1=6 then result:='SIXTY'
    else if n1=7 then result:='SEVENTY'
    else if n1=8 then result:='EIGHTY'
    else if n1=9 then result:='NINETY';
  end else if n2=2 then begin
    if n1=1 then result:='ONE HUNDRED'
    else if n1=2 then result:='TWO HUNDRED'
    else if n1=3 then result:='THREE HUNDRED'
    else if n1=4 then result:='FOUR HUNDRED'
    else if n1=5 then result:='FIVE HUNDRED'
    else if n1=6 then result:='SIX HUNDRED'
    else if n1=7 then result:='SEVEN HUNDRED'
    else if n1=8 then result:='EIGHT HUNDRED'
    else if n1=9 then result:='NINE HUNDRED';
  end else if n2=3 then begin
    if n1=1 then result:='ONE THOUSAND'
    else if n1=2 then result:='TWO THOUSAND'
    else if n1=3 then result:='THREE THOUSAND'
    else if n1=4 then result:='FOUR THOUSAND'
    else if n1=5 then result:='FIVE THOUSAND'
    else if n1=6 then result:='SIX THOUSAND'
    else if n1=7 then result:='SEVEN THOUSAND'
    else if n1=8 then result:='EIGHT THOUSAND'
    else if n1=9 then result:='NINE THOUSAND';
  end;
end;

procedure Tfrmdebitnote.DBEdit3Change(Sender: TObject);
var
  f1,f2:double;
begin
  if dbedit1.DataField='DEBIT_NO' then begin
    if not frmairrequestform.Query1.fieldbyname('debit_airfrtcost').isnull then
    f1:=frmairrequestform.Query1.fieldbyname('debit_airfrtcost').value else f1:=0;
    if not frmairrequestform.Query1.fieldbyname('debit_charge').isnull then
    f2:=frmairrequestform.Query1.fieldbyname('debit_charge').value else f2:=0;
    edit1.Text:=formatfloat('0.00',f1*f2/100.0)
  end else begin
    if not frmairrequestform.Query1.fieldbyname('debit_airfrtcost1').isnull then
    f1:=frmairrequestform.Query1.fieldbyname('debit_airfrtcost1').value else f1:=0;
    if not frmairrequestform.Query1.fieldbyname('debit_charge1').isnull then
    f2:=frmairrequestform.Query1.fieldbyname('debit_charge1').value else f2:=0;
    edit1.Text:=formatfloat('0.00',f1*f2/100.0)
  end;
end;

procedure Tfrmdebitnote.SpeedButton1Click(Sender: TObject);
begin
  if frmsupsel=nil then frmsupsel:=tfrmsupsel.create(nil);
  frmsupsel.show;
end;

procedure Tfrmdebitnote.BitBtn3Click(Sender: TObject);
begin
  frmairrequestform.BitBtn2click(self);
end;

procedure Tfrmdebitnote.BitBtn4Click(Sender: TObject);
begin
  bitbtn1click(self);
  ppReport1.Print;
  if not frmairrequestform.Query1.fieldbyname('debit_no1').isnull then begin
    if frmairrequestform.Query1.fieldbyname('debit_no1').value>'' then begin
      if frmairrpt1=nil then frmairrpt1:=tfrmairrpt1.Create(nil);
      frmairrpt1.ppReport1.Print;
    end;
  end;
end;

end.
