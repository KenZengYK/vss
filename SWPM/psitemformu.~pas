unit psitemformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Grids, DBGridEh;

type
  Tfrmpsitem = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Label1: TLabel;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpsitem: Tfrmpsitem;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmpsitem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
  action:=cafree;
  frmpsitem:=nil;
end;

procedure Tfrmpsitem.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmpsitem.FormShow(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  combobox1.Items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct p_cust from ppc_customer';
    open;
    first;
    while not eof do begin
      combobox1.Items.add(fieldbyname('p_cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
  screen.cursor:=crDefault;
  {
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tblpsitem';
    open;
  end;
  }
end;

procedure Tfrmpsitem.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select t_seq from tblpsitem where t_seq=:seq';
      params[0].asinteger:=query1.fieldbyname('t_seq').value;
      open;
      if not fieldbyname('t_seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'item',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='update tblpsitem set t_item=:item where t_seq=:seq';
          params[0].asstring:=query1.fieldbyname('t_item').value;
          params[1].asinteger:=query1.fieldbyname('t_seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'item',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          params.createparam(ftstring,'cust',ptinput);
          commandtext:='insert into tblpsitem(t_item,t_seq,t_cust) values(:item,:seq,:cust)';
          params[0].asstring:=query1.fieldbyname('t_item').value;
          params[1].asinteger:=query1.fieldbyname('t_seq').value;
          params[2].asstring:=query1.fieldbyname('t_cust').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmpsitem.BitBtn2Click(Sender: TObject);
begin
  if query1.Active then begin
    if application.MessageBox('要刪除此項目?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='delete from tblpsitem where t_seq=:seq';
        params[0].asinteger:=query1.fieldbyname('t_seq').value;
        execute;
      end;
      query1.delete;
    end;
  end;
end;

procedure Tfrmpsitem.BitBtn1Click(Sender: TObject);
begin
  if query1.Active then begin
    dbgrideh1.SelectedIndex:=0;
    query1.Append;
  end;
end;

procedure Tfrmpsitem.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(t_seq) as seq from tblpsitem';
    open;
    if not fieldbyname('seq').isnull then seq:=fieldbyname('seq').value+1
    else seq:=1; 
  end;
  query1.fieldbyname('t_seq').value:=seq;
  query1.fieldbyname('t_cust').value:=combobox1.text;
end;

procedure Tfrmpsitem.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmpsitem.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmpsitem.ComboBox1Change(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'cust',ptinput);
      commandtext:='select * from tblpsmatmatch where t_cust=:cust';
      params[0].asstring:=combobox1.text;
      open;
    end;
  end;
  screen.cursor:=crDefault;
end;

end.
 