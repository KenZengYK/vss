unit stylu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGridEh, Db, DBTables, DBClient, variants,
  GridsEh;

type
  Tfrmstyl = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    Label2: TLabel;
    Query1: TClientDataSet;
    Query3: TClientDataSet;
    Query2: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmstyl: Tfrmstyl;

implementation
uses sampletblu, siztblu;
{$R *.DFM}

procedure Tfrmstyl.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmstyl.FormDeactivate(Sender: TObject);
begin
  close;
end;

procedure Tfrmstyl.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  combobox1.text:='';
  if label2.caption='samp' then
  begin
   query2.close;
   query2.params.clear;
   query2.commandtext:='select stylno from SZ_sampsize';
   query2.open;
   query2.first;
   while not query2.eof do
   begin
    combobox1.items.add(query2.fieldbyname('stylno').value);
    query2.next;
   end;
   query1.close;
   query1.params.clear;
   query1.commandtext:='select stylno from SZ_sampsize';
   query1.open;
  end
  else
  begin
   query2.close;
   query2.params.clear;
   query2.commandtext:='select stylno from SZ_lsize';
   query2.open;
   query2.first;
   while not query2.eof do
   begin
    combobox1.items.add(query2.fieldbyname('stylno').value);
    query2.next;
   end;
   query1.close;
   query1.params.clear;
   query1.commandtext:='select stylno from SZ_lsize';
   query1.open;
  end;
end;

procedure Tfrmstyl.ComboBox1Change(Sender: TObject);
begin
 if label2.caption='samp' then
 begin
  if combobox1.text<>'' then
  begin
   query1.close;
   query1.params.clear;
   //query1.params.createparam(ftstring,'stylno',ptinput);
   query1.commandtext:='select stylno from SZ_sampsize where stylno like '''+combobox1.text+'%''';;
//   query1.prepare;
   //query1.params[0].asstring:=combobox1.text+'%';
   query1.open;
  end
  else
  begin
   query1.close;
   query1.params.clear;
   query1.commandtext:='select stylno from SZ_sampsize';
   query1.open;
  end;
 end
 else
 begin
  if combobox1.text<>'' then
  begin
   query1.close;
   query1.params.clear;
   //query1.params.createparam(ftstring,'stylno',ptinput);
   query1.commandtext:='select stylno from SZ_lsize where stylno like '''+combobox1.text+'%''';
//   query1.prepare;
   //query1.params[0].asstring:=combobox1.text+'%';
   query1.open;
  end
  else
  begin
   query1.close;
   query1.params.clear;
   query1.commandtext:='select stylno from SZ_lsize';
   query1.open;
  end;
 end;
end;

procedure Tfrmstyl.BitBtn1Click(Sender: TObject);
begin
  if not dbgrideh1.fields[0].isnull then
  begin
   if label2.caption='samp' then
   begin
     frmsampletbl.table1.locate('stylno',vararrayof([dbgrideh1.fields[0].value]),[lopartialkey]);//.findnearest([dbgrideh1.fields[0].value]);
   end
   else
   begin
    if label2.caption='size4' then
    begin
     frmsiztbl.table1.locate('stylno',vararrayof([dbgrideh1.fields[0].value]),[lopartialkey]);//.findnearest([dbgrideh1.fields[0].value]);
     {with query3 do begin
       close;
       params.clear;
       commandtext:='select * from SZ_prdsize1 where stylno=:stylno and jobno=:jobno';
       prepare;
       params[0].asstring:=dbgrideh1.fields[0].value;
       params[1].asstring:=str1;
       open;
       if recordcount=0 then begin
        with query3 do begin
         close;
         params.clear;
         commandtext:='select * from SZ_prdsize1';
         open;
         append;
         fieldbyname('stylno').value:=dbgrideh1.fields[0].value;
         fieldbyname('jobno').value:=str1;
         post;
        end;
       end;
     end;
     frmsiztbl.table5.refresh;
     frmsiztbl.table5.findnearest([dbgrideh1.fields[0].value,str1]);}
     frmsiztbl.DBEdit36.OnChange:=frmsiztbl.DBEditChange;
    end
    else
    begin
     frmsiztbl.table1.locate('stylno',vararrayof([dbgrideh1.fields[0].value]),[lopartialkey]);//.findnearest([dbgrideh1.fields[0].value]);
    end;
   end;
  end;
  close;
end;

end.
