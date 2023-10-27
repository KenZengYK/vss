unit wf_on2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Grids, DBGridEh, DBCtrls,
  ExtCtrls, GridsEh;

type
  Tfrmwf_on2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    Label5: TLabel;
    DBText7: TDBText;
    Label7: TLabel;
    DBText9: TDBText;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    query4: TClientDataSet;
    DataSource2: TDataSource;
    Label9: TLabel;
    DBText10: TDBText;
    Label10: TLabel;
    DBText11: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure QueryFSECTChange(Sender: TField);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwf_on2: Tfrmwf_on2;

implementation

uses mainformu, zktdformu, achievingformu;

{$R *.dfm}

procedure Tfrmwf_on2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmwf_on2:=nil;
end;

procedure Tfrmwf_on2.FormShow(Sender: TObject);
var
  tplant:string;
begin
  tplant:=dbtext1.DataSource.DataSet.fieldbyname('tplant').value;
  dbgrideh1.Columns[0].PickList.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct mwfid from tblmwfid where pline='''+tplant+'''';
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[0].PickList.add(fieldbyname('mwfid').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select * from line_wf_on2 where pline=:x1 and seq=:x2 and dt1=:x3';
    params[0].asstring:=dbtext1.DataSource.DataSet.fieldbyname('pline').value;
    params[1].asinteger:=dbtext1.DataSource.DataSet.fieldbyname('seq').value;
    params[2].asdate:=dbtext1.DataSource.DataSet.fieldbyname('dt1').value;
    open;
  end;
end;

procedure Tfrmwf_on2.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.append;
end;

procedure Tfrmwf_on2.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this workforce?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from line_wf_on2 where wid=:x1';
      params[0].asinteger:=query1.fieldbyname('wid').value;
      execute;
    end;
    query1.Delete;
  end;
end;

procedure Tfrmwf_on2.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmwf_on2.Query1NewRecord(DataSet: TDataSet);
var
  wid:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(wid) as id from line_wf_on2';
    open;
    if not fieldbyname('id').isnull then wid:=fieldbyname('id').value+1 else wid:=1;
  end;
  query1.fieldbyname('pline').value:=dbtext1.DataSource.DataSet.fieldbyname('pline').value;
  query1.fieldbyname('seq').value:=dbtext1.DataSource.DataSet.fieldbyname('seq').value;
  query1.fieldbyname('dt1').value:=dbtext1.DataSource.DataSet.fieldbyname('dt1').value;
  query1.fieldbyname('wid').value:=wid;
  query1.fieldbyname('csect').value:=dbtext1.DataSource.DataSet.fieldbyname('csect').value;
  query1.fieldbyname('ceot').value:=dbtext1.DataSource.DataSet.fieldbyname('ceot').value;
  query1.fieldbyname('fsect').value:=0;
  query1.fieldbyname('fa').value:=true;
  query1.fieldbyname('fac').value:=false;
  query1.fieldbyname('fsect1').value:=0;
  query1.fieldbyname('fbn').value:=false;
  query1.fieldbyname('fbnc').value:=false;
end;

procedure Tfrmwf_on2.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select wid from line_wf_on2 where wid=:x1';
      params[0].asinteger:=query1.fieldbyname('wid').value;
      open;
      if not fieldbyname('wid').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftboolean,'x2',ptinput);
          params.createparam(ftboolean,'x3',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftboolean,'x6',ptinput);
          params.createparam(ftboolean,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(ftfloat,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftfloat,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          params.createparam(ftstring,'x14',ptinput);
          params.createparam(ftstring,'x15',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='update line_wf_on2 set pid=:x1,fa=:x2,fac=:x3,fsect=:x5,fbn=:x6,fbnc=:x7,an=:x8,ac=:x9,bnn=:x10,bnc=:x11,fsect1=:x12,fpid=:x13,bnop=:x14,fpid1=:x15 where wid=:x4';
          if not query1.fieldbyname('pid').isnull then
          params[0].asstring:=query1.fieldbyname('pid').value
          else params[0].asstring:='';
          if not query1.fieldbyname('fa').isnull then
          params[1].asboolean:=query1.fieldbyname('fa').value
          else params[1].asboolean:=true;
          if not query1.fieldbyname('fac').isnull then
          params[2].asboolean:=query1.fieldbyname('fac').value
          else params[2].asboolean:=false;
          if not query1.fieldbyname('fsect').isnull then
          params[3].asfloat:=query1.fieldbyname('fsect').value
          else params[3].asfloat:=0;
          if not query1.fieldbyname('fbn').isnull then
          params[4].asboolean:=query1.fieldbyname('fbn').value
          else params[4].asboolean:=false;
          if not query1.fieldbyname('fbnc').isnull then
          params[5].asboolean:=query1.fieldbyname('fbnc').value
          else params[5].asboolean:=false;
          if not query1.fieldbyname('an').isnull then
          params[6].asfloat:=query1.fieldbyname('an').value
          else params[6].asfloat:=0;
          if not query1.fieldbyname('ac').isnull then
          params[7].asfloat:=query1.fieldbyname('ac').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('bnn').isnull then
          params[8].asfloat:=query1.fieldbyname('bnn').value
          else params[8].asfloat:=0;
          if not query1.fieldbyname('bnc').isnull then
          params[9].asfloat:=query1.fieldbyname('bnc').value
          else params[9].asfloat:=0;
          if not query1.fieldbyname('fsect1').isnull then
          params[10].asfloat:=query1.fieldbyname('fsect1').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('fpid').isnull then
          params[11].asstring:=query1.fieldbyname('fpid').value
          else params[11].asstring:='';
          if not query1.fieldbyname('bnop').isnull then
          params[12].asstring:=query1.fieldbyname('bnop').value
          else params[12].asstring:='';
          if not query1.fieldbyname('fpid1').isnull then
          params[13].asstring:=query1.fieldbyname('fpid1').value
          else params[13].asstring:='';
          params[14].asinteger:=query1.fieldbyname('wid').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftboolean,'x6',ptinput);
          params.createparam(ftboolean,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(ftboolean,'x9',ptinput);
          params.createparam(ftboolean,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftfloat,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftfloat,'x15',ptinput);
          params.createparam(ftfloat,'x16',ptinput);
          params.createparam(ftfloat,'x17',ptinput);
          params.createparam(ftstring,'x18',ptinput);
          params.createparam(ftstring,'x19',ptinput);
          params.createparam(ftstring,'x20',ptinput);
          commandtext:='insert into line_wf_on2(pline,seq,dt1,wid,pid,fa,fac,fsect,fbn,fbnc,csect,ceot,an,ac,bnn,bnc,fsect1,fpid,bnop,fpid1) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20)';
          params[0].asstring:=query1.fieldbyname('pline').value;
          params[1].asinteger:=query1.fieldbyname('seq').value;
          params[2].asdate:=query1.fieldbyname('dt1').value;
          params[3].asinteger:=query1.fieldbyname('wid').value;
          if not query1.fieldbyname('pid').isnull then
          params[4].asstring:=query1.fieldbyname('pid').value
          else params[4].asstring:='';
          if not query1.fieldbyname('fa').isnull then
          params[5].asboolean:=query1.fieldbyname('fa').value
          else params[5].asboolean:=true;
          if not query1.fieldbyname('fac').isnull then
          params[6].asboolean:=query1.fieldbyname('fac').value
          else params[6].asboolean:=false;
          if not query1.fieldbyname('fsect').isnull then
          params[7].asfloat:=query1.fieldbyname('fsect').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('fbn').isnull then
          params[8].asboolean:=query1.fieldbyname('fbn').value
          else params[8].asboolean:=false;
          if not query1.fieldbyname('fbnc').isnull then
          params[9].asboolean:=query1.fieldbyname('fbnc').value
          else params[9].asboolean:=false;
          params[10].asfloat:=query1.fieldbyname('csect').value;
          params[11].asfloat:=query1.fieldbyname('ceot').value;
          if not query1.fieldbyname('an').isnull then
          params[12].asfloat:=query1.fieldbyname('an').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('ac').isnull then
          params[13].asfloat:=query1.fieldbyname('ac').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('bnn').isnull then
          params[14].asfloat:=query1.fieldbyname('bnn').value
          else params[14].asfloat:=0;
          if not query1.fieldbyname('bnc').isnull then
          params[15].asfloat:=query1.fieldbyname('bnc').value
          else params[15].asfloat:=0;
          if not query1.fieldbyname('fsect1').isnull then
          params[16].asfloat:=query1.fieldbyname('fsect1').value
          else params[16].asfloat:=0;
          if not query1.fieldbyname('fpid').isnull then
          params[17].asstring:=query1.fieldbyname('fpid').value
          else params[17].asstring:='';
          if not query1.fieldbyname('bnop').isnull then
          params[18].asstring:=query1.fieldbyname('bnop').value
          else params[18].asstring:='';
          if not query1.fieldbyname('fpid1').isnull then
          params[19].asstring:=query1.fieldbyname('fpid1').value
          else params[19].asstring:='';
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmwf_on2.QueryFSECTChange(Sender: TField);
var
  fsect,fsect1:double;
begin
  if not query1.fieldbyname('fsect').isnull then fsect:=query1.fieldbyname('fsect').value
  else fsect:=0;
  if not query1.fieldbyname('fsect1').isnull then fsect1:=query1.fieldbyname('fsect1').value
  else fsect1:=0;
  if query1.fieldbyname('fa').value=false then query1.fieldbyname('an').value:=0
  else begin
    if query1.fieldbyname('csect').value>0 then begin
      query1.fieldbyname('an').value:=fsect/query1.fieldbyname('csect').value;
    end else query1.fieldbyname('an').value:=0;
  end;
  if query1.fieldbyname('fac').value=false then query1.fieldbyname('ac').value:=0
  else begin
    if query1.fieldbyname('ceot').value>0 then begin
      query1.fieldbyname('ac').value:=fsect/query1.fieldbyname('ceot').value;
    end else query1.fieldbyname('ac').value:=0;
  end;
  if query1.fieldbyname('fbn').value=false then query1.fieldbyname('bnn').value:=0
  else begin
    if query1.fieldbyname('csect').value>0 then begin
      query1.fieldbyname('bnn').value:=fsect1/query1.fieldbyname('csect').value;
    end else query1.fieldbyname('bnn').value:=0;
  end;
  if query1.fieldbyname('fbnc').value=false then query1.fieldbyname('bnc').value:=0
  else begin
    if query1.fieldbyname('ceot').value>0 then begin
      query1.fieldbyname('bnc').value:=fsect1/query1.fieldbyname('ceot').value;
    end else query1.fieldbyname('bnc').value:=0;
  end;
end;

procedure Tfrmwf_on2.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.FieldByName('fsect').onchange:=queryfsectchange;
  query1.FieldByName('fa').onchange:=queryfsectchange;
  query1.FieldByName('fac').onchange:=queryfsectchange;
  query1.FieldByName('fsect1').onchange:=queryfsectchange;
  query1.FieldByName('fbn').onchange:=queryfsectchange;
  query1.FieldByName('fbnc').onchange:=queryfsectchange;
end;

end.
 