unit frnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  Mask, rxToolEdit, ADODB, cxGridBandedTableView, cxGridDBBandedTableView,
  DBTables, cxCalendar, cxGridExportLink, cxCurrencyEdit, siComp, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmFRN = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    frn_master: TADODataSet;
    dsfrn_master: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    frn_detail: TADODataSet;
    dsfrn_detail: TDataSource;
    cxGrid1DBTableView1FRN_ID: TcxGridDBColumn;
    cxGrid1DBTableView1FRN_DID: TcxGridDBColumn;
    cxGrid1DBTableView1PRJNO: TcxGridDBColumn;
    cxGrid1DBTableView1WONO: TcxGridDBColumn;
    cxGrid1DBTableView1SOLINE: TcxGridDBColumn;
    cxGrid1DBTableView1STYLNO: TcxGridDBColumn;
    cxGrid1DBTableView1CLR: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1EXDT: TcxGridDBColumn;
    cxGrid1DBTableView1FWDT: TcxGridDBColumn;
    cxGrid1DBTableView1MATTYPE: TcxGridDBColumn;
    cxGrid1DBTableView1ITEMCODE: TcxGridDBColumn;
    cxGrid1DBTableView1SUPPREF: TcxGridDBColumn;
    cxGrid1DBTableView1CACYY: TcxGridDBColumn;
    cxGrid1DBTableView1WASTAGE: TcxGridDBColumn;
    cxGrid1DBTableView1FRN_YY: TcxGridDBColumn;
    cxGrid1DBTableView1FRN_WST: TcxGridDBColumn;
    cxGrid1DBTableView1FRN_TTLYY: TcxGridDBColumn;
    cxGrid1DBTableView1DIFF_YY: TcxGridDBColumn;
    cxGrid1DBTableView1DIFFP: TcxGridDBColumn;
    cxGrid1DBTableView1MAT_SEQ: TcxGridDBColumn;
    cxGrid1DBTableView1MAT_I: TcxGridDBColumn;
    cxView1: TcxGridDBBandedTableView;
    cxView1PRJNO: TcxGridDBBandedColumn;
    cxView1WONO: TcxGridDBBandedColumn;
    cxView1STYLNO: TcxGridDBBandedColumn;
    cxView1CLR: TcxGridDBBandedColumn;
    cxView1QTY: TcxGridDBBandedColumn;
    cxView1EXDT: TcxGridDBBandedColumn;
    cxView1FWDT: TcxGridDBBandedColumn;
    cxView1MATTYPE: TcxGridDBBandedColumn;
    cxView1ITEMCODE: TcxGridDBBandedColumn;
    cxView1SUPPREF: TcxGridDBBandedColumn;
    cxView1CACYY: TcxGridDBBandedColumn;
    cxView1WASTAGE: TcxGridDBBandedColumn;
    cxView1FRN_YY: TcxGridDBBandedColumn;
    cxView1FRN_WST: TcxGridDBBandedColumn;
    cxView1FRN_TTLYY: TcxGridDBBandedColumn;
    cxView1DIFF_YY: TcxGridDBBandedColumn;
    cxView1DIFFP: TcxGridDBBandedColumn;
    cxView1WO_QTY: TcxGridDBBandedColumn;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    Database3: TDatabase;
    Query1: TQuery;
    Query2: TQuery;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    tc: TSpeedButton;
    Query3: TQuery;
    SpeedButton1: TSpeedButton;
    SaveDialog1: TSaveDialog;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label5: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    siLang1: TsiLang;
    cxView1CACYY1: TcxGridDBBandedColumn;
    Label6: TEdit;
    SpeedButton3: TSpeedButton;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    ADOQuery3: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure tcClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dsfrn_masterDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frn_detailAfterOpen(DataSet: TDataSet);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function cvt_seq_za(const seq:integer):string;
    function cvts1(const s1:integer):string;
    function cvts2(const s2:integer):string;
    function cvtm1(const m1:integer):string;
    procedure openmaster;
  end;

var
  frmFRN: TfrmFRN;

implementation

uses mainu, FRN_ReviewFormu, Carte_MailFormu;

