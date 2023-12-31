unit addgxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, DBCtrls, ExtCtrls, Buttons, Mask, ExtDlgs, ADODB,
  DBClient,Variants;

type
  Tfrmaddgx = class(TForm)
    op1: TDBCheckBox;
    op2: TDBCheckBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn2: TBitBtn;
    DBComboBox1: TDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    SpeedButton2: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Table1: TClientDataSet;
    Query4: TClientDataSet;
    Query3: TClientDataSet;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    Table1Cz: TStringField;
    Table1Id: TIntegerField;
    Table1Dh: TStringField;
    Table1Mc: TStringField;
    Table1Sj: TFloatField;
    Table1Dj1: TFloatField;
    Table1Dj2: TFloatField;
    Table1Czxh: TStringField;
    Table1Yzjzb: TStringField;
    Table1Mx: TStringField;
    Table1Dx: TStringField;
    Table1Cfzkcc: TFloatField;
    Table1Zzkcc: TFloatField;
    Table1Dzkcc: TFloatField;
    Table1Zj: TFloatField;
    Table1Zf: TFloatField;
    Table1Fryd: TStringField;
    Table1Tplj: TStringField;
    Table1Wjm: TStringField;
    Table1Cza: TBooleanField;
    Table1Fha: TBooleanField;
    Table1Bzdj: TFloatField;
    Table1Czbh: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure op2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Table1SjChange(Sender: TField);
    procedure Table1BzdjChange(Sender: TField);
    procedure table1NewRecord(DataSet: TDataSet);
    procedure Table1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaddgx: Tfrmaddgx;

implementation

uses gxfxbu, dlu;

{$R *.DFM}

procedure Tfrmaddgx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmaddgx.SpeedButton2Click(Sender: TObject);
begin
  openpicturedialog1.execute;
  if dbcombobox1.text<>'' then
  begin
    table1.edit;
    dbedit6.text:=openpicturedialog1.filename;
    //table1.post;
  end;
end;

procedure Tfrmaddgx.op1Click(Sender: TObject);
begin
  if op1.checked=true then
  begin
    op2.checked:=false;
    label1.visible:=true;
    label2.visible:=false;
    dbcombobox1.items.clear;
    query1.close;
    query1.params.clear;
    query1.commandtext:='select * from IE_cz';
    query1.open;
    if query1.recordcount>0 then
    begin
      query1.first;
      while not query1.eof do
      begin
        dbcombobox1.items.add(query1.fieldbyname('cz').value);
        query1.next;
      end;
    end;
  end
  else
  begin
    op2.checked:=true;
    label2.visible:=true;
    label1.visible:=false;
    dbcombobox1.items.clear;
    query1.close;
    query1.params.clear;
    query1.commandtext:='select * from IE_fh';
    query1.open;
    if query1.recordcount>0 then
    begin
      query1.first;
      while not query1.eof do
      begin
        dbcombobox1.items.add(query1.fieldbyname('cz').value);
        query1.next;
      end;
    end;
  end;
end;

procedure Tfrmaddgx.op2Click(Sender: TObject);
begin
  if op2.checked=false then
  begin
    op1.checked:=true;
    label1.visible:=true;
    label2.visible:=false;
    dbcombobox1.items.clear;
    query1.close;
    query1.params.clear;
    query1.commandtext:='select * from IE_cz';
    query1.open;
    if query1.recordcount>0 then
    begin
      query1.first;
      while not query1.eof do
      begin
        dbcombobox1.items.add(query1.fieldbyname('cz').value);
        query1.next;
      end;
    end;
  end
  else
  begin
    op1.checked:=false;
    label2.visible:=true;
    label1.visible:=false;
    dbcombobox1.items.clear;
    query1.close;
    query1.params.clear;
    query1.commandtext:='select * from IE_fh';
    query1.open;
    if query1.recordcount>0 then
    begin
      query1.first;
      while not query1.eof do
      begin
        dbcombobox1.items.add(query1.fieldbyname('cz').value);
        query1.next;
      end;
    end;
  end;
