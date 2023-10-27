unit xgsl1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, Spin;

type
  Tfrmxgsl1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    SpeedButton1: TSpeedButton;
    opt1: TRadioButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    SpinEdit1: TSpinEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox2: TComboBox;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    ClientDataSet4: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Split_SQN1;
    procedure Split_SQN2;
  end;

var
  frmxgsl1: Tfrmxgsl1;
  tm: Tdatetime;

implementation

uses mainformu, worksheet, sellwsformu, cmfp1formu;

{$R *.dfm}

procedure Tfrmxgsl1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  worksheet1.SpeedButton1click(self);
  action:=cafree;
  frmxgsl1:=nil;
end;

procedure Tfrmxgsl1.FormShow(Sender: TObject);
begin
  label3.Caption:='0';
  opt1.Checked:=true;
  combobox1.Items.Clear;
  combobox2.Items.Clear;
  with clientdataset3 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where lactive=1';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('pline').value);
      combobox2.items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmxgsl1.SpeedButton1Click(Sender: TObject);
var
  opt:integer;
begin
  tm:=now;
  opt:=frmsellws.ComboBox2.ItemIndex;
  with clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    //commandtext:='execute procedure sp_genlwo_tmp(:x1,:x2,:x3)';
    commandtext:='execute procedure sp_genlwo_halt(:x1,:x2,:x3)';
    params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    execute;
  end;
  if frmcmfp1=nil then frmcmfp1:=tfrmcmfp1.create(nil);
  with frmcmfp1.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    //commandtext:='select * from tbl_lwo_tmp where pline=:x1 and seq=:x2 and dt=:x3';
    commandtext:='select * from tbl_lwo_halt where pline=:x1 and seq=:x2 and dt=:x3';
    params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    open;
  end;
  frmcmfp1.Label1.Caption:='XGSL1';
  frmcmfp1.Label2.Caption:=label2.Caption;
  if opt<3 then begin
    frmcmfp1.DBGridEh1.Columns[6].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[7].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[8].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[9].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[15].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[16].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[17].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[18].Visible:=false;
  end else if opt=3 then begin
    frmcmfp1.DBGridEh1.Columns[6].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[7].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[8].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[9].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[15].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[16].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[17].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[18].Visible:=false;
  end else if opt=4 then begin
    frmcmfp1.DBGridEh1.Columns[6].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[7].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[8].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[9].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[15].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[16].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[17].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[18].Visible:=false;
  end else if opt=5 then begin
    frmcmfp1.DBGridEh1.Columns[6].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[7].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[8].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[9].Visible:=false;
    frmcmfp1.DBGridEh1.Columns[15].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[16].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[17].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[18].Visible:=false;
  end else if opt=6 then begin
    frmcmfp1.DBGridEh1.Columns[6].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[7].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[8].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[9].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[15].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[16].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[17].Visible:=true;
    frmcmfp1.DBGridEh1.Columns[18].Visible:=true;
  end;
  frmcmfp1.show;
end;

procedure Tfrmxgsl1.BitBtn1Click(Sender: TObject);
var
  s:string;
begin
  screen.cursor:=crhourglass;
  if spinedit1.value>0 then begin
    if frmsellws.xh2.ItemIndex=0 then s:='x1'
    else if frmsellws.xh2.ItemIndex=1 then s:='x2'
    else if frmsellws.xh2.ItemIndex=2 then s:='x3'
    else if frmsellws.xh2.ItemIndex=3 then s:='x4';
    if label3.Caption='1' then begin
    //if opt1.Checked then begin
      //if groupbox2.Enabled=false then begin
      if combobox2.text='' then begin
       if combobox1.text>'' then begin
        with worksheet1.tblshedule do begin
          edit;
          fieldbyname('scqty').value:=fieldbyname('scqty').value-spinedit1.Value;
          fieldbyname('flag3').value:=s;//'x';
          if ((pos('d',fieldbyname('fccs').value)>0) or (pos('D',fieldbyname('fccs').value)>0) or (pos('u',fieldbyname('fccs').value)>0)) then
          else fieldbyname('fccs').value:=fieldbyname('fccs').value+'u';
          post;
        end;
        Split_SQN1;
       end;
      end else begin
       if combobox2.text>'' then begin
        //
        with worksheet1.tblshedule do begin
          edit;
          fieldbyname('scqty').value:=fieldbyname('scqty').value-spinedit1.Value-spinedit2.value;
          fieldbyname('flag3').value:='x';
          fieldbyname('flag31a').value:='s';
          fieldbyname('flag32a').value:='x';
          if ((pos('d',fieldbyname('fccs').value)>0) or (pos('D',fieldbyname('fccs').value)>0) or (pos('u',fieldbyname('fccs').value)>0)) then
          else fieldbyname('fccs').value:=fieldbyname('fccs').value+'u';
          post;
        end;
        //
        Split_SQN1;
        //
        Split_SQN2;
       end;
      end;
    end;
  end;
  frmxgsl1.close;
  frmsellws.Close;
  screen.cursor:=crdefault;