{$R *.dfm}

procedure TfrmFRN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmfrn:=nil;
end;

procedure TfrmFRN.BitBtn2Click(Sender: TObject);
var
  txtfile:TextFile;
  jobn,ordn,ftpu,ftpp,ftpe,str1,jno,cprj:string;
  i1,did1:integer;
begin
  screen.cursor:=crSQLWait;
  try
    if edit1.text>'' then begin
      if edit2.text>'' then begin
        cprj:='0';
        with adoquery1 do begin
          close;
          parameters.clear;
          sql.text:='select prjno from phgdb..cut_frn_detail where frn_id=:x1 and prjno=:x2';
          parameters[0].value:=frn_master.fieldbyname('frn_id').value;
          parameters[1].value:=edit2.text;
          open;
          if not fieldbyname('prjno').isnull then begin
            //showmessage('This project existed at this FRN already!');
            cprj:='1';
          end;
        end;

        if cprj='1' then begin
          with ADOQuery1 do begin
            close;
            parameters.clear;
            sql.text:='delete from phgdb..cut_frn_detail where frn_id=:x1 and prjno=:x2';
            parameters[0].value:=frn_master.fieldbyname('frn_id').value;
            parameters[1].value:=edit2.text;
            ExecSQL;
          end;
          with ADOQuery1 do begin
            close;
            parameters.clear;
            sql.text:='delete from phgdb..cut_frn_detail_sku where frn_id=:x1 and prjno=:x2';
            parameters[0].value:=frn_master.fieldbyname('frn_id').value;
            parameters[1].value:=edit2.text;
            ExecSQL;
          end;
        end;
        //*  Prepare parameters for MR running *//
        jobn:=formatdatetime('yyyymmddhh.nnss',now);
        if not directoryexists('c:\temp') then createdir('c:\temp');
        with query1 do begin
          close;
          sql.clear;
          sql.add('select distinct ordn40 from ault4f1.oep40 where cono40=''P1'' and dtlc40=0 and cuso40=:cuso40');
          prepare;
          params[0].asstring:=edit2.text;
          open;
          ordn:=fieldbyname('ordn40').value;
        end;
        with adoquery1 do begin
          close;
          //params.clear;
          sql.text:='select * from mr_ftpuser';
          open;
          ftpu:=fieldbyname('ftpuser').value;
          ftpp:=fieldbyname('ftppass').value;
          ftpe:=fieldbyname('ftpenv').value;
        end;

        // call MR program to generate data *//
        str1:='quote rcmd CALL PGM(AULPHGMODS/PH955CLP) PARM('+chr(39)+ftpe+chr(39)+' ';
        str1:=str1+chr(39)+'P1'+chr(39)+' '+chr(39)+ordn+chr(39)+' '+chr(39)+ftpu+chr(39)+' ';
        str1:=str1+chr(39)+copy(jobn,1,4)+chr(39)+' '+chr(39)+copy(jobn,5,4)+chr(39)+' ';
        str1:=str1+chr(39)+copy(jobn,9,2)+copy(jobn,12,4)+chr(39)+')';
        assignfile(txtfile,'c:\temp\ftpcall.txt');
        try
          rewrite(txtfile);
          writeln(txtfile,ftpu);
          writeln(txtfile,ftpp);
          writeln(txtfile,str1);
        finally
          closefile(txtfile);
        end;

        assignfile(TXTFILE,'c:\temp\runftpcall.bat');
        try
          rewrite(txtfile);
          writeln(txtfile,'ftp -s:C:\TEMP\ftpcall.txt 10.1.1.8');
        finally
          closefile(txtfile);
        end;

        winexec(pansichar('C:\TEMP\runftpcall.bat'),sw_hide);

        sleep(10000);

        deletefile('C:\TEMP\runftpcall.bat');
        deletefile('C:\TEMP\ftpcall.txt');

        //*  get data from MR for FRN *//
        i1:=0;

        while i1<10000 do begin
          with query1 do begin
            close;
            sql.text:='select * from ault4f1.php73t where cono73=''P1'' and jobn73='''+jobn+'''';
            open;
            if not fieldbyname('jobn73').isnull then begin
              //* rebuild so line information for non workorder

              with Query2 do begin
                close;
                sql.text:='select * from ault4f1.php72t where cono72=''P1'' and cuso72='''+edit2.text+''' and opsq72=10 and jobn72='+jobn;
                open;
                first;
                while not eof do begin
                  if (Pos('FCP',Query2.fieldbyname('cstl72').value)=0) and (Pos('NCP',Query2.fieldbyname('cstl72').value)=0) and (Pos('MCP',Query2.fieldbyname('cstl72').value)=0) and (Pos('FUS',Query2.fieldbyname('cstl72').value)=0) then begin
                    with query3 do begin
                      close;
                      sql.text:='select avg(shrn28*100.00) as shrn from ault5f1.msp28 where cono28=''P1'' and prnt28='''+query2.fieldbyname('pstl72').value+''' and rtcd28='''+query2.fieldbyname('rtcd72').value+''' and comp28='''+query2.fieldbyname('cstl72').value+''' and cseq28<200';
                      open;
                    end;
                    if query3.FieldByName('shrn').IsNull then begin
                      with query3 do begin
                        close;
                        sql.text:='select avg(shrn42*100.00) as shrn from ault5f1.msp42 where cono42=''P1'' and word42='''+query2.fieldbyname('word72').value+''' and comp42='''+query2.fieldbyname('cstl72').value+''' and cseq42<200 and opsq42=10';
                        open;
                      end;
                    end;
                    with ADOQuery1 do begin
                      close;
                      params.Clear;
                      sql.text:='insert into phgdb..cut_frn_detail_sku(frn_id,frn_no,prjno,wono,stylno,clr,psiz,qty,mattype,itemcode,suppref,cacyy,wastage,jyl) '
                               +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14)';
                      parameters[0].Value:=frn_master.fieldbyname('frn_id').Value;
                      parameters[1].Value:=frn_master.fieldbyname('frn_no').Value;
                      parameters[2].Value:=query2.fieldbyname('cuso72').Value;
                      parameters[3].value:=query2.fieldbyname('word72').value;
                      parameters[4].Value:=query2.fieldbyname('pstl72').Value;
                      parameters[5].value:=query2.fieldbyname('pcol72').value;
                      parameters[6].value:=query2.fieldbyname('psiz72').value;
                      parameters[7].value:=query2.fieldbyname('qtor72').value;
                      parameters[8].Value:=copy(query2.fieldbyname('cstl72').Value,1,3);
                      if query2.FieldByName('pcol72').Value=query2.FieldByName('ccol72').value then
                      parameters[9].value:=query2.fieldbyname('cstl72').value
                      else Parameters[9].value:=query2.fieldbyname('cstl72').value+query2.fieldbyname('ccol72').Value;
                      parameters[10].Value:=Copy(query2.fieldbyname('cmpd72').Value,1,18);
                      parameters[11].value:=query2.fieldbyname('corq72').value;
                      if not query3.fieldbyname('shrn').isnull then
                      parameters[12].value:=query3.fieldbyname('shrn').value
                      else parameters[12].Value:=2.00;
                      Parameters[13].Value:=query2.FieldByName('qper72').Value;
                      ExecSQL;
                    end;
                  end;
                  application.ProcessMessages;
                  next;
                end;
              end;

              with adoquery1 do begin
                Close;
                Parameters.clear;
                SQL.text:='exec cut_genfrndetail :x1';
                Parameters[0].Value:=frn_master.fieldbyname('frn_id').value;
                ExecSQL;
              end;
              i1:=10000;
              //showmessage('Finished!');

              {
              with adoquery1 do begin
                close;
                parameters.clear;
                sql.text:='select max(frn_did) as did from phgdb..cut_frn_detail where frn_id=:x1';
                parameters[0].value:=frn_master.fieldbyname('frn_id').value;
                open;
                if not fieldbyname('did').isnull then did1:=fieldbyname('did').value else did1:=0;
              end;
              with query2 do begin
                close;
                sql.text:='select distinct cuso72,word72,pstl72,rtcd72,pcol72,cstl72,ccol72,substr(cmpd72,1,18) as suppref,sum(corq72) as cacyy,avg(qper72) as qper from ault4f1.php72t '
                         +'where cono72=''P1'' and cuso72='''+edit2.text+''' and opsq72=10 and jobn72='+jobn+' group by cuso72,word72,pstl72,rtcd72,pcol72,cstl72,ccol72,substr(cmpd72,1,18)';
                open;
                first;
                while not eof do begin
                  did1:=did1+1;
                  if (Pos('FCP',Query2.fieldbyname('cstl72').value)=0) and (Pos('NCP',Query2.fieldbyname('cstl72').value)=0) then begin
                    with query3 do begin
                      close;
                      sql.text:='select avg(shrn28*100.00) as shrn from ault5f1.msp28 where cono28=''P1'' and prnt28='''+query2.fieldbyname('pstl72').value+''' and rtcd28='''+query2.fieldbyname('rtcd72').value+''' and comp28='''+query2.fieldbyname('cstl72').value+''' and cseq28<200';
                      open;
                    end;
                    with adoquery1 do begin
                      close;
                      params.Clear;
                      sql.text:='insert into phgdb..cut_frn_detail(frn_id,frn_did,prjno,wono,stylno,clr,mattype,itemcode,suppref,cacyy,wastage) '
                               +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11)';
                      parameters[0].Value:=frn_master.fieldbyname('frn_id').Value;
                      parameters[1].value:=did1;
                      parameters[2].Value:=query2.fieldbyname('cuso72').Value;
                      parameters[3].value:=query2.fieldbyname('word72').value;
                      parameters[4].Value:=query2.fieldbyname('pstl72').Value;
                      parameters[5].value:=query2.fieldbyname('pcol72').value;
                      parameters[6].Value:=copy(query2.fieldbyname('cstl72').Value,1,3);
                      if query2.FieldByName('pcol72').Value=query2.FieldByName('ccol72').value then
                      parameters[7].value:=query2.fieldbyname('cstl72').value
                      else Parameters[7].value:=query2.fieldbyname('cstl72').value+query2.fieldbyname('ccol72').Value;
                      parameters[8].Value:=query2.fieldbyname('suppref').Value;
                      parameters[9].value:=query2.fieldbyname('cacyy').value;
                      parameters[10].value:=query3.fieldbyname('shrn').value;
                      execsql;
                    end;
                  end;
                  application.ProcessMessages;
                  next;
                end;
              end;

              i1:=10000;
              //showmessage('Finished!');
              }
            end;
          end;
          i1:=i1+1;
        end;
        {
        with adoquery1 do begin
          close;
          parameters.clear;
          sql.text:='exec phgdb..cut_updfrndetail :x1';
          parameters[0].value:=frn_master.fieldbyname('frn_id').value;
          execsql;
        end;
        }
        with frn_detail do begin
          close;
          commandtext:='select * from phgdb..cut_frn_detail where frn_id=:x1';
          parameters[0].Value:=frn_master.fieldbyname('frn_id').value;
          open;
        end;
        Edit2.text:='';
      end;
    end else showmessage('Please create a new FRN or choose an existed FRN first!');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmFRN.BitBtn3Click(Sender: TObject);
var
  d1,ym1,frn_sq1,frn_rev1,frn_s1,frn_no:string;
  y2,m2,d2:word;
  frn_id,frn_seq:integer;
begin
  screen.cursor:=crSQLWait;
  try
    if (dateedit1.date>0) and (combobox1.text>'') then begin
      label6.text:='Create';
      with adoquery1 do begin
        close;
        parameters.clear;
        sql.text:='select max(frn_id) as frnid from phgdb..cut_frn_master';
        open;
        if not fieldbyname('frnid').IsNull then frn_id:=fieldbyname('frnid').value+1 else frn_id:=1;
      end;
      d1:=combobox1.text;

      decodedate(dateedit1.date,y2,m2,d2);
      ym1:=copy(inttostr(y2),4,1)+cvtm1(m2);

      with adoquery1 do begin
        close;
        parameters.clear;
        sql.text:='select max(frn_seq) as frnseq from phgdb..cut_frn_master where frn_div=:x1 and datepart(m,frn_dt)=:x2';
        parameters[0].value:=combobox1.text;
        parameters[1].Value:=m2;
        open;
        if not fieldbyname('frnseq').IsNull then frn_seq:=fieldbyname('frnseq').value+1 else frn_seq:=1;
      end;
      //frn_sq1:=cvt_seq_za(frn_seq);
      frn_sq1:=copy('0'+inttostr(frn_seq),Length('0'+inttostr(frn_seq))-1,2);
      frn_rev1:='0';
      //frn_s1:='*';
      frn_s1:='M';

      frn_no:=d1+ym1+frn_sq1+frn_rev1+frn_s1;

      edit1.text:=frn_no;

      with adoquery1 do begin
        close;
        parameters.clear;
        sql.text:='insert into phgdb..cut_frn_master(frn_id,frn_no,frn_div,frn_dt,frn_seq) values(:x1,:x2,:x3,:x4,:x5)';
        parameters[0].value:=frn_id;
        parameters[1].value:=frn_no;
        parameters[2].value:=combobox1.text;
        parameters[3].value:=dateedit1.date;
        parameters[4].value:=frn_seq;
        execsql;
      end;
      
      openmaster;

    end else showmessage('Please input date and Division!');
  finally
    screen.cursor:=crDefault;
  end;
end;

function TfrmFRN.cvt_seq_za(const seq: integer): string;
var
  i1,i2:integer;
  s1,s2:string;
begin
  i1:=seq div 26;
  i2:=seq mod 26;

  if i2=0 then i1:=i1-1;
  s1:=cvts1(i1);
  s2:=cvts2(i2);

  result:=s1+s2;
end;

function TfrmFRN.cvts1(const s1: integer): string;
begin
  if s1=0 then result:='A'
  else if s1=1 then result:='B'
  else if s1=2 then result:='C'
  else if s1=3 then result:='D'
  else if s1=4 then result:='E'
  else if s1=5 then result:='F'
  else if s1=6 then result:='G'
  else if s1=7 then result:='H'
  else if s1=8 then result:='I'
  else if s1=9 then result:='J'
  else if s1=10 then result:='K'
  else if s1=11 then result:='L'
  else if s1=12 then result:='M'
  else if s1=13 then result:='N'
  else if s1=14 then result:='O'
  else if s1=15 then result:='P'
  else if s1=16 then result:='Q'
  else if s1=17 then result:='R'
  else if s1=18 then result:='S'
  else if s1=19 then result:='T'
  else if s1=20 then result:='U'
  else if s1=21 then result:='V'
  else if s1=22 then result:='W'
  else if s1=23 then result:='X'
  else if s1=24 then result:='Y'
  else if s1=25 then result:='Z';
end;

function TfrmFRN.cvts2(const s2: integer): string;
begin
  if s2=0 then result:='Z'
  else if s2=1 then result:='A'
  else if s2=2 then result:='B'
  else if s2=3 then result:='C'
  else if s2=4 then result:='D'
  else if s2=5 then result:='E'
  else if s2=6 then result:='F'
  else if s2=7 then result:='G'
  else if s2=8 then result:='H'
  else if s2=9 then result:='I'
  else if s2=10 then result:='J'
  else if s2=11 then result:='K'
  else if s2=12 then result:='L'
  else if s2=13 then result:='M'
  else if s2=14 then result:='N'
  else if s2=15 then result:='O'
  else if s2=16 then result:='P'
  else if s2=17 then result:='Q'
  else if s2=18 then result:='R'
  else if s2=19 then result:='S'
  else if s2=20 then result:='T'
  else if s2=21 then result:='U'
  else if s2=22 then result:='V'
  else if s2=23 then result:='W'
  else if s2=24 then result:='X'
  else if s2=25 then result:='Y';
end;

function TfrmFRN.cvtm1(const m1: integer): string;
begin
  {
  if m1<10 then result:=inttostr(m1)
  else if m1=10 then result:='O'
  else if m1=11 then result:='N'
  else if m1=12 then result:='D';
  }
  //{
    if m1=1 then result:='A'
    else if m1=2 then result:='B'
    else if m1=3 then result:='C'
    else if m1=4 then result:='D'
    else if m1=5 then result:='E'
    else if m1=6 then result:='F'
    else if m1=7 then result:='G'
    else if m1=8 then result:='H'
    else if m1=9 then result:='J'
    else if m1=10 then result:='K'
    else if m1=11 then result:='L'
    else if m1=12 then result:='M';
  //}
end;

procedure TfrmFRN.FormShow(Sender: TObject);
begin
  silang1.LoadAllFromFile('cutplan.sil',false);
  silang1.ActiveLanguage:=frmmain.SpinEdit1.value;
  dateedit1.date:=date;
end;

procedure TfrmFRN.BitBtn1Click(Sender: TObject);
begin
  if frmFRN_Review=nil then frmFRN_Review:=tfrmFRN_Review.create(nil);
  frmFRN_Review.Label3.caption:='1';
  frmFRN_Review.show;
end;

procedure TfrmFRN.SpeedButton2Click(Sender: TObject);
begin
  if frn_master.active then begin
    if application.messagebox('Delete this FRN?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
      with ADOQuery3 do begin
        Close;
        parameters.clear;
        SQL.Text:='insert into phgdb..cut_frn_delrec(usr,del_frnid,del_frnno,del_frnprj,del_tm) values(:x1,:x2,:x3,:x4,:x5)';
        Parameters[0].Value:=frmmain.ComboBox1.Text;
        parameters[1].Value:=frn_master.fieldbyname('frn_id').value;
        parameters[2].Value:=frn_master.fieldbyname('frn_no').value;
        if not frn_master.FieldByName('prjno').IsNull then
        parameters[3].Value:=frn_master.fieldbyname('prjno').value
        else Parameters[3].Value:='';
        Parameters[4].Value:=Now;
        ExecSQL;
      end;
      with adoquery1 do begin
        close;
        parameters.clear;
        sql.text:='delete from phgdb..cut_frn_detail where frn_id=:x1';
        parameters[0].Value:=frn_master.fieldbyname('frn_id').value;
        execsql;
        close;
        parameters.clear;
        sql.text:='delete from phgdb..cut_frn_master where frn_id=:x1';
        parameters[0].Value:=frn_master.fieldbyname('frn_id').value;
        execsql;
      end;
      frn_master.Close;
      frn_detail.Close;
      edit1.Text:='';
      Edit2.text:='';
    end;
  end;
end;

procedure TfrmFRN.SpeedButton3Click(Sender: TObject);
var
  prj1,wo1:string;
begin
  if edit1.text>'' then begin
    wo1:=' (無制單號)';
    prj1:='';
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='select prjno from phgdb..cut_frn_master where frn_no=:x1';
      parameters[0].value:=edit1.text;
      open;
      if not fieldbyname('prjno').isnull then prj1:=fieldbyname('prjno').value;
    end;
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='select wono from phgdb..cut_frn_detail where frn_id=:x1 and wono like ''W%''';
      parameters[0].value:=frn_master.FieldByName('frn_id').Value;
      open;
      if not fieldbyname('wono').isnull then wo1:=' (有制單號)';
    end;
    if frmcarte_mail=nil then frmcarte_mail:=tfrmcarte_mail.create(nil);
    frmcarte_mail.edit5.text:='FRN#: '+edit1.text+' (proj#: '+prj1+') 已建立, 請排PU嘜架並提供用量!'+wo1;
    frmcarte_mail.memo1.lines.add('Dear CAD,');
    frmcarte_mail.memo1.lines.add('');
    frmcarte_mail.memo1.lines.add('FRN#: '+edit1.text+' (proj#: '+prj1+') 已建立, 請排PU嘜架並提供用量!'+wo1);
    frmcarte_mail.show;
  end else showmessage('請選擇FRN#!');
