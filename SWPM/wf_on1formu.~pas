unit wf_on1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Grids, DBGridEh, DBCtrls,
  ExtCtrls, GridsEh;

type
  Tfrmwf_on1 = class(TForm)
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
    Label10: TLabel;
    Label11: TLabel;
    DBText10: TDBText;
    Label12: TLabel;
    DBText11: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure QueryASECTChange(Sender: TField);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwf_on1: Tfrmwf_on1;

implementation

uses mainformu, zktdformu, achievingformu;

{$R *.dfm}

procedure Tfrmwf_on1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmwf_on1:=nil;
end;

procedure Tfrmwf_on1.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select * from line_wf_on1 where pline=:x1 and seq=:x2 and dt1=:x3';
    params[0].asstring:=dbtext1.DataSource.DataSet.fieldbyname('pline').value;
    params[1].asinteger:=dbtext1.DataSource.DataSet.fieldbyname('seq').value;
    params[2].asdate:=dbtext1.DataSource.DataSet.fieldbyname('dt1').value;
    open;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select workero from tblline where pline='''+dbtext1.DataSource.DataSet.fieldbyname('pline').value+'''';
    open;
    label10.caption:=formatfloat('#0',fieldbyname('workero').asfloat);
  end;
end;

procedure Tfrmwf_on1.Query1NewRecord(DataSet: TDataSet);
var
  wid:integer;
  swf:double;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(wid) as id from line_wf_on1';
    open;
    if not fieldbyname('id').isnull then wid:=fieldbyname('id').value+1 else wid:=1;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select workero from tblline where pline='''+dbtext1.DataSource.DataSet.fieldbyname('pline').value+'''';
    open;
    swf:=fieldbyname('workero').value;
  end;
  query1.fieldbyname('pline').value:=dbtext1.DataSource.DataSet.fieldbyname('pline').value;
  query1.fieldbyname('seq').value:=dbtext1.DataSource.DataSet.fieldbyname('seq').value;
  query1.fieldbyname('dt1').value:=dbtext1.DataSource.DataSet.fieldbyname('dt1').value;
  query1.fieldbyname('wid').value:=wid;
  query1.fieldbyname('swf').value:=swf;
  query1.fieldbyname('csect').value:=dbtext1.DataSource.DataSet.fieldbyname('csect').value;
  query1.fieldbyname('ceot').value:=dbtext1.DataSource.DataSet.fieldbyname('ceot').value;
  query1.fieldbyname('asect').value:=0;
  query1.fieldbyname('nt').value:=true;
  query1.fieldbyname('ct').value:=false;
end;

procedure Tfrmwf_on1.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.append;
end;

procedure Tfrmwf_on1.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this workforce?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from line_wf_on1 where wid=:x1';
      params[0].asinteger:=query1.fieldbyname('wid').value;
      execute;
    end;
    query1.Delete;
  end;
end;

procedure Tfrmwf_on1.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmwf_on1.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select wid from line_wf_on1 where wid=:x1';
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
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftfloat,'x7',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='update line_wf_on1 set pid=:x1,nt=:x2,ct=:x3,asect=:x5,nc=:x6,cc=:x7 where wid=:x4';
          if not query1.fieldbyname('pid').isnull then
          params[0].asstring:=query1.fieldbyname('pid').value
          else params[0].asstring:='';
          if not query1.fieldbyname('nt').isnull then
          params[1].asboolean:=query1.fieldbyname('nt').value
          else params[1].asboolean:=true;
          if not query1.fieldbyname('ct').isnull then
          params[2].asboolean:=query1.fieldbyname('ct').value
          else params[2].asboolean:=false;
          if not query1.fieldbyname('asect').isnull then
          params[3].asfloat:=query1.fieldbyname('asect').value
          else params[3].asfloat:=0;
          if not query1.fieldbyname('nc').isnull then
          params[4].asfloat:=query1.fieldbyname('nc').value
          else params[4].asfloat:=0;
          if not query1.fieldbyname('cc').isnull then
          params[5].asfloat:=query1.fieldbyname('cc').value
          else params[5].asfloat:=0;
          params[6].asinteger:=query1.fieldbyname('wid').value;
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
          params.createparam(ftfloat,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftfloat,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          commandtext:='insert into line_wf_on1(pline,seq,dt1,wid,pid,nt,ct,asect,nc,cc,swf,csect,ceot) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13)';
          params[0].asstring:=query1.fieldbyname('pline').value;
          params[1].asinteger:=query1.fieldbyname('seq').value;
          params[2].asdate:=query1.fieldbyname('dt1').value;
          params[3].asinteger:=query1.fieldbyname('wid').value;
          if not query1.fieldbyname('pid').isnull then
          params[4].asstring:=query1.fieldbyname('pid').value
          else params[4].asstring:='';
          if not query1.fieldbyname('nt').isnull then
          params[5].asboolean:=query1.fieldbyname('nt').value
          else params[5].asboolean:=true;
          if not query1.fieldbyname('ct').isnull then
          params[6].asboolean:=query1.fieldbyname('ct').value
          else params[6].asboolean:=false;
          if not query1.fieldbyname('asect').isnull then
          params[7].asfloat:=query1.fieldbyname('asect').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('nc').isnull then
          params[8].asfloat:=query1.fieldbyname('nc').value
          else params[8].asfloat:=0;
          if not query1.fieldbyname('cc').isnull then
          params[9].asfloat:=query1.fieldbyname('cc').value
          else params[9].asfloat:=0;
          params[10].asfloat:=query1.fieldbyname('swf').value;
          params[11].asfloat:=query1.fieldbyname('csect').value;
          params[12].asfloat:=query1.fieldbyname('ceot').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmwf_on1.QueryASECTChange(Sender: TField);
var
  asect:double;
begin
  if not query1.fieldbyname('asect').isnull then asect:=query1.fieldbyname('asect').value
  else asect:=0;
  if query1.fieldbyname('nt').value=false then query1.fieldbyname('nc').value:=0
  else begin
    if query1.fieldbyname('csect').value>0 then begin
      query1.fieldbyname('nc').value:=asect/query1.fieldbyname('csect').value;
    end else query1.fieldbyname('nc').value:=0;
  end;
  if query1.fieldbyname('ct').value=false then query1.fieldbyname('cc').value:=0
  else begin
    if query1.fieldbyname('ceot').value>0 then begin
      query1.fieldbyname('cc').value:=asect/query1.fieldbyname('ceot').value;
    end else query1.fieldbyname('cc').value:=0;
  end;
end;

procedure Tfrmwf_on1.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('asect').onchange:=queryasectchange;
  query1.fieldbyname('nt').onchange:=queryasectchange;
  query1.fieldbyname('ct').onchange:=queryasectchange;
end;

end.
 