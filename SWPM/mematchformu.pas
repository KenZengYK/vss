unit mematchformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBClient, Grids, DBGridEh, StdCtrls, Buttons, ppDB, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppPrnabl,
  ppCtrls, ppBands, ppCache, ppVar, ppViewr, GridsEh, ppParameter;

type
  Tfrmmematch = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppShape2: TppShape;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ClientDataSet3: TClientDataSet;
    ClientDataSet4: TClientDataSet;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmematch: Tfrmmematch;

implementation
uses mainformu, scxzdformu;
{$R *.DFM}

procedure Tfrmmematch.BitBtn5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmematch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmematch:=nil;
end;

procedure Tfrmmematch.BitBtn4Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if clientdataset1.active=true then begin
    if clientdataset1.state=dsedit then clientdataset1.post;
    if clientdataset1.recordcount>0 then begin
      ppreport1.print;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmmematch.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmmematch.BitBtn3Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if clientdataset1.active=true then begin
    if clientdataset1.Recordcount>0 then begin
      if application.MessageBox('要全部移除嗎?','提示信息',mb_iconquestion+mb_okcancel)=id_ok then begin
        with clientdataset2 do begin
          close;
          params.clear;
          commandtext:='delete from mematch';
          execute;
        end;
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select * from mematch';
          open;
        end;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmmematch.BitBtn1Click(Sender: TObject);
begin
  if frmscxzd=nil then frmscxzd:=tfrmscxzd.create(self);
  frmscxzd.label2.caption:='xk';
  frmscxzd.show;
end;

procedure Tfrmmematch.BitBtn2Click(Sender: TObject);
begin
  if frmscxzd=nil then frmscxzd:=tfrmscxzd.create(self);
  frmscxzd.label2.caption:='jh';
  frmscxzd.show;
end;

procedure Tfrmmematch.FormShow(Sender: TObject);
var
  jno,jjob,jart:array[1..3] of string;
  jqty:array[1..3] of integer;
  jksrq,jwcrq:array[1..3] of tdate;
  i,j:integer;
begin
  screen.cursor:=crHourglass;
  for i:=1 to 3 do begin
    jno[i]:='';
    jjob[i]:='';
    jart[i]:='';
    jqty[i]:=0;
    jksrq[i]:=0;jwcrq[i]:=0;
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='delete from mematch';
    execute;
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'flag3',ptinput);
    params.createparam(ftstring,'flag31',ptinput);
    commandtext:='select distinct pline,seq,j_no,j2_job,artno,scqty,cfksrq,cfwcrq '
                +'from tblshedule where ((flag3=:flag3) or (flag3=:flag31)) and yzh=false '
                +'order by pline,seq';
    params[0].asstring:='1';
    params[1].asstring:='2';
    open;
    first;
    while not eof do begin
      with clientdataset3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'flag3',ptinput);
        params.createparam(ftstring,'pline',ptinput);
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='select distinct seq,j_no,j2_job,artno,scqty,cfksrq,cfwcrq from tblshedule '
                    +'where ((flag3 is null) or (flag3<:flag3)) and yzh=false and pline=:pline and seq>:seq order by seq';
        params[0].asstring:='1';
        params[1].asstring:=clientdataset2.fieldbyname('pline').value;
        params[2].asinteger:=clientdataset2.fieldbyname('seq').value;
        open;
        if not fieldbyname('j_no').isnull then begin
          jno[1]:=fieldbyname('j_no').value;
          jjob[1]:=fieldbyname('j2_job').value;
          jart[1]:=fieldbyname('artno').value;
          jqty[1]:=fieldbyname('scqty').value;
          if not fieldbyname('cfksrq').isnull then
          jksrq[1]:=fieldbyname('cfksrq').value;
          if not fieldbyname('cfwcrq').isnull then
          jwcrq[1]:=fieldbyname('cfwcrq').value;
          j:=1;
          next;
          if not eof then begin
            if not fieldbyname('j_no').isnull then begin
              jno[2]:=fieldbyname('j_no').value;
              jjob[2]:=fieldbyname('j2_job').value;
              jart[2]:=fieldbyname('artno').value;
              jqty[2]:=fieldbyname('scqty').value;
              if not fieldbyname('cfksrq').isnull then
              jksrq[2]:=fieldbyname('cfksrq').value;
              if not fieldbyname('cfwcrq').isnull then
              jwcrq[2]:=fieldbyname('cfwcrq').value;
              j:=2;
              next;
              if not eof then begin
                jno[3]:=fieldbyname('j_no').value;
                jjob[3]:=fieldbyname('j2_job').value;
                jart[3]:=fieldbyname('artno').value;
                jqty[3]:=fieldbyname('scqty').value;
                if not fieldbyname('cfksrq').isnull then
                jksrq[3]:=fieldbyname('cfksrq').value;
                if not fieldbyname('cfwcrq').isnull then
                jwcrq[3]:=fieldbyname('cfwcrq').value;
                j:=3;
              end;
            end;
          end;
        end else j:=1;
      end;
      for i:=1 to j do begin
       with clientdataset4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'pline',ptinput);
        params.createparam(ftstring,'j_no',ptinput);
        params.createparam(ftstring,'j2_job',ptinput);
        params.createparam(ftstring,'artno',ptinput);
        params.createparam(ftinteger,'qty',ptinput);
        params.createparam(ftdate,'ksrq',ptinput);
        params.createparam(ftdate,'wcrq',ptinput);
        params.createparam(ftstring,'j_no1',ptinput);
        params.createparam(ftstring,'j2_job1',ptinput);
        params.createparam(ftstring,'artno1',ptinput);
        params.createparam(ftinteger,'qty1',ptinput);
        params.createparam(ftdate,'ksrq1',ptinput);
        params.createparam(ftdate,'wcrq1',ptinput);
        commandtext:='insert into mematch(pline,j_no,j2_job,artno,qty,ksrq,wcrq,j_no1,j2_job1,artno1,qty1,ksrq1,wcrq1) '
                    +'values(:pline,:j_no,:j2_job,:artno,:qty,:ksrq,:wcrq,:j_no1,:j2_job1,:artno1,:qty1,:ksrq1,:wcrq1)';
        params[0].asstring:=clientdataset2.fieldbyname('pline').value;
        params[1].asstring:=clientdataset2.fieldbyname('j_no').value;
        params[2].asstring:=clientdataset2.fieldbyname('j2_job').value;
        params[3].asstring:=clientdataset2.fieldbyname('artno').value;
        params[4].asinteger:=clientdataset2.fieldbyname('scqty').value;
        params[5].asdate:=clientdataset2.fieldbyname('cfksrq').value;
        params[6].asdate:=clientdataset2.fieldbyname('cfwcrq').value;
        params[7].asstring:=jno[i];//clientdataset3.fieldbyname('j_no').value;
        params[8].asstring:=jjob[i];//clientdataset3.fieldbyname('j2_job').value;
        params[9].asstring:=jart[i];//clientdataset3.fieldbyname('artno').value;
        params[10].asinteger:=jqty[i];//clientdataset3.fieldbyname('scqty').value;
        params[11].asdate:=jksrq[i];//clientdataset3.fieldbyname('cfksrq').value;
        params[12].asdate:=jwcrq[i];//clientdataset3.fieldbyname('cfwcrq').value;
        execute;
       end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from mematch';
    open;
  end;
  screen.cursor:=crDefault;
end;

end.
