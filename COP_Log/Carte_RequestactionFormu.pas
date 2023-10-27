unit Carte_RequestactionFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, ADODB, DB, RzBckgnd, StdCtrls, DBCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMemo, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox, Buttons, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DateUtils, siComp;

type
  TfrmCarte_Requestaction = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    RzBackground2: TRzBackground;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    Splitter1: TSplitter;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    Panel3: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    RzBackground1: TRzBackground;
    RzBackground3: TRzBackground;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1act_date: TcxGridDBColumn;
    cxGrid1DBTableView1act_cnt: TcxGridDBColumn;
    cxGrid1DBTableView1act_issue: TcxGridDBColumn;
    cxGrid1DBTableView1act_pra: TcxGridDBColumn;
    cxGrid1DBTableView1act_marks: TcxGridDBColumn;
    BitBtn9: TBitBtn;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    cxGrid1DBTableView1attachment: TcxGridDBColumn;
    siLang1: TsiLang;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADODataSet1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ADODataSet2NewRecord(DataSet: TDataSet);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure DBGridEh2Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn8Click(Sender: TObject);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure BitBtn9Click(Sender: TObject);
    procedure ADODataSet2AfterPost(DataSet: TDataSet);
    procedure ADODataSet2AfterScroll(DataSet: TDataSet);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure ADODataSet2BeforePost(DataSet: TDataSet);
    procedure DBGridEh2Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Requestaction: TfrmCarte_Requestaction;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu, Carte_ActionmarksFormu,
Carte_ItemchooseFormu, Carte_MailFormu, Carte_CRitemsFormu;

{$R *.dfm}

procedure TfrmCarte_Requestaction.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  (adodataset1.fieldbyname('act_date') as tdatetimefield).displayformat:='mm/dd hh:nn';
end;

procedure TfrmCarte_Requestaction.ADODataSet1NewRecord(DataSet: TDataSet);
var
  seq1,cnt:integer;
begin
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select max(seq1) as x1 from tbl_carte_sopc2';
    open;
    if not fieldbyname('x1').isnull then seq1:=fieldbyname('x1').Value+1
    else seq1:=1;
  end;
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select max(act_cnt) as x1 from tbl_carte_sopc2 where seq=:x1 and seq_i=:x2';
    parameters[0].value:=adodataset2.fieldbyname('seq').value;
    parameters[1].value:=adodataset2.fieldbyname('seq_i').value;
    open;
    if not fieldbyname('x1').isnull then cnt:=fieldbyname('x1').Value+1
    else cnt:=1;
  end;
  adodataset1.fieldbyname('seq').value:=adodataset2.fieldbyname('seq').value;
  adodataset1.fieldbyname('seq_i').value:=adodataset2.fieldbyname('seq_i').value;
  adodataset1.FieldByName('seq1').Value:=seq1;
  adodataset1.FieldByName('act_cnt').Value:=cnt;
  adodataset1.FieldByName('act_date').Value:=now;
  adodataset1.FieldByName('act_issue').Value:=frmCarte_Main.lbluser.caption;
  adodataset1.FieldByName('act_pra').Value:=true;
end;

procedure TfrmCarte_Requestaction.ADODataSet2AfterPost(DataSet: TDataSet);
begin
  if adodataset2.fieldbyname('act_cmp3').value=true then begin
    bitbtn1.enabled:=false;
    bitbtn2.enabled:=false;
    cxgrid1dbtableview1.optionsdata.editing:=false;
  end else begin
    bitbtn1.enabled:=true;
    bitbtn2.enabled:=true;
    cxgrid1dbtableview1.optionsdata.editing:=true;
  end;
end;

procedure TfrmCarte_Requestaction.ADODataSet2AfterScroll(DataSet: TDataSet);
begin
  if adodataset2.fieldbyname('act_cmp3').value=true then begin
    bitbtn1.enabled:=false;
    bitbtn2.enabled:=false;
    cxgrid1dbtableview1.optionsdata.editing:=false;
  end else begin
    bitbtn1.enabled:=true;
    bitbtn2.enabled:=true;
    cxgrid1dbtableview1.optionsdata.editing:=true;
  end;
end;

