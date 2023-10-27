unit pdnreportformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, ppVar, myChkBox, ppCtrls, ppBands, ppClass, ppPrnabl, ppCache,
  ppProd, ppReport, ppViewr, ppStrtch, ppSubRpt, ppMemo, ppParameter;

type
  Tfrmpdnreport = class(TForm)
    Options: TGroupBox;
    xh1: TCheckBox;
    xh2: TCheckBox;
    xh3: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    xh4: TCheckBox;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    dd001: TppDBText;
    s3003: TppLabel;
    s3004: TppLabel;
    s3006: TppLabel;
    s3008: TppLabel;
    ppLabel35: TppLabel;
    pdn001: TppLabel;
    ppLabel36: TppLabel;
    exfty001: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    rwo003: TppLabel;
    d1003: TppLabel;
    d1004: TppLabel;
    d1006: TppLabel;
    d1008: TppLabel;
    d2003: TppLabel;
    d2004: TppLabel;
    d2006: TppLabel;
    d2008: TppLabel;
    d3003: TppLabel;
    d3004: TppLabel;
    d3006: TppLabel;
    d3008: TppLabel;
    ppShape2: TppShape;
    ppLabel13: TppLabel;
    ppDBCalc1: TppDBCalc;
    bq001: TppDBCalc;
    bd001: TppDBCalc;
    b1003: TppDBCalc;
    b1004: TppDBCalc;
    b1006: TppDBCalc;
    b1008: TppDBCalc;
    b2003: TppDBCalc;
    b2004: TppDBCalc;
    b2006: TppDBCalc;
    b2008: TppDBCalc;
    b3003: TppDBCalc;
    b3004: TppDBCalc;
    b3006: TppDBCalc;
    b3008: TppDBCalc;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText9: TppDBText;
    xh5: TCheckBox;
    xh6: TCheckBox;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    s3108: TppLabel;
    s3001: TppLabel;
    s3002: TppLabel;
    s3102: TppLabel;
    d1001: TppLabel;
    d1002: TppLabel;
    d2002: TppLabel;
    d2001: TppLabel;
    d3001: TppLabel;
    d3002: TppLabel;
    b1001: TppDBCalc;
    b1002: TppDBCalc;
    b2001: TppDBCalc;
    b2002: TppDBCalc;
    b3001: TppDBCalc;
    b3002: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppLabel21: TppLabel;
    week01: TppLabel;
    ppDBPipeline2: TppDBPipeline;
    DataSource2: TDataSource;
    Query4: TClientDataSet;
    ppLabel26: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    dp001: TppLabel;
    bp001: TppLabel;
    ppLabel39: TppLabel;
    s3101: TppLabel;
    s3007: TppLabel;
    s3107: TppLabel;
    s3103: TppLabel;
    s3104: TppLabel;
    s3106: TppLabel;
    rwo001: TppLabel;
    rwo002: TppLabel;
    s1001: TppLabel;
    s1002: TppLabel;
    s1003: TppLabel;
    s1004: TppLabel;
    s1006: TppLabel;
    s1007: TppLabel;
    s1008: TppLabel;
    s2001: TppLabel;
    s2002: TppLabel;
    s2003: TppLabel;
    s2004: TppLabel;
    s2006: TppLabel;
    s2007: TppLabel;
    s2008: TppLabel;
    s1101: TppLabel;
    s1102: TppLabel;
    s1103: TppLabel;
    s1104: TppLabel;
    s1106: TppLabel;
    s1107: TppLabel;
    s1108: TppLabel;
    s2101: TppLabel;
    s2102: TppLabel;
    s2103: TppLabel;
    s2104: TppLabel;
    s2106: TppLabel;
    s2107: TppLabel;
    s2108: TppLabel;
    d1007: TppLabel;
    d2007: TppLabel;
    d3007: TppLabel;
    b1007: TppDBCalc;
    b2007: TppDBCalc;
    b3007: TppDBCalc;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ss303: TppLabel;
    ss304: TppLabel;
    ss306: TppLabel;
    ss308: TppLabel;
    srwo03: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ss318: TppLabel;
    ss301: TppLabel;
    ppLabel47: TppLabel;
    ss311: TppLabel;
    ss307: TppLabel;
    ss317: TppLabel;
    ss313: TppLabel;
    ss314: TppLabel;
    ss316: TppLabel;
    srwo01: TppLabel;
    srwo02: TppLabel;
    ss101: TppLabel;
    ss103: TppLabel;
    ss104: TppLabel;
    ss106: TppLabel;
    ss107: TppLabel;
    ss108: TppLabel;
    ss201: TppLabel;
    ss203: TppLabel;
    ss204: TppLabel;
    ss206: TppLabel;
    ss207: TppLabel;
    ss208: TppLabel;
    ss111: TppLabel;
    ss113: TppLabel;
    ss114: TppLabel;
    ss116: TppLabel;
    ss117: TppLabel;
    ss118: TppLabel;
    ss211: TppLabel;
    ss213: TppLabel;
    ss214: TppLabel;
    ss216: TppLabel;
    ss217: TppLabel;
    ss218: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    sdd01: TppDBText;
    sd103: TppLabel;
    sd104: TppLabel;
    sd106: TppLabel;
    sd108: TppLabel;
    sd203: TppLabel;
    sd204: TppLabel;
    sd206: TppLabel;
    sd208: TppLabel;
    sd303: TppLabel;
    sd304: TppLabel;
    sd306: TppLabel;
    sd308: TppLabel;
    sd101: TppLabel;
    sd201: TppLabel;
    sd301: TppLabel;
    sdp01: TppLabel;
    sd107: TppLabel;
    sd207: TppLabel;
    sd307: TppLabel;
    ppShape4: TppShape;
    ppLabel96: TppLabel;
    ppDBCalc2: TppDBCalc;
    sbq01: TppDBCalc;
    sbd01: TppDBCalc;
    sb103: TppDBCalc;
    sb104: TppDBCalc;
    sb106: TppDBCalc;
    sb108: TppDBCalc;
    sb203: TppDBCalc;
    sb204: TppDBCalc;
    sb206: TppDBCalc;
    sb208: TppDBCalc;
    sb303: TppDBCalc;
    sb304: TppDBCalc;
    sb306: TppDBCalc;
    sb308: TppDBCalc;
    sb101: TppDBCalc;
    sb201: TppDBCalc;
    sb301: TppDBCalc;
    sbp01: TppLabel;
    sb107: TppDBCalc;
    sb207: TppDBCalc;
    sb307: TppDBCalc;
    sb102: TppDBCalc;
    sb202: TppDBCalc;
    sb302: TppDBCalc;
    ppLabel27: TppLabel;
    fty001: TppLabel;
    ppLabel28: TppLabel;
    ppDBText14: TppDBText;
    ppLabel29: TppLabel;
    ppDBText15: TppDBText;
    ppLabel30: TppLabel;
    ppMemo1: TppMemo;
    ppLabel31: TppLabel;
    ppMemo2: TppMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnreport: Tfrmpdnreport;

