unit pdnlogcstformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB, DBClient;

type
  Tfrmpdnlogcst = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnlogcst: Tfrmpdnlogcst;

implementation

uses mainformu, selpdnformu;

{$R *.dfm}

procedure Tfrmpdnlogcst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdnlogcst:=nil;
end;

procedure Tfrmpdnlogcst.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(fttime,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      params.createparam(ftstring,'x13',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftstring,'x13',ptinput);
      params.createparam(ftfloat,'x14',ptinput);
      params.createparam(ftfloat,'x15',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      params.createparam(ftinteger,'x12',ptinput);
      commandtext:='update tbl_pdn_pack set box=:x1,wght=:x2,cbm=:x3,indt=:x4,intm=:x5,ondt=:x6,truck=:x13,vess=:x7,lport=:x8,'
                  +'dest=:x9,pkm=:x13,fobcost=:x14,fobcost1=:x15 where seq=:x10 and seq1=:x11 and dseq=:x12';
      if not query1.fieldbyname('box').isnull then
      params[0].asinteger:=query1.fieldbyname('box').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('wght').isnull then
      params[1].asfloat:=query1.fieldbyname('wght').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('cbm').isnull then
      params[2].asfloat:=query1.fieldbyname('cbm').value
      else params[2].asfloat:=0;
      if not query1.fieldbyname('indt').isnull then
      params[3].asdate:=query1.fieldbyname('indt').value;
      if not query1.fieldbyname('intm').isnull then
      params[4].astime:=query1.fieldbyname('intm').value;
      if not query1.fieldbyname('ondt').isnull then
      params[5].asdate:=query1.fieldbyname('ondt').value;
      if not query1.fieldbyname('truck').isnull then
      params[6].asstring:=query1.fieldbyname('truck').value
      else params[6].asstring:='Truck';
      if not query1.fieldbyname('vess').isnull then
      params[7].asstring:=query1.fieldbyname('vess').value
      else params[7].asstring:='';
      if not query1.fieldbyname('lport').isnull then
      params[8].asstring:=query1.fieldbyname('lport').value
      else params[8].asstring:='';
      if not query1.fieldbyname('dest').isnull then
      params[9].asstring:=query1.fieldbyname('dest').value
      else params[9].asstring:='';
      if not query1.fieldbyname('pkm').isnull then
      params[10].asstring:=query1.fieldbyname('pkm').value
      else params[10].asstring:='';
      if not query1.fieldbyname('fobcost').isnull then
      params[11].asfloat:=query1.fieldbyname('fobcost').value
      else params[11].asfloat:=0;
      if not query1.fieldbyname('fobcost1').isnull then
      params[12].asfloat:=query1.fieldbyname('fobcost1').value
      else params[12].asfloat:=0;
      params[13].asinteger:=query1.fieldbyname('seq').value;
      params[14].asinteger:=query1.fieldbyname('seq1').value;
      params[15].asinteger:=query1.fieldbyname('dseq').value;
      execute;
    end;
  end;
end;

procedure Tfrmpdnlogcst.BitBtn1Click(Sender: TObject);
begin
  if query1.State=dsedit then query1.post;
end;

end.
 