procedure TfrmCarte_Requestaction.ADODataSet2BeforePost(DataSet: TDataSet);
begin
  if adodataset2.fieldbyname('act_cmpdt3').isnull then begin
    showmessage('目標完成日期不能為空!');
    abort;
  end;
  if (adodataset2.fieldbyname('act_internal').value=false) and (adodataset2.fieldbyname('act_external').value=false) then begin
    showmessage('必須選擇對廠或對外!');
    abort;
  end;
end;

procedure TfrmCarte_Requestaction.ADODataSet2NewRecord(DataSet: TDataSet);
var
  seq1:integer;
begin
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select max(seq_i) as x1 from tbl_carte_sopc3';
    open;
    if not fieldbyname('x1').isnull then seq1:=fieldbyname('x1').Value+1
    else seq1:=1;
  end;
  adodataset2.fieldbyname('seq').value:=frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').value;
  adodataset2.fieldbyname('seq_i').value:=seq1;
  adodataset2.FieldByName('act_internal').Value:=false;
  adodataset2.FieldByName('act_external').Value:=false;
  adodataset2.FieldByName('act_cmp3').Value:=false;
  adodataset2.FieldByName('act_start3').Value:=date;
  adodataset2.FieldByName('act_issue3').Value:=frmCarte_Main.lbluser.caption;
end;

procedure TfrmCarte_Requestaction.BitBtn1Click(Sender: TObject);
begin
  //dbgrideh1.SetFocus;
  cxGrid1.SetFocus;
  adodataset1.append;
end;

procedure TfrmCarte_Requestaction.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then adodataset1.Delete;
end;

procedure TfrmCarte_Requestaction.BitBtn3Click(Sender: TObject);
begin
  if (adodataset1.State=dsEdit) or (adodataset1.State=dsInsert) then adodataset1.Post;
  if adodataset2.fieldbyname('act_start3').isnull then begin
    with adoquery1 do begin
      close;
      sql.text:='select act_date as x1,act_issue as x2 from tbl_carte_sopc2 where seq=:x1 and seq_i=:x2 and act_cnt=1';
      parameters[0].value:=adodataset2.fieldbyname('seq').value;
      parameters[1].value:=adodataset2.fieldbyname('seq_i').value;
      open;
      if not fieldbyname('x1').isnull then begin
         with adodataset2 do begin
           edit;
           fieldbyname('act_start3').value:=adoquery1.fieldbyname('x1').value;
           fieldbyname('act_issue3').value:=adoquery1.fieldbyname('x2').value;
           post;
         end;
      end;
    end;
  end;
end;

procedure TfrmCarte_Requestaction.BitBtn4Click(Sender: TObject);
begin
  dbgrideh2.SetFocus;
  adodataset2.append;
end;

procedure TfrmCarte_Requestaction.BitBtn5Click(Sender: TObject);
var
  del:boolean;
begin
  del:=true;
  if not adodataset2.fieldbyname('act_issue3').isnull then begin
    if frmCarte_Main.lbluser.caption<>adodataset2.fieldbyname('act_issue3').value then del:=false;
  end;
  if (frmCarte_Main.lbluser.caption='Admin') then del:=true;
  if del then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with adoquery1 do begin
        close;
        sql.text:='delete from tbl_carte_sopc2 where seq=:x1 and seq_i=:x2';
        parameters[0].value:=adodataset2.fieldbyname('seq').value;
        parameters[1].value:=adodataset2.fieldbyname('seq_i').value;
        execsql;
      end;
      adodataset2.Delete;
    end;
  end else exit;
end;

procedure TfrmCarte_Requestaction.BitBtn7Click(Sender: TObject);
var
  i:integer;
  act_item,act_cmp:string;
begin
  if (adodataset2.State=dsEdit) or (adodataset2.State=dsInsert) then adodataset2.Post;
  i:=0; act_item:='';
  with adoquery1 do begin
    close;
    sql.text:='select distinct seq_i,act_item3,act_cmp3 from tbl_carte_sopc3 where seq='+frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').asstring+' order by act_cmp3,seq_i';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if fieldbyname('act_cmp3').value=true then act_cmp:='*' else act_cmp:='';
      if i<=2 then begin
        if act_item>'' then act_item:=act_item+','+fieldbyname('act_item3').value+act_cmp
        else act_item:=fieldbyname('act_item3').value+act_cmp;
      end;
      application.processmessages;
      next;
    end;
  end;
  if i>=3 then act_item:=act_item+'...';
  with frmCarte_Ordprocessing.adodataset1 do begin
    edit;
    fieldbyname('act_item').value:=act_item;
    post;
  end;