implementation

uses mainformu, pdnformu, pdnrpt1formu, pdnreport1formu, pdnactd1formu,
  pdnactd2formu, pdnrpt2formu, pdnrpt3formu, pdnrpt4formu, pdnrpt5formu,
  pdnrpt7formu, pdnrpt9formu, pdnrpt6formu, pdnrpt8formu, pdnrpt10formu;

{$R *.dfm}

procedure Tfrmpdnreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmpdnreport1<>nil then frmpdnreport1:=nil;
  if frmpdnactd1<>nil then frmpdnactd1:=nil;
  if frmpdnactd2<>nil then frmpdnactd2:=nil;
  if frmpdnrpt1<>nil then frmpdnrpt1:=nil;
  if frmpdnrpt2<>nil then frmpdnrpt2:=nil;
  if frmpdnrpt3<>nil then frmpdnrpt3:=nil;
  if frmpdnrpt4<>nil then frmpdnrpt4:=nil;
  if frmpdnrpt5<>nil then frmpdnrpt5:=nil;
  if frmpdnrpt6<>nil then frmpdnrpt6:=nil;
  if frmpdnrpt7<>nil then frmpdnrpt7:=nil;
  if frmpdnrpt8<>nil then frmpdnrpt8:=nil;
  if frmpdnrpt9<>nil then frmpdnrpt9:=nil;
  action:=cafree;
  frmpdnreport:=nil;
end;

procedure Tfrmpdnreport.BitBtn1Click(Sender: TObject);
var
  cont:boolean;
  tm:tdatetime;
  qn4,qn7,qn10,qn13,qn16,qn19:string;
