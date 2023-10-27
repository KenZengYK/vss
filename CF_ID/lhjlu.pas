unit lhjlu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGridEh, Buttons, Db, DBTables, ppCtrls, ppPrnabl,
  ppClass, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, ppViewr, Mask, rxToolEdit, DBClient, ExtCtrls, GridsEh;

type
  Tfrmlhjl = class(TForm)
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
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
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppDBText14: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    from1: TppLabel;
    to1: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    query1: TClientDataSet;
    query2: TClientDataSet;
    query3: TClientDataSet;
    query4: TClientDataSet;
    query5: TClientDataSet;
    query6: TClientDataSet;
    query7: TClientDataSet;
    query1Prjno: TStringField;
    query1Gch: TStringField;
    query1Zdh: TStringField;
    query1Rq: TDateTimeField;
    query1Tm: TDateTimeField;
    query1Kh: TStringField;
    query1Sh: TStringField;
    query1Zds: TIntegerField;
    query1Ycs: TIntegerField;
    query1Lhs: TIntegerField;
    query1Lhxs: TIntegerField;
    query1Qhs: TIntegerField;
    query1Wcqk: TStringField;
    query1Ppcps: TStringField;
    query1Line1: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ComboBox2: TComboBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1LhsChange(Sender: TField);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateEdit1Change(Sender: TObject);
    procedure Query1BeforePost(DataSet: TDataSet);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlhjl: Tfrmlhjl;

implementation
uses mainu;
{$R *.DFM}

procedure Tfrmlhjl.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlhjl.BitBtn1Click(Sender: TObject);
begin
  screen.Cursor:=crhourglass;
  if query1.state=dsedit then query1.post;
  ppreport1.allowprinttofile:=false;
  ppreport1.DeviceType:='Screen';
  if query1.recordcount>0 then begin
    from1.caption:=dateedit1.text;
    to1.caption:=dateedit2.text;
    ppreport1.print;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmlhjl.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmlhjl.ComboBox1Change(Sender: TObject);
var
  ycs,ycs1,zds:integer;
