unit pdn_deadstockformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QExport4, QExport4XLS, DB, DBClient, GridsEh, DBGridEh, StdCtrls,
  Buttons, DBCtrls, ExtCtrls, ShellApi;

type
  Tfrmpdn_deadstock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Panel2: TPanel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    exls1: TQExport4XLS;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DBText3: TDBText;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdn_deadstock: Tfrmpdn_deadstock;
  mailsubject,mailbody:string;

implementation

uses mainformu, selpdnformu, pdn_defectnotepadformu;

{$R *.dfm}

procedure Tfrmpdn_deadstock.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmpdn_deadstock.BitBtn2Click(Sender: TObject);
begin
  //apply by PMC
  if not query1.fieldbyname('j_no').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select pmccfm from tbl_pdn_writeoff where seq=:x1 and pmccfm>''''';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('pmccfm').isnull then showmessage('Already applied by PMC!')
      else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='update tbl_pdn_writeoff set pmccfm='''+frmmain.combobox1.text+''' where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmpdn_deadstock.BitBtn3Click(Sender: TObject);
begin
  //confirm by QA
  if not query1.fieldbyname('j_no').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select qacfm from tbl_pdn_writeoff where seq=:x1 and qacfm>''''';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('qacfm').isnull then showmessage('Already confirmed by QA!')
      else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='update tbl_pdn_writeoff set qacfm='''+frmmain.combobox1.text+''' where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmpdn_deadstock.BitBtn4Click(Sender: TObject);
begin
  //confirm by Fty GM
  if not query1.fieldbyname('j_no').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select fgmcfm from tbl_pdn_writeoff where seq=:x1 and fgmcfm>''''';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('fgmcfm').isnull then showmessage('Already confirmed by Fty GM!')
      else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='update tbl_pdn_writeoff set fgmcfm='''+frmmain.combobox1.text+''' where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmpdn_deadstock.BitBtn5Click(Sender: TObject);
begin
  //confirm by HK MM
  if not query1.fieldbyname('j_no').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select hkoacfm from tbl_pdn_writeoff where seq=:x1 and hkoacfm>''''';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('hkoacfm').isnull then showmessage('Already confirmed by HKOA!')
      else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='update tbl_pdn_writeoff set hkoacfm='''+frmmain.combobox1.text+''' where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmpdn_deadstock.BitBtn6Click(Sender: TObject);
begin
  //confirm by HK GM
  if not query1.fieldbyname('j_no').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select hkgmcfm from tbl_pdn_writeoff where seq=:x1 and hkgmcfm>''''';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('hkgmcfm').isnull then showmessage('Already confirmed by HK GM!')
      else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='update tbl_pdn_writeoff set hkgmcfm='''+frmmain.combobox1.text+''' where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmpdn_deadstock.BitBtn7Click(Sender: TObject);
begin
  //confirm by CEO
  if not query1.fieldbyname('j_no').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select ceocfm from tbl_pdn_writeoff where seq=:x1 and ceocfm>''''';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('ceocfm').isnull then showmessage('Already approved by CEO!')
      else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='update tbl_pdn_writeoff set ceocfm='''+frmmain.combobox1.text+''' where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmpdn_deadstock.BitBtn8Click(Sender: TObject);
begin
  if frmpdn_defectnotepad=nil then frmpdn_defectnotepad:=tfrmpdn_defectnotepad.create(nil);
  frmpdn_defectnotepad.label3.caption:='SELPDN';
  frmpdn_defectnotepad.dbtext1.datasource:=frmselpdn.DataSource1;
  frmpdn_defectnotepad.dbtext2.datasource:=frmselpdn.DataSource1;
  frmpdn_defectnotepad.dbmemo1.datasource:=frmselpdn.DataSource1;
  frmpdn_defectnotepad.dbmemo1.readonly:=true;
  frmpdn_defectnotepad.show;
end;

procedure Tfrmpdn_deadstock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdn_deadstock:=nil;
end;

procedure Tfrmpdn_deadstock.Query1AfterPost(DataSet: TDataSet);
var
  strupd:string;
begin
  strupd:='update tbl_pdn_writeoff set ';
  if not query1.fieldbyname('gmt_defect').isnull then
  strupd:=strupd+'gmt_defect='+query1.fieldbyname('gmt_defect').asstring+''' '
  else strupd:=strupd+'gmt_defect=0 ';
  strupd:=strupd+'where seq='+query1.fieldbyname('seq').asstring+' ';
  strupd:=strupd+'and j2_job='''+query1.fieldbyname('j2_job').value+''' ';
  strupd:=strupd+'and rwo='''+query1.fieldbyname('rwo').value+''' ';
  strupd:=strupd+'and acol='''+query1.fieldbyname('acol').value+''' ';
  strupd:=strupd+'and did='+query1.fieldbyname('did').asstring;
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
end;

end.
