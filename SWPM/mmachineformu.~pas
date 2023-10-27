unit mmachineformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Grids, DBGridEh, DBCtrls,
  ExtCtrls;

type
  Tfrmmmachine = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmmachine: Tfrmmmachine;

implementation

uses mainformu, worksheet, zktdformu;

{$R *.dfm}

procedure Tfrmmmachine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmmmachine:=nil;
end;

procedure Tfrmmmachine.Query1NewRecord(DataSet: TDataSet);
var
  dseq1:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(dseq1) as seq1 from line_shjs3';
    open;
    if not fieldbyname('seq1').isnull then dseq1:=fieldbyname('seq1').value+1
    else dseq1:=1;
  end;
  query1.fieldbyname('dseq1').value:=dseq1;
end;

procedure Tfrmmmachine.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.Handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmmmachine.Query1AfterPost(DataSet: TDataSet);
var
  zjs,zss:double;
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select dseq1 from line_shjs3 where dseq1=:x1';
      params[0].asinteger:=query1.fieldbyname('dseq1').value;
      open;
      if not fieldbyname('dseq1').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          commandtext:='update line_shjs3 set absm=:x1,absh=:x2 where pline=:x5 and seq=:x6 and dseq=:x7 and dseq1=:x8';
          if not query1.fieldbyname('absm').isnull then
          params[0].asstring:=query1.fieldbyname('absm').value
          else params[0].asstring:='';
          if not query1.fieldbyname('absh').isnull then
          params[1].asfloat:=query1.fieldbyname('absh').value
          else params[1].asfloat:=0;
          params[2].asstring:=query1.fieldbyname('pline').value;
          params[3].asinteger:=query1.fieldbyname('seq').value;
          params[4].asinteger:=query1.fieldbyname('dseq').value;
          params[5].asinteger:=query1.fieldbyname('dseq1').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          commandtext:='insert into line_shjs3(absm,absh,pline,seq,dseq,dseq1) values(:x1,:x2,:x5,:x6,:x7,:x8)';
          if not query1.fieldbyname('absm').isnull then
          params[0].asstring:=query1.fieldbyname('absm').value
          else params[0].asstring:='';
          if not query1.fieldbyname('absh').isnull then
          params[1].asfloat:=query1.fieldbyname('absh').value
          else params[1].asfloat:=0;
          params[2].asstring:=query1.fieldbyname('pline').value;
          params[3].asinteger:=query1.fieldbyname('seq').value;
          params[4].asinteger:=query1.fieldbyname('dseq').value;
          params[5].asinteger:=query1.fieldbyname('dseq1').value;
          execute;
        end;
      end;
    end;
  end;

  //
  zjs:=frmzktd.Query1.fieldbyname('psect').value;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select sum(absh) as zss from line_shjs3 where pline=:x1 and seq=:x2 and dseq=:x3';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asinteger:=query1.fieldbyname('dseq').value;
    open;
    if not fieldbyname('zss').isnull then zss:=fieldbyname('zss').value else zss:=0;
  end;
  //{
  with frmzktd.query1 do begin
    edit;
    fieldbyname('sjyc').value:=fieldbyname('sjyc').value-zss/zjs;
    post;
  end;
  //}
end;

end.
 