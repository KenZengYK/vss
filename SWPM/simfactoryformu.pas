unit simfactoryformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, rxToolEdit, Spin, GridsEh,
  DBGridEh, Buttons, DB, DBClient, DateUtils, ppCtrls, ppPrnabl, ppClass,
  ppDB, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  ppVar, ppViewr, Menus, ppParameter;

type
  Tfrmsimfactory = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Label8: TLabel;
    DBGridEh1: TDBGridEh;
    xh1: TRadioGroup;
    xh2: TRadioGroup;
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGridEh3: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    query3: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Panel7: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    SpeedButton2: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    Query5TM: TDateTimeField;
    Query5TPLANT: TStringField;
    Query5TSHOP: TStringField;
    Query5PLINE: TStringField;
    Query5PGRP: TStringField;
    Query5FLAG6: TStringField;
    Query5YR1: TIntegerField;
    Query5WK1: TIntegerField;
    Query5YR2: TIntegerField;
    Query5WK2: TIntegerField;
    Query5SECT1: TIntegerField;
    Query5SECT2: TIntegerField;
    Query5WF1: TFloatField;
    Query5WF2: TFloatField;
    Query5RATIO1: TFloatField;
    Query5RATIO2: TFloatField;
    Query5RATIO3: TFloatField;
    Query5RATIO4: TFloatField;
    Query5FLR1: TIntegerField;
    Query5TLR1: TIntegerField;
    Query5FLR2: TIntegerField;
    Query5TLR2: TIntegerField;
    Query5FLR3: TIntegerField;
    Query5TLR3: TIntegerField;
    Query5FLR4: TIntegerField;
    Query5TLR4: TIntegerField;
    Query5LEFF: TFloatField;
    Query5ADPT: TFloatField;
    Query5REFDT1: TDateField;
    Query5REFDT2: TDateField;
    Query5REFEFF: TFloatField;
    Query5REFSAH: TFloatField;
    Query5PSAH: TFloatField;
    Query5CAP: TFloatField;
    Query5CFM: TBooleanField;
    Query5VER: TIntegerField;
    BitBtn6: TBitBtn;
    Query5LR1: TIntegerField;
    Query5LR2: TIntegerField;
    Query5LR3: TIntegerField;
    Query5LR4: TIntegerField;
    Query5LR5: TIntegerField;
    Query5LR6: TIntegerField;
    Query5LR7: TIntegerField;
    Query5LR8: TIntegerField;
    Query5LR9: TIntegerField;
    Query5LR10: TIntegerField;
    Query5LE1: TFloatField;
    Query5LE2: TFloatField;
    Query5LE3: TFloatField;
    Query5LE4: TFloatField;
    Query5LE5: TFloatField;
    Query5LE6: TFloatField;
    Query5LE7: TFloatField;
    Query5LE8: TFloatField;
    Query5LE9: TFloatField;
    Query5LE10: TFloatField;
    BitBtn7: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel4: TppLabel;
    cust001: TppLabel;
    ppLabel6: TppLabel;
    prod001: TppLabel;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    dt001: TppLabel;
    ppLabel7: TppLabel;
    dt002: TppLabel;
    ppLabel5: TppLabel;
    wk001: TppLabel;
    ppLabel9: TppLabel;
    wk002: TppLabel;
    ppLabel8: TppLabel;
    ver001: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppLabel11: TppLabel;
    ppDBText2: TppDBText;
    ppLabel12: TppLabel;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    s001: TppDBText;
    w001: TppDBText;
    ppLabel39: TppLabel;
    s002: TppDBCalc;
    w002: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine9: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel40: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel41: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Query5XH1: TIntegerField;
    Query5XH2: TIntegerField;
    Query5PEFF: TFloatField;
    Query5REFPEFF: TFloatField;
    ppLine17: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText21: TppDBText;
    ppLine18: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText22: TppDBText;
    Query4TM: TDateTimeField;
    Query4TPLANT: TStringField;
    Query4TSHOP: TStringField;
    Query4PLINE: TStringField;
    Query4SEL: TBooleanField;
    Query4CUST: TStringField;
    Query4PTYP: TStringField;
    Query4YR1: TIntegerField;
    Query4WK1: TIntegerField;
    Query4YR2: TIntegerField;
    Query4WK2: TIntegerField;
    Query4TWK: TIntegerField;
    PopupMenu1: TPopupMenu;
    defaultSAH1: TMenuItem;
    ClientDataSet2: TClientDataSet;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query5AfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query5RATIO1Change(Sender: TField);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Query4BeforeEdit(DataSet: TDataSet);
    procedure Query4AfterOpen(DataSet: TDataSet);
    procedure QuerySELChange(Sender: TField);
    procedure Query4AfterPost(DataSet: TDataSet);
    procedure Query5AfterOpen(DataSet: TDataSet);
    procedure defaultSAH1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pgi:string;
  end;

