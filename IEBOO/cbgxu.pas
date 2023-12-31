unit cbgxu;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBTables, Db,
  Menus, QuickRpt, QrExport, ADODB, DBClient;

type
  Tfrmcbgx = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    PopupMenu1: TPopupMenu;
    AddNew1: TMenuItem;
    Delete1: TMenuItem;
    Save1: TMenuItem;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    Edit1: TEdit;
    Label13: TLabel;
    Edit2: TEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    BitBtn3: TBitBtn;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    DBMemo1: TDBMemo;
    BitBtn7: TBitBtn;
    Label24: TLabel;
    DBEdit20: TDBEdit;
    BitBtn8: TBitBtn;
    updatedata1: TMenuItem;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    zygx: TClientDataSet;
    zygx1: TClientDataSet;
    zygx1Rid: TIntegerField;
    zygx1Seq: TIntegerField;
    zygx1Kh: TStringField;
    zygx1Gxh: TIntegerField;
    zygx1Gxdh: TStringField;
    zygx1Gxm: TStringField;
    zygx1Sj: TFloatField;
    zygx1Dj: TFloatField;
    zygx1Scjs: TIntegerField;
    zygx1Yczl: TStringField;
    zygx1Zh: TStringField;
    zygx1Sxrs: TFloatField;
    zygx1Dz: TFloatField;
    zygx1Sz: TFloatField;
    zygx1Rz: TFloatField;
    zygx1Snz: TFloatField;
    zygx1Jg: TFloatField;
    zygx1Rs: TFloatField;
    zygx1Qt: TFloatField;
    zygx1Mx: TStringField;
    zygx1Dx: TStringField;
    zygx1Yzjb: TStringField;
    zygx1Zj: TStringField;
    zygx1Zf: TStringField;
    zygx1Zkcc: TStringField;
    zygx1Cfyq: TStringField;
    zygx1Zb: TStringField;
    zygx1Egxm: TStringField;
    zygx1Eyczl: TStringField;
    zygx1Ecfyq: TStringField;
    zygx1Eyzjb: TStringField;
    zygx1Yclj: TStringField;
    zygx1Tgxm: TStringField;
    zygx1Tyczl: TStringField;
    zygx1Tcfyq: TStringField;
    zygx1Tyzjb: TStringField;
    zygx1Ycdh: TStringField;
    zygx1Fyl: TFloatField;
    zygx1Bzsj: TFloatField;
    zygx1Bzsj1: TFloatField;
    zygx1Cw1: TStringField;
    zygx1Cw2: TStringField;
    zygx1Jhl: TFloatField;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    zygxSeq: TIntegerField;
    zygxKh: TStringField;
    zygxGch: TStringField;
    zygxSpmc: TStringField;
    zygxZb: TStringField;
    zygxZd: TStringField;
    zygxGzxl: TFloatField;
    zygxMb: TIntegerField;
    zygxMbxs: TIntegerField;
    zygxZsl: TIntegerField;
    zygxWcqj: TFloatField;
    zygxZrs: TIntegerField;
    zygxZsj: TFloatField;
    zygxBzzsj: TFloatField;
    zygxSdz: TIntegerField;
    zygxSsz: TIntegerField;
    zygxSsb: TIntegerField;
    zygxSjg: TIntegerField;
    zygxSdc: TIntegerField;
    zygxSrs: TIntegerField;
    zygxSqt: TIntegerField;
    zygxBz: TStringField;
    zygxKyl: TFloatField;
    zygxCs: TIntegerField;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    Query7: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure AddNew1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure zygx1SjChange(Sender: TField);
    procedure zygx1YczlChange(Sender: TField);
    procedure zygxMbChange(Sender: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure zygxZslChange(Sender: TField);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure zygx1AfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure zygx1GxmChange(Sender: TField);
    procedure zygxZrsChange(Sender: TField);
    procedure zygxAfterPost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure zygx1GxdhChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure zygx1AfterDelete(DataSet: TDataSet);
    procedure zygx1NewRecord(DataSet: TDataSet);
    procedure zygx1FylChange(Sender: TField);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure updatedata1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure zygxAfterScroll(DataSet: TDataSet);
    procedure zygx1BeforeDelete(DataSet: TDataSet);
    procedure zygxNewRecord(DataSet: TDataSet);
    procedure DBEdit5Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcbgx: Tfrmcbgx;
  seq:integer;
implementation

uses xzgxu, xggxxhu, scgxdyu, cpyscgxu, printlinebanace, dlu;

{$R *.DFM}

procedure Tfrmcbgx.BitBtn1Click(Sender: TObject);
var
  vn:integer;
begin
  if zygx.recordcount>0 then
  begin
      if application.messagebox('要刪除此記錄嗎?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
      begin
        vn:=zygx.fieldbyname('seq').asinteger;
        query1.close;
        query1.params.clear;
        Query1.params.CreateParam(ftinteger,'Seq',ptinput);
        query1.commandtext:='delete from IE_zygxn1 where seq=:seq';
//        query1.//prepare;
        query1.params[0].value:=vn;
        query1.execute;
        //////////////
        query1.close;
        query1.params.clear;
        Query1.params.CreateParam(ftinteger,'Seq',ptinput);        
        query1.commandtext:='delete from IE_zygxn where seq=:seq';
//        query1.//prepare;
        query1.params[0].value:=vn;
        query1.execute;
        zygx.Delete;
      end;
  end;
end;

procedure Tfrmcbgx.AddNew1Click(Sender: TObject);
begin
  zygx1.append;
  dbgrid1.selectedindex:=0;
end;

procedure Tfrmcbgx.Delete1Click(Sender: TObject);
begin
  if zygx1.recordcount>0 then
  begin
    if not dbgrid1.fields[1].isnull then
    begin
      if application.messagebox('要刪除此記錄嗎?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
      begin
        query1.close;
        query1.params.clear;
        Query1.params.CreateParam(ftinteger,'Rid',ptinput);        
        query1.commandtext:='delete from IE_zygxn1 where Rid=:Rid';
//        query1.//prepare;
        query1.params[0].value:=zygx1.fieldbyname('Rid').value;
        query1.execute;
        zygx1.delete;
      end;
    end;
  end;
end;

procedure Tfrmcbgx.Save1Click(Sender: TObject);
begin
  if not dbgrid1.fields[1].isnull then
  begin
    if (zygx1.state=dsedit) or (zygx1.state=dsinsert) then
    begin
      zygx1.Post;
    end;
  end;
end;

procedure Tfrmcbgx.FormShow(Sender: TObject);
begin
  zygx.Close;
  zygx.Open;
  (zygx.fieldbyname('zsj') as tfloatfield).displayformat:='#####0.00000';
  (zygx.fieldbyname('bzzsj') as tfloatfield).displayformat:='#####0.00000';  
  (zygx1.fieldbyname('sj') as tfloatfield).displayformat:='#####0.00000';
  (zygx1.fieldbyname('sxrs') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('dz') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('sz') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('rz') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('snz') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('jg') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('rs') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('qt') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('fyl') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('bzsj') as tfloatfield).displayformat:='#####0.00000';
  (zygx1.fieldbyname('jhl') as tfloatfield).displayformat:='#####0.00';
  (zygx1.fieldbyname('bzsj1') as tfloatfield).displayformat:='#####0.00000';
end;

procedure Tfrmcbgx.zygx1SjChange(Sender: TField);
begin
  if not zygx1.fieldbyname('gxm').isnull then
  begin
    if not ((zygx1.fieldbyname('sj').isnull) or (zygx1.fieldbyname('sj').value=0)) then
    begin
      if frmxzgx.dbedit4.text<>'' then
      begin
        zygx1.fieldbyname('bzsj').value:=zygx1.fieldbyname('sj').value*zygx1.fieldbyname('fyl').value;
        //zygx1.fieldbyname('scjs').asinteger:=strtoint(formatfloat('#####0',8/(zygx.fieldbyname('kyl').value/zygx.fieldbyname('gzxl').value)/zygx1.fieldbyname('sj').value));
        zygx1.fieldbyname('scjs').asinteger:=strtoint(formatfloat('#####0',8/zygx1.fieldbyname('fyl').value/zygx1.fieldbyname('sj').value));
        if zygx1.fieldbyname('scjs').asinteger>0 then
          zygx1.fieldbyname('sxrs').value:=strtoint(frmxzgx.dbedit4.text)/zygx1.fieldbyname('scjs').asinteger
        else zygx1.fieldbyname('sxrs').value:=0.00;
      end;
    end
    else begin
      zygx1.fieldbyname('scjs').asinteger:=0;
      zygx1.fieldbyname('sxrs').value:=0.00;
    end;
  end;
end;

procedure Tfrmcbgx.zygx1YczlChange(Sender: TField);
begin
  if not zygx1.fieldbyname('yczl').isnull then
  begin
    if copy(zygx1.fieldbyname('yczl').value,1,4)='單針' then
    begin
      zygx1.fieldbyname('dz').value:=zygx1.fieldbyname('sxrs').value;
      zygx1.fieldbyname('sz').value:=0.00;
      zygx1.fieldbyname('snz').value:=0.00;
      zygx1.fieldbyname('rz').value:=0.00;
      zygx1.fieldbyname('jg').value:=0.00;
      zygx1.fieldbyname('rs').value:=0.00;
      zygx1.fieldbyname('qt').value:=0.00;
    end
    else
    begin
      if copy(zygx1.fieldbyname('yczl').value,1,4)='雙針' then
      begin
        zygx1.fieldbyname('sz').value:=zygx1.fieldbyname('sxrs').value;
        zygx1.fieldbyname('dz').value:=0.00;
        zygx1.fieldbyname('snz').value:=0.00;
        zygx1.fieldbyname('rz').value:=0.00;
        zygx1.fieldbyname('jg').value:=0.00;
        zygx1.fieldbyname('rs').value:=0.00;
        zygx1.fieldbyname('qt').value:=0.00;
      end
      else
      begin
        if (copy(zygx1.fieldbyname('yczl').value,1,4)='人字') or (copy(zygx1.fieldbyname('yczl').value,1,4)='三步') then
        begin
          zygx1.fieldbyname('rz').value:=zygx1.fieldbyname('sxrs').value;
          zygx1.fieldbyname('dz').value:=0.00;
          zygx1.fieldbyname('sz').value:=0.00;
          zygx1.fieldbyname('snz').value:=0.00;
          zygx1.fieldbyname('jg').value:=0.00;
          zygx1.fieldbyname('rs').value:=0.00;
          zygx1.fieldbyname('qt').value:=0.00;
        end
        else
        begin
          if (copy(zygx1.fieldbyname('yczl').value,1,4)='刀車') or (copy(zygx1.fieldbyname('yczl').value,1,4)='仚車') then
          begin
            zygx1.fieldbyname('snz').value:=zygx1.fieldbyname('sxrs').value;
            zygx1.fieldbyname('dz').value:=0.00;
            zygx1.fieldbyname('sz').value:=0.00;
            zygx1.fieldbyname('rz').value:=0.00;
            zygx1.fieldbyname('jg').value:=0.00;
            zygx1.fieldbyname('rs').value:=0.00;
            zygx1.fieldbyname('qt').value:=0.00;
          end
          else
          begin
            if copy(zygx1.fieldbyname('yczl').value,1,4)='鈒骨' then
            begin
              zygx1.fieldbyname('jg').value:=zygx1.fieldbyname('sxrs').value;
              zygx1.fieldbyname('dz').value:=0.00;
              zygx1.fieldbyname('sz').value:=0.00;
              zygx1.fieldbyname('rz').value:=0.00;
              zygx1.fieldbyname('snz').value:=0.00;
              zygx1.fieldbyname('rs').value:=0.00;
              zygx1.fieldbyname('qt').value:=0.00;
            end
            else
            begin
              if copy(zygx1.fieldbyname('yczl').value,1,4)='人手' then
              begin
                zygx1.fieldbyname('rs').value:=zygx1.fieldbyname('sxrs').value;
                zygx1.fieldbyname('dz').value:=0.00;
                zygx1.fieldbyname('sz').value:=0.00;
                zygx1.fieldbyname('rz').value:=0.00;
                zygx1.fieldbyname('snz').value:=0.00;
                zygx1.fieldbyname('jg').value:=0.00;
                zygx1.fieldbyname('qt').value:=0.00;
              end
              else
              begin
                zygx1.fieldbyname('qt').value:=zygx1.fieldbyname('sxrs').value;
                zygx1.fieldbyname('dz').value:=0.00;
                zygx1.fieldbyname('sz').value:=0.00;
                zygx1.fieldbyname('rz').value:=0.00;
                zygx1.fieldbyname('snz').value:=0.00;
                zygx1.fieldbyname('jg').value:=0.00;
                zygx1.fieldbyname('rs').value:=0.00;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmcbgx.zygxMbChange(Sender: TField);
begin
  if not zygx.fieldbyname('mb').isnull then
  begin
    zygx.fieldbyname('mbxs').asinteger:=strtoint(formatfloat('#####0',zygx.fieldbyname('mb').asinteger/16));
    if zygx.fieldbyname('mb').asinteger>0 then
    begin
      zygx.fieldbyname('wcqj').asfloat:=zygx.fieldbyname('zsl').asinteger/zygx.fieldbyname('mb').asinteger;
      if (zygx1.state<>dsinsert) and (zygx1.state<>dsedit) then
      begin
       zygx1.DisableControls;
       zygx1.first;
       while not zygx1.eof do
       begin
        zygx1.edit;
        if zygx1.fieldbyname('scjs').asinteger>0 then
         zygx1.fieldbyname('sxrs').asfloat:=zygx.fieldbyname('mb').asinteger/zygx1.fieldbyname('scjs').asinteger
        else zygx1.fieldbyname('sxrs').asfloat:=0.00;
        if not zygx1.fieldbyname('yczl').isnull then
        begin
          if copy(zygx1.fieldbyname('yczl').value,1,4)='單針' then
          begin
            zygx1.fieldbyname('dz').value:=zygx1.fieldbyname('sxrs').value;
            zygx1.fieldbyname('sz').value:=0.00;
            zygx1.fieldbyname('snz').value:=0.00;
            zygx1.fieldbyname('rz').value:=0.00;
            zygx1.fieldbyname('jg').value:=0.00;
            zygx1.fieldbyname('rs').value:=0.00;
            zygx1.fieldbyname('qt').value:=0.00;
          end
          else
          begin
            if copy(zygx1.fieldbyname('yczl').value,1,4)='雙針' then
            begin
              zygx1.fieldbyname('sz').value:=zygx1.fieldbyname('sxrs').value;
              zygx1.fieldbyname('dz').value:=0.00;
              zygx1.fieldbyname('snz').value:=0.00;
              zygx1.fieldbyname('rz').value:=0.00;
              zygx1.fieldbyname('jg').value:=0.00;
              zygx1.fieldbyname('rs').value:=0.00;
              zygx1.fieldbyname('qt').value:=0.00;
            end
            else
            begin
              if (copy(zygx1.fieldbyname('yczl').value,1,4)='人字') or (copy(zygx1.fieldbyname('yczl').value,1,4)='三步') then
              begin
                zygx1.fieldbyname('rz').value:=zygx1.fieldbyname('sxrs').value;
                zygx1.fieldbyname('dz').value:=0.00;
                zygx1.fieldbyname('sz').value:=0.00;
                zygx1.fieldbyname('snz').value:=0.00;
                zygx1.fieldbyname('jg').value:=0.00;
                zygx1.fieldbyname('rs').value:=0.00;
                zygx1.fieldbyname('qt').value:=0.00;
              end
              else
              begin
                if (copy(zygx1.fieldbyname('yczl').value,1,4)='刀車') or (copy(zygx1.fieldbyname('yczl').value,1,4)='仚車') then
                begin
                  zygx1.fieldbyname('snz').value:=zygx1.fieldbyname('sxrs').value;
                  zygx1.fieldbyname('dz').value:=0.00;
                  zygx1.fieldbyname('sz').value:=0.00;
                  zygx1.fieldbyname('rz').value:=0.00;
                  zygx1.fieldbyname('jg').value:=0.00;
                  zygx1.fieldbyname('rs').value:=0.00;
                  zygx1.fieldbyname('qt').value:=0.00;
                end
                else
                begin
                  if copy(zygx1.fieldbyname('yczl').value,1,4)='鈒骨' then
                  begin
                    zygx1.fieldbyname('jg').value:=zygx1.fieldbyname('sxrs').value;
                    zygx1.fieldbyname('dz').value:=0.00;
                    zygx1.fieldbyname('sz').value:=0.00;
                    zygx1.fieldbyname('rz').value:=0.00;
                    zygx1.fieldbyname('snz').value:=0.00;
                    zygx1.fieldbyname('rs').value:=0.00;
                    zygx1.fieldbyname('qt').value:=0.00;
                  end
                  else
                  begin
                    if copy(zygx1.fieldbyname('yczl').value,1,4)='人手' then
                    begin
                      zygx1.fieldbyname('rs').value:=zygx1.fieldbyname('sxrs').value;
                      zygx1.fieldbyname('dz').value:=0.00;
                      zygx1.fieldbyname('sz').value:=0.00;
                      zygx1.fieldbyname('rz').value:=0.00;
                      zygx1.fieldbyname('snz').value:=0.00;
                      zygx1.fieldbyname('jg').value:=0.00;
                      zygx1.fieldbyname('qt').value:=0.00;
                    end
                    else
                    begin
                      zygx1.fieldbyname('qt').value:=zygx1.fieldbyname('sxrs').value;
                      zygx1.fieldbyname('dz').value:=0.00;
                      zygx1.fieldbyname('sz').value:=0.00;
                      zygx1.fieldbyname('rz').value:=0.00;
                      zygx1.fieldbyname('snz').value:=0.00;
                      zygx1.fieldbyname('jg').value:=0.00;
                      zygx1.fieldbyname('rs').value:=0.00;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
        zygx1.post;
        zygx1.next;
       end;
       zygx1.First;
       zygx1.EnableControls;
      end;
    end;
  end;
end;

procedure Tfrmcbgx.BitBtn2Click(Sender: TObject);
begin
  if (zygx.state=dsedit) or (zygx.state=dsinsert) then zygx.post;
  if zygx.recordcount>0 then
  begin
    if dbedit5.text<>'' then
    begin
      with query6 do begin
        close;
        params.clear;
        params.CreateParam(ftinteger,'Seq',ptinput);
        params.CreateParam(ftstring,'var1',ptinput);
        params.CreateParam(ftstring,'var2',ptinput);
        params.CreateParam(ftstring,'var3',ptinput);
        commandtext:='update IE_zygxn1 set zj=NULL where seq=:seq and zj in(:var1,:var2,:var3)';
//        prepare;
        params[0].value:=zygx.fieldbyname('seq').value;
        params[1].value:='0';
        params[2].value:='0.0';
        params[3].value:='0.00';
        execute;
        close;
        params.clear;
        params.CreateParam(ftinteger,'Seq',ptinput);
        params.CreateParam(ftstring,'var1',ptinput);
        params.CreateParam(ftstring,'var2',ptinput);
        params.CreateParam(ftstring,'var3',ptinput);
        commandtext:='update IE_zygxn1 set zf=NULL where seq=:seq and zf in(:var1,:var2,:var3)';
//        prepare;
        params[0].value:=zygx.fieldbyname('seq').value;
        params[1].value:='0';
        params[2].value:='0.0';
        params[3].value:='0.00';
        execute;
        close;
        params.clear;
        params.CreateParam(ftinteger,'Seq',ptinput);
        params.CreateParam(ftstring,'var1',ptinput);
        params.CreateParam(ftstring,'var2',ptinput);
        params.CreateParam(ftstring,'var3',ptinput);
        commandtext:='update IE_zygxn1 set zkcc=NULL where seq=:seq and zkcc in(:var1,:var2,:var3)';
//        prepare;
        params[0].value:=zygx.fieldbyname('seq').value;
        params[1].value:='0';
        params[2].value:='0.0';
        params[3].value:='0.00';
        execute;
      end;
      if frmscgxdy=nil then frmscgxdy:=tfrmscgxdy.create(self);
      frmscgxdy.label1.caption:='cbgx';
      frmscgxdy.show;
      {if frmprintline=nil then frmprintline:=tfrmprintline.create(self);
      frmprintline.zygx.filtered:=true;
      frmprintline.zygx.refresh;
      query5.close;
      query5.params.clear;
      query5.commandtext:='select kh,sum(scjs) as scjs,sum(dj) as dj,sum(sxrs) as zrs,sum(dz) as dz,sum(sz) as sz,sum(snz) as snz,');
      query5.commandtext:='sum(rz) as rz,sum(jg) as jg,sum(rs) as rs,sum(qt) as qt from zygx1 where kh=:kh group by kh');
      query5.prepare;
      query5.params[0].value:=dbedit5.text;
      query5.open;
      if query5.fieldbyname('zrs').asfloat>0.00 then
      frmprintline.zrs.Caption:=formatfloat('####0.00',query5.fieldbyname('zrs').asfloat)
      else frmprintline.zrs.Caption:='';
      if query5.fieldbyname('dz').asfloat>0.00 then
      frmprintline.dz.Caption:=formatfloat('#####0.00',query5.fieldbyname('dz').asfloat)
      else frmprintline.dz.caption:='';
      if query5.fieldbyname('sz').asfloat>0.00 then
      frmprintline.sz.Caption:=formatfloat('#####0.00',query5.fieldbyname('sz').asfloat)
      else frmprintline.sz.caption:='';
      if query5.fieldbyname('rz').asfloat>0.00 then
      frmprintline.rz.Caption:=formatfloat('#####0.00',query5.fieldbyname('rz').asfloat)
      else frmprintline.rz.caption:='';
      if query5.fieldbyname('rs').asfloat>0.00 then
      frmprintline.rs.Caption:=formatfloat('#####0.00',query5.fieldbyname('rs').asfloat)
      else frmprintline.rs.caption:='';
      if query5.fieldbyname('jg').asfloat>0.00 then
      frmprintline.jg.Caption:=formatfloat('#####0.00',query5.fieldbyname('jg').asfloat)
      else frmprintline.jg.caption:='';
      if query5.fieldbyname('qt').asfloat>0.00 then
      frmprintline.qt.Caption:=formatfloat('#####0.00',query5.fieldbyname('qt').asfloat)
      else frmprintline.qt.caption:='';
      if query5.fieldbyname('snz').asfloat>0.00 then
      frmprintline.snz.Caption:=formatfloat('#####0.00',query5.fieldbyname('snz').asfloat)
      else frmprintline.snz.caption:='';
      frmprintline.quickrep1.preview;}
    end;
  end;
end;

procedure Tfrmcbgx.zygxZslChange(Sender: TField);
begin
  if not zygx.fieldbyname('zsl').isnull then
  begin
    if zygx.fieldbyname('mb').asinteger>0 then
      zygx.fieldbyname('wcqj').asfloat:=zygx.fieldbyname('zsl').asinteger/zygx.fieldbyname('mb').asinteger;
  end;
end;

procedure Tfrmcbgx.Edit2Change(Sender: TObject);
begin
  zygx.editkey;
  zygx.indexfieldnames:='kh';
  zygx.setkey;
  zygx.findnearest([edit2.text]);
  zygx.AfterScroll(nil);
end;

procedure Tfrmcbgx.Edit1Change(Sender: TObject);
begin
  zygx.editkey;
  zygx.indexname:='zdk';
  zygx.setkey;
  zygx.findnearest([edit1.text]);
end;

procedure Tfrmcbgx.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    dbedit2.setfocus;
end;

procedure Tfrmcbgx.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    dbedit3.setfocus;
end;

procedure Tfrmcbgx.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    dbedit4.setfocus;
end;

procedure Tfrmcbgx.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    dbedit7.setfocus;
end;

procedure Tfrmcbgx.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    dbedit5.setfocus;
end;

procedure Tfrmcbgx.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    dbedit6.setfocus;
end;

procedure Tfrmcbgx.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    dbedit8.setfocus;
end;

procedure Tfrmcbgx.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    dbedit9.setfocus;
end;

procedure Tfrmcbgx.zygx1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1,2);
end;

