unit pdnwriteformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DBCtrls,
  Buttons, shellapi, Mask, rxToolEdit, QExport4, QExport4XLS;

type
  Tfrmpdnwrite = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    BitBtn4: TBitBtn;
    SaveDialog1: TSaveDialog;
    exls1: TQExport4XLS;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnwrite: Tfrmpdnwrite;

implementation

uses mainformu, pdnformu, pdn_defectnotepadformu;

{$R *.dfm}

procedure Tfrmpdnwrite.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpdnwrite:=nil;
end;

procedure Tfrmpdnwrite.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.Post;
end;

procedure Tfrmpdnwrite.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update tbl_pdn_writeoff set ';
  if not query1.fieldbyname('writeoff').isnull then
  str1:=str1+'writeoff='+query1.fieldbyname('writeoff').asstring+','
  else str1:=str1+'writeoff=0,';
  if not query1.fieldbyname('swing').isnull then
  str1:=str1+'swing='+query1.fieldbyname('swing').asstring+','
  else str1:=str1+'swing=0,';
  if not query1.fieldbyname('swing_pdn').isnull then
  str1:=str1+'swing_pdn='''+query1.fieldbyname('swing_pdn').value+''','
  else str1:=str1+'swing_pdn='''',';
  if not query1.fieldbyname('spqty').isnull then
  str1:=str1+'spqty='+query1.fieldbyname('spqty').asstring+','
  else str1:=str1+'spqty=0,';
  if not query1.fieldbyname('lstqty').isnull then
  str1:=str1+'lstqty='+query1.fieldbyname('lstqty').asstring+','
  else str1:=str1+'lstqty=0,';
  if not query1.fieldbyname('tstsp').isnull then
  str1:=str1+'tstsp='+query1.fieldbyname('tstsp').asstring+','
  else str1:=str1+'tstsp=0,';
  if not query1.fieldbyname('discrep').isnull then
  str1:=str1+'discrep='+query1.fieldbyname('discrep').asstring+','
  else str1:=str1+'discrep=0,';
  if not query1.fieldbyname('dis_rem').isnull then
  str1:=str1+'dis_rem='''+query1.fieldbyname('dis_rem').value+''','
  else str1:=str1+'dis_rem='''',';
  if not query1.fieldbyname('hqty').isnull then
  str1:=str1+'hqty='+query1.fieldbyname('hqty').asstring+','
  else str1:=str1+'hqty=0,';
  if not query1.fieldbyname('h_pdn').isnull then
  str1:=str1+'h_pdn='''+query1.fieldbyname('h_pdn').value+''' '
  else str1:=str1+'h_pdn='''' ';
  str1:=str1+'where seq='+query1.fieldbyname('seq').asstring+' ';
  str1:=str1+'and did='+query1.fieldbyname('did').asstring+' ';
  str1:=str1+'and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmpdnwrite.BitBtn2Click(Sender: TObject);
