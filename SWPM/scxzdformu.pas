unit scxzdformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGridEh, Db, DBClient, Buttons;

type
  Tfrmscxzd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    Label2: TLabel;
    ClientDataSet4: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmscxzd: Tfrmscxzd;

implementation
uses mainformu, mematchformu;
{$R *.DFM}

procedure Tfrmscxzd.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmscxzd.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if label2.caption='xk' then begin
    if clientdataset1.active=true then begin
      if not clientdataset1.fieldbyname('cfksrq').isnull then begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftstring,'j_no',ptinput);
          params.createparam(ftstring,'j2_job',ptinput);
          params.createparam(ftstring,'artno',ptinput);
          params.createparam(ftdate,'ksrq',ptinput);
          commandtext:='select * from mematch where pline=:pline and j_no=:j_no and j2_job=:j2_job and artno=:artno and ksrq=:ksrq';
          params[0].asstring:=clientdataset1.fieldbyname('pline').value;
          params[1].asstring:=clientdataset1.fieldbyname('j_no').value;
          params[2].asstring:=clientdataset1.fieldbyname('j2_job').value;
          params[3].asstring:=clientdataset1.fieldbyname('artno').value;
          params[4].asdate:=clientdataset1.fieldbyname('cfksrq').value;
          open;
          if recordcount=0 then begin
            with clientdataset3 do begin
              close;
              params.clear;
              params.createparam(ftstring,'pline',ptinput);
              params.createparam(ftstring,'j_no',ptinput);
              params.createparam(ftstring,'j2_job',ptinput);
              params.createparam(ftstring,'artno',ptinput);
              params.createparam(ftinteger,'qty',ptinput);
              params.createparam(ftdate,'ksrq',ptinput);
              params.createparam(ftdate,'wcrq',ptinput);
              commandtext:='insert into mematch(pline,j_no,j2_job,artno,qty,ksrq,wcrq) values(:pline,:j_no,:j2_job,:artno,:qty,:ksrq,:wcrq)';
              params[0].asstring:=clientdataset1.fieldbyname('pline').value;
              params[1].asstring:=clientdataset1.fieldbyname('pline').value;
              params[2].asstring:=clientdataset1.fieldbyname('pline').value;
              params[3].asstring:=clientdataset1.fieldbyname('pline').value;
              params[4].asinteger:=clientdataset1.fieldbyname('scqty').value;
              params[5].asdate:=clientdataset1.fieldbyname('ksrq').value;
              params[6].asdate:=clientdataset1.fieldbyname('wcrq').value;
              execute;
            end;
          end;
        end;
      end;
    end;
  end
  else begin
    if clientdataset1.active=true then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'pline',ptinput);
        commandtext:='select * from mematch where pline=:pline and (j_no1 is null) order by pline,j_no,j2_job';
        params[0].asstring:=clientdataset1.fieldbyname('pline').value;
        open;
        if recordcount>0 then begin
          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'j_no1',ptinput);
            params.createparam(ftstring,'j2_job1',ptinput);
            params.createparam(ftstring,'artno1',ptinput);
            params.createparam(ftinteger,'qty1',ptinput);
            params.createparam(ftdate,'ksrq1',ptinput);
            params.createparam(ftdate,'wcrq1',ptinput);
            params.createparam(ftstring,'pline',ptinput);
            params.createparam(ftstring,'j_no',ptinput);
            params.createparam(ftstring,'j2_job',ptinput);
            commandtext:='update mematch set j_no1=:j_no1,j2_job1=:j2_job1,artno1=:artno1,qty1=:qty1,ksrq1=:ksrq1,wcrq1=:wcrq1 where pline=:pline and j_no=:j_no and j2_job=:j2_job';
            params[0].asstring:=clientdataset1.fieldbyname('j_no').value;
            params[1].asstring:=clientdataset1.fieldbyname('j2_job').value;
            params[2].asstring:=clientdataset1.fieldbyname('artno').value;
            params[3].asinteger:=clientdataset1.fieldbyname('scqty').value;
            params[4].asdate:=clientdataset1.fieldbyname('cfksrq').value;
            params[5].asdate:=clientdataset1.fieldbyname('cfwcrq').value;
            params[6].asstring:=clientdataset2.fieldbyname('pline').value;
            params[7].asstring:=clientdataset2.fieldbyname('j_no').value;
            params[8].asstring:=clientdataset2.fieldbyname('j2_job').value;
            execute;
          end;
        end
        else begin
          with clientdataset4 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            commandtext:='select * from mematch where pline=:pline';
            params[0].asstring:=clientdataset1.fieldbyname('pline').value;
            open;
            if recordcount>0 then begin
              with clientdataset3 do begin
                close;
                params.clear;
                params.createparam(ftstring,'j_no1',ptinput);
                params.createparam(ftstring,'j2_job1',ptinput);
                params.createparam(ftstring,'artno1',ptinput);
                params.createparam(ftinteger,'qty1',ptinput);
                params.createparam(ftdate,'ksrq1',ptinput);
                params.createparam(ftdate,'wcrq1',ptinput);
                params.createparam(ftstring,'pline',ptinput);
                params.createparam(ftstring,'j_no',ptinput);
                params.createparam(ftstring,'j2_job',ptinput);
                commandtext:='update mematch set j_no1=:j_no1,j2_job1=:j2_job1,artno1=:artno1,qty1=:qty1,ksrq1=:ksrq1,wcrq1=:wcrq1 where pline=:pline and j_no=:j_no and j2_job=:j2_job';
                params[0].asstring:=clientdataset1.fieldbyname('j_no').value;
                params[1].asstring:=clientdataset1.fieldbyname('j2_job').value;
                params[2].asstring:=clientdataset1.fieldbyname('artno').value;
                params[3].asinteger:=clientdataset1.fieldbyname('scqty').value;
                params[4].asdate:=clientdataset1.fieldbyname('cfksrq').value;
                params[5].asdate:=clientdataset1.fieldbyname('cfwcrq').value;
                params[6].asstring:=clientdataset4.fieldbyname('pline').value;
                params[7].asstring:=clientdataset4.fieldbyname('j_no').value;
                params[8].asstring:=clientdataset4.fieldbyname('j2_job').value;
                execute;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmscxzd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with frmmematch.ClientDataSet1 do begin
    close;
    params.clear;
    commandtext:='select * from mematch';
    open;
  end;
  action:=cafree;
  frmscxzd:=nil;
end;

procedure Tfrmscxzd.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    with clientdataset1 do begin
      close;
      params.clear;
      if edit1.text>'' then begin
        params.createparam(ftstring,'pline',ptinput);
        commandtext:='select * from tblshedule where pline=:pline and yzh=false';
        params[0].asstring:=edit1.text;
        open;
      end
      else begin
        commandtext:='select * from tblshedule where yzh=false';
        open;
      end;
    end;
  end;
end;

procedure Tfrmscxzd.FormShow(Sender: TObject);
begin
  clientdataset1.close;
end;

end.