procedure Tfrmcbgx.BitBtn3Click(Sender: TObject);
begin
  if frmxzgx=nil then frmxzgx:=tfrmxzgx.create(self);
  frmxzgx.DBEdit1.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit2.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit3.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit4.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit5.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit6.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit7.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit15.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit16.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit17.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit18.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit19.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit20.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit21.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit22.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit23.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit24.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit25.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit26.datasource:=frmcbgx.datasource2;
  frmxzgx.DBcombobox3.datasource:=frmcbgx.datasource2;
  frmxzgx.dbcombobox1.DataSource:=frmcbgx.datasource2;
  frmxzgx.DBNavigator1.DataSource:=frmcbgx.datasource2;
  frmxzgx.show;
  query2.close;
  query2.params.clear;
  Query2.params.createparam(ftinteger,'Seq',ptinput);
  query2.commandtext:='select max(gxh) as seq from IE_zygxn1 where seq=:seq';
//  query2.prepare;
  query2.params[0].value:=zygx.fieldbyname('seq').value;
  query2.open;
  //if query2.recordcount=0 then
  if query2.fieldbyname('seq').isnull then
  begin
    zygx1.append;
    zygx1.fieldbyname('kh').value:=dbedit5.text;
    zygx1.fieldbyname('gxh').value:=10;
    zygx1.post;
  end
  else
  begin
    //query2.last;
    zygx1.append;
    zygx1.fieldbyname('kh').value:=dbedit5.text;
    zygx1.fieldbyname('gxh').value:=(query2.fieldbyname('seq').value div 10)*10+10;//query2.recordcount+1;
    zygx1.post;
  end;
