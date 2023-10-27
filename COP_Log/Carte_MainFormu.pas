unit Carte_MainFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBckgnd, Menus, ADODB, DB, StdCtrls, Buttons, RzStatus, ExtCtrls,
  RzPanel, siComp;

type
  TfrmCarte_Main = class(TForm)
    MainMenu1: TMainMenu;
    RzBackground1: TRzBackground;
    MasterTables1: TMenuItem;
    Action1: TMenuItem;
    Exit1: TMenuItem;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lbluser: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    ADOQuery2: TADOQuery;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    WeeklyPrintoutReportsBooklet1: TMenuItem;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    lblmail: TLabel;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    LogCategory1: TMenuItem;
    ProductsColorSizesClasses1: TMenuItem;
    ProductsBKU1: TMenuItem;
    CountryCode1: TMenuItem;
    PackingMethod1: TMenuItem;
    ColorCodeName1: TMenuItem;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    PVHslogisticsinformation1: TMenuItem;
    PVHOrderPlacingProcedure1: TMenuItem;
    CheckBox20: TCheckBox;
    PVHStyleNumberSuffixHowtodefineit1: TMenuItem;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    QualityPerformanceReport1: TMenuItem;
    Label3: TLabel;
    ComboBox2: TComboBox;
    siLang1: TsiLang;
    lblfty: TLabel;
    Language1: TMenuItem;
    LUG1: TMenuItem;
    LUG2: TMenuItem;
    RzStatusPane2: TRzStatusPane;
    checkbox28: TCheckBox;
    chk29: TCheckBox;
    chk30: TCheckBox;
    procedure Exit1Click(Sender: TObject);
    procedure Action1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzStatusPane1DblClick(Sender: TObject);
    procedure WeeklyPrintoutReportsBooklet1Click(Sender: TObject);
    procedure MasterTables1Click(Sender: TObject);
    procedure ProductsColorSizesClasses1Click(Sender: TObject);
    procedure ProductsBKU1Click(Sender: TObject);
    procedure PackingMethod1Click(Sender: TObject);
    procedure PVHslogisticsinformation1Click(Sender: TObject);
    procedure PVHOrderPlacingProcedure1Click(Sender: TObject);
    procedure PVHStyleNumberSuffixHowtodefineit1Click(Sender: TObject);
    procedure QualityPerformanceReport1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure LUG1Click(Sender: TObject);
    procedure LUG2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Main: TfrmCarte_Main;

implementation

uses Carte_ActionitermsFormu, Carte_OrdprocessingFormu, Carte_PasswordFormu,
  Carte_WeeklyprintoutFormu, Carte_StyleclassesFormu, Carte_ProductsFormu,
  Carte_PackingmethodFormu, Carte_PVHLogisticFormu, Carte_PVHordplacingFormu,
  Carte_PVHstylesuffixFormu, aqlmainformu, xtdlformu;

{$R *.dfm}