end;

procedure Tfrmaddgx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  query2.close;
  query2.params.clear;
  query2.commandtext:='select * from IE_lsgx';
  query2.open;
  if query2.recordcount>0 then
  begin
    query2.first;
    while not query2.eof do
    begin
      if (query2.fieldbyname('cz').isnull) or (query2.fieldbyname('mc').isnull) then
       query2.delete;
      query2.next;
    end;
  end;
  if (Table1.state=dsedit) or (Table1.state=dsinsert) then table1.post;
  if dbcombobox1.text<>'' then
  begin
    if table1.fieldbyname('cza').value=1 then
    begin
      query2.close;
      query2.params.clear;
      Query2.params.CreateParam(ftstring,'gxm',ptinput);
      Query2.params.CreateParam(ftstring,'cf',ptinput);
      query2.commandtext:='select gxm from IE_gxfxb where gxm=:gxm and cf=:cf';
//      query2.prepare;
      query2.params[0].value:=dbedit2.text;
      query2.params[1].value:='車種';
      query2.open;
      if query2.recordcount>0 then
      begin
        //frmgxfxb.gxfxb.FindNearest([dbedit2.text,'車種']);
        frmgxfxb.gxfxb.locate('gxm;cf',vararrayof([dbedit2.text,'車種']),[lopartialkey]);
      end
      else
      begin
        frmgxfxb.gxfxb.append;
        frmgxfxb.gxfxb.fieldbyname('gxm').value:=dbedit2.text;
        frmgxfxb.gxfxb.fieldbyname('cf').value:='車種';
        frmgxfxb.gxfxb.post;
        //frmgxfxb.gxfxb.FindNearest([dbedit2.text,'車種']);
        frmgxfxb.gxfxb.locate('gxm;cf',vararrayof([dbedit2.text,'車種']),[lopartialkey]);
      end;
    end
    else
    begin
      query2.close;
      query2.params.clear;
      Query3.params.createparam(ftstring,'gxm',ptinput);
      Query3.params.createparam(ftstring,'cf',ptinput);      
      query2.commandtext:='select gxm from IE_gxfxb where gxm=:gxm and cf=:cf';
//      query2.prepare;
      query2.params[0].value:=dbedit2.text;
      query2.params[1].value:='縫合';
      query2.open;
      if query2.recordcount>0 then
      begin
        //frmgxfxb.gxfxb.FindNearest([dbedit2.text,'縫合']);
        frmgxfxb.gxfxb.locate('gxm;cf',vararrayof([dbedit2.text,'縫合']),[lopartialkey]);
      end
      else
      begin
        frmgxfxb.gxfxb.append;
        frmgxfxb.gxfxb.fieldbyname('gxm').value:=dbedit2.text;
        frmgxfxb.gxfxb.fieldbyname('cf').value:='縫合';
        frmgxfxb.gxfxb.post;
        //frmgxfxb.gxfxb.refresh;
        //frmgxfxb.gxfxb.FindNearest([dbedit2.text,'縫合']);
        frmgxfxb.gxfxb.locate('gxm;cf',vararrayof([dbedit2.text,'縫合']),[lopartialkey]);
      end;
    end;
  end;
end;

procedure Tfrmaddgx.FormShow(Sender: TObject);
begin
  if (Table1.state=dsedit) or (Table1.state=dsinsert) then table1.post;
  query4.close;
  query4.params.clear;
  Query4.params.CreateParam(ftstring,'nam',ptinput);
  query4.commandtext:='select r11,r12,r13 from IE_qx where nam=:nam';
//  query4.prepare;
  query4.params[0].value:=frmxtdl.combobox1.text;
  query4.open;
  if query4.recordcount>0 then
  begin
    if query4.fieldbyname('r11').value=1 then
     bitbtn4.enabled:=true
    else bitbtn4.enabled:=false;
    if query4.fieldbyname('r12').value=1 then
     bitbtn3.enabled:=true
    else bitbtn3.enabled:=false;
    if query4.fieldbyname('r13').value=1 then
     bitbtn1.enabled:=true
    else bitbtn1.enabled:=false;
  end;
