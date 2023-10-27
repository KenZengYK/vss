unit wl1matformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGridEh, DB, DBClient;

type
  Tfrmwl1mat = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwl1mat: Tfrmwl1mat;

implementation

uses mainformu, matmatchu;

{$R *.dfm}

procedure Tfrmwl1mat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if query1.state=dsedit then query1.post;
  action:=cafree;
  frmwl1mat:=nil;
end;

procedure Tfrmwl1mat.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmwl1mat.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmwl1mat.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'date',ptinput);
      params.createparam(ftstring,'marks',ptinput);
      params.createparam(ftdate,'date1',ptinput);
      params.createparam(ftstring,'no',ptinput);
      params.createparam(ftstring,'j2_job',ptinput);
      params.createparam(ftstring,'acol',ptinput);
      params.createparam(ftinteger,'seq',ptinput);
      params.createparam(ftstring,'sopno',ptinput);
      params.createparam(ftinteger,'ordline',ptinput);
      commandtext:='update tblwl1matmatch set t_date=:date,t_marks=:marks,t_date1=:date1 where j_no=:no and j2_job=:job and acol=:acol and t_seq=:seq and sopno=:sopno and ordline=:ordline';
      if not query1.fieldbyname('t_date').isnull then
      params[0].asdate:=query1.fieldbyname('t_date').value;
      if not query1.fieldbyname('t_marks').isnull then
      params[1].asstring:=query1.fieldbyname('t_marks').value
      else params[1].asstring:=' ';
      if not query1.fieldbyname('t_date1').isnull then
      params[2].asdate:=query1.fieldbyname('t_date1').value;
      params[3].asstring:=query1.fieldbyname('j_no').value;
      params[4].asstring:=query1.fieldbyname('j2_job').value;
      params[5].asstring:=query1.fieldbyname('acol').value;
      params[6].asinteger:=query1.fieldbyname('t_seq').value;
      params[7].asstring:=query1.fieldbyname('sopno').value;
      params[8].asinteger:=query1.fieldbyname('ordline').value;
      execute;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'jno',ptinput);
    params.createparam(ftstring,'job',ptinput);
    params.createparam(ftstring,'acol',ptinput);
    params.createparam(ftstring,'sopno',ptinput);
    params.createparam(ftinteger,'ordline',ptinput);
    commandtext:='select distinct j_no from tblwl1matmatch where j_no=:no and j2_job=:job and acol=:acol and t_seq=:seq and sopno=:sopno and ordline=:ordline and (t_date is null)';
    params[0].asstring:=query1.fieldbyname('j_no').value;
    params[1].asstring:=query1.fieldbyname('j2_job').value;
    params[2].asstring:=query1.fieldbyname('acol').value;
    params[3].asstring:=query1.fieldbyname('sopno').value;
    params[4].asinteger:=query1.fieldbyname('ordline').value;
    open;
    if not fieldbyname('j_no').isnull then begin
    end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'jno',ptinput);
        params.createparam(ftstring,'job',ptinput);
        params.createparam(ftstring,'acol',ptinput);
        params.createparam(ftstring,'sopno',ptinput);
        params.createparam(ftinteger,'ordline',ptinput);
        commandtext:='select max(t_date) as dt from tblwl1matmatch where j_no=:no and j2_job=:job and acol=:acol and t_seq=:seq and sopno=:sopno and ordline=:ordline';
        params[0].asstring:=query1.fieldbyname('j_no').value;
        params[1].asstring:=query1.fieldbyname('j2_job').value;
        params[2].asstring:=query1.fieldbyname('acol').value;
        params[3].asstring:=query1.fieldbyname('sopno').value;
        params[4].asinteger:=query1.fieldbyname('ordline').value;
        open;
      end;
      with frmmatmatch.tblmatmatch do begin
        edit;
        fieldbyname('wl3').value:=query3.fieldbyname('dt').value;
        post;
      end;
    end;
  end;
end;

end.
 