begin
 screen.Cursor:=crhourglass;
 if combobox1.text<>'' then begin
  edit1.text:='';edit2.text:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'zdh',ptinput);
    commandtext:='select distinct a.prjno,a.gch,a.zdh,a.kh,a.sh,b.zds '
                +'from cut_fcjy3 a,cut_fczd1 b where a.gch=b.gch and a.zdh=b.zdh and a.kh=b.kh and a.sh=b.sh and a.gch=:zdh';
    params[0].asstring:=combobox1.text;
    open;
    first;
    while not eof do begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select * from cut_lhjl where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
        params[0].asstring:=query2.fieldbyname('prjno').value;
        params[1].asstring:=query2.fieldbyname('gch').value;
        params[2].asstring:=query2.fieldbyname('zdh').value;
        params[3].asstring:=query2.fieldbyname('kh').value;
        params[4].asstring:=query2.fieldbyname('sh').value;
        open;
        if recordcount=0 then begin
          with query4 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'rq',ptinput);
            //params.createparam(ftdatetime,'tm',ptinput);
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'zds',ptinput);
            commandtext:='insert into cut_lhjl(rq,prjno,gch,zdh,kh,sh,zds,ycs,lhs,lhxs,qhs) '
                        +'values(:rq,:prjno,:gch,:zdh,:kh,:sh,:zds,0,0,0,0)';
            params[0].asdatetime:=now;
            //params[1].asdatetime:=time;
            params[1].asstring:=query2.fieldbyname('prjno').value;
            params[2].asstring:=query2.fieldbyname('gch').value;
            params[3].asstring:=query2.fieldbyname('zdh').value;
            params[4].asstring:=query2.fieldbyname('kh').value;
            params[5].asstring:=query2.fieldbyname('sh').value;
            params[6].asinteger:=query2.fieldbyname('zds').value;
            execute;
          end;
          with query5 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            commandtext:='select distinct wl,cacjyl from cut_fcjy3 where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by cacjyl desc';
            params[0].asstring:=query2.fieldbyname('prjno').value;
            params[1].asstring:=query2.fieldbyname('gch').value;
            params[2].asstring:=query2.fieldbyname('zdh').value;
            params[3].asstring:=query2.fieldbyname('kh').value;
            params[4].asstring:=query2.fieldbyname('sh').value;
            open;
          end;
          with query6 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'wl',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            if label6.caption='lbjh' then
            commandtext:='select distinct cm from cut_lbjh2 where prjno=:prjno and wl=:wl and kh=:kh and sh=:sh'
            else if label6.caption='cgbg' then
            commandtext:='select distinct cm from cut_cgbg2 where prjno=:prjno and wl=:wl and kh=:kh and sh=:sh';
            params[0].asstring:=query2.fieldbyname('prjno').value;
            params[1].asstring:=query5.fieldbyname('wl').value;
            params[2].asstring:=query2.fieldbyname('kh').value;
            params[3].asstring:=query2.fieldbyname('sh').value;
            open;
            first;
            while not eof do begin
              with query7 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftstring,'cm',ptinput);
                if label6.caption='lbjh' then
                commandtext:='select wl,sum(mjjs) as ycs from cut_lbjh2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm group by wl order by ycs'
                else if label6.caption='cgbg' then
                commandtext:='select wl,sum(mjjs) as ycs from cut_cgbg2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm group by wl order by ycs';
                params[0].asstring:=query2.fieldbyname('prjno').value;
                params[1].asstring:=query2.fieldbyname('kh').value;
                params[2].asstring:=query2.fieldbyname('sh').value;
                params[3].asstring:=query6.fieldbyname('cm').value;
                open;
                ycs:=fieldbyname('ycs').value;
              end;
              with query7 do begin
                close;
                params.clear;
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftstring,'cm',ptinput);
                commandtext:='select zds from cut_fczd2 where gch=:gch and kh=:kh and zdh=:zdh and sh=:sh and cm=:cm';
                params[0].asstring:=query2.fieldbyname('gch').value;
                params[1].asstring:=query2.fieldbyname('kh').value;
                params[2].asstring:=query2.fieldbyname('zdh').value;
                params[3].asstring:=query2.fieldbyname('sh').value;
                params[4].asstring:=query6.fieldbyname('cm').value;
                open;
                if not fieldbyname('zds').isnull then ycs1:=fieldbyname('zds').value
                else ycs1:=0;
              end;
              with query7 do begin
                close;
                params.clear;
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftstring,'cm',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                commandtext:='select sum(zds) as zds from cut_fczd2 where gch=:gch and kh=:kh and sh=:sh and cm=:cm and zdh=:zdh';
                params[0].asstring:=query2.fieldbyname('gch').value;
                params[1].asstring:=query2.fieldbyname('kh').value;
                params[2].asstring:=query2.fieldbyname('sh').value;
                params[3].asstring:=query6.fieldbyname('cm').value;
                params[4].asstring:=query2.fieldbyname('zdh').value;
                open;
                zds:=fieldbyname('zds').value;
              end;
              with query7 do begin
                close;
                params.clear;
                params.createparam(ftinteger,'ycs',ptinput);
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                commandtext:='update cut_lhjl set ycs=ycs+:ycs,qhs=ycs where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
                params[0].asinteger:=round(ycs/zds*ycs1);
                params[1].asstring:=query2.fieldbyname('prjno').value;
                params[2].asstring:=query2.fieldbyname('gch').value;
                params[3].asstring:=query2.fieldbyname('zdh').value;
                params[4].asstring:=query2.fieldbyname('kh').value;
                params[5].asstring:=query2.fieldbyname('sh').value;
                execute;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'gch',ptinput);
    commandtext:='select * from cut_lhjl where gch=:gch';
    params[0].asstring:=combobox1.text;
    open;
  end;
 end;
 screen.Cursor:=crdefault;
end;

procedure Tfrmlhjl.BitBtn3Click(Sender: TObject);
begin
  screen.Cursor:=crhourglass;
  if query1.state=dsedit then query1.post;
  ppreport1.allowprinttofile:=true;
  ppreport1.DeviceType:='LotusFile';
  ppreport1.TextFileName:='C:\my documents\cutplan1.123';
  if query1.recordcount>0 then begin
    from1.caption:=dateedit1.text;
    to1.caption:=dateedit2.text;
    ppreport1.print;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmlhjl.SpeedButton1Click(Sender: TObject);
var
  ycs,ycs1,zds:integer;