end;

procedure Tfrmcbgx.DBGrid1DblClick(Sender: TObject);
begin
  if frmxzgx=nil then frmxzgx:=tfrmxzgx.create(self);
  frmxzgx.DBEdit1.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit2.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit3.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit4.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit5.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit6.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit7.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit15.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit16.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit17.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit18.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit19.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit20.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit21.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit22.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit23.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit24.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit25.datasource:=frmcbgx.datasource2;
  frmxzgx.DBEdit26.datasource:=frmcbgx.datasource2;
  frmxzgx.DBcombobox3.datasource:=frmcbgx.datasource2;
  frmxzgx.dbcombobox1.DataSource:=frmcbgx.datasource2;
  frmxzgx.DBNavigator1.DataSource:=frmcbgx.datasource2;
  frmxzgx.show;
end;

procedure Tfrmcbgx.zygx1GxmChange(Sender: TField);
var
  ndxs,plxs:double;
begin
  ndxs:=1.00;plxs:=1.00;
  if not zygx1.fieldbyname('gxm').isnull then
  begin
      query3.close;
      query3.params.clear;
      Query3.params.createparam(ftstring,'mc',ptinput);      
      query3.commandtext:='select * from IE_bzgx1 where mc=:mc';
//      query3.prepare;
      query3.params[0].value:=zygx1.fieldbyname('gxm').value;
      query3.open;
      if query3.recordcount>0 then
      begin
        if (zygx1gxdh.IsNull) or (copy(zygx1gxdh.value,1,4)<>copy(query3.fieldbyname('dh').value,1,4)) then
        //if zygx1gxdh.isnull then
        zygx1.fieldbyname('gxdh').value:=query3.fieldbyname('dh').value;
        if copy(zygx1gxdh.value,5,1)<>'0' then
        begin
         query7.close;
         query7.params.clear;
         Query7.params.createparam(ftinteger,'js',ptinput);
         query7.commandtext:='select ndxs from IE_bzgxdtl where js=:js';
