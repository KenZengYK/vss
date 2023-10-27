unit insertsiz1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ExtCtrls,dbclient;

type
  Tfrminsertsiz1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    opt1: TRadioGroup;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure opt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frminsertsiz1: Tfrminsertsiz1;

implementation
uses sampletblu;
{$R *.DFM}

procedure Tfrminsertsiz1.Button1Click(Sender: TObject);
var
  i:integer;
begin
 screen.Cursor:=crhourglass;
 if opt1.itemindex=0 then begin
  if edit1.text<>'' then begin
    for i:=36 downto strtoint(label5.caption)+1 do begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'stylno',ptinput);
        commandtext:='update SZ_sampsize2 set size'+inttostr(i)+'=size'+inttostr(i-1)+',csiz'+inttostr(i)+'=csiz'+inttostr(i-1)+' where stylno=:stylno';
//        prepare;
        params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        Execute;
        close;
        params.clear;
        params.createparam(ftstring,'stylno',ptinput);
        commandtext:='update SZ_sampsize1 set rst'+inttostr(i)+'=rst'+inttostr(i-1)+' where stylno=:stylno';
//        prepare;
        params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        Execute;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'stylno',ptinput);
      params.createparam(ftstring,'siz1',ptinput);
      params.createparam(ftstring,'csiz1',ptinput);
      commandtext:='update SZ_sampsize2 set size'+label5.caption+'=:siz1,csiz'+label5.caption+'=:csiz1 where stylno=:stylno';
//      prepare;
      params[0].asstring:=edit1.text;
      params[1].asstring:=edit1.text;
      params[2].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
      Execute;
      close;
      params.clear;
      params.createparam(ftstring,'stylno',ptinput);
      commandtext:='update SZ_sampsize1 set rst'+label5.caption+'=null where stylno=:stylno';
//      prepare;
      params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
      Execute;
    end;
    frmsampletbl.table2.close;
    frmsampletbl.table2.open;
    frmsampletbl.table3.close;
    frmsampletbl.table3.open;
    close;
  end;
 end
 else begin
  if application.MessageBox('要刪除此尺碼嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
    for i:=strtoint(label5.caption) to 35 do begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'stylno',ptinput);
        commandtext:='update SZ_sampsize2 set size'+inttostr(i)+'=size'+inttostr(i+1)+',csiz'+inttostr(i)+'=csiz'+inttostr(i+1)+' where stylno=:stylno';
//        prepare;
        params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        Execute;
        close;
        params.clear;
        params.createparam(ftstring,'stylno',ptinput);
        commandtext:='update SZ_sampsize1 set rst'+inttostr(i)+'=rst'+inttostr(i+1)+' where stylno=:stylno';
//        prepare;
        params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        Execute;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'stylno',ptinput);
      params.createparam(ftstring,'siz1',ptinput);
      params.createparam(ftstring,'csiz1',ptinput);
      commandtext:='update SZ_sampsize2 set size36=:siz1,csiz36=:csiz1 where stylno=:stylno';
//      prepare;
      params[0].asstring:='';
      params[1].asstring:='';
      params[2].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
      Execute;
      close;
      params.clear;
      params.createparam(ftstring,'stylno',ptinput);
      commandtext:='update SZ_sampsize1 set rst36=null where stylno=:stylno';
//      prepare;
      params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
      Execute;
    end;
    frmsampletbl.table2.close;
    frmsampletbl.table2.open;
    frmsampletbl.table3.close;
    frmsampletbl.table3.open;
    close;
  end;
 end;
 screen.cursor:=crdefault;
end;

procedure Tfrminsertsiz1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrminsertsiz1.FormShow(Sender: TObject);
begin
  opt1.ItemIndex:=0;
  edit1.enabled:=true;
  edit1.text:='';
end;

procedure Tfrminsertsiz1.opt1Click(Sender: TObject);
begin
  if opt1.itemindex=0 then begin
    edit1.text:='';
    edit1.Enabled:=true;
    label1.caption:='此尺碼將插入到:';
    label3.visible:=true;
  end
  else begin
    edit1.text:='';
    edit1.enabled:=false;
    label1.caption:='將刪除此尺碼:';
    label3.visible:=false;
  end;
end;

end.