begin
  screen.cursor:=crhourglass;
  if edit1.text<>'' then begin
    combobox1.text:='';
    if edit2.text<>'' then begin
     if bitbtn4.Enabled then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select * from cut_lhjl where zdh=:zdh and sh=:sh';
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit2.text;
        open;
        if recordcount=0 then begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            commandtext:='select distinct a.prjno,a.gch,a.zdh,a.kh,a.sh,b.zds '
                        +'from cut_fcjy3 a,cut_fczd1 b where a.gch=b.gch and a.zdh=b.zdh and a.kh=b.kh and a.sh=b.sh and a.zdh=:zdh and a.sh=:sh';
            params[0].asstring:=edit1.text;
            params[1].asstring:=edit2.text;
            open;
            first;
            while not eof do begin
              with query4 do begin
                close;
                params.clear;
                params.createparam(ftdatetime,'rq',ptinput);
                //params.createparam(ftdatetime,'tm',ptinput);
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftinteger,'zds',ptinput);
                commandtext:='insert into cut_lhjl(rq,prjno,gch,zdh,kh,sh,zds,ycs,lhs,lhxs,qhs) '
                            +'values(:rq,:prjno,:gch,:zdh,:kh,:sh,:zds,0,0,0,0)';
                params[0].asdatetime:=now;
                //params[1].asdatetime:=time;
                params[1].asstring:=query3.fieldbyname('prjno').value;
                params[2].asstring:=query3.fieldbyname('gch').value;
                params[3].asstring:=query3.fieldbyname('zdh').value;
                params[4].asstring:=query3.fieldbyname('kh').value;
                params[5].asstring:=query3.fieldbyname('sh').value;
                params[6].asinteger:=query3.fieldbyname('zds').value;
                execute;
              end;
              with query5 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                commandtext:='select distinct wl,cacjyl from cut_fcjy3 where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by cacjyl desc';
                params[0].asstring:=query3.fieldbyname('prjno').value;
                params[1].asstring:=query3.fieldbyname('gch').value;
                params[2].asstring:=query3.fieldbyname('zdh').value;
                params[3].asstring:=query3.fieldbyname('kh').value;
                params[4].asstring:=query3.fieldbyname('sh').value;
                open;
              end;
              with query6 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'wl',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                if label6.caption='lbjh' then
                commandtext:='select distinct cm from cut_lbjh2 where prjno=:prjno and wl=:wl and kh=:kh and sh=:sh'
                else if label6.caption='cgbg' then
                commandtext:='select distinct cm from cut_cgbg2 where prjno=:prjno and wl=:wl and kh=:kh and sh=:sh';
                params[0].asstring:=query3.fieldbyname('prjno').value;
                params[1].asstring:=query5.fieldbyname('wl').value;
                params[2].asstring:=query3.fieldbyname('kh').value;
                params[3].asstring:=query3.fieldbyname('sh').value;
                open;
                first;
                while not eof do begin
                  with query7 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'prjno',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'cm',ptinput);
                    if label6.caption='lbjh' then
                    commandtext:='select wl,sum(mjjs) as ycs from cut_lbjh2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm group by wl order by ycs'
                    else if label6.caption='cgbg' then
                    commandtext:='select a.wl,sum(a.mjjs) as ycs from cut_cgbg2 a,cut_cgbg1 b where a.prjno=b.prjno and a.wl=b.wl and a.xh=b.xh and b.cfm=true and a.prjno=:prjno and a.kh=:kh and a.sh=:sh and a.cm=:cm group by a.wl order by ycs';
                    params[0].asstring:=query3.fieldbyname('prjno').value;
                    params[1].asstring:=query3.fieldbyname('kh').value;
                    params[2].asstring:=query3.fieldbyname('sh').value;
                    params[3].asstring:=query6.fieldbyname('cm').value;
                    open;
                    if not fieldbyname('ycs').isnull then ycs:=fieldbyname('ycs').value
                    else ycs:=0;
                  end;
                  with query7 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'cm',ptinput);
                    commandtext:='select zds from cut_fczd2 where gch=:gch and kh=:kh and zdh=:zdh and sh=:sh and cm=:cm';
                    params[0].asstring:=query3.fieldbyname('gch').value;
                    params[1].asstring:=query3.fieldbyname('kh').value;
                    params[2].asstring:=query3.fieldbyname('zdh').value;
                    params[3].asstring:=query3.fieldbyname('sh').value;
                    params[4].asstring:=query6.fieldbyname('cm').value;
                    open;
                    if not fieldbyname('zds').isnull then ycs1:=fieldbyname('zds').value
                    else ycs1:=0;
                  end;
                  with query7 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'cm',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    commandtext:='select sum(zds) as zds from cut_fczd2 where gch=:gch and kh=:kh and sh=:sh and cm=:cm and zdh=:zdh';
                    params[0].asstring:=query3.fieldbyname('gch').value;
                    params[1].asstring:=query3.fieldbyname('kh').value;
                    params[2].asstring:=query3.fieldbyname('sh').value;
                    params[3].asstring:=query6.fieldbyname('cm').value;
                    params[4].asstring:=query3.fieldbyname('zdh').value;
                    open;
                    zds:=fieldbyname('zds').value;
                  end;
                  with query7 do begin
                    close;
                    params.clear;
                    params.createparam(ftinteger,'ycs',ptinput);
                    params.createparam(ftstring,'prjno',ptinput);
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    commandtext:='update cut_lhjl set ycs=ycs+:ycs,qhs=ycs where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
                    params[0].asinteger:=round(ycs/zds*ycs1);
                    params[1].asstring:=query3.fieldbyname('prjno').value;
                    params[2].asstring:=query3.fieldbyname('gch').value;
                    params[3].asstring:=query3.fieldbyname('zdh').value;
                    params[4].asstring:=query3.fieldbyname('kh').value;
                    params[5].asstring:=query3.fieldbyname('sh').value;
                    execute;
                  end;
                  application.ProcessMessages;
                  next;
                end;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
        end;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='delete from cut_lhjl where ycs=0 and zdh=:zdh and sh=:sh';
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit2.text;
        execute;
      end;
     end;
     with query1 do begin
       close;
       params.clear;
       params.createparam(ftstring,'zdh',ptinput);
       params.createparam(ftstring,'sh',ptinput);
       commandtext:='select * from cut_lhjl where zdh=:zdh and sh=:sh';
       params[0].asstring:=edit1.text;
       params[1].asstring:=edit2.text;
       open;
     end;
    end
    else begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        commandtext:='select distinct a.prjno,a.gch,a.zdh,a.kh,a.sh,b.zds '
                    +'from cut_fcjy3 a,cut_fczd1 b where a.gch=b.gch and a.zdh=b.zdh and a.kh=b.kh and a.sh=b.sh and a.zdh=:zdh';
        params[0].asstring:=edit1.text;
        open;
        first;
        while not eof do begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            commandtext:='select * from cut_lhjl where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
            params[0].asstring:=query2.fieldbyname('prjno').value;
            params[1].asstring:=query2.fieldbyname('gch').value;
            params[2].asstring:=query2.fieldbyname('zdh').value;
            params[3].asstring:=query2.fieldbyname('kh').value;
            params[4].asstring:=query2.fieldbyname('sh').value;
            open;
            if recordcount=0 then begin
              with query4 do begin
                close;
                params.clear;
                params.createparam(ftdatetime,'rq',ptinput);
                //params.createparam(ftdatetime,'tm',ptinput);
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftinteger,'zds',ptinput);
                commandtext:='insert into cut_lhjl(rq,prjno,gch,zdh,kh,sh,zds,ycs,lhs,lhxs,qhs) '
                            +'values(:rq,:prjno,:gch,:zdh,:kh,:sh,:zds,0,0,0,0)';
                params[0].asdatetime:=now;
                //params[1].asdatetime:=time;
                params[1].asstring:=query2.fieldbyname('prjno').value;
                params[2].asstring:=query2.fieldbyname('gch').value;
                params[3].asstring:=query2.fieldbyname('zdh').value;
                params[4].asstring:=query2.fieldbyname('kh').value;
                params[5].asstring:=query2.fieldbyname('sh').value;
                params[6].asstring:=query2.fieldbyname('zds').value;
                execute;
              end;
              with query5 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                commandtext:='select distinct wl,cacjyl from cut_fcjy3 where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by cacjyl desc';
                params[0].asstring:=query2.fieldbyname('prjno').value;
                params[1].asstring:=query2.fieldbyname('gch').value;
                params[2].asstring:=query2.fieldbyname('zdh').value;
                params[3].asstring:=query2.fieldbyname('kh').value;
                params[4].asstring:=query2.fieldbyname('sh').value;
                open;
              end;
              with query6 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'wl',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                if label6.caption='lbjh' then
                commandtext:='select distinct cm from cut_lbjh2 where prjno=:prjno and wl=:wl and kh=:kh and sh=:sh'
                else if label6.caption='cgbg' then
                commandtext:='select distinct cm from cut_cgbg2 where prjno=:prjno and wl=:wl and kh=:kh and sh=:sh';
                params[0].asstring:=query2.fieldbyname('prjno').value;
                params[1].asstring:=query5.fieldbyname('wl').value;
                params[2].asstring:=query2.fieldbyname('kh').value;
                params[3].asstring:=query2.fieldbyname('sh').value;
                open;
                first;
                while not eof do begin
                  with query7 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'prjno',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'cm',ptinput);
                    if label6.caption='lbjh' then
                    commandtext:='select wl,sum(mjjs) as ycs from cut_lbjh2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm group by wl order by ycs'
                    else if label6.caption='cgbg' then
                    commandtext:='select wl,sum(mjjs) as ycs from cut_cgbg2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm group by wl order by ycs';
                    params[0].asstring:=query2.fieldbyname('prjno').value;
                    params[1].asstring:=query2.fieldbyname('kh').value;
                    params[2].asstring:=query2.fieldbyname('sh').value;
                    params[3].asstring:=query6.fieldbyname('cm').value;
                    open;
                    ycs:=fieldbyname('ycs').value;
                  end;
                  with query7 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'cm',ptinput);
                    commandtext:='select zds from cut_fczd2 where gch=:gch and kh=:kh and zdh=:zdh and sh=:sh and cm=:cm';
                    params[0].asstring:=query2.fieldbyname('gch').value;
                    params[1].asstring:=query2.fieldbyname('kh').value;
                    params[2].asstring:=query2.fieldbyname('zdh').value;
                    params[3].asstring:=query2.fieldbyname('sh').value;
                    params[4].asstring:=query6.fieldbyname('cm').value;
                    open;
                    if not fieldbyname('zds').isnull then ycs1:=fieldbyname('zds').value
                    else ycs1:=0;
                  end;
                  with query7 do begin
                    close;
                    params.clear;
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    params.createparam(ftstring,'cm',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    commandtext:='select sum(zds) as zds from cut_fczd2 where gch=:gch and kh=:kh and sh=:sh and cm=:cm and zdh=:zdh';
                    params[0].asstring:=query2.fieldbyname('gch').value;
                    params[1].asstring:=query2.fieldbyname('kh').value;
                    params[2].asstring:=query2.fieldbyname('sh').value;
                    params[3].asstring:=query6.fieldbyname('cm').value;
                    params[4].asstring:=query2.fieldbyname('zdh').value;
                    open;
                    zds:=fieldbyname('zds').value;
                  end;
                  with query7 do begin
                    close;
                    params.clear;
                    params.createparam(ftinteger,'ycs',ptinput);
                    params.createparam(ftstring,'prjno',ptinput);
                    params.createparam(ftstring,'gch',ptinput);
                    params.createparam(ftstring,'zdh',ptinput);
                    params.createparam(ftstring,'kh',ptinput);
                    params.createparam(ftstring,'sh',ptinput);
                    commandtext:='update cut_lhjl set ycs=ycs+:ycs,qhs=ycs where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
                    params[0].asinteger:=round(ycs/zds*ycs1);
                    params[1].asstring:=query2.fieldbyname('prjno').value;
                    params[2].asstring:=query2.fieldbyname('gch').value;
                    params[3].asstring:=query2.fieldbyname('zdh').value;
                    params[4].asstring:=query2.fieldbyname('kh').value;
                    params[5].asstring:=query2.fieldbyname('sh').value;
                    execute;
                  end;
                  application.ProcessMessages;
                  next;
                end;
              end;
            end;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        commandtext:='select * from cut_lhjl where zdh=:zdh';
        params[0].asstring:=edit1.text;
        open;
      end;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmlhjl.BitBtn4Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
  if edit1.text<>'' then begin
    if edit2.text<>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select * from cut_lhjl where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by rq';
        params[0].asstring:=query1.fieldbyname('prjno').value;
        params[1].asstring:=query1.fieldbyname('gch').value;
        params[2].asstring:=query1.fieldbyname('zdh').value;
        params[3].asstring:=query1.fieldbyname('kh').value;
        params[4].asstring:=query1.fieldbyname('sh').value;
        open;
        last;
        if fieldbyname('qhs').value>0 then begin
          with query4 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'rq',ptinput);
            //params.createparam(ftdatetime,'tm',ptinput);
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'zds',ptinput);
            params.createparam(ftinteger,'ycs',ptinput);
            params.createparam(ftinteger,'qhs',ptinput);
            commandtext:='insert into cut_lhjl(rq,prjno,gch,zdh,kh,sh,zds,ycs,lhs,lhxs,qhs) '
                        +'values(:rq,:prjno,:gch,:zdh,:kh,:sh,:zds,:ycs,0,0,:qhs)';
            params[0].asdatetime:=now;
            //params[1].asdatetime:=time;
            params[1].asstring:=query3.fieldbyname('prjno').value;
            params[2].asstring:=query3.fieldbyname('gch').value;
            params[3].asstring:=query3.fieldbyname('zdh').value;
            params[4].asstring:=query3.fieldbyname('kh').value;
            params[5].asstring:=query3.fieldbyname('sh').value;
            params[6].asstring:=query3.fieldbyname('zds').value;
            params[7].asinteger:=query3.fieldbyname('ycs').value;
            params[8].asinteger:=query3.fieldbyname('qhs').value;
            execute;
          end;
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            commandtext:='select * from cut_lhjl where zdh=:zdh and sh=:sh';
            params[0].asstring:=edit1.text;
            params[1].asstring:=edit2.text;
            open;
            last;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmlhjl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if query1.state=dsedit then query1.post;
  action:=cafree;
  frmlhjl:=nil;
