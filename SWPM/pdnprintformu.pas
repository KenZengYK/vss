unit pdnprintformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient, cxControls, cxSSheet,
  shellapi, DateUtils, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppPrnabl, ppCache, ppViewr, ppVar,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, ppParameter;

type
  Tfrmpdnprint = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    rg1: TGroupBox;
    xh01: TCheckBox;
    xh02: TCheckBox;
    xh03: TCheckBox;
    xh04: TCheckBox;
    xh05: TCheckBox;
    xh06: TCheckBox;
    xh07: TCheckBox;
    rg2: TGroupBox;
    xh11: TCheckBox;
    xh12: TCheckBox;
    xh13: TCheckBox;
    xh14: TCheckBox;
    xh15: TCheckBox;
    xh16: TCheckBox;
    xh17: TCheckBox;
    xh08: TCheckBox;
    xh18: TCheckBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    cxSpreadSheet1: TcxSpreadSheet;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Query5: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    title002: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine6: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine7: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine10: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel31: TppLabel;
    v001: TppLabel;
    x001: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    x004: TppLabel;
    ppLabel36: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel32: TppLabel;
    y001: TppLabel;
    y002: TppLabel;
    y003: TppLabel;
    y004: TppLabel;
    ppLabel38: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    pdn001: TppLabel;
    ppLabel41: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel42: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
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
    ROQuery1: TClientDataSet;
    BitBtn10: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnprint: Tfrmpdnprint;

implementation

uses mainformu, pdnformu, pdnrpt1formu, pdnrpt2formu, pdnreport1formu,
  pdnrpt10formu, pdnrpt9formu, pdnrpt8formu, pdnactd1formu,
  pdnrpt7formu, pdnrpt6formu, pdnrpt4formu, pdnrpt3formu, pdnrpt11formu,
  stirling_qcbookingformu, etam_ibookingformu, lard_ibookingformu,
  cmyr_ibookingformu, warn_ibookingformu, pdnrpt4_newformu, pdntransitflowdetailsformu;

{$R *.dfm}

procedure Tfrmpdnprint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmpdnrpt1<>nil then frmpdnrpt1:=nil;
  if frmpdnrpt2<>nil then frmpdnrpt2:=nil;
  if frmpdnrpt3<>nil then frmpdnrpt3:=nil;
  if frmpdnreport1<>nil then frmpdnreport1:=nil;
  if frmpdnactd1<>nil then frmpdnactd1:=nil;
  if frmpdnrpt10<>nil then frmpdnrpt10:=nil;
  if frmpdnrpt11<>nil then frmpdnrpt11:=nil;
  if frmpdnrpt9<>nil then frmpdnrpt9:=nil;
  if frmpdnrpt8<>nil then frmpdnrpt8:=nil;
  if frmpdnrpt7<>nil then frmpdnrpt7:=nil;
  if frmpdnrpt6<>nil then frmpdnrpt6:=nil;
  if frmpdnrpt4<>nil then frmpdnrpt4:=nil;
  if frmpdnrpt4_new<>nil then frmpdnrpt4_new:=nil;
  if frmpdn_transitflowdetails<>nil then frmpdn_transitflowdetails:=nil;
  action:=cafree;
  frmpdnprint:=nil;
end;

procedure Tfrmpdnprint.BitBtn10Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if (xh01.checked=false) and (xh02.checked=false) and (xh11.checked=false) and (xh12.checked=false) then begin
            with Query1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftdatetime,'x3',ptinput);
              commandtext:='execute procedure SP_PDN_TRANSITFLOWDETAILS(:x1,:x2,:x3)';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asinteger:=strtoint(combobox1.text);
              params[2].asdatetime:=tm;
              execute;
            end;
            if frmpdn_transitflowdetails=nil then frmpdn_transitflowdetails:=tfrmpdn_transitflowdetails.create(nil);
            with frmpdn_transitflowdetails.query4 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              commandtext:='select distinct tm,seq,seq1,j_no,j2_job,rwo,custpo,cstyle,acol,cname,cwo,cls,dest,sum(qty) as qty,sum(sqty) as sqty,'
                          +'sum(sqty_diff) as sqty_diff,sum(pk_p) as pk_p,sum(pk_p_d1) as pk_p_d1,sum(t1_p) as t1_p,'
                          +'sum(t1_p_d1) as t1_p_d1,sum(t2_p) as t2_p,sum(t2_p_d1) as t2_p_d1,sum(t3_p) as t3_p,'
                          +'sum(t3_p_d1) as t3_p_d1,sum(t4_p) as t4_p,sum(t4_p_d1) as t4_p_d1,sum(shpqty) as shpqty,'
                          +'sum(ssqty) as ssqty,sum(toshpqty) as toshpqty,sum(cs_defect) as cs_defect,sum(t4d2) as t4d2,'
                          +'sum(cs_lst) as cs_lst,sum(bqty) as bqty,sum(phold) as phold,sum(chold) as chold,'
                          +'sum(cswing) as cswing,sum(ntoshp) as ntoshp,box,wght,cbm,v_wght,sum(aq_p) as aq_p,sum(aq_p_d1) as aq_p_d1 '
                          +'from tbl_pdn_newtransitflow where tm=:x1 '
                          +'group by  tm,seq,seq1,j_no,j2_job,rwo,custpo,cstyle,acol,cname,cwo,cls,dest,box,wght,cbm,v_wght '
                          +'order by j_no,j2_job,cwo,acol,rwo';
              params[0].asdatetime:=tm;
              open;
            end;
            with frmpdn_transitflowdetails.query5 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              commandtext:='select * from tbl_pdn_newtransitflow_qn where tm=:x1 order by j2_job,acol,tqn';
              params[0].asdatetime:=tm;
              open;
            end;
            with frmpdn_transitflowdetails.query1 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              commandtext:='select * from tbl_pdn_newtransitflow where tm=:x1 order by j_no,j2_job,cwo,acol,rwo,did';
              params[0].asdatetime:=tm;
              open;
              if not fieldbyname('tm').isnull then
              frmpdn_transitflowdetails.ppreport1.print;
            end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdnprint.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  qn4,qn7,qn10,qn13,qn16,qn19,memo1:string;
  cont:boolean;