end;

procedure Tfrmaddgx.BitBtn3Click(Sender: TObject);
begin
  op1.enabled:=true;
  op2.enabled:=true;
  dbcombobox1.enabled:=true;
  dbedit1.enabled:=true;
  dbedit2.enabled:=true;
  dbedit3.enabled:=true;
  dbedit4.enabled:=true;
  dbedit5.enabled:=true;
  dbedit6.enabled:=true;
  dbedit7.enabled:=true;
  dbedit8.enabled:=true;
  dbedit9.enabled:=true;
  dbedit10.enabled:=true;
  dbedit11.enabled:=true;
  dbedit12.enabled:=true;
  dbedit13.enabled:=true;
  dbedit14.enabled:=true;
  dbedit15.enabled:=true;
  dbedit17.enabled:=true;
  speedbutton2.enabled:=true;
end;

procedure Tfrmaddgx.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  op1.enabled:=false;
  op2.enabled:=false;
  dbcombobox1.enabled:=false;
  dbedit1.enabled:=false;
  dbedit2.enabled:=false;
  dbedit3.enabled:=false;
  dbedit4.enabled:=false;
  dbedit5.enabled:=false;
  dbedit6.enabled:=false;
  dbedit7.enabled:=false;
  dbedit8.enabled:=false;
  dbedit9.enabled:=false;
  dbedit10.enabled:=false;
  dbedit11.enabled:=false;
  dbedit12.enabled:=false;
  dbedit13.enabled:=false;
  dbedit14.enabled:=false;
  dbedit15.enabled:=false;
  dbedit17.enabled:=false;
  speedbutton2.enabled:=false;
end;

procedure Tfrmaddgx.BitBtn1Click(Sender: TObject);
begin
  if table1.recordcount>0 then
  begin
    if table1.fieldbyname('cza').value=1 then
    begin
      query3.close;
      query3.params.clear;
      Query3.params.createparam(ftstring,'cz',ptinput);
      Query3.params.createparam(ftstring,'mc',ptinput);
      query3.commandtext:='select * from IE_bzgx where cz=:cz and mc=:mc';