end;

procedure Tfrmlhjl.Query1LhsChange(Sender: TField);
var
  qhs:integer;
begin
  if (not query1lhs.isnull) and (query1lhs.value<>0) then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'gch',ptinput);
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'kh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftdatetime,'rq',ptinput);
      //params.createparam(ftdatetime,'rq1',ptinput);
      //params.createparam(ftdatetime,'tm',ptinput);
      commandtext:='select sum(lhs) as qhs from cut_lhjl where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and rq<=:rq';//((rq<:rq) or ((rq=:rq1)))';
      params[0].asstring:=query1.fieldbyname('prjno').value;
      params[1].asstring:=query1.fieldbyname('gch').value;
      params[2].asstring:=query1.fieldbyname('zdh').value;
      params[3].asstring:=query1.fieldbyname('kh').value;
      params[4].asstring:=query1.fieldbyname('sh').value;
      params[5].asdatetime:=query1.fieldbyname('rq').value;
      //params[6].asdatetime:=query1.fieldbyname('rq').value;
      //params[7].asdatetime:=query1.fieldbyname('tm').value;
      open;
      if not fieldbyname('qhs').isnull then qhs:=fieldbyname('qhs').value
      else qhs:=0;
      query1qhs.value:=query1ycs.value-qhs-query1lhs.value;
    end;
  end;
