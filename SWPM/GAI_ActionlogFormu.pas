unit GAI_ActionlogFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, GridsEh, DBGridEh, DB, DBClient,
  DBCtrls, Buttons, Mask, rxToolEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMemo,
  cxButtonEdit;

type
  TfrmGAI_Actionlog = class(TForm)
    Panel1: TPanel;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    lblfty: TLabel;
    Label2: TLabel;
    lblws: TLabel;
    Label3: TLabel;
    lblline: TLabel;
    Label4: TLabel;
    lblqn: TLabel;
    DBGridEh1: TDBGridEh;
    Label5: TLabel;
    DBGridEh2: TDBGridEh;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    Label7: TLabel;
    Query1: TClientDataSet;
    DataSource2: TDataSource;
    Label9: TLabel;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label10: TLabel;
    DateEdit1: TDateEdit;
    sdt01: TDateEdit;
    sdt02: TDateEdit;
    Panel3: TPanel;
    Label6: TLabel;
    lblcstyle: TLabel;
    Label11: TLabel;
    lblclr: TLabel;
    Label12: TLabel;
    lblqty: TLabel;
    Label13: TLabel;
    lblt3dt: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1act_date: TcxGridDBColumn;
    cxGrid1DBTableView1act_cnt: TcxGridDBColumn;
    cxGrid1DBTableView1act_issue: TcxGridDBColumn;
    cxGrid1DBTableView1act_marks: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    BitBtn2: TBitBtn;
    Label14: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    BitBtn4: TBitBtn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Label15: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pgc1Change(Sender: TObject);
    procedure Query4AfterPost(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure query1chk_change(Sender: TField);
    procedure query1cmp1_change(Sender: TField);
    procedure query4cmp1_change(Sender: TField);
    procedure Query4AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBGridEh1Columns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query5AfterPost(DataSet: TDataSet);
    procedure Query5NewRecord(DataSet: TDataSet);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure Query5AfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGAI_Actionlog: TfrmGAI_Actionlog;

implementation

uses mainformu, achievingformu, EWsGAIFormu, EWsGAI_DetailFormu,
GAI_ReasonsFormu, GAI_AL_detailFormu, CAP_MailFormu;

{$R *.dfm}

procedure TfrmGAI_Actionlog.BitBtn1Click(Sender: TObject);
begin
  if label9.caption='850GAI' then
    cxGrid1.SetFocus
  else cxGrid2.SetFocus;
  query5.append;
end;

procedure TfrmGAI_Actionlog.BitBtn2Click(Sender: TObject);
begin
  //if query1.state=dsedit then query1.post;
  if query4.state=dsedit then query4.post;
end;

procedure TfrmGAI_Actionlog.BitBtn3Click(Sender: TObject);
var
  del:boolean;
begin
  del:=true;
  if not query5.fieldbyname('usr').isnull then begin
    if frmmain.combobox1.text<>query5.fieldbyname('usr').value then del:=false;
  end;
  if (frmmain.combobox1.text='ADMIN') then del:=true;
  if del then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_gaiactionlog_deldetail(:x1,:x2,:x3,:x4)';
        params[0].asstring:=query5.fieldbyname('pline').value;
        params[1].asstring:=query5.fieldbyname('seq').value;
        params[2].asstring:=query5.fieldbyname('dt1').value;
        params[3].asstring:=query5.fieldbyname('dseq').value;
        execute;
      end;
      query5.Delete;
    end;
  end else exit;
end;

procedure TfrmGAI_Actionlog.BitBtn4Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
  //if query4.state=dsedit then query4.post;
end;

procedure TfrmGAI_Actionlog.BitBtn5Click(Sender: TObject);
begin
  if (query5.state=dsedit) or (query5.state=dsinsert) then query5.post;
end;

procedure TfrmGAI_Actionlog.BitBtn8Click(Sender: TObject);
var
  cat01,gai01:string;
  tg_cmpdt:TDate;
  cat02:string;
begin
  //if (adodataset2.State=dsEdit) or (adodataset2.State=dsInsert) then adodataset2.Post;
  bitbtn5click(self);
  if frmcap_Mail=nil then frmCap_Mail:=tfrmCap_Mail.create(nil);
  frmCap_Mail.edit1.text:='PH_SWPM@phgmt.com.hk';
  //frmCap_Mail.edit1.text:='PH_CP@phgmt.com.hk';
  frmCap_Mail.show;
  {
  with adoquery1 do begin
    close;
    sql.text:='select act_tolist,act_cclist,seq1 from phdb..tbl_cp_mailcont where seq=:x1 and seq1<=:x2 and act_tolist>'''' order by seq1 desc';
    parameters[0].value:=adodataset1.fieldbyname('seq').value;
    parameters[1].value:=adodataset1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('seq1').isnull then begin
      frmcap_Mail.edit3.text:=fieldbyname('act_tolist').value;
      frmcap_Mail.edit4.text:=fieldbyname('act_cclist').value;
    end;
  end;
  }

  //{
  if Label9.Caption='850GAI' then Begin
    gai01:='850 GAI';
    cat01:=query4.FieldByName('fl_zb').Value+query4.fieldbyname('yy_zb').value;
    cat02:=cat01+' | '+query4.FieldByName('yy_desc_e').Value+' | '+query4.FieldByName('yy_desc').Value;
    if not query4.FieldByName('target_cmpdt').IsNull then
    tg_cmpdt:=Query4.FieldByName('target_cmpdt').Value;
  end else if Label9.Caption='915GAI' then begin
    gai01:='915 GAI';
    cat01:=Query1.FieldByName('fl_zb').value+query1.FieldByName('yy_zb').Value;
    cat02:=cat01+' | '+query1.FieldByName('yy_desc_e').Value+' | '+query1.FieldByName('yy_desc').Value;
    if not query1.FieldByName('target_cmpdt').IsNull then
    tg_cmpdt:=Query1.FieldByName('target_cmpdt').Value;
  end;

  frmcap_Mail.edit5.text:=gai01+' | '+lblfty.caption+' '+lblline.Caption+' | QN#:'+lblqn.caption+' | Style#:'+lblcstyle.caption+' | Clr cde:'+lblclr.caption+' | Cause Cat.:'+cat01;
  frmcap_Mail.memo1.lines.clear;
  frmcap_Mail.memo1.lines.add('�iSender�j:           '+query5.fieldbyname('usr').value);
  frmcap_Mail.memo1.lines.add('�idd/time�j:             '+formatdatetime('mm/dd hh:nn',query5.fieldbyname('ddtm').value));
  frmcap_Mail.memo1.lines.add('�iFollow up seq.#�j:   '+query5.fieldbyname('a_seq').asstring);
  if (query5.fieldbyname('a_seq').value=1) then
  frmcap_Mail.memo1.lines.add('�iCause Cat.�j:   '+cat02);
  if (query5.fieldbyname('a_seq').value=1) then
  frmcap_Mail.memo1.lines.add('�iTarget cmpl date�j: '+formatdatetime('mm/dd',tg_cmpdt));
  frmcap_Mail.memo1.lines.add('�iFollow up content (in seq.)�j: ');
  frmcap_Mail.memo1.lines.add(query5.fieldbyname('remarks').value);
  frmcap_Mail.memo1.lines.add('==================================================');

  //{
  with query2 do begin
    close;
    params.Clear;
    Params.CreateParam(ftstring,'x1',ptinput);
    Params.CreateParam(ftinteger,'x2',ptinput);
    Params.CreateParam(ftdate,'x3',ptinput);
    Params.CreateParam(ftstring,'x4',ptinput);
    Params.CreateParam(ftinteger,'x5',ptinput);
    Params.CreateParam(ftinteger,'x6',ptinput);
    CommandText:='select * from tbl_gaiactionlog_detail where pline=:x1 and seq=:x2 and dt1=:x3 and typ=:x4 and rseq=:x5 and a_seq<:x6 order by a_seq desc';
    params[0].AsString:=query5.fieldbyname('pline').value;
    params[1].AsInteger:=query5.fieldbyname('seq').value;
    params[2].AsDate:=query5.fieldbyname('dt1').value;
    params[3].AsString:=query5.fieldbyname('typ').value;
    params[4].AsInteger:=query5.fieldbyname('rseq').value;
    params[5].AsInteger:=query5.fieldbyname('a_seq').value;
    open;
    first;
    while not eof do begin
      if (query2.fieldbyname('a_seq').value=1) then
      frmcap_Mail.memo1.lines.add('�iSender�j:           '+query2.fieldbyname('usr').value);
      if (query2.fieldbyname('a_seq').value=1) then
      frmcap_Mail.memo1.lines.add('�idd/time�j:             '+formatdatetime('mm/dd hh:nn',query2.fieldbyname('ddtm').value));
      frmcap_Mail.memo1.lines.add('�iFollow up seq.#�j:   '+query2.fieldbyname('a_seq').asstring);
      if (query2.fieldbyname('a_seq').value=1) then
      frmcap_Mail.memo1.lines.add('�iCause Cat.�j:   '+cat02);
      if (query2.fieldbyname('a_seq').value=1) then
      frmcap_Mail.memo1.lines.add('�iTarget cmpl date�j: '+formatdatetime('mm/dd',tg_cmpdt));
      frmcap_Mail.memo1.lines.add('�iFollow up content (in seq.)�j: ');
      frmcap_Mail.memo1.lines.add(query2.fieldbyname('remarks').value);
      frmcap_Mail.memo1.lines.add('==================================================');
      next;
    end;
  end;
  //}
  frmcap_Mail.show;
end;

procedure TfrmGAI_Actionlog.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if frmGAI_AL_detail=nil then frmGAI_AL_detail:=tfrmGAI_AL_detail.create(nil);
  frmGAI_AL_detail.show;
end;

procedure TfrmGAI_Actionlog.cxGridDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if frmGAI_AL_detail=nil then frmGAI_AL_detail:=tfrmGAI_AL_detail.create(nil);
  frmGAI_AL_detail.show;
end;

procedure TfrmGAI_Actionlog.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  if not query4.fieldbyname('dt1').isnull then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from tbl_gaiactionlog_detail where pline=:x1 and seq=:x2 and dt1=:x3 and rseq=:x4 and typ=''850''';
      params[0].asstring:=query4.fieldbyname('pline').value;
      params[1].asstring:=query4.fieldbyname('seq').value;
      params[2].asdate:=query4.fieldbyname('dt1').value;
      params[3].asstring:=query4.fieldbyname('rseq').value;
      open;
    end;
  end;
end;

procedure TfrmGAI_Actionlog.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  if not query1.fieldbyname('dt1').isnull then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from tbl_gaiactionlog_detail where pline=:x1 and seq=:x2 and dt1=:x3 and rseq=:x4 and typ=''915''';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asstring:=query1.fieldbyname('seq').value;
      params[2].asdate:=query1.fieldbyname('dt1').value;
      params[3].asstring:=query1.fieldbyname('rseq').value;
      open;
    end;
  end;
end;

procedure TfrmGAI_Actionlog.DBGridEh1Columns5EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  DBGridEh1DblClick(self);
end;

procedure TfrmGAI_Actionlog.DBGridEh1DblClick(Sender: TObject);
var
  dt1:tdatetime;
begin
  if label9.caption='850GAI' then begin
    //if not dbgrideh1.fields[0].isnull then dt1:=dbgrideh1.fields[0].value
    //else
    dt1:=dateedit1.date;
    if frmGAI_Reasons=nil then frmGAI_Reasons:=tfrmGAI_Reasons.Create(nil);
    with frmGAI_Reasons.Query4 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select * from line_shjs_remarks_new1 where pline=:x1 and seq=:x2 and dt1=:x3 and spe=''SPE''';
      params[0].asstring:=lblline.caption;
      params[1].asinteger:=strtoint(label10.caption);
      params[2].asdate:=dt1;//dateedit1.date;
      open;
    end;
    frmGAI_Reasons.dbgrideh1.datasource:=frmGAI_Reasons.datasource1;
    frmGAI_Reasons.label1.caption:='850GAI';
    if label9.caption='915GAI' then
      frmGAI_Reasons.dbgrideh1.columns[0].readonly:=true
    else frmGAI_Reasons.dbgrideh1.columns[0].readonly:=false;
    frmGAI_Reasons.Show;
  end;
end;

procedure TfrmGAI_Actionlog.DBGridEh2Columns5EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  DBGridEh2DblClick(self);
end;

procedure TfrmGAI_Actionlog.DBGridEh2DblClick(Sender: TObject);
begin
  if label9.caption='915GAI' then begin
    if frmGAI_Reasons=nil then frmGAI_Reasons:=tfrmGAI_Reasons.Create(nil);
    with frmGAI_Reasons.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='select * from tbl_e915_remarks1 where pline=:x1 and seq=:x2 and sdt1=:x3 and sdt2=:x4';
      params[0].asstring:=lblline.caption;
      params[1].asinteger:=strtoint(label10.caption);
      params[2].asdate:=sdt01.date;
      params[3].asdate:=sdt02.date;
      open;
    end;
    frmGAI_Reasons.dbgrideh1.datasource:=frmGAI_Reasons.datasource2;
    frmGAI_Reasons.label1.caption:='915GAI';
    if label9.caption='850GAI' then
      frmGAI_Reasons.dbgrideh1.columns[0].readonly:=true
    else frmGAI_Reasons.dbgrideh1.columns[0].readonly:=false;
    frmGAI_Reasons.Show;
  end;
end;

procedure TfrmGAI_Actionlog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmGAI_Actionlog:=nil;
end;

procedure TfrmGAI_Actionlog.FormShow(Sender: TObject);
begin
  if label9.caption='850GAI' then begin
    ts1.tabvisible:=true;
    ts2.tabvisible:=false;
  end else if label9.caption='915GAI' then begin
    ts2.tabvisible:=true;
    ts1.tabvisible:=false;
  end;
end;

procedure TfrmGAI_Actionlog.pgc1Change(Sender: TObject);
begin
  if pgc1.activepage=ts1 then begin
    //850 GAI
    if query4.active=false then begin
      with Query4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from line_shjs_remarks_new1 where pline=:x1 and seq=:x2 and chk=1 and spe=''SPE''';
        params[0].asstring:=lblline.caption;
        params[1].asinteger:=strtoint(label10.caption);
        open;
      end;
    end;
    if label9.caption='850GAI' then begin
      bitbtn1.enabled:=true;
      bitbtn3.enabled:=true;
      bitbtn5.enabled:=true;
      bitbtn8.enabled:=true;
      dbgrideh1.columns[15].readonly:=false;
      dbgrideh1.columns[17].readonly:=false;
    end else begin
      bitbtn1.enabled:=false;
      bitbtn3.enabled:=false;
      bitbtn5.enabled:=false;
      bitbtn8.enabled:=false;
      dbgrideh1.columns[15].readonly:=true;
      dbgrideh1.columns[17].readonly:=true;
    end;
  end else if pgc1.activepage=ts2 then begin
    //915 GAI
    if query1.active=false then begin
      with Query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tbl_e915_remarks1 where pline=:x1 and seq=:x2 and chk=1';
        params[0].asstring:=lblline.caption;
        params[1].asinteger:=strtoint(label10.caption);
        open;
      end;
    end;
    if label9.caption='915GAI' then begin
      bitbtn1.enabled:=true;
      bitbtn3.enabled:=true;
      bitbtn5.enabled:=true;
      bitbtn8.enabled:=true;
      dbgrideh2.columns[10].readonly:=false;
      dbgrideh2.columns[12].readonly:=false;
    end else begin
      bitbtn1.enabled:=false;
      bitbtn3.enabled:=false;
      bitbtn5.enabled:=false;
      bitbtn8.enabled:=false;
      dbgrideh2.columns[10].readonly:=true;
      dbgrideh2.columns[12].readonly:=true;
    end;
  end;
end;

procedure TfrmGAI_Actionlog.Query1AfterOpen(DataSet: TDataSet);
begin
  (query1.fieldbyname('dt1') as tdatetimefield).displayformat:='MM/DD';
  query1.fieldbyname('chk').onchange:=query1chk_change;
  query1.fieldbyname('cmp1').onchange:=query1cmp1_change;
end;

procedure TfrmGAI_Actionlog.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update tbl_e915_remarks1 set ';
  if not query1.fieldbyname('oth').isnull then
  str1:=str1+'oth='''+query1.fieldbyname('oth').asstring+''','
  else str1:=str1+'oth='''',';

  //{
  if not query1.fieldbyname('dt1').isnull then begin
    str1:=str1+'dt1='''+formatdatetime('yyyy/mm/dd',query1.fieldbyname('dt1').value)+''',';
  end else str1:=str1+'dt1=null,';

  if not query1.fieldbyname('cmp_dt').isnull then begin
    str1:=str1+'cmp_dt='''+formatdatetime('yyyy/mm/dd',query1.fieldbyname('cmp_dt').value)+''',';
  end else str1:=str1+'cmp_dt=null,';
  //}
  if not query1.fieldbyname('target_cmpdt').isnull then begin
    str1:=str1+'target_cmpdt='''+formatdatetime('yyyy/mm/dd',query1.fieldbyname('target_cmpdt').value)+''',';
  end else str1:=str1+'target_cmpdt=null,';

  if not query1.fieldbyname('cmp1').isnull then begin
    if query1.fieldbyname('cmp1').value=true then
    str1:=str1+'cmp1=1,' else str1:=str1+'cmp1=0,';
  end else str1:=str1+'cmp1=0,';
  if not query1.fieldbyname('chk').isnull then begin
    if query1.fieldbyname('chk').value=true then
    str1:=str1+'chk=1 ' else str1:=str1+'chk=0 ';
  end else str1:=str1+'chk=0 ';
  str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
  str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
  str1:=str1+'and sdt1='''+formatdatetime('yyyy/MM/dd',query1.fieldbyname('sdt1').value)+''' ';
  str1:=str1+'and sdt2='''+formatdatetime('yyyy/MM/dd',query1.fieldbyname('sdt2').value)+''' ';
  str1:=str1+'and rseq='+query1.fieldbyname('rseq').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure TfrmGAI_Actionlog.query1chk_change(Sender: TField);
begin
  if dateedit1.date=0 then dateedit1.date:=date;
  if not query1.fieldbyname('chk').isnull then begin
    if query1.fieldbyname('chk').value=true then begin
      query1.fieldbyname('dt1').value:=dateedit1.date;//date;
    end else query1.fieldbyname('dt1').value:=null;
  end;
end;

procedure TfrmGAI_Actionlog.query1cmp1_change(Sender: TField);
begin
  if not query1.fieldbyname('cmp1').isnull then begin
    if query1.fieldbyname('cmp1').value=true then begin
      query1.fieldbyname('cmp_dt').value:=date;
    end else query1.fieldbyname('cmp_dt').value:=null;
  end;
end;

procedure TfrmGAI_Actionlog.query4cmp1_change(Sender: TField);
begin
  if not query4.fieldbyname('cmp1').isnull then begin
    if query4.fieldbyname('cmp1').value=true then begin
      query4.fieldbyname('act_cmpdt').value:=date;
    end else query4.fieldbyname('act_cmpdt').value:=null;
  end;
end;

procedure TfrmGAI_Actionlog.Query5AfterOpen(DataSet: TDataSet);
begin
  (query5.fieldbyname('ddtm') as tdatetimefield).displayformat:='MM/DD HH:NN';
end;

procedure TfrmGAI_Actionlog.Query5AfterPost(DataSet: TDataSet);
var
  str1,dseqs:string;
  dseq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select dseq from tbl_gaiactionlog_detail where dseq=:x1';
    params[0].asinteger:=query5.fieldbyname('dseq').value;
    open;
    if not fieldbyname('dseq').isnull then dseqs:='1' else dseqs:='0';
  end;

  if dseqs='0' then begin
    //showmessage('0');
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftdatetime,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftstring,'x10',ptinput);
      commandtext:='insert into tbl_gaiactionlog_detail(pline,seq,dt1,rseq,dseq,ddtm,usr,a_seq,remarks,typ) '
                 +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10)';
      params[0].asstring:=query5.fieldbyname('pline').value;
      params[1].asinteger:=query5.fieldbyname('seq').value;
      params[2].asdate:=query5.fieldbyname('dt1').value;
      params[3].asinteger:=query5.fieldbyname('rseq').value;
      params[4].asinteger:=query5.fieldbyname('dseq').value;
      params[5].asdatetime:=query5.fieldbyname('ddtm').value;
      params[6].asstring:=query5.fieldbyname('usr').value;
      params[7].asinteger:=query5.fieldbyname('a_seq').value;
      if not query5.fieldbyname('remarks').isnull then
      params[8].asstring:=query5.fieldbyname('remarks').value
      else params[8].asstring:='';
      params[9].asstring:=query5.fieldbyname('typ').value;
      //showmessage('1');
      execute;
      //showmessage('2');
    end;
  end else begin
    str1:='update tbl_gaiactionlog_detail set ';
    if not query5.fieldbyname('remarks').isnull then
    str1:=str1+'remarks='''+query5.fieldbyname('remarks').asstring+''' '
    else str1:=str1+'remarks='''' ';

    str1:=str1+'where pline='''+query5.fieldbyname('pline').value+''' ';
    str1:=str1+'and seq='+query5.fieldbyname('seq').asstring+' ';
    str1:=str1+'and dseq='+query5.fieldbyname('dseq').asstring;
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  end;
end;

procedure TfrmGAI_Actionlog.Query5NewRecord(DataSet: TDataSet);
var
  dseq,a_seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(dseq) as dq from tbl_gaiactionlog_detail';
    open;
    if not fieldbyname('dq').isnull then dseq:=fieldbyname('dq').value+1 else dseq:=1;
  end;
  if label9.caption='850GAI' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select max(a_seq) as aq from tbl_gaiactionlog_detail where pline=:x1 and seq=:x2 and dt1=:x3 and rseq=:x4 and typ=''850''';
      params[0].asstring:=query4.fieldbyname('pline').value;
      params[1].asinteger:=query4.fieldbyname('seq').value;
      params[2].asdate:=query4.fieldbyname('dt1').value;
      params[3].asinteger:=query4.fieldbyname('rseq').value;
      open;
      if not fieldbyname('aq').isnull then a_seq:=fieldbyname('aq').value+1 else a_seq:=1;
    end;
    query5.fieldbyname('pline').value:=query4.fieldbyname('pline').value;
    query5.fieldbyname('seq').value:=query4.fieldbyname('seq').value;
    query5.fieldbyname('dt1').value:=query4.fieldbyname('dt1').value;
    query5.fieldbyname('typ').value:='850';
    query5.fieldbyname('rseq').value:=query4.fieldbyname('rseq').value;
    query5.fieldbyname('ddtm').value:=now;
    query5.fieldbyname('usr').value:=frmmain.combobox1.text;
    query5.fieldbyname('dseq').value:=dseq;
    query5.fieldbyname('a_seq').value:=a_seq;
  end else if label9.caption='915GAI' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select max(a_seq) as aq from tbl_gaiactionlog_detail where pline=:x1 and seq=:x2 and dt1=:x3 and rseq=:x4 and typ=''915''';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdate:=query1.fieldbyname('dt1').value;
      params[3].asinteger:=query1.fieldbyname('rseq').value;
      open;
      if not fieldbyname('aq').isnull then a_seq:=fieldbyname('aq').value+1 else a_seq:=1;
    end;
    query5.fieldbyname('pline').value:=query1.fieldbyname('pline').value;
    query5.fieldbyname('seq').value:=query1.fieldbyname('seq').value;
    query5.fieldbyname('dt1').value:=query1.fieldbyname('dt1').value;
    query5.fieldbyname('typ').value:='915';
    query5.fieldbyname('rseq').value:=query1.fieldbyname('rseq').value;
    query5.fieldbyname('ddtm').value:=now;
    query5.fieldbyname('usr').value:=frmmain.combobox1.text;  //Can use user name not user account?
    query5.fieldbyname('dseq').value:=dseq;
    query5.fieldbyname('a_seq').value:=a_seq;
  end;
end;

procedure TfrmGAI_Actionlog.Query4AfterOpen(DataSet: TDataSet);
begin
  (query4.fieldbyname('dt1') as tdatetimefield).displayformat:='MM/DD';
  query4.fieldbyname('cmp1').onchange:=query4cmp1_change;
end;

procedure TfrmGAI_Actionlog.Query4AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update line_shjs_remarks_new1 set ';
  if not query4.fieldbyname('opt').isnull then
  str1:=str1+'opt='+query4.fieldbyname('opt').asstring+','
  else str1:=str1+'opt=null,';
  if not query4.fieldbyname('rs').isnull then
  str1:=str1+'rs='+query4.fieldbyname('rs').asstring+','
  else str1:=str1+'rs=null,';
  if not query4.fieldbyname('rsbl').isnull then
  str1:=str1+'rsbl='+query4.fieldbyname('rsbl').asstring+','
  else str1:=str1+'rsbl=null,';
  if not query4.fieldbyname('js').isnull then
  str1:=str1+'js='+query4.fieldbyname('js').asstring+','
  else str1:=str1+'js=null,';
  if not query4.fieldbyname('jsbl').isnull then
  str1:=str1+'jsbl='+query4.fieldbyname('jsbl').asstring+','
  else str1:=str1+'jsbl=null,';
  if not query4.fieldbyname('oth').isnull then
  str1:=str1+'oth='''+query4.fieldbyname('oth').asstring+''','
  else str1:=str1+'oth='''',';
  if not query4.fieldbyname('wip1').isnull then begin
    if query4.fieldbyname('wip1').value=true then
    str1:=str1+'wip1=1,' else str1:=str1+'wip1=0,';
  end else str1:=str1+'wip1=0,';
  if not query4.fieldbyname('target_cmpdt').isnull then begin
    str1:=str1+'target_cmpdt='''+formatdatetime('yyyy/mm/dd',query4.fieldbyname('target_cmpdt').value)+''',';
  end else str1:=str1+'target_cmpdt=null,';
  if not query4.fieldbyname('act_cmpdt').isnull then begin
    str1:=str1+'act_cmpdt='''+formatdatetime('yyyy/mm/dd',query4.fieldbyname('act_cmpdt').value)+''',';
  end else str1:=str1+'act_cmpdt=null,';
  if not query4.fieldbyname('cmp1').isnull then begin
    if query4.fieldbyname('cmp1').value=true then
    str1:=str1+'cmp1=1,' else str1:=str1+'cmp1=0,';
  end else str1:=str1+'wip1=0,';
  if not query4.fieldbyname('chk').isnull then begin
    if query4.fieldbyname('chk').value=true then
    str1:=str1+'chk=1 ' else str1:=str1+'chk=0 ';
  end else str1:=str1+'chk=0 ';
  str1:=str1+'where pline='''+query4.fieldbyname('pline').value+''' ';
  str1:=str1+'and seq='+query4.fieldbyname('seq').asstring+' ';
  str1:=str1+'and dt1='''+formatdatetime('yyyy/MM/dd',query4.fieldbyname('dt1').value)+''' ';
  str1:=str1+'and spe='''+query4.fieldbyname('spe').value+''' ';
  str1:=str1+'and rseq='+query4.fieldbyname('rseq').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

end.
