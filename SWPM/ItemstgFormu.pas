unit ItemstgFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, ExtCtrls, GridsEh, DBGridEh;

type
  TfrmItems_Stdby = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItems_Stdby: TfrmItems_Stdby;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure TfrmItems_Stdby.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure TfrmItems_Stdby.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this stage?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_items_stg where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure TfrmItems_Stdby.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure TfrmItems_Stdby.BitBtn5Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
  if not query1.fieldbyname('stg_cde').isnull then begin
    worksheet1.tblshedule.edit;
    if worksheet1.tblshedule.fieldbyname('tplant').value='CL' then begin
      if not query1.fieldbyname('stg_desc_e').isnull then
      worksheet1.tblshedule.fieldbyname('item_fm').value:=query1.fieldbyname('stg_desc_e').value
      else worksheet1.tblshedule.fieldbyname('item_fm').value:='';
    end else begin
      if not query1.fieldbyname('stg_desc').isnull then
      worksheet1.tblshedule.fieldbyname('item_fm').value:=query1.fieldbyname('stg_desc').value
      else worksheet1.tblshedule.fieldbyname('item_fm').value:='';
    end;
    worksheet1.tblshedule.post;
  end;
  frmItems_Stdby.close;
end;

procedure TfrmItems_Stdby.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmItems_Stdby:=nil;
end;

procedure TfrmItems_Stdby.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_items_stg';
    open;
  end;
end;

procedure TfrmItems_Stdby.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select seq from tbl_items_stg where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('seq').isnull then begin
      str1:='update tbl_items_stg set ';
      if not query1.fieldbyname('stg_cde').isnull then
      str1:=str1+'stg_cde='''+query1.fieldbyname('stg_cde').value+''','
      else str1:=str1+'stg_cde='''',';
      if not query1.fieldbyname('stg_desc').isnull then
      str1:=str1+'stg_desc='''+query1.fieldbyname('stg_desc').value+''','
      else str1:=str1+'stg_desc='''',';
      if not query1.fieldbyname('stg_desc_e').isnull then
      str1:=str1+'stg_desc_e='''+query1.fieldbyname('stg_desc_e').value+''' '
      else str1:=str1+'stg_desc_e='''' ';
      str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
    end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'seq',ptinput);
        params.createparam(ftstring,'rcde',ptinput);
        params.createparam(ftstring,'rdesc',ptinput);
        params.createparam(ftstring,'rdesc_e',ptinput);
        commandtext:='insert into tbl_items_stg(seq,stg_cde,stg_desc,stg_desc_e) values(:x1,:x2,:x3,:x4)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        if not query1.fieldbyname('stg_cde').isnull then
        params[1].asstring:=query1.fieldbyname('stg_cde').value
        else params[1].asstring:='';
        if not query1.fieldbyname('stg_desc').isnull then
        params[2].asstring:=query1.fieldbyname('stg_desc').value
        else params[2].asstring:='';
        if not query1.fieldbyname('stg_desc_e').isnull then
        params[3].asstring:=query1.fieldbyname('stg_desc_e').value
        else params[3].asstring:='';
        execute;
      end;
    end;
  end;
end;

procedure TfrmItems_Stdby.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tbl_st3_reason';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
end;

end.
