unit fju;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Db, DBTables, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ADODB, DBClient;

type
  Tfrmfj = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DataSource2: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Table1: TClientDataSet;
    Table2: TClientDataSet;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Table2AfterScroll(DataSet: TDataSet);
    procedure Table2AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfj: Tfrmfj;

implementation
uses gxfxbu, bzgxu, czmsu, czms1u, bzgx1u, dlu;
{$R *.DFM}

procedure Tfrmfj.DBGrid1DblClick(Sender: TObject);
begin
  if label2.caption='gxfx' then
  begin
   if not dbgrid1.fields[0].isnull then
   begin
    frmgxfxb.gxfxb.edit;
    frmgxfxb.gxfxb.FieldByName('fj').value:=dbgrid1.fields[1].value;
    close;
   end;
  end
  else
  begin
   if label2.caption='czms' then
   begin
     if not dbgrid1.fields[0].isnull then
     begin
       frmbzgx.bzgx.edit;
       frmczms.wwDBRichEditMSWord1.Lines.Add(dbgrid1.fields[1].value);
       close;
     end;
   end
   else
   begin
    if label2.caption='czms1' then
    begin
     if not dbgrid1.fields[0].isnull then
     begin
       frmbzgx1.bzgx1.edit;
       frmczms1.wwdbricheditmsword1.lines.add(dbgrid1.fields[1].value);
       close;
     end;
    end;
   end;
  end;
end;

procedure Tfrmfj.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
end;

procedure Tfrmfj.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmfj.SpeedButton2Click(Sender: TObject);
begin
 if table1.recordcount>0 then
 begin
  if application.messagebox('要刪除此記錄嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
  begin
    table1.delete;
    Table1.ApplyUpdates(-1);
  end;
 end;
end;

procedure Tfrmfj.FormShow(Sender: TObject);
begin
  Table2.close;
  Table2.open;
end;

procedure Tfrmfj.Table2AfterScroll(DataSet: TDataSet);
begin
  with Table1 do begin
    close;
    params.Clear;
    params.createparam(ftstring,'cz',ptinput);
    commandtext:='select * from ie_fj where cz=:cz';
    params[0].AsString:=Table2.fieldbyname('cz').value;
    open;
  end;
end;

procedure Tfrmfj.Table2AfterPost(DataSet: TDataSet);
begin
  DatasetAfterPost(Dataset);
end;

end.
