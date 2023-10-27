unit line_opt_cmpformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, MConnect, SConnect, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, StdCtrls, Buttons, ppViewr,
  ppVar, ppBands, ppCtrls, ppPrnabl, ppCache, Mask, rxToolEdit, ppParameter;

type
  Tfrmline_opt_cmp = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    BitBtn1: TBitBtn;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    dt001: TppLabel;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText13: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    eff001: TppLabel;
    eff002: TppLabel;
    eff003: TppLabel;
    ppLabel22: TppLabel;
    ppDBText14: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppShape2: TppShape;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppShape3: TppShape;
    title001: TppLabel;
    sf002: TppLabel;
    ppLine1: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    sf001: TppLabel;
    sf003: TppLabel;
    ppLabel2: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    sk001: TppLabel;
    sk002: TppLabel;
    sk003: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    kf001: TppLabel;
    kf002: TppLabel;
    kf003: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    ComboBox2: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmline_opt_cmp: Tfrmline_opt_cmp;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmline_opt_cmp.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      if ((combobox1.text>'') or (combobox2.text>'')) then begin
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_lineopt_comparison_1(:x1,:x2,:x3,:x4,:x5)';
      end else
      commandtext:='execute procedure sp_lineopt_comparison(:x1,:x2,:x3)';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      params[2].asdatetime:=tm;
      if combobox1.text>'' then begin
        params[3].asstring:=combobox1.text;
        params[4].asstring:=combobox2.text;
      end;
      execute;
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      {
      commandtext:='select a.*,b.dt1,c.scqty,a.eff2-a.eff1 as dif1,c.scqty-a.diff as dif2,a.diff*100.00/d.diff as pdiff '
                  +'from v_slvsfj a,v_slvsfj1 b,v_slvsfj2 c,v_slvsfj3 d '
                  +'where a.flag6=b.flag6 and a.cust=b.cust and a.cstyle=b.cstyle '
                  +'and a.tplant=b.tplant and a.pline=b.pline and a.flag6=c.flag6 '
                  +'and a.cust=c.cust and a.cstyle=c.cstyle and a.tplant=c.tplant '
                  +'and a.pline=c.pline and a.flag6=d.flag6 and a.cust=d.cust and a.cstyle=d.cstyle '
                  +'order by a.cust,a.cstyle,a.tplant desc,a.pline';
      }
      commandtext:='select * from v_slkbfj where tm=:x1 order by cust,cstyle,tplant desc,pline';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('flag6').isnull then begin
        dt001.Caption:='Date Period from : '+formatdatetime('yyyy/MM/dd',dateedit1.date)+' to : '+formatdatetime('yyyy/MM/dd',dateedit2.date);
        if combobox2.text>'' then begin
          if combobox1.text>'' then title001.Caption:='- '+combobox1.text+' / '+combobox2.text
          else title001.Caption:='- '+combobox2.text;
        end else if combobox1.text>'' then title001.Caption:='- '+combobox1.text
        else title001.Caption:='- Customer independent';
        ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmline_opt_cmp.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmline_opt_cmp.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if clientdataset1.fieldbyname('dif1').value<0 then ppdbtext9.Font.Color:=clRed
  else if clientdataset1.fieldbyname('dif1').value>0 then ppdbtext9.Font.Color:=clGreen
  else ppdbtext9.Font.Color:=clBlack;
end;

procedure Tfrmline_opt_cmp.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftdatetime,'x5',ptinput);
    commandtext:='select sum(eff1*diff)/sum(diff) as x1,sum(eff2*diff)/sum(diff) as x2 from v_slkbfj where flag6=:x1 and cust=:x2 and cstyle=:x3 and tplant=:x4 and tm=:x5';
    {
    commandtext:='select sum(b.eff1*(b.csect+b.ceot))/sum(b.csect+b.ceot) as x1,sum(b.eff2*(b.csect+b.ceot))/sum(b.csect+b.ceot) as x2 '
                +'from slkbfjcstyle_list a,line_shjs b,tblshedule c where b.pline=c.pline and b.seq=c.seq '
                +'and b.flag=''0'' and b.dt1>=:x6 and b.dt1<=:x7 and b.csect+b.ceot>0 '
                +'and b.tplant in (''SL'',''FJ'',''KB'') and b.diff>=1 and c.cstyle like a.cstyle||''%'' '
                +'and a.flag6=:x1 and a.cust=:x2 and a.cstyle=:x3 and b.tplant=:x4 and a.tm=:x5';
    }
    params[0].asstring:=clientdataset1.fieldbyname('flag6').value;
    params[1].asstring:=clientdataset1.fieldbyname('cust').value;
    params[2].asstring:=clientdataset1.fieldbyname('cstyle').value;
    params[3].asstring:=clientdataset1.fieldbyname('tplant').value;
    params[4].asdatetime:=clientdataset1.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then eff001.Caption:=formatfloat('0.00',fieldbyname('x1').value)
    else eff001.Caption:='0.00';
    if not fieldbyname('x2').isnull then eff002.Caption:=formatfloat('0.00',fieldbyname('x2').value)
    else eff002.Caption:='0.00';
    eff003.Caption:=formatfloat('0.00',fieldbyname('x2').value-fieldbyname('x1').value);
    if fieldbyname('x2').value<fieldbyname('x1').value then eff003.Font.Color:=clRed
    else if fieldbyname('x2').value>fieldbyname('x1').value then eff003.Font.Color:=clGreen
    else eff003.Font.Color:=clBlack;
  end;
end;

