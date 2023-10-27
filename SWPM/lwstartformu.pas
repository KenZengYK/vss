unit lwstartformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Grids, DBGridEh, DBCtrls,
  ExtCtrls;

type
  Tfrmlwstart = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Label6: TLabel;
    DBText6: TDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlwstart: Tfrmlwstart;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmlwstart.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmlwstart.BitBtn2Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmlwstart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlwstart:=nil;
end;

procedure Tfrmlwstart.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select seq from tbl_astable where j_no=:x1 and j2_job=:x2 and rwo=:x3 and seq=:x4';
      params[0].asstring:=query1.fieldbyname('j_no').value;
      params[1].asinteger:=query1.fieldbyname('j2_job').value;
      params[2].asinteger:=query1.fieldbyname('rwo').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='update tbl_astable set rson=:x1 where seq=:x2';
          if not query1.fieldbyname('rson').isnull then
          params[0].asstring:=query1.fieldbyname('rson').value
          else params[0].asstring:='';
          params[1].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          commandtext:='insert into tbl_astable(seq,j_no,j2_job,rwo,dt,rson) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          params[1].asstring:=query1.fieldbyname('j_no').value;
          params[2].asstring:=query1.fieldbyname('j2_job').value;
          params[3].asstring:=query1.fieldbyname('rwo').value;
          params[4].asdate:=query1.fieldbyname('dt').value;
          if not query1.fieldbyname('rson').isnull then
          params[5].asstring:=query1.fieldbyname('rson').value
          else params[5].asstring:='';
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmlwstart.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tbl_astable';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('j_no').value:=worksheet1.tblshedule.fieldbyname('j_no').value;
  query1.fieldbyname('j2_job').value:=worksheet1.tblshedule.fieldbyname('j2_job').value;
  query1.fieldbyname('rwo').value:=worksheet1.tblshedule.fieldbyname('rwo').value;
  query1.fieldbyname('dt').value:=date;
end;

end.