//      query3.prepare;
      query3.params[0].value:=dbcombobox1.text;
      query3.params[1].value:=dbedit2.text;
      query3.open;
      if query3.recordcount>0 then
      begin
        //application.messagebox('此工序已存在!','提示信息',mb_iconinformation+mb_ok);
        query3.edit;
        if not table1.fieldbyname('dh').isnull then
        query3.fieldbyname('dh').value:=table1.fieldbyname('dh').value;
        query3.fieldbyname('nd').value:=1;
        if not table1.fieldbyname('sj').isnull then
        query3.fieldbyname('sj').value:=table1.fieldbyname('sj').value;
        if not table1.fieldbyname('dj1').isnull then
        query3.fieldbyname('dj1').value:=table1.fieldbyname('dj1').value;
        if not table1.fieldbyname('dj1').isnull then
        query3.fieldbyname('dj2').value:=table1.fieldbyname('dj1').value;
        query3.fieldbyname('sj1').value:=query3.fieldbyname('sj').value*query3.fieldbyname('ndxs').value;
        query3.fieldbyname('sj2').value:=query3.fieldbyname('sj1').value*query3.fieldbyname('cdxs').value;
        if not table1.fieldbyname('czxh').isnull then
        query3.fieldbyname('czxh').value:=table1.fieldbyname('czxh').value;
        if not table1.fieldbyname('yzjzb').isnull then
        query3.fieldbyname('yzjzb').value:=table1.fieldbyname('yzjzb').value;
        if not table1.fieldbyname('dx').isnull then
        query3.fieldbyname('dx').value:=table1.fieldbyname('dx').value;
        if not table1.fieldbyname('mx').isnull then
        query3.fieldbyname('mx').value:=table1.fieldbyname('mx').value;
        if not table1.fieldbyname('cfzkcc').isnull then
        query3.fieldbyname('cfzkcc').value:=table1.fieldbyname('cfzkcc').value;
        if not table1.fieldbyname('dzkcc').isnull then
        query3.fieldbyname('dzkcc').value:=table1.fieldbyname('dzkcc').value;
        if not table1.fieldbyname('zzkcc').isnull then
        query3.fieldbyname('zzkcc').value:=table1.fieldbyname('zzkcc').value;
        if not table1.fieldbyname('zj').isnull then
        query3.fieldbyname('zj').value:=table1.fieldbyname('zj').value;
        if not table1.fieldbyname('zf').isnull then
        query3.fieldbyname('zf').value:=table1.fieldbyname('zf').value;
        if not table1.fieldbyname('fryd').isnull then
        query3.fieldbyname('fryd').value:=table1.fieldbyname('fryd').value;
        if not table1.fieldbyname('tplj').isnull then
        query3.fieldbyname('tplj').value:=table1.fieldbyname('tplj').value;
        if not table1.fieldbyname('czbh').isnull then
        query3.fieldbyname('czbh').value:=table1.fieldbyname('czbh').value;
        if not table1.fieldbyname('bzdj').isnull then
        query3.fieldbyname('bzdj').value:=table1.fieldbyname('bzdj').value;
        query3.post;
      end
      else
      begin
        query2.close;
        query2.params.clear;
        Query2.params.createparam(ftstring,'cz',ptinput);
        query2.commandtext:='select * from IE_cz where cz=:cz';
//        query2.prepare;
        query2.params[0].value:=dbcombobox1.text;
        query2.open;
        if query2.recordcount=0 then
        begin
          query2.close;
          query2.params.clear;
          query2.commandtext:='select * from IE_cz';
          query2.open;
          query2.append;
          query2.fieldbyname('cz').value:=dbcombobox1.text;
          query2.post;
        end;
        query2.close;
        query2.params.clear;
        query2.commandtext:='select * from IE_bzgx';
        query2.open;
        query2.append;
        query2.fieldbyname('cz').value:=dbcombobox1.text;
        if not table1.fieldbyname('dh').isnull then
        query2.fieldbyname('dh').value:=table1.fieldbyname('dh').value;
        if not table1.fieldbyname('mc').isnull then
        query2.fieldbyname('mc').value:=table1.fieldbyname('mc').value;
        query2.fieldbyname('nd').value:=1;
        if not table1.fieldbyname('sj').isnull then
        query2.fieldbyname('sj').value:=table1.fieldbyname('sj').value;
        if not table1.fieldbyname('dj1').isnull then
        query2.fieldbyname('dj1').value:=table1.fieldbyname('dj1').value;
        if not table1.fieldbyname('dj2').isnull then
        query2.fieldbyname('dj2').value:=table1.fieldbyname('dj1').value;
        query2.fieldbyname('ndxs').value:=1;
        query2.fieldbyname('cdxs').value:=1;
        query2.fieldbyname('sj1').value:=query2.fieldbyname('sj').value;
        query2.fieldbyname('sj2').value:=query2.fieldbyname('sj').value;
        if not table1.fieldbyname('czxh').isnull then
        query2.fieldbyname('czxh').value:=table1.fieldbyname('czxh').value;
        if not table1.fieldbyname('yzjzb').isnull then
        query2.fieldbyname('yzjzb').value:=table1.fieldbyname('yzjzb').value;
        if not table1.fieldbyname('dx').isnull then
        query2.fieldbyname('dx').value:=table1.fieldbyname('dx').value;
        if not table1.fieldbyname('mx').isnull then
        query2.fieldbyname('mx').value:=table1.fieldbyname('mx').value;
        if not table1.fieldbyname('cfzkcc').isnull then
        query2.fieldbyname('cfzkcc').value:=table1.fieldbyname('cfzkcc').value;
        if not table1.fieldbyname('dzkcc').isnull then
        query2.fieldbyname('dzkcc').value:=table1.fieldbyname('dzkcc').value;
        if not table1.fieldbyname('zzkcc').isnull then
        query2.fieldbyname('zzkcc').value:=table1.fieldbyname('zzkcc').value;
        if not table1.fieldbyname('zj').isnull then
        query2.fieldbyname('zj').value:=table1.fieldbyname('zj').value;
        if not table1.fieldbyname('zf').isnull then
        query2.fieldbyname('zf').value:=table1.fieldbyname('zf').value;
        if not table1.fieldbyname('fryd').isnull then
        query2.fieldbyname('fryd').value:=table1.fieldbyname('fryd').value;
        if not table1.fieldbyname('tplj').isnull then
        query2.fieldbyname('tplj').value:=table1.fieldbyname('tplj').value;
        if not table1.fieldbyname('czbh').isnull then
        query2.fieldbyname('czbh').value:=table1.fieldbyname('czbh').value;
        if not table1.fieldbyname('bzdj').isnull then
        query2.fieldbyname('bzdj').value:=table1.fieldbyname('bzdj').value;
        query2.post;
      end;
    end
    else
    begin
     if table1.fieldbyname('fha').value=1 then
     begin
      query3.close;
      query3.params.clear;
      Query3.params.createparam(ftstring,'cz',ptinput);
      Query3.params.createparam(ftstring,'mc',ptinput);
      query3.commandtext:='select * from IE_bzgx1 where cz=:cz and mc=:mc';