var
  str1,str2,sdt:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if (frmpdn.query1.fieldbyname('status').value>'5') and (label3.Caption<>'SAMPLE') then begin
    if application.MessageBox('Confirm swing the hold SKU?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_pdn_swinghold_01(:x1)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_pdn_swinghold_ref(:x1)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
    end;
  end else begin
    if (label3.Caption<>'SAMPLE') then begin
      if application.MessageBox('Confirm these write-off & swing SKU?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        str1:='update tbl_pdn_writeoff set cfm=1 where seq='+query1.fieldbyname('seq').asstring;
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
        {
        if frmpdn.Query1.fieldbyname('status').value<'5' then begin
          with frmpdn.Query1 do begin
            edit;
            if label3.Caption='DELAY' then
            fieldbyname('status').value:='5'
            else fieldbyname('status').value:='4';
            post;
          end;
        end;
        }
        if (label3.Caption='DELAY') then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='execute procedure sp_pdn_swingbalance_01(:x1)';
            params[0].asinteger:=query1.fieldbyname('seq').value;
            execute;
          end;
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='execute procedure sp_pdn_swingbalance_ref(:x1)';
            params[0].asinteger:=query1.fieldbyname('seq').value;
            execute;
          end;
        end;
      end;
    end else begin
      if dateedit1.date>0 then sdt:=formatdatetime('yyyy-MM-dd',dateedit1.date) else sdt:='0';
      if sdt>'0' then begin
        str1:=frmpdn.Query1.fieldbyname('tplant').value+' '+frmpdn.Query1.fieldbyname('pdn').value+' '+query1.fieldbyname('j_no').value+' '+query1.fieldbyname('j2_job').value+' '+sdt;
        str2:=extractfiledir(application.ExeName);
        shellexecute(0,'open',pchar(str2+'\sample_take\SampleTakeReport.exe'),pchar(str1),'c:\temp',sw_show);
      end else showmessage('No sample Quantity!');
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdnwrite.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  str1,str2:string;
begin
  if (frmpdn.Query1.fieldbyname('status').value='6') then begin
    //showmessage('PDN has been acted, can not change sample quantity!');
   str1:=frmpdn.Query1.fieldbyname('tplant').value+' '+query1.fieldbyname('seq').asstring+' '+frmpdn.Query1.fieldbyname('pdn').value+' '+query1.fieldbyname('j_no').value+' '+query1.fieldbyname('j2_job').value+' '+query1.fieldbyname('rwo').value+' '+query1.fieldbyname('acol').value+' '+query1.fieldbyname('psiz').value+' 0';
  end else begin
   str1:=frmpdn.Query1.fieldbyname('tplant').value+' '+query1.fieldbyname('seq').asstring+' '+frmpdn.Query1.fieldbyname('pdn').value+' '+query1.fieldbyname('j_no').value+' '+query1.fieldbyname('j2_job').value+' '+query1.fieldbyname('rwo').value+' '+query1.fieldbyname('acol').value+' '+query1.fieldbyname('psiz').value+' 1';
  end;
   str2:=extractfiledir(application.ExeName);
   //showmessage(str2+' '+str1);
   shellexecute(0,'open',pchar(str2+'\sample_take\SampleTake.exe'),pchar(str1),'c:\temp',sw_show);
  //end;
end;

procedure Tfrmpdnwrite.BitBtn3Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct j_no as Project,j2_job as WO,rwo as RWO,acol as Clr_Code,psiz as Size_Code,diff as Diff,spqty as Sample_Qty,'
                  +'writeoff as Writeoff,swing as Swing,swing_pdn as Swing_PDN,lstqty as Lost_Qty,hqty as Hold_Qty,h_pdn as Hold_PDN from tbl_pdn_writeoff where seq=:x1';
      params[0].AsInteger:=query1.fieldbyname('seq').value;
      open;
    end;
    if savedialog1.Execute then exls1.FileName:=savedialog1.FileName;
    exls1.Execute;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdnwrite.BitBtn4Click(Sender: TObject);
begin
  if frmpdn_defectnotepad=nil then frmpdn_defectnotepad:=tfrmpdn_defectnotepad.create(nil);
  frmpdn_defectnotepad.label3.caption:='PDN';
  frmpdn_defectnotepad.dbtext1.datasource:=frmpdn.DataSource1;
  frmpdn_defectnotepad.dbtext2.datasource:=frmpdn.DataSource1;
  frmpdn_defectnotepad.dbmemo1.datasource:=frmpdn.DataSource1;
  frmpdn_defectnotepad.dbmemo1.readonly:=false;
  frmpdn_defectnotepad.show;
end;

procedure Tfrmpdnwrite.FormShow(Sender: TObject);
begin
  if frmpdn.query1.fieldbyname('status').value=6 then begin
    dbgrideh1.columns[6].readonly:=true;
    dbgrideh1.columns[7].readonly:=true;
    dbgrideh1.columns[8].readonly:=true;
    dbgrideh1.columns[9].readonly:=true;
    dbgrideh1.columns[10].readonly:=true;
    dbgrideh1.columns[12].readonly:=true;
    dbgrideh1.columns[13].readonly:=true;
  end else begin
    dbgrideh1.columns[6].readonly:=false;
    dbgrideh1.columns[7].readonly:=false;
    dbgrideh1.columns[8].readonly:=false;
    dbgrideh1.columns[9].readonly:=false;
    dbgrideh1.columns[10].readonly:=false;
    dbgrideh1.columns[12].readonly:=false;
    dbgrideh1.columns[13].readonly:=false;
    //if (dbgrideh1.Columns[6].ReadOnly=false) then begin
    //  if (frmpdn.Query1.fieldbyname('status').value='6') then dbgrideh1.Columns[6].ReadOnly:=true
    //  else dbgrideh1.Columns[6].ReadOnly:=false;
    //end;
  end;
end;

end.