begin
  screen.cursor:=crSQLWait;
  try
  cont:=true;
  if xh1.Checked then begin
    //
  end;
  if xh1.Checked then begin
    if (xh2.Checked or xh3.Checked or xh4.Checked or xh5.Checked or xh6.Checked) then begin
      if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false;
    end;
  end;
  if cont then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='execute procedure sp_updpdn_cstyle(:x1)';
      params[0].asstring:=frmpdn.Query1.fieldbyname('seq').value;
      execute;
    end;
    if xh3.Checked then begin
      tm:=now;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_summary_tmp(:x1,:x2)';
        params[0].asdatetime:=tm;
        params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_wsummary(:x1,:x2)';
        params[0].asdatetime:=tm;
        params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
        execute;
      end;
      if frmpdnreport1=nil then frmpdnreport1:=tfrmpdnreport1.create(nil);
      with frmpdnreport1.query4 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftdatetime,'x2',ptinput);
        commandtext:='select * from tbl_pdn_r_tmp_sum where seq=:x1 and tm=:x2 order by j_no,j2_job,acol';
        params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
        params[1].asdatetime:=tm;
        open;
      end;
      with frmpdnreport1.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x0',ptinput);
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_r_tmp where tm=:x0 and seq=:x1 order by j_no,ordline,j2_job,acol,did';
        params[0].asdatetime:=tm;
        params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
        open;
        if not fieldbyname('seq').isnull then begin
          frmpdnreport1.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
          frmpdnreport1.exfty001.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
          frmpdnreport1.exfty002.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
          frmpdnreport1.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
          frmpdnreport1.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
          frmpdnreport1.ppReport1.print;
        end;
      end;
    end;
    if (xh1.Checked or xh3.Checked) then begin
      if (xh2.Checked or xh4.Checked or xh5.Checked or xh6.Checked) then begin
        if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false;
      end;
    end;
    if cont then begin
      if xh6.Checked then begin
        tm:=now;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_pdn_summary_tmp(:x1,:x2)';
          params[0].asdatetime:=tm;
          params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
          execute;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_pdn_wsummary(:x1,:x2)';
          params[0].asdatetime:=tm;
          params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
          execute;
        end;
        if frmpdnactd2=nil then frmpdnactd2:=tfrmpdnactd2.create(nil);
        with frmpdnactd2.query4 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftdatetime,'x2',ptinput);
          commandtext:='select * from tbl_pdn_r_tmp_sum where seq=:x1 and tm=:x2 order by j_no,j2_job,acol';
          params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
          params[1].asdatetime:=tm;
          open;
        end;
        with frmpdnactd2.query1 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x0',ptinput);
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select * from tbl_pdn_r_tmp where tm=:x0 and seq=:x1 order by j_no,ordline,j2_job,acol,did';
          params[0].asdatetime:=tm;
          params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
          open;
          if not fieldbyname('seq').isnull then begin
            frmpdnactd2.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
            frmpdnactd2.exfty001.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
            frmpdnactd2.exfty002.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
            frmpdnactd2.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
            frmpdnactd2.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
            frmpdnactd2.ppReport1.print;
          end;
        end;
      end;
      if (xh1.Checked or xh3.Checked or xh6.Checked) then begin
        if (xh2.Checked or xh5.Checked or xh4.Checked) then begin
          if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false;
        end;
      end;
      if cont then begin
        if xh2.Checked then begin
          tm:=now;
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='execute procedure sp_pdn_generate_tmp(:x1)';
            params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
            execute;
          end;
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='execute procedure sp_pdn_rsummary(:x1,:x2)';
            params[0].asdatetime:=tm;
            params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
            execute;
          end;
            if frmpdnrpt1=nil then frmpdnrpt1:=tfrmpdnrpt1.create(nil);
            with frmpdnrpt1.query4 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftdatetime,'x2',ptinput);
              commandtext:='select * from tbl_pdn_d_tmp where seq=:x1 and tm=:x2 order by j_no,j2_job,rwo,acol';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asdatetime:=tm;
              open;
            end;
            with frmpdnrpt1.query1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='select * from tbl_pdn_d where seq=:x1 order by j_no,ordline,j2_job,rwo,acol,did';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              open;
              if not fieldbyname('seq').isnull then begin
                frmpdnrpt1.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
                frmpdnrpt1.exfty001.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt1.exfty002.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt1.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
                frmpdnrpt1.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
                frmpdnrpt1.ppReport1.print;
              end;
            end;
        end;
        if (xh1.Checked or xh3.Checked or xh6.Checked or xh2.Checked) then begin
          if (xh5.Checked or xh4.Checked) then begin
            if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idcancel then cont:=false;
          end;
        end;
        if cont then begin
          if xh5.Checked then begin
            tm:=now;
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='execute procedure sp_pdn_generate_tmp(:x1)';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              execute;
            end;
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='execute procedure sp_pdn_rsummary(:x1,:x2)';
              params[0].asdatetime:=tm;
              params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              execute;
            end;
            if frmpdnrpt2=nil then frmpdnrpt2:=tfrmpdnrpt2.create(nil);
            with frmpdnrpt2.query4 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftdatetime,'x2',ptinput);
              commandtext:='select * from tbl_pdn_d_tmp where seq=:x1 and tm=:x2 order by j_no,j2_job,rwo,acol';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asdatetime:=tm;
              open;
            end;
            with frmpdnrpt2.query1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='select * from tbl_pdn_d where seq=:x1 order by j_no,ordline,j2_job,rwo,acol,did';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              open;
              if not fieldbyname('seq').isnull then begin
                frmpdnrpt2.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
                frmpdnrpt2.exfty001.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt2.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
                frmpdnrpt2.exfty002.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt2.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
                frmpdnrpt2.ppReport1.print;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdnreport.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if rwo001.Caption>'' then begin
    d1001.Caption:=query1.fieldbyname('q1qty').asstring;
    d1002.Caption:=query1.fieldbyname('q1pqty').asstring;
    d1003.Caption:=query1.fieldbyname('q1t1qty').asstring;
    d1004.Caption:=query1.fieldbyname('q1t2qty').asstring;
    d1006.Caption:=query1.fieldbyname('q1t3qty').asstring;
    d1007.Caption:=query1.fieldbyname('q1aqqty').asstring;
    d1008.Caption:=query1.fieldbyname('q1t4qty').asstring;
  end else begin
   d1001.Caption:='';d1002.Caption:='';d1003.Caption:='';d1004.Caption:='';
   d1006.Caption:='';d1007.Caption:='';d1008.Caption:='';
  end;
  if rwo002.Caption>'' then begin
    d2001.Caption:=query1.fieldbyname('q2qty').asstring;
    d2002.Caption:=query1.fieldbyname('q2pqty').asstring;
    d2003.Caption:=query1.fieldbyname('q2t1qty').asstring;
    d2004.Caption:=query1.fieldbyname('q2t2qty').asstring;
    d2006.Caption:=query1.fieldbyname('q2t3qty').asstring;
    d2007.Caption:=query1.fieldbyname('q2aqqty').asstring;
    d2008.Caption:=query1.fieldbyname('q2t4qty').asstring;
  end else begin
   d2001.Caption:='';d2002.Caption:='';d2003.Caption:='';d2004.Caption:='';
   d2006.Caption:='';d2007.Caption:='';d2008.Caption:='';
  end;
  if rwo003.Caption>'' then begin
    d3001.Caption:=query1.fieldbyname('q3qty').asstring;
    d3002.Caption:=query1.fieldbyname('q3pqty').asstring;
    d3003.Caption:=query1.fieldbyname('q3t1qty').asstring;
    d3004.Caption:=query1.fieldbyname('q3t2qty').asstring;
    d3006.Caption:=query1.fieldbyname('q3t3qty').asstring;
    d3007.Caption:=query1.fieldbyname('q3aqqty').asstring;
    d3008.Caption:=query1.fieldbyname('q3t4qty').asstring;
  end else begin
   d3001.Caption:='';d3002.Caption:='';d3003.Caption:='';d3004.Caption:='';
   d3006.Caption:='';d3007.Caption:='';d3008.Caption:='';
  end;
  //QN 1
  if query1.fieldbyname('q1aqqty').value>query1.fieldbyname('q1t4qty').value then d1008.Font.color:=clRed
  else if query1.fieldbyname('q1aqqty').value=query1.fieldbyname('q1t4qty').value then d1008.Font.color:=clBlack
  else d1008.Font.color:=clGreen;
  if query1.fieldbyname('q1t3qty').value>query1.fieldbyname('q1aqqty').value then d1007.Font.color:=clRed
  else if query1.fieldbyname('q1t3qty').value=query1.fieldbyname('q1aqqty').value then d1007.Font.color:=clBlack
  else d1007.Font.color:=clGreen;
  if query1.fieldbyname('q1t2qty').value>query1.fieldbyname('q1t3qty').value then d1006.Font.color:=clRed
  else if query1.fieldbyname('q1t2qty').value=query1.fieldbyname('q1t3qty').value then d1006.Font.color:=clBlack
  else d1006.Font.color:=clGreen;
  if query1.fieldbyname('q1t1qty').value>query1.fieldbyname('q1t2qty').value then d1004.Font.color:=clRed
  else if query1.fieldbyname('q1t1qty').value=query1.fieldbyname('q1t2qty').value then d1004.Font.color:=clBlack
  else d1004.Font.color:=clGreen;
  if query1.fieldbyname('q1pqty').value>query1.fieldbyname('q1t1qty').value then d1003.Font.color:=clRed
  else if query1.fieldbyname('q1pqty').value=query1.fieldbyname('q1t1qty').value then d1003.Font.color:=clBlack
  else d1003.Font.color:=clGreen;

  //QN 2
  if query1.fieldbyname('q2aqqty').value>query1.fieldbyname('q2t4qty').value then d2008.Font.color:=clRed
  else if query1.fieldbyname('q2aqqty').value=query1.fieldbyname('q2t4qty').value then d2008.Font.color:=clBlack
  else d2008.Font.color:=clGreen;
  if query1.fieldbyname('q2t3qty').value>query1.fieldbyname('q2aqqty').value then d2007.Font.color:=clRed
  else if query1.fieldbyname('q2t3qty').value=query1.fieldbyname('q2aqqty').value then d2007.Font.color:=clBlack
  else d2007.Font.color:=clGreen;
  if query1.fieldbyname('q2t2qty').value>query1.fieldbyname('q2t3qty').value then d2006.Font.color:=clRed
  else if query1.fieldbyname('q2t2qty').value=query1.fieldbyname('q2t3qty').value then d2006.Font.color:=clBlack
  else d2006.Font.color:=clGreen;
  if query1.fieldbyname('q2t1qty').value>query1.fieldbyname('q2t2qty').value then d2004.Font.color:=clRed
  else if query1.fieldbyname('q2t1qty').value=query1.fieldbyname('q2t2qty').value then d2004.Font.color:=clBlack
  else d2004.Font.color:=clGreen;
  if query1.fieldbyname('q2pqty').value>query1.fieldbyname('q2t1qty').value then d2003.Font.color:=clRed
  else if query1.fieldbyname('q2pqty').value=query1.fieldbyname('q2t1qty').value then d2003.Font.color:=clBlack
  else d2003.Font.color:=clGreen;

  //QN 3
  if query1.fieldbyname('q3aqqty').value>query1.fieldbyname('q3t4qty').value then d3008.Font.color:=clRed
  else if query1.fieldbyname('q3aqqty').value=query1.fieldbyname('q3t4qty').value then d3008.Font.color:=clBlack
  else d3008.Font.color:=clGreen;
  if query1.fieldbyname('q3t3qty').value>query1.fieldbyname('q3aqqty').value then d3007.Font.color:=clRed
  else if query1.fieldbyname('q3t3qty').value=query1.fieldbyname('q3aqqty').value then d3007.Font.color:=clBlack
  else d3007.Font.color:=clGreen;
  if query1.fieldbyname('q3t2qty').value>query1.fieldbyname('q3t3qty').value then d3006.Font.color:=clRed
  else if query1.fieldbyname('q3t2qty').value=query1.fieldbyname('q3t3qty').value then d3006.Font.color:=clBlack
  else d3006.Font.color:=clGreen;
  if query1.fieldbyname('q3t1qty').value>query1.fieldbyname('q3t2qty').value then d3004.Font.color:=clRed
  else if query1.fieldbyname('q3t1qty').value=query1.fieldbyname('q3t2qty').value then d3004.Font.color:=clBlack
  else d3004.Font.color:=clGreen;
  if query1.fieldbyname('q3pqty').value>query1.fieldbyname('q3t1qty').value then d3003.Font.color:=clRed
  else if query1.fieldbyname('q3pqty').value=query1.fieldbyname('q3t1qty').value then d3003.Font.color:=clBlack
  else d3003.Font.color:=clGreen;

  if query1.fieldbyname('diff').value<0 then begin
    dd001.Font.color:=clRed;
    dp001.Font.Color:=clRed;
  end else if query1.fieldbyname('diff').value=0 then begin
    dd001.Font.Color:=clBlack;
    dp001.Font.Color:=clBlack;
  end else begin
    dd001.Font.Color:=clGreen;
    dp001.Font.Color:=clGreen;
  end;
  dp001.Caption:='';//'('+formatfloat('0.00%',query1.fieldbyname('diff').value*100.0/query1.fieldbyname('sqty').value)+')';
