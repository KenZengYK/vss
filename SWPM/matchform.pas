unit matchform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGridEh, StdCtrls, Buttons, DBClient, ExtCtrls;

type
  Tfrmmatch = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    tblmatch: TClientDataSet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    ClientDataSet2: TClientDataSet;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit3: TEdit;
    xh1: TCheckBox;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmatch: Tfrmmatch;

implementation
uses worksheet, mainformu, printmatchu, wl1matformu, psmatformu, pbmatformu,
  psmatform1u, remarksformu, popcformu, soppcformu;
{$R *.DFM}

procedure Tfrmmatch.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmmatch.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmatch.BitBtn3Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  if tblmatch.active=true then begin
    if tblmatch.recordcount>0 then begin
      if frmprintmatch=nil then frmprintmatch:=tfrmprintmatch.create(self);
      if xh1.Checked then begin
        frmprintmatch.khkh1.Caption:='�Ȥ�ڸ�';
        frmprintmatch.khkh2.DataField:='cstyle';
      end else begin
        frmprintmatch.khkh1.Caption:='�ڸ�';
        frmprintmatch.khkh2.DataField:='artno';
      end;
      frmprintmatch.jhcfksrq1.caption:='';//worksheet1.dateedit1.text;
      frmprintmatch.jhcfksrq2.caption:='';//worksheet1.dateedit2.text;
      frmprintmatch.yqlcrq1.caption:='';//worksheet1.dateedit3.text;
      frmprintmatch.yqlcrq2.caption:='';//worksheet1.dateedit4.text;
      frmprintmatch.project1.caption:=edit1.text;
      frmprintmatch.pline.caption:=edit2.text;
      frmprintmatch.ppreport1.print;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmmatch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmatch:=nil;
end;

procedure Tfrmmatch.SpeedButton1Click(Sender: TObject);
var
  cust,pline,tshop,cstyle,tplant:string;
