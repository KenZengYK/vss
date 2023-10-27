﻿unit shpadvice2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, StdCtrls, Buttons, Spin, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ADODB, cxGridExportLink;

type
  Tfrmshpadvice2 = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    yEdit1: TSpinEdit;
    wEdit1: TSpinEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SaveDialog1: TSaveDialog;
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1shpno: TcxGridDBColumn;
    cxGrid1DBTableView1exfty: TcxGridDBColumn;
    cxGrid1DBTableView1shr: TcxGridDBColumn;
    cxGrid1DBTableView1con_seq: TcxGridDBColumn;
    cxGrid1DBTableView1hsname: TcxGridDBColumn;
    cxGrid1DBTableView1remarks: TcxGridDBColumn;
    cxGrid1DBTableView1c_name: TcxGridDBColumn;
    cxGrid1DBTableView1sqty: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1wght: TcxGridDBColumn;
    cxGrid1DBTableView1curr: TcxGridDBColumn;
    cxGrid1DBTableView1unitpx: TcxGridDBColumn;
    cxGrid1DBTableView1ttlpx: TcxGridDBColumn;
    cxGrid1DBTableView1box: TcxGridDBColumn;
    cxGrid1DBTableView1wght1: TcxGridDBColumn;
    cxGrid1DBTableView1mz: TcxGridDBColumn;
    cxGrid1DBTableView1contractno: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    BitBtn6: TBitBtn;
    cxGrid1DBTableView1xh: TcxGridDBColumn;
    cxGrid1DBTableView1customseqno: TcxGridDBColumn;
    cxGrid1DBTableView1hsunit: TcxGridDBColumn;
    cxGrid1DBTableView1sbqty: TcxGridDBColumn;
    chk01: TCheckBox;
    Edit1: TEdit;
    ADOQuery2: TADOQuery;
    chk02: TCheckBox;
    BitBtn7: TBitBtn;
    Query4: TClientDataSet;
    BitBtn8: TBitBtn;
    chk03: TCheckBox;
    ComboBox2: TComboBox;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure chk03Click(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure exportshpno(const shpno: String);
  end;

var
  frmshpadvice2: Tfrmshpadvice2;

implementation

uses mainformu, shpadviceformu, shpadvice1formu, shpexftyformu, exftyformu,
Smpl_ExportFormu, export_percentformu, Shp_ExportFormu;

{$R *.dfm}

procedure Tfrmshpadvice2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmshpadvice2:=nil;
end;

procedure Tfrmshpadvice2.FormShow(Sender: TObject);
begin
  //
    with adoquery2 do begin
      close;
      sql.text:='select perct from phdb..tbl_export_percent where eff_dt is null';
      open;
      if not fieldbyname('perct').isnull then
      edit1.text:=formatfloat('0.00',fieldbyname('perct').value);
    end;
end;

procedure Tfrmshpadvice2.BitBtn10Click(Sender: TObject);
begin
  if frmshp_export=nil then frmshp_export:=tfrmshp_export.create(nil);
  frmshp_export.show;
end;

procedure Tfrmshpadvice2.BitBtn1Click(Sender: TObject);
begin
  bitbtn4click(self);
  if not query1.FieldByName('tplant').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_updshpadvice(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('shpno').value;
      execute;
    end;
    if frmshpadvice1=nil then frmshpadvice1:=tfrmshpadvice1.Create(nil);

  with query3 do begin
    close;
    params.clear;
    commandtext:='select r_pack_pdn from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r_pack_pdn').value=true then begin
      frmshpadvice1.dbgrideh1.columns[15].readonly:=false;
      frmshpadvice1.dbgrideh1.columns[16].readonly:=false;
      frmshpadvice1.dbgrideh1.columns[17].readonly:=false;
      frmshpadvice1.dbgrideh1.columns[18].readonly:=false;
    end else begin
      frmshpadvice1.dbgrideh1.columns[15].readonly:=true;
      frmshpadvice1.dbgrideh1.columns[16].readonly:=true;
      frmshpadvice1.dbgrideh1.columns[17].readonly:=true;
      frmshpadvice1.dbgrideh1.columns[18].readonly:=true;
    end;
  end;

    frmshpadvice1.updcontractno(query1.fieldbyname('tplant').value,query1.fieldbyname('shpno').value);
    frmshpadvice1.Label2.Caption:=query1.fieldbyname('tplant').value;
    frmshpadvice1.Edit1.text:=query1.fieldbyname('shpno').value;
    if not query1.fieldbyname('declaration_no').isnull then
    frmshpadvice1.edit2.text:=query1.fieldbyname('declaration_no').value
    else frmshpadvice1.edit2.text:='';
    if not query1.fieldbyname('car_text').isnull then
    frmshpadvice1.edit3.text:=query1.fieldbyname('car_text').value
    else frmshpadvice1.edit3.text:='';
    frmshpadvice1.memo1.lines.clear;
    if not query1.fieldbyname('notepad').isnull then frmshpadvice1.memo1.lines.add(query1.fieldbyname('notepad').value);
    frmshpadvice1.Show;
  end;
  frmshpadvice2.Close;
end;

procedure Tfrmshpadvice2.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from tbl_pdn_shpadvice1 where tplant=:x1 and yr=:x2 and wk=:x3';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=yEdit1.value;
      params[2].asinteger:=wEdit1.Value;
      open;
    end;
  end else begin
    with Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from tbl_pdn_shpadvice1 where yr=:x2 and wk=:x3';
      params[0].asinteger:=yEdit1.value;
      params[1].asinteger:=wEdit1.Value;
      open;
    end;
  end;
end;

procedure Tfrmshpadvice2.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with adoquery2 do begin
    close;
    sql.text:='select distinct shpno from phdb..tbl_smpl_declare where shpno is not null';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('shpno').value);
      next;
    end;
  end;
