unit otherqn_detailformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DBCtrls, Buttons, DB, DBClient;

type
  Tfrmotherqn_detail = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmotherqn_detail: Tfrmotherqn_detail;

implementation

uses mainformu, otherqnformu;

{$R *.dfm}

procedure Tfrmotherqn_detail.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.setfocus;
  query1.append;
end;

procedure Tfrmotherqn_detail.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this line?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='delete from tblshedule_ws_detail where ws=:x1 and pline=:x2 and seq=:x3 and dseq=:x4';
      params[0].asstring:=query1.fieldbyname('ws').value;
      params[1].asstring:=query1.fieldbyname('pline').value;
      params[2].asinteger:=query1.fieldbyname('seq').value;
      params[3].asinteger:=query1.fieldbyname('dseq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmotherqn_detail.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmotherqn_detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmotherqn_detail:=nil;
end;

procedure Tfrmotherqn_detail.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    commandtext:='select dseq from tblshedule_ws_detail where ws=:x1 and pline=:x2 and seq=:x3 and dseq=:x4';
    params[0].asstring:=query1.fieldbyname('ws').value;
    params[1].asstring:=query1.fieldbyname('pline').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    params[3].asinteger:=query1.fieldbyname('dseq').value;
    open;
    if not fieldbyname('dseq').isnull then begin
      str1:='update tblshedule_ws_detail set ';
      if not query1.fieldbyname('dt').isnull then
      str1:=str1+'dt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt').value)+''','
      else str1:=str1+'dt=null,';
      if not query1.fieldbyname('marks').isnull then
      str1:=str1+'marks='''+query1.fieldbyname('marks').value+''','
      else str1:=str1+'marks='''',';
      if not query1.fieldbyname('qty').isnull then
      str1:=str1+'qty='+query1.fieldbyname('qty').asstring+' '
      else str1:=str1+'qty=0 ';
      str1:=str1+'where ws='''+query1.fieldbyname('ws').value+''' and pline='''+query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' and dseq='+query1.fieldbyname('dseq').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
    end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        params.createparam(ftinteger,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        commandtext:='insert into tblshedule_ws_detail(pline,seq,ws,dseq,dt,qty,marks) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asstring:=query1.fieldbyname('ws').value;
        params[3].asinteger:=query1.fieldbyname('dseq').value;
        if not query1.fieldbyname('dt').isnull then
        params[4].asdate:=query1.fieldbyname('dt').value;
        if not query1.fieldbyname('qty').isnull then
        params[5].asinteger:=query1.fieldbyname('qty').value
        else params[5].asinteger:=0;
        if not query1.fieldbyname('marks').isnull then
        params[6].asstring:=query1.fieldbyname('marks').value
        else params[6].asstring:='';
        execute;
      end;
    end;
  end;
end;

procedure Tfrmotherqn_detail.Query1NewRecord(DataSet: TDataSet);
var
  dseq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(dseq) as x1 from tblshedule_ws_detail';
    open;
    if not fieldbyname('x1').isnull then dseq:=fieldbyname('x1').value+1
    else dseq:=1;
  end;
  query1.fieldbyname('pline').value:=frmotherqn.tblshedule.fieldbyname('pline').value;
  query1.fieldbyname('seq').value:=frmotherqn.tblshedule.fieldbyname('seq').value;
  query1.fieldbyname('ws').value:=frmotherqn.tblshedule.fieldbyname('ws').value;
  query1.fieldbyname('dseq').value:=dseq;
end;

end.