procedure TfrmCarte_Main.Action1Click(Sender: TObject);
begin
  if frmCarte_Ordprocessing=nil then frmCarte_Ordprocessing:=TfrmCarte_Ordprocessing.create(Application);
  frmCarte_Ordprocessing.combobox2.text:='';
  frmCarte_Ordprocessing.combobox4.text:='';
  frmCarte_Ordprocessing.combobox6.text:='';
  frmCarte_Ordprocessing.chk3.checked:=false;
  frmCarte_Ordprocessing.chk4.checked:=false;
  frmCarte_Ordprocessing.Windowstate:=wsMaximized;
  frmCarte_Ordprocessing.BitBtn1.Enabled:=checkbox17.Checked;
  frmCarte_Ordprocessing.BitBtn2.Enabled:=chk30.Checked;
  frmCarte_Ordprocessing.BitBtn6.Enabled:=checkbox9.Checked;

  frmCarte_Ordprocessing.cxgrid1cust.options.editing:=checkbox17.checked;
  //frmCarte_Ordprocessing.cxGrid1act_item.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxGrid1lwdt_c.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxGrid1ct_raw1.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxGrid1lwdt_s.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1div.options.editing:=checkbox17.checked;
  //frmCarte_Ordprocessing.cxgrid1div.properties.readonly:=not checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1keycode.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1projectno.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1workorderno.properties.readonly:=not checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1custpo.properties.readonly:=not checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1custpo_dt.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1rwo_wo.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1prodcode.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1custstyle.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1sp_app2.options.editing:=not checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1phcolor.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1custcolor.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1qty.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxGrid1custpo_qty.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxGrid1bdc_qty.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxGrid1seqno1.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxGrid1tc_seqno.options.editing:=checkbox17.checked;
  frmCarte_Ordprocessing.cxGrid1grp_act.properties.readonly:=not checkbox17.checked;
  frmCarte_Ordprocessing.cxGrid1lwdt_act.properties.readonly:=not checkbox17.checked;
  frmCarte_Ordprocessing.cxgrid1qty1.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1qty1_sp.options.editing:=checkbox2.checked;
  //frmCarte_Ordprocessing.cxgrid1ct_raw1.options.editing:=checkbox2.checked;
  //frmCarte_Ordprocessing.cxgrid1ct_he1.options.editing:=checkbox2.checked;
  //frmCarte_Ordprocessing.cxgrid1ct_pp1.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1ddt.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1m_start.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1m_end.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1fwdt_o.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1fwdt_a.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1ex_o.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1ex_r.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxgrid1ex_l.options.editing:=checkbox2.checked;
  frmCarte_Ordprocessing.cxGrid1lwdt.options.editing:=checkbox17.checked;

  frmCarte_Ordprocessing.cxgrid1ex_a.options.editing:=checkbox13.checked;

  frmCarte_Ordprocessing.cxGrid1ord_cancel1.options.editing:=checkbox4.checked;

  //Material date
  frmCarte_Ordprocessing.cxGrid1ddt.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1m_ddt.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1ddt0.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1m_ddt0.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1m_start.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1m_end.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1mcup_ddt.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1mcup_mddt.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1mcup_ddt0.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1mcup_mddt0.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1mcup_mstart.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1mcup_mend.options.editing:=checkbox10.checked;
  //frmCarte_Ordprocessing.cxGrid1mcup.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1fw_csm.options.editing:=checkbox10.checked;
  frmCarte_Ordprocessing.cxGrid1fw_cddt.options.editing:=checkbox10.checked;

  //PMC date
  frmCarte_Ordprocessing.cxGrid1fwdt_o.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1fwdt_a.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1act_cmpdt0.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1ex_a_wk.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1ct_he.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1prod_site.options.editing:=checkbox20.checked;
  frmCarte_Ordprocessing.cxGrid1prod_site1.options.editing:=checkbox20.checked;
  frmCarte_Ordprocessing.cxGrid1fwdt_rq.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1fwdt_r.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1ex_rq.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1t3dt.options.editing:=chk29.checked;//checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1t3dt_r.options.editing:=chk29.checked;//checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1at3dt.options.editing:=checkbox11.checked or checkbox16.checked;
  frmCarte_Ordprocessing.cxGrid1numberofline.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1lwdt_r.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1lwdt_p.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1lwdt_r2.options.editing:=checkbox11.checked;
  frmCarte_Ordprocessing.cxGrid1fw_agree.options.editing:=checkbox11.checked;

  //MM update
  //frmCarte_Ordprocessing.cxGrid1div.options.editing:=checkbox12.checked;
  //frmCarte_Ordprocessing.cxGrid1keycode.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1shpm_c_r.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1rpt_app.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1custpo.properties.readonly:=not checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1so_stt.properties.readonly:=not checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1custpo_dt.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1workorderno.properties.readonly:=not checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1add_corder.properties.readonly:=not checkbox28.checked;
  frmCarte_Ordprocessing.cxGrid1add_wono.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1add_wocno.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1add_rwono.options.editing:=checkbox12.checked;
  //frmCarte_Ordprocessing.cxGrid1rwo_wo.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1custstyle.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1sp_app.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1mtono.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1sp_app2.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1sp_appdt_o.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1sp_appdt_r.options.editing:=checkbox12.checked;
  //frmCarte_Ordprocessing.cxGrid1phcolor.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1custcolor.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1qty.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1fyfs.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1jhrs.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1wo_cfmdt.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1qty1.options.editing:=(checkbox12.checked) or (checkbox9.checked);
  //frmCarte_Ordprocessing.cxGrid1qty1_sp.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1ex_o.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1ex_r.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1ex_l.options.editing:=checkbox12.checked;
  //frmCarte_Ordprocessing.cxGrid1ct_raw1.options.editing:=checkbox12.checked;
  //frmCarte_Ordprocessing.cxGrid1ct_md1.options.editing:=checkbox12.checked;
  //frmCarte_Ordprocessing.cxGrid1ct_he1.options.editing:=checkbox12.checked;
  //frmCarte_Ordprocessing.cxGrid1ct_pp1.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1booking.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1etam_bdc.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1etam_pak.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_dest.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1dest_qty.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1custpo_qty.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1bdc_qty.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1mtono.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1sp_qty.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1globalsplit.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_costco.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_aa.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1aa_qty.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_drop.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1drop_qty.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_bcd.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1in_ord.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1prodcode.options.editing:=checkbox19.checked;
  frmCarte_Ordprocessing.cxGrid1wo_custpoqty.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_moa.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_mtodt.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_bpdt.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_brand.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_pak1.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_iq1.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_iq2.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_iq3.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_iq4.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_iq5.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_iq6.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_cq1.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_cq2.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_cq3.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_cq4.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_cq5.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_cq6.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1ex_s.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1shpm.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1shpm_r.options.editing:=checkbox12.checked;
  //frmCarte_Ordprocessing.cxGrid1cq1.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cq2.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cq3.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cq4.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cq5.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cq6.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cqn1.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cqn2.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cqn3.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cqn4.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1cqn5.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1pvh_shop.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1smpl_valid.options.editing:=checkbox12.checked;
  frmCarte_Ordprocessing.cxGrid1shpt_bal.options.editing:=checkbox12.checked;

  //cutting
  //frmCarte_Ordprocessing.cxGrid1lwdt_c.options.editing:=checkbox21.checked;

  //sewing
  //frmCarte_Ordprocessing.cxGrid1lwdt_s.options.editing:=checkbox22.checked;

  frmCarte_Ordprocessing.Bringtofront;
