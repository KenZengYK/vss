unit worderformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Grids, DBGridEh, ExtCtrls, DBCtrls, Buttons, StdCtrls,
  Menus, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppBands, ppCache, ppCtrls, ppVar, ppPrnabl, ppViewr, GridsEh,
  ShellApi, ppParameter, siComp, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCalendar;

type
  Tfrmworder = class(TForm)
    tblsop: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DBGridEh1: TDBGridEh;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ClientDataSet4: TClientDataSet;
    ClientDataSet5: TClientDataSet;
    Panel1: TPanel;
    Label3: TLabel;
    SpeedButton5: TSpeedButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    SpeedButton3: TSpeedButton;
    ppDBPipeline1: TppDBPipeline;
    PopupMenu1: TPopupMenu;
    CompleteProject1: TMenuItem;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
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
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel20: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel33: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    x002: TppDBText;
    ppDBText12: TppDBText;
    x001: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    x003: TppLabel;
    ppDBText14: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ttl001: TppLabel;
    ppLabel22: TppLabel;
    ppDBCalc1: TppDBCalc;
    x202: TppDBCalc;
    ttl002: TppLabel;
    ttl003: TppLabel;
    ttl004: TppLabel;
    ttl005: TppLabel;
    ttl006: TppLabel;
    x102: TppDBCalc;
    ttl010: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    sub001: TppLabel;
    ppLabel24: TppLabel;
    ppDBCalc3: TppDBCalc;
    x201: TppDBCalc;
    sub002: TppLabel;
    sub003: TppLabel;
    sub004: TppLabel;
    sub005: TppLabel;
    sub006: TppLabel;
    x101: TppDBCalc;
    sub010: TppLabel;
    CheckBox1: TCheckBox;
    siLang1: TsiLang;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxGrid1DBTableView1Column13: TcxGridDBColumn;
    cxGrid1DBTableView1Column17: TcxGridDBColumn;
    cxGrid1DBTableView1Column14: TcxGridDBColumn;
    cxGrid1DBTableView1Column15: TcxGridDBColumn;
    cxGrid1DBTableView1Column16: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Filter1Record(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure CompleteProject1Click(Sender: TObject);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmworder: Tfrmworder;

implementation
uses mainformu, worksheet;
{$R *.DFM}

procedure Tfrmworder.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmworder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmworder:=nil;
end;

procedure Tfrmworder.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmworder.FormShow(Sender: TObject);
var
  str1:string;
begin
  edit3.Text:='';
  if (worksheet1.edit2.text<>'PPWS') then begin
    with tblsop do begin
      close;
      params.clear;
      params.createparam(ftstring,'flag1',ptinput);
      commandtext:='select * from tbl_sop where flag1=:flag1 and rqty>0';
      params[0].asstring:='0';
      open;
    end;
    {
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='update tbl_sop set iqty=qty-rqty';
      execute;
    end;
    }
    str1:='update tbl_sop set iqty=qty-rqty';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  end else begin
    with tblsop do begin
      close;
      params.clear;
      params.createparam(ftstring,'flag1',ptinput);
      commandtext:='select * from tbl_sop_ppws where flag1=:flag1 and rqty>0';
      params[0].asstring:='0';
      open;
    end;
    {
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='update tbl_sop_ppws set iqty=qty-rqty';
      execute;
    end;
    }
    str1:='update tbl_sop_ppws set iqty=qty-rqty';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select r38 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r38').value=true then completeproject1.Visible:=true
    else completeproject1.Visible:=false;
  end;
end;

procedure Tfrmworder.SpeedButton1Click(Sender: TObject);
var
  seq1,ksjs,wcjs,week1,xjs,scqty,sctd,var1,bzjs,qty:integer;
  jxjs,phiszjs,zktd,sclhjs,shjs:double;
  fyl,ysjhl,float1,float2,var2,var3,var4,float3:double;
  ksrq,wcrq,tzwcrq,plan_date:tdatetime;
  calcks,calcwc,tplant,tshop,pline:string;
  artno,customer,sopno,acol,cstyle,rwo:string;
  ordline:integer;
  line_rs,lstrs,trs,tbu,tmu,sp,sp_wf,mantbl,asah,awf,sah_b,sah_bw,pfsah,pfrs_a,aloptqty:double;
  flag2,pstr,o_lflag,pws,pzb,fws,fzb,ews,ezb,dta,iecls1:string;
  str1:string;
  alxjs,exjs:double;
begin
  screen.cursor:=crhourglass;
  if tblsop.state=dsedit then tblsop.post;
  if copy(tblsop.fieldbyname('j2_job').value,1,1)<>'W' then exit;
  if worksheet1.edit2.text>'' then pline:=worksheet1.edit2.text
  else pline:='SIM.'+worksheet1.edit6.text;
  if (pline='PPB.SL') or (pline='PPK.SL') or (pline='PPS.SL') or (pline='PPS.CL') then begin
    pws:=''; pzb:=''; fws:='-'; fzb:='-'; ews:='-'; ezb:='-';
  end else if (pos('NSB',pline)>0) or (pos('RSB',pline)>0) then begin
    pws:='-'; pzb:='-'; fws:='-'; fzb:='-'; ews:='-'; ezb:='-';
  end else begin
    pws:=''; pzb:=''; fws:=''; fzb:=''; ews:=''; ezb:='';
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select a.tshop,a.pline from tblline a,tblline_mapping b where a.pline=b.pline and b.m_pline='''+pline+''' and substr(b.pline,1,1) in (''P'',''F'',''E'')';
      open;
      first;
      while not eof do begin
        if pos('P',fieldbyname('pline').value)>0 then begin
          pws:=fieldbyname('tshop').value; pzb:=fieldbyname('pline').value;
        end else if pos('F',fieldbyname('pline').value)>0 then begin
          fws:=fieldbyname('tshop').value; fzb:=fieldbyname('pline').value;
        end else if pos('E',fieldbyname('pline').value)>0 then begin
          ews:=fieldbyname('tshop').value; ezb:=fieldbyname('pline').value;
        end;
        application.processmessages;
        next;
      end;
    end;
  end;
  if not dbgrideh1.Fields[0].isnull then begin
    if pos('-',tblsop.fieldbyname('artno').value)>0 then begin
      artno:=copy(tblsop.fieldbyname('artno').value,1,5);
      artno:=artno+copy(tblsop.fieldbyname('artno').value,7,1);
      artno:=artno+copy(tblsop.fieldbyname('artno').value,11,1);
      artno:=artno+copy(tblsop.fieldbyname('artno').value,17,2);
    end else begin
      artno:=tblsop.fieldbyname('artno').value;
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select min(bzjs+bzny) as bzjs from cust_exfty where pgrp='''+copy(tblsop.fieldbyname('j_no').value,1,4)+'''';
      open;
      if not fieldbyname('bzjs').isnull then bzjs:=fieldbyname('bzjs').value else bzjs:=12;
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select cstyle from tbl_erpcstyle where sopno=:x1 and ordline=:x2';
      params[0].asstring:=tblsop.fieldbyname('sopno').value;
      params[1].asinteger:=tblsop.fieldbyname('ordline').value;
      open;
      if not fieldbyname('cstyle').IsNull then cstyle:=fieldbyname('cstyle').value
      else cstyle:=artno;
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'pline',ptinput);
      commandtext:='select max(seq) as seq1 from tblshedule where pline=:pline';
      params[0].asstring:=pline;
      open;
      if fieldbyname('seq1').isnull then seq1:=1
      else seq1:=fieldbyname('seq1').value+1;
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'pline',ptinput);
      commandtext:='select workert,ysjhl,tplant,tshop,workero from tblline where upper(pline)=:pline';
      params[0].asstring:=pline;
      open;
      //if not fieldbyname('workert').isnull then trs:=fieldbyname('workert').value else trs:=25;
      //if not fieldbyname('tfyl').isnull then fyl:=fieldbyname('tfyl').value else fyl:=1.00;
      fyl:=1.00;
      if not fieldbyname('ysjhl').isnull then ysjhl:=fieldbyname('ysjhl').value else ysjhl:=100;
      if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='SL';
      if not fieldbyname('tshop').isnull then tshop:=fieldbyname('tshop').value else tshop:='';
      if not fieldbyname('workero').isnull then line_rs:=fieldbyname('workero').value else line_rs:=0;
    end;
    if (lstrs=0) then begin
      if pos('K',tblsop.fieldbyname('flag6').value)>0 then lstrs:=18 else lstrs:=25;
    end;
    customer:=tblsop.fieldbyname('customer').value;
    if not tblsop.fieldbyname('fdt').isnull then plan_date:=tblsop.fieldbyname('fdt').value
    else plan_date:=encodedate(1899,12,30);
    sopno:=tblsop.fieldbyname('sopno').value;
    ordline:=tblsop.fieldbyname('ordline').value;
    acol:=tblsop.fieldbyname('acol').value;
    //showmessage(cstyle);
      with clientdataset5 do begin
        close;
        params.clear;
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='select * from ppc_zygx where cstyle=:kh and cls=:x2';
        params[0].asstring:=cstyle;
        params[1].asstring:=copy(artno,6,2);
        open;
        if not fieldbyname('lstrs').isnull then lstrs:=fieldbyname('lstrs').value else lstrs:=25;
        if not fieldbyname('a_mc').isnull then trs:=fieldbyname('a_mc').value else trs:=0;
        if not fieldbyname('tbu').isnull then tbu:=fieldbyname('tbu').value else tbu:=100;
        if not fieldbyname('tmu').isnull then tmu:=fieldbyname('tmu').value else tmu:=0;
        if not fieldbyname('flag2').isnull then flag2:=fieldbyname('flag2').value else flag2:='Q';
        if not fieldbyname('sp_wf').isnull then sp_wf:=fieldbyname('sp_wf').value else sp_wf:=0;
        if not fieldbyname('sp').isnull then sp:=fieldbyname('sp').value else sp:=0;
        if not fieldbyname('mantbl').isnull then mantbl:=fieldbyname('mantbl').value else mantbl:=0;
        if not fieldbyname('a_sah').isnull then asah:=fieldbyname('a_sah').value else asah:=0;
        if not fieldbyname('a_wf').isnull then awf:=fieldbyname('a_wf').value else awf:=0;
        //dta, iecls1, sah_b, sah_bw, pfsah, pfrs_a,aloptqty
        if not fieldbyname('dta').isnull then dta:=fieldbyname('dta').value else dta:='';
        if not fieldbyname('cls1').isnull then iecls1:=fieldbyname('cls1').value else iecls1:='';
        if not fieldbyname('bd').isnull then sah_b:=fieldbyname('bd').value else sah_b:=0;
        if not fieldbyname('bd_wf').isnull then sah_bw:=fieldbyname('ct_wf').value else sah_bw:=0;
        if not fieldbyname('ct').isnull then pfsah:=fieldbyname('ct').value else pfsah:=0;
        if not fieldbyname('ct_wf').isnull then pfrs_a:=fieldbyname('bd_wf').value else pfrs_a:=0;
        if not fieldbyname('a_opt').isnull then aloptqty:=fieldbyname('a_opt').value else aloptqty:=0;
      end;
      if asah>0 then alxjs:=0.5*awf/asah else alxjs:=0;
      if sp>0 then exjs:=0.5*sp_wf/sp else exjs:=0;
      if tshop='SC' then lstrs:=line_rs;
    scqty:=tblsop.fieldbyname('rqty').value;
    qty:=tblsop.fieldbyname('qty').value;
    if tmu*fyl>0.00 then begin
      float1:=0.5*lstrs/(tmu*fyl);
      xjs:=ceiling(float1);
      jxjs:=float1;
      float2:=scqty*1.00/jxjs;
      float3:=scqty*100.00/jxjs/ysjhl;
      phiszjs:=float2;
      shjs:=float3-float2;
    end else begin
      xjs:=0;
      phiszjs:=0;
      shjs:=0;
    end;
    if asah*fyl>0.00 then begin
      float1:=0.5*awf/(asah*fyl);
      float2:=scqty*1.00/float1;
      float3:=scqty*100.00/float1/ysjhl;
      phiszjs:=float2;
      shjs:=float3-float2;
    end else begin
      phiszjs:=0;
      shjs:=0;
    end;
    zktd:=0;
    sctd:=0;
    sclhjs:=0;

    //if (copy(worksheet1.Edit2.Text,1,1)='T') then begin
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select o_lflag from sp_auto_updplc(:x1,:x2,:x3,:x4)';
        params[0].asstring:=cstyle;
        params[1].asstring:=tplant;
        params[2].asstring:=pline;
        params[3].asinteger:=seq1;
        open;
        if not fieldbyname('o_lflag').isnull then o_lflag:=fieldbyname('o_lflag').value
        else o_lflag:='!1';
      end;
    //end else o_lflag:='!1';

    //showmessage('001');

      with clientdataset3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'pline',ptinput);
        params.createparam(ftstring,'sopno',ptinput);
        params.createparam(ftinteger,'ordline',ptinput);
        params.createparam(ftstring,'j_no',ptinput);
        params.createparam(ftstring,'j2_job',ptinput);
        params.createparam(ftstring,'artno',ptinput);
        params.createparam(ftstring,'acol',ptinput);
        params.createparam(ftinteger,'seq',ptinput);
        params.createparam(ftinteger,'scqty',ptinput);
        params.createparam(ftfloat,'tmu',ptinput);
        params.createparam(ftinteger,'xjs',ptinput);
        params.createparam(ftfloat,'phiszjs',ptinput);
        params.createparam(ftfloat,'trs',ptinput);
        params.createparam(ftfloat,'ysjhl',ptinput);
        params.createparam(ftfloat,'fyl',ptinput);
        params.createparam(ftfloat,'zktd',ptinput);
        params.createparam(ftinteger,'sctd',ptinput);
        params.createparam(ftfloat,'sclhjs',ptinput);
        params.createparam(ftinteger,'kdjs',ptinput);
        params.createparam(ftfloat,'jhl',ptinput);
        params.createparam(ftdatetime,'yqlcrq',ptinput);
        params.createparam(ftinteger,'bzjs',ptinput);
        params.createparam(ftfloat,'zhjs',ptinput);
        params.createparam(ftinteger,'bcjs',ptinput);
        params.createparam(ftfloat,'dbxl',ptinput);
        params.createparam(ftstring,'flag1',ptinput);
        params.createparam(ftstring,'flag2',ptinput);
        params.createparam(ftboolean,'yzh',ptinput);
        params.createparam(ftstring,'cstyle',ptinput);
        params.createparam(ftfloat,'shjs',ptinput);
        params.createparam(ftdate,'pd4',ptinput);
        params.createparam(ftstring,'rwo',ptinput);
        params.createparam(ftinteger,'rid',ptinput);
        params.createparam(ftdate,'plan_date',ptinput);
        params.createparam(ftfloat,'jxjs',ptinput);
        params.createparam(ftfloat,'lstrs',ptinput);
        params.createparam(ftstring,'jhrs',ptinput);
        params.createparam(ftstring,'fccs',ptinput);
        params.createparam(ftstring,'tplant',ptinput);
        params.createparam(ftstring,'tshop',ptinput);
        params.createparam(ftstring,'cstyle',ptinput);
        params.createparam(ftstring,'flag6',ptinput);
        params.createparam(ftstring,'flag1',ptinput);
        params.createparam(ftinteger,'qty',ptinput);
        params.createparam(ftfloat,'tbu',ptinput);
        params.createparam(ftdate,'cplan',ptinput);
        params.createparam(ftstring,'flag4',ptinput);
        params.createparam(ftstring,'lflag',ptinput);
        params.createparam(ftstring,'cwo',ptinput);
        params.createparam(ftfloat,'ewf',ptinput);
        params.createparam(ftfloat,'esah',ptinput);
        params.createparam(ftfloat,'mantbl',ptinput);
        params.createparam(ftstring,'pws',ptinput);
        params.createparam(ftstring,'pzb',ptinput);
        params.createparam(ftstring,'fws',ptinput);
        params.createparam(ftstring,'fzb',ptinput);
        params.createparam(ftstring,'ews',ptinput);
        params.createparam(ftstring,'ezb',ptinput);
        params.createparam(ftfloat,'ysdx',ptinput);
        params.createparam(ftfloat,'ysxl',ptinput);
        params.createparam(ftfloat,'asah',ptinput);
        params.createparam(ftfloat,'awf',ptinput);
        params.createparam(ftfloat,'alxjs',ptinput);
        params.createparam(ftfloat,'exjs',ptinput);

        params.createparam(ftfloat,'sah_b',ptinput);
        params.createparam(ftfloat,'sah_bw',ptinput);
        params.createparam(ftfloat,'pfsah',ptinput);
        params.createparam(ftfloat,'pfrs_a',ptinput);
        params.createparam(ftfloat,'aloptqty',ptinput);
        params.createparam(ftstring,'dta',ptinput);
        params.createparam(ftstring,'dta1',ptinput);
        params.createparam(ftstring,'iecls1',ptinput);

        commandtext:='insert into tblshedule(pline,sopno,ordline,j_no,j2_job,artno,acol,'
                    +'seq,scqty,tmu,xjs,phiszjs,trs,ysjhl,fyl,zktd,sctd,sclhjs,kdjs,jhl,'
                    +'yqlcrq,bzjs,zhjs,bcjs,dbxl,flag1,flag2,yzh,xs,cstyle,shjs,pd4,rwo,'
                    +'rid,plan_date,jxjs,lstrs,jhrs,fccs,tplant,tshop,cstyle,flag6,flag1,qty,tbu,cplan,flag4,lflag,cwo,ewf,esah,mantbl,'
                    +'pws,pzb,fws,fzb,ews,ezb,flag401,ysdx,ysxl,dta,asah,awf,alxjs,exjs,'
                    +'sah_b,sah_bw,pfsah,pfrs_a,aloptqty,dta,dta1,iecls1) '
                    +'values(:pline,:sopno,:ordline,:j_no,:j2_job,:artno,:acol,'
                    +':seq,:scqty,:tmu,:xjs,:phiszjs,:trs,:ysjhl,:fyl,:zktd,:sctd,:sclhjs,:kdjs,:jhl,'
                    +':yqlcrq,:bzjs,:zhjs,:bcjs,:dbxl,:flag1,:flag2,:yzh,1,:cstyle,:shjs,:pd4,:rwo,'
                    +':rid,:plan_date,:jxjs,:lstrs,:jhrs,:fccs,:tplant,:tshop,:cstyle,:flag6,:flag1,:qty,:tbu,:cplan,:flag4,:lflag,:cwo,:ewf,:esah,:mantbl,'
                    +':pws,:pzb,:fws,:fzb,:ews,:ezb,''a'',:ysdx,:ysxl,'''',:asah,:awf,:alxjs,:exjs,'
                    +':sah_b,:sah_bw,:pfsah,:pfrs_a,:aloptqty,:dta,:dta1,:iecls1)';
        params[0].asstring:=pline;
        params[1].asstring:=tblsop.fieldbyname('sopno').value;
        params[2].asinteger:=tblsop.fieldbyname('ordline').value;
        params[3].asstring:=tblsop.fieldbyname('j_no').value;
        if not tblsop.fieldbyname('j2_job').isnull then
        params[4].asstring:=tblsop.fieldbyname('j2_job').value;
        params[5].asstring:=artno;
        params[6].asstring:=tblsop.fieldbyname('acol').value;
        params[7].asinteger:=seq1;
        params[8].asinteger:=scqty;
        params[9].asfloat:=tmu;
        params[10].asinteger:=xjs;
        params[11].asfloat:=phiszjs;
        params[12].asfloat:=trs;//round(lstrs);
        params[13].asfloat:=ysjhl;
        params[14].asfloat:=fyl;
        params[15].asfloat:=zktd;
        params[16].asinteger:=sctd;
        params[17].asfloat:=sclhjs;
        params[18].asinteger:=0;
        params[19].asfloat:=0;
        if not tblsop.fieldbyname('exfty').isnull then
        params[20].asdatetime:=tblsop.fieldbyname('exfty').value;
        params[21].asinteger:=bzjs;
        params[22].asfloat:=0;
        params[23].asinteger:=0;
        params[24].asfloat:=0;
        params[25].asstring:='0';
        //if tmu>0 then
        params[26].asstring:=flag2;
        //else params[26].asstring:='0';
        params[27].asboolean:=false;
        params[28].asstring:=cstyle;
        params[29].asfloat:=shjs;
        params[30].asdate:=tblsop.fieldbyname('ddt').value;
        if not tblsop.fieldbyname('rwo').isnull then
        params[31].asstring:=tblsop.fieldbyname('rwo').value
        else params[31].asstring:='1/1';
        params[32].asinteger:=tblsop.fieldbyname('rid').value;
        if plan_date>0 then params[33].asdate:=plan_date;
        params[34].asfloat:=jxjs;
        params[35].asfloat:=lstrs;
        params[36].asstring:='';
        //if ((worksheet1.edit2.text<>'T056F') and (worksheet1.edit2.text<>'T057F')) then
        //params[37].asstring:=''
        //else
        params[37].asstring:='1/1';
        params[38].asstring:=tplant;
        params[39].asstring:=tshop;
        params[40].asstring:=tblsop.fieldbyname('cstyle').value;
        params[41].asstring:=tblsop.fieldbyname('flag6').value;
        params[42].asstring:=tblsop.fieldbyname('stat').value;
        params[43].asinteger:=qty;
        params[44].asfloat:=tbu;//100.0;
        if plan_date>0 then params[45].asdate:=plan_date;
        params[46].asstring:='a';
        params[47].asstring:=o_lflag;
        if not tblsop.fieldbyname('cwo').isnull then
        params[48].asstring:=tblsop.fieldbyname('cwo').value
        else params[48].asstring:='';
        params[49].asfloat:=sp_wf;
        params[50].asfloat:=sp;
        params[51].asfloat:=mantbl;
        params[52].asstring:=pws;
        params[53].asstring:=pzb;
        params[54].asstring:=fws;
        params[55].asstring:=fzb;
        params[56].asstring:=ews;
        params[57].asstring:=ezb;
        if copy(o_lflag,1,1)='!' then
        params[58].asfloat:=strtofloat(copy(o_lflag,2,3))
        else params[58].asfloat:=strtofloat(o_lflag);
        params[59].asfloat:=ysjhl;
        params[60].asfloat:=asah;
        params[61].asfloat:=awf;
        params[62].asfloat:=alxjs;
        params[63].asfloat:=exjs;

        params[64].asfloat:=sah_b;
        params[65].asfloat:=sah_bw;
        params[66].asfloat:=pfsah;
        params[67].asfloat:=pfrs_a;
        params[68].asfloat:=aloptqty;
        params[69].asstring:=dta;
        params[70].asstring:=dta;
        params[71].asstring:=iecls1;
        execute;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='execute procedure sp_swpm_updpfews_seq(:x1,:x2,:x3)';
        params[0].asstring:=tplant;
        params[1].asstring:=pline;
        params[2].asinteger:=seq1;
        execute;
      end;

    //showmessage('002');
    {
    if tmu>0 then begin
      with worksheet1.tblshedule do begin
        append;
        fieldbyname('pline').value:=pline;
        fieldbyname('sopno').value:=tblsop.fieldbyname('sopno').value;
        fieldbyname('ordline').value:=tblsop.fieldbyname('ordline').value;
        fieldbyname('j_no').value:=tblsop.fieldbyname('j_no').value;
        if not tblsop.fieldbyname('j2_job').isnull then
        fieldbyname('j2_job').value:=tblsop.fieldbyname('j2_job').value;
        fieldbyname('artno').value:=artno;
        fieldbyname('acol').value:=tblsop.fieldbyname('acol').value;
        fieldbyname('seq').value:=seq1;
        fieldbyname('scqty').value:=scqty;
        fieldbyname('qty').value:=qty;
        fieldbyname('tmu').value:=tmu;
        fieldbyname('xjs').value:=xjs;
        fieldbyname('phiszjs').value:=phiszjs;
        fieldbyname('trs').value:=trs;
        fieldbyname('ysjhl').value:=ysjhl;
        fieldbyname('fyl').value:=fyl;
        fieldbyname('zktd').value:=zktd;
        fieldbyname('sctd').value:=sctd;
        fieldbyname('sclhjs').value:=sclhjs;
        fieldbyname('kdjs').value:=0;
        if not tblsop.fieldbyname('exfty').isnull then
        fieldbyname('yqlcrq').value:=tblsop.fieldbyname('exfty').value;
        fieldbyname('bzjs').value:=bzjs;
        fieldbyname('zhjs').value:=0;
        fieldbyname('bcjs').value:=0;
        fieldbyname('dbxl').value:=0.00;
        fieldbyname('flag1').value:='0';
        //if tmu>0 then
        fieldbyname('flag2').value:=flag2;
        //else fieldbyname('flag2').value:='0';
        fieldbyname('yzh').value:=false;
        fieldbyname('ckts').value:=0;
        fieldbyname('week').value:=0;
        fieldbyname('rqxc').value:=0;
        fieldbyname('qrxc').value:=0;
        fieldbyname('cfksjs').value:=0;
        fieldbyname('cfwcjs').value:=0;
        fieldbyname('xs').value:=1;
        fieldbyname('cstyle').value:=cstyle;
        fieldbyname('shjs').value:=shjs;
        fieldbyname('pd4').value:=tblsop.fieldbyname('ddt').value;
        if not tblsop.fieldbyname('rwo').isnull then
        fieldbyname('rwo').value:=tblsop.fieldbyname('rwo').value
        else fieldbyname('rwo').value:='1/1';
        fieldbyname('rid').value:=tblsop.fieldbyname('rid').value;
        if plan_date>0 then begin
          fieldbyname('plan_date').value:=plan_date;
          fieldbyname('cplan').value:=plan_date;
        end;
        fieldbyname('lstrs').value:=lstrs;
        fieldbyname('jhrs').value:='';
        //if ((worksheet1.edit2.text<>'T056F') and (worksheet1.edit2.text<>'T057F')) then
        //fieldbyname('fccs').value:=''
        //else
        fieldbyname('fccs').value:='1/1';
        fieldbyname('tplant').value:=tplant;
        fieldbyname('tshop').value:=tshop;
        fieldbyname('cstyle').value:=tblsop.fieldbyname('cstyle').value;
        fieldbyname('flag6').value:=tblsop.fieldbyname('flag6').value;
        fieldbyname('flag1').value:=tblsop.fieldbyname('stat').value;
        fieldbyname('tbu').value:=tbu;
        fieldbyname('flag4').value:='a';
        fieldbyname('flag401').value:='a';
        fieldbyname('lflag').value:=o_lflag;
        if copy(o_lflag,1,1)='!' then
        fieldbyname('ysdx').value:=strtofloat(copy(o_lflag,2,3))
        else fieldbyname('ysdx').value:=strtofloat(o_lflag);
        fieldbyname('ysxl').value:=ysjhl;
        if not tblsop.fieldbyname('cwo').isnull then
        fieldbyname('cwo').value:=tblsop.fieldbyname('cwo').value
        else fieldbyname('cwo').value:='';
        fieldbyname('ewf').value:=sp_wf;
        fieldbyname('esah').value:=sp;
        fieldbyname('mantbl').value:=mantbl;
        fieldbyname('pws').value:=pws;
        fieldbyname('pzb').value:=pzb;
        fieldbyname('fws').value:=fws;
        fieldbyname('fzb').value:=fzb;
        fieldbyname('ews').value:=ews;
        fieldbyname('ezb').value:=ezb;
        fieldbyname('dta').value:='';
        fieldbyname('asah').value:=asah;
        fieldbyname('awf').value:=awf;
        fieldbyname('alxjs').value:=alxjs;
        fieldbyname('exjs').value:=exjs;
        post;
      end;
    end else begin
    end;
    }
      worksheet1.SpeedButton1Click(self);
      worksheet1.tblshedule.Last;

    //showmessage('003');

    if ((worksheet1.edit2.text<>'T056F') and (worksheet1.edit2.text<>'T057F') and (worksheet1.edit2.text<>'PPWS') and (worksheet1.edit2.text<>'PPWS3')) then begin
      {
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='update tbl_sop set rqty=0 where j_no=:x1 and ordline=:x2 and j2_job=:x3 and acol=:x4 and rwo=:x5';

        params[0].asstring:=tblsop.fieldbyname('j_no').value;
        params[1].asinteger:=tblsop.fieldbyname('ordline').value;
        params[2].asstring:=tblsop.fieldbyname('j2_job').value;
        params[3].asstring:=tblsop.fieldbyname('acol').value;
        params[4].asstring:=tblsop.fieldbyname('rwo').value;
        execute;
      end;
      }
        str1:='update tbl_sop set rqty=0 where j_no='''+tblsop.fieldbyname('j_no').value+''' ';
        str1:=str1+'and ordline='+tblsop.fieldbyname('ordline').asstring+' ';
        str1:=str1+'and j2_job='''+tblsop.fieldbyname('j2_job').value+''' ';
        str1:=str1+'and acol='''+tblsop.fieldbyname('acol').value+''' ';
        str1:=str1+'and rwo='''+tblsop.fieldbyname('rwo').value+'''';
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

        //showmessage('004');

      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_updfccs_rwo_new(:x1,:x2,:x3,:x4)';
        params[0].asstring:=tblsop.fieldbyname('j_no').value;
        params[1].asstring:=tblsop.fieldbyname('j2_job').value;
        params[2].asstring:=tblsop.fieldbyname('rwo').value;
        params[3].asstring:=tblsop.fieldbyname('acol').value;
        execute;
      end;

      //showmessage('005');

    end else begin
      {
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='update tbl_sop_ppws set rqty=0 where j_no=:x1 and ordline=:x2 and j2_job=:x3 and acol=:x4 and rwo=:x5';
        params[0].asstring:=tblsop.fieldbyname('j_no').value;
        params[1].asinteger:=tblsop.fieldbyname('ordline').value;
        params[2].asstring:=tblsop.fieldbyname('j2_job').value;
        params[3].asstring:=tblsop.fieldbyname('acol').value;
        params[4].asstring:=tblsop.fieldbyname('rwo').value;
        execute;
      end;
      }
        if pos('P',tblsop.fieldbyname('rwo').value)>0 then
        str1:='update tbl_sop_ppws '
        else str1:='update tbl_sop ';
        str1:=str1+'set rqty=0 where j_no='''+tblsop.fieldbyname('j_no').value+''' ';
        str1:=str1+'and ordline='+tblsop.fieldbyname('ordline').asstring+' ';
        str1:=str1+'and j2_job='''+tblsop.fieldbyname('j2_job').value+''' ';
        str1:=str1+'and acol='''+tblsop.fieldbyname('acol').value+''' ';
        str1:=str1+'and rwo='''+tblsop.fieldbyname('rwo').value+'''';
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
    end;
    
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_updgrp_1(:x1)';
      params[0].asstring:=copy(tblsop.fieldbyname('j_no').value,1,4);
      execute;
    end;

    tblsop.edit;
    tblsop.fieldbyname('rqty').value:=0;
    tblsop.post;
    tblsop.filtered:=false;
    tblsop.OnFilterRecord:=filter1record;
    tblsop.filtered:=true;
    tblsop.First;
  end;
  {
  pstr:='1 '+worksheet1.Edit2.text+' '+tblsop.fieldbyname('j_no').value+' '+tblsop.fieldbyname('ordline').asstring+' '+tblsop.fieldbyname('j2_job').value+' '+tblsop.fieldbyname('acol').value+' '+tblsop.fieldbyname('rwo').value;
  if pos('test',lowercase(application.ExeName))>0 then
  winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
  else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
  }
  screen.cursor:=crdefault;
end;

procedure Tfrmworder.Filter1Record(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept:=dataset['rqty']>0;
end;

procedure Tfrmworder.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton5click(self);
end;

procedure Tfrmworder.SpeedButton5Click(Sender: TObject);
begin
  if ((worksheet1.edit2.text<>'T056F') and (worksheet1.edit2.text<>'T057F') and (worksheet1.edit2.text<>'PPWS') and (worksheet1.edit2.text<>'PPWS3')) then begin
    if edit3.text>'' then begin
      with tblsop do begin
        close;
        params.clear;
        params.createparam(ftstring,'flag1',ptinput);
        params.createparam(ftstring,'sopno',ptinput);
        commandtext:='select * from tbl_sop where flag1=:flag1 and j_no like :sopno and rqty>0 and rwo not like ''%P''';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        params[0].asstring:='0';
        params[1].asstring:=edit3.text+'%';
        open;
      end;
    end else begin
      with tblsop do begin
        close;
        params.clear;
        params.createparam(ftstring,'flag1',ptinput);
        commandtext:='select * from tbl_sop where flag1=:flag1 and rqty>0 and rwo not like ''%P''';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        params[0].asstring:='0';
        open;
      end;
    END;
  end else begin
    if checkbox1.Checked then begin
      if edit3.text>'' then begin
        with tblsop do begin
          close;
          params.clear;
          params.createparam(ftstring,'flag1',ptinput);
          params.createparam(ftstring,'sopno',ptinput);
          commandtext:='select * from tbl_sop_ppws where flag1=:flag1 and j_no like :sopno and rqty>0';
          if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
          params[0].asstring:='0';
          params[1].asstring:=edit3.text+'%';
          open;
        end;
      end else begin
        with tblsop do begin
          close;
          params.clear;
          params.createparam(ftstring,'flag1',ptinput);
          commandtext:='select * from tbl_sop_ppws where flag1=:flag1 and rqty>0';
          if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
          params[0].asstring:='0';
          open;
        end;
      END;
    end else begin
      if edit3.text>'' then begin
        with tblsop do begin
          close;
          params.clear;
          params.createparam(ftstring,'flag1',ptinput);
          params.createparam(ftstring,'sopno',ptinput);
          commandtext:='select * from tbl_sop where flag1=:flag1 and j_no like :sopno and rqty>0 and rwo not like ''%P''';
          if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
          params[0].asstring:='0';
          params[1].asstring:=edit3.text+'%';
          open;
        end;
      end else begin
        with tblsop do begin
          close;
          params.clear;
          params.createparam(ftstring,'flag1',ptinput);
          commandtext:='select * from tbl_sop where flag1=:flag1 and rqty>0 and rwo not like ''%P''';
          if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
          params[0].asstring:='0';
          open;
        end;
      END;
    end;
  end;
