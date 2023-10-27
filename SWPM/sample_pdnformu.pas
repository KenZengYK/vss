unit sample_pdnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, DBCtrls, StdCtrls, Buttons, ExtCtrls, GridsEh,
  DBGridEh, Mask, rxToolEdit, shellapi;

type
  Tfrmsample_pdn = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
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
    DBText8: TDBText;
    Label9: TLabel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label8: TLabel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn5: TBitBtn;
    Label13: TLabel;
    DateEdit1: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function rtnpdn(const pline,s1:string; const seq:integer):string;
  end;

var
  frmsample_pdn: Tfrmsample_pdn;

implementation

uses mainformu, lwoformu, qn_sampleformu;

{$R *.dfm}

procedure Tfrmsample_pdn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if label12.Caption='Edit' then begin
    showmessage('Please save data!');
    action:=canone;
  end else begin
    action:=cafree;
    frmsample_pdn:=nil;
  end;
end;

procedure Tfrmsample_pdn.BitBtn1Click(Sender: TObject);
begin
  if label8.Caption='The fifth time' then begin
    if label11.Caption='S' then begin
      dbgrideh1.Columns[4].FieldName:='s_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'s_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('s_dt4').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('s_dt4').value
      else dateedit1.date:=date;
    end else if label11.Caption='AQ' then begin
      dbgrideh1.Columns[4].FieldName:='aq_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'aq_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('aq_dt4').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('aq_dt4').value
      else dateedit1.date:=date;
    end else if label11.Caption='T2' then begin
      dbgrideh1.Columns[4].FieldName:='t2_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t2_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('t2_dt4').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('t2_dt4').value
      else dateedit1.date:=date;
    end else if label11.Caption='T3' then begin
      dbgrideh1.Columns[4].FieldName:='t3_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t3_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='ATST' then begin
      dbgrideh1.Columns[4].FieldName:='atst_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'atst_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='TST' then begin
      dbgrideh1.Columns[4].FieldName:='tst_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'tst_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('tst_dt4').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('tst_dt4').value
      else dateedit1.date:=date;
    end;
    label8.Caption:='The forth time';
  end else if label8.Caption='The forth time' then begin
    if label11.Caption='S' then begin
      dbgrideh1.Columns[4].FieldName:='s_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'s_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('s_dt3').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('s_dt3').value
      else dateedit1.date:=date;
    end else if label11.Caption='AQ' then begin
      dbgrideh1.Columns[4].FieldName:='aq_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'aq_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('aq_dt3').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('aq_dt3').value
      else dateedit1.date:=date;
    end else if label11.Caption='T2' then begin
      dbgrideh1.Columns[4].FieldName:='t2_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t2_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('t2_dt3').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('t2_dt3').value
      else dateedit1.date:=date;
    end else if label11.Caption='T3' then begin
      dbgrideh1.Columns[4].FieldName:='t3_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t3_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='ATST' then begin
      dbgrideh1.Columns[4].FieldName:='atst_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'atst_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='TST' then begin
      dbgrideh1.Columns[4].FieldName:='tst_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'tst_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('tst_dt3').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('tst_dt3').value
      else dateedit1.date:=date;
    end;
    label8.Caption:='The third time';
  end else if label8.Caption='The third time' then begin
    if label11.Caption='S' then begin
      dbgrideh1.Columns[4].FieldName:='s_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'s_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('s_dt2').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('s_dt2').value
      else dateedit1.date:=date;
    end else if label11.Caption='AQ' then begin
      dbgrideh1.Columns[4].FieldName:='aq_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'aq_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('aq_dt2').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('aq_dt2').value
      else dateedit1.date:=date;
    end else if label11.Caption='T2' then begin
      dbgrideh1.Columns[4].FieldName:='t2_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t2_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('t2_dt2').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('t2_dt2').value
      else dateedit1.date:=date;
    end else if label11.Caption='T3' then begin
      dbgrideh1.Columns[4].FieldName:='t3_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t3_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='T1' then begin
      dbgrideh1.Columns[4].FieldName:='t1_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t1_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='ATST' then begin
      dbgrideh1.Columns[4].FieldName:='atst_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'atst_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='TST' then begin
      dbgrideh1.Columns[4].FieldName:='tst_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'tst_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('tst_dt2').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('tst_dt2').value
      else dateedit1.date:=date;
    end;
    label8.Caption:='The second time';
  end else if label8.Caption='The second time' then begin
    if label11.Caption='S' then begin
      dbgrideh1.Columns[4].FieldName:='s_sp1';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'s_pdn1',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('s_dt1').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('s_dt1').value
      else dateedit1.date:=date;
    end else if label11.Caption='AQ' then begin
      dbgrideh1.Columns[4].FieldName:='aq_sp1';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'aq_pdn1',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('aq_dt1').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('aq_dt1').value
      else dateedit1.date:=date;
    end else if label11.Caption='T2' then begin
      dbgrideh1.Columns[4].FieldName:='t2_sp1';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t2_pdn1',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('t2_dt1').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('t2_dt1').value
      else dateedit1.date:=date;
    end else if label11.Caption='T3' then begin
      dbgrideh1.Columns[4].FieldName:='t3_sp1';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t3_pdn1',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='T1' then begin
      dbgrideh1.Columns[4].FieldName:='t1_sp1';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t1_pdn1',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='ATST' then begin
      dbgrideh1.Columns[4].FieldName:='atst_sp1';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'atst_pdn1',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='TST' then begin
      dbgrideh1.Columns[4].FieldName:='tst_sp1';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'tst_pdn1',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('tst_dt1').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('tst_dt1').value
      else dateedit1.date:=date;
    end;
    label8.Caption:='The first time';
  end;
