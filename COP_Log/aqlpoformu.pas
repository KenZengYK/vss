unit aqlpoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, GridsEh, DBGridEh, DB,
  DBClient, Mask, DateUtils, rxToolEdit, DBGridEh2Excel_Joe, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxGridExportLink;

type
  Tfrmaqlpo = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Panel3: TPanel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Label6: TLabel;
    Edit3: TEdit;
    BitBtn3: TBitBtn;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox3: TComboBox;
    Edit6: TEdit;
    DBGridEh3: TDBGridEh;
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    Label11: TLabel;
    DateEdit2: TDateEdit;
    Label12: TLabel;
    Edit7: TEdit;
    Label13: TLabel;
    Edit8: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label14: TLabel;
    ComboBox4: TComboBox;
    Label15: TLabel;
    Edit9: TEdit;
    Label16: TLabel;
    ComboBox5: TComboBox;
    xh1: TCheckBox;
    BitBtn4: TBitBtn;
    SaveDialog1: TSaveDialog;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PONO: TcxGridDBColumn;
    cxGrid1DBTableView1CSTYLE: TcxGridDBColumn;
    cxGrid1DBTableView1DT: TcxGridDBColumn;
    cxGrid1DBTableView1AUD: TcxGridDBColumn;
    cxGrid1DBTableView1FTY: TcxGridDBColumn;
    cxGrid1DBTableView1ACOL1: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    cxGrid1DBTableView1CUST: TcxGridDBColumn;
    cxGrid1DBTableView1J2_JOB: TcxGridDBColumn;
    cxGrid1DBTableView1PLINE: TcxGridDBColumn;
    cxGrid1DBTableView1FLAG60: TcxGridDBColumn;
    cxGrid1DBTableView1ENDLINE: TcxGridDBColumn;
    cxGrid1DBTableView1J_NO: TcxGridDBColumn;
    cxGrid1DBTableView1CWO: TcxGridDBColumn;
    cxGrid1DBTableView1RWO: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure DBGridEh2TitleClick(Column: TColumnEh);
    procedure ComboBox1Change(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure ComboBox4Enter(Sender: TObject);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaqlpo: Tfrmaqlpo;

implementation

uses aqlmainformu, posplitformu, xtdlformu;

{$R *.dfm}

procedure Tfrmaqlpo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmaqlpo:=nil;
end;

procedure Tfrmaqlpo.FormShow(Sender: TObject);
var
y1,m1,d1:word;
begin
  decodedate(date,y1,m1,d1);
  label14.visible:=false;
  combobox4.visible:=false;
  tabsheet2.TabVisible:=false;
  tabsheet3.TabVisible:=false;
  if (frmxtdl.Query1.fieldbyname('r_inp').value=true) or (frmxtdl.Query1.fieldbyname('daql').value=true) then begin
    frmaqlpo.Caption:='QN ��';
    //tabsheet2.TabVisible:=false;
    tabsheet3.TabVisible:=true;
  end;
  //if (frmxtdl.Query1.fieldbyname('aql').value=true) or (frmxtdl.Query1.fieldbyname('faud').value=true) then begin
    //frmaqlpo.Caption:='PO (�X�P��)';
    //tabsheet3.TabVisible:=false;
    //tabsheet2.TabVisible:=true;
  //end;
  with query3 do begin
    close;
    params.clear;
    commandtext:='delete from tbl_aql_s0 where pono is null';
    execute;
  end;
  //{
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x0',ptinput);
    commandtext:='select * from tbl_aql_s0 where dt>=:x0';
      if frmxtdl.Query1.fieldbyname('r_inp').value=true then begin
        commandtext:=commandtext+' and endline<>0';
        if frmxtdl.Query1.fieldbyname('fty').value<>'PH' then
        commandtext:=commandtext+' and fty='''+frmxtdl.query1.fieldbyname('fty').value+'''';
      end;
      params[0].asdate:=encodedate(y1-1,m1,d1);//dateedit1.date;
    open;
  end;
  //}
  //if (frmxtdl.Query1.fieldbyname('r_inp').value=true) or (frmxtdl.Query1.fieldbyname('daql').value=true) then bitbtn3.Visible:=true
  //else bitbtn3.Visible:=false;
  checkbox1.visible:=false;
  checkbox2.Visible:=false;
end;

procedure Tfrmaqlpo.BitBtn1Click(Sender: TObject);
var
  seq,cols:integer;
  tm:tdatetime;
  pmt,pono:string;
  full_audit:boolean;
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    if not query1.fieldbyname('seq').isnull then begin
      frmaqlmain.Edit1.text:=query1.fieldbyname('pono').value;
      with frmaqlmain.qry_s0 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_aql_s0 where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        open;
      end;
      frmaqlpo.Close;
    end;
  end else if pagecontrol1.ActivePage=tabsheet2 then begin
    if not query2.fieldbyname('pono').isnull then begin
      if frmxtdl.Query1.fieldbyname('r_inp').value=true then pmt:='Create a new Full Inspection report?'
      else if frmxtdl.query1.FieldByName('daql').value=true then pmt:='Create a new Daily AQL report?'
      else pmt:='Create a new AQL report?';
      if application.MessageBox(pchar(pmt),'Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with query3 do begin
          close;
          params.clear;
          commandtext:='select max(seq) as q1 from tbl_aql_s0';
          open;
          if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
        end;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          //params.createparam(ftboolean,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          if frmxtdl.Query1.fieldbyname('r_inp').value=true then
          commandtext:='insert into tbl_aql_s0(seq,dt,fty,brand,cust,endline,pono,j_no,loc) values(:x1,:x2,:x3,:x4,:x5,1,:x7,:x8,:x9)'
          else
          commandtext:='insert into tbl_aql_s0(seq,dt,fty,brand,cust,endline,pono,j_no,loc) values(:x1,:x2,:x3,:x4,:x5,0,:x7,:x8,:x9)';
          params[0].asinteger:=seq;
          params[1].asdate:=date;
          params[2].asstring:='SL';
          params[3].AsString:='Gilly Hicks';
          if copy(query2.fieldbyname('j_no').value,1,4)='AGPO' then
          params[4].asstring:='AGPO'
          else if copy(query2.fieldbyname('j_no').value,1,4)='APWS' then
          params[4].asstring:='APWS'
          else if copy(query2.fieldbyname('j_no').value,1,4)='EBIM' then
          params[4].asstring:='EBIM'
          else if copy(query2.fieldbyname('j_no').value,1,4)='TAMA' then
          params[4].asstring:='TAMA'
          else if copy(query2.fieldbyname('j_no').value,1,4)='BALE' then
          params[4].asstring:='BALE'
          else if copy(query2.fieldbyname('j_no').value,1,4)='AFGH' then
          params[4].asstring:='AFGH'
          else params[4].asstring:=copy(query2.fieldbyname('j_no').value,1,4);
          //if frmxtdl.Query1.fieldbyname('r_inp').value=true then params[5].asboolean:=true
          //else params[5].asboolean:=false;
          params[5].asstring:=query2.fieldbyname('pono').value;
          params[6].asstring:=query2.fieldbyname('j_no').value;
          if frmxtdl.Query1.fieldbyname('fty').value='GG' then
          params[7].asstring:='GG' else params[7].asstring:='SL';
          execute;
        end;
        
        with query3 do begin
          close;
          params.clear;
          //commandtext:='select count(distinct b.acol) as cols from tbl_erpsopo a,tbl_lw00 b where a.j_no=b.j_no and a.ordline=b.ordline and a.pono='''+query2.fieldbyname('pono').value+'''';
          commandtext:='select count(distinct b.acol) as cols from tbl_erpsopo a,tbl_lw00 b where a.j_no=b.j_no and a.ordline=b.ordline and a.pono='''+query2.fieldbyname('pono').value+''' '
                      +'and b.j2_job='''+query2.fieldbyname('j2_job').value+'''';
          open;
          if not fieldbyname('cols').isnull then cols:=fieldbyname('cols').value else cols:=0;
        end;
        if cols<=11 then begin
          full_audit:=false;
          with query4 do begin
            close;
            params.clear;
            commandtext:='select full_audit from tbl_aql_cust where cust='''+copy(query2.fieldbyname('j_no').value,1,4)+'''';
            open;
            if not fieldbyname('full_audit').isnull then full_audit:=fieldbyname('full_audit').value;
          end;
          {
          if (copy(query2.fieldbyname('j_no').value,1,4)='AGPO') or (copy(query2.fieldbyname('j_no').value,1,4)='APWS') or (copy(query2.fieldbyname('j_no').value,1,4)='JAZC')
             or (copy(query2.fieldbyname('j_no').value,1,4)='ETAM') or (copy(query2.fieldbyname('j_no').value,1,4)='ETAA')
             or (copy(query2.fieldbyname('j_no').value,1,4)='ETAC') or (copy(query2.fieldbyname('j_no').value,1,4)='MNSU')
             or (copy(query2.fieldbyname('j_no').value,1,4)='INOV') or (copy(query2.fieldbyname('j_no').value,1,4)='BEND')
             or (copy(query2.fieldbyname('j_no').value,1,4)='ESSE') or (copy(query2.fieldbyname('j_no').value,1,4)='WARN') then begin
            //showmessage('0');
            }
          if (full_audit=true) then begin
            with query3 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftinteger,'x3',ptinput);
              params.createparam(ftstring,'x4',ptinput);
              params.createparam(ftstring,'x5',ptinput);
              params.createparam(ftstring,'x6',ptinput);
              params.createparam(ftstring,'x7',ptinput);
              //commandtext:='execute procedure sp_aql_gens_ap(:x1,:x2,:x3)';
              commandtext:='execute procedure sp_aql_gens_ap_new2(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
              params[0].asstring:=query2.fieldbyname('pono').value;
              params[1].asinteger:=query2.fieldbyname('ordline').value;
              params[2].asinteger:=seq;
              params[3].asstring:=query2.fieldbyname('sopno').value;
              params[4].asstring:=query2.fieldbyname('j2_job').value;
              params[5].asstring:=combobox4.text;
              params[6].asstring:=query2.fieldbyname('acol').value;
              execute;
            end;
            //showmessage('1');
          end else begin
            with query3 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='execute procedure sp_aql_gens(:x1,:x2)';
              params[0].asstring:=query2.fieldbyname('pono').value;
              params[1].asinteger:=seq;
              execute;
            end;
          end;
          frmaqlmain.Edit1.Text:=query2.fieldbyname('pono').value;
          with frmaqlmain.qry_s0 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='select * from tbl_aql_s0 where seq=:x1';
            params[0].asinteger:=seq;
            open;
          end;
          frmaqlmain.PageControl2.ActivePageIndex:=0;
          frmaqlpo.Close;
        end else begin
          tm:=now;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftdatetime,'x2',ptinput);
            commandtext:='execute procedure sp_aql_gens_col(:x1,:x2)';
            params[0].asstring:=query2.fieldbyname('pono').value;
            params[1].asdatetime:=tm;
            execute;
          end;
          if frmposplit=nil then frmposplit:=tfrmposplit.Create(nil);
          with frmposplit.Query1 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tbl_aql_tmpcol where tm=:x1';
            params[0].asdatetime:=tm;
            open;
          end;
          frmposplit.Edit1.text:=query2.fieldbyname('pono').value;
          frmposplit.SpinEdit1.Value:=seq;
          frmposplit.Show;
        end;
      end;
    end;
  end else if pagecontrol1.ActivePage=tabsheet3 then begin
    if query5.active then begin
      if frmxtdl.Query1.fieldbyname('r_inp').value=true then pmt:='Create a new Full Inspection report?'
      else if frmxtdl.query1.FieldByName('daql').value=true then pmt:='Create a new Daily AQL report?'; 
      if application.MessageBox(pchar(pmt),'Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with query3 do begin
          close;
          params.clear;
          commandtext:='select max(seq) as q1 from tbl_aql_s0';
          open;
          if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
        end;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select pono from tbl_erpsopo where sopno=:x1 and ordline=:x2';
          params[0].asstring:=query5.fieldbyname('sopno').value;
          params[1].asinteger:=query5.fieldbyname('ordline').value;
          open;
          if not fieldbyname('pono').isnull then pono:=fieldbyname('pono').value else pono:='';
        end;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          //params.createparam(ftboolean,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftstring,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          params.createparam(ftinteger,'x14',ptinput);
          params.createparam(ftstring,'x15',ptinput);
          params.createparam(ftstring,'x150',ptinput);
          params.createparam(ftstring,'x16',ptinput);
          params.createparam(ftstring,'x17',ptinput);
          //params.createparam(ftboolean,'x18',ptinput);
          //params.createparam(ftboolean,'x19',ptinput);
          params.createparam(ftstring,'x20',ptinput);
          params.createparam(ftstring,'x21',ptinput);
          if frmxtdl.Query1.fieldbyname('r_inp').value=true then begin
            commandtext:='insert into tbl_aql_s0(seq,dt,fty,brand,cust,endline,cstyle,acol1,flag6,j2_job,rwo,pline,flag60,scqty,pono,ver,j_no,ws,dailyaql,dailyaql1,loc,cwo) '
                        +'values(:x1,:x2,:x3,:x4,:x5,1,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x150,:x16,:x17,0,0,:x20,:x21)';
          end else begin
            if frmxtdl.Query1.fieldbyname('daql').value=true then begin
              if checkbox1.Checked then
              commandtext:='insert into tbl_aql_s0(seq,dt,fty,brand,cust,endline,cstyle,acol1,flag6,j2_job,rwo,pline,flag60,scqty,pono,ver,j_no,ws,dailyaql,dailyaql1,loc,cwo) '
                          +'values(:x1,:x2,:x3,:x4,:x5,0,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x150,:x16,:x17,0,1,:x20,:x21)'
              else if checkbox2.Checked then
              commandtext:='insert into tbl_aql_s0(seq,dt,fty,brand,cust,endline,cstyle,acol1,flag6,j2_job,rwo,pline,flag60,scqty,pono,ver,j_no,ws,dailyaql,dailyaql1,loc,cwo) '
                          +'values(:x1,:x2,:x3,:x4,:x5,0,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x150,:x16,:x17,1,0,:x20,:x21)';
            end else
              commandtext:='insert into tbl_aql_s0(seq,dt,fty,brand,cust,endline,cstyle,acol1,flag6,j2_job,rwo,pline,flag60,scqty,pono,ver,j_no,ws,dailyaql,dailyaql1,loc,cwo) '
                          +'values(:x1,:x2,:x3,:x4,:x5,0,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x150,:x16,:x17,0,0,:x20,:x21)';
          end;
          params[0].asinteger:=seq;
          params[1].asdate:=date;
          params[2].asstring:=query5.fieldbyname('tplant').value;
          params[3].AsString:=copy(query5.fieldbyname('j_no').value,1,4);
          params[4].asstring:=copy(query5.fieldbyname('j_no').value,1,4);
          //if frmxtdl.Query1.fieldbyname('r_inp').value=true then
          //params[5].asboolean:=true else params[5].asboolean:=false;
          params[5].asstring:=query5.fieldbyname('cstyle').value;
          params[6].asstring:=query5.fieldbyname('acol').value;
          params[7].asstring:=copy(query5.fieldbyname('flag6').value,1,1);
          params[8].asstring:=query5.fieldbyname('j2_job').value;
          params[9].asstring:=query5.fieldbyname('rwo').value;
          params[10].asstring:=query5.fieldbyname('pline').value;
          params[11].asstring:=query5.fieldbyname('fccs').value;
          params[12].asinteger:=query5.fieldbyname('scqty').value;
          params[13].asstring:=copy(pono,1,35);
          params[14].asstring:='1.0';
          params[15].asstring:=query5.fieldbyname('j_no').value;
          params[16].asstring:=copy(query5.fieldbyname('tshop').value,1,10);
          {
          if frmxtdl.Query1.fieldbyname('daql').value=true then begin
            if checkbox1.Checked then begin
              params[18].AsBoolean:=false;
              params[19].AsBoolean:=true;
            end else if checkbox2.Checked then begin
              params[18].AsBoolean:=true;
              params[19].AsBoolean:=false;
            end;
          end else begin
            params[18].AsBoolean:=false;
            params[19].AsBoolean:=false;
          end;
          }
          if frmxtdl.Query1.fieldbyname('fty').value='GG' then
          params[17].asstring:='GG' else params[17].asstring:='SL';
          if not query5.fieldbyname('cwo').isnull then
          params[18].asstring:=query5.fieldbyname('cwo').value
          else params[18].asstring:='1/1';
          //params[18].asboolean:=true else params[18].asboolean:=false;
          execute;
        end;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          if frmxtdl.Query1.fieldbyname('r_inp').value=true then
          commandtext:='execute procedure sp_aql_gens_insp(:x1)'
          else if frmxtdl.Query1.fieldbyname('daql').value=true then
          commandtext:='execute procedure sp_aql_gens_daql(:x1)';
          params[0].asinteger:=seq;
          execute;
        end;
          frmaqlmain.Edit1.Text:=pono;
          with frmaqlmain.qry_s0 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='select * from tbl_aql_s0 where seq=:x1';
            params[0].asinteger:=seq;
            open;
          end;
          frmaqlmain.PageControl2.ActivePageIndex:=0;
          frmaqlpo.Close;
      end;
    end;
  end;
end;

procedure Tfrmaqlpo.Edit1Change(Sender: TObject);
begin
  if edit1.text>'' then begin
    query2.EditKey;
    query2.IndexName:='idx1';
    query2.SetKey;
    query2.FindNearest([edit1.text]);
  end;
end;

procedure Tfrmaqlpo.Edit2Change(Sender: TObject);
begin
  if edit2.text>'' then begin
    query2.EditKey;
    query2.IndexName:='idx2';
    query2.SetKey;
    query2.FindNearest([edit2.text]);
  end;
end;

procedure Tfrmaqlpo.DBGridEh1TitleClick(Column: TColumnEh);
begin
  {
  if Column=dbgrideh1.Columns[1] then begin
    query1.EditKey;
    query1.IndexName:='idx5';
    query1.SetKey;
    query1.First;
  end else if Column=dbgrideh1.Columns[2] then begin
    query1.EditKey;
    query1.IndexName:='idx5';
    query1.SetKey;
    query1.First;
  end else if Column=dbgrideh1.Columns[3] then begin
    query1.EditKey;
    query1.IndexName:='idx4';
    query1.SetKey;
    query1.First;
  end;
  }
  try
  query1.editkey;
  if column=dbgrideh1.columns[0] then begin
    query1.indexfieldnames:='cust;j_no;j2_job;fty;ws;pline';
  end else if column=dbgrideh1.columns[3] then begin
    query1.indexfieldnames:='j_no;cust;j2_job;fty;ws;pline';
  end else if column=dbgrideh1.columns[4] then begin
    query1.indexfieldnames:='j2_job;cust;j_no;fty;ws;pline';
  end else if column=dbgrideh1.columns[7] then begin
    query1.indexfieldnames:='dt;cust;j_no;j2_job;fty;ws;pline';
  end else begin
    query1.indexfieldnames:=column.fieldname+';cust;j_no;j2_job;fty;ws;pline';
  end;
  query1.setkey;
  query1.first;
  except
    //query1.setkey;
    //query1.first;
    Abort;
  end;
end;

procedure Tfrmaqlpo.DBGridEh2TitleClick(Column: TColumnEh);
begin
  //
end;

procedure Tfrmaqlpo.ComboBox1Change(Sender: TObject);
var
  full_audit:boolean;
begin
  full_audit:=false;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select full_audit from tbl_aql_cust where cust='''+combobox1.text+'''';
    open;
    if not fieldbyname('full_audit').IsNull then full_audit:=fieldbyname('full_audit').value;
  end;
  if combobox1.text='SALL' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select a.*,b.cstyle,c.j2_job from tbl_erpsopo a,tbl_erpcstyle b,tbl_erpwo c '
                  +'where a.sopno=b.sopno and a.ordline=b.ordline and a.sopno=c.sopno and a.ordline=c.ordline and substr(a.j_no,1,4) in (''ANFF'',''SALL'',''AFGH'')';
      open;
    end;
  end else if combobox1.text='AFGH' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select a.*,b.cstyle from tbl_erpsopo a,tbl_erpcstyle b,tbl_erpwo c '
                  +'where a.sopno=b.sopno and a.ordline=b.ordline and a.sopno=c.sopno and a.ordline=c.ordline and substr(a.j_no,1,4) in (''AFGH'')';
      open;
    end;
  end else if (full_audit=true) then begin
  {
  if (combobox1.text='AGPO') or (combobox1.text='APWS') or (combobox1.text='JAZC') or (combobox1.text='ETAM') or (combobox1.text='ETAA')
  or (combobox1.text='ETAC') or (combobox1.text='MNSU') or (combobox1.text='ESSE') or (combobox1.text='WARN') or (combobox1.text='INOV') or (combobox1.text='BEND') then begin
  }
    with query2 do begin
      close;
      params.clear;
      commandtext:='select a.*,b.cstyle,c.j2_job,c.acol from tbl_erpsopo a,tbl_erpcstyle b,tbl_erpwo c '
                  +'where a.sopno=b.sopno and a.ordline=b.ordline and a.sopno=c.sopno and a.ordline=c.ordline and substr(a.j_no,1,4) in ('''+combobox1.text+''')';
      open;
    end;
  end else if combobox1.text='EBIM' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_erpsopo where substr(j_no,1,4) in (''EBIM'')';
      open;
    end;
  end else if combobox1.text='TAMA' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_erpsopo where substr(j_no,1,4) in (''TAMA'')';
      open;
    end;
  end else if combobox1.text='BALE' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_erpsopo where substr(j_no,1,4) in (''BALE'')';
      open;
    end;
  end else begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select a.*,b.cstyle,c.j2_job from tbl_erpsopo a,tbl_erpcstyle b,tbl_erpwo c '
                  +'where a.sopno=b.sopno and a.ordline=b.ordline and a.sopno=c.sopno and a.ordline=c.ordline and substr(a.j_no,1,4)='''+combobox1.text+'''';
      open;
    end;
  end;
  {
  if (combobox1.text='AGPO') or (combobox1.text='APWS') or (combobox1.text='JAZC') or (combobox1.text='ETAM') or (combobox1.text='ETAA')
     or (combobox1.text='ETAC') or (combobox1.text='MNSU') or (combobox1.text='ESSE') or (combobox1.text='WARN') or (combobox1.text='INOV') or (combobox1.text='BEND') then begin
  }
  if (full_audit=true) then begin
    label14.visible:=true;
    combobox4.Visible:=true;
  end else begin
    label14.visible:=false;
    combobox4.Visible:=false;
  end;
end;

procedure Tfrmaqlpo.DateEdit1Change(Sender: TObject);
var
y1,m1,d1:word;
begin
  decodedate(date,y1,m1,d1);
  if (dateedit1.date>0) and (dateedit2.date>0) then begin
    //query1.FindNearest(dateedit1.date);
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x0',ptinput);
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select * from tbl_aql_s0 a where dt>=:x0 and dt>=:x1 and dt<=:x2';
      if combobox2.text>'' then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
      if edit7.text>'' then commandtext:=commandtext+' and j_no='''+edit7.text+'''';
      if edit8.text>'' then commandtext:=commandtext+' and j2_job='''+edit8.text+'''';
      if edit9.text>'' then commandtext:=commandtext+' and pline='''+edit9.text+'''';
      if combobox5.text>'' then commandtext:=commandtext+' and fty='''+combobox5.text+'''';
      //{
      if frmxtdl.Query1.fieldbyname('r_inp').value=true then begin
        commandtext:=commandtext+' and endline<>0';
        if frmxtdl.Query1.fieldbyname('fty').value<>'PH' then
        commandtext:=commandtext+' and fty='''+frmxtdl.query1.fieldbyname('fty').value+'''';
      end else if frmxtdl.query1.fieldbyname('daql').value=true then begin
        commandtext:=commandtext+' and ((dailyaql<>0) or (dailyaql1<>0))';
        if frmxtdl.Query1.fieldbyname('fty').value<>'PH' then
        commandtext:=commandtext+' and fty='''+frmxtdl.query1.fieldbyname('fty').value+'''';
      end else commandtext:=commandtext+' and endline=0';
      //}
      if xh1.Checked then
      commandtext:=commandtext+' and not exists (select seq1 from tbl_aql_s4 b where a.seq=b.seq and ((major>0) or (minor>0)))';
      params[0].asdate:=encodedate(y1-1,m1,d1);//dateedit1.date;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      open;
    end;
  end else if (dateedit1.date>0) or (dateedit2.date>0) then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select * from tbl_aql_s0 a where dt=:x1';
      if combobox2.text>'' then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
      if edit7.text>'' then commandtext:=commandtext+' and j_no='''+edit7.text+'''';
      if edit8.text>'' then commandtext:=commandtext+' and j2_job='''+edit8.text+'''';
      if edit9.text>'' then commandtext:=commandtext+' and pline='''+edit9.text+'''';
      if combobox5.text>'' then commandtext:=commandtext+' and fty='''+combobox5.text+'''';
      //{
      if frmxtdl.Query1.fieldbyname('r_inp').value=true then begin
        commandtext:=commandtext+' and endline<>0';
        if frmxtdl.Query1.fieldbyname('fty').value<>'PH' then
        commandtext:=commandtext+' and fty='''+frmxtdl.query1.fieldbyname('fty').value+'''';
      end else if frmxtdl.query1.fieldbyname('daql').value=true then begin
        commandtext:=commandtext+' and  ((dailyaql<>0) or (dailyaql1<>0))';
        if frmxtdl.Query1.fieldbyname('fty').value<>'PH' then
        commandtext:=commandtext+' and fty='''+frmxtdl.query1.fieldbyname('fty').value+'''';
      end else commandtext:=commandtext+' and endline=0';
      //}
      if xh1.Checked then
      commandtext:=commandtext+' and not exists (select seq1 from tbl_aql_s4 b where a.seq=b.seq and ((major>0) or (minor>0)))';
      if dateedit1.date>0 then
      params[0].asdate:=dateedit1.date
      else if dateedit2.date>0 then
      params[0].asdate:=dateedit2.date;
      open;
    end;
  end else begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x0',ptinput);
      commandtext:='select * from tbl_aql_s0 a where dt>=:x0';
      if combobox2.text>'' then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
      if edit7.text>'' then commandtext:=commandtext+' and j_no='''+edit7.text+'''';
      if edit8.text>'' then commandtext:=commandtext+' and j2_job='''+edit8.text+'''';
      if edit9.text>'' then commandtext:=commandtext+' and pline='''+edit9.text+'''';
      if combobox5.text>'' then commandtext:=commandtext+' and fty='''+combobox5.text+'''';
      //{
      if frmxtdl.Query1.fieldbyname('r_inp').value=true then begin
        commandtext:=commandtext+' and endline<>0';
        if frmxtdl.Query1.fieldbyname('fty').value<>'PH' then
        commandtext:=commandtext+' and fty='''+frmxtdl.query1.fieldbyname('fty').value+'''';
      end else if frmxtdl.query1.fieldbyname('daql').value=true then begin
        commandtext:=commandtext+' and  ((dailyaql<>0) or (dailyaql1<>0))';
        if frmxtdl.Query1.fieldbyname('fty').value<>'PH' then
        commandtext:=commandtext+' and fty='''+frmxtdl.query1.fieldbyname('fty').value+'''';
      end else commandtext:=commandtext+' and endline=0';
      //}
      if xh1.Checked then
      commandtext:=commandtext+' and not exists (select seq1 from tbl_aql_s4 b where a.seq=b.seq and ((major>0) or (minor>0)))';
      params[0].asdate:=encodedate(y1-1,m1,d1);//dateedit1.date;
      open;
    end;
  end;
end;

procedure Tfrmaqlpo.Edit3Change(Sender: TObject);
begin
  if edit3.text>'' then begin
    query2.EditKey;
    query2.IndexName:='idx3';
    query2.SetKey;
    query2.FindNearest([edit3.text]);
  end;
end;

procedure Tfrmaqlpo.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    with query3 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_aql_updauditr';
      execute;
    end;
    //if (frmxtdl.Query1.fieldbyname('r_inp').value=true) or (frmxtdl.Query1.fieldbyname('daql').value=true) then bitbtn3.Visible:=true
    //else bitbtn3.Visible:=false;
  end else bitbtn3.Visible:=false;
  if pagecontrol1.ActivePageIndex=2 then begin
    {
    if frmxtdl.Query1.fieldbyname('daql').value=true then begin
      checkbox1.visible:=true;
      checkbox2.Visible:=true;
    end else begin
      checkbox1.visible:=false;
      checkbox2.Visible:=false;
    end;
    }
  end else begin
    checkbox1.visible:=false;
    checkbox2.Visible:=false;
  end;
end;

procedure Tfrmaqlpo.BitBtn3Click(Sender: TObject);
var
  seq:integer;
begin
        with query3 do begin
          close;
          params.clear;
          commandtext:='select max(seq) as q1 from tbl_aql_s0';
          open;
          if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
        end;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftboolean,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftstring,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          params.createparam(ftstring,'x14',ptinput);
          params.createparam(ftstring,'x15',ptinput);
          params.createparam(ftstring,'x16',ptinput);
          params.createparam(ftinteger,'x17',ptinput);
          params.createparam(ftstring,'x18',ptinput);
          params.createparam(ftstring,'x19',ptinput);
          params.createparam(ftboolean,'x20',ptinput);
          params.createparam(ftboolean,'x21',ptinput);
          params.createparam(ftboolean,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          commandtext:='insert into tbl_aql_s0(seq,dt,fty,brand,cust,endline,pono,cstyle,acol1,acl1,flag6,j2_job,rwo,pline,range,flag60,scqty,j_no,ws,hun_check,dailyaql,dailyaql1,ver,loc) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22,''1.0'',:x23)';
          params[0].asinteger:=seq;
          params[1].asdate:=date;
          params[2].asstring:=query1.fieldbyname('fty').value;
          params[3].AsString:=query1.fieldbyname('brand').value;
          params[4].asstring:=query1.fieldbyname('cust').value;
          params[5].asboolean:=query1.fieldbyname('endline').value;
          params[6].asstring:=query1.fieldbyname('pono').value;
          if not query1.fieldbyname('cstyle').isnull then
          params[7].asstring:=query1.fieldbyname('cstyle').value
          else params[7].asstring:='';
          if not query1.fieldbyname('acol1').isnull then
          params[8].asstring:=query1.fieldbyname('acol1').value
          else params[8].asstring:='';
          if not query1.fieldbyname('acl1').isnull then
          params[9].asstring:=query1.fieldbyname('acl1').value
          else params[9].asstring:='';
          if not query1.fieldbyname('flag6').isnull then
          params[10].asstring:=query1.fieldbyname('flag6').value
          else params[10].asstring:='';
          if not query1.fieldbyname('j2_job').isnull then
          params[11].asstring:=query1.fieldbyname('j2_job').value
          else params[11].asstring:='';
          if not query1.fieldbyname('rwo').isnull then
          params[12].asstring:=query1.fieldbyname('rwo').value
          else params[12].asstring:='';
          if not query1.fieldbyname('pline').isnull then
          params[13].asstring:=query1.fieldbyname('pline').value
          else params[13].asstring:='';
          if not query1.fieldbyname('range').isnull then
          params[14].asstring:=query1.fieldbyname('range').value
          else params[14].asstring:='';
          if not query1.fieldbyname('flag60').isnull then
          params[15].asstring:=query1.fieldbyname('flag60').value
          else params[15].asstring:='';
          params[16].asinteger:=query1.fieldbyname('scqty').value;
          if not query1.fieldbyname('j_no').isnull then
          params[17].asstring:=query1.fieldbyname('j_no').value
          else params[17].asstring:='';
          if not query1.fieldbyname('ws').IsNull then
          params[18].asstring:=query1.fieldbyname('ws').value
          else params[18].asstring:='';
          params[19].asboolean:=query1.fieldbyname('hun_check').value;
          params[20].asboolean:=query1.fieldbyname('dailyaql').value;
          params[21].asboolean:=query1.fieldbyname('dailyaql1').value;
          if query1.fieldbyname('loc').isnull then
          params[22].asstring:='SL'
          else params[22].asstring:=query1.fieldbyname('loc').value;
          execute;
        end;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_aql_copys1(:x1,:x2)';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          params[1].asinteger:=seq;
          execute;
        end; 
          frmaqlmain.Edit1.Text:=query1.fieldbyname('pono').value;
          with frmaqlmain.qry_s0 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='select * from tbl_aql_s0 where seq=:x1';
            params[0].asinteger:=seq;
            open;
          end;
          frmaqlmain.PageControl2.ActivePageIndex:=0;
          frmaqlpo.Close;
end;

procedure Tfrmaqlpo.BitBtn4Click(Sender: TObject);
begin
  try
  //if savedialog1.execute then begin
  //  if ExptoExcel(DBGridEh1,'Inspected Records','')=true then showmessage('OK');
  //end;
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
  finally

  end;
end;

procedure Tfrmaqlpo.ComboBox3Change(Sender: TObject);
begin
  //if combobox3.text>'' then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select a.*,case when yqlcrq1 is not null then yqlcrq1 else cast(yqlcrq as date) end as yqlcrqx from tblshedule a '
                  +'where yzh=0 and ((flag3 like ''%s%'' or flag31a=''s'') or ((flag3 like ''%x%'' or flag32a=''x'') and cfksrq>=:x1)) and rwo not like ''%P'' and case when yqlcrq1 is not null then yqlcrq1 else cast(yqlcrq as date) end>=:x2 ';
      if combobox3.text>'' then commandtext:=commandtext+'and j_no like '''+combobox3.text+'%''';
      if frmxtdl.query1.fieldbyname('fty').value<>'PH' then
      commandtext:=commandtext+' and tplant='''+frmxtdl.query1.fieldbyname('fty').value+'''';
      if edit4.text>'' then commandtext:=commandtext+' and pline='''+edit4.text+''' ';
      if edit5.text>'' then commandtext:=commandtext+' and j_no='''+edit5.text+''' ';
      if edit6.text>'' then commandtext:=commandtext+' and j2_job='''+edit6.text+''' ';
      params[0].asdate:=date-60;
      params[1].asdate:=date;
      open;
    end;
  //end;
end;

procedure Tfrmaqlpo.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select a.*,case when yqlcrq1 is not null then yqlcrq1 else cast(yqlcrq as date) end as yqlcrqx from tblshedule a '
                  +'where yzh=0 and ((flag3 like ''%s%'' or flag31a=''s'') or ((flag3 like ''%x%'' or flag32a=''x'') and cfksrq>=:x1)) and rwo not like ''%P'' and case when yqlcrq1 is not null then yqlcrq1 else cast(yqlcrq as date) end>=:x2 ';
      if combobox3.text>'' then commandtext:=commandtext+'and j_no like '''+combobox3.text+'%''';
      if frmxtdl.query1.fieldbyname('fty').value<>'PH' then
      commandtext:=commandtext+' and tplant='''+frmxtdl.query1.fieldbyname('fty').value+'''';
      if edit4.text>'' then commandtext:=commandtext+' and pline='''+edit4.text+''' ';
      if edit5.text>'' then commandtext:=commandtext+' and j_no='''+edit5.text+''' ';
      if edit6.text>'' then commandtext:=commandtext+' and j2_job='''+edit6.text+''' ';
      params[0].asdate:=date-60;
      params[1].asdate:=date;
      open;
    end;
  end;
end;

procedure Tfrmaqlpo.Edit4Change(Sender: TObject);
begin
  if edit4.text>'' then begin
    query5.EditKey;
    query5.IndexName:='idx1';
    query5.SetKey;
    query5.FindNearest([edit4.text]);
  end;
end;

procedure Tfrmaqlpo.Edit5Change(Sender: TObject);
begin
  if edit5.text>'' then begin
    query5.EditKey;
    query5.IndexName:='idx2';
    query5.SetKey;
    query5.FindNearest([edit5.text]);
  end;
end;

procedure Tfrmaqlpo.Edit6Change(Sender: TObject);
begin
  if edit6.text>'' then begin
    query5.EditKey;
    query5.IndexName:='idx3';
    query5.SetKey;
    query5.FindNearest([edit6.text]);
  end;
end;

procedure Tfrmaqlpo.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then checkbox2.Checked:=false
  else checkbox2.Checked:=true;
end;

procedure Tfrmaqlpo.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked then checkbox1.Checked:=false
  else checkbox1.Checked:=true;
end;

procedure Tfrmaqlpo.ComboBox4Enter(Sender: TObject);
var
  yr:integer;
begin
  combobox4.items.clear;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct pdn from tbl_pdn_m a where exists (select acol from tbl_pdn_rwo b where a.seq=b.seq and b.j2_job='''+query2.fieldbyname('j2_job').value+''' and b.acol='''+query2.fieldbyname('acol').value+''')';
    open;
    first;
    while not eof do begin
      combobox4.items.Add(fieldbyname('pdn').value);
      application.ProcessMessages;
      next;
    end;
  end;
  {
  yr:=yearof(date);
  if combobox1.text='AGPO' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct pdn from tbl_pdn_m where f_year(exfty)>=:x1 and pdn like ''%AG%''';
      params[0].asinteger:=yr-1;
      open;
      first;
      while not eof do begin
        combobox4.items.Add(fieldbyname('pdn').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else if combobox1.text='APWS' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct pdn from tbl_pdn_m where f_year(exfty)>=:x1 and pdn like ''%AP%''';
      params[0].asinteger:=yr-1;
      open;
      first;
      while not eof do begin
        combobox4.items.Add(fieldbyname('pdn').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else if combobox1.text='JAZC' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct pdn from tbl_pdn_m where f_year(exfty)>=:x1 and pdn like ''%JZ%''';
      params[0].asinteger:=yr-1;
      open;
      first;
      while not eof do begin
        combobox4.items.Add(fieldbyname('pdn').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else if combobox1.text='ETAM' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct pdn from tbl_pdn_m where f_year(exfty)>=:x1 and pdn like ''%ET%''';
      params[0].asinteger:=yr-1;
      open;
      first;
      while not eof do begin
        combobox4.items.Add(fieldbyname('pdn').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else if combobox1.text='ETAA' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct pdn from tbl_pdn_m where f_year(exfty)>=:x1 and pdn like ''%ET%''';
      params[0].asinteger:=yr-1;
      open;
      first;
      while not eof do begin
        combobox4.items.Add(fieldbyname('pdn').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else if combobox1.text='ETAC' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct pdn from tbl_pdn_m where f_year(exfty)>=:x1 and pdn like ''%ET%''';
      params[0].asinteger:=yr-1;
      open;
      first;
      while not eof do begin
        combobox4.items.Add(fieldbyname('pdn').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else if combobox1.text='MNSU' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct pdn from tbl_pdn_m where f_year(exfty)>=:x1 and pdn like ''%MS%''';
      params[0].asinteger:=yr-1;
      open;
      first;
      while not eof do begin
        combobox4.items.Add(fieldbyname('pdn').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  }
end;

end.
