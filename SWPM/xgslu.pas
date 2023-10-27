unit xgslu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons, Db, DBClient, siComp;

type
  Tfrmxgsl = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    opt1: TRadioButton;
    opt2: TRadioButton;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    SpeedButton1: TSpeedButton;
    ClientDataSet4: TClientDataSet;
    siLang1: TsiLang;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgsl: Tfrmxgsl;
  tm: Tdatetime;
  strupd:string;

implementation
uses mainformu, worksheet, cmfpformu;
{$R *.DFM}

procedure Tfrmxgsl.BitBtn1Click(Sender: TObject);
var
  seq1,seq2,ordline,var1,qrxc,rid,qty,pfoptqty,aloptqty,eoptqty,toptqty:integer;
  fyl,ysjhl,float1,float2,var2,var3,var4,float3:double;
  PLINE,sopno,artno,acol,j_no,j2_job,khzl,pflag1,flag5,cstyle,jhrs,dbzs,tplant,tshop,rwo,flag6,flag1,lflag,flag3,fccs,grp:string;
  yqlcrq,qrlcrq,plan_date,cplan,wl_jhrq,pb_jhrq,yqlcrq1:tdatetime;
  line_rs,lstrs,trs,tbu,tmu,wl_jhp,wl_wcp,ewf,esah,mantbl,asah,awf,alxjs,pfxjs,exjs:double;
  flag2,lflag1,cwo,iecls,iecls1,o_lflag:string;
  fccs1,pws,pzb,fws,fzb,ews,ezb,lbling,dta:string;
  pstr:string;
  wl_wc,pb_wc,khzl1,prtwo:boolean;