end;

procedure Tfrmpdnreport.ppGroupHeaderBand4BeforePrint(Sender: TObject);
begin
  rwo001.Caption:='';rwo002.Caption:='';rwo003.Caption:='';
  s1001.Visible:=false;s1002.Visible:=false;s1003.Visible:=false;s1004.Visible:=false;s1006.Visible:=false;s1007.Visible:=false;s1008.Visible:=false;
  s2001.Visible:=false;s2002.Visible:=false;s2003.Visible:=false;s2004.Visible:=false;s2006.Visible:=false;s2007.Visible:=false;s2008.Visible:=false;
  s3001.Visible:=false;s3002.Visible:=false;s3003.Visible:=false;s3004.Visible:=false;s3006.Visible:=false;s3007.Visible:=false;s3008.Visible:=false;
  s1101.Visible:=false;s1102.Visible:=false;s1103.Visible:=false;s1104.Visible:=false;s1106.Visible:=false;s1107.Visible:=false;s1108.Visible:=false;
  s2101.Visible:=false;s2102.Visible:=false;s2103.Visible:=false;s2104.Visible:=false;s2106.Visible:=false;s2107.Visible:=false;s2108.Visible:=false;
  s3101.Visible:=false;s3102.Visible:=false;s3103.Visible:=false;s3104.Visible:=false;s3106.Visible:=false;s3107.Visible:=false;s3108.Visible:=false;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_h where seq=:x1 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo001.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
      s1001.Visible:=true;s1002.Visible:=true;s1003.Visible:=true;s1004.Visible:=true;s1006.Visible:=true;s1007.Visible:=true;s1008.Visible:=true;
      s1101.Visible:=true;s1102.Visible:=true;s1103.Visible:=true;s1104.Visible:=true;s1106.Visible:=true;s1107.Visible:=true;s1108.Visible:=true;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo002.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
      s2001.Visible:=true;s2002.Visible:=true;s2003.Visible:=true;s2004.Visible:=true;s2006.Visible:=true;s2007.Visible:=true;s2008.Visible:=true;
      s2101.Visible:=true;s2102.Visible:=true;s2103.Visible:=true;s2104.Visible:=true;s2106.Visible:=true;s2107.Visible:=true;s2108.Visible:=true;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo003.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
      s3001.Visible:=true;s3002.Visible:=true;s3003.Visible:=true;s3004.Visible:=true;s3006.Visible:=true;s3007.Visible:=true;s3008.Visible:=true;
      s3101.Visible:=true;s3102.Visible:=true;s3103.Visible:=true;s3104.Visible:=true;s3106.Visible:=true;s3107.Visible:=true;s3108.Visible:=true;
    end;
  end;
