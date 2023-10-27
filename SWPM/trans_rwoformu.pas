unit trans_rwoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Mask, rxToolEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxTimeEdit, Buttons, DBCtrls, DB, DBClient, Grids, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters;

type
  Tfrmtrans_rwo = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    lblcs: TLabel;
    Label6: TLabel;
    DateEdit1: TDateEdit;
    Label7: TLabel;
    Edit1: TComboBox;
    Label8: TLabel;
    Edit2: TComboBox;
    Label9: TLabel;
    TimeEdit1: TcxTimeEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label10: TLabel;
    DBText5: TDBText;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    ltype: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure QueryChange(Sender: TField);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtrans_rwo: Tfrmtrans_rwo;

implementation

uses mainformu, worksheet, pdnformu, rwotransformu;

{$R *.dfm}

procedure Tfrmtrans_rwo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if label5.Caption='Edit' then begin
    showmessage('Please save data!');
    action:=canone;
  end else begin
    action:=cafree;
    frmtrans_rwo:=nil;
  end;
end;

procedure Tfrmtrans_rwo.Query1AfterPost(DataSet: TDataSet);
var
  pstr:string;
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.CreateParam(ftinteger,'x1',ptinput);
      params.CreateParam(ftinteger,'x2',ptinput);
      params.CreateParam(ftinteger,'x3',ptinput);
      params.CreateParam(ftinteger,'x4',ptinput);
      params.CreateParam(ftinteger,'x5',ptinput);
      params.CreateParam(ftinteger,'x6',ptinput);
      params.CreateParam(ftinteger,'x7',ptinput);
      params.CreateParam(ftinteger,'x8',ptinput);
      params.CreateParam(ftinteger,'x9',ptinput);
      params.CreateParam(ftinteger,'x10',ptinput);
      params.CreateParam(ftinteger,'x11',ptinput);
      params.CreateParam(ftboolean,'x12',ptinput);
      params.CreateParam(ftstring,'x13',ptinput);
      params.CreateParam(ftstring,'x14',ptinput);
      params.CreateParam(ftstring,'x15',ptinput);
      params.CreateParam(ftstring,'x16',ptinput);
      params.CreateParam(ftstring,'x17',ptinput);
      params.CreateParam(ftstring,'x18',ptinput);
      params.CreateParam(ftinteger,'x19',ptinput);
      params.CreateParam(ftstring,'x20',ptinput);
      commandtext:='update tbl_rtrs2 set tfqty=:x1,q1=:x2,q2=:x3,q3=:x4,q4=:x5,q5=:x6,q6=:x7,q7=:x8,q8=:x9,q9=:x10,q10=:x11,cmpf=:x12 '
                  +'where tplant=:x13 and j_no=:x14 and j2_job=:x15 and rwo=:x16 and acol=:x17 and ttype=:x18 and did=:x19 and psiz=:x20';
      if not query1.fieldbyname('tfqty').isnull then
      params[0].asinteger:=query1.fieldbyname('tfqty').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('q1').isnull then
      params[1].asinteger:=query1.fieldbyname('q1').value
      else params[1].asinteger:=0;
      if not query1.fieldbyname('q2').isnull then
      params[2].asinteger:=query1.fieldbyname('q2').value
      else params[2].asinteger:=0;
      if not query1.fieldbyname('q3').isnull then
      params[3].asinteger:=query1.fieldbyname('q3').value
      else params[3].asinteger:=0;
      if not query1.fieldbyname('q4').isnull then
      params[4].asinteger:=query1.fieldbyname('q4').value
      else params[4].asinteger:=0;
      if not query1.fieldbyname('q5').isnull then
      params[5].asinteger:=query1.fieldbyname('q5').value
      else params[5].asinteger:=0;
      if not query1.fieldbyname('q6').isnull then
      params[6].asinteger:=query1.fieldbyname('q6').value
      else params[6].asinteger:=0;
      if not query1.fieldbyname('q7').isnull then
      params[7].asinteger:=query1.fieldbyname('q7').value
      else params[7].asinteger:=0;
      if not query1.fieldbyname('q8').isnull then
      params[8].asinteger:=query1.fieldbyname('q8').value
      else params[8].asinteger:=0;
      if not query1.fieldbyname('q9').isnull then
      params[9].asinteger:=query1.fieldbyname('q9').value
      else params[9].asinteger:=0;
      if not query1.fieldbyname('q10').isnull then
      params[10].asinteger:=query1.fieldbyname('q10').value
      else params[10].asinteger:=0;
      if not query1.fieldbyname('cmpf').isnull then
      params[11].asboolean:=query1.fieldbyname('cmpf').value
      else params[11].asboolean:=false;
      params[12].asstring:=query1.fieldbyname('tplant').value;
      params[13].asstring:=query1.fieldbyname('j_no').value;
      params[14].asstring:=query1.fieldbyname('j2_job').value;
      params[15].asstring:=query1.fieldbyname('rwo').value;
      params[16].asstring:=query1.fieldbyname('acol').value;
      params[17].asstring:=query1.fieldbyname('ttype').value;
      params[18].asinteger:=query1.fieldbyname('did').value;
      params[19].asstring:=query1.fieldbyname('psiz').value;
      execute;
    end;
  end;
  {
    pstr:='14 '+query1.fieldbyname('tplant').value+' '+query1.fieldbyname('j_no').asstring+' '+query1.fieldbyname('j2_job').value+' '+query1.fieldbyname('rwo').value+' '+query1.fieldbyname('acol').value+' '+query1.fieldbyname('ttype').value+' '+query1.fieldbyname('did').asstring+' '+query1.fieldbyname('psiz').value;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
end;

procedure Tfrmtrans_rwo.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('q1').OnChange:=querychange;
  query1.fieldbyname('q2').OnChange:=querychange;
  query1.fieldbyname('q3').OnChange:=querychange;
  query1.fieldbyname('q4').OnChange:=querychange;
  query1.fieldbyname('q5').OnChange:=querychange;
  query1.fieldbyname('q6').OnChange:=querychange;
  query1.fieldbyname('q7').OnChange:=querychange;
  query1.fieldbyname('q8').OnChange:=querychange;
  query1.fieldbyname('q9').OnChange:=querychange;
  query1.fieldbyname('q10').OnChange:=querychange;
end;

procedure Tfrmtrans_rwo.BitBtn2Click(Sender: TObject);
var
  dt,etm:tdatetime;
  epdn,bcn:string;
begin
  if label5.Caption='Edit' then exit;
  bitbtn1.Enabled:=true;
  epdn:='';
  if lblcs.Caption='The first time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt2) as dt,max(pdn2) as epdn,max(bcn2) as bcn,max(tm2) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q2');
    lblcs.Caption:='The second time';
  end else if lblcs.Caption='The second time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt3) as dt,max(pdn3) as epdn,max(bcn3) as bcn,max(tm3) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q3');
    lblcs.Caption:='The third time';
  end else if lblcs.Caption='The third time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt4) as dt,max(pdn4) as epdn,max(bcn4) as bcn,max(tm4) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q4');
    lblcs.Caption:='The forth time';
  end else if lblcs.Caption='The forth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt5) as dt,max(pdn5) as epdn,max(bcn5) as bcn,max(tm5) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q5');
    lblcs.Caption:='The fifth time';
  end else if lblcs.Caption='The fifth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt6) as dt,max(pdn6) as epdn,max(bcn6) as bcn,max(tm6) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q6');
    lblcs.Caption:='The sixth time';
  end else if lblcs.Caption='The sixth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt7) as dt,max(pdn7) as epdn,max(bcn7) as bcn,max(tm7) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q7');
    lblcs.Caption:='The seventh time';
  end else if lblcs.Caption='The seventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt8) as dt,max(pdn8) as epdn,max(bcn8) as bcn,max(tm8) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q8');
    lblcs.Caption:='The eighth time';
  end else if lblcs.Caption='The eighth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt9) as dt,max(pdn9) as epdn,max(bcn9) as bcn,max(tm9) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q9');
    lblcs.Caption:='The ninth time';
  end else if lblcs.Caption='The ninth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt10) as dt,max(pdn10) as epdn,max(bcn10) as bcn,max(tm10) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q10');
    lblcs.Caption:='The tenth time';
    bitbtn2.Enabled:=false;
  end;