//         query7.prepare;
         query7.params[0].value:=strtoint(copy(zygx1gxdh.value,5,1));
         query7.open;
         if query7.recordcount>0 then ndxs:=query7.fieldbyname('ndxs').value;
         //showmessage(copy(zygx1gxdh.value,5,1)+' '+floattostr(ndxs));
        end;
        if copy(zygx1gxdh.value,6,1)<>'0' then
        begin
         query7.close;
         query7.params.clear;
         Query7.params.createparam(ftstring,'cz',ptinput);
         Query7.params.createparam(ftstring,'mc',ptinput);
         Query7.params.createparam(ftinteger,'js',ptinput);
         query7.commandtext:='select plxs from IE_plxs1 where cz=:cz and mc=:mc and js=:js';
//         query7.prepare;
         query7.params[0].value:=query3.fieldbyname('cz').value;
         query7.params[1].value:=query3.fieldbyname('mc').value;
         query7.params[2].value:=strtoint(copy(zygx1gxdh.value,6,1));
         query7.open;
         if query7.recordcount>0 then plxs:=query7.fieldbyname('plxs').value;
        end;
        zygx1.fieldbyname('sj').value:=query3.fieldbyname('sj').value*ndxs*plxs;
        zygx1.fieldbyname('dj').value:=zygx1.fieldbyname('sj').value*query3.fieldbyname('bzdj').value;
        if not query3.fieldbyname('czxh').isnull then
        zygx1.fieldbyname('zh').value:=query3.fieldbyname('czxh').value
        else zygx1.FieldByName('zh').Value:='';
        zygx1.fieldbyname('mx').value:=query3.fieldbyname('mx').value;
        zygx1.fieldbyname('dx').value:=query3.fieldbyname('dx').value;
        zygx1.fieldbyname('yzjb').value:=query3.fieldbyname('yzjzb').value;
        zygx1.fieldbyname('zj').value:=query3.fieldbyname('zj').value;
        zygx1.fieldbyname('zf').value:=query3.fieldbyname('zf').value;
        if not query3.fieldbyname('fryd').isnull then
        zygx1.fieldbyname('cfyq').value:=query3.fieldbyname('fryd').value;
        if copy(zygx1.fieldbyname('gxm').value,1,4)='單針' then
          zygx1.fieldbyname('yczl').value:='單針'
        else
        begin
          if copy(zygx1.fieldbyname('gxm').value,1,4)='雙針' then
            zygx1.fieldbyname('yczl').value:='雙針'
          else
          begin
            if copy(zygx1.fieldbyname('gxm').value,1,4)='三步' then
              zygx1.fieldbyname('yczl').value:='三步'
            else
            begin
              if copy(zygx1.fieldbyname('gxm').value,1,4)='人字' then
                zygx1.fieldbyname('yczl').value:='人字'
              else
              begin
                if copy(zygx1.fieldbyname('gxm').value,1,4)='鈒骨' then
                  zygx1.fieldbyname('yczl').value:='鈒骨'
                else
                begin
                  if copy(zygx1.fieldbyname('gxm').value,1,4)='人手' then
                    zygx1.fieldbyname('yczl').value:='人手'
                  else
                  begin
                    if copy(zygx1.fieldbyname('gxm').value,1,4)='打棗' then
                      zygx1.fieldbyname('yczl').value:='打棗'
                    else
                    begin
                      if copy(zygx1.fieldbyname('gxm').value,1,4)='打花' then
                        zygx1.fieldbyname('yczl').value:='打花'
                      else
                      begin
                        if copy(zygx1.fieldbyname('gxm').value,1,4)='魚網' then
                          zygx1.fieldbyname('yczl').value:='魚網'
                        else
                        begin
                          if copy(zygx1.fieldbyname('gxm').value,1,4)='刀車' then
                            zygx1.fieldbyname('yczl').value:='刀車'
                          else
                          begin
                            if copy(zygx1.fieldbyname('gxm').value,1,4)='仚車' then
                              zygx1.fieldbyname('yczl').value:='仚車'
                            else
                            begin
                              if copy(zygx1.fieldbyname('gxm').value,1,4)='萬能' then
                                zygx1.fieldbyname('yczl').value:='萬能車'
                              else
                                zygx1.fieldbyname('yczl').value:=query3.fieldbyname('cz').value;
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end
      else
      begin
       query3.close;
       query3.params.clear;
       Query3.params.createparam(ftstring,'mc',ptinput);
       query3.commandtext:='select * from IE_bzgx where mc=:mc';