end;

procedure Tfrmpdnreport.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnreport.ppGroupFooterBand4BeforePrint(Sender: TObject);
begin
  b1001.Visible:=false;b1002.Visible:=false;b1003.Visible:=false;b1004.Visible:=false;b1006.Visible:=false;b1007.Visible:=false;b1008.Visible:=false;
  b2001.Visible:=false;b2002.Visible:=false;b2003.Visible:=false;b2004.Visible:=false;b2006.Visible:=false;b2007.Visible:=false;b2008.Visible:=false;
  b3001.Visible:=false;b3002.Visible:=false;b3003.Visible:=false;b3004.Visible:=false;b3006.Visible:=false;b3007.Visible:=false;b3008.Visible:=false;

  if rwo001.Caption>'' then begin
    b1001.Visible:=true;b1002.Visible:=true;b1003.Visible:=true;b1004.Visible:=true;b1006.Visible:=true;b1007.Visible:=true;b1008.Visible:=true;
  end;
  if rwo002.Caption>'' then begin
    b2001.Visible:=true;b2002.Visible:=true;b2003.Visible:=true;b2004.Visible:=true;b2006.Visible:=true;b2007.Visible:=true;b2008.Visible:=true;
  end;
  if rwo003.Caption>'' then begin
    b3001.Visible:=true;b3002.Visible:=true;b3003.Visible:=true;b3004.Visible:=true;b3006.Visible:=true;b3007.Visible:=true;b3008.Visible:=true;
  end;
  //QN 1
  if b1002.Value>b1003.Value then b1003.Font.Color:=clRed
  else if b1002.Value=b1003.Value then b1003.Font.Color:=clBlack else b1003.Font.Color:=clGreen;
  if b1003.Value>b1004.Value then b1004.Font.Color:=clRed
  else if b1003.Value=b1004.Value then b1004.Font.Color:=clBlack else b1004.Font.Color:=clGreen;
  if b1004.Value>b1006.Value then b1006.Font.Color:=clRed
  else if b1004.Value=b1006.Value then b1006.Font.Color:=clBlack else b1006.Font.Color:=clGreen;
  if b1006.Value>b1007.Value then b1007.Font.Color:=clRed
  else if b1006.Value=b1007.Value then b1007.Font.Color:=clBlack else b1007.Font.Color:=clGreen;
  if b1007.Value>b1008.Value then b1008.Font.Color:=clRed
  else if b1007.Value=b1008.Value then b1008.Font.Color:=clBlack else b1008.Font.Color:=clGreen;

  //QN 2
  if b2002.Value>b2003.Value then b2003.Font.Color:=clRed
  else if b2002.Value=b2003.Value then b2003.Font.Color:=clBlack else b2003.Font.Color:=clGreen;
  if b2003.Value>b2004.Value then b2004.Font.Color:=clRed
  else if b2003.Value=b2004.Value then b2004.Font.Color:=clBlack else b2004.Font.Color:=clGreen;
  if b2004.Value>b2006.Value then b2006.Font.Color:=clRed
  else if b2004.Value=b2006.Value then b2006.Font.Color:=clBlack else b2006.Font.Color:=clGreen;
  if b2006.Value>b2007.Value then b2007.Font.Color:=clRed
  else if b2006.Value=b2007.Value then b2007.Font.Color:=clBlack else b2007.Font.Color:=clGreen;
  if b2007.Value>b2008.Value then b2008.Font.Color:=clRed
  else if b2007.Value=b2008.Value then b2008.Font.Color:=clBlack else b2008.Font.Color:=clGreen;

  //QN 1
  if b3002.Value>b3003.Value then b3003.Font.Color:=clRed
  else if b3002.Value=b3003.Value then b3003.Font.Color:=clBlack else b3003.Font.Color:=clGreen;
  if b3003.Value>b3004.Value then b3004.Font.Color:=clRed
  else if b3003.Value=b3004.Value then b3004.Font.Color:=clBlack else b3004.Font.Color:=clGreen;
  if b3004.Value>b3006.Value then b3006.Font.Color:=clRed
  else if b3004.Value=b3006.Value then b3006.Font.Color:=clBlack else b3006.Font.Color:=clGreen;
  if b3006.Value>b3007.Value then b3007.Font.Color:=clRed
  else if b3006.Value=b3007.Value then b3007.Font.Color:=clBlack else b3007.Font.Color:=clGreen;
  if b3007.Value>b3008.Value then b3008.Font.Color:=clRed
  else if b3007.Value=b3008.Value then b3008.Font.Color:=clBlack else b3008.Font.Color:=clGreen;

  if bd001.Value<0 then begin
    bd001.Font.Color:=clRed;
    bp001.Font.Color:=clRed;
  end else if bd001.Value=0 then begin
    bd001.Font.Color:=clBlack;
    bp001.Font.Color:=clBlack;
  end else begin
    bd001.Font.Color:=clGreen;
    bp001.Font.Color:=clBlack;
  end;
  bp001.Caption:='('+formatfloat('0.0%',bd001.Value*100.0/bq001.Value)+')';
