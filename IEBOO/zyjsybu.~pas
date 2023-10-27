unit zyjsybu;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, ExtCtrls, DBCtrls, StdCtrls, Buttons, ADODB,
  DBClient;

type
  Tfrmcfzyjsb = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Table1: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure Table1NewRecord(DataSet: TDataSet);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcfzyjsb: Tfrmcfzyjsb;

implementation

uses cfzyjsblyu, gxfxbu, dlu;

{$R *.DFM}

procedure Tfrmcfzyjsb.BitBtn2Click(Sender: TObject);
begin
  if table1.recordcount>0 then
  begin
    if frmcfzyjsbly=nil then
      frmcfzyjsbly:=tfrmcfzyjsbly.create(self);
    frmcfzyjsbly.quickrep1.preview;
  end;
end;

procedure Tfrmcfzyjsb.DBGrid1DblClick(Sender: TObject);
var
 i:integer;
begin
  if label1.caption='frmgxfxb' then
  begin
   if not frmgxfxb.DBGrid1.fields[1].isnull then
   begin
    frmgxfxb.gxfxb1.edit;
    frmgxfxb.gxfxb1.fieldbyname('bh').value:=dbgrid1.fields[0].value;
    frmgxfxb.gxfxb1.fieldbyname('dzxxfx').value:=dbgrid1.fields[1].value;
    frmgxfxb.gxfxb1.fieldbyname('dz').value:='¨®Á_';
    if not dbgrid1.fields[3].isnull then
      frmgxfxb.gxfxb1.fieldbyname('tmu').value:=dbgrid1.fields[3].value
    else
    begin
      if not dbgrid1.fields[5].isnull then
        frmgxfxb.gxfxb1.fieldbyname('tmu').value:=dbgrid1.fields[5].value
      else
        if not dbgrid1.fields[7].isnull then
          frmgxfxb.gxfxb1.fieldbyname('tmu').value:=dbgrid1.fields[7].value;
    end;
    frmgxfxb.gxfxb1.post;
   end
   else
   begin
    if dbgrid1.SelectedRows.count>0 then
    begin
     for i:=0 to dbgrid1.selectedrows.count-1 do
     begin
      table1.gotobookmark(pointer(dbgrid1.selectedrows.items[i]));
      frmgxfxb.gxfxb1.append;
      frmgxfxb.gxfxb1.fieldbyname('gxm').value:=frmgxfxb.dbedit1.text;
      frmgxfxb.gxfxb1.fieldbyname('cf').value:=frmgxfxb.gxfxb.fieldbyname('cf').value;
      frmgxfxb.gxfxb1.fieldbyname('seq').value:=10*(i+1);
      frmgxfxb.gxfxb1.fieldbyname('bh').value:=dbgrid1.fields[0].value;//dbgrid1.fields[0].value;
      frmgxfxb.gxfxb1.fieldbyname('dzxxfx').value:=dbgrid1.fields[1].value;
      frmgxfxb.gxfxb1.fieldbyname('dz').value:='¨®Á_';
      if not dbgrid1.fields[3].isnull then
      begin
        frmgxfxb.gxfxb1.fieldbyname('tmu').value:=dbgrid1.fields[3].value;
        if not dbgrid1.fields[2].isnull then
        frmgxfxb.gxfxb1.fieldbyname('tj').value:=dbgrid1.fields[2].value;
      end
      else
      begin
        if not dbgrid1.fields[5].isnull then
        begin
          frmgxfxb.gxfxb1.fieldbyname('tmu').value:=dbgrid1.fields[5].value;
          if not dbgrid1.fields[4].isnull then
          frmgxfxb.gxfxb1.fieldbyname('tj').value:=dbgrid1.fields[4].value;
        end
        else
        begin
          if not dbgrid1.fields[7].isnull then
          begin
            frmgxfxb.gxfxb1.fieldbyname('tmu').value:=dbgrid1.fields[7].value;
            if not dbgrid1.fields[6].isnull then
            frmgxfxb.gxfxb1.fieldbyname('tj').value:=dbgrid1.fields[6].value;
          end;
        end;
      end;
      frmgxfxb.gxfxb1.post;
     end;
    end;
   end;
   close;
  end;
end;

procedure Tfrmcfzyjsb.Edit1Change(Sender: TObject);
begin
  table1.editkey;
  table1.indexfieldnames:='xh';
  table1.setkey;
  table1.findnearest([edit1.text]);
end;

procedure Tfrmcfzyjsb.Edit2Change(Sender: TObject);
begin
  table1.editkey;
  table1.indexname:='dzk';
  table1.setkey;
  table1.findnearest([edit2.text]);
end;

procedure Tfrmcfzyjsb.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    sendmessage(dbgrid1.handle,wm_keydown,vk_tab,0);
  end;
end;

procedure Tfrmcfzyjsb.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcfzyjsb.Table1NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').value:=GetSeq('ie_cfzyjsyb','id');
end;

procedure Tfrmcfzyjsb.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmcfzyjsb.FormShow(Sender: TObject);
begin
  Table1.close;
  Table1.open;
end;

end.