end;

procedure TfrmCarte_Main.BitBtn1Click(Sender: TObject);
begin
  if combobox1.text<>'' then begin
    with adoquery1 do begin
      close;
      sql.text:='select * from tbl_carte_user where upper(usr)=:x1 and lower(pwd)=:x2';
      parameters[0].value:=combobox1.text;
      parameters[1].value:=edit1.text;
      open;
      if not fieldbyname('usr').isnull then begin
        groupbox1.Visible:=false;
        mastertables1.visible:=true;
        action1.visible:=true;
        weeklyprintoutreportsbooklet1.visible:=true;
        //QualityPerformanceReport1.visible:=true;
        exit1.visible:=true;
        language1.visible:=true;
        lbluser.caption:=fieldbyname('usr').value;
        lblmail.caption:=fieldbyname('mail').value;
        if not fieldbyname('fty').isnull then lblfty.caption:=fieldbyname('r_item').value
        else lblfty.caption:='';
        if not fieldbyname('r_item').isnull then checkbox1.checked:=fieldbyname('r_item').value
        else checkbox1.checked:=false;
        if not fieldbyname('r_sopc').isnull then checkbox2.checked:=fieldbyname('r_sopc').value
        else checkbox2.checked:=false;
        if not fieldbyname('r_ua').isnull then checkbox3.checked:=fieldbyname('r_ua').value
        else checkbox3.checked:=false;
        if not fieldbyname('r_cancel').isnull then checkbox4.checked:=fieldbyname('r_cancel').value
        else checkbox4.checked:=false;
        if not fieldbyname('r_pra').isnull then checkbox5.checked:=fieldbyname('r_pra').value
        else checkbox5.checked:=false;
        if not fieldbyname('r_ua1').isnull then checkbox6.checked:=fieldbyname('r_ua1').value
        else checkbox6.checked:=false;
        if not fieldbyname('r_cpy').isnull then checkbox7.checked:=fieldbyname('r_cpy').value
        else checkbox7.checked:=false;
        if not fieldbyname('r_print').isnull then checkbox8.checked:=fieldbyname('r_print').value
        else checkbox8.checked:=false;
        if not fieldbyname('r_split').isnull then checkbox9.checked:=fieldbyname('r_split').value
        else checkbox9.checked:=false;
        if not fieldbyname('r_mdd').isnull then checkbox10.checked:=fieldbyname('r_mdd').value
        else checkbox10.checked:=false;
        if not fieldbyname('r_fwdd').isnull then checkbox11.checked:=fieldbyname('r_fwdd').value
        else checkbox11.checked:=false;
        if not fieldbyname('r_mm').isnull then checkbox12.checked:=fieldbyname('r_mm').value
        else checkbox12.checked:=false;
        if not fieldbyname('r_exa').isnull then checkbox13.checked:=fieldbyname('r_exa').value
        else checkbox13.checked:=false;
        if not fieldbyname('r_sewf').isnull then checkbox14.checked:=fieldbyname('r_sewf').value
        else checkbox14.checked:=false;
        if not fieldbyname('r_aql').isnull then checkbox15.checked:=fieldbyname('r_aql').value
        else checkbox15.checked:=false;
        if not fieldbyname('r_pak').isnull then checkbox16.checked:=fieldbyname('r_pak').value
        else checkbox16.checked:=false;
        if not fieldbyname('r_admin').isnull then checkbox17.checked:=fieldbyname('r_admin').value
        else checkbox17.checked:=false;
        if not fieldbyname('r_cfmtc').isnull then checkbox18.checked:=fieldbyname('r_cfmtc').value
        else checkbox18.checked:=false;
        if not fieldbyname('r_prodcode').isnull then checkbox19.checked:=fieldbyname('r_prodcode').value
        else checkbox19.checked:=false;
        if not fieldbyname('r_site').isnull then checkbox20.checked:=fieldbyname('r_site').value
        else checkbox20.checked:=false;
        if not fieldbyname('r_cut').isnull then checkbox21.checked:=fieldbyname('r_cut').value
        else checkbox21.checked:=false;
        if not fieldbyname('r_sewing').isnull then checkbox22.checked:=fieldbyname('r_sewing').value
        else checkbox22.checked:=false;
        if not fieldbyname('r_wh').isnull then checkbox23.checked:=fieldbyname('r_wh').value
        else checkbox23.checked:=false;
        if not fieldbyname('r_sub').isnull then checkbox24.checked:=fieldbyname('r_sub').value
        else checkbox24.checked:=false;
        if not fieldbyname('r_sub1').isnull then checkbox25.checked:=fieldbyname('r_sub1').value
        else checkbox25.checked:=false;
        if not fieldbyname('r_mold').isnull then checkbox26.checked:=fieldbyname('r_mold').value
        else checkbox26.checked:=false;
        if not fieldbyname('r_pi').isnull then checkbox27.checked:=fieldbyname('r_pi').value
        else checkbox27.checked:=false;
        if not fieldbyname('r_rcode').isnull then checkbox28.checked:=fieldbyname('r_rcode').value
        else checkbox28.checked:=false;
        if not fieldbyname('r_t3r').isnull then chk29.checked:=fieldbyname('r_t3r').value
        else chk29.checked:=false;
        if not fieldbyname('r_dellog').isnull then chk30.checked:=fieldbyname('r_dellog').value
        else chk30.checked:=false;
        weeklyprintoutreportsbooklet1.visible:=checkbox8.checked;
        RzStatusPane1.Caption:='User: '+lbluser.caption;
        RzStatusPane2.Caption:='Language: '+combobox2.text;
      end else begin
        application.MessageBox('Wrong User!','Warning',mb_iconwarning+mb_ok);
        edit1.setfocus;
        lbluser.caption:='';
      end;
    end;
  end;