end;

procedure Tfrmworder.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmworder.SpeedButton2Click(Sender: TObject);
begin
  if tblsop.Active then ppReport1.Print; 
end;

procedure Tfrmworder.ppSummaryBand1BeforePrint(Sender: TObject);
var
  f0:integer;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    if ((worksheet1.edit2.text<>'T056F') and (worksheet1.edit2.text<>'T057F')) then
      commandtext:='select count(distinct customer) as c1,count(distinct j_no) as c2,count(distinct j2_job) as c3,count(distinct cstyle) as c4,count(*) as c5 from tbl_sop where rqty>0'
    else commandtext:='select count(distinct customer) as c1,count(distinct j_no) as c2,count(distinct j2_job) as c3,count(distinct cstyle) as c4,count(*) as c5 from tbl_sop_ppws where rqty>0';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    open;
    if not fieldbyname('c1').isnull then ttl001.Caption:=fieldbyname('c1').asstring else ttl001.Caption:='0';
    if not fieldbyname('c2').isnull then begin
      ttl002.Caption:=fieldbyname('c2').asstring;
      ttl003.Caption:=fieldbyname('c2').asstring;
    end else begin
      ttl002.Caption:='0';
      ttl003.Caption:='0';
    end;
    if not fieldbyname('c3').isnull then ttl004.Caption:=fieldbyname('c3').asstring else ttl004.Caption:='0';
    if not fieldbyname('c4').isnull then ttl005.Caption:=fieldbyname('c4').asstring else ttl005.Caption:='0';
    if not fieldbyname('c5').isnull then ttl006.Caption:=fieldbyname('c5').asstring else ttl006.Caption:='0';
  end;
  f0:=0;
  with clientdataset1 do begin
    close;
    params.clear;
    if ((worksheet1.edit2.text<>'T056F') and (worksheet1.edit2.text<>'T057F')) then
      commandtext:='select distinct j_no,j2_job,count(distinct cwo) as c5 from tbl_sop where rqty>0'
    else commandtext:='select distinct j_no,j2_job,count(distinct cwo) as c5 from tbl_sop_ppws where rqty>0';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' group by j_no,j2_job';
    open;
    first;
    while not eof do begin
     if not fieldbyname('c5').isnull then f0:=f0+fieldbyname('c5').value;
     application.ProcessMessages;
     next;
    end;
  end;
  ttl010.Caption:=inttostr(f0);