end;

procedure Tfrmtrans_rwo.BitBtn1Click(Sender: TObject);
var
  dt,etm:tdatetime;
  epdn,bcn:string;
begin
  if label5.Caption='Edit' then exit;
  bitbtn2.Enabled:=true;
  if lblcs.Caption='The tenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt9) as dt,max(pdn9) as epdn,max(bcn9) as bcn,max(tm9) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q9');
    lblcs.Caption:='The ninth time';
  end else if lblcs.Caption='The ninth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt8) as dt,max(pdn8) as epdn,max(bcn8) as bcn,max(tm8) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q8');
    lblcs.Caption:='The eighth time';
  end else if lblcs.Caption='The eighth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt7) as dt,max(pdn7) as epdn,max(bcn7) as bcn,max(tm7) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q7');
    lblcs.Caption:='The seventh time';
  end else if lblcs.Caption='The seventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt6) as dt,max(pdn6) as epdn,max(bcn6) as bcn,max(tm6) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q6');
    lblcs.Caption:='The sixth time';
  end else if lblcs.Caption='The sixth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt5) as dt,max(pdn5) as epdn,max(bcn5) as bcn,max(tm5) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q5');
    lblcs.Caption:='The fifth time';
  end else if lblcs.Caption='The fifth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt4) as dt,max(pdn4) as epdn,max(bcn4) as bcn,max(tm4) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q4');
    lblcs.Caption:='The forth time';
  end else if lblcs.Caption='The forth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt3) as dt,max(pdn3) as epdn,max(bcn3) as bcn,max(tm3) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q3');
    lblcs.Caption:='The third time';
  end else if lblcs.Caption='The third time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt2) as dt,max(pdn2) as epdn,max(bcn2) as bcn,max(tm2) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q2');
    lblcs.Caption:='The second time';
  end else if lblcs.Caption='The second time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select max(dt1) as dt,max(pdn1) as epdn,max(bcn1) as bcn,max(tm1) as etm from tbl_rtrs2 where j_no=:x1 and j2_job=:x2 and rwo=:x3 and tplant=:x4 and ttype=:x5';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asstring:=query1.fieldbyname('j2_job').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ttype').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
      if not fieldbyname('epdn').IsNull then epdn:=fieldbyname('epdn').value;
      if not fieldbyname('bcn').IsNull then bcn:=fieldbyname('bcn').value;
      if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
    end;
    dateedit1.Date:=dt;
    edit1.Text:=epdn;
    edit2.Text:=bcn;
    timeedit1.Time:=etm;
    dbgrideh1.Columns[8].Field:=query1.fieldbyname('q1');
    lblcs.Caption:='The first time';
    bitbtn1.Enabled:=false;
  end;