end;

procedure Tfrmshpadvice2.exportshpno(const shpno: String);
var
  i:integer;
  s1,s2,s3:string;
begin
  screen.cursor:=crSQLWait;
  try
  s2:='';
  if DBGridEh1.SelectedRows.Count>0 then begin
    with DBGridEh1.DataSource.DataSet do begin
      for i:=0 to DBGridEh1.SelectedRows.Count-1 do begin
        GotoBookmark(pointer(DBGridEh1.SelectedRows.Items[i]));
        s3:=fields[0].value;
        s1:=fields[1].value;
        if s2>'' then s2:=s2+','+s1 else s2:=s1;

        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          commandtext:='execute procedure sp_pdn_updshpadvice_ttlpx_new(:x1,:x2)';
          params[0].asstring:=s3;
          params[1].asstring:=s1;
          execute;
        end;

        application.ProcessMessages;
      end;
    end;
    with adoquery1 do begin
      close;
      if chk02.checked then begin
        if chk01.checked then
        sql.text:='exec phdb..sp_preshpadvice_export_cmb_perct :x1,:x2,:x3'
        else sql.text:='exec phdb..sp_preshpadvice_export_perct :x1,:x2,:x3';
      end else begin
        if chk01.checked then
        sql.text:='exec phdb..sp_preshpadvice_export_cmb :x1,:x2,:x3'
        else sql.text:='exec phdb..sp_preshpadvice_export :x1,:x2,:x3';
      end;
      parameters[0].value:=shpno;
      parameters[1].value:=s2;
      if chk03.checked then parameters[2].value:=combobox2.text
      else parameters[2].value:='';
      open;
    end;
    savedialog1.filename:=shpno+'_Summary.xls';
    if savedialog1.Execute then begin
      ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmshpadvice2.BitBtn3Click(Sender: TObject);
begin
  if not query1.FieldByName('seq').IsNull then begin
    if application.MessageBox('Delete this shipping advice?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
       with query2 do begin
         close;
         params.clear;
         commandtext:='delete from tbl_pdn_shpadvice2 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
         execute;
         close;
         params.clear;
         commandtext:='delete from tbl_pdn_shpadvice1 where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+query1.fieldbyname('shpno').value+'''';
         execute;
       end;
       query1.Delete;
    end;
  end;
end;

procedure Tfrmshpadvice2.BitBtn2Click(Sender: TObject);
var
  shpno,ono:string;
  str1:string;
begin
  ono:=query1.fieldbyname('shpno').value;
  shpno:=inputbox('Change Shipping Advice #','Please input a new shipping advice #:',query1.fieldbyname('shpno').value);
  if (shpno>'') and (shpno<>ono) then begin
    {
    with query2 do begin
      close;
      params.clear;
      commandtext:='update tbl_pdn_shpadvice1 set shpno='''+shpno+''' where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+ono+'''';
      execute;
      close;
      params.clear;
      commandtext:='update tbl_pdn_shpadvice2 set shpno='''+shpno+''' where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+ono+'''';
      execute;
    end;
    }
    str1:='update tbl_pdn_shpadvice1 set shpno='''+shpno+''' where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+ono+'''';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    str1:='update tbl_pdn_shpadvice2 set shpno='''+shpno+''' where tplant='''+query1.fieldbyname('tplant').value+''' and shpno='''+ono+'''';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    with query1 do begin
      edit;
      fieldbyname('shpno').value:=shpno;
      post;
    end;
  end;
end;

procedure Tfrmshpadvice2.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='update tbl_pdn_shpadvice1 set exfty=:x1 where tplant=:x2 and shpno=:x3';

      if not query1.fieldbyname('exfty').isnull then
      params[0].asdate:=query1.fieldbyname('exfty').value;
      params[1].asstring:=query1.fieldbyname('tplant').value;
      params[2].asstring:=query1.fieldbyname('shpno').value;
      execute;
    end;
  end;
  }
      str1:='update tbl_pdn_shpadvice1 set ';
      if not query1.fieldbyname('exfty').isnull then
      str1:=str1+'exfty='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('exfty').value)+''','
      else str1:=str1+'exfty=null,';
      if not query1.fieldbyname('trdt').isnull then
      str1:=str1+'trdt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('trdt').value)+''','
      else str1:=str1+'trdt=null,';
      if not query1.fieldbyname('trcat').isnull then
      str1:=str1+'trcat='''+query1.fieldbyname('trcat').value+''' '
      else str1:=str1+'trcat=''On board date'' ';
      str1:=str1+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
      str1:=str1+'and shpno='''+query1.fieldbyname('shpno').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
