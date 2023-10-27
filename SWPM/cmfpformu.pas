unit cmfpformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ExtCtrls, DBGridEh, Grids, StdCtrls, Buttons,
  GridsEh;

type
  Tfrmcmfp = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FieldChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcmfp: Tfrmcmfp;

implementation

uses mainformu, xgslu, xgsl1formu;

{$R *.dfm}

procedure Tfrmcmfp.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
  if label1.Caption='XGSL1' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select sum(mqty) as q1,sum(mqty1) as q2 from tbl_lwo_tmp where dt=:x1 and pline=:x2 and seq=:x3';
      params[0].asdatetime:=query1.fieldbyname('dt').value;
      params[1].asstring:=query1.fieldbyname('pline').value;
      params[2].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('q1').isnull then begin
        if label1.Caption='XGSL' then
        frmxgsl.SpinEdit1.Value:=fieldbyname('q1').value
        else if label1.Caption='XGSL1' then
        frmxgsl1.SpinEdit1.Value:=fieldbyname('q1').value;
      end else begin
        if label1.Caption='XGSL' then
        frmxgsl.SpinEdit1.Value:=0
        else if label1.Caption='XGSL1' then
        frmxgsl1.SpinEdit1.Value:=0;
      end;
      if not fieldbyname('q2').isnull then begin
        if label1.Caption='XGSL1' then begin
          frmxgsl1.SpinEdit2.Value:=fieldbyname('q2').value;
          frmxgsl1.Label3.Caption:='1';
        end;
      end else begin
        if label1.Caption='XGSL1' then begin
          frmxgsl1.SpinEdit2.Value:=0;
          frmxgsl1.Label3.Caption:='0';
        end;
      end;
    end;
    frmcmfp.close;
  //end;
  end;
end;

procedure Tfrmcmfp.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftdatetime,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='update tbl_lwo_tmp set mqty=:x1,mqty1=:x6,tmqty=:x7,tq1=:x8,tq2=:x9 where dt=:x2 and pline=:x3 and seq=:x4 and did=:x5';
      str1:='update tbl_lwo_tmp set ';
      if not query1.fieldbyname('mqty').isnull then
      str1:=str1+'mqty='+query1.fieldbyname('mqty').asstring+','
      else str1:=str1+'mqty=0,';
      if not query1.fieldbyname('mqty1').isnull then
      str1:=str1+'mqty1='+query1.fieldbyname('mqty1').asstring+','
      else str1:=str1+'mqty1=0,';
      str1:=str1+'tmqty='+query1.fieldbyname('tmqty').asstring+',';
      str1:=str1+'tq1='+query1.fieldbyname('tq1').asstring+',';
      str1:=str1+'tq2='+query1.fieldbyname('tq2').asstring+' ';
      str1:=str1+'where dt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt').value)+''' ';
      str1:=str1+'and pline='''+query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and did='+query1.fieldbyname('did').asstring;

      if not query1.fieldbyname('mqty').isnull then
      params[0].asinteger:=query1.fieldbyname('mqty').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('mqty1').isnull then
      params[1].asinteger:=query1.fieldbyname('mqty1').value
      else params[1].asinteger:=0;
      params[2].asinteger:=query1.fieldbyname('tmqty').Value;
      params[3].asinteger:=query1.fieldbyname('tq1').value;
      params[4].asinteger:=query1.fieldbyname('tq2').value;
      params[5].asdatetime:=query1.fieldbyname('dt').value;
      params[6].asstring:=query1.fieldbyname('pline').value;
      params[7].asinteger:=query1.fieldbyname('seq').value;
      params[8].asinteger:=query1.fieldbyname('did').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_lwo_tmp set ';
      if not query1.fieldbyname('mqty').isnull then
      str1:=str1+'mqty='+query1.fieldbyname('mqty').asstring+','
      else str1:=str1+'mqty=0,';
      if not query1.fieldbyname('mqty1').isnull then
      str1:=str1+'mqty1='+query1.fieldbyname('mqty1').asstring+','
      else str1:=str1+'mqty1=0,';
      str1:=str1+'tmqty='+query1.fieldbyname('tmqty').asstring+',';
      str1:=str1+'tq1='+query1.fieldbyname('tq1').asstring+',';
      str1:=str1+'tq2='+query1.fieldbyname('tq2').asstring+' ';
      str1:=str1+'where dt='''+formatdatetime('yyyy-MM-dd hh:nn:ss',query1.fieldbyname('dt').value)+''' ';
      str1:=str1+'and pline='''+query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and did='+query1.fieldbyname('did').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select sum(mqty) as q1,sum(mqty1) as q2 from tbl_lwo_tmp where dt=:x1 and pline=:x2 and seq=:x3';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    params[1].asstring:=query1.fieldbyname('pline').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then begin
      if label1.Caption='XGSL' then
      frmxgsl.SpinEdit1.Value:=fieldbyname('q1').value
    end else begin
      if label1.Caption='XGSL' then
      frmxgsl.SpinEdit1.Value:=0
    end;
  end;
end;

procedure Tfrmcmfp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcmfp:=nil;
end;

procedure Tfrmcmfp.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('mqty').onchange:=fieldchange;
  //query1.fieldbyname('mqty1').onchange:=fieldchange;
end;

procedure Tfrmcmfp.FieldChange(Sender: TField);
var
  q1,q2:integer;
begin
  if not query1.fieldbyname('mqty').IsNull then q1:=query1.fieldbyname('mqty').value else q1:=0;
  if not query1.fieldbyname('mqty1').isnull then q2:=query1.fieldbyname('mqty1').value else q2:=0;
  //if query1.fieldbyname('pqty').value>=query1.fieldbyname('tqty').value then
  if query1.fieldbyname('cmp').value=false then
  query1.fieldbyname('tmqty').value:=query1.fieldbyname('pqty').value-q1-q2
  else query1.fieldbyname('tmqty').value:=query1.fieldbyname('tqty').value-q1-q2;
  //Calculation for TQ1 / TQ2
  if query1.fieldbyname('tqty').value>=query1.fieldbyname('tmqty').value then
  query1.fieldbyname('tq1').value:=query1.fieldbyname('tqty').value-query1.fieldbyname('tmqty').value
  else query1.fieldbyname('tq1').value:=0;
  if query1.fieldbyname('ttqty').value>=query1.fieldbyname('tmqty').value then
  query1.fieldbyname('tq2').value:=query1.fieldbyname('ttqty').value-query1.fieldbyname('tmqty').value
  else query1.fieldbyname('tq2').value:=0;
end;

end.
 