unit useru;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls;

type
  Tfrmuser = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    Table1: TTable;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    Table2: TTable;
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmuser: Tfrmuser;

implementation

uses dlu, mainu;

{$R *.DFM}

procedure Tfrmuser.FormShow(Sender: TObject);
begin
  if frmxtdl.combobox1.text='SYSTEM' then
    dbedit1.readonly:=false
  else
    dbedit1.readonly:=true;
  edit1.readonly:=true;
  edit2.readonly:=true;
  edit3.readonly:=true;
  edit1.text:='';
  edit2.text:='';
  edit3.text:='';
end;

procedure Tfrmuser.BitBtn5Click(Sender: TObject);
begin
  edit1.readonly:=false;
  edit2.readonly:=false;
  edit3.readonly:=false;
  edit2.setfocus;
end;

procedure Tfrmuser.BitBtn1Click(Sender: TObject);
begin
  if edit2.readonly=false then
  begin
    if edit2.text<>'' then
    begin
      if edit2.text=edit3.text then
      begin
        table1.edit;
        table1.fieldbyname('passwrd').value:=edit2.text;
        table1.post;
        edit1.text:='';
        edit2.text:='';
        edit3.text:='';
        edit1.readonly:=true;
        edit2.readonly:=true;
        edit3.readonly:=true;
      end
      else
      begin
        application.messagebox('確認密碼錯誤!','提示信息',mb_ok+mb_iconinformation);
        edit3.setfocus;
      end;
    end
    else
    begin
      if edit3.text='' then
      begin
        table1.edit;
        table1.fieldbyname('passwrd').value:='';
        table1.post;
        edit1.text:='';
        edit2.text:='';
        edit3.text:='';
        edit1.readonly:=true;
        edit2.readonly:=true;
        edit3.readonly:=true;
      end
      else
      begin
        application.messagebox('確認密碼錯誤!','提示信息',mb_ok+mb_iconinformation);
        edit3.setfocus;
      end;
    end;
  end;
end;

procedure Tfrmuser.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmuser.BitBtn3Click(Sender: TObject);
begin
  table1.append;
  dbedit1.setfocus;
  edit1.text:='';
  edit2.text:='';
  edit3.text:='';
end;

procedure Tfrmuser.BitBtn4Click(Sender: TObject);
begin
  if application.messagebox('要刪除此用戶碼?','提示信息',mb_okcancel+mb_iconquestion)=idok then
  begin
    table1.delete;
  end;
end;

procedure Tfrmuser.Edit1Change(Sender: TObject);
begin
  query1.close;
  query1.sql.clear;
  query1.sql.add('select passwrd from yh where nam=:name');
  query1.prepare;
  query1.params[0].asstring:=dbedit1.text;
  query1.open;
  if not query1.fieldbyname('passwrd').isnull then
  begin
   if query1.fieldbyname('passwrd').value=edit1.text then
   begin
    edit1.text:='';
    edit1.readonly:=true;
    edit2.readonly:=false;
    edit3.readonly:=false;
    edit2.setfocus;
   end
   else
   begin
    edit2.readonly:=true;
    edit3.readonly:=true;
   end;
  end
  else
  begin
   if edit1.text='' then
   begin
    edit1.text:='';
    edit1.readonly:=true;
    edit2.readonly:=false;
    edit3.readonly:=false;
    edit2.setfocus;
   end
   else
   begin
    edit2.readonly:=true;
    edit3.readonly:=true;
   end;
  end;
end;

procedure Tfrmuser.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    query1.close;
    query1.sql.clear;
    query1.sql.add('select passwrd from yh where nam=:name');
    query1.prepare;
    query1.params[0].asstring:=dbedit1.text;
    query1.open;
    if not query1.fieldbyname('passwrd').isnull then
    begin
     if query1.fieldbyname('passwrd').value=edit1.text then
     begin
      edit1.text:='';
      edit1.readonly:=true;
      edit2.readonly:=false;
      edit3.readonly:=false;
      edit2.setfocus;
     end
     else
     begin
      edit2.readonly:=true;
      edit3.readonly:=true;
     end;
    end
    else
    begin
     if edit1.text='' then
     begin
      edit1.text:='';
      edit1.readonly:=true;
      edit2.readonly:=false;
      edit3.readonly:=false;
      edit2.setfocus;
     end
     else
     begin
      edit2.readonly:=true;
      edit3.readonly:=true;
     end;
    end;
  end;
end;

procedure Tfrmuser.Table1AfterPost(DataSet: TDataSet);
begin
  dbisavechanges(table1.handle);
end;

procedure Tfrmuser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  query1.close;
  query1.sql.clear;
  query1.sql.add('select nam from yh');
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.sql.clear;
    query2.sql.add('select nam from qx where nam=:nam');
    query2.prepare;
    query2.params[0].asstring:=query1.fieldbyname('nam').value;
    query2.open;
    if query2.recordcount=0 then
    begin
     table2.append;
     table2.fieldbyname('nam').value:=query1.fieldbyname('nam').value;
     table2.post;
    end;
    query1.next;
   end;
  end;
  query1.close;
  query1.sql.clear;
  query1.sql.add('select * from qx');
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.sql.clear;
    query2.sql.add('select * from yh where nam=:nam');
    query2.prepare;
    query2.params[0].asstring:=query1.fieldbyname('nam').value;
    query2.open;
    if query2.recordcount=0 then query1.delete;
    query1.next;
   end;
  end;
  frmmain.enabled:=true;
end;

end.