end;

procedure Tfrmshpadvice2.BitBtn4Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmshpadvice2.BitBtn6Click(Sender: TObject);
begin
  if frmshpexfty=nil then frmshpexfty:=tfrmshpexfty.create(nil);
  frmshpexfty.caption:='出口報關單';
  frmshpexfty.DateEdit1.Date:=date;
  frmshpexfty.DateEdit2.Date:=date;
  frmshpexfty.label1.visible:=false;
  frmshpexfty.label4.visible:=true;
  frmshpexfty.dateedit1.visible:=false;
  frmshpexfty.edit1.visible:=true;
  frmshpexfty.show;
  frmshpexfty.edit1.setfocus;
end;

procedure Tfrmshpadvice2.BitBtn7Click(Sender: TObject);
var
  i:integer;
  s1,s2,s3:string;
begin
  screen.cursor:=crSQLWait;
  try
  s2:='';
  if DBGridEh1.SelectedRows.Count>0 then begin
    with DBGridEh1.DataSource.DataSet do begin
      for i:=0 to DBGridEh1.SelectedRows.Count-1 do begin
        GotoBookmark(pointer(DBGridEh1.SelectedRows.Items[i]));
        s1:=fields[0].value+'-'+fields[1].value;
        if s2>'' then s2:=s2+','+s1 else s2:=s1;
        application.ProcessMessages;
      end;
    end;
    if frmexfty=nil then frmexfty:=tfrmexfty.create(nil);
    with query2 do begin
      close;
      commandtext:='select * from tbl_pdn_exit where ex_shpno='''+s2+'''';
      open;
      if not fieldbyname('ex_no').isnull then begin
        frmexfty.edt1.text:=fieldbyname('ex_no').value;
        frmexfty._edt2.date:=fieldbyname('ex_dt').value;
        if not fieldbyname('ex_truck').isnull then
        frmexfty.edt2.text:=fieldbyname('ex_truck').value;
        if not fieldbyname('ex_box').isnull then
        frmexfty.edt3.text:=fieldbyname('ex_box').value;
        if not fieldbyname('ex_box1').isnull then
        frmexfty.edt4.text:=fieldbyname('ex_box1').value;
        if not fieldbyname('ex_count').isnull then
        frmexfty.edt5.text:=fieldbyname('ex_count').value;
        if not fieldbyname('ex_sign').isnull then
        frmexfty.edt6.text:=fieldbyname('ex_sign').value;
        if not fieldbyname('ex_secu').isnull then
        frmexfty.edt7.text:=fieldbyname('ex_secu').value;
        if not fieldbyname('ex_mz').isnull then
        frmexfty.edt8.text:=fieldbyname('ex_mz').value;
        if not fieldbyname('ex_nw').isnull then
        frmexfty.edt9.text:=fieldbyname('ex_nw').value;
        if not fieldbyname('ex_sign_d').isnull then
        frmexfty.edt10.text:=fieldbyname('ex_sign_d').value;
        if not fieldbyname('ex_sign_d_dt').isnull then
        frmexfty.DtEdit1.date:=fieldbyname('ex_sign_d_dt').value;
      end else begin
        s3:='';
        with query3 do begin
          close;
          commandtext:='select max(ex_no) as s3 from tbl_pdn_exit';
          open;
          if not fieldbyname('s3').isnull then begin
            s3:=inttostr(strtoint(copy(fieldbyname('s3').value,3,7))+1);
            s3:=copy('000000'+s3,length('000000'+s3)-6,7);
            s3:='EX'+s3;
          end else begin
            s3:='EX0010001';
          end;
        end;
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          commandtext:='insert into tbl_pdn_exit(ex_no,ex_dt,ex_shpno) values(:x1,:x2,:x3)';
          params[0].asstring:=s3;
          params[1].asdate:=date;
          params[2].asstring:=s2;
          execute;
        end;
        frmexfty.edt1.text:=s3;
        frmexfty._edt2.date:=date;
      end;
    end;
    frmexfty.show;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmshpadvice2.BitBtn8Click(Sender: TObject);
begin
  if frmsmpl_export=nil then frmsmpl_export:=tfrmsmpl_export.create(nil);
  frmsmpl_export.show;
end;

procedure Tfrmshpadvice2.BitBtn9Click(Sender: TObject);
var
  r53:boolean;
begin
  //status change to "20" for manifest confirmation
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r58 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r58').isnull then r53:=fieldbyname('r58').value else r53:=false;
  end;
  if r53 then begin
    if frmexport_percent=nil then frmexport_percent:=tfrmexport_percent.create(nil);
    frmexport_percent.windowstate:=wsMaximized;
    frmexport_percent.show;
  end else showmessage('You have not right!');
end;

procedure Tfrmshpadvice2.chk03Click(Sender: TObject);
begin
  combobox2.enabled:=chk03.checked;
end;

end.