procedure Tfrmline_opt_cmp.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  sl0,sl1,kb0,kb1,fj0,fj1:double;
begin
  sl0:=-100.00; kb0:=-100.00; fj0:=-100.00;
  sl1:=-100.00; kb1:=-100.00; fj1:=-100.00;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftdatetime,'x5',ptinput);
    commandtext:='select tplant,sum(eff1*diff)/sum(diff) as x1,sum(eff2*diff)/sum(diff) as x2 from v_slkbfj where flag6=:x1 and cust=:x2 and cstyle=:x3 and tm=:x5 group by tplant';
    {
    commandtext:='select b.tplant,sum(b.eff2*(b.csect+b.ceot))/sum(b.csect+b.ceot) as x2 '
                +'from slkbfjcstyle_list a,line_shjs b,tblshedule c where b.pline=c.pline and b.seq=c.seq '
                +'and b.flag=''0'' and b.dt1>=:x6 and b.dt1<=:x7 and b.csect+b.ceot>0 '
                +'and b.tplant in (''SL'',''FJ'',''KB'') and b.diff>=1 and c.cstyle like a.cstyle||''%'' '
                +'and a.flag6=:x1 and a.cust=:x2 and a.cstyle=:x3 and a.tm=:x5 group by b.tplant';
    }
    params[0].asstring:=clientdataset1.fieldbyname('flag6').value;
    params[1].asstring:=clientdataset1.fieldbyname('cust').value;
    params[2].asstring:=clientdataset1.fieldbyname('cstyle').value;
    params[3].asdatetime:=clientdataset1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('tplant').value='SL' then begin
        sl0:=fieldbyname('x2').value;
        sl1:=fieldbyname('x1').value;
      end else if fieldbyname('tplant').value='KB' then begin
        kb0:=fieldbyname('x2').value;
        kb1:=fieldbyname('x1').value;
      end else if fieldbyname('tplant').value='FJ' then begin
        fj0:=fieldbyname('x2').value;
        fj1:=fieldbyname('x1').value;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  if sl0>=0.00 then begin
    if kb0>0.00 then begin
      sk001.Caption:=formatfloat('0.00',sl1-kb1);
      sk002.Caption:=formatfloat('0.00',sl0-kb0);
      sk003.Caption:=formatfloat('0.00',sl0-sl1+kb1-kb0);
      if sl1>kb1 then sk001.Font.Color:=clGreen
      else if sl1<kb1 then sk001.Font.Color:=clRed
      else sk001.Font.Color:=clBlack;
      if sl0>kb0 then sk002.Font.Color:=clGreen
      else if sl0<kb0 then sk002.Font.Color:=clRed
      else sk002.Font.Color:=clBlack;
      if sl0+kb1>sl1+kb0 then sk003.Font.Color:=clGreen
      else if sl0+kb1<sl1+kb0 then sk003.Font.Color:=clRed
      else sk003.Font.Color:=clBlack;
    end else begin
      sk001.Caption:='- -';
      sk002.Caption:='- -';
      sk003.Caption:='- -';
    end;
    if fj0>0.00 then begin
      sf001.Caption:=formatfloat('0.00',sl1-fj1);
      sf002.Caption:=formatfloat('0.00',sl0-fj0);
      sf003.Caption:=formatfloat('0.00',sl0-sl1+fj1-fj0);
      if sl1>fj1 then sf001.Font.Color:=clGreen
      else if sl1<fj1 then sf001.Font.Color:=clRed
      else sf001.Font.Color:=clBlack;
      if sl0>fj0 then sf002.Font.Color:=clGreen
      else if sl0<fj0 then sf002.Font.Color:=clRed
      else sf002.Font.Color:=clBlack;
      if sl0+fj1>sl1+fj0 then sf003.Font.Color:=clGreen
      else if sl0+fj1<sl1+fj0 then sf003.Font.Color:=clRed
      else sf003.Font.Color:=clBlack;
    end else begin
      sf001.Caption:='- -';
      sf002.Caption:='- -';
      sf003.Caption:='- -';
    end;
  end else begin
    sf001.Caption:='- -';
    sf002.Caption:='- -';
    sf003.Caption:='- -';
    sk001.Caption:='- -';
    sk002.Caption:='- -';
    sk003.Caption:='- -';
  end;
  if kb0>=0.00 then begin
    if fj0>0.00 then begin
      kf001.Caption:=formatfloat('0.00',kb1-fj1);
      kf002.Caption:=formatfloat('0.00',kb0-fj0);
      kf003.Caption:=formatfloat('0.00',kb0-kb1+fj1-fj0);
      if kb1>fj1 then kf001.Font.Color:=clGreen
      else if kb1<fj1 then kf001.Font.Color:=clRed
      else kf001.Font.Color:=clBlack;
      if kb0>fj0 then kf002.Font.Color:=clGreen
      else if kb0<fj0 then kf002.Font.Color:=clRed
      else kf002.Font.Color:=clBlack;
      if kb0+fj1>kb1+fj0 then kf003.Font.Color:=clGreen
      else if kb0+fj1<kb1+fj0 then kf003.Font.Color:=clRed
      else kf003.Font.Color:=clBlack;
    end else begin
      kf001.Caption:='- -';
      kf002.Caption:='- -';
      kf003.Caption:='- -';
    end;
  end else begin
    kf001.Caption:='- -';
    kf002.Caption:='- -';
    kf003.Caption:='- -';
  end;
end;

procedure Tfrmline_opt_cmp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmline_opt_cmp:=nil;
end;

procedure Tfrmline_opt_cmp.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty where act=1';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
  dateedit1.date:=date;
  dateedit2.date:=date;
end;

procedure Tfrmline_opt_cmp.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  if combobox1.text>'' then begin
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='select distinct cstyle from slkbfjcstyle_tlist where cust='''+combobox1.text+'''';
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('cstyle').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else if combobox1.text='' then begin
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='select distinct cstyle from slkbfjcstyle_tlist';
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('cstyle').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

end.