end;

procedure Tfrmxgsl1.Split_SQN1;
var
  seq1,seq2,trs,ordline,var1,qrxc,rid,qty,pfoptqty,aloptqty,eoptqty,toptqty,i0:integer;
  tmu,fyl,ysjhl,float1,float2,var2,var3,var4,float3,lstrs,tbu,wl_jhp,wl_wcp,ewf,esah,mantbl,asah,awf,alxjs:double;
  PLINE,sopno,artno,acol,j_no,j2_job,khzl,pflag1,flag5,cstyle,jhrs,dbzs,tplant,rwo,flag6,flag2,flag1,lflag,flag3:string;
  fccs1,fccs,fccs2,tshop:string;
  x0,cwo,iecls,iecls1,lbling:string;
  yqlcrq,qrlcrq,plan_date,cplan,wl_jhrq,pb_jhrq:tdatetime;
  strupd:string;
  wl_wc,pb_wc,khzl1,prtwo:boolean;
begin
  screen.cursor:=crhourglass;
  if spinedit1.value>0 then begin
    PLINE:=WORKSHEET1.TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
    if combobox1.text>'' then begin
      with clientdataset1 do begin
        close;
        params.clear;
        commandtext:='select tplant,tshop from tblline where pline='''+combobox1.text+'''';
        open;
        if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='SL';
        if not fieldbyname('tshop').isnull then tshop:=fieldbyname('tshop').value else tshop:='';
      end;
    end;
    trs:=worksheet1.tblshedule.fieldbyname('trs').value;
    ordline:=worksheet1.tblshedule.fieldbyname('ordline').value;
    if not worksheet1.tblshedule.fieldbyname('tmu').isnull then
    tmu:=worksheet1.tblshedule.fieldbyname('tmu').value else tmu:=0;
    if not worksheet1.tblshedule.fieldbyname('cwo').isnull then
    cwo:=worksheet1.tblshedule.fieldbyname('cwo').value else cwo:='';

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
    cplan:=worksheet1.tblshedule.fieldbyname('cplan').value;
    if not worksheet1.tblshedule.fieldbyname('qrxc').isnull then
    qrxc:=worksheet1.tblshedule.fieldbyname('qrxc').value
    else qrxc:=0;
    if not worksheet1.tblshedule.fieldbyname('asah').isnull then
    asah:=worksheet1.tblshedule.fieldbyname('asah').value
    else asah:=0;
    if not worksheet1.tblshedule.fieldbyname('awf').isnull then
    awf:=worksheet1.tblshedule.fieldbyname('awf').value
    else awf:=0;
    if awf=0 then awf:=25;
    if not worksheet1.tblshedule.fieldbyname('alxjs').isnull then
    alxjs:=worksheet1.tblshedule.fieldbyname('alxjs').value
    else alxjs:=0;
    if not worksheet1.tblshedule.fieldbyname('rid').isnull then
    rid:=worksheet1.tblshedule.fieldbyname('rid').value else rid:=0;
    if not worksheet1.tblshedule.fieldbyname('dbzs').isnull then
    dbzs:=worksheet1.tblshedule.fieldbyname('dbzs').value
    else dbzs:=' ';
    //if not worksheet1.tblshedule.fieldbyname('tplant').isnull then
    //tplant:=worksheet1.tblshedule.fieldbyname('tplant').value
    //else tplant:=' ';
    //if not worksheet1.tblshedule.fieldbyname('tshop').isnull then
    //tshop:=worksheet1.tblshedule.fieldbyname('tshop').value
    //else tshop:='';
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
    if not worksheet1.tblshedule.fieldbyname('iecls').isnull then
    iecls:=worksheet1.tblshedule.fieldbyname('iecls').value else iecls:='';
    if not worksheet1.tblshedule.fieldbyname('iecls1').isnull then
    iecls1:=worksheet1.tblshedule.fieldbyname('iecls1').value else iecls1:='';
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
      else begin
        if worksheet1.tblshedule.fieldbyname('lflag').value>'' then
          lflag:='!'+copy(worksheet1.tblshedule.fieldbyname('lflag').value,1,1)
        else lflag:='!0';
      end;
    end else lflag:='!0';

    if frmsellws.xh2.ItemIndex=0 then flag3:='!h1'
    else if frmsellws.xh2.ItemIndex=1 then flag3:='!h2'
    else if frmsellws.xh2.ItemIndex=2 then flag3:='!h3'
    else if frmsellws.xh2.ItemIndex=3 then flag3:='!h4';

    if frmsellws.xh2.ItemIndex=0 then x0:='H1'
    else if frmsellws.xh2.ItemIndex=1 then x0:='H2'
    else if frmsellws.xh2.ItemIndex=2 then x0:='H3'
    else if frmsellws.xh2.ItemIndex=3 then x0:='H4';

    //** need to re-calculate FCCS **/
    fccs:=worksheet1.tblshedule.fieldbyname('fccs').value;
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
            if not fieldbyname('fs').isnull then fccs2:=fieldbyname('fs').value else fccs2:='';
          end;
          if fccs2<>'' then begin
          if fccs2<>fccs1+'d' then begin
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
          end else fccs:=fccs1+'d';
    //*----*//
        if combobox1.text<>pline then begin
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
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            params.createparam(ftstring,'khzl',ptinput);
            params.createparam(ftfloat,'tmu',ptinput);
            params.createparam(ftinteger,'trs',ptinput);
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
            params.createparam(ftstring,'flag3',ptinput);
            params.createparam(ftstring,'fccs',ptinput);
            params.createparam(ftstring,'tshop',ptinput);
            params.createparam(ftdate,'cplan',ptinput);
            params.createparam(ftstring,'flag4',ptinput);
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
            params.createparam(ftstring,'lbling',ptinput);
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
                        +'rid,dbzs,tplant,rwo,lstrs,flag1,flag2,flag6,xjs,jxjs,phiszjs,shjs,zjs,qty,tbu,lflag,flag3,fccs,tshop,cplan,flag4,cwo,iecls,iecls1,'
                        +'wl_jhdt,wl_jhp,wl_wc,wl_wcp,pb_jhdt,pb_wc,khzl1,ewf,esah,mantbl,lbling,asah,awf,alxjs,pfoptqty,aloptqty,eoptqty,toptqty,prtwo) '
                        +'values(:pline,:seq,:khzl,:tmu,:trs,:ysjhl,:sopno,:j_no,:artno,:acol,:j2_job,:ordline,'
                        +':yqlcrq,:pflag1,:flag5,:cstyle,:jhrs,:plan_date,:qrxc,:scqty,:fyl,:yzh,:xs,:sclhjs,:qyjs,'
                        +':rid,:dbzs,:tplant,:rwo,:lstrs,:flag1,:flag2,:flag6,:xjs,:jxjs,:phiszjs,:shjs,:zjs,:qty,:tbu,:lflag,:flag3,:fccs,:tshop,:cplan,'
                        +':flag4,:cwo,:iecls,:iecls1,:wl_jhrq,:wl_jhp,:wl_wc,:wl_wcp,:pb_jhrq,:pb_wc,:khzl1,:ewf,:esah,:mantbl,:lbling,:asah,:awf,:alxjs,'
                        +':pfoptqty,:aloptqty,:eoptqty,:toptqty,:prtwo)';
            params[0].asstring:=combobox1.text;
            params[1].asinteger:=seq1;
            params[2].asstring:=khzl;
            params[3].asfloat:=tmu;
            params[4].asinteger:=trs;
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
                float2:=spinedit1.value/(0.5*awf/asah);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah)/ysjhl;
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
                float2:=spinedit1.value/(0.5*awf/asah);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah)/ysjhl;
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
            params[41].asstring:=flag3;
            params[42].asstring:=fccs;
            params[43].asstring:=tshop;
            if cplan>0 then params[44].asdate:=cplan;
            params[45].asstring:='a';
            params[46].asstring:=cwo;
            params[47].asstring:=iecls;
            params[48].asstring:=iecls1;
            params[49].asdate:=wl_jhrq;
            params[50].asfloat:=wl_jhp;
            params[51].asboolean:=wl_wc;
            params[52].asfloat:=wl_wcp;
            params[53].asdate:=pb_jhrq;
            params[54].asboolean:=pb_wc;
            params[55].asboolean:=khzl1;
            params[56].asfloat:=ewf;
            params[57].asfloat:=esah;
            params[58].asfloat:=mantbl;
            params[59].asstring:=lbling;
            params[60].asfloat:=asah;
            params[61].asfloat:=awf;
            params[62].asfloat:=alxjs;
            params[63].asinteger:=pfoptqty;
            params[64].asinteger:=aloptqty;
            params[65].asinteger:=eoptqty;
            params[66].asinteger:=toptqty;
            params[67].asboolean:=prtwo;
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
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            params.createparam(ftstring,'khzl',ptinput);
            params.createparam(ftfloat,'tmu',ptinput);
            params.createparam(ftinteger,'trs',ptinput);
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
            params.createparam(ftstring,'flag3',ptinput);
            params.createparam(ftstring,'fccs',ptinput);
            params.createparam(ftstring,'tshop',ptinput);
            params.createparam(ftdate,'cplan',ptinput);
            params.createparam(ftstring,'flag4',ptinput);
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
            params.createparam(ftstring,'lbling',ptinput);
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
                        +'rid,dbzs,tplant,rwo,lstrs,flag1,flag2,flag6,xjs,jxjs,phiszjs,shjs,zjs,qty,tbu,lflag,flag3,fccs,tshop,cplan,flag4,cwo,iecls,iecls1,'
                        +'wl_jhdt,wl_jhp,wl_wc,wl_wcp,pb_jhdt,pb_wc,khzl1,ewf,esah,mantbl,lbling,asah,awf,alxjs,pfoptqty,aloptqty,eoptqty,toptqty,prtwo) '
                        +'values(:pline,:seq,:khzl,:tmu,:trs,:ysjhl,:sopno,:j_no,:artno,:acol,:j2_job,:ordline,'
                        +':yqlcrq,:pflag1,:flag5,:cstyle,:jhrs,:plan_date,:qrxc,:scqty,:fyl,:yzh,:xs,:sclhjs,:qyjs,'
                        +':rid,:dbzs,:tplant,:rwo,:lstrs,:flag1,:flag2,:flag6,:xjs,:jxjs,:phiszjs,:shjs,:zjs,:qty,:tbu,:lflag,:flag3,:fccs,:tshop,:cplan,'
                        +':flag4,:cwo,:iecls,:iecls1,:wl_jhrq,:wl_jhp,:wl_wc,:wl_wcp,:pb_jhrq,:pb_wc,:khzl1,:ewf,:esah,:mantbl,:lbling,:asah,:awf,:alxjs,'
                        +':pfoptqty,:aloptqty,:eoptqty,:toptqty,:prtwo)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq1;
            params[2].asstring:=khzl;
            params[3].asfloat:=tmu;
            params[4].asinteger:=trs;
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
                float2:=spinedit1.value/(0.5*awf/asah);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah)/ysjhl;
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
                float2:=spinedit1.value/(0.5*awf/asah);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah)/ysjhl;
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
            params[41].asstring:=flag3;
            params[42].asstring:=fccs;
            params[43].asstring:=tshop;
            if cplan>0 then params[44].asdate:=cplan;
            params[45].asstring:='a';
            params[46].asstring:=cwo;
            params[47].asstring:=iecls;
            params[48].asstring:=iecls1;
            params[49].asdate:=wl_jhrq;
            params[50].asfloat:=wl_jhp;
            params[51].asboolean:=wl_wc;
            params[52].asfloat:=wl_wcp;
            params[53].asdate:=pb_jhrq;
            params[54].asboolean:=pb_wc;
            params[55].asboolean:=khzl1;
            params[56].asfloat:=ewf;
            params[57].asfloat:=esah;
            params[58].asfloat:=mantbl;
            params[59].asstring:=lbling;
            params[60].asfloat:=asah;
            params[61].asfloat:=awf;
            params[62].asfloat:=alxjs;
            params[63].asinteger:=pfoptqty;
            params[64].asinteger:=aloptqty;
            params[65].asinteger:=eoptqty;
            params[66].asinteger:=toptqty;
            params[67].asboolean:=prtwo;
            execute;
          end;
        end;
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
        //Generate Split QN
        if tm>encodedate(2008,1,1) then begin
          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            params.createparam(ftdatetime,'x5',ptinput);
            commandtext:='execute procedure sp_splitqn_halt(:x1,:x2,:x3,:x4,:x5)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq2;
            params[2].asstring:=combobox1.Text;
            params[3].asinteger:=seq1;
            params[4].asdatetime:=tm;
            execute;
          end;
        end;

      strupd:='update tbl_schstatus set sta3='''+x0+''',dt3='''+formatdatetime('yyyy-MM-dd',frmsellws.dateedit1.Date)+''',sect3='+floattostr(frmsellws.edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq2);
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      
      with clientdataset1 do begin
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
  end;
end;

procedure Tfrmxgsl1.Split_SQN2;
var
  seq1,seq2,trs,ordline,var1,qrxc,rid,qty,i0:integer;
  tmu,fyl,ysjhl,float1,float2,var2,var3,var4,float3,lstrs,tbu,wl_jhp,wl_wcp,ewf,esah,mantbl,asah,awf,alxjs:double;
  PLINE,sopno,artno,acol,j_no,j2_job,khzl,pflag1,flag5,cstyle,jhrs,dbzs,tplant,rwo,flag6,flag2,flag1,lflag,flag3,fccs,tshop:string;
  cwo,x0,iecls,iecls1,lbling:string;
  yqlcrq,qrlcrq,plan_date,cplan,wl_jhrq,pb_jhrq:tdatetime;
  wl_wc,pb_wc,khzl1,prtwo:boolean;
begin
  screen.cursor:=crhourglass;
  if spinedit1.value>0 then begin
    PLINE:=WORKSHEET1.TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
    if combobox1.text>'' then begin
      with clientdataset1 do begin
        close;
        params.clear;
        commandtext:='select tplant,tshop from tblline where pline='''+combobox1.text+'''';
        open;
        if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='SL';
        if not fieldbyname('tshop').isnull then tshop:=fieldbyname('tshop').value else tshop:='';
      end;
    end;
    trs:=worksheet1.tblshedule.fieldbyname('trs').value;
    ordline:=worksheet1.tblshedule.fieldbyname('ordline').value;
    if not worksheet1.tblshedule.fieldbyname('tmu').isnull then
    tmu:=worksheet1.tblshedule.fieldbyname('tmu').value else tmu:=0;
    //if not worksheet1.tblshedule.fieldbyname('fyl').isnull then
    //fyl:=worksheet1.tblshedule.fieldbyname('fyl').value else fyl:=1;
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
    cplan:=worksheet1.tblshedule.fieldbyname('cplan').value;
    if not worksheet1.tblshedule.fieldbyname('qrxc').isnull then
    qrxc:=worksheet1.tblshedule.fieldbyname('qrxc').value
    else qrxc:=0;
    if not worksheet1.tblshedule.fieldbyname('asah').isnull then
    asah:=worksheet1.tblshedule.fieldbyname('asah').value
    else asah:=0;
    if not worksheet1.tblshedule.fieldbyname('awf').isnull then
    awf:=worksheet1.tblshedule.fieldbyname('awf').value
    else awf:=0;
    if awf=0 then awf:=25;
    if not worksheet1.tblshedule.fieldbyname('alxjs').isnull then
    alxjs:=worksheet1.tblshedule.fieldbyname('alxjs').value
    else alxjs:=0;
    if not worksheet1.tblshedule.fieldbyname('rid').isnull then
    rid:=worksheet1.tblshedule.fieldbyname('rid').value else rid:=0;
    if not worksheet1.tblshedule.fieldbyname('dbzs').isnull then
    dbzs:=worksheet1.tblshedule.fieldbyname('dbzs').value
    else dbzs:=' ';
    //if not worksheet1.tblshedule.fieldbyname('tplant').isnull then
    //tplant:=worksheet1.tblshedule.fieldbyname('tplant').value
    //else tplant:=' ';
    //if not worksheet1.tblshedule.fieldbyname('tshop').isnull then
    //tshop:=worksheet1.tblshedule.fieldbyname('tshop').value
    //else tshop:=' ';
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
    if not worksheet1.tblshedule.fieldbyname('cwo').isnull then
    cwo:=worksheet1.tblshedule.fieldbyname('cwo').value else cwo:='';
    if not worksheet1.tblshedule.fieldbyname('iecls').isnull then
    iecls:=worksheet1.tblshedule.fieldbyname('iecls').value else iecls:='';
    if not worksheet1.tblshedule.fieldbyname('iecls1').isnull then
    iecls1:=worksheet1.tblshedule.fieldbyname('iecls1').value else iecls1:='';
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
      else begin
        if worksheet1.tblshedule.fieldbyname('lflag').value>'' then
          lflag:='!'+copy(worksheet1.tblshedule.fieldbyname('lflag').value,1,1)
        else lflag:='!0';
      end;
    end else lflag:='!0';

    if frmsellws.xh2.ItemIndex=0 then flag3:='!h1'
    else if frmsellws.xh2.ItemIndex=1 then flag3:='!h2'
    else if frmsellws.xh2.ItemIndex=2 then flag3:='!h3'
    else if frmsellws.xh2.ItemIndex=3 then flag3:='!h4';

    if frmsellws.xh2.ItemIndex=0 then x0:='H1'
    else if frmsellws.xh2.ItemIndex=1 then x0:='H2'
    else if frmsellws.xh2.ItemIndex=2 then x0:='H3'
    else if frmsellws.xh2.ItemIndex=3 then x0:='H4';

    //if copy(worksheet1.tblshedule.fieldbyname('fccs').value,length(worksheet1.tblshedule.fieldbyname('fccs').value)-1,1)>'9' then
    //fccs:=copy(worksheet1.tblshedule.fieldbyname('fccs').value,1,length(worksheet1.tblshedule.fieldbyname('fccs').value)-2)
    //else fccs:=copy(worksheet1.tblshedule.fieldbyname('fccs').value,1,length(trim(worksheet1.tblshedule.fieldbyname('fccs').value))-1);

    if ((pos('d',worksheet1.tblshedule.fieldbyname('fccs').value)>0) or (pos('D',worksheet1.tblshedule.fieldbyname('fccs').value)>0)) then begin
      if copy(worksheet1.tblshedule.fieldbyname('fccs').value,length(worksheet1.tblshedule.fieldbyname('fccs').value),1)<='9' then begin
        i0:=strtoint(copy(worksheet1.tblshedule.fieldbyname('fccs').value,length(worksheet1.tblshedule.fieldbyname('fccs').value),1));
        fccs:=copy(worksheet1.tblshedule.fieldbyname('fccs').value,1,length(worksheet1.tblshedule.fieldbyname('fccs').value)-1)+inttostr(i0+1);
      end else fccs:=worksheet1.tblshedule.fieldbyname('fccs').value+'1'
    end else begin
      if copy(worksheet1.tblshedule.fieldbyname('fccs').value,length(worksheet1.tblshedule.fieldbyname('fccs').value)-1,1)>'9' then
      fccs:=copy(worksheet1.tblshedule.fieldbyname('fccs').value,1,length(worksheet1.tblshedule.fieldbyname('fccs').value)-2)+'d'
      else fccs:=copy(worksheet1.tblshedule.fieldbyname('fccs').value,1,length(trim(worksheet1.tblshedule.fieldbyname('fccs').value))-1)+'d';
    end;

        if combobox2.text<>pline then begin
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            commandtext:='select max(seq) as seq1 from tblshedule where pline=:pline';
            params[0].asstring:=combobox2.text;
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
            params[0].asstring:=uppercase(combobox2.text);
            open;
            //if not fieldbyname('workert').isnull then trs:=fieldbyname('workert').value else trs:=25;
            if not fieldbyname('ysjhl').isnull then ysjhl:=fieldbyname('ysjhl').value else ysjhl:=100;
          end;
          fyl:=1.00;
          if lstrs=0 then lstrs:=25;
          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'pline',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            params.createparam(ftstring,'khzl',ptinput);
            params.createparam(ftfloat,'tmu',ptinput);
            params.createparam(ftinteger,'trs',ptinput);
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
            params.createparam(ftstring,'flag3',ptinput);
            params.createparam(ftstring,'fccs',ptinput);
            params.createparam(ftstring,'tshop',ptinput);
            params.createparam(ftdate,'cplan',ptinput);
            params.createparam(ftstring,'flag4',ptinput);
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
            params.createparam(ftstring,'lbling',ptinput);
            params.CreateParam(ftfloat,'asah',ptinput);
            params.CreateParam(ftfloat,'awf',ptinput);
            params.CreateParam(ftfloat,'alxjs',ptinput);
            params.CreateParam(ftboolean,'prtwo',ptinput);
            commandtext:='insert into tblshedule(pline,seq,khzl,tmu,trs,ysjhl,sopno,j_no,artno,acol,j2_job,ordline,'
                        +'yqlcrq,pflag1,flag5,cstyle,jhrs,plan_date,qrxc,scqty,fyl,yzh,xs,sclhjs,qyjs,'
                        +'rid,dbzs,tplant,rwo,lstrs,flag1,flag2,flag6,xjs,jxjs,phiszjs,shjs,zjs,qty,tbu,lflag,flag3,fccs,tshop,cplan,flag4,cwo,iecls,iecls1,'
                        +'wl_jhdt,wl_jhp,wl_wc,wl_wcp,pb_jhdt,pb_wc,khzl1,ewf,esah,mantbl,lbling,asah,awf,alxjs,prtwo) '
                        +'values(:pline,:seq,:khzl,:tmu,:trs,:ysjhl,:sopno,:j_no,:artno,:acol,:j2_job,:ordline,'
                        +':yqlcrq,:pflag1,:flag5,:cstyle,:jhrs,:plan_date,:qrxc,:scqty,:fyl,:yzh,:xs,:sclhjs,:qyjs,'
                        +':rid,:dbzs,:tplant,:rwo,:lstrs,:flag1,:flag2,:flag6,:xjs,:jxjs,:phiszjs,:shjs,:zjs,:qty,:tbu,:lflag,:flag3,:fccs,:tshop,:cplan,'
                        +':flag4,:cwo,:iecls,:iecls1,:wl_jhrq,:wl_jhp,:wl_wc,:wl_wcp,:pb_jhrq,:pb_wc,:khzl1,:ewf,:esah,:mantbl,:lbling,:asah,:awf,:alxjs,:prtwo)';
            params[0].asstring:=combobox2.text;
            params[1].asinteger:=seq1;
            params[2].asstring:=khzl;
            params[3].asfloat:=tmu;
            params[4].asinteger:=trs;
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
            params[19].asinteger:=spinedit2.Value;
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
                float2:=spinedit1.value/(0.5*awf/asah);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah)/ysjhl;
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
                float2:=spinedit1.value/(0.5*awf/asah);
                float3:=spinedit1.Value*100.00/(0.5*awf/asah)/ysjhl;
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
            params[41].asstring:=flag3;
            params[42].asstring:=fccs;
            params[43].asstring:=tshop;
            if cplan>0 then params[44].asdate:=cplan;
            params[45].asstring:='a';
            params[46].asstring:=cwo;
            params[47].asstring:=iecls;
            params[48].asstring:=iecls1;
            params[49].asdate:=wl_jhrq;
            params[50].asfloat:=wl_jhp;
            params[51].asboolean:=wl_wc;
            params[52].asfloat:=wl_wcp;
            params[53].asdate:=pb_jhrq;
            params[54].asboolean:=pb_wc;
            params[55].asboolean:=khzl1;
            params[56].asfloat:=ewf;
            params[57].asfloat:=esah;
            params[58].asfloat:=mantbl;
            params[59].asstring:=lbling;
            params[60].asfloat:=asah;
            params[61].asfloat:=awf;
            params[62].asfloat:=alxjs;
            params[63].asboolean:=prtwo;
            execute;
          end;
        end;

          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='execute procedure sp_calcflag4_1(:x1,:x2)';
            params[0].asstring:=combobox2.text;
            params[1].asinteger:=seq1;
            execute;
          end;
        //Generate Split QN
        if tm>encodedate(2006,1,1) then begin
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
            params[2].asstring:=combobox2.Text;
            params[3].asinteger:=seq1;
            params[4].asdatetime:=tm;
            execute;
          end;
        end;
  end;
end;

end.