end;

procedure Tfrmpdnreport.ppTitleBand1BeforePrint(Sender: TObject);
begin
  srwo01.Caption:=rwo001.Caption; srwo02.caption:='';srwo03.Caption:='';
  ss101.Visible:=false;ss103.Visible:=false;ss104.Visible:=false;ss106.Visible:=false;ss107.Visible:=false;ss108.Visible:=false;
  ss201.Visible:=false;ss203.Visible:=false;ss204.Visible:=false;ss206.Visible:=false;ss207.Visible:=false;ss208.Visible:=false;
  ss301.Visible:=false;ss303.Visible:=false;ss304.Visible:=false;ss306.Visible:=false;ss307.Visible:=false;ss308.Visible:=false;
  ss111.Visible:=false;ss113.Visible:=false;ss114.Visible:=false;ss116.Visible:=false;ss117.Visible:=false;ss118.Visible:=false;
  ss211.Visible:=false;ss213.Visible:=false;ss214.Visible:=false;ss216.Visible:=false;ss217.Visible:=false;ss218.Visible:=false;
  ss311.Visible:=false;ss313.Visible:=false;ss314.Visible:=false;ss316.Visible:=false;ss317.Visible:=false;ss318.Visible:=false;
  if srwo01.Caption>'' then begin
    ss101.Visible:=true;ss103.Visible:=true;ss104.Visible:=true;ss106.Visible:=true;ss107.Visible:=true;ss108.Visible:=true;
    ss111.Visible:=true;ss113.Visible:=true;ss114.Visible:=true;ss116.Visible:=true;ss117.Visible:=true;ss118.Visible:=true;
  end;
  if srwo02.Caption>'' then begin
    ss201.Visible:=true;ss203.Visible:=true;ss204.Visible:=true;ss206.Visible:=true;ss207.Visible:=true;ss208.Visible:=true;
    ss211.Visible:=true;ss213.Visible:=true;ss214.Visible:=true;ss216.Visible:=true;ss217.Visible:=true;ss218.Visible:=true;
  end;
  if srwo03.Caption>'' then begin
    ss301.Visible:=true;ss303.Visible:=true;ss304.Visible:=true;ss306.Visible:=true;ss307.Visible:=true;ss308.Visible:=true;
    ss311.Visible:=true;ss313.Visible:=true;ss314.Visible:=true;ss316.Visible:=true;ss317.Visible:=true;ss318.Visible:=true;
  end;
