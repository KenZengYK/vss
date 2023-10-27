unit plusu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, DBTables, ExtCtrls, Buttons, ADODB, DBClient;

type
  Tfrmplus = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    BitBtn3: TBitBtn;
    Label21: TLabel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmplus: Tfrmplus;

implementation
uses bzgxu, bzgx1u, dlu;
{$R *.DFM}

procedure Tfrmplus.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmplus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if label21.caption='frmbzgx' then
  begin
    if (frmbzgx.bzgx.state=dsedit) or (frmbzgx.bzgx.state=dsinsert) then frmbzgx.bzgx.post;
  end
  else
  begin
    if label21.caption='frmbzgx1' then
      if (frmbzgx1.bzgx1.state=dsedit) or (frmbzgx1.bzgx1.state=dsinsert) then frmbzgx1.bzgx1.post;
  end;
end;

procedure Tfrmplus.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  combobox1.text:='';
  if label21.caption='frmbzgx' then
  begin
    datasource1.DataSet:=frmbzgx.bzgx;
    frmbzgx.bzgx.append;
    query1.close;
    query1.params.clear;
    Query1.params.createparam(ftstring,'cz',ptinput);
    query1.commandtext:='select mc from IE_bzgx where cz=:cz';
//    query1.prepare;
    query1.params[0].value:=frmbzgx.DBEdit1.text;
    query1.open;
    if query1.recordcount>0 then
    begin
      query1.first;
      while not query1.eof do
      begin
        combobox1.items.add(query1.fieldbyname('mc').value);
        query1.next;
      end;
    end;
  end
  else
  begin
    datasource1.DataSet:=frmbzgx1.bzgx1;
    frmbzgx1.bzgx1.append;
    query1.close;
    query1.params.clear;
    Query1.params.createparam(ftstring,'cz',ptinput);
    query1.commandtext:='select mc from IE_bzgx1 where cz=:cz';
//    query1.prepare;
    query1.params[0].value:=frmbzgx1.DBEdit1.text;
    query1.open;
    if query1.recordcount>0 then
    begin
      query1.first;
      while not query1.eof do
      begin
        combobox1.items.add(query1.fieldbyname('mc').value);
        query1.next;
      end;
    end;
  end;
end;

procedure Tfrmplus.ComboBox1Change(Sender: TObject);
begin
  if label21.caption='frmbzgx' then
  begin
    if combobox1.text<>'' then
    begin
     if frmbzgx.bzgx.state=dsinsert then
     begin
      query2.close;
      query2.params.clear;
      Query2.params.createparam(ftstring,'mc',ptinput);
      query2.commandtext:='select * from IE_bzgx where mc=:mc';
//      query2.prepare;
      query2.params[0].value:=combobox1.text;
      query2.open;
      if query2.recordcount>0 then
      begin
        frmbzgx.bzgx.append;
        if not query2.fieldbyname('seq').isnull then
        frmbzgx.bzgx.fieldbyname('seq').value:=query2.fieldbyname('seq').value;
        if not query2.fieldbyname('dh').isnull then
        frmbzgx.bzgx.fieldbyname('dh').value:=query2.fieldbyname('dh').value;
        if not query2.fieldbyname('czbh').isnull then
        frmbzgx.bzgx.fieldbyname('czbh').value:=query2.fieldbyname('czbh').value;
        if not query2.fieldbyname('mc').isnull then
        frmbzgx.bzgx.fieldbyname('mc').value:=query2.fieldbyname('mc').value;
        if not query2.fieldbyname('sj').isnull then
        frmbzgx.bzgx.fieldbyname('sj').value:=query2.fieldbyname('sj').value;
        if not query2.fieldbyname('bzdj').isnull then
        frmbzgx.bzgx.fieldbyname('bzdj').value:=query2.fieldbyname('bzdj').value;
        if not query2.fieldbyname('dj1').isnull then
        frmbzgx.bzgx.fieldbyname('dj1').value:=query2.fieldbyname('dj1').value;
        if not query2.fieldbyname('dj2').isnull then
        frmbzgx.bzgx.fieldbyname('dj2').value:=query2.fieldbyname('dj2').value;
        if not query2.fieldbyname('czxh').isnull then
        frmbzgx.bzgx.fieldbyname('czxh').value:=query2.fieldbyname('czxh').value;
        if not query2.fieldbyname('yzjzb').isnull then
        frmbzgx.bzgx.fieldbyname('yzjzb').value:=query2.fieldbyname('yzjzb').value;
        if not query2.fieldbyname('mx').isnull then
        frmbzgx.bzgx.fieldbyname('mx').value:=query2.fieldbyname('mx').value;
        if not query2.fieldbyname('dx').isnull then
        frmbzgx.bzgx.fieldbyname('dx').value:=query2.fieldbyname('dx').value;
        if not query2.fieldbyname('cfzkcc').isnull then
        frmbzgx.bzgx.fieldbyname('cfzkcc').value:=query2.fieldbyname('cfzkcc').value;
        if not query2.fieldbyname('zzkcc').isnull then
        frmbzgx.bzgx.fieldbyname('zzkcc').value:=query2.fieldbyname('zzkcc').value;
        if not query2.fieldbyname('dzkcc').isnull then
        frmbzgx.bzgx.fieldbyname('dzkcc').value:=query2.fieldbyname('dzkcc').value;
        if not query2.fieldbyname('zj').isnull then
        frmbzgx.bzgx.fieldbyname('zj').value:=query2.fieldbyname('zj').value;
        if not query2.fieldbyname('zf').isnull then
        frmbzgx.bzgx.fieldbyname('zf').value:=query2.fieldbyname('zf').value;
        if not query2.fieldbyname('fryd').isnull then
        frmbzgx.bzgx.fieldbyname('fryd').value:=query2.fieldbyname('fryd').value;
        //frmbzgx.bzgx.post;
      end;
     end;
    end;
  end
  else
  begin
   if label21.caption='frmbzgx1' then
   begin
    if combobox1.text<>'' then
    begin
     if frmbzgx1.bzgx1.state=dsinsert then
     begin
      query2.close;
      query2.params.clear;
      Query2.params.createparam(ftstring,'mc',ptinput);      
      query2.commandtext:='select * from IE_bzgx1 where mc=:mc';