begin
  screen.cursor:=crhourglass;
  if opt1.Checked then begin
    if combobox1.Text=worksheet1.tblshedule.fieldbyname('pline').value then exit;
  end;
  if spinedit1.value>0 then begin
    PLINE:=WORKSHEET1.TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
    if combobox1.text>'' then begin
      with clientdataset1 do begin
        close;
        params.clear;
        commandtext:='select tplant,tshop,workero from tblline where pline='''+combobox1.text+'''';
        open;
        if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='SL';
        if not fieldbyname('tshop').isnull then tshop:=fieldbyname('tshop').value else tshop:='';
        if not fieldbyname('workero').isnull then line_rs:=fieldbyname('workero').value else line_rs:=0;
      end;
    end;
    trs:=worksheet1.tblshedule.fieldbyname('trs').value;
    ordline:=worksheet1.tblshedule.fieldbyname('ordline').value;
    if not worksheet1.tblshedule.fieldbyname('cwo').isnull then
    cwo:=worksheet1.tblshedule.fieldbyname('cwo').value else cwo:='';
    if not worksheet1.tblshedule.fieldbyname('grp').isnull then
    grp:=worksheet1.tblshedule.fieldbyname('grp').value else grp:='';
    if not worksheet1.tblshedule.fieldbyname('tmu').isnull then
    tmu:=worksheet1.tblshedule.fieldbyname('tmu').value else tmu:=0;
    if not worksheet1.tblshedule.fieldbyname('asah').isnull then
    asah:=worksheet1.tblshedule.fieldbyname('asah').value else asah:=0;
    if not worksheet1.tblshedule.fieldbyname('awf').isnull then
    awf:=worksheet1.tblshedule.fieldbyname('awf').value else awf:=25;
    if asah>0 then alxjs:=awf*0.5/asah else alxjs:=0;

    if not worksheet1.tblshedule.fieldbyname('pfoptqty').isnull then
    pfoptqty:=worksheet1.tblshedule.fieldbyname('pfoptqty').value else pfoptqty:=0;
    if not worksheet1.tblshedule.fieldbyname('aloptqty').isnull then
    aloptqty:=worksheet1.tblshedule.fieldbyname('aloptqty').value else aloptqty:=0;
    if not worksheet1.tblshedule.fieldbyname('eoptqty').isnull then
    eoptqty:=worksheet1.tblshedule.fieldbyname('eoptqty').value else eoptqty:=0;
    if not worksheet1.tblshedule.fieldbyname('toptqty').isnull then
    toptqty:=worksheet1.tblshedule.fieldbyname('toptqty').value else toptqty:=0;

    fyl:=1;
    if not worksheet1.tblshedule.fieldbyname('ysjhl').isnull then
    ysjhl:=worksheet1.tblshedule.fieldbyname('ysjhl').value else ysjhl:=100;
    sopno:=worksheet1.tblshedule.fieldbyname('sopno').value;
    artno:=worksheet1.tblshedule.fieldbyname('artno').value;
    acol:=worksheet1.tblshedule.fieldbyname('acol').value;
    j_no:=worksheet1.tblshedule.fieldbyname('j_no').value;
    j2_job:=worksheet1.tblshedule.fieldbyname('j2_job').value;
    seq2:=worksheet1.tblshedule.fieldbyname('seq').value;
    yqlcrq:=worksheet1.tblshedule.fieldbyname('yqlcrq').value;
    if not worksheet1.tblshedule.FieldByName('qrlcrq').isnull then
    qrlcrq:=worksheet1.tblshedule.fieldbyname('qrlcrq').value;
    if not worksheet1.tblshedule.FieldByName('yqlcrq1').isnull then
    yqlcrq1:=worksheet1.tblshedule.fieldbyname('yqlcrq1').value;
    if not worksheet1.tblshedule.fieldbyname('khzl').isnull then
    khzl:=worksheet1.tblshedule.fieldbyname('khzl').value
    else khzl:='';
    if not worksheet1.tblshedule.fieldbyname('pflag1').isnull then
    pflag1:=worksheet1.tblshedule.fieldbyname('pflag1').value
    else pflag1:='';
    if not worksheet1.tblshedule.fieldbyname('flag5').isnull then
    flag5:=worksheet1.tblshedule.fieldbyname('flag5').value
    else flag5:='';
    if not worksheet1.tblshedule.fieldbyname('cstyle').isnull then
    cstyle:=worksheet1.tblshedule.fieldbyname('cstyle').value
    else cstyle:='';
    if not worksheet1.tblshedule.fieldbyname('jhrs').isnull then
    jhrs:=worksheet1.tblshedule.fieldbyname('jhrs').value
    else jhrs:='';
    if not worksheet1.tblshedule.fieldbyname('plan_date').isnull then
    plan_date:=worksheet1.tblshedule.fieldbyname('plan_date').value;
    if not worksheet1.tblshedule.fieldbyname('cplan').isnull then
    cplan:=worksheet1.tblshedule.fieldbyname('cplan').value
    else begin
      if not worksheet1.tblshedule.fieldbyname('plan_date').isnull then
      cplan:=worksheet1.tblshedule.fieldbyname('plan_date').value;
    end;
    if not worksheet1.tblshedule.fieldbyname('qrxc').isnull then
    qrxc:=worksheet1.tblshedule.fieldbyname('qrxc').value
    else qrxc:=0;
    if not worksheet1.tblshedule.fieldbyname('rid').isnull then
    rid:=worksheet1.tblshedule.fieldbyname('rid').value else rid:=0;
    if not worksheet1.tblshedule.fieldbyname('dbzs').isnull then
    dbzs:=worksheet1.tblshedule.fieldbyname('dbzs').value
    else dbzs:=' ';
    if not worksheet1.tblshedule.fieldbyname('dta').isnull then
    dta:=worksheet1.tblshedule.fieldbyname('dta').value
    else dta:='';
    if not worksheet1.tblshedule.fieldbyname('rwo').isnull then
    rwo:=worksheet1.tblshedule.fieldbyname('rwo').value
    else rwo:='1/1';
    if not worksheet1.tblshedule.fieldbyname('lstrs').isnull then
    lstrs:=worksheet1.tblshedule.fieldbyname('lstrs').value
    else lstrs:=0;
    if not worksheet1.tblshedule.fieldbyname('flag6').isnull then
    flag6:=worksheet1.tblshedule.fieldbyname('flag6').value
    else flag6:='';
    if not worksheet1.tblshedule.fieldbyname('flag1').isnull then
    flag1:=worksheet1.tblshedule.fieldbyname('flag1').value
    else flag1:='0';
    if not worksheet1.tblshedule.fieldbyname('flag2').isnull then
    flag2:=worksheet1.tblshedule.fieldbyname('flag2').value
    else flag2:='Q';
    if not worksheet1.tblshedule.fieldbyname('flag3').isnull then
    flag3:=worksheet1.tblshedule.fieldbyname('flag3').value
    else flag3:='';
    if not worksheet1.tblshedule.fieldbyname('fccs').isnull then
    fccs:=worksheet1.tblshedule.fieldbyname('fccs').value
    else fccs:='';
    if not worksheet1.tblshedule.fieldbyname('iecls').isnull then
    iecls:=worksheet1.tblshedule.fieldbyname('iecls').value
    else iecls:='';
    if not worksheet1.tblshedule.fieldbyname('iecls1').isnull then
    iecls1:=worksheet1.tblshedule.fieldbyname('iecls1').value
    else iecls1:='';
    if not worksheet1.tblshedule.fieldbyname('wl_jhdt').isnull then
    wl_jhrq:=worksheet1.tblshedule.fieldbyname('wl_jhdt').value;
    if not worksheet1.tblshedule.fieldbyname('pb_jhdt').isnull then
    pb_jhrq:=worksheet1.tblshedule.fieldbyname('pb_jhdt').value;
    if not worksheet1.tblshedule.fieldbyname('wl_jhp').isnull then
    wl_jhp:=worksheet1.tblshedule.fieldbyname('wl_jhp').value
    else wl_jhp:=0;
    if not worksheet1.tblshedule.fieldbyname('wl_wcp').isnull then
    wl_wcp:=worksheet1.tblshedule.fieldbyname('wl_wcp').value
    else wl_wcp:=0;
    if not worksheet1.tblshedule.fieldbyname('wl_wc').isnull then
    wl_wc:=worksheet1.tblshedule.fieldbyname('wl_wc').value
    else wl_wc:=false;
    if not worksheet1.tblshedule.fieldbyname('pb_wc').isnull then
    pb_wc:=worksheet1.tblshedule.fieldbyname('pb_wc').value
    else pb_wc:=false;
    if not worksheet1.tblshedule.fieldbyname('khzl1').isnull then
    khzl1:=worksheet1.tblshedule.fieldbyname('khzl1').value
    else khzl1:=false;
    if not worksheet1.tblshedule.fieldbyname('prtwo').isnull then
    prtwo:=worksheet1.tblshedule.fieldbyname('prtwo').value
    else prtwo:=false;
    if tshop='SC' then lstrs:=line_rs;
    ewf:=worksheet1.tblshedule.fieldbyname('ewf').value;
    esah:=worksheet1.tblshedule.fieldbyname('esah').value;
    mantbl:=worksheet1.tblshedule.fieldbyname('mantbl').value;
    if not worksheet1.tblshedule.fieldbyname('lbling').isnull then
    lbling:=worksheet1.tblshedule.fieldbyname('lbling').value
    else lbling:='';

    if not worksheet1.tblshedule.fieldbyname('qty').isnull then
    qty:=worksheet1.tblshedule.fieldbyname('qty').value else qty:=worksheet1.tblshedule.fieldbyname('scqty').value;
    if not worksheet1.tblshedule.fieldbyname('tbu').isnull then
    tbu:=worksheet1.tblshedule.fieldbyname('tbu').value else tbu:=100;
    if not worksheet1.tblshedule.fieldbyname('lflag').isnull then begin
      if ((copy(worksheet1.tblshedule.fieldbyname('lflag').value,1,1)='!') or (copy(worksheet1.tblshedule.fieldbyname('lflag').value,1,1)='^')) then
      lflag:=worksheet1.tblshedule.fieldbyname('lflag').value
      else lflag:='!'+copy(worksheet1.tblshedule.fieldbyname('lflag').value,1,1);
    end else lflag:='!0';

    if opt1.Checked then begin
      //opt1
      if spinedit1.Value=strtoint(edit1.Text) then begin
        if combobox1.text<>pline then begin
          if combobox1.text='PPWS' then begin
            pws:=''; pzb:=''; fws:='-'; fzb:='-'; ews:='-'; ezb:='-';
          end else if (pos('S.OS',combobox1.text)>0) or (pos('RSB',combobox1.text)>0) then begin
            pws:='-'; pzb:='-'; fws:='-'; fzb:='-'; ews:='-'; ezb:='-';
          end else begin
            pws:=''; pzb:=''; fws:=''; fzb:=''; ews:=''; ezb:='';
            with clientdataset1 do begin
              close;
              params.clear;
              commandtext:='select a.tshop,a.pline from tblline a,tblline_mapping b where a.pline=b.pline and b.m_pline='''+combobox1.text+''' and substr(b.pline,1,1) in (''P'',''F'',''E'')';
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

          if (copy(combobox1.Text,1,1)='T') then begin
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
              params[2].asstring:=combobox1.text;
              params[3].asinteger:=seq1;
              open;
              if not fieldbyname('o_lflag').isnull then o_lflag:=fieldbyname('o_lflag').value
              else o_lflag:='!1';
            end;
          end else o_lflag:='!1';

          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            commandtext:='select max(seq) as seq1 from tblshedule where pline=:pline';
            params[0].asstring:=combobox1.text;
            open;
            if not fieldbyname('seq1').isnull then seq1:=fieldbyname('seq1').value+1
            else seq1:=1;
          end;

          strupd:='update line_shjs set pline='''+combobox1.text+''',seq='+inttostr(seq1)+' where pline='''+pline+''' and seq='+inttostr(seq2);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_lwo set pline='''+combobox1.text+''',seq='+inttostr(seq1)+' where pline='''+pline+''' and seq='+inttostr(seq2);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_lwo_sew set pline='''+combobox1.text+''',seq='+inttostr(seq1)+' where pline='''+pline+''' and seq='+inttostr(seq2);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_lwo_dt set pline='''+combobox1.text+''',seq='+inttostr(seq1)+' where pline='''+pline+''' and seq='+inttostr(seq2);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_lwo_sewdt set pline='''+combobox1.text+''',seq='+inttostr(seq1)+' where pline='''+pline+''' and seq='+inttostr(seq2);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_notepad set pline='''+combobox1.text+''',seq='+inttostr(seq1)+' where pline='''+pline+''' and seq='+inttostr(seq2);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_schstatus set pline='''+combobox1.text+''',seq='+inttostr(seq1)+' where pline='''+pline+''' and seq='+inttostr(seq2);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          //
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            commandtext:='select workert,ysjhl from tblline where upper(pline)=:pline';
            params[0].asstring:=uppercase(combobox1.text);
            open;
            if not fieldbyname('ysjhl').isnull then ysjhl:=fieldbyname('ysjhl').value else ysjhl:=100;
          end;
          fyl:=1.00;
          if lstrs=0 then lstrs:=25;
        end;
          //showmessage('0');
          //{
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            params.createparam(ftstring,'khzl',ptinput);
            params.createparam(ftfloat,'tmu',ptinput);
            params.createparam(ftfloat,'trs',ptinput);
            params.createparam(ftfloat,'ysjhl',ptinput);
            params.createparam(ftstring,'sopno',ptinput);
            params.createparam(ftstring,'j_no',ptinput);
            params.createparam(ftstring,'artno',ptinput);
            params.createparam(ftstring,'acol',ptinput);
            params.CreateParam(ftstring,'j2_job',ptinput);
            params.createparam(ftinteger,'ordline',ptinput);
            params.createparam(ftdatetime,'yqlcrq',ptinput);
            params.createparam(ftstring,'pflag1',ptinput);
            params.createparam(ftstring,'flag5',ptinput);
            params.createparam(ftstring,'jhrs',ptinput);
            params.createparam(ftdate,'plan_date',ptinput);
            params.createparam(ftinteger,'qrxc',ptinput);
            params.createparam(ftinteger,'scqty',ptinput);
            params.createparam(ftfloat,'fyl',ptinput);
            params.createparam(ftboolean,'yzh',ptinput);
            params.createparam(ftinteger,'xs',ptinput);
            params.createparam(ftfloat,'sclhjs',ptinput);
            params.createparam(ftfloat,'qyjs',ptinput);
            params.createparam(ftinteger,'rid',ptinput);
            params.createparam(ftstring,'dbzs',ptinput);
            params.createparam(ftstring,'tplant',ptinput);
            params.createparam(ftstring,'rwo',ptinput);
            params.createparam(ftfloat,'lstrs',ptinput);
            params.createparam(ftstring,'flag1',ptinput);
            params.createparam(ftstring,'flag2',ptinput);
            params.createparam(ftstring,'flag6',ptinput);
            params.createparam(ftinteger,'xjs',ptinput);
            params.createparam(ftfloat,'jxjs',ptinput);
            params.createparam(ftfloat,'phiszjs',ptinput);
            params.createparam(ftfloat,'shjs',ptinput);
            params.createparam(ftfloat,'zjs',ptinput);
            params.createparam(ftinteger,'qty',ptinput);
            params.createparam(ftfloat,'tbu',ptinput);
            params.createparam(ftstring,'lflag',ptinput);
            params.createparam(ftdate,'cplan',ptinput);
            params.createparam(ftstring,'fccs',ptinput);
            params.createparam(ftstring,'flag3',ptinput);
            params.createparam(ftstring,'tshop',ptinput);
            params.CreateParam(ftstring,'cwo',ptinput);
            params.CreateParam(ftstring,'iecls',ptinput);
            params.CreateParam(ftstring,'iecls1',ptinput);
            params.CreateParam(ftdate,'wl_jhrq',ptinput);
            params.CreateParam(ftfloat,'wl_jhp',ptinput);
            params.CreateParam(ftboolean,'wl_wc',ptinput);
            params.CreateParam(ftfloat,'wl_wcp',ptinput);
            params.CreateParam(ftdate,'pb_jhrq',ptinput);
            params.CreateParam(ftboolean,'pb_wc',ptinput);
            params.CreateParam(ftboolean,'khzl1',ptinput);
            params.CreateParam(ftfloat,'ewf',ptinput);
            params.CreateParam(ftfloat,'esah',ptinput);
            params.CreateParam(ftfloat,'mantbl',ptinput);
            params.createparam(ftstring,'pws',ptinput);
            params.createparam(ftstring,'pzb',ptinput);
            params.createparam(ftstring,'fws',ptinput);
            params.createparam(ftstring,'fzb',ptinput);
            params.createparam(ftstring,'ews',ptinput);
            params.createparam(ftstring,'ezb',ptinput);
            params.createparam(ftstring,'lbling',ptinput);
            params.createparam(ftdate,'yqlcrq1',ptinput);
            params.createparam(ftfloat,'ysdx',ptinput);
            params.createparam(ftfloat,'ysxl',ptinput);
            params.createparam(ftstring,'grp',ptinput);
            params.createparam(ftfloat,'asah',ptinput);
            params.createparam(ftfloat,'awf',ptinput);
            params.createparam(ftfloat,'alxjs',ptinput);
            params.createparam(ftinteger,'pfoptqty',ptinput);
            params.createparam(ftinteger,'aloptqty',ptinput);
            params.createparam(ftinteger,'eoptqty',ptinput);
            params.createparam(ftinteger,'toptqty',ptinput);
            params.CreateParam(ftboolean,'prtwo',ptinput);
            commandtext:='insert into tblshedule(pline,seq,khzl,tmu,trs,ysjhl,sopno,j_no,artno,acol,j2_job,ordline,'
                        +'yqlcrq,pflag1,flag5,cstyle,jhrs,plan_date,qrxc,scqty,fyl,yzh,xs,sclhjs,qyjs,'
                        +'rid,dbzs,tplant,rwo,lstrs,flag1,flag2,flag6,xjs,jxjs,phiszjs,shjs,zjs,qty,tbu,lflag,cplan,fccs,flag3,tshop,dta,cwo,iecls,iecls1,'
                        +'wl_jhdt,wl_jhp,wl_wc,wl_wcp,pb_jhdt,pb_wc,khzl1,ewf,esah,mantbl,'
                        +'pws,pzb,fws,fzb,ews,ezb,lbling,yqlcrq1,ysdx,ysxl,grp,asah,awf,alxjs,pfoptqty,aloptqty,eoptqty,toptqty,prtwo) '
                        +'values(:pline,:seq,:khzl,:tmu,:trs,:ysjhl,:sopno,:j_no,:artno,:acol,:j2_job,:ordline,'
                        +':yqlcrq,:pflag1,:flag5,:cstyle,:jhrs,:plan_date,:qrxc,:scqty,:fyl,:yzh,:xs,:sclhjs,:qyjs,'
                        +':rid,:dbzs,:tplant,:rwo,:lstrs,:flag1,:flag2,:flag6,:xjs,:jxjs,:phiszjs,:shjs,:zjs,:qty,:tbu,:lflag,:cplan,:fccs,:flag3,:tshop,'
                        +''''+dta+''',:cwo,:iecls,:iecls1,:wl_jhrq,:wl_jhp,:wl_wc,:wl_wcp,:pb_jhrq,:pb_wc,:khzl1,:ewf,:esah,:mantbl,'
                        +':pws,:pzb,:fws,:fzb,:ews,:ezb,:lbling,:yqlcrq1,:ysdx,:ysxl,:grp,:asah,:awf,:alxjs,:pfoptqty,:aloptqty,:eoptqty,:toptqty,:prtwo)';
            params[0].asstring:=combobox1.text;
            params[1].asinteger:=seq1;
            params[2].asstring:=khzl;
            params[3].asfloat:=tmu;
            params[4].asfloat:=trs;
            params[5].asfloat:=ysjhl;
            params[6].AsString:=sopno;
            params[7].asstring:=j_no;
            params[8].AsString:=artno;
            params[9].asstring:=acol;
            params[10].asstring:=j2_job;
            params[11].asinteger:=ordline;
            params[12].asdatetime:=yqlcrq;
            params[13].asstring:=pflag1;
            params[14].asstring:=flag5;
            params[15].asstring:=cstyle;
            params[16].asstring:=jhrs;
            if plan_date>0 then params[17].asdate:=plan_date;
            params[18].asinteger:=qrxc;
            params[19].asinteger:=spinedit1.Value;
            params[20].asfloat:=fyl;
            params[21].asboolean:=false;
            params[22].asinteger:=1;
            params[23].asfloat:=0;
            params[24].asfloat:=0;
            params[25].asinteger:=rid;
            params[26].asstring:=dbzs;
            params[27].asstring:=tplant;
            params[28].asstring:=rwo;
            params[29].asfloat:=lstrs;
            params[30].asstring:=flag1;
            params[31].asstring:=flag2;
            params[32].asstring:=flag6;
            if tmu>0 then begin
              float1:=0.5*lstrs/(tmu*fyl);
              params[33].asinteger:=ceiling(float1);
              params[34].asfloat:=float1;
              if asah>0 then begin
                float2:=spinedit1.value/(0.5*awf/asah/fyl);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah/fyl)/ysjhl;
              end else begin
                float2:=0; float3:=0;
              end;
              params[35].asfloat:=float2;
              params[36].asfloat:=float3-float2;
              params[37].asfloat:=float3;
            end else begin
              params[33].asinteger:=0;
              params[34].asfloat:=0;
              if asah>0 then begin
                float2:=spinedit1.value/(0.5*awf/asah/fyl);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah/fyl)/ysjhl;
              end else begin
                float2:=0; float3:=0;
              end;
              params[35].asfloat:=float2;
              params[36].asfloat:=float3-float2;
              params[37].asfloat:=float3;
            end;
            params[38].asinteger:=qty;
            params[39].asfloat:=tbu;
            params[40].asstring:=o_lflag;//lflag;
            if cplan>0 then params[41].asdate:=cplan;
            params[42].asstring:=fccs;
            params[43].asstring:=flag3;
            params[44].asstring:=tshop;
            params[45].asstring:=cwo;
            params[46].asstring:=iecls;
            params[47].asstring:=iecls1;
            params[48].asdate:=wl_jhrq;
            params[49].asfloat:=wl_jhp;
            params[50].asboolean:=wl_wc;
            params[51].asfloat:=wl_wcp;
            params[52].asdate:=pb_jhrq;
            params[53].asboolean:=pb_wc;
            params[54].asboolean:=khzl1;
            params[55].asfloat:=ewf;
            params[56].asfloat:=esah;
            params[57].asfloat:=mantbl;
            params[58].asstring:=pws;
            params[59].asstring:=pzb;
            params[60].asstring:=fws;
            params[61].asstring:=fzb;
            params[62].asstring:=ews;
            params[63].asstring:=ezb;
            params[64].asstring:=lbling;
            params[65].asdate:=yqlcrq1;
            if pos('!',o_lflag)>0 then
            params[66].asfloat:=strtofloat(copy(o_lflag,2,2))
            else params[66].asfloat:=strtofloat(o_lflag);
            params[67].asfloat:=ysjhl;
            params[68].asstring:=grp;
            params[69].asfloat:=asah;
            params[70].asfloat:=awf;
            params[71].asfloat:=alxjs;
            params[72].asinteger:=pfoptqty;
            params[73].asinteger:=aloptqty;
            params[74].asinteger:=eoptqty;
            params[75].asinteger:=toptqty;
            params[76].asboolean:=prtwo;
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
            params[1].asstring:=combobox1.text;
            params[2].asinteger:=seq1;
            execute;
          end;
          //showmessage('1');
          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='execute procedure sp_calcflag4_1(:x1,:x2)';
            params[0].asstring:=combobox1.text;
            params[1].asinteger:=seq1;
            execute;
          end;
          //showmessage('2');
        //end;
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='delete from tblshedule where pline=:pline and seq=:seq';
          params[0].asstring:=pline;
          params[1].asinteger:=seq2;
          execute;
        end;
        worksheet1.tblshedule.Delete;
        if (worksheet1.tblshedule.fieldbyname('pline').value=pline) and (worksheet1.tblshedule.fieldbyname('seq').value>seq2) then begin
          if not worksheet1.tblshedule.fieldbyname('lflag').isnull then begin
            if ((copy(worksheet1.tblshedule.fieldbyname('lflag').value,1,1)='!') or (copy(worksheet1.tblshedule.fieldbyname('lflag').value,1,1)='^')) then
            lflag1:=worksheet1.tblshedule.fieldbyname('lflag').value
            else lflag1:='!'+copy(worksheet1.tblshedule.fieldbyname('lflag').value,1,1);
            worksheet1.tblshedule.Edit;
            worksheet1.tblshedule.fieldbyname('lflag').value:=lflag1;
            worksheet1.tblshedule.Post;
          end;
        end;
        //}
        //worksheet1.speedbutton1click(self);
      end else begin
        with worksheet1.tblshedule do begin
          edit;
          fieldbyname('scqty').value:=fieldbyname('scqty').value-spinedit1.Value;
          post;
        end;
        if (pos('d',fccs)>0) or (pos('u',fccs)>0) then begin
          if pos('d',fccs)>0 then fccs1:=copy(fccs,1,pos('d',fccs)-1)
          else if pos('u',fccs)>0 then fccs1:=copy(fccs,1,pos('u',fccs)-1);

          with clientdataset4 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            params.createparam(ftstring,'x5',ptinput);
            commandtext:='select max(fccs) as fs from tblshedule where j_no=:x1 and j2_job=:x2 and rwo=:x3 and acol=:x4 and fccs like :x5';
            params[0].asstring:=worksheet1.tblshedule.fieldbyname('j_no').value;
            params[1].asstring:=worksheet1.tblshedule.fieldbyname('j2_job').value;
            params[2].asstring:=worksheet1.tblshedule.fieldbyname('rwo').value;
            params[3].asstring:=worksheet1.tblshedule.fieldbyname('acol').value;
            params[4].asstring:=fccs1+'d%';
            open;
          end;
          if clientdataset4.fieldbyname('fs').value<>fccs1+'d' then begin
            with clientdataset4 do begin
              close;
              params.clear;
              //params.createparam(ftinteger,'x0',ptinput);
              //params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftstring,'x2',ptinput);
              params.createparam(ftstring,'x3',ptinput);
              params.createparam(ftstring,'x4',ptinput);
              params.createparam(ftstring,'x5',ptinput);
              params.createparam(ftstring,'x6',ptinput);
              if length(fccs1)=3 then
              commandtext:='select max(cast(rtrim(substr(fccs,5,6)) as integer)) as fs from tblshedule where j_no=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5 and fccs like :x6'
              else if length(fccs1)=4 then
              commandtext:='select max(cast(rtrim(substr(fccs,6,7)) as integer)) as fs from tblshedule where j_no=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5 and fccs like :x6'
              else if length(fccs1)=5 then
              commandtext:='select max(cast(rtrim(substr(fccs,7,8)) as integer)) as fs from tblshedule where j_no=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5 and fccs like :x6';
              //params[0].asinteger:=length(fccs1)+1;
              //params[1].asinteger:=length(fccs1)+2;
              params[0].asstring:=worksheet1.tblshedule.fieldbyname('j_no').value;
              params[1].asstring:=worksheet1.tblshedule.fieldbyname('j2_job').value;
              params[2].asstring:=worksheet1.tblshedule.fieldbyname('rwo').value;
              params[3].asstring:=worksheet1.tblshedule.fieldbyname('acol').value;
              params[4].asstring:=fccs1+'d%';
              open;
              if not fieldbyname('fs').isnull then fccs:=fccs1+'d'+inttostr(fieldbyname('fs').value+1);
            end;
          end else fccs:=fccs1+'d1';
        end else begin
          fccs:='';
          flag3:='';
        end;
        if combobox1.text<>pline then begin
          if combobox1.text='PPWS' then begin
            pws:=''; pzb:=''; fws:='-'; fzb:='-'; ews:='-'; ezb:='-';
          end else if (pos('S.OS',combobox1.text)>0) or (pos('RSB',combobox1.text)>0) then begin
            pws:='-'; pzb:='-'; fws:='-'; fzb:='-'; ews:='-'; ezb:='-';
          end else begin
            pws:=''; pzb:=''; fws:=''; fzb:=''; ews:=''; ezb:='';
            with clientdataset1 do begin
              close;
              params.clear;
              commandtext:='select a.tshop,a.pline from tblline a,tblline_mapping b where a.pline=b.pline and b.m_pline='''+combobox1.text+''' and substr(b.pline,1,1) in (''P'',''F'',''E'')';
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

          if (copy(combobox1.Text,1,1)='T') then begin
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
              params[2].asstring:=combobox1.text;
              params[3].asinteger:=seq1;
              open;
              if not fieldbyname('o_lflag').isnull then o_lflag:=fieldbyname('o_lflag').value
              else o_lflag:='!1';
            end;
          end else o_lflag:='!1';

          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            commandtext:='select max(seq) as seq1 from tblshedule where pline=:pline';
            params[0].asstring:=combobox1.text;
            open;
            if not fieldbyname('seq1').isnull then seq1:=fieldbyname('seq1').value+1
            else seq1:=1;
          end;
          //
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            commandtext:='select workert,ysjhl from tblline where upper(pline)=:pline';
            params[0].asstring:=uppercase(combobox1.text);
            open;
            //if not fieldbyname('workert').isnull then trs:=fieldbyname('workert').value else trs:=25;
            if not fieldbyname('ysjhl').isnull then ysjhl:=fieldbyname('ysjhl').value else ysjhl:=100;
          end;
          fyl:=1.00;
          if lstrs=0 then lstrs:=25;
          //showmessage('10');
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            params.createparam(ftstring,'khzl',ptinput);
            params.createparam(ftfloat,'tmu',ptinput);
            params.createparam(ftfloat,'trs',ptinput);
            params.createparam(ftfloat,'ysjhl',ptinput);
            params.createparam(ftstring,'sopno',ptinput);
            params.createparam(ftstring,'j_no',ptinput);
            params.createparam(ftstring,'artno',ptinput);
            params.createparam(ftstring,'acol',ptinput);
            params.CreateParam(ftstring,'j2_job',ptinput);
            params.createparam(ftinteger,'ordline',ptinput);
            params.createparam(ftdatetime,'yqlcrq',ptinput);
            params.createparam(ftstring,'pflag1',ptinput);
            params.createparam(ftstring,'flag5',ptinput);
            params.createparam(ftstring,'jhrs',ptinput);
            params.createparam(ftdate,'plan_date',ptinput);
            params.createparam(ftinteger,'qrxc',ptinput);
            params.createparam(ftinteger,'scqty',ptinput);
            params.createparam(ftfloat,'fyl',ptinput);
            params.createparam(ftboolean,'yzh',ptinput);
            params.createparam(ftinteger,'xs',ptinput);
            params.createparam(ftfloat,'sclhjs',ptinput);
            params.createparam(ftfloat,'qyjs',ptinput);
            params.createparam(ftinteger,'rid',ptinput);
            params.createparam(ftstring,'dbzs',ptinput);
            params.createparam(ftstring,'tplant',ptinput);
            params.createparam(ftstring,'rwo',ptinput);
            params.createparam(ftfloat,'lstrs',ptinput);
            params.createparam(ftstring,'flag1',ptinput);
            params.createparam(ftstring,'flag2',ptinput);
            params.createparam(ftstring,'flag6',ptinput);
            params.createparam(ftinteger,'xjs',ptinput);
            params.createparam(ftfloat,'jxjs',ptinput);
            params.createparam(ftfloat,'phiszjs',ptinput);
            params.createparam(ftfloat,'shjs',ptinput);
            params.createparam(ftfloat,'zjs',ptinput);
            params.createparam(ftinteger,'qty',ptinput);
            params.createparam(ftfloat,'tbu',ptinput);
            params.createparam(ftstring,'lflag',ptinput);
            params.createparam(ftdate,'cplan',ptinput);
            params.createparam(ftstring,'fccs',ptinput);
            params.createparam(ftstring,'flag3',ptinput);
            params.createparam(ftstring,'tshop',ptinput);
            params.createparam(ftstring,'cwo',ptinput);
            params.createparam(ftstring,'iecls',ptinput);
            params.createparam(ftstring,'iecls1',ptinput);
            params.CreateParam(ftdate,'wl_jhrq',ptinput);
            params.CreateParam(ftfloat,'wl_jhp',ptinput);
            params.CreateParam(ftboolean,'wl_wc',ptinput);
            params.CreateParam(ftfloat,'wl_wcp',ptinput);
            params.CreateParam(ftdate,'pb_jhrq',ptinput);
            params.CreateParam(ftboolean,'pb_wc',ptinput);
            params.CreateParam(ftboolean,'khzl1',ptinput);
            params.CreateParam(ftfloat,'ewf',ptinput);
            params.CreateParam(ftfloat,'esah',ptinput);
            params.CreateParam(ftfloat,'mantbl',ptinput);
            params.createparam(ftstring,'pws',ptinput);
            params.createparam(ftstring,'pzb',ptinput);
            params.createparam(ftstring,'fws',ptinput);
            params.createparam(ftstring,'fzb',ptinput);
            params.createparam(ftstring,'ews',ptinput);
            params.createparam(ftstring,'ezb',ptinput);
            params.createparam(ftstring,'lbling',ptinput);
            params.createparam(ftdate,'yqlcrq1',ptinput);
            params.createparam(ftfloat,'ysdx',ptinput);
            params.createparam(ftfloat,'ysxl',ptinput);
            params.createparam(ftstring,'grp',ptinput);
            params.createparam(ftfloat,'asah',ptinput);
            params.createparam(ftfloat,'awf',ptinput);
            params.createparam(ftfloat,'alxjs',ptinput);
            params.createparam(ftinteger,'pfoptqty',ptinput);
            params.createparam(ftinteger,'aloptqty',ptinput);
            params.createparam(ftinteger,'eoptqty',ptinput);
            params.createparam(ftinteger,'toptqty',ptinput);
            params.createparam(ftboolean,'prtwo',ptinput);
            commandtext:='insert into tblshedule(pline,seq,khzl,tmu,trs,ysjhl,sopno,j_no,artno,acol,j2_job,ordline,'
                        +'yqlcrq,pflag1,flag5,cstyle,jhrs,plan_date,qrxc,scqty,fyl,yzh,xs,sclhjs,qyjs,'
                        +'rid,dbzs,tplant,rwo,lstrs,flag1,flag2,flag6,xjs,jxjs,phiszjs,shjs,zjs,qty,tbu,lflag,cplan,fccs,flag3,tshop,dta,cwo,iecls,iecls1,'
                        +'wl_jhdt,wl_jhp,wl_wc,wl_wcp,pb_jhdt,pb_wc,khzl1,ewf,esah,mantbl,'
                        +'pws,pzb,fws,fzb,ews,ezb,lbling,yqlcrq1,ysdx,ysxl,grp,asah,awf,alxjs,pfoptqty,aloptqty,eoptqty,toptqty,prtwo) '
                        +'values(:pline,:seq,:khzl,:tmu,:trs,:ysjhl,:sopno,:j_no,:artno,:acol,:j2_job,:ordline,'
                        +':yqlcrq,:pflag1,:flag5,:cstyle,:jhrs,:plan_date,:qrxc,:scqty,:fyl,:yzh,:xs,:sclhjs,:qyjs,'
                        +':rid,:dbzs,:tplant,:rwo,:lstrs,:flag1,:flag2,:flag6,:xjs,:jxjs,:phiszjs,:shjs,:zjs,:qty,:tbu,:lflag,:cplan,:fccs,:flag3,:tshop,'
                        +''''+dta+''',:cwo,:iecls,:iecls1,:wl_jhrq,:wl_jhp,:wl_wc,:wl_wcp,:pb_jhrq,:pb_wc,:khzl1,:ewf,:esah,:mantbl,'
                        +':pws,:pzb,:fws,:fzb,:ews,:ezb,:lbling,:yqlcrq1,:ysdx,:ysxl,:grp,:asah,:awf,:alxjs,:pfoptqty,:aloptqty,:eoptqty,:toptqty,:prtwo)';
            params[0].asstring:=combobox1.text;
            params[1].asinteger:=seq1;
            params[2].asstring:=khzl;
            params[3].asfloat:=tmu;
            params[4].asfloat:=trs;
            params[5].asfloat:=ysjhl;
            params[6].AsString:=sopno;
            params[7].asstring:=j_no;
            params[8].AsString:=artno;
            params[9].asstring:=acol;
            params[10].asstring:=j2_job;
            params[11].asinteger:=ordline;
            params[12].asdatetime:=yqlcrq;
            params[13].asstring:=pflag1;
            params[14].asstring:=flag5;
            params[15].asstring:=cstyle;
            params[16].asstring:=jhrs;
            if plan_date>0 then params[17].asdate:=plan_date;
            params[18].asinteger:=qrxc;
            params[19].asinteger:=spinedit1.Value;
            params[20].asfloat:=fyl;
            params[21].asboolean:=false;
            params[22].asinteger:=1;
            params[23].asfloat:=0;
            params[24].asfloat:=0;
            params[25].asinteger:=rid;
            params[26].asstring:=dbzs;
            params[27].asstring:=tplant;
            params[28].asstring:=rwo;
            params[29].asfloat:=lstrs;
            params[30].asstring:=flag1;
            params[31].asstring:=flag2;
            params[32].asstring:=flag6;
            if tmu>0 then begin
              float1:=0.5*lstrs/(tmu*fyl);
              params[33].asinteger:=ceiling(float1);
              params[34].asfloat:=float1;
              if asah>0 then begin
                float2:=spinedit1.value/(0.5*awf/asah/fyl);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah/fyl)/ysjhl;
              end else begin
                float2:=0; float3:=0;
              end;
              params[35].asfloat:=float2;
              params[36].asfloat:=float3-float2;
              params[37].asfloat:=float3;
            end else begin
              params[33].asinteger:=0;
              params[34].asfloat:=0;
              if asah>0 then begin
                float2:=spinedit1.value/(0.5*awf/asah/fyl);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah/fyl)/ysjhl;
              end else begin
                float2:=0; float3:=0;
              end;
              params[35].asfloat:=float2;
              params[36].asfloat:=float3-float2;
              params[37].asfloat:=float3;
            end;
            params[38].asinteger:=qty;
            params[39].asfloat:=tbu;
            params[40].asstring:=o_lflag;//lflag;
            if cplan>0 then params[41].asdate:=cplan;
            params[42].asstring:=fccs;
            params[43].asstring:=flag3;
            params[44].asstring:=tshop;
            params[45].asstring:=cwo;
            params[46].asstring:=iecls;
            params[47].asstring:=iecls1;
            params[48].asdate:=wl_jhrq;
            params[49].asfloat:=wl_jhp;
            params[50].asboolean:=wl_wc;
            params[51].asfloat:=wl_wcp;
            params[52].asdate:=pb_jhrq;
            params[53].asboolean:=pb_wc;
            params[54].asboolean:=khzl1;
            params[55].asfloat:=ewf;
            params[56].asfloat:=esah;
            params[57].asfloat:=mantbl;
            params[58].asstring:=pws;
            params[59].asstring:=pzb;
            params[60].asstring:=fws;
            params[61].asstring:=fzb;
            params[62].asstring:=ews;
            params[63].asstring:=ezb;
            params[64].asstring:=lbling;
            params[65].asdate:=yqlcrq1;
            if pos('!',o_lflag)>0 then
            params[66].asfloat:=strtofloat(copy(o_lflag,2,2))
            else params[66].asfloat:=strtofloat(o_lflag);
            params[67].asfloat:=ysjhl;
            params[68].asstring:=grp;
            params[69].asfloat:=asah;
            params[70].asfloat:=awf;
            params[71].asfloat:=alxjs;
            params[72].asinteger:=pfoptqty;
            params[73].asinteger:=aloptqty;
            params[74].asinteger:=eoptqty;
            params[75].asinteger:=toptqty;
            params[76].asboolean:=prtwo;
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
            params[1].asstring:=combobox1.text;
            params[2].asinteger:=seq1;
            execute;
          end;
          //showmessage('11');
          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='execute procedure sp_calcflag4_1(:x1,:x2)';
            params[0].asstring:=combobox1.text;
            params[1].asinteger:=seq1;
            execute;
          end;
          //showmessage('12');
        end else begin
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            commandtext:='select max(seq) as seq1 from tblshedule where pline=:pline';
            params[0].asstring:=pline;
            open;
            seq1:=fieldbyname('seq1').value+1;
          end;
          //showmessage('20');
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            params.createparam(ftstring,'khzl',ptinput);
            params.createparam(ftfloat,'tmu',ptinput);
            params.createparam(ftfloat,'trs',ptinput);
            params.createparam(ftfloat,'ysjhl',ptinput);
            params.createparam(ftstring,'sopno',ptinput);
            params.createparam(ftstring,'j_no',ptinput);
            params.createparam(ftstring,'artno',ptinput);
            params.createparam(ftstring,'acol',ptinput);
            params.CreateParam(ftstring,'j2_job',ptinput);
            params.createparam(ftinteger,'ordline',ptinput);
            params.createparam(ftdatetime,'yqlcrq',ptinput);
            params.createparam(ftstring,'pflag1',ptinput);
            params.createparam(ftstring,'flag5',ptinput);
            params.createparam(ftstring,'jhrs',ptinput);
            params.createparam(ftdate,'plan_date',ptinput);
            params.createparam(ftinteger,'qrxc',ptinput);
            params.createparam(ftinteger,'scqty',ptinput);
            params.createparam(ftfloat,'fyl',ptinput);
            params.createparam(ftboolean,'yzh',ptinput);
            params.createparam(ftinteger,'xs',ptinput);
            params.createparam(ftfloat,'sclhjs',ptinput);
            params.createparam(ftfloat,'qyjs',ptinput);
            params.createparam(ftinteger,'rid',ptinput);
            params.createparam(ftstring,'dbzs',ptinput);
            params.createparam(ftstring,'tplant',ptinput);
            params.createparam(ftstring,'rwo',ptinput);
            params.createparam(ftfloat,'lstrs',ptinput);
            params.createparam(ftstring,'flag1',ptinput);
            params.createparam(ftstring,'flag2',ptinput);
            params.createparam(ftstring,'flag6',ptinput);
            params.createparam(ftinteger,'xjs',ptinput);
            params.createparam(ftfloat,'jxjs',ptinput);
            params.createparam(ftfloat,'phiszjs',ptinput);
            params.createparam(ftfloat,'shjs',ptinput);
            params.createparam(ftfloat,'zjs',ptinput);
            params.createparam(ftinteger,'qty',ptinput);
            params.createparam(ftfloat,'tbu',ptinput);
            params.createparam(ftstring,'lflag',ptinput);
            params.createparam(ftdate,'cplan',ptinput);
            params.createparam(ftstring,'fccs',ptinput);
            params.createparam(ftstring,'flag3',ptinput);
            params.createparam(ftstring,'tshop',ptinput);
            params.createparam(ftstring,'cwo',ptinput);
            params.createparam(ftstring,'iecls',ptinput);
            params.createparam(ftstring,'iecls1',ptinput);
            params.CreateParam(ftdate,'wl_jhrq',ptinput);
            params.CreateParam(ftfloat,'wl_jhp',ptinput);
            params.CreateParam(ftboolean,'wl_wc',ptinput);
            params.CreateParam(ftfloat,'wl_wcp',ptinput);
            params.CreateParam(ftdate,'pb_jhrq',ptinput);
            params.CreateParam(ftboolean,'pb_wc',ptinput);
            params.CreateParam(ftboolean,'khzl1',ptinput);
            params.CreateParam(ftfloat,'ewf',ptinput);
            params.CreateParam(ftfloat,'esah',ptinput);
            params.CreateParam(ftfloat,'mantbl',ptinput);
            params.CreateParam(ftfloat,'asah',ptinput);
            params.CreateParam(ftfloat,'awf',ptinput);
            params.CreateParam(ftfloat,'alxjs',ptinput);
            params.createparam(ftinteger,'pfoptqty',ptinput);
            params.createparam(ftinteger,'aloptqty',ptinput);
            params.createparam(ftinteger,'eoptqty',ptinput);
            params.createparam(ftinteger,'toptqty',ptinput);
            params.createparam(ftboolean,'prtwo',ptinput);
            commandtext:='insert into tblshedule(pline,seq,khzl,tmu,trs,ysjhl,sopno,j_no,artno,acol,j2_job,ordline,'
                        +'yqlcrq,pflag1,flag5,cstyle,jhrs,plan_date,qrxc,scqty,fyl,yzh,xs,sclhjs,qyjs,'
                        +'rid,dbzs,tplant,rwo,lstrs,flag1,flag2,flag6,xjs,jxjs,phiszjs,shjs,zjs,qty,tbu,lflag,cplan,fccs,flag3,tshop,dta,cwo,iecls,iecls1,'
                        +'wl_jhdt,wl_jhp,wl_wc,wl_wcp,pb_jhdt,pb_wc,khzl1,ewf,esah,mantbl,asah,awf,alxjs,pfoptqty,aloptqty,eoptqty,toptqty,prtwo) '
                        +'values(:pline,:seq,:khzl,:tmu,:trs,:ysjhl,:sopno,:j_no,:artno,:acol,:j2_job,:ordline,'
                        +':yqlcrq,:pflag1,:flag5,:cstyle,:jhrs,:plan_date,:qrxc,:scqty,:fyl,:yzh,:xs,:sclhjs,:qyjs,'
                        +':rid,:dbzs,:tplant,:rwo,:lstrs,:flag1,:flag2,:flag6,:xjs,:jxjs,:phiszjs,:shjs,:zjs,:qty,:tbu,:lflag,:cplan,:fccs,:flag3,:tshop,'
                        +''''+dta+''',:cwo,:iecls,:iecls1,:wl_jhrq,:wl_jhp,:wl_wc,:wl_wcp,:pb_jhrq,:pb_wc,:khzl1,:ewf,:esah,:mantbl,:asah,:awf,:alxjs,'
                        +':pfoptqty,:aloptqty,:eoptqty,:toptqty,:prtwo)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq1;
            params[2].asstring:=khzl;
            params[3].asfloat:=tmu;
            params[4].asfloat:=trs;
            params[5].asfloat:=ysjhl;
            params[6].AsString:=sopno;
            params[7].asstring:=j_no;
            params[8].AsString:=artno;
            params[9].asstring:=acol;
            params[10].asstring:=j2_job;
            params[11].asinteger:=ordline;
            params[12].asdatetime:=yqlcrq;
            params[13].asstring:=pflag1;
            params[14].asstring:=flag5;
            params[15].asstring:=cstyle;
            params[16].asstring:=jhrs;
            if plan_date>0 then params[17].asdate:=plan_date;
            params[18].asinteger:=qrxc;
            params[19].asinteger:=spinedit1.Value;
            params[20].asfloat:=fyl;
            params[21].asboolean:=false;
            params[22].asinteger:=1;
            params[23].asfloat:=0;
            params[24].asfloat:=0;
            params[25].asinteger:=rid;
            params[26].asstring:=dbzs;
            params[27].asstring:=tplant;
            params[28].asstring:=rwo;
            params[29].asfloat:=lstrs;
            params[30].asstring:=flag1;
            params[31].asstring:=flag2;
            params[32].asstring:=flag6;
            if tmu>0 then begin
              float1:=0.5*lstrs/(tmu*fyl);
              params[33].asinteger:=ceiling(float1);
              params[34].asfloat:=float1;
              if asah>0 then begin
                float2:=spinedit1.value/(0.5*awf/asah/fyl);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah/fyl)/ysjhl;
              end else begin
                float2:=0; float3:=0;
              end;
              params[35].asfloat:=float2;
              params[36].asfloat:=float3-float2;
              params[37].asfloat:=float3;
            end else begin
              params[33].asinteger:=0;
              params[34].asfloat:=0;
              if asah>0 then begin
                float2:=spinedit1.value/(0.5*awf/asah/fyl);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah/fyl)/ysjhl;
              end else begin
                float2:=0; float3:=0;
              end;
              params[35].asfloat:=float2;
              params[36].asfloat:=float3-float2;
              params[37].asfloat:=float3;
            end;
            params[38].asinteger:=qty;
            params[39].asfloat:=tbu;
            params[40].asstring:=lflag;
            if cplan>0 then params[41].asdate:=cplan;
            params[42].asstring:=fccs;
            params[43].asstring:=flag3;
            params[44].asstring:=tshop;
            params[45].asstring:=cwo;
            params[46].asstring:=iecls;
            params[47].asstring:=iecls1;
            params[48].asdate:=wl_jhrq;
            params[49].asfloat:=wl_jhp;
            params[50].asboolean:=wl_wc;
            params[51].asfloat:=wl_wcp;
            params[52].asdate:=pb_jhrq;
            params[53].asboolean:=pb_wc;
            params[54].asboolean:=khzl1;
            params[55].asfloat:=ewf;
            params[56].asfloat:=esah;
            params[57].asfloat:=mantbl;
            params[58].asfloat:=asah;
            params[59].asfloat:=awf;
            params[60].asfloat:=alxjs;
            params[61].asinteger:=pfoptqty;
            params[62].asinteger:=aloptqty;
            params[63].asinteger:=eoptqty;
            params[64].asinteger:=toptqty;
            params[65].asboolean:=prtwo;
            execute;
          end;
          //showmessage('21');
          with worksheet1.tblshedule do begin
            append;
            fieldbyname('pline').value:=pline;
            fieldbyname('seq').value:=seq1;
            fieldbyname('khzl').value:=khzl;
            fieldbyname('tmu').value:=tmu;
            fieldbyname('trs').value:=trs;
            fieldbyname('ysjhl').value:=ysjhl;
            fieldbyname('sopno').value:=sopno;
            fieldbyname('j_no').value:=j_no;
            fieldbyname('artno').value:=artno;
            fieldbyname('acol').value:=acol;
            fieldbyname('j2_job').value:=j2_job;
            fieldbyname('ordline').value:=ordline;
            fieldbyname('yqlcrq').value:=yqlcrq;
            fieldbyname('pflag1').value:=pflag1;
            fieldbyname('flag5').value:=flag5;
            fieldbyname('cstyle').value:=cstyle;
            fieldbyname('jhrs').value:=jhrs;
            fieldbyname('plan_date').value:=plan_date;
            fieldbyname('qrxc').value:=qrxc;
            fieldbyname('scqty').value:=spinedit1.Value;
            fieldbyname('fyl').value:=1.00;
            fieldbyname('yzh').value:=false;
            fieldbyname('xs').value:=1;
            fieldbyname('sclhjs').value:=0;
            fieldbyname('qyjs').value:=0;
            fieldbyname('rid').value:=rid;
            fieldbyname('dbzs').value:=dbzs;
            fieldbyname('lstrs').value:=lstrs;
            if tmu>0 then begin
              float1:=0.5*lstrs/(tmu*fyl);
              fieldbyname('xjs').value:=float1;
              fieldbyname('jxjs').value:=float1;
              if asah>0 then begin
                float2:=spinedit1.value/(0.5*awf/asah/fyl);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah/fyl)/ysjhl;
              end else begin
                float2:=0; float3:=0;
              end;
              fieldbyname('phiszjs').value:=float2;
              fieldbyname('shjs').value:=float3-float2;
              fieldbyname('zjs').value:=float3;
            end else begin
              fieldbyname('xjs').value:=0;
              if asah>0 then begin
                float2:=spinedit1.value/(0.5*awf/asah/fyl);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah/fyl)/ysjhl;
              end else begin
                float2:=0; float3:=0;
              end;
              fieldbyname('phiszjs').value:=float2;
              fieldbyname('shjs').value:=float3-float2;
              fieldbyname('zjs').value:=float3;
              fieldbyname('zktd').value:=0;
            end;
            fieldbyname('tplant').value:=tplant;
            fieldbyname('rwo').value:=rwo;
            fieldbyname('flag1').value:=flag1;
            fieldbyname('flag2').value:=flag2;
            fieldbyname('flag6').value:=flag6;
            fieldbyname('qty').value:=qty;
            fieldbyname('tbu').value:=tbu;
            fieldbyname('lflag').value:=lflag;
            fieldbyname('cplan').value:=cplan;
            fieldbyname('fccs').value:=fccs;
            fieldbyname('flag3').value:=flag3;
            fieldbyname('tshop').value:=tshop;
            fieldbyname('cwo').value:=cwo;
            fieldbyname('iecls').value:=iecls;
            fieldbyname('iecls1').value:=iecls1;
            fieldbyname('wl_jhdt').value:=wl_jhrq;
            fieldbyname('wl_jhp').value:=wl_jhp;
            fieldbyname('wl_wc').value:=wl_wc;
            fieldbyname('wl_wcp').value:=wl_wcp;
            fieldbyname('pb_jhdt').value:=pb_jhrq;
            fieldbyname('pb_wc').value:=pb_wc;
            fieldbyname('khzl1').value:=khzl1;
            fieldbyname('ewf').value:=ewf;
            fieldbyname('esah').value:=esah;
            fieldbyname('mantbl').value:=mantbl;
            fieldbyname('asah').value:=asah;
            fieldbyname('awf').value:=awf;
            fieldbyname('alxjs').value:=alxjs;
            fieldbyname('pfoptqty').value:=pfoptqty;
            fieldbyname('aloptqty').value:=aloptqty;
            fieldbyname('eoptqty').value:=eoptqty;
            fieldbyname('toptqty').value:=toptqty;
            fieldbyname('prtwo').value:=prtwo;
            post;
          end;
          //showmessage('22');
        end;
        //showmessage('23');
          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='execute procedure sp_calcflag4_1(:x1,:x2)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq2;
            execute;
          end;
          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='execute procedure sp_calcflag4_1(:x1,:x2)';
            params[0].asstring:=combobox1.text;
            params[1].asinteger:=seq1;
            execute;
          end;
          //showmessage('24');
        //Generate Split QN
        if tm>encodedate(2008,1,1) then begin
          //showmessage('30');
          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            params.createparam(ftdatetime,'x5',ptinput);
            commandtext:='execute procedure sp_splitqn(:x1,:x2,:x3,:x4,:x5)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq2;
            params[2].asstring:=combobox1.Text;
            params[3].asinteger:=seq1;
            params[4].asdatetime:=tm;
            execute;
          end;
          //showmessage('31');
        end;

      end;
    end else begin
      //opt2
      if spinedit1.value=strtoint(edit1.Text) then begin
        //
            strupd:='update tbl_sop set rqty=rqty+'+worksheet1.tblshedule.fieldbyname('scqty').asstring+' where j_no='''+worksheet1.tblshedule.fieldbyname('j_no').value
                   +''' and j2_job='''+worksheet1.tblshedule.fieldbyname('j2_job').value+''' and acol='''+worksheet1.tblshedule.fieldbyname('acol').value+''' and rid='+worksheet1.tblshedule.fieldbyname('rid').asstring+' and flag1=''0''';
            if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');            
        //
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='delete from tblshedule where pline=:pline and seq=:seq';
          params[0].asstring:=pline;
          params[1].asinteger:=seq2;
          execute;
        end;
        worksheet1.tblshedule.Delete;
      end else begin
        //
            strupd:='update tbl_sop set rqty=rqty+'+inttostr(spinedit1.Value)+' where j_no='''+worksheet1.tblshedule.fieldbyname('j_no').value
                   +''' and j2_job='''+worksheet1.tblshedule.fieldbyname('j2_job').value+''' and acol='''+worksheet1.tblshedule.fieldbyname('acol').value
                   +''' and rid='+worksheet1.tblshedule.fieldbyname('rid').asstring+' and flag1=''0''';
            if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
            
        //
        with worksheet1.tblshedule do begin
          edit;
          fieldbyname('scqty').value:=fieldbyname('scqty').value-spinedit1.Value;
          post;
        end;
      end;
    end;

    //showmessage('40');
    with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        //commandtext:='execute procedure sp_updfccs_null(:x1,:x2)';
        commandtext:='execute procedure sp_updfccs_rwo_new(:x1,:x2,:x3,:x4)';
        params[0].asstring:=worksheet1.tblshedule.fieldbyname('j_no').value;
        params[1].asstring:=worksheet1.tblshedule.fieldbyname('j2_job').value;
        params[2].asstring:=worksheet1.tblshedule.fieldbyname('rwo').value;
        params[3].asstring:=worksheet1.tblshedule.fieldbyname('acol').value;
        //params[1].asstring:='1';
        execute;
    end;
    //showmessage('41');
  end;
  close;
  screen.cursor:=crdefault;
