unit wl1itemformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGridEh, StdCtrls, Buttons;

type
  Tfrmwl1item = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwl1item: Tfrmwl1item;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmwl1item.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
  action:=cafree;
  frmwl1item:=nil;
end;

procedure Tfrmwl1item.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmwl1item.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(t_seq) as seq from tblwl1item';
    open;
    if not fieldbyname('seq').isnull then seq:=fieldbyname('seq').value+1
    else seq:=1; 
  end;
  query1.fieldbyname('t_seq').value:=seq;
end;

procedure Tfrmwl1item.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmwl1item.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmwl1item.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('要刪除此項目?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='delete from tblwl1item where t_seq=:seq';
      params[0].asinteger:=query1.fieldbyname('t_seq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmwl1item.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmwl1item.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tblwl1item';
    open;
  end;
end;

procedure Tfrmwl1item.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select t_seq from tblwl1item where t_seq=:seq';
      params[0].asinteger:=query1.fieldbyname('t_seq').value;
      open;
      if not fieldbyname('t_seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'item',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='update tblwl1item set t_item=:item where t_seq=:seq';
          params[0].asstring:=query1.fieldbyname('t_item').value;
          params[1].asinteger:=query1.fieldbyname('t_seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'item',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='insert into tblwl1item(t_item,t_seq) values(:item,:seq)';
          params[0].asstring:=query1.fieldbyname('t_item').value;
          params[1].asinteger:=query1.fieldbyname('t_seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

end.