//      query2.prepare;
      query2.params[0].value:=combobox1.text;
      query2.open;
      if query2.recordcount>0 then
      begin
        frmbzgx1.bzgx1.append;
        if not query2.fieldbyname('seq').isnull then
        frmbzgx1.bzgx1.fieldbyname('seq').value:=query2.fieldbyname('seq').value;
        if not query2.fieldbyname('dh').isnull then
        frmbzgx1.bzgx1.fieldbyname('dh').value:=query2.fieldbyname('dh').value;
        if not query2.fieldbyname('czbh').isnull then
        frmbzgx1.bzgx1.fieldbyname('czbh').value:=query2.fieldbyname('czbh').value;
        if not query2.fieldbyname('mc').isnull then
        frmbzgx1.bzgx1.fieldbyname('mc').value:=query2.fieldbyname('mc').value;
        if not query2.fieldbyname('sj').isnull then
        frmbzgx1.bzgx1.fieldbyname('sj').value:=query2.fieldbyname('sj').value;
        if not query2.fieldbyname('bzdj').isnull then
        frmbzgx1.bzgx1.fieldbyname('bzdj').value:=query2.fieldbyname('bzdj').value;
        if not query2.fieldbyname('dj1').isnull then
        frmbzgx1.bzgx1.fieldbyname('dj1').value:=query2.fieldbyname('dj1').value;
        if not query2.fieldbyname('dj2').isnull then
        frmbzgx1.bzgx1.fieldbyname('dj2').value:=query2.fieldbyname('dj2').value;
        if not query2.fieldbyname('czxh').isnull then
        frmbzgx1.bzgx1.fieldbyname('czxh').value:=query2.fieldbyname('czxh').value;
        if not query2.fieldbyname('yzjzb').isnull then
        frmbzgx1.bzgx1.fieldbyname('yzjzb').value:=query2.fieldbyname('yzjzb').value;
        if not query2.fieldbyname('mx').isnull then
        frmbzgx1.bzgx1.fieldbyname('mx').value:=query2.fieldbyname('mx').value;
        if not query2.fieldbyname('dx').isnull then
        frmbzgx1.bzgx1.fieldbyname('dx').value:=query2.fieldbyname('dx').value;
        if not query2.fieldbyname('cfzkcc').isnull then
        frmbzgx1.bzgx1.fieldbyname('cfzkcc').value:=query2.fieldbyname('cfzkcc').value;
        if not query2.fieldbyname('zzkcc').isnull then
        frmbzgx1.bzgx1.fieldbyname('zzkcc').value:=query2.fieldbyname('zzkcc').value;
        if not query2.fieldbyname('dzkcc').isnull then
        frmbzgx1.bzgx1.fieldbyname('dzkcc').value:=query2.fieldbyname('dzkcc').value;
        if not query2.fieldbyname('zj').isnull then
        frmbzgx1.bzgx1.fieldbyname('zj').value:=query2.fieldbyname('zj').value;
        if not query2.fieldbyname('zf').isnull then
        frmbzgx1.bzgx1.fieldbyname('zf').value:=query2.fieldbyname('zf').value;
        if not query2.fieldbyname('fryd').isnull then
        frmbzgx1.bzgx1.fieldbyname('fryd').value:=query2.fieldbyname('fryd').value;
      end;
     end;
    end;
   end;
  end;
end;

end.