end;

procedure Tfrmxgsl.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where ((lactive=1) or (sim_line=1))';
    open;
    first;
    while not eof do begin
      if not fieldbyname('pline').isnull then
      combobox1.items.add(fieldbyname('pline').value);
      next;
    end;
  end;
end;

procedure Tfrmxgsl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxgsl:=nil;
end;

procedure Tfrmxgsl.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmxgsl.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgsl.BitBtn3Click(Sender: TObject);
var
  fline,tline:string;
  fseq,tseq:integer;
begin
  if opt1.checked then begin
    if (combobox1.text<>worksheet1.tblshedule.fieldbyname('pline').value) then begin
      fline:=worksheet1.tblshedule.fieldbyname('pline').value;
      fseq:=worksheet1.tblshedule.fieldbyname('seq').value;
      tline:=combobox1.text;
      with clientdataset3 do begin
        close;
        params.clear;
        commandtext:='select max(seq) as q from tblshedule where pline='''+tline+'''';
        Open;
        if not fieldbyname('q').isnull then tseq:=fieldbyname('q').value+1
        else tseq:=1;
      end;

      with clientdataset3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_swpm_transferqn(:x1,:x2,:x3,:x4)';
        params[0].asstring:=fline;
        params[1].asinteger:=fseq;
        params[2].asstring:=tline;
        params[3].asinteger:=tseq;
        Execute;
      end;
      worksheet1.tblshedule.delete;
    end;
  end;
end;

procedure Tfrmxgsl.FormShow(Sender: TObject);
begin
  spinedit1.MaxValue:=strtoint(edit1.text);
  spinedit1.Value:=strtoint(edit1.text);
end;

procedure Tfrmxgsl.SpeedButton1Click(Sender: TObject);
begin
  tm:=now;
  with clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='execute procedure sp_genlwo_tmp(:x1,:x2,:x3)';
    params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    execute;
  end;
  if frmcmfp=nil then frmcmfp:=tfrmcmfp.create(nil);
  with frmcmfp.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select * from tbl_lwo_tmp where pline=:x1 and seq=:x2 and dt=:x3';
    params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    open;
  end;
  frmcmfp.Label1.Caption:='XGSL';
  frmcmfp.DBGridEh1.Columns[8].Visible:=false;
  frmcmfp.DBGridEh1.Columns[9].Visible:=false;
  frmcmfp.DBGridEh1.Columns[7].Title.caption:='QN Transfer Qty';
  frmcmfp.show;
end;

end.

