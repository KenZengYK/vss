unit usru;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, DBClient;

type
  Tfrmusr = class(TForm)
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
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    Table1: TClientDataSet;
    Table2: TClientDataSet;
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
    procedure FormDeactivate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmusr: Tfrmusr;

implementation
uses loginu;
{$R *.DFM}

procedure Tfrmusr.FormShow(Sender: TObject);
begin
  if frmlogin.combobox1.text='system' then
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

procedure Tfrmusr.BitBtn5Click(Sender: TObject);
begin
  edit1.readonly:=false;
  edit2.readonly:=true;
  edit3.readonly:=true;
  edit1.setfocus;
end;

procedure Tfrmusr.BitBtn1Click(Sender: TObject);
begin
  if edit2.readonly=false then
  begin
    if edit2.text<>'' then
    begin
      if edit2.text=edit3.text then
      begin
        table1.edit;
        table1.fieldbyname('pswrd').value:=edit2.text;
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
        table1.fieldbyname('pswrd').value:='';
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

procedure Tfrmusr.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmusr.BitBtn3Click(Sender: TObject);
begin
  table1.append;
  dbedit1.setfocus;
  edit1.text:='';
  edit2.text:='';
  edit3.text:='';
end;

procedure Tfrmusr.BitBtn4Click(Sender: TObject);
begin
  if application.messagebox('要刪除此用戶碼?','提示信息',mb_okcancel+mb_iconquestion)=idok then
  begin
    table1.delete;
  end;
end;

procedure Tfrmusr.Edit1Change(Sender: TObject);
begin
  query1.close;
  query1.params.clear;
  query1.params.createparam(ftstring,'name',ptinput);
  query1.commandtext:='select pswrd from SZ_usrtbl where usr=:name';
//  query1.prepare;
  query1.params[0].asstring:=dbedit1.text;
  query1.open;
  if not query1.fieldbyname('pswrd').isnull then
  begin
   if query1.fieldbyname('pswrd').value=edit1.text then
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

procedure Tfrmusr.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    query1.close;
    query1.params.clear;
    query1.params.createparam(ftstring,'name',ptinput);    
    query1.commandtext:='select pswrd from SZ_usrtbl where usr=:name';
//    query1.prepare;
    query1.params[0].asstring:=dbedit1.text;
    query1.open;
    if not query1.fieldbyname('pswrd').isnull then
    begin
     if query1.fieldbyname('pswrd').value=edit1.text then
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

procedure Tfrmusr.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmusr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  query1.close;
  query1.params.clear;
  query1.commandtext:='select usr from SZ_usrtbl';
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.params.clear;
    query1.params.createparam(ftstring,'nam',ptinput);    
    query2.commandtext:='select usr from SZ_athtbl where usr=:nam';
//    query2.prepare;
    query2.params[0].asstring:=query1.fieldbyname('usr').value;
    query2.open;
    if query2.recordcount=0 then
    begin
     table2.append;
     table2.fieldbyname('usr').value:=query1.fieldbyname('usr').value;
     table2.post;
    end;
    query1.next;
   end;
  end;
  query1.close;
  query1.params.clear;
  query1.commandtext:='select usr from SZ_athtbl';
  query1.open;
  if query1.recordcount>0 then
  begin
   query1.first;
   while not query1.eof do
   begin
    query2.close;
    query2.params.clear;
    query2.params.createparam(ftstring,'nam',ptinput);
    query2.commandtext:='select usr from SZ_usrtbl where usr=:nam';
//    query2.prepare;
    query2.params[0].asstring:=query1.fieldbyname('usr').value;
    query2.open;
    if query2.recordcount=0 then query1.delete;
    query1.next;
   end;
  end;
end;

procedure Tfrmusr.FormDeactivate(Sender: TObject);
begin
  close;
end;

procedure Tfrmusr.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then edit3.setfocus;
end;

end.