end;

procedure Tfrmsample_pdn.BitBtn2Click(Sender: TObject);
begin
  if label8.Caption='The first time' then begin
    if label11.Caption='S' then begin
      dbgrideh1.Columns[4].FieldName:='s_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'s_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('s_dt2').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('s_dt2').value
      else dateedit1.date:=date;
    end else if label11.Caption='AQ' then begin
      dbgrideh1.Columns[4].FieldName:='aq_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'aq_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('aq_dt2').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('aq_dt2').value
      else dateedit1.date:=date;
    end else if label11.Caption='T2' then begin
      dbgrideh1.Columns[4].FieldName:='t2_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t2_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('t2_dt2').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('t2_dt2').value
      else dateedit1.date:=date;
    end else if label11.Caption='T3' then begin
      dbgrideh1.Columns[4].FieldName:='t3_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t3_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='T1' then begin
      dbgrideh1.Columns[4].FieldName:='t1_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t1_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='ATST' then begin
      dbgrideh1.Columns[4].FieldName:='atst_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'atst_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='TST' then begin
      dbgrideh1.Columns[4].FieldName:='tst_sp2';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'tst_pdn2',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('tst_dt2').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('tst_dt2').value
      else dateedit1.date:=date;
    end;
    label8.Caption:='The second time';
  end else if label8.Caption='The second time' then begin
    if label11.Caption='S' then begin
      dbgrideh1.Columns[4].FieldName:='s_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'s_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('s_dt3').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('s_dt3').value
      else dateedit1.date:=date;
    end else if label11.Caption='AQ' then begin
      dbgrideh1.Columns[4].FieldName:='aq_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'aq_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('aq_dt3').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('aq_dt3').value
      else dateedit1.date:=date;
    end else if label11.Caption='T2' then begin
      dbgrideh1.Columns[4].FieldName:='t2_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t2_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('t2_dt3').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('t2_dt3').value
      else dateedit1.date:=date;
    end else if label11.Caption='T3' then begin
      dbgrideh1.Columns[4].FieldName:='t3_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t3_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='T1' then begin
      dbgrideh1.Columns[4].FieldName:='t1_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t1_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='ATST' then begin
      dbgrideh1.Columns[4].FieldName:='atst_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'atst_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='TST' then begin
      dbgrideh1.Columns[4].FieldName:='tst_sp3';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'tst_pdn3',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('tst_dt3').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('tst_dt3').value
      else dateedit1.date:=date;
    end;
    label8.Caption:='The third time';
  end else if label8.Caption='The third time' then begin
    if label11.Caption='S' then begin
      dbgrideh1.Columns[4].FieldName:='s_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'s_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('s_dt4').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('s_dt4').value
      else dateedit1.date:=date;
    end else if label11.Caption='AQ' then begin
      dbgrideh1.Columns[4].FieldName:='aq_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'aq_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('aq_dt4').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('aq_dt4').value
      else dateedit1.date:=date;
    end else if label11.Caption='T2' then begin
      dbgrideh1.Columns[4].FieldName:='t2_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t2_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('t2_dt4').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('t2_dt4').value
      else dateedit1.date:=date;
    end else if label11.Caption='T3' then begin
      dbgrideh1.Columns[4].FieldName:='t3_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t3_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='ATST' then begin
      dbgrideh1.Columns[4].FieldName:='atst_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'atst_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='TST' then begin
      dbgrideh1.Columns[4].FieldName:='tst_sp4';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'tst_pdn4',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('tst_dt4').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('tst_dt4').value
      else dateedit1.date:=date;
    end;
    label8.Caption:='The forth time';
  end else if label8.Caption='The forth time' then begin
    if label11.Caption='S' then begin
      dbgrideh1.Columns[4].FieldName:='s_sp5';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'s_pdn5',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('s_dt5').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('s_dt5').value
      else dateedit1.date:=date;
    end else if label11.Caption='AQ' then begin
      dbgrideh1.Columns[4].FieldName:='aq_sp5';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'aq_pdn5',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('aq_dt5').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('aq_dt5').value
      else dateedit1.date:=date;
    end else if label11.Caption='T2' then begin
      dbgrideh1.Columns[4].FieldName:='t2_sp5';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t2_pdn5',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('t2_dt5').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('t2_dt5').value
      else dateedit1.date:=date;
    end else if label11.Caption='T3' then begin
      dbgrideh1.Columns[4].FieldName:='t3_sp5';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'t3_pdn5',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='ATST' then begin
      dbgrideh1.Columns[4].FieldName:='atst_sp5';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'atst_pdn5',frmqn_sample.query1.fieldbyname('seq').value);
    end else if label11.Caption='TST' then begin
      dbgrideh1.Columns[4].FieldName:='tst_sp5';
      ComboBox1.Text:=rtnpdn(frmqn_sample.query1.fieldbyname('pline').value,'tst_pdn5',frmqn_sample.query1.fieldbyname('seq').value);
      if not frmqn_sample.query1.fieldbyname('tst_dt5').isnull then dateedit1.date:=frmqn_sample.query1.fieldbyname('tst_dt5').value
      else dateedit1.date:=date;
    end;
    label8.Caption:='The fifth time';
  end;