end;

procedure Tfrmlhjl.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then edit2.setfocus;
end;

procedure Tfrmlhjl.DateEdit1Change(Sender: TObject);
begin
  combobox1.text:='';edit1.text:='';edit2.text:='';
  //if dateedit1.text<>'    /  /  ' then begin
  if dateedit1.date>0 then begin
    //if dateedit2.text<>'    /  /  ' then begin
    if dateedit2.date>0 then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'rq',ptinput);
        params.createparam(ftdatetime,'rq1',ptinput);
        commandtext:='select * from cut_lhjl where rq>=:rq and rq<=:rq1';
        params[0].asdatetime:=dateedit1.date;
        params[1].asdatetime:=dateedit2.date;
        open;
      end;
    end
    else begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'rq',ptinput);
        commandtext:='select * from cut_lhjl where rq>=:rq';
        params[0].asdatetime:=dateedit1.date;
        open;
      end;
    end;
  end
  else begin
    if dateedit2.text<>'    /  /  ' then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'rq1',ptinput);
        commandtext:='select * from cut_lhjl where rq<=:rq1';
        params[0].asdatetime:=dateedit2.date;
        open;
      end;
    end
    else begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from cut_lhjl';
        open;
      end;
    end;
  end;
end;

procedure Tfrmlhjl.Query1BeforePost(DataSet: TDataSet);
begin
  if query1.fieldbyname('rq').isnull then abort;
