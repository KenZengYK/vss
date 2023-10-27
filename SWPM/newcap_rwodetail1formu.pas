unit newcap_rwodetail1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Spin, DB, DBClient, DateUtils,
  ppParameter, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr;

type
  Tfrmnewcap_rwodetail1 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    rg1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    ComboBox3: TComboBox;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    qry_at3: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    fty0001: TppLabel;
    ppLabel19: TppLabel;
    yr0001: TppLabel;
    ppLabel23: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppShape3: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel32: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel33: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    p0001: TppLabel;
    ppLine27: TppLine;
    p0002: TppLabel;
    p0003: TppLabel;
    p0004: TppLabel;
    p0005: TppLabel;
    ppParameterList2: TppParameterList;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc7: TppDBCalc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_rwodetail1: Tfrmnewcap_rwodetail1;

implementation

uses mainformu, newcap_reportsformu, newcap_rwodetailformu;

{$R *.dfm}

procedure Tfrmnewcap_rwodetail1.BitBtn1Click(Sender: TObject);
var
  dt1,dt2,dt3,dt4:tdate;
  fty:string;
  y1,m1,opt2:integer;
begin
  screen.cursor:=crSQLWait;
  try
    y1:=spinedit1.Value;
    m1:=spinedit2.Value;
    fty:=combobox1.Text;
    dt1:=encodedate(spinedit1.value,m1,1);
    if m1=12 then dt2:=encodedate(spinedit1.value+1,1,1)
    else dt2:=encodedate(spinedit1.value,m1+1,1);
    if rg1.itemindex=5 then begin
      //
      with qry_at3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        commandtext:='select cust,flag60,wk1,wk2,wk3,wk4,wk5,wk1+wk2+wk3+wk4+wk5 as wk,wkn from sp_cap_splitat3_customer_bku(:x1,:x2,:x3)';
        params[0].asstring:=fty;
        params[1].asdate:=dt1;
        params[2].asdate:=dt2;
        open;
        if not fieldbyname('cust').isnull then begin
          fty0001.caption:=combobox1.text;
          yr0001.caption:=inttostr(spinedit1.value)+' - '+inttostr(spinedit2.value);//'from '+inttostr(ysp01.value)+'-'+inttostr(msp01.value)+'  to '+inttostr(ysp02.value)+'-'+inttostr(msp02.value);
          //mth0001.caption:='from '+inttostr(spinedit2.value)+'  to '+inttostr(spinedit3.value);
          ppReport2.print;
        end;
      end;
    end else begin
      opt2:=rg1.ItemIndex+1;
      if frmnewcap_rwodetail=nil then frmnewcap_rwodetail:=tfrmnewcap_rwodetail.create(nil);
      with frmnewcap_rwodetail.Query1 do begin
        close;
        params.clear;
        if opt2=1 then begin
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
        end else if opt2=2 then begin
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftdate,'x4',ptinput);
        end else if opt2=3 then begin
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftdate,'x6',ptinput);
        end else if opt2=4 then begin
          params.createparam(ftdate,'x7',ptinput);
          params.createparam(ftdate,'x8',ptinput);
          params.createparam(ftdate,'x9',ptinput);
          params.createparam(ftdate,'x10',ptinput);
        end else if opt2=5 then begin
          params.createparam(ftdate,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.createparam(ftdate,'x13',ptinput);
          params.createparam(ftdate,'x14',ptinput);
        end;
        commandtext:='select * from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+combobox2.Text+''' and substr(flag6,1,1)='''+combobox3.Text+'''';
        if opt2=1 then commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2 order by ddt,j_no,j2_job,acol,rwo'
        else if opt2=2 then commandtext:=commandtext+' and bt3dt>=:x3 and bt3dt<=:x4 and t3dt=at3dt order by bt3dt,j_no,j2_job,acol,rwo'
        else if opt2=3 then commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt order by at3dt,j_no,j2_job,acol,rwo'
        else if opt2=4 then commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10) order by ddt,j_no,j2_job,acol,rwo' //((t3dt>=:x9 and t3dt<=:x10) or (at3dt>=:x9 and at3dt<=:x10))'}
        else if opt2=5 then commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14) order by ddt,j_no,j2_job,acol,rwo';//ddt>=:x11 and ddt<=:x12 and ((t3dt>=:x13 and t3dt<=:x14) or (at3dt>=:x13 and at3dt<=:x14))';
        if opt2=1 then begin
          params.ParambyName('x1').asdate:=dt1;
          params.ParamByName('x2').asdate:=dt2-1;
        end else if opt2=2 then begin
          params.ParambyName('x3').asdate:=dt1;
          params.ParamByName('x4').asdate:=dt2-1;
        end else if opt2=3 then begin
          params.ParambyName('x5').asdate:=dt1;
          params.ParamByName('x6').asdate:=dt2-1;
        end else if opt2=4 then begin
          params.ParambyName('x7').asdate:=dt1;
          params.ParamByName('x8').asdate:=dt2-1;
          params.ParambyName('x9').asdate:=dt1;//dt3;
          params.ParamByName('x10').asdate:=dt2-1;//dt1-1;
        end else if opt2=5 then begin
          params.ParambyName('x11').asdate:=dt1;//dt2;
          params.ParamByName('x12').asdate:=dt2-1;//dt4-1;
          params.ParambyName('x13').asdate:=dt1;
          params.ParamByName('x14').asdate:=dt2-1;
        end;
        open;
      end;
      frmnewcap_rwodetail.DBGridEh1.Columns[2].Visible:=true;
      if opt2=2 then begin
        frmnewcap_rwodetail.DBGridEh1.Columns[9].Visible:=false;
        frmnewcap_rwodetail.DBGridEh1.Columns[10].Visible:=false;
      end else begin
        frmnewcap_rwodetail.DBGridEh1.Columns[9].Visible:=true;
        frmnewcap_rwodetail.DBGridEh1.Columns[10].Visible:=true;
      end;
      frmnewcap_rwodetail.xh1.Checked:=true;
      if opt2=1 then begin
        frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='Del Qty';
        frmnewcap_rwodetail.Caption:='Detail Info of CWOs - Del Qty ';
        frmnewcap_rwodetail.xh1.Caption:='Delivery Date';
      end else if opt2=2 then begin
        frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='T3 Qty';
        frmnewcap_rwodetail.Caption:='Detail Info of CWOs - T3 Qty';
        frmnewcap_rwodetail.xh1.Caption:='T3 Date';
      end else if opt2=3 then begin
        frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='aT3 Qty';
        frmnewcap_rwodetail.Caption:='Detail Info of CWOs - aT3 Qty';
        frmnewcap_rwodetail.xh1.Caption:='aT3 Date';
      end else if opt2=4 then begin
        frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='Go to previous Qty';
        frmnewcap_rwodetail.Caption:='Detail Info of CWOs - T3/aT3 Qty go to previous months';
        frmnewcap_rwodetail.xh1.Caption:='Delivery Date';
      end else if opt2=5 then begin
        frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='Come fm future Qty';
        frmnewcap_rwodetail.Caption:='Detail Info of CWOs - T3/aT3 Qty come from future months';
        frmnewcap_rwodetail.xh1.Caption:='Delivery Date';
      end;
      frmnewcap_rwodetail.xh1Click(self);
      with frmnewcap_rwodetail.Query2 do begin
        close;
        params.clear;
        if opt2=1 then begin
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
        end else if opt2=2 then begin
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftdate,'x4',ptinput);
        end else if opt2=3 then begin
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftdate,'x6',ptinput);
        end else if opt2=4 then begin
          params.createparam(ftdate,'x7',ptinput);
          params.createparam(ftdate,'x8',ptinput);
          params.createparam(ftdate,'x9',ptinput);
          params.createparam(ftdate,'x10',ptinput);
        end else if opt2=5 then begin
          params.createparam(ftdate,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.createparam(ftdate,'x13',ptinput);
          params.createparam(ftdate,'x14',ptinput);
        end;
        commandtext:='select count(distinct j_no) as x1,count(distinct cstyle) as x2,count(distinct j2_job) as x3,count(distinct acol) as x4 from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+combobox2.Text+''' and substr(flag6,1,1)='''+combobox3.Text+'''';
          if opt2=1 then commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2 order by ddt,j_no,j2_job,acol,rwo'
          else if opt2=2 then commandtext:=commandtext+' and bt3dt>=:x3 and bt3dt<=:x4 and t3dt=at3dt order by bt3dt,j_no,j2_job,acol,rwo'
          else if opt2=3 then commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt order by at3dt,j_no,j2_job,acol,rwo'
          else if opt2=4 then commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10)' //((t3dt>=:x9 and t3dt<=:x10) or (at3dt>=:x9 and at3dt<=:x10))'}
          else if opt2=5 then commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14)';//ddt>=:x11 and ddt<=:x12 and ((t3dt>=:x13 and t3dt<=:x14) or (at3dt>=:x13 and at3dt<=:x14))';
        if opt2=1 then begin
          params.ParambyName('x1').asdate:=dt1;
          params.ParamByName('x2').asdate:=dt2-1;
        end else if opt2=2 then begin
          params.ParambyName('x3').asdate:=dt1;
          params.ParamByName('x4').asdate:=dt2-1;
        end else if opt2=3 then begin
          params.ParambyName('x5').asdate:=dt1;
          params.ParamByName('x6').asdate:=dt2-1;
        end else if opt2=4 then begin
          params.ParambyName('x7').asdate:=dt1;
          params.ParamByName('x8').asdate:=dt2-1;
          params.ParambyName('x9').asdate:=dt1;//dt3;
          params.ParamByName('x10').asdate:=dt2-1;//dt1-1;
        end else if opt2=5 then begin
          params.ParambyName('x11').asdate:=dt1;//dt2;
          params.ParamByName('x12').asdate:=dt2-1;//dt4-1;
          params.ParambyName('x13').asdate:=dt1;
          params.ParamByName('x14').asdate:=dt2-1;
        end;
        open;
        if not fieldbyname('x1').isnull then begin
          frmnewcap_rwodetail.DBGridEh1.Columns[0].Footer.value:='Total: '+fieldbyname('x1').asstring;
          frmnewcap_rwodetail.DBGridEh1.Columns[2].Footer.value:=fieldbyname('x2').asstring;
          frmnewcap_rwodetail.DBGridEh1.Columns[3].Footer.value:=fieldbyname('x3').asstring;
          frmnewcap_rwodetail.DBGridEh1.Columns[5].Footer.value:=fieldbyname('x4').asstring;
        end else frmnewcap_rwodetail.DBGridEh1.Columns[0].Footer.value:='Total:';
      end;
      frmnewcap_rwodetail.Label1.Caption:=inttostr(m1);
      frmnewcap_rwodetail.Label3.Caption:=inttostr(y1);
      frmnewcap_rwodetail.Label4.Caption:=combobox2.Text;
      frmnewcap_rwodetail.Label5.Caption:=combobox3.Text;
      if opt2=2 then begin
        frmnewcap_rwodetail.ppdbText9.DataField:='';//'bT3dt';
      end else begin
        frmnewcap_rwodetail.ppdbText9.DataField:='aT3dt';
      end;
      frmnewcap_rwodetail.Show;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_rwodetail1.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp as cust from cust_exfty where act=1';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_rwodetail1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_rwodetail1:=nil;