var
  frmsimfactory: Tfrmsimfactory;
  ctm:tdatetime;
  logseq:integer;

implementation

uses mainformu, lineinfou, simversionformu, simphaseformu, simratioformu;

{$R *.dfm}

procedure Tfrmsimfactory.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text='KB' then begin
    xh2.Items.Clear;
    xh2.Items.Add('Based on 9514/7');
    xh2.Items.Add('Based on line profile');
    xh2.ItemIndex:=0;
    dbgrideh2.Columns[8].Title.caption:='WF|(9514/7)';
    dbgrideh3.Columns[17].Title.caption:='WF|(9514/7)';
  end else begin
    xh2.Items.Clear;
    xh2.Items.Add('Based on 9217/6');
    xh2.Items.Add('Based on line profile');
    xh2.ItemIndex:=0;
    dbgrideh2.Columns[8].Title.caption:='WF|(9217/6)';
    dbgrideh3.Columns[17].Title.caption:='WF|(9217/6)';
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='execute procedure sp_gentmpline(:x1,:x2)';
    params[0].asdatetime:=ctm;
    params[1].asstring:=combobox1.text;
    execute;
  end;
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tblline_tmp where tm=:x1';
    params[0].asdatetime:=ctm;
    open;
  end;
end;

procedure Tfrmsimfactory.FormShow(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=0;
  combobox2.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty where pgrp>''''';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
  dateedit1.date:=encodedate(yearof(date),1,1);
  dateedit2.date:=date-1;
  spinedit1.Value:=yearof(date);
  spinedit2.Value:=weekof(date);
  spinedit3.Value:=yearof(date);
  spinedit4.Value:=53;
  datetimepicker1.DateTime:=now;
  ctm:=datetimepicker1.datetime;
  combobox1change(self);
  pgi:='0';
end;

procedure Tfrmsimfactory.SpeedButton1Click(Sender: TObject);
var
  pline:string;
begin
  screen.Cursor:=crSQLWait;
  try
    ctm:=datetimepicker1.DateTime;
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from tbl_simline where tm=:x1 and pline=:x2';
      params[0].asdatetime:=ctm;
      params[1].asstring:=query4.fieldbyname('pline').value;
      open;
      if not fieldbyname('pline').isnull then pline:=fieldbyname('pline').value else pline:='';
    end;
    if pline='' then begin
    }
    if query4.state=dsedit then query4.post;
    
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        commandtext:='execute PROCEDURE SP_ADDSIMLINE_01(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=ctm;
        params[1].asstring:=combobox2.text;
        params[2].asdate:=dateedit1.date;
        params[3].asdate:=dateedit2.date;
        execute;
      end;
      with query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_simline where tm=:x1';
        params[0].asdatetime:=ctm;
        open;
      end;
    //end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmsimfactory.SpeedButton3Click(Sender: TObject);
begin
  if application.MessageBox('Remove these lines?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    ctm:=datetimepicker1.DateTime;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='delete from tbl_simline where tm=:x1';
      params[0].asdatetime:=ctm;
      execute;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_simline where tm=:x1';
      params[0].asdatetime:=ctm;
      open;
    end;
  end;
end;

procedure Tfrmsimfactory.BitBtn1Click(Sender: TObject);
begin
  ctm:=datetimepicker1.DateTime;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.CreateParam(ftinteger,'x4',ptinput);
    params.CreateParam(ftinteger,'x5',ptinput);
    commandtext:='execute procedure SP_ADDSIMLINE1(:x1,:x2,:x3,:x4,:x5)';
    params[0].asdatetime:=ctm;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    params[3].asinteger:=xh1.ItemIndex;
    params[4].asinteger:=xh2.ItemIndex;
    execute;
  end;
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_simline where tm=:x1';
    params[0].asdatetime:=ctm;
    open;
  end;
  pgi:='1';
  pagecontrol1.ActivePageIndex:=1;
  pagecontrol1change(self);
end;

procedure Tfrmsimfactory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmsimfactory:=nil;
end;

procedure Tfrmsimfactory.SpeedButton2Click(Sender: TObject);
begin
  ctm:=datetimepicker1.DateTime;
  if frmsimversion=nil then frmsimversion:=tfrmsimversion.create(nil);
  with frmsimversion.query4 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct tm,cfm,ver from tbl_simline where tm<>:x1';
    params[0].asdatetime:=ctm;
    open;
  end;
  frmsimversion.show;
end;

procedure Tfrmsimfactory.BitBtn3Click(Sender: TObject);
begin
  if query5.state=dsedit then query5.post;
end;

procedure Tfrmsimfactory.Query5AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1,2,3);
end;

procedure Tfrmsimfactory.BitBtn2Click(Sender: TObject);
begin
  if frmsimphase=nil then frmsimphase:=tfrmsimphase.Create(nil);
  frmsimphase.Show;
end;

procedure Tfrmsimfactory.Query5RATIO1Change(Sender: TField);
var
  s1,w1,s2,e1,p1,a1:double;
  eff1,eff2,eff3,eff4:double;
  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10:integer;
  f1,f2,f3,f4,f5,f6,f7,f8,f9,f10:double;
  i01,i02,i03,i04,i05,i06,i07,i08,i09,i010:integer;
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f010:double;
  w01,w02:integer;
begin
  //
  if xh1.ItemIndex=0 then s1:=query5.fieldbyname('sect1').value else s1:=query5.fieldbyname('sect2').value;
  if xh2.ItemIndex=0 then w1:=query5.fieldbyname('wf1').value else w1:=query5.fieldbyname('wf2').value;
  if not query5.fieldbyname('psah').isnull then s2:=query5.fieldbyname('psah').value else s2:=query5.fieldbyname('refsah').value;
  if not query5.fieldbyname('adpt').isnull then a1:=query5.fieldbyname('adpt').value else a1:=100.0;

  if not query5.fieldbyname('ratio1').isnull then query5.fieldbyname('ratio2').value:=10-query5.fieldbyname('ratio1').value
  else query5.fieldbyname('ratio2').value:=10;
  if not query5.fieldbyname('ratio3').isnull then query5.fieldbyname('ratio4').value:=10-query5.fieldbyname('ratio3').value
  else query5.fieldbyname('ratio4').value:=10;

  i1:=query5.fieldbyname('lr1').value;
  i2:=query5.fieldbyname('lr2').value;
  i3:=query5.fieldbyname('lr3').value;
  i4:=query5.fieldbyname('lr4').value;
  i5:=query5.fieldbyname('lr5').value;
  i6:=query5.fieldbyname('lr6').value;
  i7:=query5.fieldbyname('lr7').value;
  i8:=query5.fieldbyname('lr8').value;
  i9:=query5.fieldbyname('lr9').value;
  i10:=query5.fieldbyname('lr10').value;
  f1:=query5.fieldbyname('le1').value;
  f2:=query5.fieldbyname('le2').value;
  f3:=query5.fieldbyname('le3').value;
  f4:=query5.fieldbyname('le4').value;
  f5:=query5.fieldbyname('le5').value;
  f6:=query5.fieldbyname('le6').value;
  f7:=query5.fieldbyname('le7').value;
  f8:=query5.fieldbyname('le8').value;
  f9:=query5.fieldbyname('le9').value;
  f10:=query5.fieldbyname('le10').value;

  //Ratio 1
  i01:=i1;i02:=i2;i03:=i3;i04:=i4;i05:=i5;i06:=i6;i07:=i7;i08:=i8;i09:=i9;i010:=i10;
  f01:=f1;f02:=f2;f03:=f3;f04:=f4;f05:=f5;f06:=f6;f07:=f7;f08:=f8;f09:=f9;f010:=f10;
  if not query5.fieldbyname('flr1').isnull then w01:=query5.fieldbyname('flr1').value else w01:=1;
  if not query5.fieldbyname('tlr1').isnull then w02:=query5.fieldbyname('tlr1').value else w02:=10;
  if w01=2 then begin
    i01:=0;
  end else if w01=3 then begin
    i01:=0;i02:=0;
  end else if w01=4 then begin
    i01:=0;i02:=0;i03:=0;
  end else if w01=5 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;
  end else if w01=6 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;
  end else if w01=7 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;
  end else if w01=8 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;
  end else if w01=9 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;
  end else if w01=10 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;
  end;
  if w02=9 then begin
    i010:=0;
  end else if w02=8 then begin
    i09:=0;i010:=0;
  end else if w02=7 then begin
    i08:=0;i09:=0;i010:=0;
  end else if w02=6 then begin
    i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=5 then begin
    i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=4 then begin
    i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=3 then begin
    i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=2 then begin
    i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=1 then begin
    i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end;
  if (i01+i02+i03+i04+i05+i06+i07+i08+i09+i010>0) then
  eff1:=(i01*f01+i02*f02+i03*f03+i04*f04+i05*f05+i06*f06+i07*f07+i08*f08+i09*f09+i010*f010)/(i01+i02+i03+i04+i05+i06+i07+i08+i09+i010)
  else eff1:=0;

  //Ratio 2
  i01:=i1;i02:=i2;i03:=i3;i04:=i4;i05:=i5;i06:=i6;i07:=i7;i08:=i8;i09:=i9;i010:=i10;
  f01:=f1;f02:=f2;f03:=f3;f04:=f4;f05:=f5;f06:=f6;f07:=f7;f08:=f8;f09:=f9;f010:=f10;
  if not query5.fieldbyname('flr2').isnull then w01:=query5.fieldbyname('flr2').value else w01:=1;
  if not query5.fieldbyname('tlr2').isnull then w02:=query5.fieldbyname('tlr2').value else w02:=10;
  if w01=2 then begin
    i01:=0;
  end else if w01=3 then begin
    i01:=0;i02:=0;
  end else if w01=4 then begin
    i01:=0;i02:=0;i03:=0;
  end else if w01=5 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;
  end else if w01=6 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;
  end else if w01=7 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;
  end else if w01=8 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;
  end else if w01=9 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;
  end else if w01=10 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;
  end;
  if w02=9 then begin
    i010:=0;
  end else if w02=8 then begin
    i09:=0;i010:=0;
  end else if w02=7 then begin
    i08:=0;i09:=0;i010:=0;
  end else if w02=6 then begin
    i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=5 then begin
    i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=4 then begin
    i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=3 then begin
    i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=2 then begin
    i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=1 then begin
    i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end;
  if (i01+i02+i03+i04+i05+i06+i07+i08+i09+i010>0) then
  eff2:=(i01*f01+i02*f02+i03*f03+i04*f04+i05*f05+i06*f06+i07*f07+i08*f08+i09*f09+i010*f010)/(i01+i02+i03+i04+i05+i06+i07+i08+i09+i010)
  else eff2:=0;

  //Ratio 3
  i01:=i1;i02:=i2;i03:=i3;i04:=i4;i05:=i5;i06:=i6;i07:=i7;i08:=i8;i09:=i9;i010:=i10;
  f01:=f1;f02:=f2;f03:=f3;f04:=f4;f05:=f5;f06:=f6;f07:=f7;f08:=f8;f09:=f9;f010:=f10;
  if not query5.fieldbyname('flr3').isnull then w01:=query5.fieldbyname('flr3').value else w01:=1;
  if not query5.fieldbyname('tlr3').isnull then w02:=query5.fieldbyname('tlr3').value else w02:=10;
  if w01=2 then begin
    i01:=0;
  end else if w01=3 then begin
    i01:=0;i02:=0;
  end else if w01=4 then begin
    i01:=0;i02:=0;i03:=0;
  end else if w01=5 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;
  end else if w01=6 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;
  end else if w01=7 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;
  end else if w01=8 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;
  end else if w01=9 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;
  end else if w01=10 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;
  end;
  if w02=9 then begin
    i010:=0;
  end else if w02=8 then begin
    i09:=0;i010:=0;
  end else if w02=7 then begin
    i08:=0;i09:=0;i010:=0;
  end else if w02=6 then begin
    i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=5 then begin
    i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=4 then begin
    i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=3 then begin
    i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=2 then begin
    i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=1 then begin
    i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end;
  if (i01+i02+i03+i04+i05+i06+i07+i08+i09+i010>0) then
  eff3:=(i01*f01+i02*f02+i03*f03+i04*f04+i05*f05+i06*f06+i07*f07+i08*f08+i09*f09+i010*f010)/(i01+i02+i03+i04+i05+i06+i07+i08+i09+i010)
  else eff3:=0;

  //Ratio 1
  i01:=i1;i02:=i2;i03:=i3;i04:=i4;i05:=i5;i06:=i6;i07:=i7;i08:=i8;i09:=i9;i010:=i10;
  f01:=f1;f02:=f2;f03:=f3;f04:=f4;f05:=f5;f06:=f6;f07:=f7;f08:=f8;f09:=f9;f010:=f10;
  if not query5.fieldbyname('flr4').isnull then w01:=query5.fieldbyname('flr4').value else w01:=1;
  if not query5.fieldbyname('tlr4').isnull then w02:=query5.fieldbyname('tlr4').value else w02:=10;
  if w01=2 then begin
    i01:=0;
  end else if w01=3 then begin
    i01:=0;i02:=0;
  end else if w01=4 then begin
    i01:=0;i02:=0;i03:=0;
  end else if w01=5 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;
  end else if w01=6 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;
  end else if w01=7 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;
  end else if w01=8 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;
  end else if w01=9 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;
  end else if w01=10 then begin
    i01:=0;i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;
  end;
  if w02=9 then begin
    i010:=0;
  end else if w02=8 then begin
    i09:=0;i010:=0;
  end else if w02=7 then begin
    i08:=0;i09:=0;i010:=0;
  end else if w02=6 then begin
    i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=5 then begin
    i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=4 then begin
    i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=3 then begin
    i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=2 then begin
    i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end else if w02=1 then begin
    i02:=0;i03:=0;i04:=0;i05:=0;i06:=0;i07:=0;i08:=0;i09:=0;i010:=0;
  end;
  if (i01+i02+i03+i04+i05+i06+i07+i08+i09+i010>0) then
  eff4:=(i01*f01+i02*f02+i03*f03+i04*f04+i05*f05+i06*f06+i07*f07+i08*f08+i09*f09+i010*f010)/(i01+i02+i03+i04+i05+i06+i07+i08+i09+i010)
  else eff4:=0;

  e1:=(eff1*query5.fieldbyname('ratio1').value+eff2*query5.fieldbyname('ratio2').value)/20+(eff3*query5.fieldbyname('ratio3').value+eff4*query5.fieldbyname('ratio4').value)/20;

  if not query5.fieldbyname('peff').isnull then p1:=query5.fieldbyname('peff').value else p1:=query5.fieldbyname('refpeff').value;

  query5.fieldbyname('leff').value:=e1;
  if s2>0 then query5.fieldbyname('cap').value:=s1*w1*e1*p1*a1/s2/2000000.0 else query5.fieldbyname('cap').value:=0;
end;

procedure Tfrmsimfactory.BitBtn4Click(Sender: TObject);
begin
  ctm:=datetimepicker1.datetime;
  if query5.fieldbyname('cfm').value=true then begin
  end else begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='update tbl_simline set cfm=1,ver=1 where tm=:x1';
      params[0].asdatetime:=ctm;
      execute;
    end;
  end;
end;

procedure Tfrmsimfactory.BitBtn5Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    ctm:=datetimepicker1.DateTime;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='execute procedure sp_gensimline1(:x1)';
      params[0].asdatetime:=ctm;
      execute;
    end;
    with query6 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_simline1 where tm=:x1';
      params[0].asdatetime:=ctm;
      open;
    end;
    if frmsimratio=nil then frmsimratio:=tfrmsimratio.Create(nil);
    frmsimratio.Show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmsimfactory.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmsimfactory.BitBtn6Click(Sender: TObject);
begin
  bitbtn3click(self);
  if not query5.FieldByName('tm').isnull then begin
    fty001.Caption:=combobox1.text;
    cust001.Caption:=combobox2.Text;
    prod001.Caption:=combobox3.Text;
    dt001.Caption:=dateedit1.Text;
    dt002.Caption:=dateedit2.Text;
    wk001.Caption:=inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value);
    wk002.Caption:=inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
    ver001.Caption:=query5.fieldbyname('ver').asstring;
    if xh1.ItemIndex=0 then begin
      s001.DataField:='SECT1';
      s002.DataField:='SECT1';
    end else begin
      s001.DataField:='SECT2';
      s002.DataField:='SECT2';
    end;
    if xh2.ItemIndex=0 then begin
      w001.DataField:='WF1';
      w002.DataField:='WF1';
    end else begin
      w001.DataField:='WF2';
      w002.DataField:='WF2';
    end;
    ppReport1.Print;
  end;
end;

procedure Tfrmsimfactory.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then pgi:='0';
  if pgi='0' then begin
    if pagecontrol1.ActivePageIndex=1 then pagecontrol1.ActivePageIndex:=0;
  end;
  if pagecontrol1.ActivePageIndex=1 then begin
    if xh1.ItemIndex=0 then begin
      dbgrideh3.Columns[15].Font.color:=clRed;
      dbgrideh3.Columns[16].Font.color:=clBlack;
    end else if xh1.ItemIndex=1 then begin
      dbgrideh3.Columns[16].Font.color:=clRed;
      dbgrideh3.Columns[15].Font.color:=clBlack;
    end;
    if xh2.ItemIndex=0 then begin
      dbgrideh3.Columns[17].Font.color:=clRed;
      dbgrideh3.Columns[18].Font.color:=clBlack;
    end else if xh2.ItemIndex=1 then begin
      dbgrideh3.Columns[18].Font.color:=clRed;
      dbgrideh3.Columns[17].Font.color:=clBlack;
    end;
  end;
end;

procedure Tfrmsimfactory.Query4BeforeEdit(DataSet: TDataSet);
begin
  if (combobox2.text>'') and (combobox3.text>'') then begin
    if query4.fieldbyname('cust').value>'' then begin
      if combobox2.text<>query4.fieldbyname('cust').value then begin
        showmessage('Can''t select this line!');
        abort;
      end;
    end;
  end else begin
    abort;
  end;
end;

procedure Tfrmsimfactory.Query4AfterOpen(DataSet: TDataSet);
begin
  query4.fieldbyname('sel').onchange:=QuerySELChange;
  ctm:=datetimepicker1.DateTime;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(*) as cnt from tblline_tmp where tm=:x1 and sel=1';
    params[0].asdatetime:=ctm;
    open;
    if not fieldbyname('cnt').isnull then dbgrideh1.Columns[0].Footers[0].Value:=inttostr(fieldbyname('cnt').value) else dbgrideh1.columns[0].footers[0].value:='0';
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(*) as cnt from tblline_tmp where tm=:x1';
    params[0].asdatetime:=ctm;
    open;
    if not fieldbyname('cnt').isnull then dbgrideh1.Columns[2].Footers[0].Value:=inttostr(fieldbyname('cnt').value);
  end;
end;

procedure Tfrmsimfactory.QuerySELChange(Sender: TField);
var
  i1,twk:integer;
begin
  if query4.fieldbyname('sel').value=true then begin

    if spinedit1.value=spinedit3.Value then twk:=spinedit4.Value-spinedit2.value+1
    else begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select max(wkno) as i1 from week52 where f_year(date1)=:x1';
        params[0].asinteger:=spinedit1.value;
        open;
        if not fieldbyname('i1').isnull then i1:=fieldbyname('i1').value else i1:=53;
      end;
      twk:=i1-spinedit2.value+spinedit4.value+1;
    end;
    query4.fieldbyname('cust').value:=combobox2.text;
    query4.fieldbyname('ptyp').value:=combobox3.text;
    query4.fieldbyname('yr1').value:=spinedit1.value;
    query4.fieldbyname('wk1').value:=spinedit2.value;
    query4.fieldbyname('yr2').value:=spinedit3.value;
    query4.fieldbyname('wk2').value:=spinedit4.value;
    query4.fieldbyname('twk').value:=twk;
  end else begin
    query4.fieldbyname('cust').value:='';
    query4.fieldbyname('ptyp').value:='';
    query4.fieldbyname('yr1').value:=0;
    query4.fieldbyname('wk1').value:=0;
    query4.fieldbyname('yr2').value:=0;
    query4.fieldbyname('wk2').value:=0;
    query4.fieldbyname('twk').value:=0;
  end;
end;

procedure Tfrmsimfactory.Query4AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
  ctm:=datetimepicker1.DateTime;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(*) as cnt from tblline_tmp where tm=:x1 and sel=1';
    params[0].asdatetime:=ctm;
    open;
    if not fieldbyname('cnt').isnull then dbgrideh1.Columns[0].Footers[0].Value:=inttostr(fieldbyname('cnt').value) else dbgrideh1.columns[0].footers[0].value:='0';
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(*) as cnt from tblline_tmp where tm=:x1';
    params[0].asdatetime:=ctm;
    open;
    if not fieldbyname('cnt').isnull then dbgrideh1.Columns[2].Footers[0].Value:=inttostr(fieldbyname('cnt').value);
  end;
end;

procedure Tfrmsimfactory.Query5AfterOpen(DataSet: TDataSet);
begin
    if xh1.ItemIndex=0 then begin
      dbgrideh2.Columns[6].Font.color:=clRed;
      dbgrideh2.Columns[7].Font.color:=clBlack;
    end else if xh1.ItemIndex=1 then begin
      dbgrideh2.Columns[7].Font.color:=clRed;
      dbgrideh2.Columns[6].Font.color:=clBlack;
    end;
    if xh2.ItemIndex=0 then begin
      dbgrideh2.Columns[8].Font.color:=clRed;
      dbgrideh2.Columns[9].Font.color:=clBlack;
    end else if xh2.ItemIndex=1 then begin
      dbgrideh2.Columns[9].Font.color:=clRed;
      dbgrideh2.Columns[8].Font.color:=clBlack;
    end;
end;

procedure Tfrmsimfactory.defaultSAH1Click(Sender: TObject);
begin
  query5.First;
  while not query5.Eof do begin
    query5.Edit;
    query5.fieldbyname('psah').value:=query5.fieldbyname('refsah').value;
    query5.Post;
    query5.Next;
  end;
end;

procedure Tfrmsimfactory.FormCreate(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select max(dseq) as q1 from tbl_logging where seq=:x1';
          params[0].asinteger:=frmmain.SpinEdit1.Value;
          open;
          if not fieldbyname('q1').isnull then logseq:=fieldbyname('q1').value+1
          else logseq:=2;
        end;
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdatetime,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='insert into tbl_logging(seq,usr,frmid,strdt,ip,dseq) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asinteger:=frmmain.spinedit1.Value;
          params[1].AsString:=frmmain.combobox1.text;
          params[2].AsString:='Sim Factory';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
end;

procedure Tfrmsimfactory.FormDestroy(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and dseq=:x3';
          params[0].AsDateTime:=now;
          params[1].asinteger:=frmmain.spinedit1.Value;
          params[2].asinteger:=logseq;
          execute;
        end;
end;

end.
