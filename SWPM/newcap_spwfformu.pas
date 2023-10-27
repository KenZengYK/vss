unit newcap_spwfformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, DB,
  DBClient, frxClass, frxDBSet;

type
  Tfrmnewcap_spwf = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Label55: TLabel;
    DBEdit55: TDBEdit;
    Label56: TLabel;
    DBEdit56: TDBEdit;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn2: TBitBtn;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure QuerySECTChange(Sender: TField);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure DBGridEh1Columns10EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_spwf: Tfrmnewcap_spwf;

implementation

uses mainformu, newcap_wfformu, newcap_wf_detailformu, newcap_spwf_detailformu;

{$R *.dfm}

procedure Tfrmnewcap_spwf.BitBtn1Click(Sender: TObject);
begin
  if query1.State=dsEdit then query1.Post;  
end;

procedure Tfrmnewcap_spwf.DBGridEh1Columns10EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmnewcap_spwf_detail=nil then frmnewcap_spwf_detail:=tfrmnewcap_spwf_detail.Create(nil);
  with frmnewcap_spwf_detail.Query1 do begin
    close;
    params.Clear;
    params.CreateParam(ftdate,'x1',ptinput);
    params.CreateParam(ftstring,'x2',ptinput);
    params.CreateParam(ftstring,'x3',ptinput);
    params.CreateParam(ftstring,'x4',ptinput);
    params.CreateParam(ftstring,'x5',ptinput);
    params.CreateParam(ftstring,'x6',ptinput);
    commandtext:='select * from tbl_cap_spwf01 where dt=:x1 and wfid=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5 and fccs=:x6';
    params[0].AsDate:=query1.FieldByName('dt').Value;
    params[1].AsString:=query1.FieldByName('wfid').Value;
    params[2].AsString:=query1.FieldByName('j2_job').Value;
    params[3].AsString:=query1.FieldByName('rwo').Value;
    params[4].AsString:=query1.FieldByName('acol').Value;
    params[5].AsString:=query1.FieldByName('fccs').Value;
    open;
  end;
  frmnewcap_spwf_detail.Show;
end;

procedure Tfrmnewcap_spwf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_spwf:=nil;
end;

procedure Tfrmnewcap_spwf.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.FieldByName('sect').OnChange:=querySECTChange;
end;

procedure Tfrmnewcap_spwf.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update tbl_cap_spwf1 set ';
  if not query1.fieldbyname('sect').isnull then
  str1:=str1+'sect='+query1.FieldByName('sect').AsString+','
  else str1:=str1+'sect=0,';
  str1:=str1+'eff='+query1.FieldByName('eff').AsString
       +' where wfid='''+query1.FieldByName('wfid').Value+''' and dt='''+formatdatetime('yyyy-MM-dd',query1.FieldByName('dt').Value)+''' '
       +'and j2_job='''+query1.FieldByName('j2_job').Value+''' and rwo='''+query1.FieldByName('rwo').Value+''' and acol='''
       +query1.FieldByName('acol').Value+''' '+'and fccs='''+query1.FieldByName('fccs').Value+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

end;

procedure Tfrmnewcap_spwf.QuerySECTChange(Sender: TField);
begin
  if not query1.FieldByName('sect').isnull then begin
    if query1.FieldByName('sect').Value>0 then
    query1.FieldByName('eff').Value:=query1.FieldByName('tsah').Value*200.00/query1.FieldByName('sect').Value
    else query1.FieldByName('eff').Value:=0.00;
  end else query1.FieldByName('eff').Value:=0.00;
end;

end.
