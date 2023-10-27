unit flagformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, DB, DBClient, StdCtrls, Buttons,
  ppBands, ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr,
  DBCtrls, GridsEh, ppParameter;

type
  Tfrmflag = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    BitBtn4: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText1: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    DBMemo1: TDBMemo;
    ppSummaryBand1: TppSummaryBand;
    ppMemo1: TppMemo;
    ppLabel1: TppLabel;
    title002: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    BitBtn5: TBitBtn;
    tittle002: TppLabel;
    Panel2: TPanel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Splitter1: TSplitter;
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure Query4AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Query4NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmflag: Tfrmflag;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmflag.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from flag_marks';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('fseq').value:=strtoint(label1.Caption);
  query1.fieldbyname('seq').value:=seq;
  if combobox1.Text>'' then query1.fieldbyname('fname').value:=combobox1.text
  else query1.fieldbyname('fname').value:='';
end;

procedure Tfrmflag.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select seq from flag_marks where fseq=:x1 and seq=:x2';
    params[0].asinteger:=query1.fieldbyname('fseq').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('seq').isnull then begin
      {
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftinteger,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='update flag_marks set fcode=:x1,fmarks=:x2,fmarks1=:x5,xh=:x6,fname=:x7 where fseq=:x3 and seq=:x4';

        if not query1.fieldbyname('fcode').isnull then
        params[0].asstring:=query1.fieldbyname('fcode').value
        else params[0].asstring:='';
        if not query1.fieldbyname('fmarks').isnull then
        params[1].asstring:=query1.fieldbyname('fmarks').value
        else params[1].asstring:='';
        if not query1.fieldbyname('fmarks1').isnull then
        params[2].asstring:=query1.fieldbyname('fmarks1').value
        else params[2].asstring:='';
        if not query1.fieldbyname('xh').isnull then
        params[3].asinteger:=query1.fieldbyname('xh').value
        else params[3].asinteger:=0;
        params[4].asstring:=query1.fieldbyname('fname').value;
        params[5].asinteger:=query1.fieldbyname('fseq').value;
        params[6].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      }
        str1:='update flag_marks set ';
        if not query1.fieldbyname('fcode').isnull then
        str1:=str1+'fcode='''+query1.fieldbyname('fcode').value+''','
        else str1:=str1+'fcode='''',';
        if not query1.fieldbyname('fmarks').isnull then
        str1:=str1+'fmarks='''+query1.fieldbyname('fmarks').value+''','
        else str1:=str1+'fmarks='''',';
        if not query1.fieldbyname('fmarks1').isnull then
        str1:=str1+'fmarks1='''+query1.fieldbyname('fmarks1').value+''','
        else str1:=str1+'fmarks1='''',';
        if not query1.fieldbyname('xh').isnull then
        str1:=str1+'xh='+query1.fieldbyname('xh').asstring+','
        else str1:=str1+'xh=0,';
        str1:=str1+'fname='''+query1.fieldbyname('fname').value+''' ';
        str1:=str1+'where fseq='+query1.fieldbyname('fseq').asstring+' ';
        str1:=str1+'and seq='+query1.fieldbyname('seq').asstring;
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        commandtext:='insert into flag_marks(fcode,fmarks,fmarks1,fseq,seq,fname) values(:x1,:x2,:x5,:x3,:x4,:x6)';
        if not query1.fieldbyname('fcode').isnull then
        params[0].asstring:=query1.fieldbyname('fcode').value
        else params[0].asstring:='';
        if not query1.fieldbyname('fmarks').isnull then
        params[1].asstring:=query1.fieldbyname('fmarks').value
        else params[1].asstring:='';
        if not query1.fieldbyname('fmarks1').isnull then
        params[2].asstring:=query1.fieldbyname('fmarks1').value
        else params[2].asstring:='';
        params[3].asinteger:=query1.fieldbyname('fseq').value;
        params[4].asinteger:=query1.fieldbyname('seq').value;
        params[5].asstring:=query1.fieldbyname('fname').value;
        execute;
      end;
    end;
  end;
end;

procedure Tfrmflag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmflag:=nil;
end;

procedure Tfrmflag.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmflag.BitBtn2Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
  if query4.State=dsedit then query4.post;
end;

procedure Tfrmflag.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmflag.Query1AfterOpen(DataSet: TDataSet);
begin
  dbgrideh1.RowHeight:=40;
  dbgrideh1.Columns[0].WordWrap:=true;
  dbgrideh1.Columns[1].WordWrap:=true;
  dbgrideh1.Columns[2].WordWrap:=true;
end;

procedure Tfrmflag.BitBtn3Click(Sender: TObject);
begin
  if query1.Active then begin
    title001.Caption:=frmflag.Caption;
    if combobox1.text>'' then title001.Caption:=title001.Caption+'  -  '+combobox1.text;
    if pos('Reason',frmflag.caption)>0 then title002.Caption:='(Fty/Workshop GAI)'
    else if pos('Locked',frmflag.caption)>0 then title002.Caption:='(Planning & Scheduling)'
    else if pos('phase',frmflag.caption)>0 then begin
      if pos('Ref',frmflag.caption)>0 then title002.Caption:='(Planning & Scheduling'
      else title002.Caption:='(Planning & Scheduling/Fty/Workshop GAI/QN GAI)'
    end else if pos('Impact',frmflag.caption)>0 then begin
      if query1.fieldbyname('fseq').value=9 then begin
        title002.Caption:='(Planning & Scheduling)';
        tittle002.Caption:='Before Sewing Operation/���_�e';
      end else if query1.fieldbyname('fseq').value=11 then begin
        title002.Caption:='(Fty/Workshop GAI)';
        tittle002.Caption:='During Sewing Operation/���_��';
      end;
    end else if pos('SAH',frmflag.caption)>0 then title002.Caption:='(Planning & Scheduling)'
    else if pos('QN',frmflag.caption)>0 then title002.Caption:='(Planning & Scheduling)'
    else if pos('Project',frmflag.caption)>0 then title002.Caption:='(Planning & Scheduling)'
    else if pos('Product',frmflag.caption)>0 then title002.Caption:='(Planning & Scheduling/Fty/Workshop GAI)'
    else if pos('RFID',frmflag.caption)>0 then title002.Caption:='(Fty/Workshop GAI)'
    else if pos('Scheduling',frmflag.caption)>0 then title002.Caption:='(Fty/Workshop GAI)'
    else if pos('Season',frmflag.caption)>0 then title002.Caption:='(Planning & Scheduling)';
    ppmemo1.Lines.Text:=dbmemo1.Text;
    ppReport1.Print;
  end;
end;

procedure Tfrmflag.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmflag.Query4AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query4.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select seq from flag_memo where fseq=:x1 and seq=:x2';
      params[0].asinteger:=query4.fieldbyname('fseq').value;
      params[1].asinteger:=query4.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='update flag_memo set memo1=:x1,fname=:x3 where fseq=:x2 and seq=:x4';

          params[0].asstring:=query4.fieldbyname('memo1').value;
          params[1].asstring:=query4.fieldbyname('fname').value;
          params[2].asinteger:=query4.fieldbyname('fseq').value;
          params[3].asinteger:=query4.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update flag_memo set ';
          str1:=str1+'memo1='''+query4.fieldbyname('memo1').value+''',';
          str1:=str1+'fname='''+query4.fieldbyname('fname').value+''' ';
          str1:=str1+'where fseq='+query4.fieldbyname('fseq').asstring+' ';
          str1:=str1+'and seq='+query4.fieldbyname('seq').asstring;
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='insert into flag_memo(memo1,fname,fseq,seq) values(:x1,:x3,:x2,:x4)';// set memo1=:x1,fname=:x3 where fseq=:x2 and seq=:x4';
          params[0].asstring:=query4.fieldbyname('memo1').value;
          params[1].asstring:=query4.fieldbyname('fname').value;
          params[2].asinteger:=query4.fieldbyname('fseq').value;
          params[3].asinteger:=query4.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmflag.FormShow(Sender: TObject);
begin
  combobox1.text:='';
  if (panel2.Visible=false) then begin
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_memo where fseq=:x1';
      params[0].asinteger:=query1.fieldbyname('fseq').value;
      open;
    end;
  end else begin
    combobox1.items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pgrp from cust_exfty where pgrp>''''';
      open;
      first;
      while not eof do begin
        combobox1.items.Add(fieldbyname('pgrp').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct fname as pgrp from flag_memo where fname>'''' and fname not in (select distinct pgrp from cust_exfty)';
      open;
      first;
      while not eof do begin
        combobox1.items.Add(fieldbyname('pgrp').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if (fieldbyname('r26').value=true) and (fieldbyname('r27').value=true) and (fieldbyname('r28').value=true)
    and (fieldbyname('r29').value=true) and (fieldbyname('r30').value=true) and (fieldbyname('r31').value=true)
    and (fieldbyname('r32').value=true) and (fieldbyname('r33').value=true) and (fieldbyname('r34').value=true) then
      bitbtn4.Enabled:=true else bitbtn4.Enabled:=false;
  end;
end;

procedure Tfrmflag.BitBtn4Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='delete from flag_marks where fseq=:x1 and seq=:x2';
      params[0].asinteger:=query1.fieldbyname('fseq').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmflag.ComboBox1Change(Sender: TObject);
begin
  if combobox1.Text>'' then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from flag_marks where fseq=16 and fname='''+combobox1.text+'''';
      open;
    end;
    with query4 do begin
      close;
      params.clear;
      commandtext:='select * from flag_memo where fseq=16 and fname='''+combobox1.text+'''';
      open;
    end;
  end;
end;

procedure Tfrmflag.Query4NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from flag_memo';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query4.fieldbyname('fseq').value:=query1.fieldbyname('fseq').value;
  query4.fieldbyname('fname').value:=combobox1.text;
  query4.fieldbyname('seq').value:=seq;
end;

end.