end;

procedure Tfrmworder.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  f0:integer;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    if ((worksheet1.edit2.text<>'T056F') and (worksheet1.edit2.text<>'T057F')) then
      commandtext:='select count(distinct customer) as c1,count(distinct j_no) as c2,count(distinct j2_job) as c3,count(distinct cstyle) as c4,count(*) as c5 from tbl_sop where rqty>0 and tplant='''+tblsop.fieldbyname('tplant').value+''''
    else commandtext:='select count(distinct customer) as c1,count(distinct j_no) as c2,count(distinct j2_job) as c3,count(distinct cstyle) as c4,count(*) as c5 from tbl_sop_ppws where rqty>0 and tplant='''+tblsop.fieldbyname('tplant').value+'''';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    open;
    if not fieldbyname('c1').isnull then sub001.Caption:=fieldbyname('c1').asstring else sub001.Caption:='0';
    if not fieldbyname('c2').isnull then begin
      sub002.Caption:=fieldbyname('c2').asstring;
      sub003.Caption:=fieldbyname('c2').asstring;
    end else begin
      sub002.Caption:='0';
      sub003.Caption:='0';
    end;
    if not fieldbyname('c3').isnull then sub004.Caption:=fieldbyname('c3').asstring else sub004.Caption:='0';
    if not fieldbyname('c4').isnull then sub005.Caption:=fieldbyname('c4').asstring else sub005.Caption:='0';
    if not fieldbyname('c5').isnull then sub006.Caption:=fieldbyname('c5').asstring else sub006.Caption:='0';
  end;
  f0:=0;
  with clientdataset1 do begin
    close;
    params.clear;
    if ((worksheet1.edit2.text<>'T056F') and (worksheet1.edit2.text<>'T057F')) then
      commandtext:='select distinct j_no,j2_job,count(distinct cwo) as c5 from tbl_sop where rqty>0 and tplant='''+tblsop.fieldbyname('tplant').value+''''
    else commandtext:='select distinct j_no,j2_job,count(distinct cwo) as c5 from tbl_sop_ppws where rqty>0 and tplant='''+tblsop.fieldbyname('tplant').value+'''';
    if edit3.text>'' then commandtext:=commandtext+' and j_no like '''+edit3.text+'%''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    commandtext:=commandtext+' group by j_no,j2_job';
    open;
    first;
    while not eof do begin
     if not fieldbyname('c5').isnull then f0:=f0+fieldbyname('c5').value;
     application.ProcessMessages;
     next;
    end;
  end;
  sub010.Caption:=inttostr(f0);