end;

procedure Tfrmlhjl.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with query5 do begin
    close;
    params.clear;
    if label6.caption='lbjh' then
    commandtext:='select distinct prjno from cut_lbjh1'
    else if label6.caption='cgbg' then
    commandtext:='select distinct prjno from cut_cgbg1';
    open;
    first;
    while not eof do begin
      if not fieldbyname('prjno').isnull then
      combobox2.items.add(fieldbyname('prjno').value);
      next;
    end;
  end;
end;

procedure Tfrmlhjl.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  with query5 do begin
    close;
    params.clear;
    commandtext:='select distinct gch from cut_fcjy3';
    open;
    first;
    while not eof do begin
      if not fieldbyname('gch').isnull then
      combobox1.items.add(fieldbyname('gch').value);
      next;
    end;
  end;
end;

procedure Tfrmlhjl.ComboBox2Change(Sender: TObject);
var
  ycs,ycs1,zds:integer;
begin
 screen.Cursor:=crhourglass;
 if combobox2.text<>'' then begin
  edit1.text:='';edit2.text:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'zdh',ptinput);
    commandtext:='select distinct a.prjno,a.gch,a.zdh,a.kh,a.sh,b.zds '
                +'from cut_fcjy3 a,cut_fczd1 b where a.gch=b.gch and a.zdh=b.zdh and a.kh=b.kh and a.sh=b.sh and a.prjno=:zdh';
    params[0].asstring:=combobox2.text;
    open;
    first;
    while not eof do begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        params.createparam(ftstring,'gch',ptinput);
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'kh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select * from cut_lhjl where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
        params[0].asstring:=query2.fieldbyname('prjno').value;
        params[1].asstring:=query2.fieldbyname('gch').value;
        params[2].asstring:=query2.fieldbyname('zdh').value;
        params[3].asstring:=query2.fieldbyname('kh').value;
        params[4].asstring:=query2.fieldbyname('sh').value;
        open;
        if recordcount=0 then begin
          with query4 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'rq',ptinput);
            //params.createparam(ftdatetime,'tm',ptinput);
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'zds',ptinput);
            commandtext:='insert into cut_lhjl(rq,prjno,gch,zdh,kh,sh,zds,ycs,lhs,lhxs,qhs) '
                        +'values(:rq,:prjno,:gch,:zdh,:kh,:sh,:zds,0,0,0,0)';
            params[0].asdatetime:=now;
            //params[1].asdatetime:=time;
            params[1].asstring:=query2.fieldbyname('prjno').value;
            params[2].asstring:=query2.fieldbyname('gch').value;
            params[3].asstring:=query2.fieldbyname('zdh').value;
            params[4].asstring:=query2.fieldbyname('kh').value;
            params[5].asstring:=query2.fieldbyname('sh').value;
            params[6].asinteger:=query2.fieldbyname('zds').value;
            execute;
          end;
          with query5 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'gch',ptinput);
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            commandtext:='select distinct wl,cacjyl from cut_fcjy3 where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh order by cacjyl desc';
            params[0].asstring:=query2.fieldbyname('prjno').value;
            params[1].asstring:=query2.fieldbyname('gch').value;
            params[2].asstring:=query2.fieldbyname('zdh').value;
            params[3].asstring:=query2.fieldbyname('kh').value;
            params[4].asstring:=query2.fieldbyname('sh').value;
            open;
          end;
          with query6 do begin
            close;
            params.clear;
            params.createparam(ftstring,'prjno',ptinput);
            params.createparam(ftstring,'wl',ptinput);
            params.createparam(ftstring,'kh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            if label6.caption='lbjh' then
            commandtext:='select distinct cm from cut_lbjh2 where prjno=:prjno and wl=:wl and kh=:kh and sh=:sh'
            else if label6.caption='cgbg' then
            commandtext:='select distinct cm from cut_cgbg2 where prjno=:prjno and wl=:wl and kh=:kh and sh=:sh';
            params[0].asstring:=query2.fieldbyname('prjno').value;
            params[1].asstring:=query5.fieldbyname('wl').value;
            params[2].asstring:=query2.fieldbyname('kh').value;
            params[3].asstring:=query2.fieldbyname('sh').value;
            open;
            first;
            while not eof do begin
              with query7 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftstring,'cm',ptinput);
                if label6.caption='lbjh' then
                commandtext:='select wl,sum(mjjs) as ycs from cut_lbjh2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm group by wl order by ycs'
                else if label6.caption='cgbg' then
                commandtext:='select wl,sum(mjjs) as ycs from cut_cgbg2 where prjno=:prjno and kh=:kh and sh=:sh and cm=:cm group by wl order by ycs';
                params[0].asstring:=query2.fieldbyname('prjno').value;
                params[1].asstring:=query2.fieldbyname('kh').value;
                params[2].asstring:=query2.fieldbyname('sh').value;
                params[3].asstring:=query6.fieldbyname('cm').value;
                open;
                ycs:=fieldbyname('ycs').value;
              end;
              with query7 do begin
                close;
                params.clear;
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftstring,'cm',ptinput);
                commandtext:='select zds from cut_fczd2 where gch=:gch and kh=:kh and zdh=:zdh and sh=:sh and cm=:cm';
                params[0].asstring:=query2.fieldbyname('gch').value;
                params[1].asstring:=query2.fieldbyname('kh').value;
                params[2].asstring:=query2.fieldbyname('zdh').value;
                params[3].asstring:=query2.fieldbyname('sh').value;
                params[4].asstring:=query6.fieldbyname('cm').value;
                open;
                if not fieldbyname('zds').isnull then ycs1:=fieldbyname('zds').value
                else ycs1:=0;
              end;
              with query7 do begin
                close;
                params.clear;
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                params.createparam(ftstring,'cm',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                commandtext:='select sum(zds) as zds from cut_fczd2 where gch=:gch and kh=:kh and sh=:sh and cm=:cm and zdh=:zdh';
                params[0].asstring:=query2.fieldbyname('gch').value;
                params[1].asstring:=query2.fieldbyname('kh').value;
                params[2].asstring:=query2.fieldbyname('sh').value;
                params[3].asstring:=query6.fieldbyname('cm').value;
                params[4].asstring:=query2.fieldbyname('zdh').value;
                open;
                zds:=fieldbyname('zds').value;
              end;
              with query7 do begin
                close;
                params.clear;
                params.createparam(ftinteger,'ycs',ptinput);
                params.createparam(ftstring,'prjno',ptinput);
                params.createparam(ftstring,'gch',ptinput);
                params.createparam(ftstring,'zdh',ptinput);
                params.createparam(ftstring,'kh',ptinput);
                params.createparam(ftstring,'sh',ptinput);
                commandtext:='update cut_lhjl set ycs=ycs+:ycs,qhs=ycs where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh';
                params[0].asinteger:=round(ycs/zds*ycs1);
                params[1].asstring:=query2.fieldbyname('prjno').value;
                params[2].asstring:=query2.fieldbyname('gch').value;
                params[3].asstring:=query2.fieldbyname('zdh').value;
                params[4].asstring:=query2.fieldbyname('kh').value;
                params[5].asstring:=query2.fieldbyname('sh').value;
                execute;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'gch',ptinput);
    commandtext:='select * from cut_lhjl where prjno=:gch';
    params[0].asstring:=combobox2.text;
    open;
  end;
 end;
 screen.Cursor:=crdefault;
