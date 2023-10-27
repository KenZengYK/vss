unit idcxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, wwriched, wwrichedspell, Grids, DBGridEh, Mask,
  DBCtrls, Db, DBTables, Buttons;

type
  Tfrmidcx = class(TForm)
    Label23: TLabel;
    MaskEdit1: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    ListBox1: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ListBox2: TListBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmidcx: Tfrmidcx;

implementation
uses bglyu, ybjly5u, hbjlu, hbbgu, impqcdm;
{$R *.DFM}

procedure Tfrmidcx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmidcx.BitBtn1Click(Sender: TObject);
begin
 if label2.caption='yb' then
 begin
  qcdm.qry1.close;
  qcdm.qry1.params.clear;
  qcdm.qry1.params.createparam(ftstring,'rch',ptinput);
  qcdm.qry1.commandtext:='select rno,rch,jh from yb3 where rch=:rch';
  qcdm.qry1.params[0].asstring:=maskedit1.text;
  qcdm.qry1.open;
  if qcdm.qry1.recordcount>0 then
  begin
    if frmybjly5=nil then frmybjly5:=tfrmybjly5.create(self);
    {qcdm.yb1.editkey;
    qcdm.yb1.indexfieldnames:='rno';
    qcdm.yb1.setkey;}
    qcdm.yb1.FindNearest([qcdm.qry1.fieldbyname('rno').value]);
    {qcdm.yb2.editkey;
    qcdm.yb2.indexfieldnames:='rno;jh;rch';
    qcdm.yb2.setkey;}
    qcdm.yb2.FindNearest([qcdm.qry1.fieldbyname('rno').value,qcdm.qry1.fieldbyname('jh').value,qcdm.qry1.fieldbyname('rch').value]);
    frmybjly5.show;
    close;
  end
  else
  begin
    application.messagebox('此ID#不存在,請重新輸入ID#!','提示信息',mb_iconinformation+mb_ok);
    maskedit1.SetFocus;
  end;
 end
 else
 begin
  qcdm.qry1.close;
  qcdm.qry1.params.clear;
  qcdm.qry1.params.createparam(ftstring,'rch',ptinput);
  qcdm.qry1.commandtext:='select rno,rch,jh from yhb3 where rch=:rch';
  qcdm.qry1.params[0].asstring:=maskedit1.text;
  qcdm.qry1.open;
  if qcdm.qry1.recordcount>0 then
  begin
    if frmhbjl=nil then frmhbjl:=tfrmhbjl.create(self);
    {qcdm.yhb1.editkey;
    qcdm.yhb1.indexfieldnames:='rno';
    qcdm.yhb1.setkey;}
    qcdm.yhb1.FindNearest([qcdm.qry1.fieldbyname('rno').value]);
    {qcdm.yhb2.editkey;
    qcdm.yhb2.indexfieldnames:='rno;jh;rch';
    qcdm.yhb2.setkey;}
    qcdm.yhb2.FindNearest([qcdm.qry1.fieldbyname('rno').value,qcdm.qry1.fieldbyname('jh').value,qcdm.qry1.fieldbyname('rch').value]);
    frmhbjl.show;
    close;
  end
  else
  begin
    application.messagebox('此ID#不存在,請重新輸入ID#!','提示信息',mb_iconinformation+mb_ok);
    maskedit1.SetFocus;
  end;
 end;
end;

procedure Tfrmidcx.FormShow(Sender: TObject);
begin
  listbox1.items.clear;
  listbox2.items.clear;
  if label2.caption='yb' then
  begin
   qcdm.qry2.close;
   qcdm.qry2.params.clear;
   qcdm.qry2.commandtext:='select rno,rch from yb3 where oyes=false and noca=true';
   qcdm.qry2.open;
   if qcdm.qry2.recordcount>0 then
   begin
    qcdm.qry2.first;
    while not qcdm.qry2.eof do
    begin
      if (not qcdm.qry2.fieldbyname('rno').isnull) and (not qcdm.qry2.fieldbyname('rch').isnull) then
      listbox1.items.add(qcdm.qry2.fieldbyname('rno').value+'; '+qcdm.qry2.fieldbyname('rch').value);
      qcdm.qry2.next;
    end;
   end;
   qcdm.qry4.close;
   qcdm.qry4.params.clear;
   qcdm.qry4.commandtext:='select rno,rch from yb3 where mtr>ums+0.5 and noca=true';
   qcdm.qry4.open;
   if qcdm.qry4.recordcount>0 then
   begin
     qcdm.qry4.first;
     while not qcdm.qry4.eof do
     begin
       listbox2.items.add(qcdm.qry4.fieldbyname('rno').value+'; '+qcdm.qry4.fieldbyname('rch').value);
       qcdm.qry4.next;
     end;
   end;
  end
  else
  begin
   qcdm.qry2.close;
   qcdm.qry2.params.clear;
   qcdm.qry2.commandtext:='select rno,rch from yhb3 where oyes=false and noca=true';
   qcdm.qry2.open;
   if qcdm.qry2.recordcount>0 then
   begin
    qcdm.qry2.first;
    while not qcdm.qry2.eof do
    begin
      listbox1.items.add(qcdm.qry2.fieldbyname('rno').value+'; '+qcdm.qry2.fieldbyname('rch').value);
      qcdm.qry2.next;
    end;
   end;
   qcdm.qry4.close;
   qcdm.qry4.params.clear;
   qcdm.qry4.commandtext:='select rno,rch from yhb3 where mtr>ums+0.5 and noca=true';
   qcdm.qry4.open;
   if qcdm.qry4.recordcount>0 then
   begin
     qcdm.qry4.first;
     while not qcdm.qry4.eof do
     begin
       listbox2.items.add(qcdm.qry4.fieldbyname('rno').value+'; '+qcdm.qry4.fieldbyname('rch').value);
       qcdm.qry4.next;
     end;
   end;
  end;
  maskedit1.setfocus;
end;

procedure Tfrmidcx.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    bitbtn1click(self);
end;

procedure Tfrmidcx.ListBox1Click(Sender: TObject);
var
  i:integer;
begin
  if listbox1.Items<>nil then
  begin
    for i:=0 to listbox1.items.count-1 do
    begin
      if listbox1.selected[i] then
      begin
        maskedit1.text:=copy(listbox1.Items.strings[i],pos(' ',listbox1.items.strings[i])+1,15);
      end;
    end;
  end;
end;

procedure Tfrmidcx.ListBox2Click(Sender: TObject);
var
  i:integer;
begin
  if listbox2.Items<>nil then
  begin
    for i:=0 to listbox2.items.count-1 do
    begin
      if listbox2.selected[i] then
      begin
        maskedit1.text:=copy(listbox2.Items.strings[i],pos(' ',listbox2.items.strings[i])+1,15);
      end;
    end;
  end;
end;

end.