//       query3.prepare;
       query3.params[0].value:=zygx1.fieldbyname('gxm').value;
       query3.open;
       if query3.recordcount>0 then
       begin
        if (zygx1gxdh.IsNull) or (copy(zygx1gxdh.value,1,4)<>copy(query3.fieldbyname('dh').value,1,4)) then
        //if zygx1gxdh.isnull then
        zygx1.fieldbyname('gxdh').value:=query3.fieldbyname('dh').value;
        if copy(zygx1gxdh.value,5,1)<>'0' then
        begin
         query7.close;
         query7.params.clear;
         Query7.Params.CreateParam(ftinteger,'js',ptinput);
         query7.commandtext:='select ndxs from IE_bzgxdtl where js=:js';
//         query7.prepare;
         query7.params[0].value:=strtoint(copy(zygx1gxdh.value,5,1));
         query7.open;
         if query7.recordcount>0 then ndxs:=query7.fieldbyname('ndxs').value;
        end;
        if copy(zygx1gxdh.value,6,1)<>'0' then
        begin
         query7.close;
         query7.params.clear;
         Query7.params.CreateParam(ftstring,'cz',ptinput);
         Query7.params.CreateParam(ftstring,'mc',ptinput);
         Query7.params.CreateParam(ftinteger,'js',ptinput);
         query7.commandtext:='select plxs from IE_plxs where cz=:cz and mc=:mc and js=:js';
