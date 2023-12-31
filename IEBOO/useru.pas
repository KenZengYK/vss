unit useru;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, StdCtrls, Buttons, Db, Mask, DBCtrls, Grids, DBGrids, ADODB,
  DBClient;

type
  Tfrmuser = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    query1: TClientDataSet;
    Table1: TClientDataSet;
    query2: TClientDataSet;
    Table2: TClientDataSet;
    Table1Nam: TStringField;
    Table1Passwrd: TStringField;
    Table1R1: TBooleanField;
    Table1R2: TBooleanField;
    Table1R3: TBooleanField;
    Table1R4: TBooleanField;
    Table1R5: TBooleanField;
    Table1R6: TBooleanField;
    Table1R7: TBooleanField;
    Table1R8: TBooleanField;
    Table1R9: TBooleanField;
    Table1R10: TBooleanField;
    Table1R11: TBooleanField;
    Table1R12: TBooleanField;
    Table1R13: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Table1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmuser: Tfrmuser;

implementation

uses dlu;

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
  edit2.readonly:=true;
  edit3.readonly:=true;
  edit1.setfocus;
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
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'nam',ptinput);
      commandtext:='delete from ie_qx where nam=:nam';
      params[0].asstring:=table1.fieldbyname('nam').value;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'nam',ptinput);
      commandtext:='delete from ie_yh where nam=:nam';
      params[0].asstring:=table1.fieldbyname('nam').value;
      execute;
    end;
    table1.delete;
  end;
end;

procedure Tfrmuser.Edit1Change(Sender: TObject);
begin
  query1.close;
  query1.params.clear;
  Query1.params.createparam(ftstring,'nam',ptinput);
  query1.commandtext:='select passwrd from IE_yh where nam=:name';
//  query1.prepare;
  query1.params[0].value:=dbedit1.text;
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
    query1.params.clear;
    Query1.params.createparam(ftstring,'name',ptinput);
    query1.commandtext:='select passwrd from IE_yh where nam=:name';
//    query1.prepare;
    query1.params[0].value:=dbedit1.text;
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

procedure Tfrmuser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  query1.close;
  query1.params.clear;
  query1.commandtext:='select nam from IE_yh';
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.params.clear;
    Query2.params.CreateParam(ftstring,'nam',ptinput);
    query2.commandtext:='select nam from IE_qx where nam=:nam';
//    query2.prepare;
    query2.params[0].value:=query1.fieldbyname('nam').value;
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
  query1.params.clear;
  query1.commandtext:='select * from IE_qx';
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.params.clear;
    Query2.Params.CreateParam(ftstring,'nam',ptinput);
    query2.commandtext:='select * from IE_yh where nam=:nam';
//    query2.prepare;
    query2.params[0].value:=query1.fieldbyname('nam').value;
    query2.open;
    if query2.recordcount=0 then query1.delete;
    query1.next;
   end;
  end;
end;

procedure Tfrmuser.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

end.
