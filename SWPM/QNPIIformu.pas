unit QNPIIformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh, Buttons, DB, DBClient;

type
  TfrmQNPII = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQNPII: TfrmQNPII;

implementation

uses mainformu, worksheet, exchangeformu, sellwsformu;

{$R *.dfm}

procedure TfrmQNPII.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmqnpii:=nil;
end;

procedure TfrmQNPII.ComboBox1Change(Sender: TObject);
begin
  with worksheet1.tblshedule do begin
    close;
    params.clear;
    commandtext:='select * from tblshedule where yzh=0 and ((flag3 is null) or (flag3 not in (''x'',''x1'')))';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and j_no='''+edit2.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and j2_job='''+edit3.text+'''';
    if edit4.text>'' then commandtext:=commandtext+' and cstyle='''+edit4.text+'''';
    open;
  end;
  dbgrideh1.DataSource:=worksheet1.DataSource1;
end;

procedure TfrmQNPII.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then combobox1change(self);
end;

procedure TfrmQNPII.FormShow(Sender: TObject);
begin
  dbgrideh1.DataSource:=nil;
end;

procedure TfrmQNPII.BitBtn1Click(Sender: TObject);
var
  pline,usr1,usr2,usr3:string;
  seq,i:integer;
begin
  if DBGridEh1.SelectedRows.Count>1 then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct user1,user2,user3 from tbl_qncfmd where tplant='''+worksheet1.tblshedule.fieldbyname('tplant').value+'''';
      open;
      if not fieldbyname('user1').isnull then usr1:=fieldbyname('user1').value else usr1:='';
      if not fieldbyname('user2').isnull then usr2:=fieldbyname('user2').value else usr2:='';
      if not fieldbyname('user3').isnull then usr3:=fieldbyname('user3').value else usr3:='';
    end;
    with DBGridEh1.DataSource.DataSet do begin
      for i:=0 to DBGridEh1.SelectedRows.Count-1 do begin
        GotoBookmark(pointer(DBGridEh1.SelectedRows.Items[i]));
        pline:=fields[0].value;
        seq:=fields[1].Value;
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_qn_confirm where pline=:x1 and seq=:x2';
          params[0].asstring:=pline;
          params[1].asinteger:=seq;
          open;
          if not fieldbyname('seq').isnull then begin
            showmessage('This QN can not be combined!');
            exit;
          end;
        end;
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftdate,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftdate,'x9',ptinput);
          commandtext:='insert into tbl_qn_confirm(pline,seq,qntype,cfm1,cfmdt1,cfm2,cfmdt2,cfm3,cfmdt3) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9)';
          params[0].asstring:=pline;
          params[1].asinteger:=seq;
          params[2].asstring:='cQN';
          params[3].asstring:=usr1;
          params[4].asdate:=date;
          params[5].asstring:=usr2;
          params[6].asdate:=date;
          params[7].asstring:=usr3;
          params[8].asdate:=date;
          execute;
        end;
      end;
    end;
    showmessage('Confirmed combine QNs successfully!');
  end else showmessage('Please select more than 1 QN to combine!');
end;

procedure TfrmQNPII.BitBtn2Click(Sender: TObject);
begin
  if pos('SB',worksheet1.tblshedule.fieldbyname('pline').value)>0 then exit;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').value=true then begin
      if frmsellws=nil then frmsellws:=tfrmsellws.Create(nil);
      if not worksheet1.tblshedule.fieldbyname('flag3').isnull then begin
        if (worksheet1.tblshedule.fieldbyname('flag3').value>='1') and (worksheet1.tblshedule.Fieldbyname('flag3').value<='9s') then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select dt1,sect1,dt2,sect2 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
            open;
          end;
          if not query2.fieldbyname('dt1').isnull then begin
            frmsellws.DateEdit1.Date:=query2.fieldbyname('dt1').value;
            if not query2.FieldByName('sect1').isnull then frmsellws.Edit1.Value:=query2.fieldbyname('sect1').value;
            frmsellws.xh3.Checked:=true;
            frmsellws.xh2.ItemIndex:=-1;
          end else begin
            if not query2.fieldbyname('dt2').isnull then frmsellws.DateEdit1.Date:=query2.fieldbyname('dt2').value;
            if not query2.fieldbyname('sect2').isnull then frmsellws.Edit1.Value:=query2.fieldbyname('sect2').value;
            frmsellws.xh1.Checked:=true;
            frmsellws.xh2.itemindex:=-1;
          end;
        end else if worksheet1.tblshedule.fieldbyname('flag3').value='w' then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select dt3,sect3,sta3 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
            open;
          end;
          if not query2.fieldbyname('dt3').isnull then frmsellws.DateEdit1.Date:=query2.fieldbyname('dt3').value;
          if not query2.fieldbyname('sect3').isnull then frmsellws.Edit1.Value:=query2.fieldbyname('sect3').value;
          if (query2.fieldbyname('sta3').value='Halt') or (query2.fieldbyname('sta3').value='H1') then
          frmsellws.xh2.ItemIndex:=0
          else if query2.fieldbyname('sta3').value='H2' then frmsellws.xh2.ItemIndex:=1
          else if query2.fieldbyname('sta3').value='H3' then frmsellws.xh2.ItemIndex:=2
          else if query2.fieldbyname('sta3').value='H4' then frmsellws.xh2.ItemIndex:=3;
        end else if (copy(worksheet1.tblshedule.FieldByName('flag3').value,1,1)='x') or (worksheet1.tblshedule.fieldbyname('flag3').value='z') then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select dt4,sect4 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
            open;
          end;
          if not query2.fieldbyname('dt4').isnull then frmsellws.DateEdit1.Date:=query2.fieldbyname('dt4').value;
          if not query2.fieldbyname('sect4').isnull then frmsellws.Edit1.Value:=query2.fieldbyname('sect4').value;
          frmsellws.xh4.Checked:=true;
          frmsellws.xh2.ItemIndex:=-1;
        end;
      end ;
      frmsellws.xh1.Enabled:=false;
      frmsellws.xh2.ItemIndex:=0;
      frmsellws.xh3.Enabled:=false;
      frmsellws.xh4.Enabled:=false;
      frmsellws.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure TfrmQNPII.BitBtn3Click(Sender: TObject);
var
  r18:boolean;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r51 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r51').value=true then r18:=true else r18:=false;
  end;
  if r18 then begin
  if frmexchange=nil then frmexchange:=tfrmexchange.create(nil);
  with frmexchange.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    commandtext:='select a.fccs,b.* from tblshedule a,tbl_lwo b where a.pline=b.pline and a.seq=b.seq '
                +'and b.j_no=:x1 and b.j2_job=:x2 and b.acol=:x3 and ((b.pline<>:x4) or (b.seq<>:x5)) and b.rwo=:x6 and b.did is not null';
    params[0].asstring:=worksheet1.tblshedule.fieldbyname('j_no').value;
    params[1].asstring:=worksheet1.tblshedule.fieldbyname('j2_job').value;
    params[2].asstring:=worksheet1.tblshedule.fieldbyname('acol').value;
    params[3].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
    params[4].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
    params[5].asstring:=worksheet1.tblshedule.fieldbyname('rwo').value;
    open;
  end;
  with frmexchange.Query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select a.fccs,b.* from tblshedule a,tbl_lwo b where a.pline=b.pline and a.seq=b.seq '
                +'and pline=:x1 and b.seq=:x2';
    //commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
    open;
  end;
  frmexchange.Show;
  end else showmessage('You have no right!');
end;

end.