begin
  screen.cursor:=crSQLWait;
  cust:=edit1.text;
  pline:=edit2.text;
  tshop:=edit3.text;
  cstyle:=edit4.text;
  tplant:=edit5.text;
  WITH CLIENTDATASET1 DO BEGIN
    CLOSE;
    PARAMS.CLEAR;
    PARAMS.CREATEPARAM(FTSTRING,'x1',PTINPUT);
    PARAMS.CREATEPARAM(FTSTRING,'x2',PTINPUT);
    PARAMS.CREATEPARAM(FTSTRING,'x3',PTINPUT);
    PARAMS.CREATEPARAM(FTSTRING,'x4',PTINPUT);
    COMMANDTEXT:='EXECUTE PROCEDURE GEN_TBLMATCH(:x1,:x2,:x3,:x4)';
    PARAMS[0].ASSTRING:=CUST+'%';
    PARAMS[1].ASSTRING:=pline;
    params[2].asstring:=tshop;
    params[3].asstring:=tplant;
    EXECUTE;
  END;
  with tblmatch do begin
    close;
    params.clear;
    commandtext:='select * from tblmatch where finished=0';
    if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
    if cust>'' then commandtext:=commandtext+' and (j_no like '''+cust+'%'')';
    if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
    if (combobox1.Text<>'ALL') and (combobox1.Text<>'*ALL') then commandtext:=commandtext+' and dbzs='''+combobox1.text+''''
    else if combobox1.text='*ALL' then commandtext:=commandtext+' and dbzs>''''';
    if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
    if tplant>'' then commandtext:=commandtext+' and (tplant like '''+tplant+'%'')';
    open;
    {
    if pline>'' then begin
      params.createparam(ftstring,'pline',ptinput);
      if combobox1.text='ALL' then
        commandtext:='select * from tblmatch where upper(pline)=:pline and finished=0'
      else
        commandtext:='select * from tblmatch where upper(pline)=:pline and finished=0 and dbzs='''+combobox1.text+'''';
      params[0].asstring:=pline;
    end else if cust>'' then begin
        params.createparam(ftstring,'j_no',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select * from tblmatch where (j_no like :j_no) and finished=0'
        else
          commandtext:='select * from tblmatch where (j_no like :j_no) and finished=0 and dbzs='''+combobox1.text+'''';
        params[0].asstring:=cust+'%';
    end else if tshop>'' then begin
        params.createparam(ftstring,'j_no',ptinput);
        if combobox1.text='ALL' then
          commandtext:='select * from tblmatch where (tshop like :j_no) and finished=0'
        else
          commandtext:='select * from tblmatch where (tshop like :j_no) and finished=0 and dbzs='''+combobox1.text+'''';
        params[0].asstring:=tshop+'%';
    end;
    open;
    }
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmmatch.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton1click(self);
end;

procedure Tfrmmatch.DBGridEh1DblClick(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if not dbgrideh1.fields[0].isnull then begin
    if dbgrideh1.selectedindex=70 then begin
      if frmwl1mat=nil then frmwl1mat:=tfrmwl1mat.create(nil);
      with frmwl1mat.Query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'jno',ptinput);
        params.createparam(ftstring,'job',ptinput);
        params.createparam(ftstring,'acol',ptinput);
        params.createparam(ftstring,'sopno',ptinput);
        params.createparam(ftinteger,'ordline',ptinput);
        commandtext:='select * from tblwl1matmatch where j_no=:jno and j2_job=:job and acol=:acol and sopno=:sopno and ordline=:ordline';
        params[0].asstring:=tblmatch.fieldbyname('j_no').value;
        params[1].asstring:=tblmatch.fieldbyname('j2_job').value;
        params[2].asstring:=tblmatch.fieldbyname('acol').value;
        params[3].asstring:=tblmatch.fieldbyname('sopno').value;
        params[4].asinteger:=tblmatch.fieldbyname('ordline').value;
        open;
      end;
      frmwl1mat.DBGridEh1.ReadOnly:=true;
      frmwl1mat.Show;
    {
    end else if dbgrideh1.selectedindex=50 then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'jno',ptinput);
        commandtext:='select distinct j_no from tblpsmat where j_no=:jno';
        params[0].asstring:=tblmatch.fieldbyname('j_no').value;
        open;
        if not fieldbyname('j_no').isnull then begin
          if frmpsmat1=nil then frmpsmat1:=tfrmpsmat1.create(nil);
          with frmpsmat1.Query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'jno',ptinput);
            commandtext:='select * from tblpsmat where j_no=:jno';
            params[0].asstring:=tblmatch.fieldbyname('j_no').value;
            open;
          end;
          frmpsmat1.Show;
        end else begin
          if frmpsmat=nil then frmpsmat:=tfrmpsmat.create(nil);
          with frmpsmat.Query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'jno',ptinput);
            params.createparam(ftstring,'job',ptinput);
            params.createparam(ftstring,'acol',ptinput);
            params.createparam(ftstring,'sopno',ptinput);
            params.createparam(ftinteger,'ordline',ptinput);
            commandtext:='select * from tblpsmatmatch where j_no=:jno and j2_job=:job and acol=:acol and sopno=:sopno and ordline=:ordline';
            params[0].asstring:=tblmatch.fieldbyname('j_no').value;
            params[1].asstring:=tblmatch.fieldbyname('j2_job').value;
            params[2].asstring:=tblmatch.fieldbyname('acol').value;
            params[3].asstring:=tblmatch.fieldbyname('sopno').value;
            params[4].asinteger:=tblmatch.fieldbyname('ordline').value;
            open;
          end;
          frmpsmat.DBGridEh1.ReadOnly:=true;
          frmpsmat.show;
        end;
      end;
    end else if dbgrideh1.selectedindex=51 then begin
      if frmpbmat=nil then frmpbmat:=tfrmpbmat.create(nil);
      with frmpbmat.Query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'jno',ptinput);
        params.createparam(ftstring,'job',ptinput);
        params.createparam(ftstring,'acol',ptinput);
        params.createparam(ftstring,'sopno',ptinput);
        params.createparam(ftinteger,'ordline',ptinput);
        commandtext:='select * from tblpbmatmatch where j_no=:jno and j2_job=:job and acol=:acol and sopno=:sopno and ordline=:ordline';
        params[0].asstring:=tblmatch.fieldbyname('j_no').value;
        params[1].asstring:=tblmatch.fieldbyname('j2_job').value;
        params[2].asstring:=tblmatch.fieldbyname('acol').value;
        params[3].asstring:=tblmatch.fieldbyname('sopno').value;
        params[4].asinteger:=tblmatch.fieldbyname('ordline').value;
        open;
      end;
      frmpbmat.DBGridEh1.ReadOnly:=true;
      frmpbmat.show;
    }
    end else if dbgrideh1.selectedindex=9 then begin
      if frmremarks=nil then frmremarks:=tfrmremarks.create(nil);
      frmremarks.DBMemo1.DataSource:=datasource1;
      frmremarks.DBMemo1.DataField:='WL3R';
      frmremarks.DBMemo1.ReadOnly:=true;
      frmremarks.Show;
    end else if dbgrideh1.selectedindex=14 then begin
      if frmremarks=nil then frmremarks:=tfrmremarks.create(nil);
      frmremarks.DBMemo1.DataSource:=datasource1;
      frmremarks.DBMemo1.DataField:='WL1R';
      frmremarks.DBMemo1.ReadOnly:=true;
      frmremarks.Show;
    end else if dbgrideh1.selectedindex=20 then begin
      if frmremarks=nil then frmremarks:=tfrmremarks.create(nil);
      frmremarks.DBMemo1.DataSource:=datasource1;
      frmremarks.DBMemo1.DataField:='WL2R';
      frmremarks.DBMemo1.ReadOnly:=true;
      frmremarks.Show;
    end else if dbgrideh1.selectedindex=26 then begin
      if frmremarks=nil then frmremarks:=tfrmremarks.create(nil);
      frmremarks.DBMemo1.DataSource:=datasource1;
      frmremarks.DBMemo1.DataField:='WL7R';
      frmremarks.DBMemo1.ReadOnly:=true;
      frmremarks.Show;
    end else if dbgrideh1.selectedindex=31 then begin
      if frmremarks=nil then frmremarks:=tfrmremarks.create(nil);
      frmremarks.DBMemo1.DataSource:=datasource1;
      frmremarks.DBMemo1.DataField:='WL4R';
      frmremarks.DBMemo1.ReadOnly:=true;
      frmremarks.Show;
    end else if dbgrideh1.selectedindex=36 then begin
      if frmremarks=nil then frmremarks:=tfrmremarks.create(nil);
      frmremarks.DBMemo1.DataSource:=datasource1;
      frmremarks.DBMemo1.DataField:='WL5R';
      frmremarks.DBMemo1.ReadOnly:=true;
      frmremarks.Show;
    end else if dbgrideh1.selectedindex=41 then begin
      if frmremarks=nil then frmremarks:=tfrmremarks.create(nil);
      frmremarks.DBMemo1.DataSource:=datasource1;
      frmremarks.DBMemo1.DataField:='WL6R';
      frmremarks.DBMemo1.ReadOnly:=true;
      frmremarks.Show;
    end else if dbgrideh1.SelectedIndex in [10,15,21,27,32,37] then begin
      if frmpopc=nil then frmpopc:=tfrmpopc.create(nil);
      with frmpopc.tblpopc do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from erp_popanel where cono=''P1'' and flag1=''0'' and jobno=:x1';
        params[0].asstring:=tblmatch.fieldbyname('j_no').value;
        open;
      end;
      frmpopc.show;
    end else if dbgrideh1.selectedindex=42 then begin
      if frmsoppc=nil then frmsoppc:=tfrmsoppc.create(nil);
      with frmsoppc.query1 do begin
        close;
        commandtext:='select prjno as [Project],jobno as [Job No],ordl as [Line],lbl as LBL,hh as HH,hg as HG,st as ST '
                    +'from s99vf403.phgdb_test.dbo.pk_soppc02 where flg1=''0'' and prjno='''+tblmatch.fieldbyname('j_no').value+'''';
        open;
      end;
      frmsoppc.show;
    end else if dbgrideh1.SelectedIndex=47 then begin
      if frmsoppc=nil then frmsoppc:=tfrmsoppc.create(nil);
      with frmsoppc.query1 do begin
        close;
        commandtext:='select prjno as [Project],jobno as [Job No],ordl as [Line],pb as PB,ctn as CTN '
                    +'from s99vf403.phgdb_test.dbo.pk_soppc02 where flg1=''0'' and prjno='''+tblmatch.fieldbyname('j_no').value+'''';
        open;
      end;
      frmsoppc.show;
    end else if dbgrideh1.SelectedIndex=49 then begin
      if frmsoppc=nil then frmsoppc:=tfrmsoppc.create(nil);
      with frmsoppc.query1 do begin
        close;
        commandtext:='select prjno as [Project],jobno as [Job No],ordl as [Line],appdate as [SZ Fitting Approved] '
                    +'from s99vf403.phgdb_test.dbo.pk_soppc02 where flg1=''0'' and prjno='''+tblmatch.fieldbyname('j_no').value+'''';
        open;
      end;
      frmsoppc.show;
    end else if dbgrideh1.SelectedIndex=51 then begin
      if frmsoppc=nil then frmsoppc:=tfrmsoppc.create(nil);
      with frmsoppc.query1 do begin
        close;
        commandtext:='select prjno as [Project],jobno as [Job No],ordl as [Line],sc as SC '
                    +'from s99vf403.phgdb_test.dbo.pk_soppc02 where flg1=''0'' and prjno='''+tblmatch.fieldbyname('j_no').value+'''';
        open;
      end;
      frmsoppc.show;
    end else if dbgrideh1.SelectedIndex in [52,53,54] then begin
      if frmsoppc=nil then frmsoppc:=tfrmsoppc.create(nil);
      with frmsoppc.query1 do begin
        close;
        commandtext:='select prjno as [Project],jobno as [Job No],ordl as [Line],pp as PP,s_c as SC,os as OS '
                    +'from s99vf403.phgdb_test.dbo.pk_soppc02 where flg1=''0'' and prjno='''+tblmatch.fieldbyname('j_no').value+'''';
        open;
      end;
      frmsoppc.show;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmmatch.FormShow(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct dbzs from tblshedule where dbzs>'''' and yzh=0';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('dbzs').value);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox1.text:='ALL';
end;

end.