end;

procedure TfrmCarte_Main.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCarte_Main.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text>'' then begin
    siLang1.Language:=combobox2.text;
    RzStatusPane2.Caption:='Language: '+combobox2.text;
  end;
end;

procedure TfrmCarte_Main.Exit1Click(Sender: TObject);
begin
  if mdichildcount>0 then begin
    activemdichild.close;
  end
  else close;
end;

procedure TfrmCarte_Main.FormCreate(Sender: TObject);
begin
  adoconnection1.connectionstring:='FILE NAME='+extractfiledir(application.exename)+'\dblink_cop.udl';
  adoconnection1.commandtimeout:=300;
  adoconnection1.connectiontimeout:=300;
end;

procedure TfrmCarte_Main.FormShow(Sender: TObject);
begin
  mastertables1.visible:=false;
  action1.visible:=false;
  weeklyprintoutreportsbooklet1.visible:=false;
  QualityPerformanceReport1.visible:=false;
  exit1.visible:=false;
  language1.visible:=false;
  combobox1.items.Clear;
  with adoquery1 do begin
    close;
    parameters.clear;
    sql.text:='select usr from tbl_carte_user where usr is not null';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('usr').value);
      next;
    end;
  end;
  combobox1.setfocus;
  groupbox1.Left:=(screen.Width-groupbox1.Width) div 2;
  groupbox1.top:=(screen.height-groupbox1.Height) div 2;
