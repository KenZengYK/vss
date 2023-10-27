unit Choose_ContractFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons, DB, ADODB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCurrencyEdit;

type
  Tfrmchoose_contract = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource4: TDataSource;
    qry2: TADOQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1contractno: TcxGridDBColumn;
    cxGrid1DBTableView1con_seq: TcxGridDBColumn;
    cxGrid1DBTableView1contractseqno: TcxGridDBColumn;
    cxGrid1DBTableView1hsname: TcxGridDBColumn;
    cxGrid1DBTableView1remarks: TcxGridDBColumn;
    cxGrid1DBTableView1c_name: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1hsunit: TcxGridDBColumn;
    cxGrid1DBTableView1curr: TcxGridDBColumn;
    qry1: TADODataSet;
    cxGrid1DBTableView1unitpx: TcxGridDBColumn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmchoose_contract: Tfrmchoose_contract;

implementation

uses mainformu, smpl_exportformu;

{$R *.dfm}

procedure Tfrmchoose_contract.BitBtn1Click(Sender: TObject);
var
  dup:string;
begin
  screen.cursor:=crSQLWait;
  try
    if frmsmpl_export.adodataset1.active=false then begin
      with frmsmpl_export.adodataset1 do begin
        close;
        commandtext:='select * from phdb..tbl_smpl_declare where shpno='''+frmsmpl_export.edit1.text+'''';
        open;
      end;
    end;
    if not qry1.fieldbyname('con_seq').isnull then begin
      dup:='0';
      with qry2 do begin
        close;
        sql.text:='select con_seq from phdb..tbl_smpl_declare where shpno='''+frmsmpl_export.edit1.text+''' and contractno='''+qry1.fieldbyname('contractno').value+''' and con_seq='+qry1.fieldbyname('con_seq').asstring;
        open;
        if not fieldbyname('con_seq').isnull then dup:='1';
      end;
      if dup='0' then begin
        {
        with frmsmpl_export.adodataset1 do begin
          append;
          fieldbyname('shpno').value:=frmsmpl_export.edit1.text;
          fieldbyname('contractno').value:=combobox1.text;
          fieldbyname('exfty').value:=date;
          fieldbyname('j_no').value:=qry1.fieldbyname('projectno').value;
          fieldbyname('j2_job').value:=qry1.fieldbyname('workno').value;
          fieldbyname('con_seq').value:=qry1.fieldbyname('seqno').value;
          if not qry1.fieldbyname('customseqno').isnull then
          fieldbyname('customseqno').value:=qry1.fieldbyname('customseqno').value;
          fieldbyname('unit').value:='PCS';
          fieldbyname('curr').value:='HKD';
          fieldbyname('shr').value:='PHG HK';
          fieldbyname('c_name').value:='';
          fieldbyname('box').value:=0;
          fieldbyname('wght').value:=0;
          fieldbyname('mz').value:=0;
          post;
        end;
        }
        with qry2 do begin
          close;
          sql.text:='insert into phdb..tbl_smpl_declare(shpno,contractno,exfty,con_seq,customseqno,hsname,remarks,c_name,hsunit,unit,curr,shr,box,wght,mz,unitpx) '
                    +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,''PCS'',''HKD'',''PHG HK'',0,0,0,:x10)';
          parameters[0].value:=frmsmpl_export.edit1.text;
          parameters[1].value:=combobox1.text;
          parameters[2].value:=date;
          parameters[3].value:=qry1.fieldbyname('con_seq').value;
          if not qry1.fieldbyname('contractseqno').isnull then
          parameters[4].value:=qry1.fieldbyname('contractseqno').value;
          parameters[5].value:=qry1.fieldbyname('hsname').value;
          parameters[6].value:=qry1.fieldbyname('remarks').value;
          if not qry1.fieldbyname('c_name').isnull then
          parameters[7].value:=qry1.fieldbyname('c_name').value;
          parameters[8].value:=qry1.fieldbyname('hsunit').value;
          if not qry1.fieldbyname('unitpx').isnull then
          parameters[9].value:=qry1.fieldbyname('unitpx').value
          else parameters[9].value:=0;
          execsql;
        end;
        with qry2 do begin
          close;
          sql.text:='exec phdb..sp_preshpadvice_export_sample :x1';
          parameters[0].value:=frmsmpl_export.edit1.text;
          open;
        end;
        frmsmpl_export.showsmpldata(frmsmpl_export.edit1.text);
      end else showmessage('此項已選過!');
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmchoose_contract.BitBtn3Click(Sender: TObject);
begin
  if qry1.state=dsedit then qry1.post;
end;

procedure Tfrmchoose_contract.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with qry1 do begin
      close;
      //sql.text:='select b.* from [ph.mr]..hscontractheader a,[ph.mr]..hscontractdetail b where a.hscontractid=b.hscontractid and a.hscontractno='''+combobox1.text+'''';
      commandtext:='select * from phdb..tbl_smpl_contract where contractno='''+combobox1.text+'''';
      open;
    end;
  end;
end;

procedure Tfrmchoose_contract.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmchoose_contract:=nil;
end;

procedure Tfrmchoose_contract.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with qry2 do begin
    close;
    sql.text:='select distinct contractno from phdb..tbl_smpl_contract';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('contractno').value);
      application.processmessages;
      next;
    end;
  end;
end;

end.