begin
  screen.Cursor:=crSQLWait;
  cont:=true;
  tm:=now;
  try
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='execute procedure sp_updpdn_cstyle(:x1)';
      params[0].asstring:=frmpdn.Query1.fieldbyname('seq').value;
      execute;
    end;
    if chk3.Checked then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_updpack_ttl(:x2)';
        params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
        execute;
      end;
      if frmpdnrpt7=nil then frmpdnrpt7:=tfrmpdnrpt7.create(nil);
      with frmpdnrpt7.query5 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_pack where seq=:x1 order by seq1,j_no,j2_job,rwo,acol';
        params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
        open;
      end;
      frmpdnrpt7.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
      frmpdnrpt7.exfty001.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
      frmpdnrpt7.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
      frmpdnrpt7.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
      frmpdnrpt7.cpo001.Caption:='(By PO)';
      frmpdnrpt7.title002.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
      frmpdnrpt7.ppReport1.print;
    end else begin
      if ((xh07.Checked) or (xh17.Checked)) then begin
        //WO
        if xh07.Checked then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            commandtext:='select memo1 from tbl_pdn_voyage_m where seq=:x2 and seq1=:x3';
            params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
            params[1].asinteger:=strtoint(combobox1.text);
            open;
            if not fieldbyname('memo1').isnull then memo1:=' - '+fieldbyname('memo1').value
            else memo1:=' - ';
          end;
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            commandtext:='execute procedure sp_pdn_updvoyagetmp_sing(:x1,:x2,:x3)';
            params[0].asdatetime:=tm;
            params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
            params[2].asinteger:=strtoint(combobox1.text);
            execute;
          end;
          if frmpdnrpt4_new=nil then frmpdnrpt4_new:=tfrmpdnrpt4_new.create(nil);
          with frmpdnrpt4_new.query5 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select distinct tm,seq,seq1,tplant,pdn,voyn,j_no,j2_job,cstyle,rwo,acol,sum(qty) as qty,sum(sqty) as sqty,'
                        +'sum(pqty) as pqty,sum(t1qty) as t1qty,sum(sqtysl+sqtygg) as sqtysl,sum(sqtysc) as sqtysc,sum(tsqty) as tsqty,'
                        +'sum(t2qtysl) as t2qtysl,sum(t2qtygg) as t2qtygg,sum(t2qtysc) as t2qtysc,sum(tt2qty) as tt2qty,sum(t3qty) as t3qty,'
                        +'sum(aqqty) as aqqty,sum(t4qty) as t4qty,custpo,bdc,sum(shpqty) as shpqty,sum(spqty) as spqty,sum(lstqty) as lstqty,'
                        +'sum(writeoff) as writeoff,sum(bal) as bal,sum(diff) as diff,exfty,extm from tbl_pdn_voyage_tmp where tm=:x1 '
                        +'group by tm,seq,seq1,tplant,pdn,voyn,j_no,j2_job,cstyle,rwo,acol,custpo,bdc,exfty,extm '
                        +'order by seq,seq1,j_no,j2_job,rwo';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('tm').isnull then begin
              frmpdnrpt4_new.exfty001.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
              frmpdnrpt4_new.exfty002.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
              frmpdnrpt4_new.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
              frmpdnrpt4_new.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
              frmpdnrpt4_new.title001.caption:='PDN acted performance - RWO (by Color)';
                if frmpdn.combobox1.text='CL' then begin
                  frmpdnrpt4_new.pplabel131.caption:='CL';
                  frmpdnrpt4_new.pplabel152.caption:='  CL ';
                  frmpdnrpt4_new.pplabel153.visible:=false;
                  frmpdnrpt4_new.pplabel70.visible:=false;
                  frmpdnrpt4_new.pplabel145.visible:=false;
                  frmpdnrpt4_new.pplabel112.visible:=false;
                  frmpdnrpt4_new.pplabel146.visible:=false;
                  frmpdnrpt4_new.ppdbtext23.visible:=false;
                  frmpdnrpt4_new.ppdbtext26.visible:=false;
                  frmpdnrpt4_new.ppdbtext27.visible:=false;
                  frmpdnrpt4_new.ppdbcalc7.visible:=false;
                  frmpdnrpt4_new.ppdbcalc10.visible:=false;
                  frmpdnrpt4_new.ppdbcalc11.visible:=false;
                end else begin
                  frmpdnrpt4_new.pplabel131.caption:='SL';
                  frmpdnrpt4_new.pplabel152.caption:='SL+GG';
                  frmpdnrpt4_new.pplabel153.visible:=true;
                  frmpdnrpt4_new.pplabel70.visible:=true;
                  frmpdnrpt4_new.pplabel145.visible:=true;
                  frmpdnrpt4_new.pplabel112.visible:=true;
                  frmpdnrpt4_new.pplabel146.visible:=true;
                  frmpdnrpt4_new.ppdbtext23.visible:=true;
                  frmpdnrpt4_new.ppdbtext26.visible:=true;
                  frmpdnrpt4_new.ppdbtext27.visible:=true;
                  frmpdnrpt4_new.ppdbcalc7.visible:=true;
                  frmpdnrpt4_new.ppdbcalc10.visible:=true;
                  frmpdnrpt4_new.ppdbcalc11.visible:=true;
                end;
              frmpdnrpt4_new.title002.Caption:=memo1;
              frmpdnrpt4_new.ppReport1.print;
            end;
          end;
        end;
        if xh07.Checked then begin
          if xh17.Checked then begin
            if application.MessageBox('Continue?','Confirmation',mb_iconquestion+mb_okcancel)=idok then cont:=true else cont:=false;
          end else cont:=false;
        end else begin
          if xh17.Checked then cont:=true else cont:=false;
        end;
        if cont then begin
          //RWO
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            commandtext:='select memo1 from tbl_pdn_voyage_m where seq=:x2 and seq1=:x3';
            params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
            params[1].asinteger:=strtoint(combobox1.text);
            open;
            if not fieldbyname('memo1').isnull then memo1:=' - '+fieldbyname('memo1').value
            else memo1:=' - ';
          end;
          with ROQuery1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='execute procedure sp_pdn_updvoyage(:x1)';
            params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
            execute;
          end;
          with Query1 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            commandtext:='execute procedure sp_pdn_rsummary_2(:x1,:x2,:x3)';
            params[0].asdatetime:=tm;
            params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
            params[2].asinteger:=strtoint(combobox1.text);
            execute;
          end;
          with ROQuery1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            commandtext:='execute procedure sp_pdn_updpack(:x2,:x3)';
            params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
            params[1].asinteger:=strtoint(combobox1.text);
            execute;
          end;
          if frmpdnactd1=nil then frmpdnactd1:=tfrmpdnactd1.Create(nil);
          with frmpdnactd1.Query4 do begin
            close;
            params.clear;
            if combobox1.text='ALL' then begin
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftdatetime,'x2',ptinput);
              params.createparam(ftinteger,'x3',ptinput);
              commandtext:='select * from tbl_pdn_d_tmp where seq=:x1 and tm=:x2 and seq1=:x3 order by seq1,j_no,j2_job,rwo,acol';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asdatetime:=tm;
              params[2].asinteger:=strtoint(combobox1.text);
            end else begin
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftdatetime,'x2',ptinput);
              params.createparam(ftinteger,'x3',ptinput);
              commandtext:='select * from tbl_pdn_d_tmp where seq=:x1 and tm=:x2 and seq1=:x3 order by seq1,j_no,j2_job,rwo,acol';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asdatetime:=tm;
              params[2].asinteger:=strtoint(combobox1.text);
            end;
            open;
          end;
          with frmpdnactd1.query5 do begin
            close;
            params.clear;
            if combobox1.text='ALL' then begin
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='select * from tbl_pdn_pack where seq=:x1 order by seq1,j_no,j2_job,rwo,acol';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
            end else begin
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='select * from tbl_pdn_pack where seq=:x1 and seq1=:x2 order by seq1,j_no,j2_job,rwo,acol';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asinteger:=strtoint(combobox1.text);
            end;
            open;
          end;
          with frmpdnactd1.Query1 do begin
            close;
            params.clear;
            if combobox1.text='ALL' then begin
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='select * from tbl_pdn_voyage_d where seq=:x1 and seq1=:x2 order by seq1,j_no,ordline,j2_job,rwo,acol,did';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asinteger:=strtoint(combobox1.text);
            end else begin
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='select * from tbl_pdn_voyage_d where seq=:x1 and seq1=:x2 order by seq1,j_no,ordline,j2_job,rwo,acol,did';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asinteger:=strtoint(combobox1.text);
            end;
            open;
            if not fieldbyname('seq').isnull then begin
              if combobox1.text<>'ALL' then
                frmpdnactd1.pdn001.Caption:=frmpdn.Query1.fieldbyname('pdn').value+'-'+combobox1.text
              else frmpdnactd1.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
              frmpdnactd1.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
              frmpdnactd1.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
              frmpdnactd1.acted001.Caption:='Acted On: '+formatdatetime('yy-MM-dd',frmpdn.Query1.fieldbyname('actdt').value)+' / '+formatdatetime('hh:nn',frmpdn.Query1.fieldbyname('acttm').value);
              if chk2.Checked then frmpdnactd1.ppSummaryBand1.Visible:=true else frmpdnactd1.ppSummaryBand1.Visible:=false;
              frmpdnactd1.cpo001.Caption:='(By PO)';
              frmpdnactd1.title002.Caption:=memo1;
              frmpdnactd1.acted001.Visible:=true;
              frmpdnactd1.grade002.Visible:=true;
              frmpdnactd1.ppGroupFooterBand18.Visible:=true;
              frmpdnactd1.ppReport1.print;
            end;
          end;
        end;
      end else begin
        if ((xh01.Checked) or (xh02.Checked) or (xh03.Checked) or (xh04.Checked) or (xh05.Checked) or (xh06.Checked) or (xh08.Checked)) then begin
          //WO
          if (xh03.Checked or xh04.Checked or xh05.Checked or xh06.Checked or xh08.Checked) then begin
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftinteger,'x3',ptinput);
              commandtext:='select memo1 from tbl_pdn_voyage_m where seq=:x2 and seq1=:x3';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asinteger:=strtoint(combobox1.text);
              open;
              if not fieldbyname('memo1').isnull then memo1:=' - '+fieldbyname('memo1').value
              else memo1:=' - ';
            end;
            with query1 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftinteger,'x3',ptinput);
              commandtext:='execute procedure sp_pdn_updvoyagetmp_sing(:x1,:x2,:x3)';
              params[0].asdatetime:=tm;
              params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[2].asinteger:=strtoint(combobox1.text);
              execute;
            end;
            if frmpdnrpt4_new=nil then frmpdnrpt4_new:=tfrmpdnrpt4_new.create(nil);
            with frmpdnrpt4_new.query5 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              commandtext:='select distinct tm,seq,seq1,tplant,pdn,voyn,j_no,j2_job,cstyle,rwo,acol,sum(qty) as qty,sum(sqty) as sqty,'
                          +'sum(pqty) as pqty,sum(t1qty) as t1qty,sum(sqtysl+sqtygg) as sqtysl,sum(sqtysc) as sqtysc,sum(tsqty) as tsqty,'
                          +'sum(t2qtysl) as t2qtysl,sum(t2qtygg) as t2qtygg,sum(t2qtysc) as t2qtysc,sum(tt2qty) as tt2qty,sum(t3qty) as t3qty,'
                          +'sum(aqqty) as aqqty,sum(t4qty) as t4qty,custpo,bdc,sum(shpqty) as shpqty,sum(spqty) as spqty,sum(lstqty) as lstqty,'
                          +'sum(writeoff) as writeoff,sum(bal) as bal,sum(diff) as diff,exfty,extm from tbl_pdn_voyage_tmp where tm=:x1 '
                          +'group by tm,seq,seq1,tplant,pdn,voyn,j_no,j2_job,cstyle,rwo,acol,custpo,bdc,exfty,extm '
                          +'order by seq,seq1,j_no,j2_job,rwo';
              params[0].asdatetime:=tm;
              open;
              if not fieldbyname('tm').isnull then begin
                frmpdnrpt4_new.exfty001.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt4_new.exfty002.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt4_new.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
                frmpdnrpt4_new.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
                if xh03.Checked then begin
                  frmpdnrpt4_new.title001.caption:='PDN Manifest Instruction - RWO (by Color)';
                end else if xh04.Checked then begin
                  frmpdnrpt4_new.title001.Caption:='PDN Manifest Waiting for Write off inactive SKU - RWO (by Color)';
                end else if xh05.Checked then begin
                  frmpdnrpt4_new.title001.Caption:='PDN Manifest Waiting for Swing balance SKU - RWO (by Color)';
                end else if xh06.Checked then begin
                  frmpdnrpt4_new.title001.Caption:='PDN Mainfest to Be Acted - RWO (by Color)';
                end else if xh08.Checked then begin
                  frmpdnrpt4_new.title001.caption:='PDN Manifest Confirmation - RWO (by Color)';
                end;
                if frmpdn.combobox1.text='CL' then begin
                  frmpdnrpt4_new.pplabel131.caption:='CL';
                  frmpdnrpt4_new.pplabel152.caption:='  CL ';
                  frmpdnrpt4_new.pplabel153.visible:=false;
                  frmpdnrpt4_new.pplabel70.visible:=false;
                  frmpdnrpt4_new.pplabel145.visible:=false;
                  frmpdnrpt4_new.pplabel112.visible:=false;
                  frmpdnrpt4_new.pplabel146.visible:=false;
                  frmpdnrpt4_new.ppdbtext23.visible:=false;
                  frmpdnrpt4_new.ppdbtext26.visible:=false;
                  frmpdnrpt4_new.ppdbtext27.visible:=false;
                  frmpdnrpt4_new.ppdbcalc7.visible:=false;
                  frmpdnrpt4_new.ppdbcalc10.visible:=false;
                  frmpdnrpt4_new.ppdbcalc11.visible:=false;
                end else begin
                  frmpdnrpt4_new.pplabel131.caption:='SL';
                  frmpdnrpt4_new.pplabel152.caption:='SL+GG';
                  frmpdnrpt4_new.pplabel153.visible:=true;
                  frmpdnrpt4_new.pplabel70.visible:=true;
                  frmpdnrpt4_new.pplabel145.visible:=true;
                  frmpdnrpt4_new.pplabel112.visible:=true;
                  frmpdnrpt4_new.pplabel146.visible:=true;
                  frmpdnrpt4_new.ppdbtext23.visible:=true;
                  frmpdnrpt4_new.ppdbtext26.visible:=true;
                  frmpdnrpt4_new.ppdbtext27.visible:=true;
                  frmpdnrpt4_new.ppdbcalc7.visible:=true;
                  frmpdnrpt4_new.ppdbcalc10.visible:=true;
                  frmpdnrpt4_new.ppdbcalc11.visible:=true;
                end;
                frmpdnrpt4_new.title002.Caption:=memo1;
                frmpdnrpt4_new.ppReport1.print;
              end;
            end;
          end else if (xh01.Checked or xh02.Checked) then begin
            with Query1 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='execute procedure sp_pdn_summary_tmp(:x1,:x2)';
              params[0].asdatetime:=tm;
              params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              execute;
            end;
            with Query1 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='execute procedure sp_pdn_wsummary(:x1,:x2)';
              params[0].asdatetime:=tm;
              params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              execute;
            end;
            if frmpdnrpt10=nil then frmpdnrpt10:=tfrmpdnrpt10.create(nil);
            with frmpdnrpt10.query4 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftdatetime,'x2',ptinput);
              commandtext:='select * from tbl_pdn_r_tmp_sum where seq=:x1 and tm=:x2 order by j_no,j2_job,acol';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asdatetime:=tm;
              open;
            end;
            with frmpdnrpt10.query1 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x0',ptinput);
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='select * from tbl_pdn_r_tmp where tm=:x0 and seq=:x1 order by j_no,ordline,j2_job,acol,did';
              params[0].asdatetime:=tm;
              params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              open;
              if not fieldbyname('seq').isnull then begin
                if xh01.Checked then begin
                  frmpdnrpt10.title001.Caption:='PDN Plan Application by WO (Appoint Clr)';
                end else if xh02.Checked then begin
                  frmpdnrpt10.title001.Caption:='PDN Active by WO (Appoint Clr)';
                end else if xh03.Checked then begin
                  frmpdnrpt10.title001.caption:='PDN Manifest Instruction by WO (Appoint Clr)';
                end else if xh08.Checked then begin
                  frmpdnrpt10.title001.caption:='PDN Manifest Confirmation by WO (Appoint Clr)';
                end else if xh04.Checked then begin
                  frmpdnrpt10.title001.Caption:='PDN Manifest Waiting for Write off inactive SKU by WO (Appoint Clr)';
                end else if xh05.Checked then begin
                  frmpdnrpt10.title001.Caption:='PDN Manifest Waiting for Swing balance SKU by WO (Appoint Clr)';
                end else if xh06.Checked then begin
                  frmpdnrpt10.title001.Caption:='PDN to Be Acted by WO (Appoint Clr)';
                end;
                frmpdnrpt10.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
                frmpdnrpt10.exfty001.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt10.exfty002.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt10.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
                frmpdnrpt10.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
                frmpdnrpt10.ppReport1.print;
              end;
            end;
          end;
        end;
        if ((xh01.Checked) or (xh02.Checked) or (xh03.Checked) or (xh04.Checked) or (xh05.Checked) or (xh06.Checked) or (xh08.Checked)) then begin
          if ((xh11.Checked) or (xh12.Checked) or (xh13.Checked) or (xh14.Checked) or (xh15.Checked) or (xh16.Checked) or (xh18.Checked)) then begin
            if application.MessageBox('Continue?','Confirmatioin',mb_iconquestion+mb_okcancel)=idok then cont:=true else cont:=false;
          end;
        end else begin
          if ((xh11.Checked) or (xh12.Checked) or (xh13.Checked) or (xh14.Checked) or (xh15.Checked) or (xh16.Checked) or (xh18.Checked)) then
          cont:=true else cont:=false;
        end;
        if cont then begin
          //RWO
          if (xh13.Checked or xh14.Checked or xh15.Checked or xh16.Checked or xh18.Checked) then begin
            //

            //{
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftinteger,'x3',ptinput);
              commandtext:='select memo1 from tbl_pdn_voyage_m where seq=:x2 and seq1=:x3';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asinteger:=strtoint(combobox1.text);
              open;
              if not fieldbyname('memo1').isnull then memo1:=' - '+fieldbyname('memo1').value
              else memo1:=' - ';
            end;
            with ROQuery1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='execute procedure sp_pdn_updvoyage(:x1)';
              params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
              execute;
            end;
            with Query1 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftinteger,'x3',ptinput);
              commandtext:='execute procedure sp_pdn_rsummary_2(:x1,:x2,:x3)';
              params[0].asdatetime:=tm;
              params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[2].asinteger:=strtoint(combobox1.text);
              execute;
            end;
            with ROQuery1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftinteger,'x3',ptinput);
              commandtext:='execute procedure sp_pdn_updpack(:x2,:x3)';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asinteger:=strtoint(combobox1.text);
              execute;
            end;
            if frmpdnactd1=nil then frmpdnactd1:=tfrmpdnactd1.Create(nil);
            with frmpdnactd1.Query4 do begin
              close;
              params.clear;
              if combobox1.text='ALL' then begin
                params.createparam(ftinteger,'x1',ptinput);
                params.createparam(ftdatetime,'x2',ptinput);
                params.createparam(ftinteger,'x3',ptinput);
                commandtext:='select * from tbl_pdn_d_tmp where seq=:x1 and tm=:x2 and seq1=:x3 order by seq1,j_no,j2_job,rwo,acol';
                params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
                params[1].asdatetime:=tm;
                params[2].asinteger:=strtoint(combobox1.text);
              end else begin
                params.createparam(ftinteger,'x1',ptinput);
                params.createparam(ftdatetime,'x2',ptinput);
                params.createparam(ftinteger,'x3',ptinput);
                commandtext:='select * from tbl_pdn_d_tmp where seq=:x1 and tm=:x2 and seq1=:x3 order by seq1,j_no,j2_job,rwo,acol';
                params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
                params[1].asdatetime:=tm;
                params[2].asinteger:=strtoint(combobox1.text);
              end;
              open;
            end;
            with frmpdnactd1.query5 do begin
              close;
              params.clear;
              if combobox1.text='ALL' then begin
                params.createparam(ftinteger,'x1',ptinput);
                commandtext:='select * from tbl_pdn_pack where seq=:x1 order by seq1,j_no,j2_job,rwo,acol';
                params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              end else begin
                params.createparam(ftinteger,'x1',ptinput);
                params.createparam(ftinteger,'x2',ptinput);
                commandtext:='select * from tbl_pdn_pack where seq=:x1 and seq1=:x2 order by seq1,j_no,j2_job,rwo,acol';
                params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
                params[1].asinteger:=strtoint(combobox1.text);
              end;
              open;
            end;
            with frmpdnactd1.Query1 do begin
              close;
              params.clear;
              if combobox1.text='ALL' then begin
                params.createparam(ftinteger,'x1',ptinput);
                params.createparam(ftinteger,'x2',ptinput);
                commandtext:='select * from tbl_pdn_voyage_d where seq=:x1 and seq1=:x2 order by seq1,j_no,ordline,j2_job,rwo,acol,did';
                params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
                params[1].asinteger:=strtoint(combobox1.text);
              end else begin
                params.createparam(ftinteger,'x1',ptinput);
                params.createparam(ftinteger,'x2',ptinput);
                commandtext:='select * from tbl_pdn_voyage_d where seq=:x1 and seq1=:x2 order by seq1,j_no,ordline,j2_job,rwo,acol,did';
                params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
                params[1].asinteger:=strtoint(combobox1.text);
              end;
              open;
              if not fieldbyname('seq').isnull then begin
                if xh13.Checked then begin
                  frmpdnactd1.title001.caption:='PDN Manifest Instruction - RWO';
                end else if xh14.Checked then begin
                  frmpdnactd1.title001.Caption:='PDN Manifest Waiting for Write off inactive SKU - RWO';
                end else if xh15.Checked then begin
                  frmpdnactd1.title001.Caption:='PDN Manifest Waiting for Swing balance SKU - RWO';
                end else if xh16.Checked then begin
                  frmpdnactd1.title001.Caption:='PDN Manifest to Be Acted - RWO';
                end else if xh18.Checked then begin
                  frmpdnactd1.title001.Caption:='PDN Manifest Confirmation - RWO';
                end;
                if combobox1.text<>'ALL' then
                  frmpdnactd1.pdn001.Caption:=frmpdn.Query1.fieldbyname('pdn').value+'-'+combobox1.text
                else frmpdnactd1.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
                frmpdnactd1.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
                frmpdnactd1.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
                if chk2.Checked then frmpdnactd1.ppSummaryBand1.Visible:=true else frmpdnactd1.ppSummaryBand1.Visible:=false;
                frmpdnactd1.cpo001.Caption:='(By PO)';
                frmpdnactd1.title002.Caption:=memo1;
                frmpdnactd1.acted001.Visible:=false;
                frmpdnactd1.grade002.Visible:=false;
                frmpdnactd1.ppGroupFooterBand18.Visible:=false;
                frmpdnactd1.ppReport1.print;
              end;
            end;
            //}
          end else if (xh11.Checked or xh12.Checked) then begin
            with ROQuery1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='execute procedure sp_pdn_generate_tmp(:x1)';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              execute;
            end;
            with Query1 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='execute procedure sp_pdn_rsummary(:x1,:x2)';
              params[0].asdatetime:=tm;
              params[1].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              execute;
            end;
            if frmpdnrpt8=nil then frmpdnrpt8:=tfrmpdnrpt8.create(nil);
            with frmpdnrpt8.query4 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftdatetime,'x2',ptinput);
              commandtext:='select * from tbl_pdn_d_tmp where seq=:x1 and tm=:x2 order by j_no,j2_job,rwo,acol';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              params[1].asdatetime:=tm;
              open;
            end;
            with frmpdnrpt8.query1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='select * from tbl_pdn_d where seq=:x1 order by j_no,ordline,j2_job,rwo,acol,did';
              params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
              open;
              if not fieldbyname('seq').isnull then begin
                if xh11.Checked then begin
                  frmpdnrpt8.title001.Caption:='PDN Plan Application by RWO';
                end else if xh12.Checked then begin
                  frmpdnrpt8.title001.Caption:='PDN Active by RWO';
                end else if xh13.Checked then begin
                  frmpdnrpt8.title001.caption:='PDN Manifest Instruction by RWO';
                end else if xh14.Checked then begin
                  frmpdnrpt8.title001.Caption:='PDN Waiting for Write off inactive SKU by RWO';
                end else if xh15.Checked then begin
                  frmpdnrpt8.title001.Caption:='PDN Waiting for Swing balance SKU by RWO';
                end else if xh16.Checked then begin
                  frmpdnrpt8.title001.Caption:='PDN to Be Acted by RWO';
                end;
                frmpdnrpt8.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
                frmpdnrpt8.exfty001.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt8.exfty002.Caption:=formatdatetime('yyyy-MM-dd',frmpdn.query1.fieldbyname('exfty').value);
                frmpdnrpt8.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
                frmpdnrpt8.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
                frmpdnrpt8.ppReport1.print;
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