end;

procedure Tfrmsample_pdn.BitBtn3Click(Sender: TObject);
var
  s1,dt1:string;
  str1:string;
begin
  //
  if pos('first',label8.Caption)>0 then s1:='1'
  else if pos('second',label8.Caption)>0 then s1:='2'
  else if pos('third',label8.Caption)>0 then s1:='3'
  else if pos('forth',label8.Caption)>0 then s1:='4'
  else if pos('fifth',label8.Caption)>0 then s1:='5';
  if dateedit1.date>0 then dt1:=formatdatetime('yyyy-MM-dd',dateedit1.date) else dt1:=formatdatetime('yyyy-MM-dd',date);
  if frmqn_sample.Query1.state=dsedit then frmqn_sample.Query1.Post;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    if label11.Caption='S' then
    commandtext:='update tbl_lwo_sample set s_pdn'+s1+'=:x1 where pline=:x2 and seq=:x3'
    else if label11.Caption='AQ' then
    commandtext:='update tbl_lwo_sample set aq_pdn'+s1+'=:x1 where pline=:x2 and seq=:x3'
    else if label11.Caption='T2' then
    commandtext:='update tbl_lwo_sample set t2_pdn'+s1+'=:x1 where pline=:x2 and seq=:x3'
    else if label11.Caption='T3' then
    commandtext:='update tbl_lwo_sample set t3_pdn'+s1+'=:x1 where pline=:x2 and seq=:x3';
    params[0].asstring:=combobox1.text;
    params[1].asstring:=frmqn_sample.Query1.fieldbyname('pline').value;
    params[2].asinteger:=frmqn_sample.Query1.fieldbyname('seq').value;
    execute;
  end;
  }
    if label11.Caption='S' then
    str1:='update tbl_lwo_sample set s_pdn'+s1+'='''+combobox1.Text+''',s_dt'+s1+'='''+dt1+''' where pline='''+frmqn_sample.Query1.fieldbyname('pline').value+''' and seq='+frmqn_sample.Query1.fieldbyname('seq').asstring
    else if label11.Caption='AQ' then
    str1:='update tbl_lwo_sample set aq_pdn'+s1+'='''+combobox1.Text+''',aq_dt'+s1+'='''+dt1+''' where pline='''+frmqn_sample.Query1.fieldbyname('pline').value+''' and seq='+frmqn_sample.Query1.fieldbyname('seq').asstring
    else if label11.Caption='T2' then
    str1:='update tbl_lwo_sample set t2_pdn'+s1+'='''+combobox1.Text+''',t2_dt'+s1+'='''+dt1+''' where pline='''+frmqn_sample.Query1.fieldbyname('pline').value+''' and seq='+frmqn_sample.Query1.fieldbyname('seq').asstring
    else if label11.Caption='T3' then
    str1:='update tbl_lwo_sample set t3_pdn'+s1+'='''+combobox1.Text+''' where pline='''+frmqn_sample.Query1.fieldbyname('pline').value+''' and seq='+frmqn_sample.Query1.fieldbyname('seq').asstring
    else if label11.Caption='T1' then
    str1:='update tbl_lwo_sample set t1_pdn'+s1+'='''+combobox1.Text+''' where pline='''+frmqn_sample.Query1.fieldbyname('pline').value+''' and seq='+frmqn_sample.Query1.fieldbyname('seq').asstring
    else if label11.Caption='ATST' then
    str1:='update tbl_lwo_sample set atst_pdn'+s1+'='''+combobox1.Text+''' where pline='''+frmqn_sample.Query1.fieldbyname('pline').value+''' and seq='+frmqn_sample.Query1.fieldbyname('seq').asstring
    else if label11.Caption='TST' then
    str1:='update tbl_lwo_sample set tst_pdn'+s1+'='''+combobox1.Text+''',tst_dt'+s1+'='''+dt1+''' where pline='''+frmqn_sample.Query1.fieldbyname('pline').value+''' and seq='+frmqn_sample.Query1.fieldbyname('seq').asstring;
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  label12.Caption:='Save';
end;

procedure Tfrmsample_pdn.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if frmqn_sample.Query1.state=dsedit then label12.Caption:='Edit';
end;

procedure Tfrmsample_pdn.FormShow(Sender: TObject);
begin
  combobox1.Items.clear;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct a.pdn from tbl_pdn_m a,tbl_pdn_rwo b where a.seq=b.seq and b.j_no=:x1 and b.j2_job=:x2 and b.rwo=:x3 and b.acol=:x4 and a.status<>''6''';
    params[0].asstring:=frmqn_sample.Query1.fieldbyname('j_no').value;
    params[1].asstring:=frmqn_sample.Query1.fieldbyname('j2_job').value;
    params[2].asstring:=frmqn_sample.Query1.fieldbyname('rwo').value;
    params[3].asstring:=frmqn_sample.Query1.fieldbyname('acol').value;
    open;
    first;
    while not eof do begin
      combobox1.Items.Add(fieldbyname('pdn').value);
      application.ProcessMessages;
      next;
    end;
  end;
  dateedit1.date:=date;