end;

procedure Tfrmtrans_rwo.BitBtn3Click(Sender: TObject);
var
  s1:string;
  pstr:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
  if pos('first',lblcs.Caption)>0 then s1:='1'
  else if pos('second',lblcs.Caption)>0 then s1:='2'
  else if pos('third',lblcs.Caption)>0 then s1:='3'
  else if pos('forth',lblcs.Caption)>0 then s1:='4'
  else if pos('fifth',lblcs.Caption)>0 then s1:='5'
  else if pos('sixth',lblcs.Caption)>0 then s1:='6'
  else if pos('seventh',lblcs.Caption)>0 then s1:='7'
  else if pos('eighth',lblcs.Caption)>0 then s1:='8'
  else if pos('ninth',lblcs.Caption)>0 then s1:='9'
  else if pos('tenth',lblcs.Caption)>0 then s1:='10';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(fttime,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    params.createparam(ftstring,'x8',ptinput);
    params.createparam(ftstring,'x9',ptinput);
    params.createparam(ftstring,'x10',ptinput);
    params.createparam(ftstring,'x11',ptinput);
    commandtext:='update tbl_rtrs2 set dt'+s1+'=:x1,pdn'+s1+'=:x4,bcn'+s1+'=:x5,tm'+s1+'=:x6 where j_no=:x7 and j2_job=:x8 and rwo=:x9 and tplant=:x10 and ttype=:x11';
    params[0].asdate:=dateedit1.date;
    params[1].asstring:=edit1.text;
    params[2].asstring:=edit2.text;
    params[3].astime:=timeedit1.Time;
    params[4].asstring:=Query1.fieldbyname('j_no').value;
    params[5].asstring:=Query1.fieldbyname('j2_job').value;
    params[6].asstring:=Query1.fieldbyname('rwo').value;
    params[7].asstring:=Query1.fieldbyname('tplant').value;
    params[8].asstring:=Query1.fieldbyname('ttype').value;
    execute;
  end;
  //split quantity by qn
  if label5.Caption='Edit' then begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    commandtext:='execute procedure sp_rtrs_split(:x1,:x2,:x3,:x4,:x5,:x6)';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asstring:=query1.fieldbyname('j_no').value;
    params[2].asstring:=query1.fieldbyname('j2_job').value;
    params[3].asstring:=query1.fieldbyname('rwo').value;
    params[4].asstring:=Query1.fieldbyname('ttype').value;
    params[5].asinteger:=strtoint(s1);
    execute;
  end;
  end;
  label5.Caption:='Save';
  {
    pstr:='15 '+query1.fieldbyname('tplant').value+' '+query1.fieldbyname('j_no').value+' '+query1.fieldbyname('j2_job').value+' '+query1.fieldbyname('rwo').value+' '+Query1.fieldbyname('ttype').value
    +' '+s1+' '+dateedit1.Text+' '+edit1.text+' '+edit2.text+' '+timetostr(timeedit1.time);
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmtrans_rwo.Edit1Enter(Sender: TObject);
begin
  edit1.Items.clear;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct a.pdn from tbl_pdn_m a,tbl_pdn_rwo b where a.seq=b.seq and b.j_no=:x1 and b.j2_job=:x2 and b.rwo=:x3 and a.tplant=:x4';
    params[0].asstring:=Query1.fieldbyname('j_no').value;
    params[1].asstring:=Query1.fieldbyname('j2_job').value;
    params[2].asstring:=Query1.fieldbyname('rwo').value;
    params[3].asstring:=Query1.fieldbyname('tplant').value;
    open;
    first;
    while not eof do begin
      edit1.Items.Add(fieldbyname('pdn').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmtrans_rwo.Edit2Enter(Sender: TObject);
begin
  edit2.Items.clear;
  if edit1.Text>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='select distinct a.voyn from tbl_pdn_voyage_m a,tbl_pdn_voyage_rwo b where a.seq=b.seq and a.seq1=b.seq1 and a.pdn=:x1 and b.j_no=:x2 and b.j2_job=:x3 and b.rwo=:x4 and a.tplant=:x5';
      params[0].asstring:=edit1.text;
      params[1].asstring:=Query1.fieldbyname('j_no').value;
      params[2].asstring:=Query1.fieldbyname('j2_job').value;
      params[3].asstring:=Query1.fieldbyname('rwo').value;
      params[4].asstring:=Query1.fieldbyname('tplant').value;
      open;
      first;
      while not eof do begin
        edit2.Items.add(fieldbyname('voyn').asstring);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmtrans_rwo.QueryChange(Sender: TField);
var
  q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,teqty:integer;
  s1,s2:string;
begin
  if pos('first',lblcs.Caption)>0 then s2:='1'
  else if pos('second',lblcs.Caption)>0 then s2:='2'
  else if pos('third',lblcs.Caption)>0 then s2:='3'
  else if pos('forth',lblcs.Caption)>0 then s2:='4'
  else if pos('fifth',lblcs.Caption)>0 then s2:='5'
  else if pos('sixth',lblcs.Caption)>0 then s2:='6'
  else if pos('seventh',lblcs.Caption)>0 then s2:='7'
  else if pos('eighth',lblcs.Caption)>0 then s2:='8'
  else if pos('ninth',lblcs.Caption)>0 then s2:='9'
  else if pos('tenth',lblcs.Caption)>0 then s2:='10';
  if not query1.fieldbyname('q1').isnull then q1:=query1.fieldbyname('q1').value else q1:=0;
  if not query1.fieldbyname('q2').isnull then q2:=query1.fieldbyname('q2').value else q2:=0;
  if not query1.fieldbyname('q3').isnull then q3:=query1.fieldbyname('q3').value else q3:=0;
  if not query1.fieldbyname('q4').isnull then q4:=query1.fieldbyname('q4').value else q4:=0;
  if not query1.fieldbyname('q5').isnull then q5:=query1.fieldbyname('q5').value else q5:=0;
  if not query1.fieldbyname('q6').isnull then q6:=query1.fieldbyname('q6').value else q6:=0;
  if not query1.fieldbyname('q7').isnull then q7:=query1.fieldbyname('q7').value else q7:=0;
  if not query1.fieldbyname('q8').isnull then q8:=query1.fieldbyname('q8').value else q8:=0;
  if not query1.fieldbyname('q9').isnull then q9:=query1.fieldbyname('q9').value else q9:=0;
  if not query1.fieldbyname('q10').isnull then q10:=query1.fieldbyname('q10').value else q10:=0;
  if not query1.fieldbyname('teqty').isnull then teqty:=query1.fieldbyname('teqty').value else teqty:=0;
  if q1+q2+q3+q4+q5+q6+q7+q8+q9+q10>teqty then begin
    if query1.fieldbyname('ttype').value='1' then s1:='T3 Qty > T2 Qty!'
    else if query1.fieldbyname('ttype').value='2' then s1:='Ex-fty Qty > T3 Qty!'
    else if query1.fieldbyname('ttype').value='3' then s1:='Invoiced Qty > Ex-fty Qty!';
    showmessage(s1);
    abort;
  end else
  query1.fieldbyname('tfqty').value:=q1+q2+q3+q4+q5+q6+q7+q8+q9+q10;
end;

procedure Tfrmtrans_rwo.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Query1.state=dsedit then label5.Caption:='Edit';
end;

end.