//      query3.prepare;
      query3.params[0].value:=dbcombobox1.text;
      query3.params[1].value:=dbedit2.text;
      query3.open;
      if query3.recordcount>0 then
      begin
        //application.messagebox('此工序已存在!','提示信息',mb_iconinformation+mb_ok);
        query3.edit;
        if not table1.fieldbyname('dh').isnull then
        query3.fieldbyname('dh').value:=table1.fieldbyname('dh').value;
        query3.fieldbyname('nd').value:=1;
        if not table1.fieldbyname('sj').isnull then
        query3.fieldbyname('sj').value:=table1.fieldbyname('sj').value;
        if not table1.fieldbyname('dj1').isnull then
        query3.fieldbyname('dj1').value:=table1.fieldbyname('dj1').value;
        if not table1.fieldbyname('dj1').isnull then
        query3.fieldbyname('dj2').value:=table1.fieldbyname('dj1').value;
        query3.fieldbyname('sj1').value:=query3.fieldbyname('sj').value*query3.fieldbyname('ndxs').value;
        query3.fieldbyname('sj2').value:=query3.fieldbyname('sj1').value*query3.fieldbyname('cdxs').value;
        if not table1.fieldbyname('czxh').isnull then
        query3.fieldbyname('czxh').value:=table1.fieldbyname('czxh').value;
        if not table1.fieldbyname('yzjzb').isnull then
        query3.fieldbyname('yzjzb').value:=table1.fieldbyname('yzjzb').value;
        if not table1.fieldbyname('dx').isnull then
        query3.fieldbyname('dx').value:=table1.fieldbyname('dx').value;
        if not table1.fieldbyname('mx').isnull then
        query3.fieldbyname('mx').value:=table1.fieldbyname('mx').value;
        if not table1.fieldbyname('cfzkcc').isnull then
        query3.fieldbyname('cfzkcc').value:=table1.fieldbyname('cfzkcc').value;
        if not table1.fieldbyname('dzkcc').isnull then
        query3.fieldbyname('dzkcc').value:=table1.fieldbyname('dzkcc').value;
        if not table1.fieldbyname('zzkcc').isnull then
        query3.fieldbyname('zzkcc').value:=table1.fieldbyname('zzkcc').value;
        if not table1.fieldbyname('zj').isnull then
        query3.fieldbyname('zj').value:=table1.fieldbyname('zj').value;
        if not table1.fieldbyname('zf').isnull then
        query3.fieldbyname('zf').value:=table1.fieldbyname('zf').value;
        if not table1.fieldbyname('fryd').isnull then
        query3.fieldbyname('fryd').value:=table1.fieldbyname('fryd').value;
        if not table1.fieldbyname('tplj').isnull then
        query3.fieldbyname('tplj').value:=table1.fieldbyname('tplj').value;
        if not table1.fieldbyname('czbh').isnull then
        query3.fieldbyname('czbh').value:=table1.fieldbyname('czbh').value;
        if not table1.fieldbyname('bzdj').isnull then
        query3.fieldbyname('bzdj').value:=table1.fieldbyname('bzdj').value;
        query3.post;
      end
      else
      begin
        query2.close;
        query2.params.clear;
        Query2.params.createparam(ftstring,'cz',ptinput);        
        query2.commandtext:='select * from IE_fh where cz=:cz';