end;

procedure Tfrmnewcap_rwodetail1.FormShow(Sender: TObject);
begin
  combobox1.Text:='SL';
  spinedit1.Value:=yearof(date);
  spinedit2.Value:=monthof(date);
  {
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct substr(j_no,1,4) as cust from tbl_cap_erprwo';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('cust').value);
      application.processmessages;
      next;
    end;
  end;
  }
  combobox2.Text:='ETAA';
  combobox3.Text:='B';
  rg1.ItemIndex:=0;
end;

procedure Tfrmnewcap_rwodetail1.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport2.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmnewcap_rwodetail1.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  if ppdbcalc6.value>0 then begin
    p0001.caption:='('+formatfloat('0.00%',ppdbcalc1.value*100.00/ppdbcalc6.value)+')';
    p0002.caption:='('+formatfloat('0.00%',ppdbcalc2.value*100.00/ppdbcalc6.value)+')';
    p0003.caption:='('+formatfloat('0.00%',ppdbcalc3.value*100.00/ppdbcalc6.value)+')';
    p0004.caption:='('+formatfloat('0.00%',ppdbcalc4.value*100.00/ppdbcalc6.value)+')';
    p0005.caption:='('+formatfloat('0.00%',ppdbcalc5.value*100.00/ppdbcalc6.value)+')';
  end else begin
    p0001.caption:='(0.00%)';
    p0002.caption:='(0.00%)';
    p0003.caption:='(0.00%)';
    p0004.caption:='(0.00%)';
    p0005.caption:='(0.00%)';
  end;
end;

end.