procedure Tfrmpdnprint.FormShow(Sender: TObject);
begin
  combobox1.Items.clear;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select distinct seq1 from tbl_pdn_voyage_m where seq=:x1 order by seq1';
    params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
    open;
    while not eof do begin
      combobox1.items.add(fieldbyname('seq1').asstring);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox1.ItemIndex:=0;
end;

procedure Tfrmpdnprint.BitBtn2Click(Sender: TObject);
var
  dt1,dt2:tdate;
  tm:tdatetime;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    if chk3.Enabled then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_pdn_updpack_ttl(:x2)';
        params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
        execute;
      end;
      if bitbtn2.Caption='Dispatch Plan' then begin
      with Query1 do begin
        close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_pdn_wksum_1(:x1,:x2)';
          params[0].asdatetime:=tm;
          params[1].asinteger:=frmpdn.query1.fieldbyname('seq').value;
          execute;
      end;

      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(exfty) as d1,max(exfty) as d2 from tbl_pdn_voyage_m where seq=:x1';
        params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
        open;
        dt1:=fieldbyname('d1').value;
        dt2:=fieldbyname('d2').value;
      end;
      if frmpdnrpt7=nil then frmpdnrpt7:=tfrmpdnrpt7.create(nil);
        with frmpdnrpt7.query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftdatetime,'x2',ptinput);
          commandtext:='select * from tbl_pdn_wksum where seq=:x1 and tm=:x2 and upper(shpm)<>''SWING'' order by memo1,seq1';
          params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
          params[1].asdatetime:=tm;
          open;
        end;
        with frmpdnrpt7.query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select distinct seq,memo1,seq1,j_no,j2_job,cstyle,acol,poqty,sum(sqty) as sqty,sum(qty) as qty,custpo,cname,shpqty,sum(box) as box,sum(wght) as wght,sum(cbm) as cbm,dest '
                      +'from tbl_pdn_pack where seq=:x1 group by seq,memo1,seq1,j_no,j2_job,cstyle,acol,poqty,custpo,cname,shpqty,dest order by memo1,seq1,j_no,j2_job,acol';
          params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
          open;
        end;
        frmpdnrpt7.pdn001.Caption:=frmpdn.query1.fieldbyname('pdn').value;
        frmpdnrpt7.pdn002.Caption:='PDN  '+frmpdn.query1.fieldbyname('pdn').value;
        frmpdnrpt7.exfty001.Caption:=formatdatetime('yyyy-MM-dd',dt1);//frmpdn.query1.fieldbyname('exfty').value);
        frmpdnrpt7.exfty002.Caption:=formatdatetime('yyyy-MM-dd',dt2);
        frmpdnrpt7.week01.Caption:=frmpdn.Query1.fieldbyname('wk').asstring;
        frmpdnrpt7.fty001.Caption:=frmpdn.Query1.fieldbyname('tplant').value;
        frmpdnrpt7.cpo001.Caption:='(By PO)';
        if pos('TM',frmpdn.Query1.fieldbyname('pdn').value)>0 then frmpdnrpt7.xxx001.Caption:=' - STIRLING PAUL/ANDREW'
        else frmpdnrpt7.xxx001.Caption:=' - STIRLING MICK';
        frmpdnrpt7.ppReport1.print;
      end else begin
        if frmpdnrpt11=nil then frmpdnrpt11:=tfrmpdnrpt11.create(nil);
        with frmpdnrpt11.Query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select distinct seq,seq1,custpo,cstyle,dest,sum(sqty) as qty,sum(box) as box,sum(wght) as wght,sum(cbm) as cbm '
                      +'from tbl_pdn_pack where seq=:x1 group by seq,seq1,custpo,cstyle,dest order by seq,seq1';

          params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
          open;
          if not fieldbyname('seq').isnull then begin
            frmpdnrpt11.pdn001.Caption:='PDN #  '+frmpdn.query1.fieldbyname('pdn').value;
            frmpdnrpt11.ppReport1.Print;
          end;
        end;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdnprint.BitBtn4Click(Sender: TObject);