//         query7.prepare;
         query7.params[0].value:=query3.fieldbyname('cz').value;
         query7.params[1].value:=query3.fieldbyname('mc').value;
         query7.params[2].value:=strtoint(copy(zygx1gxdh.value,6,1));
         query7.open;
         if query7.recordcount>0 then plxs:=query7.fieldbyname('plxs').value;
        end;
        zygx1.fieldbyname('sj').value:=query3.fieldbyname('sj').value*ndxs*plxs;
        zygx1.fieldbyname('dj').value:=zygx1.fieldbyname('sj').value*query3.fieldbyname('bzdj').value;
        zygx1.fieldbyname('yczl').value:=query3.fieldbyname('cz').value;
        if not query3.fieldbyname('czxh').value then
        zygx1.fieldbyname('zh').value:=query3.fieldbyname('czxh').value
        else zygx1.fieldbyname('zh').value:='';
        zygx1.fieldbyname('mx').value:=query3.fieldbyname('mx').value;
        zygx1.fieldbyname('dx').value:=query3.fieldbyname('dx').value;
        zygx1.fieldbyname('yzjb').value:=query3.fieldbyname('yzjzb').value;
        zygx1.fieldbyname('zj').value:=query3.fieldbyname('zj').value;
        zygx1.fieldbyname('zf').value:=query3.fieldbyname('zf').value;
        if not query3.fieldbyname('fryd').isnull then
        zygx1.fieldbyname('cfyq').value:=query3.fieldbyname('fryd').value;
       end;
      end;
  end;
end;

procedure Tfrmcbgx.zygxZrsChange(Sender: TField);
begin
  query1.close;
  query1.params.clear;
  Query1.Params.CreateParam(ftinteger,'Seq',ptinput);
  query1.commandtext:='select sum(sj) as zsj from IE_zygxn1 where seq=:seq';
//  query1.prepare;
  query1.params[0].value:=zygx.fieldbyname('seq').value;
  query1.open;
  if query1.recordcount>0 then
  begin
    if (not query1.fieldbyname('zsj').isnull) and (query1.fieldbyname('zsj').asfloat>0.00) and (zygx.fieldbyname('zrs').value>0) and (not zygx.fieldbyname('kyl').isnull) and (not zygx.fieldbyname('gzxl').isnull) then
    begin
      zygx.FieldByName('mb').asinteger:=round(zygx.fieldbyname('zrs').asinteger*8*zygx.fieldbyname('gzxl').value/(zygx.fieldbyname('kyl').value*query1.fieldbyname('zsj').asfloat));
    end;
  end;
end;

procedure Tfrmcbgx.zygxAfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmcbgx.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcbgx.zygx1GxdhChange(Sender: TField);
begin
  if not zygx1gxdh.IsNull then
  begin
    {query6.close;
    query6.params.clear;
    query6.commandtext:='select mc from bzgx where dh=:dh');
    query6.prepare;
    query6.params[0].value:=copy(zygx1gxdh.value,1,4)+'00';
    query6.open;
    if query6.recordcount>0 then
    begin
      zygx1gxm.value:=query6.fieldbyname('mc').value;
    end
    else
    begin}
      query6.close;
      query6.params.clear;
      Query6.params.CreateParam(ftstring,'dh',ptinput);
      query6.commandtext:='select mc from IE_bzgx1 where dh=:dh';
//      query6.prepare;
      query6.params[0].value:=copy(zygx1gxdh.value,1,4)+'00';
      query6.open;
      if query6.recordcount>0 then
      begin
        zygx1gxm.value:=query6.fieldbyname('mc').value;
      end;
    //end;
  end;
end;

procedure Tfrmcbgx.FormActivate(Sender: TObject);
begin
 if (zygx1.state=dsinsert) or (zygx1.state=dsedit) then
//  zygx1.refresh;
end;

