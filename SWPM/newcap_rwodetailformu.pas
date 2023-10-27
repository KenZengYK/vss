unit newcap_rwodetailformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, DB, DBClient, StdCtrls, Buttons,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl,
  ppCtrls, ppBands, ppCache, ppVar, ppViewr, ppStrtch, ppSubRpt,
  ppParameter, QExport4, QExport4XLS, Spin;

type
  Tfrmnewcap_rwodetail = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppShape2: TppShape;
    ppLabel17: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Query2: TClientDataSet;
    del001: TppLabel;
    Label1: TLabel;
    yrmn001: TppLabel;
    sub001: TppLabel;
    prj001: TppLabel;
    sty001: TppLabel;
    wo001: TppLabel;
    rwo001: TppLabel;
    clr001: TppLabel;
    ppLabel20: TppLabel;
    Panel2: TPanel;
    Label2: TLabel;
    xh1: TRadioButton;
    xh2: TRadioButton;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppLabel21: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    dt002: TppDBText;
    qty002: TppDBText;
    dt001: TppLabel;
    qty001: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    Query1TPLANT: TWideStringField;
    Query1CUSTOMER: TWideStringField;
    Query1J_NO: TWideStringField;
    Query1CSTYLE: TWideStringField;
    Query1QTY: TIntegerField;
    Query1SAH: TFloatField;
    Query1DDT: TDateField;
    Query1EXDT: TDateField;
    Query1T3DT: TDateField;
    Query1AT3DT: TDateField;
    Query1T3YR: TIntegerField;
    Query1T3MN: TIntegerField;
    Query1T3WK: TIntegerField;
    Query1FLAG6: TWideStringField;
    Query1DIFF: TIntegerField;
    Query1DTYR: TIntegerField;
    Query1DTMN: TIntegerField;
    Query1DTWK: TIntegerField;
    Query1T3WKS: TIntegerField;
    Query1DTWKS: TIntegerField;
    Query1AT3YR: TIntegerField;
    Query1AT3MN: TIntegerField;
    Query1AT3WKS: TIntegerField;
    Query1AT3WK: TIntegerField;
    Query1J2_JOB: TWideStringField;
    Query1ACOL: TWideStringField;
    Query1WOC: TWideStringField;
    Query1RWO: TWideStringField;
    Query1FWDT: TDateField;
    Query1SHPM: TWideStringField;
    Query1LWDT: TDateField;
    Query1BT3DT: TDateField;
    Query1BT3YR: TIntegerField;
    Query1BT3MN: TIntegerField;
    Query1BT3WK: TIntegerField;
    Query1BT3WKS: TIntegerField;
    Query1DFW: TIntegerField;
    Query1DLW: TIntegerField;
    XLS1: TQExport4XLS;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    Query4: TClientDataSet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    sd01: TppShape;
    st01: TppShape;
    sa01: TppShape;
    sq01: TppShape;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel26: TppLabel;
    ppShape5: TppShape;
    ppLabel28: TppLabel;
    sty002: TppLabel;
    clr002: TppLabel;
    wo002: TppLabel;
    rwo002: TppLabel;
    ppDBCalc2: TppDBCalc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure Query1AT3DTGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1DIFFGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_rwodetail: Tfrmnewcap_rwodetail;

implementation

uses mainformu;//, newcap_styleformu;

{$R *.dfm}

procedure Tfrmnewcap_rwodetail.BitBtn2Click(Sender: TObject);
var
  opt2,m1,y1:integer;
  dt1,dt2,dt3,dt4:tdate;