var
  str1,str2:string;
  tm:tdatetime;
begin
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_pdn_updpack_ttl(:x2)';
    params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
    execute;
  end;
  if bitbtn2.Caption='Dispatch Plan' then begin
    with Query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_wksum_1(:x1,:x2)';
      params[0].asdatetime:=tm;
      params[1].asinteger:=frmpdn.query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  str2:=extractfiledir(application.ExeName);
  if bitbtn2.Caption='Dispatch Plan' then begin
    str1:=frmpdn.Query1.fieldbyname('tplant').value+' '+frmpdn.Query1.fieldbyname('pdn').value+' '+formatdatetime('yyyy-MM-ddhh:nn:ss:zzzz',tm);
    shellexecute(0,'open',pchar(str2+'\export_excel_d\win_ExportToExcel.exe'),pchar(str1),'c:\temp',sw_show);
  end else begin
    str1:=frmpdn.Query1.fieldbyname('tplant').value+' '+frmpdn.Query1.fieldbyname('pdn').value;
    shellexecute(0,'open',pchar(str2+'\export_excel\FormToExcel_RemotingClient.exe'),pchar(str1),'c:\temp',sw_show);
  end;
end;

procedure Tfrmpdnprint.BitBtn7Click(Sender: TObject);
var
  str1,str2:string;
  wk,yr:integer;
