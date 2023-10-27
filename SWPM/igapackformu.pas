unit igapackformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, Grids,
  DBGridEh, StdCtrls, Buttons, rxToolEdit, Mask, DBCtrlsEh, DBCtrls, ExtCtrls,
  ppParameter, GridsEh;

type
  Tfrmigapack = class(TForm)
    Panel1: TPanel;
    lblcs: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    DBDateTime1: TDBDateTimeEditEh;
    DateEdit1: TDateEdit;
    Panel2: TPanel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    fty001: TppLabel;
    ppLabel7: TppLabel;
    line001: TppLabel;
    jno001: TppLabel;
    ppLabel2: TppLabel;
    job001: TppLabel;
    rwo001: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    cstyle001: TppLabel;
    ppLabel12: TppLabel;
    acol001: TppLabel;
    ppLabel13: TppLabel;
    scqty001: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    fccs001: TppLabel;
    ppLabel22: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand1: TppFooterBand;
    ppLabel16: TppLabel;
    fdt001: TppLabel;
    ppLabel17: TppLabel;
    cfksrq001: TppLabel;
    ppLabel18: TppLabel;
    tzlcrq001: TppLabel;
    ppLabel20: TppLabel;
    yqlcrq001: TppLabel;
    ppLabel19: TppLabel;
    xc3001: TppLabel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmigapack: Tfrmigapack;

implementation

uses mainformu, lwoformu, worksheet, achievingformu;

{$R *.dfm}

procedure Tfrmigapack.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if label8.Caption='Edit' then begin
    showmessage('Please save data!');
    action:=canone;
  end else begin
    action:=cafree;
    frmigapack:=nil;
  end;
end;

procedure Tfrmigapack.BitBtn1Click(Sender: TObject);
var
  dt:tdate;
begin
  bitbtn2.Enabled:=true;
  if lblcs.Caption='The fifth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(ipd4) as dt from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[8].Field:=frmlwo.query1.fieldbyname('ip4');
    lblcs.Caption:='The forth time';
  end else if lblcs.Caption='The forth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(ipd3) as dt from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[8].Field:=frmlwo.query1.fieldbyname('ip3');
    lblcs.Caption:='The third time';
  end else if lblcs.Caption='The third time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(ipd2) as dt from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[8].Field:=frmlwo.query1.fieldbyname('ip2');
    lblcs.Caption:='The second time';
  end else if lblcs.Caption='The second time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(ipd1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[8].Field:=frmlwo.query1.fieldbyname('ip1');
    lblcs.Caption:='The first time';
    bitbtn1.Enabled:=false;
  end;
end;

procedure Tfrmigapack.BitBtn2Click(Sender: TObject);
var
  dt:tdate;
begin
  bitbtn1.Enabled:=true;
  if lblcs.Caption='The first time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(ipd2) as dt from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[8].Field:=frmlwo.query1.fieldbyname('ip2');
    lblcs.Caption:='The second time';
  end else if lblcs.Caption='The second time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(ipd3) as dt from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[8].Field:=frmlwo.query1.fieldbyname('ip3');
    lblcs.Caption:='The third time';
  end else if lblcs.Caption='The third time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(ipd4) as dt from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[8].Field:=frmlwo.query1.fieldbyname('ip4');
    lblcs.Caption:='The forth time';
  end else if lblcs.Caption='The forth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(ipd5) as dt from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[8].Field:=frmlwo.query1.fieldbyname('ip5');
    lblcs.Caption:='The fifth time';
    bitbtn2.Enabled:=false;
  end;
end;

procedure Tfrmigapack.BitBtn3Click(Sender: TObject);
var
  s1:string;
begin
  if (frmlwo.query1.state=dsedit) or (frmlwo.query1.state=dsinsert) then frmlwo.query1.post;
  if pos('first',lblcs.Caption)>0 then s1:='1'
  else if pos('second',lblcs.Caption)>0 then s1:='2'
  else if pos('third',lblcs.Caption)>0 then s1:='3'
  else if pos('forth',lblcs.Caption)>0 then s1:='4'
  else if pos('fifth',lblcs.Caption)>0 then s1:='5';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='update tbl_lwo set ipd'+s1+'=:x1,iga_p=:x4 where pline=:x2 and seq=:x3';
    params[0].asdate:=dateedit1.date;
    params[1].asstring:=combobox1.text;
    params[2].asstring:=frmlwo.Query1.fieldbyname('pline').value;
    params[3].asinteger:=frmlwo.Query1.fieldbyname('seq').value;
    execute;
  end;
  label8.Caption:='Save';