//        query2.prepare;
        query2.params[0].value:=dbcombobox1.text;
        query2.open;
        if query2.recordcount=0 then
        begin
          query2.close;
          query2.params.clear;
          query2.commandtext:='select * from IE_fh';
          query2.open;
          query2.append;
          query2.fieldbyname('cz').value:=dbcombobox1.text;
          query2.post;
        end;
        query2.close;
        query2.params.clear;
        query2.commandtext:='select * from IE_bzgx1';
        query2.open;
        query2.append;
        query2.fieldbyname('cz').value:=dbcombobox1.text;
        if not table1.fieldbyname('dh').isnull then
        query2.fieldbyname('dh').value:=table1.fieldbyname('dh').value;
        if not table1.fieldbyname('mc').isnull then
        query2.fieldbyname('mc').value:=table1.fieldbyname('mc').value;
        query2.fieldbyname('nd').value:=1;
        if not table1.fieldbyname('sj').isnull then
        query2.fieldbyname('sj').value:=table1.fieldbyname('sj').value;
        if not table1.fieldbyname('dj1').isnull then
        query2.fieldbyname('dj1').value:=table1.fieldbyname('dj1').value;
        if not table1.fieldbyname('dj2').isnull then
        query2.fieldbyname('dj2').value:=table1.fieldbyname('dj2').value;
        query2.fieldbyname('ndxs').value:=1;
        query2.fieldbyname('cdxs').value:=1;
        query2.fieldbyname('sj1').value:=query2.fieldbyname('sj').value;
        query2.fieldbyname('sj2').value:=query2.fieldbyname('sj').value;
        if not table1.fieldbyname('czxh').isnull then
        query2.fieldbyname('czxh').value:=table1.fieldbyname('czxh').value;
        if not table1.fieldbyname('yzjzb').isnull then
        query2.fieldbyname('yzjzb').value:=table1.fieldbyname('yzjzb').value;
        if not table1.fieldbyname('dx').isnull then
        query2.fieldbyname('dx').value:=table1.fieldbyname('dx').value;
        if not table1.fieldbyname('mx').isnull then
        query2.fieldbyname('mx').value:=table1.fieldbyname('mx').value;
        if not table1.fieldbyname('cfzkcc').isnull then
        query2.fieldbyname('cfzkcc').value:=table1.fieldbyname('cfzkcc').value;
        if not table1.fieldbyname('dzkcc').isnull then
        query2.fieldbyname('dzkcc').value:=table1.fieldbyname('dzkcc').value;
        if not table1.fieldbyname('zzkcc').isnull then
        query2.fieldbyname('zzkcc').value:=table1.fieldbyname('zzkcc').value;
        if not table1.fieldbyname('zj').isnull then
        query2.fieldbyname('zj').value:=table1.fieldbyname('zj').value;
        if not table1.fieldbyname('zf').isnull then
        query2.fieldbyname('zf').value:=table1.fieldbyname('zf').value;
        if not table1.fieldbyname('fryd').isnull then
        query2.fieldbyname('fryd').value:=table1.fieldbyname('fryd').value;
        if not table1.fieldbyname('tplj').isnull then
        query2.fieldbyname('tplj').value:=table1.fieldbyname('tplj').value;
        if not table1.fieldbyname('czbh').isnull then
        query2.fieldbyname('czbh').value:=table1.fieldbyname('czbh').value;
        if not table1.fieldbyname('bzdj').isnull then
        query2.fieldbyname('bzdj').value:=table1.fieldbyname('bzdj').value;
        query2.post;
      end;
     end;
    end;
  end;