begin
  screen.Cursor:=crSQLWait;
  try
    wk:=frmpdn.Query1.fieldbyname('wk').value;
    yr:=yearof(frmpdn.query1.fieldbyname('exfty').value);
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_genshpchart(:x1,:x2)';
      params[0].asinteger:=yr;
      params[1].asinteger:=wk;
      execute;
    end;
      str2:=extractfiledir(application.ExeName);
      str1:=frmpdn.Query1.fieldbyname('pdn').value;
      shellexecute(0,'open',pchar(str2+'\shipment_chart\ShipmentChart.exe'),pchar(str1),'c:\temp',sw_show);
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdnprint.BitBtn8Click(Sender: TObject);
var
  str1,str2:string;
  j_no:string;
begin
  screen.Cursor:=crSQLWait;
  try
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct j_no from tbl_pdn_rwo where seq=:x1';
      params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
      open;
      first;
      while not eof do begin
       with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_pdn_genextable(:x1)';
        params[0].asstring:=query3.fieldbyname('j_no').value;
        execute;
       end;
       application.ProcessMessages;
       next;
      end;
    end;
    str2:=extractfiledir(application.ExeName);
    str1:=frmpdn.Query1.fieldbyname('pdn').value;
    shellexecute(0,'open',pchar(str2+'\shipment_chart\WeeklyExFlyChart_ByPdn.exe'),pchar(str1),'c:\temp',sw_show);
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdnprint.BitBtn6Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
    if (pos('SL',frmpdn.Query1.fieldbyname('pdn').value)>0) or (pos('TM',frmpdn.Query1.fieldbyname('pdn').value)>0) then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_pdn_ibtama(:x1)';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        execute;
      end;
      if frmstirling_qcbooking=nil then frmstirling_qcbooking:=tfrmstirling_qcbooking.create(nil);
      with frmstirling_qcbooking.query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_ibtama where seq=:x1';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        open;
      end;
      frmstirling_qcbooking.show;
    end else if pos('ET',frmpdn.query1.fieldbyname('pdn').value)>0 then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_pdn_ibetam(:x1)';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        execute;
      end;
      if frmetam_ibooking=nil then frmetam_ibooking:=tfrmetam_ibooking.create(nil);
      with frmetam_ibooking.query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_ibetam where seq=:x1';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        open;
      end;
      frmetam_ibooking.show;
    end else if (pos('LA',frmpdn.query1.fieldbyname('pdn').value)>0)
    or (pos('DA',frmpdn.Query1.fieldbyname('pdn').value)>0)
    or (pos('TL',frmpdn.Query1.fieldbyname('pdn').value)>0)
    or (pos('WE',frmpdn.query1.fieldbyname('pdn').value)>0) then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_pdn_iblard(:x1)';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        execute;
      end;
      if frmlard_ibooking=nil then frmlard_ibooking:=tfrmlard_ibooking.create(nil);
      frmlard_ibooking.PageControl1.ActivePageIndex:=0;
      with frmlard_ibooking.query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_iblard where seq=:x1 and ((shpm=''AIR'') or (shpm is null))';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        open;
      end;
      frmlard_ibooking.show;
    end else if pos('CM',frmpdn.query1.fieldbyname('pdn').value)>0 then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_pdn_ibcmyr(:x1)';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        execute;
      end;
      if frmcmyr_ibooking=nil then frmcmyr_ibooking:=tfrmcmyr_ibooking.create(nil);
      with frmcmyr_ibooking.query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_ibcmyr where seq=:x1';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        open;
      end;
      frmcmyr_ibooking.show;
    end else if pos('WN',frmpdn.query1.fieldbyname('pdn').value)>0 then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_pdn_ibwarn(:x1)';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        execute;
      end;
      if frmwarn_ibooking=nil then frmwarn_ibooking:=tfrmwarn_ibooking.create(nil);
      with frmwarn_ibooking.query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_pdn_ibwarn where seq=:x1';
        params[0].asinteger:=frmpdn.query1.fieldbyname('seq').value;
        open;
      end;
      frmwarn_ibooking.show;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdnprint.BitBtn9Click(Sender: TObject);