end;

procedure Tfrmpdnreport.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if srwo01.Caption>'' then begin
    sd101.Caption:=query4.fieldbyname('q1qty').asstring;
    sd103.Caption:=query4.fieldbyname('q1t1qty').asstring;
    sd104.Caption:=query4.fieldbyname('q1t2qty').asstring;
    sd106.Caption:=query4.fieldbyname('q1t3qty').asstring;
    sd107.Caption:=query4.fieldbyname('q1aqqty').asstring;
    sd108.Caption:=query4.fieldbyname('q1t4qty').asstring;
  end else begin
   sd101.Caption:='';sd103.Caption:='';sd104.Caption:='';
   sd106.Caption:='';sd107.Caption:='';sd108.Caption:='';
  end;
  if srwo02.Caption>'' then begin
    sd201.Caption:=query4.fieldbyname('q2qty').asstring;
    sd203.Caption:=query4.fieldbyname('q2t1qty').asstring;
    sd204.Caption:=query4.fieldbyname('q2t2qty').asstring;
    sd206.Caption:=query4.fieldbyname('q2t3qty').asstring;
    sd207.Caption:=query4.fieldbyname('q2aqqty').asstring;
    sd208.Caption:=query4.fieldbyname('q2t4qty').asstring;
  end else begin
   sd201.Caption:='';sd203.Caption:='';sd204.Caption:='';
   sd206.Caption:='';sd207.Caption:='';sd208.Caption:='';
  end;
  if srwo03.Caption>'' then begin
    sd301.Caption:=query4.fieldbyname('q3qty').asstring;
    sd303.Caption:=query4.fieldbyname('q3t1qty').asstring;
    sd304.Caption:=query4.fieldbyname('q3t2qty').asstring;
    sd306.Caption:=query4.fieldbyname('q3t3qty').asstring;
    sd307.Caption:=query4.fieldbyname('q3aqqty').asstring;
    sd308.Caption:=query4.fieldbyname('q3t4qty').asstring;
  end else begin
   sd301.Caption:='';sd303.Caption:='';sd304.Caption:='';
   sd306.Caption:='';sd307.Caption:='';sd308.Caption:='';
  end;
  //QN 1
  if query4.fieldbyname('q1aqqty').value>query4.fieldbyname('q1t4qty').value then sd108.Font.color:=clRed
  else if query4.fieldbyname('q1aqqty').value=query4.fieldbyname('q1t4qty').value then sd108.Font.color:=clBlack
  else sd108.Font.color:=clGreen;
  if query4.fieldbyname('q1t3qty').value>query4.fieldbyname('q1aqqty').value then sd107.Font.color:=clRed
  else if query4.fieldbyname('q1t3qty').value=query4.fieldbyname('q1aqqty').value then sd107.Font.color:=clBlack
  else sd107.Font.color:=clGreen;
  if query4.fieldbyname('q1t2qty').value>query4.fieldbyname('q1t3qty').value then sd106.Font.color:=clRed
  else if query4.fieldbyname('q1t2qty').value=query4.fieldbyname('q1t3qty').value then sd106.Font.color:=clBlack
  else sd106.Font.color:=clGreen;
  if query4.fieldbyname('q1t1qty').value>query4.fieldbyname('q1t2qty').value then sd104.Font.color:=clRed
  else if query4.fieldbyname('q1t1qty').value=query4.fieldbyname('q1t2qty').value then sd104.Font.color:=clBlack
  else sd104.Font.color:=clGreen;
  if query4.fieldbyname('q1pqty').value>query4.fieldbyname('q1t1qty').value then sd103.Font.color:=clRed
  else if query4.fieldbyname('q1pqty').value=query4.fieldbyname('q1t1qty').value then sd103.Font.color:=clBlack
  else sd103.Font.color:=clGreen;

  if query4.fieldbyname('diff').value<0 then begin
    sdd01.Font.color:=clRed;
    sdp01.Font.Color:=clRed;
  end else if query4.fieldbyname('diff').value=0 then begin
    sdd01.Font.Color:=clBlack;
    sdp01.Font.Color:=clBlack;
  end else begin
    sdd01.Font.Color:=clGreen;
    sdp01.Font.Color:=clGreen;
  end;
  if query4.fieldbyname('sqty').value>0 then
  sdp01.Caption:='('+formatfloat('0.0%',query4.fieldbyname('diff').value*100.0/query4.fieldbyname('sqty').value)+')'
  else sdp01.Caption:='(0.0%)';