end;

procedure Tfrmworder.CompleteProject1Click(Sender: TObject);
var
  str1:string;
begin
  if application.MessageBox('Remove this project?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='insert into tbl_erpcmpsop(j_no) values(:x1)';
      params[0].asstring:=tblsop.fieldbyname('j_no').value;
      execute;
    end;
    if ((worksheet1.edit2.text<>'T056F') and (worksheet1.edit2.text<>'T057F')) then begin
      {
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='update tbl_sop set rqty=0 where j_no=:x1 and rqty>0';
        params[0].asstring:=tblsop.fieldbyname('j_no').value;
        execute;
      end;
      }
      str1:='update tbl_sop set rqty=0 where j_no='''+tblsop.fieldbyname('j_no').value+''' and rqty>0';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    end else begin
      {
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='update tbl_sop_ppws set rqty=0 where j_no=:x1 and rqty>0';
        params[0].asstring:=tblsop.fieldbyname('j_no').value;
        execute;
      end;
      }
      str1:='update tbl_sop_ppws set rqty=0 where j_no='''+tblsop.fieldbyname('j_no').value+''' and rqty>0';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    end;
  end;
end;

procedure Tfrmworder.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  str1:string;
begin
  str1:='P1 '+tblsop.fieldbyname('j_no').value+' '+tblsop.fieldbyname('ordline').asstring+' '+tblsop.fieldbyname('rwo').value;
  str1:=str1+' '+frmmain.tcpchannel.Host;
  //str1:=str1+' 10.2.1.7';
  shellexecute(0,'open','c:\temp\rwoprint.exe',pchar(str1),'c:\temp',sw_show);
  //winexec(pchar(str1),sw_show);
end;

end.
