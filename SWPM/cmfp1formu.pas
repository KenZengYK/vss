unit cmfp1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh;

type
  Tfrmcmfp1 = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FieldChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcmfp1: Tfrmcmfp1;

implementation

uses mainformu, xgslu, xgsl1formu;

{$R *.dfm}

procedure Tfrmcmfp1.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
  if label1.Caption='XGSL1' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select sum(mqty) as q1 from tbl_lwo_halt where dt=:x1 and pline=:x2 and seq=:x3';
      params[0].asdatetime:=query1.fieldbyname('dt').value;
      params[1].asstring:=query1.fieldbyname('pline').value;
      params[2].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('q1').isnull then begin
        if label1.Caption='XGSL' then
        frmxgsl.SpinEdit1.Value:=fieldbyname('q1').value
        else if label1.Caption='XGSL1' then begin
          frmxgsl1.SpinEdit1.Value:=fieldbyname('q1').value;
          frmxgsl1.Label3.Caption:='1';
        end;
      end else begin
        if label1.Caption='XGSL' then
        frmxgsl.SpinEdit1.Value:=0
        else if label1.Caption='XGSL1' then
        frmxgsl1.SpinEdit1.Value:=0;
      end;
    end;
    frmcmfp1.close;
  end;
end;

procedure Tfrmcmfp1.FieldChange(Sender: TField);
var
  q1:integer;
begin
  if not query1.fieldbyname('mqty1').IsNull then q1:=query1.fieldbyname('mqty1').value else q1:=0;
  if query1.fieldbyname('pqty').value>=q1 then query1.fieldbyname('mqty').value:=query1.fieldbyname('pqty').value-q1
  else query1.fieldbyname('mqty').value:=0;

  //calculation quantity for DSQN
  //Cut-off at point: 1.Picked  2.T1  3.Sewn  4.T2  5.iPack  6.cPacked  7.AQL  8.T3  [?(9.Ex-fty  10.Invd)]
  //if cut-off is before from sewn, the USQN is not finish, but if cut-off is after sewn, the USQN maybe is finished.


  {
  if query1.fieldbyname('tqty').value>=q1 then query1.fieldbyname('tq1').value:=query1.fieldbyname('tqty').value-q1
  else query1.fieldbyname('tq1').value:=0;
  if query1.fieldbyname('ttqty').value>=q1 then query1.fieldbyname('tq2').value:=query1.fieldbyname('ttqty').value-q1
  else query1.fieldbyname('tq2').value:=0;
  }
end;

procedure Tfrmcmfp1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcmfp1:=nil;
end;

procedure Tfrmcmfp1.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('mqty1').onchange:=fieldchange;
end;

procedure Tfrmcmfp1.Query1AfterPost(DataSet: TDataSet);
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
      params.createparam(ftdatetime,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='update tbl_lwo_halt set mqty=:x1,mqty1=:x6 where dt=:x2 and pline=:x3 and seq=:x4 and did=:x5';

      if not query1.fieldbyname('mqty').isnull then
      params[0].asinteger:=query1.fieldbyname('mqty').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('mqty1').isnull then
      params[1].asinteger:=query1.fieldbyname('mqty1').value
      else params[1].asinteger:=0;
      params[2].asdatetime:=query1.fieldbyname('dt').value;
      params[3].asstring:=query1.fieldbyname('pline').value;
      params[4].asinteger:=query1.fieldbyname('seq').value;
      params[5].asinteger:=query1.fieldbyname('did').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_lwo_halt set ';
      if not query1.fieldbyname('mqty').isnull then
      str1:=str1+'mqty='+query1.fieldbyname('mqty').asstring+','
      else str1:=str1+'mqty=0,';
      if not query1.fieldbyname('mqty1').isnull then
      str1:=str1+'mqty1='+query1.fieldbyname('mqty1').asstring+' '
      else str1:=str1+'mqty1=0 ';
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
    commandtext:='select sum(mqty) as q1 from tbl_lwo_halt where dt=:x1 and pline=:x2 and seq=:x3';
    params[0].asdatetime:=query1.fieldbyname('dt').value;
    params[1].asstring:=query1.fieldbyname('pline').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then begin
      if label1.Caption='XGSL1' then
      frmxgsl1.SpinEdit1.Value:=fieldbyname('q1').value;
    end else begin
      if label1.Caption='XGSL1' then
      frmxgsl1.SpinEdit1.Value:=0
    end;
  end;
end;

end.
 