end;

procedure Tfrmpdnreport.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  sb101.Visible:=false;sb103.Visible:=false;sb104.Visible:=false;sb106.Visible:=false;sb107.Visible:=false;sb108.Visible:=false;
  sb201.Visible:=false;sb203.Visible:=false;sb204.Visible:=false;sb206.Visible:=false;sb207.Visible:=false;sb208.Visible:=false;
  sb301.Visible:=false;sb303.Visible:=false;sb304.Visible:=false;sb306.Visible:=false;sb307.Visible:=false;sb308.Visible:=false;

  if srwo01.Caption>'' then begin
    sb101.Visible:=true;sb103.Visible:=true;sb104.Visible:=true;sb106.Visible:=true;sb107.Visible:=true;sb108.Visible:=true;
  end;
  if srwo02.Caption>'' then begin
    sb201.Visible:=true;sb203.Visible:=true;sb204.Visible:=true;sb206.Visible:=true;sb207.Visible:=true;sb208.Visible:=true;
  end;
  if srwo03.Caption>'' then begin
    sb301.Visible:=true;sb303.Visible:=true;sb304.Visible:=true;sb306.Visible:=true;sb307.Visible:=true;sb308.Visible:=true;
  end;
  //QN 1
  if sb102.Value>sb103.Value then sb103.Font.Color:=clRed
  else if sb102.Value=sb103.Value then sb103.Font.Color:=clBlack else sb103.Font.Color:=clGreen;
  if sb103.Value>sb104.Value then sb104.Font.Color:=clRed
  else if sb103.Value=sb104.Value then sb104.Font.Color:=clBlack else sb104.Font.Color:=clGreen;
  if sb104.Value>sb106.Value then sb106.Font.Color:=clRed
  else if sb104.Value=sb106.Value then sb106.Font.Color:=clBlack else sb106.Font.Color:=clGreen;
  if sb106.Value>sb107.Value then sb107.Font.Color:=clRed
  else if sb106.Value=sb107.Value then sb107.Font.Color:=clBlack else sb107.Font.Color:=clGreen;
  if sb107.Value>sb108.Value then sb108.Font.Color:=clRed
  else if sb107.Value=sb108.Value then sb108.Font.Color:=clBlack else sb108.Font.Color:=clGreen;

  if sbd01.Value<0 then begin
    sbd01.Font.Color:=clRed;
    sbp01.Font.Color:=clRed;
  end else if sbd01.Value=0 then begin
    sbd01.Font.Color:=clBlack;
    sbp01.Font.Color:=clBlack;
  end else begin
    sbd01.Font.Color:=clGreen;
    sbp01.Font.Color:=clGreen;
  end;
  sbp01.Caption:='('+formatfloat('0.0%',sbd01.Value*100.0/sbq01.Value)+')';
  if not frmpdn.query1.fieldbyname('marks').isnull then
  ppmemo1.Text:=frmpdn.query1.fieldbyname('marks').value;
  if not frmpdn.query1.fieldbyname('marks1').isnull then
  ppmemo2.Text:=frmpdn.query1.fieldbyname('marks1').value;
end;

end.
