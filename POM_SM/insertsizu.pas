unit insertsizu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, ExtCtrls, DBClient;

type
  Tfrminsertsiz = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
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
  frminsertsiz: Tfrminsertsiz;

implementation
uses mainu, siztblu;
{$R *.DFM}

procedure Tfrminsertsiz.Button1Click(Sender: TObject);
var
  i:integer;
begin
 screen.cursor:=crhourglass;
 if opt1.itemindex=0 then begin
  if edit1.text<>'' then begin
    for i:=52 downto strtoint(label5.caption)+1 do begin
      with query1 do begin
        close;
        params.clear;
        //params.createparam(ftstring,'stylno',ptinput);
        commandtext:='update SZ_lsize2 set size'+inttostr(i)+'=size'+inttostr(i-1)+',csiz'+inttostr(i)+'=csiz'+inttostr(i-1)+' where stylno='''+frmsiztbl.table1.fieldbyname('stylno').value+'''';
//        prepare;
        //params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        Execute;
        close;
        params.clear;
        //params.createparam(ftstring,'stylno',ptinput);
        commandtext:='update SZ_lsize1 set rst'+inttostr(i)+'=rst'+inttostr(i-1)+' where stylno='''+frmsiztbl.table1.fieldbyname('stylno').value+'''';
//        prepare;
        //params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        Execute;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      //params.createparam(ftstring,'stylno',ptinput);
      //params.createparam(ftstring,'siz1',ptinput);
      //params.createparam(ftstring,'csiz1',ptinput);
      commandtext:='update SZ_lsize2 set size'+label5.caption+'='''+copy(edit1.text,1,3)+''',csiz'+label5.caption+'='''+edit1.text+''' where stylno='''+frmsiztbl.table1.fieldbyname('stylno').value+'''';
//      prepare;
      //params[0].asstring:=edit1.text;
      //params[1].asstring:=edit1.text;
      //params[2].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
      Execute;
      close;
      params.clear;
      //params.createparam(ftstring,'stylno',ptinput);
      commandtext:='update SZ_lsize1 set rst'+label5.caption+'=null where stylno='''+frmsiztbl.table1.fieldbyname('stylno').value+'''';
//      prepare;
      //params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
      Execute;
    end;
    frmsiztbl.table2.close;
    frmsiztbl.table2.open;
    frmsiztbl.table3.close;
    frmsiztbl.table3.open;
    close;
  end;
 end
 else begin
  if application.MessageBox('要刪除此尺碼嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
    for i:=strtoint(label5.caption) to 51 do begin
      with query1 do begin
        close;
        params.clear;
        //params.createparam(ftstring,'stylno',ptinput);
        commandtext:='update SZ_lsize2 set size'+inttostr(i)+'=size'+inttostr(i+1)+',csiz'+inttostr(i)+'=csiz'+inttostr(i+1)+' where stylno='''+frmsiztbl.table1.fieldbyname('stylno').value+'''';
//        prepare;
        //params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        Execute;
        close;
        params.clear;
        //params.createparam(ftstring,'stylno',ptinput);
        commandtext:='update SZ_lsize1 set rst'+inttostr(i)+'=rst'+inttostr(i+1)+' where stylno='''+frmsiztbl.table1.fieldbyname('stylno').value+'''';
//        prepare;
        //params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        Execute;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      //params.createparam(ftstring,'stylno',ptinput);
      //params.createparam(ftstring,'siz1',ptinput);
      //params.createparam(ftstring,'csiz1',ptinput);
      commandtext:='update SZ_lsize2 set size52='''',csiz52='''' where stylno='''+frmsiztbl.table1.fieldbyname('stylno').value+'''';
//      prepare;
      //params[0].asstring:='';
      //params[1].asstring:='';
      //params[2].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
      Execute;
      close;
      params.clear;
      //params.createparam(ftstring,'stylno',ptinput);
      commandtext:='update SZ_lsize1 set rst52=null where stylno='''+frmsiztbl.table1.fieldbyname('stylno').value+'''';
//      prepare;
      //params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
      Execute;
    end;
    frmsiztbl.table2.close;
    frmsiztbl.table2.open;
    frmsiztbl.table3.close;
    frmsiztbl.table3.open;
    close;
  end;
 end;
 screen.cursor:=crdefault;
end;

procedure Tfrminsertsiz.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrminsertsiz.FormShow(Sender: TObject);
begin
  opt1.ItemIndex:=0;
  edit1.enabled:=true;
  edit1.text:='';
end;

procedure Tfrminsertsiz.opt1Click(Sender: TObject);
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