end;

procedure TfrmCarte_Requestaction.BitBtn8Click(Sender: TObject);
begin
  if (adodataset2.State=dsEdit) or (adodataset2.State=dsInsert) then adodataset2.Post;
  bitbtn3click(self);

  if frmcarte_Mail=nil then frmCarte_Mail:=tfrmCarte_Mail.create(nil);
  frmcarte_mail.label9.caption:='Request';
  frmCarte_Mail.edit4.text:=frmCarte_Main.lblmail.caption+',';
  with adoquery1 do begin
    close;
    sql.text:='select tolist,cclist,seq1 from phdb..tbl_carte_sopc2 where seq=:x1 and seq1<=:x2 and tolist>'''' order by seq1 desc';
    parameters[0].value:=adodataset1.fieldbyname('seq').value;
    parameters[1].value:=adodataset1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('seq1').isnull then begin
      frmcarte_mail.edit3.text:=fieldbyname('tolist').value;
      frmcarte_mail.edit4.text:=fieldbyname('cclist').value;
    end;
  end;

  if label9.caption='CN' then
  frmCarte_Mail.edit5.text:=adodataset2.fieldbyname('act_item3').value+' - '+adodataset2.fieldbyname('act_subject3').value+' on [Project No.: '+frmCarte_Ordprocessing.adodataset1.fieldbyname('projectno').value+', 誌號: '+frmCarte_Ordprocessing.adodataset1.fieldbyname('keycode').value+', 發信者: '+adodataset1.fieldbyname('act_issue').value+', 跟進次數: '+adodataset1.fieldbyname('act_cnt').asstring+']'
  else
  frmCarte_Mail.edit5.text:=adodataset2.fieldbyname('act_item3').value+' - '+adodataset2.fieldbyname('act_subject3').value+' on [Project No.: '+frmCarte_Ordprocessing.adodataset1.fieldbyname('projectno').value+', Log No.: '+frmCarte_Ordprocessing.adodataset1.fieldbyname('keycode').value+', Sender: '+adodataset1.fieldbyname('act_issue').value+', # of follow up: '+adodataset1.fieldbyname('act_cnt').asstring+']';
  frmCarte_Mail.memo1.lines.clear;
  frmCarte_Mail.memo1.lines.add('');
  frmCarte_Mail.memo1.lines.add('Sender: '+adodataset1.fieldbyname('act_issue').value);
  frmCarte_Mail.memo1.lines.add('Date: '+formatdatetime('mm/dd hh:nn',adodataset1.fieldbyname('act_date').value));
  frmCarte_Mail.memo1.lines.add(adodataset1.fieldbyname('act_marks').value);
  frmCarte_Mail.show;
end;

procedure TfrmCarte_Requestaction.BitBtn9Click(Sender: TObject);
var
  i,seq,seq_i:integer;
  tkeycode:string;
begin
  if application.messagebox('要複製此項目主題到其它選擇的Log No.中?','確定',mb_iconquestion+mb_okcancel)=idok then begin
    bitbtn7click(self);
    bitbtn3click(self);
    seq:=adodataset2.fieldbyname('seq').value;
    seq_i:=adodataset2.fieldbyname('seq_i').value;
    frmCarte_Ordprocessing.cxGrid1DBBandedTableView1.DataController.GotoFirst;
    for i:=0 to frmCarte_Ordprocessing.cxGrid1DBBandedTableView1.DataController.filteredrecordcount-1 do begin
      tkeycode:=frmCarte_Ordprocessing.cxGrid1DBBandedTableView1.DataController.GetItemByFieldName('keycode').EditValue;
      with adoquery1 do begin
        close;
        //parameters.clear;
        sql.text:='exec sp_carte_copyua :x1,:x2,:x3';
        parameters[0].value:=seq;
        parameters[1].value:=seq_i;
        parameters[2].value:=tkeycode;
        execsql;
      end;
      frmCarte_Ordprocessing.cxGrid1DBBandedTableView1.DataController.GotoNext;
    end;
    frmCarte_Ordprocessing.cxGrid1DBBandedTableView1.DataController.GotoFirst;
    ShowMessage('已成功複製到其它所選擇的有關Log No.中!');
  end;
end;

procedure TfrmCarte_Requestaction.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  with adodataset1 do begin
    close;
    //parameters.clear;
    commandtext:='select * from tbl_carte_sopc2 where seq=:x1 and seq_i=:x2';
    parameters[0].value:=adodataset2.fieldbyname('seq').value;
    parameters[1].value:=adodataset2.fieldbyname('seq_i').value;
    open;
  end;
end;

procedure TfrmCarte_Requestaction.DBGridEh1Columns4EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if frmCarte_Actionmarks=nil then frmCarte_Actionmarks:=tfrmCarte_Actionmarks.create(nil);
  frmCarte_Actionmarks.show;
end;

procedure TfrmCarte_Requestaction.DBGridEh2CellClick(Column: TColumnEh);
var
  cmp:boolean;
begin
  cmp:=true;
  if not adodataset2.fieldbyname('act_issue3').isnull then begin
    if frmCarte_Main.lbluser.caption<>adodataset2.fieldbyname('act_issue3').value then cmp:=false;
  end;
  if frmCarte_Main.lbluser.caption='Admin' then cmp:=true;
  if (column=dbgrideh2.columns[6]) then begin
    if not cmp then abort;
  end;
end;

procedure TfrmCarte_Requestaction.DBGridEh2Columns0EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if frmCarte_Itemchoose=nil then frmCarte_Itemchoose:=tfrmCarte_Itemchoose.create(nil);
  frmCarte_Itemchoose.Label1.Caption:='Request';
  frmCarte_Itemchoose.show;
end;

procedure TfrmCarte_Requestaction.DBGridEh2Columns1EditButtonClick(
  Sender: TObject; var Handled: Boolean);
var
  seq31,y1,m1,icount:integer;
  seqno:string;
begin
  if dbgrideh2.fields[7].isnull then begin
    if application.messagebox('建立新的物料行動誌號?','確定',mb_iconquestion+mb_okcancel)=idok then begin
      y1:=yearof(date);
      m1:=monthof(date);
      with adoquery1 do begin
        close;
        sql.text:='select max(seq31) as x1 from tbl_carte_sopc301';
        open;
        if not fieldbyname('x1').isnull then seq31:=fieldbyname('x1').value+1 else seq31:=1;
      end;
      with adoquery1 do begin
        close;
        sql.text:='select count(distinct seqno) as x1 from tbl_carte_sopc301 where datepart(yyyy,crdt)=:x1 and datepart(mm,crdt)=:x2';
        parameters[0].value:=y1;
        parameters[1].value:=m1;
        open;
        if not fieldbyname('x1').isnull then icount:=fieldbyname('x1').value+1 else icount:=1;
      end;
      seqno:=copy('0'+inttostr(m1),length('0'+inttostr(m1))-1,2)+'-'+copy('0'+inttostr(icount),length('0'+inttostr(icount))-1,2);
    end;
    adodataset2.edit;
    adodataset2.fieldbyname('link_seq').value:=seq31;
    adodataset2.fieldbyname('seqno3').value:=seqno;
    adodataset2.post;
  end;
  if not adodataset2.fieldbyname('link_seq').isnull then begin
    if frmCarte_CRitems=nil then frmCarte_CRitems:=tfrmCarte_CRitems.create(nil);
    with frmCarte_CRitems.adodataset1 do begin
      close;
      commandtext:='exec sp_carte_genchaseitems_new :x1';
      parameters[0].value:=adodataset2.fieldbyname('link_seq').value;
      open;
    end;
    frmCarte_CRitems.show;
  end;
end;

procedure TfrmCarte_Requestaction.DBGridEh2Exit(Sender: TObject);
begin
  bitbtn7click(self);
end;

procedure TfrmCarte_Requestaction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Requestaction:=nil;
end;

procedure TfrmCarte_Requestaction.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmCarte_Main.ComboBox2.text;
end;

end.
