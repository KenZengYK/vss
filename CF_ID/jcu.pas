unit jcu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBClient, ADODB;

type
  Tfrmjc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    op1: TCheckBox;
    op2: TCheckBox;
    op3: TCheckBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Query1: TADOQuery;
    Query2: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure op3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmjc: Tfrmjc;

implementation
uses mainu, fcjyu;
{$R *.DFM}

procedure Tfrmjc.BitBtn1Click(Sender: TObject);
begin
  if op1.checked=true then
  begin
     if op3.checked=true then
     begin
       if combobox1.text<>'' then
       begin
           frmfcjy.fcjy2.edit;
           frmfcjy.dbgrideh1.fields[8].value:='減裁;由'+combobox1.text+'改裁為'+frmfcjy.dbgrideh1.fields[2].value;
           if edit3.text<>'' then
           frmfcjy.dbgrideh1.fields[7].value:=0-strtoint(edit3.text);
           frmfcjy.fcjy2.fieldbyname('gm').value:=strtoint(edit3.text);
           frmfcjy.fcjy2.fieldbyname('gmc').value:=combobox1.text;
           frmfcjy.fcjy2.fieldbyname('gmt').value:=combobox2.text;
           frmfcjy.fcjy2.post;
           with query2 do begin
             close;
             sql.text:='update cut_fcjy2 set gm=gm-:gm where prjno=:prjno and xh=:xh and wl=:wl and kh=:kh and cm=:cm';
             parameters[0].value:=strtoint(edit3.text);
             parameters[1].value:=frmfcjy.fcjy2.fieldbyname('prjno').value;
             parameters[2].value:=frmfcjy.fcjy2.fieldbyname('xh').value;
             parameters[3].value:=frmfcjy.fcjy2.fieldbyname('wl').value;
             parameters[4].value:=frmfcjy.fcjy2.fieldbyname('kh').value;
             parameters[5].value:=combobox1.text;
             execsql;
           end;
       end;
     end
     else
     begin
       if edit1.text<>'' then
       begin
         frmfcjy.fcjy2.edit;
         frmfcjy.dbgrideh1.fields[8].value:='加裁';
         frmfcjy.dbgrideh1.fields[7].value:=strtoint(edit1.text);
         frmfcjy.fcjy2.post;
       end;
     end;
  end
  else
  begin
    if op2.checked=true then
    begin
     if op3.checked=true then
     begin
       if combobox1.text<>'' then
       begin
           frmfcjy.fcjy2.edit;
           frmfcjy.dbgrideh1.fields[8].value:='減裁;由'+combobox1.text+'改裁為'+frmfcjy.dbgrideh1.fields[2].value;
           if edit3.text<>'' then
           frmfcjy.dbgrideh1.fields[7].value:=0-strtoint(edit3.text);
           frmfcjy.fcjy2.fieldbyname('gm').value:=strtoint(edit3.text);
           frmfcjy.fcjy2.fieldbyname('gmc').value:=combobox1.text;
           frmfcjy.fcjy2.fieldbyname('gmt').value:=combobox2.text;
           frmfcjy.fcjy2.post;
           with query2 do begin
             close;
             sql.text:='update cut_fcjy2 set gm=gm-:gm where prjno=:prjno and xh=:xh and wl=:wl and kh=:kh and cm=:cm';
             parameters[0].value:=strtoint(edit3.text);
             parameters[1].value:=frmfcjy.fcjy2.fieldbyname('prjno').value;
             parameters[2].value:=frmfcjy.fcjy2.fieldbyname('xh').value;
             parameters[3].value:=frmfcjy.fcjy2.fieldbyname('wl').value;
             parameters[4].value:=frmfcjy.fcjy2.fieldbyname('kh').value;
             parameters[5].value:=combobox1.text;
             execsql;
           end;
       end;
     end
     else
     begin
       if edit2.text<>'' then
       begin
         frmfcjy.fcjy2.edit;
         frmfcjy.dbgrideh1.fields[8].value:='減裁';
         frmfcjy.dbgrideh1.fields[7].value:=0-strtoint(edit2.text);
         frmfcjy.fcjy2.post;
       end;
     end;
    end;
  end;
  close;
end;

procedure Tfrmjc.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmjc.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  combobox2.items.clear;
  query1.close;
  query1.sql.text:='select id,siz1,cm from cut_fcjy2 where prjno=:prjno and wl=:wl and xh=:xh order by id,siz1';
  query1.parameters[0].value:=frmfcjy.DBEdit7.text;
  query1.parameters[1].value:=frmfcjy.fcjy1.fieldbyname('wl').value;
  query1.parameters[2].value:=frmfcjy.fcjy1.fieldbyname('xh').value;
  query1.open;
  if query1.recordcount>0 then
  begin
    query1.first;
    while not query1.eof do
    begin
      combobox1.items.add(query1.fieldbyname('cm').value);
      query1.next;
    end;
  end;
end;

procedure Tfrmjc.op3Click(Sender: TObject);
begin
  if op3.checked=true then begin
    combobox1.enabled:=true;
    edit3.enabled:=true;
    combobox1.text:='';edit3.text:='';
    combobox2.text:=frmfcjy.dbgrideh1.fields[2].value;
  end
  else begin
    combobox1.enabled:=false;
    edit3.enabled:=false;
    combobox1.text:='';edit3.text:='';
  end;
end;

procedure Tfrmjc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmjc:=nil;
end;

end.