end;

procedure Tfrmigapack.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
var
  r24:boolean;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r24 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.text;
    open;
    if not fieldbyname('r24').isnull then r24:=fieldbyname('r24').value
    else r24:=false;
  end;
  if not r24 then key:=#0
  else begin
    //if (frmlwo.Query1.fieldbyname('pqty').value<=0) or (frmlwo.Query1.fieldbyname('tqty').value<=0) then key:=#0;
  end;
  if frmlwo.Query1.state=dsedit then label8.Caption:='Edit';
end;

procedure Tfrmigapack.FormShow(Sender: TObject);
var
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
    if frmlwo.label8.caption='GAI' then begin
      dbtext1.DataSource:=frmachieving.DataSource1;
      dbtext2.DataSource:=frmachieving.DataSource1;
      dbtext3.DataSource:=frmachieving.DataSource1;
      dbtext4.DataSource:=frmachieving.DataSource1;
      dbtext5.DataSource:=frmachieving.DataSource1;
      dbtext6.DataSource:=frmachieving.DataSource1;
      dbtext7.DataSource:=frmachieving.DataSource1;
    end else begin
      dbtext1.DataSource:=worksheet1.DataSource1;
      dbtext2.DataSource:=worksheet1.DataSource1;
      dbtext3.DataSource:=worksheet1.DataSource1;
      dbtext4.DataSource:=worksheet1.DataSource1;
      dbtext5.DataSource:=worksheet1.DataSource1;
      dbtext6.DataSource:=worksheet1.DataSource1;
      dbtext7.DataSource:=worksheet1.DataSource1;
    end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
    params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
    open;
    if fieldbyname('flag4').value>='B' then begin
      if copy(fieldbyname('flag4').value,1,1)='b' then begin
        i1:=' b '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='B' then begin
        i1:=' B '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='d' then begin
        i1:=' b '; i2:=' d ';
      end else if copy(fieldbyname('flag4').value,1,1)='D' then begin
        i1:=' B '; i2:= ' D ';
      end else if copy(fieldbyname('flag4').value,1,1)='E' then begin
        i1:=' B '; i2:= ' E ';
      end;

      if copy(fieldbyname('flag4').value,2,1)='f' then begin
        i3:=' f '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
        i3:=' F '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
        i3:=' f '; i4:=' g ';
      end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
        i3:=' F '; i4:= ' G ';
      end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
        i3:=' F '; i4:= ' H ';
      end;

      if copy(fieldbyname('flag4').value,3,1)='j' then begin
        i5:=' j '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='J' then begin
        i5:=' J '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='k' then begin
        i5:=' j '; i6:=' k ';
      end else if copy(fieldbyname('flag4').value,3,1)='K' then begin
        i5:=' J '; i6:= ' K ';
      end else if copy(fieldbyname('flag4').value,3,1)='L' then begin
        i5:=' J '; i6:= ' L ';
      end;

      if copy(fieldbyname('flag4').value,4,1)='m' then begin
        i7:=' m '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='M' then begin
        i7:=' M '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='n' then begin
        i7:=' m '; i8:=' n ';
      end else if copy(fieldbyname('flag4').value,4,1)='N' then begin
        i7:=' M '; i8:= ' N ';
      end else if copy(fieldbyname('flag4').value,4,1)='P' then begin
        i7:=' M '; i8:= ' P ';
      end;
    end else begin
      i1:='';
      i2:='';
      i3:='';
      i4:='';
      i5:='';
      i6:='';
      i7:='';
      i8:='';
    end;
    dbgrideh1.Columns[1].Footers[1].Value:=i1;
    dbgrideh1.Columns[2].Footers[1].Value:=i2;
    dbgrideh1.Columns[3].Footers[1].Value:=i3;
    dbgrideh1.Columns[4].Footers[1].Value:=i4;
  end;
end;

end.
 