end;

procedure TfrmCarte_Main.LUG1Click(Sender: TObject);
begin
  combobox2.text:='Traditional Chinese';
  RzStatusPane2.Caption:='Language: '+combobox2.text;
  {
  if mdichildcount>0 then begin
    if activemdichild=frmcarte_ordprocessing then begin
      frmcarte_ordprocessing.siLang1.Language:=ComboBox2.text;
    end;
  end;
  }
end;

procedure TfrmCarte_Main.LUG2Click(Sender: TObject);
begin
  combobox2.text:='English';
  RzStatusPane2.Caption:='Language: '+combobox2.text;
  {
  if mdichildcount>0 then begin
    if activemdichild=frmcarte_ordprocessing then begin
      frmcarte_ordprocessing.siLang1.Language:=ComboBox2.text;
    end;
  end;
  }
end;

procedure TfrmCarte_Main.MasterTables1Click(Sender: TObject);
begin
  if frmCarte_Actionitems=nil then frmCarte_Actionitems:=TfrmCarte_Actionitems.create(Application);
  with frmCarte_Actionitems.ADODataSet1 do begin
    close;
    parameters.Clear;
    commandtext:='select * from tbl_carte_actitem';
    open;
  end;
  frmCarte_Actionitems.Windowstate:=wsMaximized;
  frmCarte_Actionitems.BitBtn1.Enabled:=checkbox1.Checked;
  frmCarte_Actionitems.BitBtn2.Enabled:=checkbox1.Checked;
  frmCarte_Actionitems.cxGrid1DBTableView1.OptionsData.Editing:=checkbox1.Checked;
  frmCarte_Actionitems.Bringtofront;
end;

procedure TfrmCarte_Main.PackingMethod1Click(Sender: TObject);
begin
  if frmCarte_Packingmethod=nil then frmCarte_Packingmethod:=TfrmCarte_Packingmethod.create(Application);
  with frmCarte_Packingmethod.ADODataSet1 do begin
    close;
    parameters.Clear;
    commandtext:='select * from tbl_carte_packingmethod';
    open;
  end;
  with frmCarte_Packingmethod.ADODataSet2 do begin
    close;
    parameters.Clear;
    commandtext:='select * from tbl_carte_packmethod_marks';
    open;
  end;
  frmCarte_Packingmethod.Windowstate:=wsMaximized;
  frmCarte_Packingmethod.DBMemo1.Readonly:=not checkbox1.Checked;
  frmCarte_Packingmethod.BitBtn1.Enabled:=checkbox1.Checked;
  frmCarte_Packingmethod.BitBtn2.Enabled:=checkbox1.Checked;
  frmCarte_Packingmethod.cxGrid1DBTableView1.OptionsData.Editing:=checkbox1.Checked;
  frmCarte_Packingmethod.Bringtofront;
end;

procedure TfrmCarte_Main.ProductsBKU1Click(Sender: TObject);
begin
  if frmCarte_Products=nil then frmCarte_Products:=TfrmCarte_Products.create(Application);
  with frmCarte_Products.ADODataSet1 do begin
    close;
    parameters.Clear;
    commandtext:='select * from tbl_carte_prod';
    open;
  end;
  frmCarte_Products.Windowstate:=wsMaximized;
  frmCarte_Products.BitBtn1.Enabled:=checkbox1.Checked;
  frmCarte_Products.BitBtn2.Enabled:=checkbox1.Checked;
  frmCarte_Products.cxGrid1DBTableView1.OptionsData.Editing:=checkbox1.Checked;
  frmCarte_Products.Bringtofront;
end;

procedure TfrmCarte_Main.ProductsColorSizesClasses1Click(Sender: TObject);
begin
  if frmCarte_Styleclasses=nil then frmCarte_Styleclasses:=TfrmCarte_Styleclasses.create(Application);
  with frmCarte_Styleclasses.ADODataSet1 do begin
    close;
    parameters.Clear;
    commandtext:='select * from tbl_carte_styleclass';
    open;
  end;
  frmCarte_Styleclasses.Windowstate:=wsMaximized;
  frmCarte_Styleclasses.BitBtn1.Enabled:=checkbox1.Checked;
  frmCarte_Styleclasses.BitBtn2.Enabled:=checkbox1.Checked;
  frmCarte_Styleclasses.cxGrid1DBTableView1.OptionsData.Editing:=checkbox1.Checked;
  frmCarte_Styleclasses.Bringtofront;