procedure Tfrmcbgx.BitBtn5Click(Sender: TObject);
begin
  {if zygx.recordcount>0 then
  begin
    if dbedit5.text<>'' then
    begin
      if frmprintline=nil then frmprintline:=tfrmprintline.create(self);
      frmprintline.zygx.filtered:=true;
      frmprintline.zygx.refresh;
      query5.close;
      query5.params.clear;
      query5.commandtext:='select kh,sum(scjs) as scjs,sum(dj) as dj,sum(dz) as dz,sum(sz) as sz,sum(snz) as snz,');
      query5.commandtext:='sum(rz) as rz,sum(jg) as jg,sum(rs) as rs,sum(qt) as qt from zygx1 where kh=:kh group by kh');
      query5.prepare;
      query5.params[0].value:=dbedit5.text;
      query5.open;
      if query5.fieldbyname('dz').asfloat>0.00 then
      frmprintline.dz.Caption:=formatfloat('#####0.00',query5.fieldbyname('dz').asfloat)
      else frmprintline.dz.caption:='';
      if query5.fieldbyname('sz').asfloat>0.00 then
      frmprintline.sz.Caption:=formatfloat('#####0.00',query5.fieldbyname('sz').asfloat)
      else frmprintline.sz.caption:='';
      if query5.fieldbyname('rz').asfloat>0.00 then
      frmprintline.rz.Caption:=formatfloat('#####0.00',query5.fieldbyname('rz').asfloat)
      else frmprintline.rz.caption:='';
      if query5.fieldbyname('rs').asfloat>0.00 then
      frmprintline.rs.Caption:=formatfloat('#####0.00',query5.fieldbyname('rs').asfloat)
      else frmprintline.rs.caption:='';
      if query5.fieldbyname('jg').asfloat>0.00 then
      frmprintline.jg.Caption:=formatfloat('#####0.00',query5.fieldbyname('jg').asfloat)
      else frmprintline.jg.caption:='';
      if query5.fieldbyname('qt').asfloat>0.00 then
      frmprintline.qt.Caption:=formatfloat('#####0.00',query5.fieldbyname('qt').asfloat)
      else frmprintline.qt.caption:='';
      if query5.fieldbyname('snz').asfloat>0.00 then
      frmprintline.snz.Caption:=formatfloat('#####0.00',query5.fieldbyname('snz').asfloat)
      else frmprintline.snz.caption:='';
      frmprintline.quickrep1.exporttofilter(TQRASCIIEXPORTFilter.Create('C:\My Documents\ROUTE.txt'));
    end;
  end;}
end;

procedure Tfrmcbgx.BitBtn6Click(Sender: TObject);
begin
  if frmxggxxh=nil then frmxggxxh:=tfrmxggxxh.create(self);
  frmxggxxh.DBGridEh1.DataSource:=datasource2;
  frmxggxxh.Label1.Caption:='cbgx';
  frmxggxxh.show;
end;

procedure Tfrmcbgx.BitBtn7Click(Sender: TObject);
begin
  if frmcpyscgx=nil then frmcpyscgx:=tfrmcpyscgx.create(self);
  frmcpyscgx.edit1.text:=zygx.fieldbyname('kh').value;
  frmcpyscgx.edit2.text:='';
  frmcpyscgx.Label3.caption:='cbgx';
  frmcpyscgx.show;
end;

procedure Tfrmcbgx.zygx1AfterDelete(DataSet: TDataSet);
begin
  query1.close;
  query1.params.clear;
  Query1.Params.CreateParam(ftinteger,'Seq',ptinput);
  query1.commandtext:='select sum(sj) as zsj from IE_zygx1 where seq=:seq';
//  query1.prepare;
  query1.params[0].value:=zygx.fieldbyname('seq').value;
  query1.open;
  if query1.recordcount>0 then
  begin
    zygx.edit;
    zygx.FieldByName('zsj').asfloat:=query1.fieldbyname('zsj').asfloat;
    if query1.fieldbyname('zsj').asfloat>0.00 then
    zygx.fieldbyname('mb').asinteger:=round(zygx.fieldbyname('zrs').asinteger*8*zygx.fieldbyname('gzxl').value/(zygx.fieldbyname('kyl').value*query1.fieldbyname('zsj').asfloat));
    zygx.post;
  end;
end;

procedure Tfrmcbgx.zygx1NewRecord(DataSet: TDataSet);
begin
  zygx1.FieldByName('Rid').value:=GetSeq('ie_zygxn1','Rid');
  zygx1.FieldByName('seq').value:=zygx.fieldbyname('seq').value;
  zygx1.fieldbyname('fyl').value:=1.2/0.9;//zygx.fieldbyname('kyl').value/zygx.fieldbyname('gzxl').value;
end;

procedure Tfrmcbgx.zygx1FylChange(Sender: TField);
begin
  if not zygx1.fieldbyname('fyl').isnull then begin
    if not ((zygx1.fieldbyname('sj').isnull) or (zygx1.fieldbyname('sj').value=0)) then begin
      zygx1.fieldbyname('bzsj').value:=zygx1.fieldbyname('sj').value*zygx1.fieldbyname('fyl').value;
      if zygx1.fieldbyname('bzsj').value<>0 then zygx1.fieldbyname('scjs').asinteger:=round(8/zygx1.fieldbyname('bzsj').value);
      if zygx1.fieldbyname('scjs').value>0 then
        zygx1.fieldbyname('sxrs').value:=zygx.fieldbyname('mb').value/zygx1.fieldbyname('scjs').value
      else zygx1.fieldbyname('sxrs').value:=0.00;
      zygx1.fieldbyname('bzsj1').value:=zygx1.fieldbyname('bzsj').value*60;
    end
    else begin
      zygx1.fieldbyname('bzsj').value:=0;
      zygx1.fieldbyname('scjs').asinteger:=0;
      zygx1.fieldbyname('sxrs').value:=0.00;
      zygx1.fieldbyname('bzsj1').value:=0;
    end;
  end;
end;

procedure Tfrmcbgx.BitBtn8Click(Sender: TObject);
begin
  if zygx.recordcount>0 then begin
    if dbedit5.text>'' then begin
      with query6 do begin
        close;
        params.clear;
        params.CreateParam(ftinteger,'Seq',ptinput);
        commandtext:='update IE_zygxn1 set zj=NULL where seq=:seq and  cast(sj as float)=0';
//        prepare;
        params[0].value:=zygx.fieldbyname('seq').value;
        execute;
        close;
        params.clear;
        params.CreateParam(ftinteger,'Seq',ptinput);
        commandtext:='update IE_zygxn1 set zf=NULL where seq=:seq and  cast(zf as float)=0';
//        prepare;
        params[0].value:=zygx.fieldbyname('seq').value;
        execute;
        close;
        params.clear;
        params.CreateParam(ftinteger,'Seq',ptinput);
        commandtext:='update IE_zygxn1 set zkcc=NULL where seq=:seq and  cast(zkcc as float)=0';