end;

procedure TfrmFRN.SpeedButton9Click(Sender: TObject);
begin
  if frn_master.State=dsEdit then frn_master.Post;  
end;

procedure TfrmFRN.tcClick(Sender: TObject);
begin
  frmFRN.close;
end;

procedure TfrmFRN.BitBtn4Click(Sender: TObject);
begin
  if edit1.text>'' then begin
    if application.messagebox('Create a new revision?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
      label6.text:='Revise';
      with adoquery1 do begin
        close;
        parameters.clear;
        sql.text:='exec cut_newfrnrev :x1';
        parameters[0].value:=edit1.text;
        execsql;
      end;
      with adoquery1 do begin
        close;
        parameters.clear;
        sql.text:='select max(frn_no) as frnno from phgdb..cut_frn_master where frn_no like :x1';
        parameters[0].value:=copy(edit1.text,1,5)+'%';
        open;
        if not fieldbyname('frnno').isnull then edit1.Text:=fieldbyname('frnno').value;
      end;
      openmaster;
    end;
  end else showmessage('Please choose an existed FRN first!');
end;

procedure TfrmFRN.openmaster;
begin
  with frn_master do begin
    close;
    //parameters.clear;
    commandtext:='select * from phgdb..cut_frn_master where frn_no='''+edit1.text+'''';
    open;
  end;
end;

procedure TfrmFRN.dsfrn_masterDataChange(Sender: TObject; Field: TField);
begin
  if frn_master.state=dsbrowse then begin
    if not frn_master.FieldByName('frn_id').isnull then begin
      with frn_detail do begin
        close;
        //parameters.clear;
        commandtext:='select * from phgdb..cut_frn_detail where frn_id=:x1';
        parameters[0].Value:=frn_master.fieldbyname('frn_id').value;
        open;
      end;
    end;
  end;
end;

procedure TfrmFRN.SpeedButton1Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    exportGridToExcel(savedialog1.filename,cxgrid1,false,true,false,'xls');
  end;
end;

procedure TfrmFRN.frn_detailAfterOpen(DataSet: TDataSet);
var
  wo_qty:integer;
begin
  if not frn_detail.fieldbyname('frn_id').IsNull then begin
    wo_qty:=0;
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='select count(distinct prjno) as s0,count(distinct wono) as s1,count(distinct stylno) as s2,count(distinct mattype) as s4,count(distinct itemcode) as s5,count(distinct clr) as s6 '
               +'from phgdb..cut_frn_detail where frn_id='+frn_detail.fieldbyname('frn_id').asstring;
      open;
      if not fieldbyname('s0').isnull then cxView1.DataController.Summary.FooterSummaryValues[0]:=fieldbyname('s0').asstring;
      if not fieldbyname('s1').isnull then cxView1.DataController.Summary.FooterSummaryValues[1]:=fieldbyname('s1').asstring;
      if not fieldbyname('s2').isnull then cxView1.DataController.Summary.FooterSummaryValues[2]:=fieldbyname('s2').asstring;
      if not fieldbyname('s4').isnull then cxView1.DataController.Summary.FooterSummaryValues[4]:=fieldbyname('s4').asstring;
      if not fieldbyname('s5').isnull then cxView1.DataController.Summary.FooterSummaryValues[5]:=fieldbyname('s5').asstring;
      if not fieldbyname('s6').isnull then cxView1.DataController.Summary.FooterSummaryValues[6]:=fieldbyname('s6').asstring;
      close;
      parameters.clear;
      sql.text:='select distinct wono,max(wo_qty) as s3 '
               +'from phgdb..cut_frn_detail where frn_id='+frn_detail.fieldbyname('frn_id').asstring+' group by wono';
      open;
      while not eof do begin
        if not fieldbyname('s3').isnull then wo_qty:=wo_qty+fieldbyname('s3').value;
        next;
      end;
      cxView1.DataController.Summary.FooterSummaryValues[3]:=inttostr(wo_qty);
    end;
  end;
end;

procedure TfrmFRN.cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  str1:string;
begin
  str1:=Trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxView1DIFF_YY.Index], varString));
  if (AViewInfo.Item = cxView1DIFF_YY) then begin
    if str1='' then str1:='0';
    if StrToFloat(str1)<0 then ACanvas.Canvas.Font.Color:=clRed
    else ACanvas.Canvas.Font.Color:=clBlack;
  end;
end;

procedure TfrmFRN.BitBtn5Click(Sender: TObject);
begin
  bitbtn2click(Self);
  Edit2.Text:='';
  Edit2.SetFocus;
end;

procedure TfrmFRN.BitBtn6Click(Sender: TObject);
begin
  bitbtn2click(Self);
  close;
end;

procedure TfrmFRN.BitBtn7Click(Sender: TObject);
begin
  with adoquery1 do begin
    close;
    SQL.Text:='select r_ppmc,usr_name from tkt_yh where nam='''+frmmain.ComboBox1.Text+'''';
    Open;
    if FieldByName('r_ppmc').Value=true then begin
      if frn_master.Active then begin
        if frn_master.FieldByName('ppl2').isnull then begin
          if Application.MessageBox('Confirm this FRN?','1st Confirm by PPMC',MB_ICONQUESTION+mb_yesno)=IDYES then begin
             {
             with ADOQuery2 do begin
               close;
               sql.Text:='update cut_frn_master set ppl2=:x1,p2_dt=:x2 where frn_id='+frn_master.FieldByName('frn_id').AsString;
               Parameters[0].Value:=adoquery1.FieldByName('usr_name').Value;
               Parameters[1].Value:=now;
               execute;
             end;
             }
             frn_master.Edit;
             frn_master.FieldByName('ppl2').Value:=adoquery1.FieldByName('usr_name').Value;
             frn_master.FieldByName('p2_dt').Value:=date;
             frn_master.Post;
             Application.MessageBox('Confirmed!','Confirmation');
          end;
        end else Application.MessageBox('This FRN already confirmed by PPMC!','Confirmation');
      end;
    end else Application.MessageBox('You have not right!','Confirmation');
  end;
end;

procedure TfrmFRN.BitBtn8Click(Sender: TObject);
begin
  with adoquery1 do begin
    close;
    SQL.Text:='select r_cad,usr_name from tkt_yh where nam='''+frmmain.ComboBox1.Text+'''';
    Open;
    if FieldByName('r_cad').Value=true then begin
      if frn_master.Active then begin
        if frn_master.FieldByName('ppl2').IsNull then begin
          Application.MessageBox('PPMC still not confirm this FRN!','Confirmation');
        end else begin
          if frn_master.FieldByName('ppl3').isnull then begin
            if Application.MessageBox('Confirm this FRN?','2nd Confirm by CAD',MB_ICONQUESTION+mb_yesno)=IDYES then begin
               frn_master.Edit;
               frn_master.FieldByName('ppl3').Value:=adoquery1.FieldByName('usr_name').Value;
               frn_master.FieldByName('p3_dt').Value:=date;
               frn_master.Post;
               Application.MessageBox('Confirmed!','Confirmation');
            end;
          end else Application.MessageBox('This FRN already confirmed by CAD!','Confirmation');
        end;
      end;
    end else Application.MessageBox('You have not right!','Confirmation');
  end;
end;

procedure TfrmFRN.BitBtn9Click(Sender: TObject);
begin
  with adoquery1 do begin
    close;
    SQL.Text:='select r_cuthead,usr_name from tkt_yh where nam='''+frmmain.ComboBox1.Text+'''';
    Open;
    if FieldByName('r_cuthead').Value=true then begin
      if frn_master.Active then begin
        if frn_master.FieldByName('ppl3').IsNull then begin
          Application.MessageBox('CAD still not confirm this FRN!','Confirmation');
        end else begin
          if frn_master.FieldByName('ppl4').isnull then begin
            if Application.MessageBox('Approve this FRN?','Approval by Head of Cutting Dept',MB_ICONQUESTION+mb_yesno)=IDYES then begin
               frn_master.Edit;
               frn_master.FieldByName('ppl4').Value:=adoquery1.FieldByName('usr_name').Value;
               frn_master.FieldByName('p4_dt').Value:=date;
               frn_master.Post;
               Application.MessageBox('Approved!','Approval');
            end;
          end else Application.MessageBox('This FRN already approved by Head of Cutting Dept!','Approval');
        end;
      end;
    end else Application.MessageBox('You have not right!','Approval');
  end;
end;

end.