end;

procedure TfrmCarte_Main.PVHOrderPlacingProcedure1Click(Sender: TObject);
begin
  if frmCarte_PVHordplacing=nil then frmCarte_PVHordplacing:=TfrmCarte_PVHordplacing.create(Application);
  with frmCarte_PVHordplacing.ADODataSet1 do begin
    close;
    parameters.Clear;
    commandtext:='select * from tbl_carte_pvhplaceorder';
    open;
  end;
  frmCarte_PVHordplacing.Windowstate:=wsMaximized;
  frmCarte_PVHordplacing.BitBtn1.Enabled:=checkbox1.Checked;
  frmCarte_PVHordplacing.BitBtn2.Enabled:=checkbox1.Checked;
  frmCarte_PVHordplacing.cxGrid1DBTableView1.OptionsData.Editing:=checkbox1.Checked;
  frmCarte_PVHordplacing.Bringtofront;
end;

procedure TfrmCarte_Main.PVHslogisticsinformation1Click(Sender: TObject);
begin
  if frmCarte_PVHLogistic=nil then frmCarte_PVHLogistic:=TfrmCarte_PVHLogistic.create(Application);
  with frmCarte_PVHLogistic.ADODataSet1 do begin
    close;
    parameters.Clear;
    commandtext:='select * from tbl_carte_pvhlogistic';
    open;
  end;
  frmCarte_PVHLogistic.Windowstate:=wsMaximized;
  frmCarte_PVHLogistic.BitBtn1.Enabled:=checkbox1.Checked;
  frmCarte_PVHLogistic.BitBtn2.Enabled:=checkbox1.Checked;
  frmCarte_PVHLogistic.cxGrid1DBTableView2.OptionsData.Editing:=checkbox1.Checked;
  frmCarte_PVHLogistic.Bringtofront;
end;

procedure TfrmCarte_Main.PVHStyleNumberSuffixHowtodefineit1Click(
  Sender: TObject);
begin
  if frmCarte_PVHstylesuffix=nil then frmCarte_PVHstylesuffix:=TfrmCarte_PVHstylesuffix.create(Application);
  with frmCarte_PVHstylesuffix.ADODataSet1 do begin
    close;
    parameters.Clear;
    commandtext:='select * from tbl_carte_pvhstylesuf';
    open;
  end;
  frmCarte_PVHstylesuffix.Windowstate:=wsMaximized;
  frmCarte_PVHstylesuffix.BitBtn1.Enabled:=checkbox1.Checked;
  frmCarte_PVHstylesuffix.BitBtn2.Enabled:=checkbox1.Checked;
  frmCarte_PVHstylesuffix.cxGrid1DBTableView1.OptionsData.Editing:=checkbox1.Checked;
  frmCarte_PVHstylesuffix.Bringtofront;
end;

procedure TfrmCarte_Main.QualityPerformanceReport1Click(Sender: TObject);
begin
  if frmaqlmain=nil then frmaqlmain:=tfrmaqlmain.create(application);
  //frmaqlmain.windowstate=wsMaximized;
  //frmaqlmain.bringtofront;
  if frmxtdl=nil then frmxtdl:=tfrmxtdl.create(nil);
  frmxtdl.combobox1.text:=combobox1.text;
  frmxtdl.edit1.text:=edit1.text;
  frmxtdl.bitbtn1click(self);
end;

procedure TfrmCarte_Main.RzStatusPane1DblClick(Sender: TObject);
begin
  if frmCarte_Password=nil then frmCarte_Password:=tfrmCarte_Password.create(nil);
  frmCarte_Password.label2.caption:=lbluser.caption;
  frmCarte_Password.show;
end;

procedure TfrmCarte_Main.WeeklyPrintoutReportsBooklet1Click(Sender: TObject);
begin
  if frmCarte_Weeklyprintout=nil then frmCarte_Weeklyprintout:=TfrmCarte_Weeklyprintout.create(Application);
  frmCarte_Weeklyprintout.Windowstate:=wsMaximized;
  frmCarte_Weeklyprintout.Bringtofront;
end;

end.