//        prepare;
        params[0].value:=zygx.fieldbyname('seq').value;
        execute;
      end;
      if frmprintline=nil then frmprintline:=tfrmprintline.create(self);
      with frmprintline.zygx do begin
        close;
        params.Clear;
        params.CreateParam(ftinteger,'seq',ptinput);
        commandtext:='select * from ie_zygxn where seq=:seq';
        params[0].Value:=zygx.FieldByname('Seq').Value;
        open;
      end;
      with frmprintline.zygx1 do begin
        close;
        params.Clear;
        params.CreateParam(ftinteger,'seq',ptinput);
        commandtext:='select * from ie_zygxn1 where seq=:seq';
        params[0].Value:=zygx.FieldByname('Seq').Value;
        open;
      end;
      query5.close;
      query5.params.clear;
      Query5.Params.Createparam(ftinteger,'Seq',ptinput);
      query5.commandtext:='select seq,sum(sxrs) as zrs,sum(bzsj) as zjsj from IE_zygxn1 where seq=:seq group by seq';
//      query5.prepare;
      query5.params[0].value:=zygx.fieldbyname('seq').value;
      query5.open;
      if query5.fieldbyname('zrs').asfloat>0.00 then
      frmprintline.zrs.Caption:=formatfloat('####0.00',query5.fieldbyname('zrs').asfloat)
      else frmprintline.zrs.Caption:='';
      frmprintline.zjsj.caption:=formatfloat('#####0.0000',query5.fieldbyname('zjsj').asfloat);//frmprintline.zygx.fieldbyname('zsj').asfloat*kyl/gzxl);
      frmprintline.quickrep1.preview;
    end;
  end;
end;

procedure Tfrmcbgx.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrid1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmcbgx.updatedata1Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  with query1 do begin
    close;
    params.clear;
    //commandtext:='update zygx1 set fyl=:fyl,bzsj=sj where fyl=:fyl1');
    commandtext:='update IE_zygxn1 set bzsj=sj*fyl,bzsj1=sj*fyl*60 where fyl>0.00';
    //prepare;
    //params[0].asfloat:=1.2/0.9;
    //params[1].asfloat:=0.00;
    execute;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmcbgx.BitBtn9Click(Sender: TObject);
begin
  query1.close;
  query1.params.clear;
  Query1.Params.CreateParam(ftinteger,'seq',ptinput);
  query1.commandtext:='select sum(sj) as zsj1,sum(bzsj) as zsj from IE_zygxn1 where seq=:seq';
//  query1.prepare;
  query1.params[0].value:=zygx.fieldbyname('seq').value;
  query1.open;
  if query1.recordcount>0 then
  begin
    zygx.edit;
    zygx.FieldByName('zsj').asfloat:=query1.fieldbyname('zsj1').asfloat;
    if query1.fieldbyname('zsj').asfloat>0.00 then begin
      zygx.fieldbyname('bzzsj').value:=round(query1.fieldbyname('zsj').asfloat*10000)/10000;
      zygx.fieldbyname('mb').asinteger:=round(zygx.fieldbyname('zrs').asinteger*8/query1.fieldbyname('zsj').asfloat);
    end;
    zygx.post;
    zygx.AfterScroll(nil);
  end;
end;

procedure Tfrmcbgx.BitBtn10Click(Sender: TObject);
var
  i,j:integer;
begin
  screen.cursor:=crHourglass;
  with query1 do begin
    close;
    params.clear;
    params.CreateParam(ftinteger,'Seq',ptinput);
    commandtext:='select gxh,rid from IE_zygxn1 where seq=:seq order by gxh,rid';
//    prepare;
    params[0].value:=zygx.fieldbyname('seq').value;
    open;
    last;
    j:=recordcount;
    first;
    for i:=1 to j do begin
      with query2 do begin
        close;
        params.clear;
        params.CreateParam(ftinteger,'gxh',ptinput);
        params.CreateParam(ftinteger,'SEQ',ptinput);        
        params.CreateParam(ftinteger,'gxh1',ptinput);
        params.CreateParam(ftinteger,'Rid',ptinput);
        commandtext:='update IE_zygxn1 set gxh=:gxh where seq=:seq and gxh=:gxh1 and rid=:rid';
//        prepare;
        params[0].value:=i*10;
        params[1].value:=zygx.fieldbyname('seq').value;
        params[2].value:=query1.fieldbyname('gxh').value;
        params[3].value:=query1.fieldbyname('rid').value;
        execute;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  zygx.AfterScroll(nil);
  screen.cursor:=crDefault;
end;

procedure Tfrmcbgx.zygxAfterScroll(DataSet: TDataSet);
begin
  with zygx1 do begin
    close;
    params.Clear;
    params.CreateParam(ftinteger,'Seq',ptinput);
    commandtext:='select * from ie_zygxn1 where seq=:seq';
    params[0].AsInteger:=zygx.fieldbyname('seq').value;
    open;
  end;
end;

procedure Tfrmcbgx.zygx1BeforeDelete(DataSet: TDataSet);
begin
  with frmxtdl.ClientDataSet do begin
    close;
    params.clear;
    params.CreateParam(ftinteger,'Rid',ptinput);
    params.CreateParam(ftInteger,'Seq',ptinput);
    commandtext:='delete from ie_zygxn1 where Rid=:Rid and seq=:seq';
    params[0].AsInteger:=zygx1.fieldbyname('Rid').value;
    params[1].AsInteger:=zygx1.fieldbyname('seq').value;
    execute;
  end;
end;

procedure Tfrmcbgx.zygxNewRecord(DataSet: TDataSet);
begin
    seq:=GetSeq('ie_zygxn','seq');
    zygx.fieldbyname('seq').value:=seq;//GetSeq('ie_zygxn','seq');
    zygx.FieldByName('Gzxl').value:=0.9;
    zygx.fieldbyname('kyl').value:=1.2;
end;

procedure Tfrmcbgx.DBEdit5Exit(Sender: TObject);
var
  Stylno:string;
begin
  if zygx.State=dsinsert then begin
    Stylno:=DBEdit5.Text;
    with Query7 do begin
      close;
      params.clear;
      params.CreateParam(ftstring,'kh',ptinput);
      commandtext:='select * from ie_zygxn where kh=:kh';
      params[0].AsString:=stylno;
      open;
      if RecordCount>0 then begin
        MessageDlg('該款已經存在﹗',mtInformation,[mbOk], 0);
        zygx.Cancel;
        Edit2.Text:=Stylno;
      end
      else begin
        zygx.Post;
      end;
    end;
  end;
end;

procedure Tfrmcbgx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with zygx do begin
    if (state=dsedit) or (state=dsinsert) then post;
  end;
  with zygx1 do begin
    if (state=dsedit) or (state=dsinsert) then post;
  end;
end;

end.
