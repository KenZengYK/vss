unit fmcssformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, DB, DBClient, StdCtrls, Buttons;

type
  Tfrmfmcss = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Label1: TLabel;
    ComboBox1: TComboBox;
    xh1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure ComboBox1Change(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfmcss: Tfrmfmcss;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmfmcss.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmfmcss:=nil;
end;

procedure Tfrmfmcss.BitBtn1Click(Sender: TObject);
begin
  if query1.Active then begin
    dbgrideh1.SetFocus;
    dbgrideh1.SelectedIndex:=0;
    query1.Append;
  end;
end;

procedure Tfrmfmcss.BitBtn2Click(Sender: TObject);
begin
  if query1.Active then begin
    if application.MessageBox('Want to delete this Mc?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from tbl_mcpool where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      query1.delete;
    end;
  end;
end;

procedure Tfrmfmcss.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmfmcss.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from tbl_mcpool';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  query1.fieldbyname('tplant').value:=combobox1.text;
  query1.fieldbyname('msta').value:='1';
  if xh1.ItemIndex<=1 then query1.fieldbyname('mstt').value:='Standby Room'
  else query1.fieldbyname('mstt').value:='On Repairing';
  query1.fieldbyname('seq').value:=seq;
end;

procedure Tfrmfmcss.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_mcpool where msta=''1'' and tplant='''+combobox1.text+'''';
      if xh1.ItemIndex=1 then commandtext:=commandtext+' and mstt=''Standby Room'''
      else if xh1.ItemIndex=2 then commandtext:=commandtext+' and mstt=''On Repairing''';
      open;
    end;
  end;
end;

procedure Tfrmfmcss.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_mcpool where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').IsNull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          commandtext:='update tbl_mcpool set mid=:x1,mname=:x2,tplant=:x3,mstt=:x4,msta=:x5,marks=:x6 where seq=:x7';
          if not query1.fieldbyname('mid').isnull then
          params[0].asstring:=query1.fieldbyname('mid').value
          else params[0].asstring:='';
          if not query1.fieldbyname('mname').isnull then
          params[1].asstring:=query1.fieldbyname('mname').value
          else params[1].asstring:='';
          if not query1.fieldbyname('tplant').isnull then
          params[2].asstring:=query1.fieldbyname('tplant').value
          else params[2].asstring:='';
          if not query1.fieldbyname('mstt').isnull then
          params[3].asstring:=query1.fieldbyname('mstt').value
          else params[3].asstring:='';
          if not query1.fieldbyname('msta').isnull then
          params[4].asstring:=query1.fieldbyname('msta').value
          else params[4].asstring:='1';
          if not query1.fieldbyname('marks').isnull then
          params[5].asstring:=query1.fieldbyname('marks').value
          else params[5].asstring:='';
          params[6].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          commandtext:='insert into tbl_mcpool(mid,mname,tplant,mstt,msta,marks,seq) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
          if not query1.fieldbyname('mid').isnull then
          params[0].asstring:=query1.fieldbyname('mid').value
          else params[0].asstring:='';
          if not query1.fieldbyname('mname').isnull then
          params[1].asstring:=query1.fieldbyname('mname').value
          else params[1].asstring:='';
          if not query1.fieldbyname('tplant').isnull then
          params[2].asstring:=query1.fieldbyname('tplant').value
          else params[2].asstring:='';
          if not query1.fieldbyname('mstt').isnull then
          params[3].asstring:=query1.fieldbyname('mstt').value
          else params[3].asstring:='';
          if not query1.fieldbyname('msta').isnull then
          params[4].asstring:=query1.fieldbyname('msta').value
          else params[4].asstring:='1';
          if not query1.fieldbyname('marks').isnull then
          params[5].asstring:=query1.fieldbyname('marks').value
          else params[5].asstring:='';
          params[6].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

end.