begin
  m1:=strtoint(label1.Caption);
  y1:=strtoint(label3.Caption);
  dt1:=encodedate(y1,m1,1);
  if m1=12 then dt2:=encodedate(y1+1,1,1)
  else dt2:=encodedate(y1,m1+1,1);
  if m1=1 then dt3:=encodedate(y1-1,12,1)
  else dt3:=encodedate(y1,m1-1,1);
  if m1<11 then dt4:=encodedate(y1,m1+2,1)
  else if m1=11 then dt4:=encodedate(y1+1,1,1)
  else if m1=12 then dt4:=encodedate(y1+1,2,1);
  if frmnewcap_rwodetail.Caption='Detail Information of RWOs - Del Qty ' then opt2:=1
  else if frmnewcap_rwodetail.Caption='Detail Information of RWOs - T3 Qty' then opt2:=2
  else if frmnewcap_rwodetail.Caption='Detail Information of RWOs - aT3 Qty' then opt2:=3
  else if frmnewcap_rwodetail.Caption='Detail Information of RWOs - T3/aT3 Qty go to previous months' then opt2:=4
  else if frmnewcap_rwodetail.Caption='Detail Information of RWOs - T3/aT3 Qty come from future months' then opt2:=5;
  with query4 do begin
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
    commandtext:='select j_no as "Project #",flag6 as "Prod Code",cstyle as "Cust Style",j2_job as "WO #",rwo as "RWO #",acol as "Clr Code",qty,fwdt as "FW Start Date",bt3dt as "T3 Date (Std Ahead)",at3dt as "aT3 Date",'
                +'diff as "T3 Window (Std Ahead)",exdt as "Ex-fty Date",ddt as "Del Date",shpm as "Transit Mode" '
                +'from tbl_cap_erprwo where tplant='''+query1.FieldByName('tplant').Value+''' and substr(flag6,1,1)='''+copy(query1.FieldByName('flag6').Value,1,1)+''' '
                +'and substr(j_no,1,4)='''+copy(query1.FieldByName('j_no').Value,1,4)+''' ';
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
  if savedialog1.Execute then begin
    xls1.FileName:=savedialog1.FileName;
    xls1.Execute;
  end;
end;

procedure Tfrmnewcap_rwodetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_rwodetail:=nil;
end;

procedure Tfrmnewcap_rwodetail.ppDetailBand2BeforePrint(Sender: TObject);
begin
  //
end;

procedure Tfrmnewcap_rwodetail.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmnewcap_rwodetail.BitBtn1Click(Sender: TObject);
var
  dt1,dt2:tdate;
  fty,cust,flag6:string;
  y1,m1:integer;
begin
  screen.cursor:=crSQLWait;
  try
  m1:=strtoint(label1.caption);
  y1:=strtoint(label3.caption);
  cust:=label4.caption;
  flag6:=label5.caption;
  //if frmnewcap_style.combobox1.text='CHINA' then fty:='SL' else if frmnewcap_style.combobox1.text='THAI' then fty:='KB' else fty:=frmnewcap_style.combobox1.text;
  fty:=query1.FieldByName('tplant').Value;
  dt1:=encodedate(y1,m1,1);
  if m1=12 then dt2:=encodedate(y1+1,1,1)
  else dt2:=encodedate(y1,m1+1,1);
  sq01.visible:=false;
  st01.visible:=false;
  sa01.visible:=false;
  sd01.visible:=false;
  if not query1.fieldbyname('j_no').isnull then begin
    if dbgrideh1.Columns[6].Title.Caption='Del Qty' then begin
      sub001.Caption:='-  Del Qty ';
      del001.Caption:='Del';
      sd01.visible:=true;
    end else if dbgrideh1.Columns[6].Title.Caption='T3 Qty' then begin
      sub001.Caption:='-  T3 Qty ';
      del001.Caption:='T3';
      st01.visible:=true;
    end else if dbgrideh1.Columns[6].Title.Caption='aT3 Qty' then begin
      sub001.Caption:='-  aT3 Qty ';
      del001.Caption:='aT3';
      sa01.visible:=true;
    end else if dbgrideh1.Columns[6].Title.Caption='Go to previous Qty' then begin
      sub001.Caption:='-  T3/aT3 Qty go to previous months ';
      del001.Caption:='Go to prev';
      sq01.visible:=true;
    end else if dbgrideh1.Columns[6].Title.Caption='Come fm future Qty' then begin
      sub001.Caption:='-  T3/aT3 Qty come from future months ';
      del001.Caption:='Come fm future';
      sq01.visible:=true;
    end;
    //sub001.Caption:=sub001.Caption+'   ('+flag6+') ';

    with query3 do begin
      close;
      params.clear;
      if xh1.Checked then begin
        if dbgrideh1.Columns[6].Title.Caption='Del Qty' then begin
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          commandtext:='select distinct ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2 group by ddt order by ddt';
        end else if dbgrideh1.Columns[6].Title.Caption='T3 Qty' then begin
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftdate,'x4',ptinput);
          commandtext:='select distinct bt3dt as ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and bt3dt>=:x3 and bt3dt<=:x4 and t3dt=at3dt group by bt3dt order by ddt';
        end else if dbgrideh1.Columns[6].Title.Caption='aT3 Qty' then begin
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftdate,'x6',ptinput);
          commandtext:='select distinct at3dt as ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt group by at3dt order by ddt';
        end else if dbgrideh1.Columns[6].Title.Caption='Go to previous Qty' then begin
          params.createparam(ftdate,'x7',ptinput);
          params.createparam(ftdate,'x8',ptinput);
          params.createparam(ftdate,'x9',ptinput);
          params.createparam(ftdate,'x10',ptinput);
          commandtext:='select distinct ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10) group by ddt order by ddt';
        end else if dbgrideh1.Columns[6].Title.Caption='Come fm future Qty' then begin
          params.createparam(ftdate,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.createparam(ftdate,'x13',ptinput);
          params.createparam(ftdate,'x14',ptinput);
          commandtext:='select distinct ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14) group by ddt order by ddt';
        end;
      end else begin
        if dbgrideh1.Columns[6].Title.Caption='Del Qty' then begin
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          commandtext:='select distinct fwdt as ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2 group by fwdt order by ddt';
        end else if dbgrideh1.Columns[6].Title.Caption='T3 Qty' then begin
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftdate,'x4',ptinput);
          commandtext:='select distinct fwdt as ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and t3dt>=:x3 and t3dt<=:x4 and t3dt=at3dt group by fwdt order by ddt';
        end else if dbgrideh1.Columns[6].Title.Caption='aT3 Qty' then begin
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftdate,'x6',ptinput);
          commandtext:='select distinct fwdt as ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt group by fwdt order by ddt';
        end else if dbgrideh1.Columns[6].Title.Caption='Go to previous Qty' then begin
          params.createparam(ftdate,'x7',ptinput);
          params.createparam(ftdate,'x8',ptinput);
          params.createparam(ftdate,'x9',ptinput);
          params.createparam(ftdate,'x10',ptinput);
          commandtext:='select distinct fwdt as ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10) group by fwdt order by ddt';
        end else if dbgrideh1.Columns[6].Title.Caption='Come fm future Qty' then begin
          params.createparam(ftdate,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.createparam(ftdate,'x13',ptinput);
          params.createparam(ftdate,'x14',ptinput);
          commandtext:='select distinct fwdt as ddt,sum(qty) as qty,count(distinct cstyle) as cstyle,count(distinct j2_job) as wo,count(distinct acol) as acol,count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14) group by fwdt order by ddt';
        end;
      end;
      if dbgrideh1.Columns[6].Title.Caption='Del Qty' then begin
        params.ParambyName('x1').asdate:=dt1;
        params.ParamByName('x2').asdate:=dt2-1;
      end else if dbgrideh1.Columns[6].Title.Caption='T3 Qty' then begin
        params.ParambyName('x3').asdate:=dt1;
        params.ParamByName('x4').asdate:=dt2-1;
      end else if dbgrideh1.Columns[6].Title.Caption='aT3 Qty' then begin
        params.ParambyName('x5').asdate:=dt1;
        params.ParamByName('x6').asdate:=dt2-1;
      end else if dbgrideh1.Columns[6].Title.Caption='Go to previous Qty' then begin
        params.ParambyName('x7').asdate:=dt1;
        params.ParamByName('x8').asdate:=dt2-1;
        params.ParambyName('x9').asdate:=dt1;//dt3;
        params.ParamByName('x10').asdate:=dt2-1;//dt1-1;
      end else if dbgrideh1.Columns[6].Title.Caption='Come fm future Qty' then begin
        params.ParambyName('x11').asdate:=dt1;//dt2;
        params.ParamByName('x12').asdate:=dt2-1;//dt4-1;
        params.ParambyName('x13').asdate:=dt1;
        params.ParamByName('x14').asdate:=dt2-1;
      end;
      open;
    end;

    with query2 do begin
      close;
      params.clear;
      if xh1.Checked then begin
        if dbgrideh1.Columns[6].Title.Caption='Del Qty' then begin
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2';
        end else if dbgrideh1.Columns[6].Title.Caption='T3 Qty' then begin
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftdate,'x4',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and bt3dt>=:x3 and bt3dt<=:x4 and t3dt=at3dt';
        end else if dbgrideh1.Columns[6].Title.Caption='aT3 Qty' then begin
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftdate,'x6',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt';
        end else if dbgrideh1.Columns[6].Title.Caption='Go to previous Qty' then begin
          params.createparam(ftdate,'x7',ptinput);
          params.createparam(ftdate,'x8',ptinput);
          params.createparam(ftdate,'x9',ptinput);
          params.createparam(ftdate,'x10',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10)';
        end else if dbgrideh1.Columns[6].Title.Caption='Come fm future Qty' then begin
          params.createparam(ftdate,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.createparam(ftdate,'x13',ptinput);
          params.createparam(ftdate,'x14',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14)';
        end;
      end else begin
        if dbgrideh1.Columns[6].Title.Caption='Del Qty' then begin
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2';
        end else if dbgrideh1.Columns[6].Title.Caption='T3 Qty' then begin
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftdate,'x4',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and t3dt>=:x3 and t3dt<=:x4 and t3dt=at3dt';
        end else if dbgrideh1.Columns[6].Title.Caption='aT3 Qty' then begin
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftdate,'x6',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt';
        end else if dbgrideh1.Columns[6].Title.Caption='Go to previous Qty' then begin
          params.createparam(ftdate,'x7',ptinput);
          params.createparam(ftdate,'x8',ptinput);
          params.createparam(ftdate,'x9',ptinput);
          params.createparam(ftdate,'x10',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10)';
        end else if dbgrideh1.Columns[6].Title.Caption='Come fm future Qty' then begin
          params.createparam(ftdate,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.createparam(ftdate,'x13',ptinput);
          params.createparam(ftdate,'x14',ptinput);
          commandtext:='select count(*) as cnt from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+cust+''' and substr(flag6,1,1)='''+flag6+'''';
          commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14)';
        end;
      end;
      if dbgrideh1.Columns[6].Title.Caption='Del Qty' then begin
        params.ParambyName('x1').asdate:=dt1;
        params.ParamByName('x2').asdate:=dt2-1;
      end else if dbgrideh1.Columns[6].Title.Caption='T3 Qty' then begin
        params.ParambyName('x3').asdate:=dt1;
        params.ParamByName('x4').asdate:=dt2-1;
      end else if dbgrideh1.Columns[6].Title.Caption='aT3 Qty' then begin
        params.ParambyName('x5').asdate:=dt1;
        params.ParamByName('x6').asdate:=dt2-1;
      end else if dbgrideh1.Columns[6].Title.Caption='Go to previous Qty' then begin
        params.ParambyName('x7').asdate:=dt1;
        params.ParamByName('x8').asdate:=dt2-1;
        params.ParambyName('x9').asdate:=dt1;//dt3;
        params.ParamByName('x10').asdate:=dt2-1;//dt1-1;
      end else if dbgrideh1.Columns[6].Title.Caption='Come fm future Qty' then begin
        params.ParambyName('x11').asdate:=dt1;//dt2;
        params.ParamByName('x12').asdate:=dt2-1;//dt4-1;
        params.ParambyName('x13').asdate:=dt1;
        params.ParamByName('x14').asdate:=dt2-1;
      end;
      open;
    end;

    if xh1.Checked then sub001.Caption:=sub001.Caption+' (Sorting by '+xh1.Caption+')   - ('+flag6+') '
    else if xh2.Checked then sub001.Caption:=sub001.Caption+' (Sorting by FW Start Date)   - ('+flag6+') ';
    yrmn001.Caption:='For:  '+inttostr(y1)+'-'+label1.caption;
    prj001.Caption:=copy(dbgrideh1.Columns[0].Footer.value,pos(':',dbgrideh1.Columns[0].Footer.value)+1,3);
    sty001.Caption:=dbgrideh1.Columns[2].Footer.value;
    wo001.Caption:=dbgrideh1.Columns[3].Footer.value;
    rwo001.Caption:=query2.fieldbyname('cnt').asstring;//dbgrideh1.Columns[4].Footer.value;
    clr001.Caption:=dbgrideh1.Columns[5].Footer.value;
    sty002.Caption:=dbgrideh1.Columns[2].Footer.value;
    wo002.Caption:=dbgrideh1.Columns[3].Footer.value;
    rwo002.Caption:=query2.fieldbyname('cnt').asstring;
    clr002.Caption:=dbgrideh1.Columns[5].Footer.value;

    if xh1.checked then dt001.Caption:=xh1.Caption
    else if xh2.Checked then dt001.Caption:=xh2.Caption;
    qty001.Caption:=dbgrideh1.Columns[6].Title.Caption;

    ppReport1.Print;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_rwodetail.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    with query1 do begin
      editkey;
      if dbgrideh1.Columns[6].Title.Caption='T3 Qty' then indexname:='idx2'
      else if dbgrideh1.Columns[6].Title.Caption='aT3 Qty' then indexname:='idx3'
      else indexname:='idx1';
      setkey;
      first;
    end;
  end else if xh2.Checked then begin
    with query1 do begin
      editkey;
      indexname:='idx4';
      setkey;
      first;
    end;
  end;
end;

procedure Tfrmnewcap_rwodetail.Query1AT3DTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if query1.fieldbyname('t3dt').value=query1.fieldbyname('at3dt').value then
  text:=''
  else text:=formatdatetime('yyyy/MM/dd',query1.fieldbyname('at3dt').value);
end;

procedure Tfrmnewcap_rwodetail.Query1DIFFGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if query1.fieldbyname('t3dt').value=query1.fieldbyname('at3dt').value then
  text:='0'
  else text:=query1.fieldbyname('diff').asstring;
end;

end.