end;

function Tfrmsample_pdn.rtnpdn(const pline, s1: string;
  const seq: integer): string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max('+s1+') as s1 from tbl_lwo_sample where pline=:x1 and seq=:x2';
    params[0].asstring:=pline;
    params[1].asinteger:=seq;
    open;
    if not fieldbyname('s1').isnull then result:=fieldbyname('s1').value else result:='';
  end;
end;

procedure Tfrmsample_pdn.DBGridEh1Columns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  str1,str2:string;
begin
  if combobox1.text>'' then begin
   bitbtn3click(self);
   if (frmqn_sample.query1.fieldbyname('pline').value>='T600') and (frmqn_sample.query1.fieldbyname('pline').value<'T700') then str1:='RX'
   else begin
     with query2 do begin
       close;
       params.clear;
       params.createparam(ftstring,'x1',ptinput);
       params.createparam(ftstring,'x2',ptinput);
       commandtext:='select a.tplant,a.seq from tbl_pdn_m a,tblline b where a.tplant=case when (b.tplant=''SC'') then ''SL'' else b.tplant end and a.pdn=:x1 and b.pline=:x2';
       params[0].asstring:=combobox1.text;
       params[1].asstring:=frmqn_sample.Query1.fieldbyname('pline').value;
       open;
       if not fieldbyname('tplant').isnull then begin
         str1:=fieldbyname('tplant').value;
         str1:=str1+' '+fieldbyname('seq').asstring;
       end else str1:='';
     end;
   end;

   str1:=str1+' '+combobox1.text+' '+frmqn_sample.query1.fieldbyname('j_no').value+' '+frmqn_sample.query1.fieldbyname('j2_job').value+' '+frmqn_sample.query1.fieldbyname('rwo').value+' '+frmqn_sample.query1.fieldbyname('acol').value+' '+frmqn_sample.query1.fieldbyname('psiz').value+' 1';
   //showmessage(str1);
   str2:=extractfiledir(application.ExeName);
   shellexecute(0,'open',pchar(str2+'\sample_take\SampleTake.exe'),pchar(str1),'c:\temp',sw_show);
  end;
end;

procedure Tfrmsample_pdn.BitBtn4Click(Sender: TObject);
var
  str1,str2,sdt:string;
begin
   if dateedit1.date>0 then sdt:=formatdatetime('yyyy-MM-dd',dateedit1.date) else sdt:='0';
   if sdt>'0' then begin
     with query2 do begin
       close;
       params.clear;
       commandtext:='select tplant from tblline where pline='''+frmqn_sample.query1.fieldbyname('pline').value+'''';
       open;
       if not fieldbyname('tplant').isnull then str1:=fieldbyname('tplant').value else str1:='';
     end;
     str1:=str1+' '+combobox1.text+' '+frmqn_sample.query1.fieldbyname('j_no').value+' '+frmqn_sample.query1.fieldbyname('j2_job').value+' '+sdt;
     str2:=extractfiledir(application.ExeName);
     shellexecute(0,'open',pchar(str2+'\sample_take\SampleTakeReport.exe'),pchar(str1),'c:\temp',sw_show);
   end else showmessage('No sample Quantity!');
end;

end.
 