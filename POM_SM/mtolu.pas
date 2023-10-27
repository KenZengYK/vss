unit mtolu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBClient, variants;

type
  Tfrmmtol = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure FormDeactivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmtol: Tfrmmtol;

implementation
uses mainu, loginu, sampletblu, siztblu;
{$R *.DFM}

procedure Tfrmmtol.FormDeactivate(Sender: TObject);
begin
  close;
end;

procedure Tfrmmtol.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmtol.FormShow(Sender: TObject);
begin
  edit1.text:='';
  edit3.text:='';
  edit3.readonly:=true;
end;

procedure Tfrmmtol.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    query1.close;
    query1.params.clear;
    //query1.params.createparam(ftstring,'usr',ptinput);
    query1.commandtext:='select pswrd from SZ_usrtbl where usr='''+frmmain.combobox1.text+'''';
//    query1.prepare;
    //query1.params[0].asstring:=frmmain.combobox1.text;
    query1.open;
    if query1.recordcount>0 then
    begin
      if (not query1.fieldbyname('pswrd').isnull) and (edit1.text=query1.fieldbyname('pswrd').value) then
      begin
        edit3.readonly:=false;
        edit3.setfocus;
      end
      else
      begin
        if (query1.fieldbyname('pswrd').isnull) and (edit1.text='') then
        begin
          edit3.readonly:=false;
          edit3.setfocus;
        end;
      end;
    end
    else
    begin
      if edit1.text='admin' then
      begin
        edit3.readonly:=false;
        edit3.setfocus;
      end;
    end;
  end;
end;

procedure Tfrmmtol.BitBtn1Click(Sender: TObject);
begin
  if edit3.readonly=false then
  begin
    if application.messagebox('要修改此容差嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      if label4.caption='samp' then
      begin
        if edit3.text<>'' then
        begin
          frmsampletbl.table3.edit;
          frmsampletbl.table3.fieldbyname('tolerence').value:=edit3.text;
          frmsampletbl.table3.post;
        end
        else
        begin
          frmsampletbl.table3.edit;
          frmsampletbl.table3.fieldbyname('tolerence').value:=null;
          frmsampletbl.table3.post;
        end;
      end
      else
      begin
        if edit3.text<>'' then
        begin
          frmsiztbl.table3.edit;
          frmsiztbl.table3.fieldbyname('tolerence').value:=edit3.text;
          frmsiztbl.table3.post;
        end
        else
        begin
          frmsiztbl.table3.edit;
          frmsiztbl.table3.fieldbyname('tolerence').value:=null;
          frmsiztbl.table3.post;
        end;
      end;
    end;
  end;
  close;
end;

end.