end;

procedure Tfrmaddgx.BitBtn4Click(Sender: TObject);
begin
  if table1.recordcount>0 then
  begin
   if application.messagebox('要刪除此記錄嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
   begin
    if table1.fieldbyname('cza').value=1 then
    begin
      query2.close;
      query2.params.clear;
      Query2.params.createparam(ftstring,'cz',ptinput);
      Query2.params.createparam(ftstring,'mc',ptinput);
      query2.commandtext:='select * from IE_bzgx where cz=:cz and mc=:mc';
//      query2.prepare;
      query2.params[0].value:=dbcombobox1.text;
      query2.params[1].value:=dbedit2.text;
      query2.open;
      if query2.recordcount>0 then
      begin
        if application.messagebox('此工序已存在工序表中,要刪除嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
        begin
          query2.close;
          query2.params.clear;
          Query2.params.createparam(ftstring,'cz',ptinput);
          Query2.params.createparam(ftstring,'mc',ptinput);
          query2.commandtext:='delete from IE_bzgx where cz=:cz and mc=:mc';
//          query2.prepare;
          query2.params[0].value:=dbcombobox1.text;
          query2.params[1].value:=dbedit2.text;
          query2.execute;
          table1.delete;
        end;
      end
      else table1.delete;
    end
    else
    begin
     if table1.fieldbyname('fha').value=1 then
     begin
      query2.close;
      query2.params.clear;
      Query2.params.createparam(ftstring,'cz',ptinput);
      Query2.params.createparam(ftstring,'mc',ptinput);
      query2.commandtext:='select * from IE_bzgx1 where cz=:cz and mc=:mc';
//      query2.prepare;
      query2.params[0].value:=dbcombobox1.text;
      query2.params[1].value:=dbedit2.text;
      query2.open;
      if query2.recordcount>0 then
      begin
        if application.messagebox('此工序已存在工序表中,要刪除嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
        begin
          query2.close;
          query2.params.clear;
          Query2.params.createparam(ftstring,'cz',ptinput);
          Query2.params.createparam(ftstring,'mc',ptinput);
          query2.commandtext:='delete from IE_bzgx1 where cz=:cz and mc=:mc';
//          query2.prepare;
          query2.params[0].value:=dbcombobox1.text;
          query2.params[1].value:=dbedit2.text;
          query2.execute;
          table1.delete;
        end;
      end
      else table1.delete;
     end;
    end;
   end;
  end;
  if (Table1.state=dsedit) or (Table1.state=dsinsert) then table1.post;
end;

procedure Tfrmaddgx.Table1SjChange(Sender: TField);
begin
  if (not table1sj.isnull) and (not table1bzdj.isnull) then
  begin
    table1dj1.value:=table1sj.value*table1bzdj.value;
  end;
end;

procedure Tfrmaddgx.Table1BzdjChange(Sender: TField);
begin
  if (not table1sj.isnull) and (not table1bzdj.isnull) then
  begin
    table1dj1.value:=table1sj.value*table1bzdj.value;
    table1dj2.value:=table1sj.value*table1bzdj.value;
  end;
end;

procedure Tfrmaddgx.table1NewRecord(DataSet: TDataSet);
begin
  Table1.FieldByName('id').value:=GetSeq('ie_lsgx','id');
end;

procedure Tfrmaddgx.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

end.