end;

procedure Tfrmlhjl.query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'line1',ptinput);
      params.createparam(ftinteger,'lhs',ptinput);
      params.createparam(ftinteger,'lhxs',ptinput);
      params.createparam(ftinteger,'qhs',ptinput);
      params.createparam(ftstring,'wcqk',ptinput);
      params.createparam(ftstring,'ppcps',ptinput);
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'gch',ptinput);
      params.createparam(ftstring,'zdh',ptinput);
      params.createparam(ftstring,'kh',ptinput);
      params.createparam(ftstring,'sh',ptinput);
      params.createparam(ftdatetime,'rq',ptinput);
      commandtext:='update cut_lhjl set line1=:line1,lhs=:lhs,lhxs=:lhxs,qhs=:qhs,wcqk=:wcqk,ppcps=:ppcps '
                  +'where prjno=:prjno and gch=:gch and zdh=:zdh and kh=:kh and sh=:sh and rq=:rq';
      if not query1.fieldbyname('line1').isnull then
      params[0].asstring:=query1.fieldbyname('line1').value;
      if not query1.fieldbyname('lhs').isnull then
      params[1].asinteger:=query1.fieldbyname('lhs').value;
      if not query1.fieldbyname('lhxs').isnull then
      params[2].asinteger:=query1.fieldbyname('lhxs').value;
      if not query1.fieldbyname('qhs').isnull then
      params[3].asinteger:=query1.fieldbyname('qhs').value;
      if not query1.fieldbyname('wcqk').isnull then
      params[4].asstring:=query1.fieldbyname('wcqk').value;
      if not query1.fieldbyname('ppcps').isnull then
      params[5].asstring:=query1.fieldbyname('ppcps').value;
      params[6].asstring:=query1.fieldbyname('prjno').value;
      params[7].asstring:=query1.fieldbyname('gch').value;
      params[8].asstring:=query1.fieldbyname('zdh').value;
      params[9].asstring:=query1.fieldbyname('kh').value;
      params[10].asstring:=query1.fieldbyname('sh').value;
      params[11].asdatetime:=query1.fieldbyname('rq').value;
      execute;
    end;
  end;
end;

end.