var
  tm:TDateTime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftdatetime,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_genloginfo(:x1,:x2)';
      params[0].asinteger:=frmpdn.Query1.fieldbyname('seq').value;
      params[1].asdatetime:=tm;
      execute;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_pdn_log_info where tm=:x1 order by seq1,j_no,custpo';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        if pos('TM',frmpdn.Query1.fieldbyname('pdn').value)>0 then
        title002.Caption:='- M&S (Dispatch Plan)'
        else if pos('SA',frmpdn.query1.fieldbyname('pdn').value)>0 then
        title002.Caption:='- HANS (Vendor Booking)';
        pdn001.Caption:=frmpdn.Query1.fieldbyname('pdn').value;
        ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdnprint.ppDetailBand1BeforePrint(Sender: TObject);
begin
  v001.Caption:=formatfloat('#0.00',query5.fieldbyname('xcbm').value*1000000.00/6000.00);
end;

procedure Tfrmpdnprint.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  x001.Caption:=formatfloat('#0.00',ppdbcalc1.Value*1.00/ppdbcalc2.Value);
  x002.Caption:=formatfloat('#0.00',ppdbcalc4.Value*1000.00/ppdbcalc1.Value*1000000.00/6000.00);
  x003.Caption:=formatfloat('#0.00',ppdbcalc3.Value*1000.00/ppdbcalc1.Value);
  x004.Caption:=formatfloat('#0.00',ppdbcalc4.Value*1000.00/ppdbcalc1.Value);
end;

procedure Tfrmpdnprint.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  y001.Caption:=formatfloat('#0.00',ppdbcalc5.Value*1.00/ppdbcalc6.Value);
  y002.Caption:=formatfloat('#0.00',ppdbcalc8.Value*1000.00/ppdbcalc5.Value*1000000.00/6000.00);
  y003.Caption:=formatfloat('#0.00',ppdbcalc7.Value*1000.00/ppdbcalc5.Value);
  y004.Caption:=formatfloat('#0.00',ppdbcalc8.Value*1000.00/ppdbcalc5.Value);
end;

procedure Tfrmpdnprint.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
