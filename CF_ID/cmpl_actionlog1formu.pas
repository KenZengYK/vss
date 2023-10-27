unit cmpl_actionlog1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, cxCurrencyEdit, cxButtonEdit,
  cxGridDBTableView, StdCtrls, Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, ADODB;

type
  Tfrmcmpl_actionlog1 = class(TForm)
    Panel3: TPanel;
    Label16: TLabel;
    Label9: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxView1: TcxGridDBBandedTableView;
    cxView1seq: TcxGridDBBandedColumn;
    cxView1prjno: TcxGridDBBandedColumn;
    cxView1fcrq: TcxGridDBBandedColumn;
    cxView1gch: TcxGridDBBandedColumn;
    cxView1f_wl: TcxGridDBBandedColumn;
    cxView1f_xh: TcxGridDBBandedColumn;
    cxView1f_lbrq: TcxGridDBBandedColumn;
    cxView1f_sah: TcxGridDBBandedColumn;
    cxView1f_sah_d: TcxGridDBBandedColumn;
    cxView1f_qty: TcxGridDBBandedColumn;
    cxView1f_qty_d: TcxGridDBBandedColumn;
    cxView1f_qty_p: TcxGridDBBandedColumn;
    cxView1f_cmpl_estdd: TcxGridDBBandedColumn;
    cxView1f_cmpl_actdd: TcxGridDBBandedColumn;
    cxView1lines: TcxGridDBBandedColumn;
    cxView1f_estday: TcxGridDBBandedColumn;
    cxView1f_overdue: TcxGridDBBandedColumn;
    cxView1cmpl_estdd: TcxGridDBBandedColumn;
    cxView1sewing_f_wcrq: TcxGridDBBandedColumn;
    cxView1sewing_l_wcrq: TcxGridDBBandedColumn;
    cxView1ttl_wl: TcxGridDBBandedColumn;
    cxView1aff_wl: TcxGridDBBandedColumn;
    cxView1aff_p: TcxGridDBBandedColumn;
    cxView1al_reason_grp: TcxGridDBBandedColumn;
    cxView1al_reason: TcxGridDBBandedColumn;
    cxView1f_cmpl_estdd1: TcxGridDBBandedColumn;
    cxView1q1dt: TcxGridDBBandedColumn;
    cxView1al_reason_cde: TcxGridDBBandedColumn;
    cxView1lines1: TcxGridDBBandedColumn;
    cxView1al_cde: TcxGridDBBandedColumn;
    cxView1al_grp: TcxGridDBBandedColumn;
    cxView1stage: TcxGridDBBandedColumn;
    cxView1al_startdt: TcxGridDBBandedColumn;
    cxView1al_cmpldt: TcxGridDBBandedColumn;
    cxView1al_cmpl: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    Panel4: TPanel;
    Label8: TLabel;
    Label7: TLabel;
    BitBtn4: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn9: TBitBtn;
    Panel2: TPanel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1act_dt: TcxGridDBColumn;
    cxGrid1DBTableView1seq1: TcxGridDBColumn;
    cxGrid1DBTableView1act_issue: TcxGridDBColumn;
    cxGrid1DBTableView1act_pra: TcxGridDBColumn;
    cxGrid1DBTableView1act_marks: TcxGridDBColumn;
    cxGrid1DBTableView1attachment: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    al_dashboard: TADODataSet;
    ds1: TDataSource;
    AQuery1: TADOQuery;
    AQuery2: TADOQuery;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    qry1: TADOQuery;
    cxView1marker_ttl: TcxGridDBBandedColumn;
    cxView1copy_ttl: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxView1al_cdePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ADODataSet1NewRecord(DataSet: TDataSet);
    procedure ds1DataChange(Sender: TObject; Field: TField);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure al_dashboardAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function actseq_cvt(const seq1:integer):string;
  end;

var
  frmcmpl_actionlog1: Tfrmcmpl_actionlog1;

implementation

uses mainu, cmpl_actionlogformu, Cause_ChooseFormu, Carte_MailFormu, Grp_ActionDetailFormu;

{$R *.dfm}

function Tfrmcmpl_actionlog1.actseq_cvt(const seq1: integer): string;
begin
  if seq1=1 then result:=' - Started'
  else if seq1=2 then result:=' - 2nd'
  else if seq1=3 then result:=' - 3rd'
  else if seq1>=4 then result:=' - '+inttostr(seq1)+'th';
end;

procedure Tfrmcmpl_actionlog1.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  (ADODataSet1.FieldByName('act_dt') as TDateTimeField).DisplayFormat:='mm/dd hh:nn';
end;

procedure Tfrmcmpl_actionlog1.ADODataSet1NewRecord(DataSet: TDataSet);
var
  seqi:Integer;
begin
  ADODataSet1.FieldByName('prjno').Value:=al_dashboard.FieldByName('prjno').Value;
  ADODataSet1.FieldByName('stage').Value:=al_dashboard.FieldByName('stage').Value;
  ADODataSet1.FieldByName('stage_i').Value:=al_dashboard.FieldByName('stage_i').Value;
  ADODataSet1.FieldByName('act_dt').Value:=now;
  ADODataSet1.FieldByName('act_issue').Value:=frmmain.lbluser1.Caption;
  with aquery1 do begin
    close;
    sql.Text:='select max(seq1) as seqi from cut_al_detail where prjno='''+al_dashboard.FieldByName('prjno').Value+''' and stage_i='+al_dashboard.FieldByName('stage_i').AsString;
    open;
    if not FieldByName('seqi').IsNull then seqi:=FieldByName('seqi').Value+1 else seqi:=1;
  end;
  ADODataSet1.FieldByName('seq1').Value:=seqi;
end;

procedure Tfrmcmpl_actionlog1.al_dashboardAfterOpen(DataSet: TDataSet);
begin
  (al_dashboard.fieldbyname('f_sah') as tfloatfield).displayformat:='0.0000';
  (al_dashboard.fieldbyname('f_qty_p') as tfloatfield).displayformat:='0.00';
  (al_dashboard.fieldbyname('f_estday') as tfloatfield).displayformat:='0.00';
  (al_dashboard.FieldByName('fcrq') as TDateTimeField).DisplayFormat:='yyyy/MM/DD';
  (al_dashboard.FieldByName('f_lbrq') as TDateTimeField).DisplayFormat:='yyyy/MM/DD';
  (al_dashboard.FieldByName('f_cmpl_estdd') as TDateTimeField).DisplayFormat:='yyyy/MM/DD';
  (al_dashboard.FieldByName('f_cmpl_estdd1') as TDateTimeField).DisplayFormat:='yyyy/MM/DD';
  (al_dashboard.FieldByName('f_cmpl_actdd') as TDateTimeField).DisplayFormat:='yyyy/MM/DD';
  (al_dashboard.FieldByName('q1dt') as TDateTimeField).DisplayFormat:='yyyy/MM/DD';
  (al_dashboard.FieldByName('al_cmpldt') as TDateTimeField).DisplayFormat:='yyyy/MM/DD';
  (al_dashboard.FieldByName('al_startdt') as TDateTimeField).DisplayFormat:='mm/dd hh:nn';
end;

procedure Tfrmcmpl_actionlog1.BitBtn1Click(Sender: TObject);
begin
  cxGrid1.SetFocus;
  adodataset1.append;
end;

procedure Tfrmcmpl_actionlog1.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then adodataset1.Delete;
end;

procedure Tfrmcmpl_actionlog1.BitBtn3Click(Sender: TObject);
begin
  if (adodataset1.State=dsEdit) or (adodataset1.State=dsInsert) then adodataset1.Post;
end;

procedure Tfrmcmpl_actionlog1.BitBtn8Click(Sender: TObject);
begin
  if (al_dashboard.State=dsEdit) or (al_dashboard.State=dsInsert) then al_dashboard.Post;
  bitbtn3click(self);

  if frmcarte_Mail=nil then frmCarte_Mail:=tfrmCarte_Mail.create(nil);
  frmcarte_mail.label9.caption:='Action1';
  with aquery1 do begin
    close;
    sql.text:='select tolist,cclist,seq1 from cut_al_detail where prjno=:x1 and stage_i=:x2 and seq1<=:x3 and tolist>'''' order by seq1 desc';
    parameters[0].value:=adodataset1.fieldbyname('prjno').value;
    parameters[1].value:=adodataset1.fieldbyname('stage_i').value;
    parameters[2].value:=adodataset1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('seq1').isnull then begin
      frmcarte_mail.edit3.text:=fieldbyname('tolist').value;
      frmcarte_mail.edit4.text:=fieldbyname('cclist').value;
    end;
  end;

  frmCarte_Mail.edit5.text:='('+al_dashboard.fieldbyname('fty').value+') CF_ID#'+al_dashboard.fieldbyname('prjno').value+' ('+al_dashboard.fieldbyname('stage').value+'), '+al_dashboard.fieldbyname('gch').value+' ('+copy(al_dashboard.fieldbyname('gch').value,1,4)+') / Cause Cde '+al_dashboard.fieldbyname('al_cde').value+al_dashboard.FieldByName('al_reason_cde').Value+actseq_cvt(adodataset1.fieldbyname('seq1').value);

  frmCarte_Mail.memo1.lines.clear;
  frmCarte_Mail.memo1.lines.add('�iSender�j:  '+adodataset1.fieldbyname('act_issue').value);
  frmCarte_Mail.memo1.lines.add('�idd/time�j:  '+formatdatetime('mm/dd hh:nn',adodataset1.fieldbyname('act_dt').value));
  frmCarte_Mail.memo1.lines.add('�iFollow up seq.#�j:  '+adodataset1.fieldbyname('seq1').asstring);
  if (adodataset1.fieldbyname('seq1').value=1) then
  frmcarte_mail.memo1.lines.add('�iCF_ID#�j:  '+al_dashboard.fieldbyname('prjno').value);
  if (adodataset1.fieldbyname('seq1').value=1) then
  frmcarte_mail.memo1.lines.add('�iSW Start dd�j:  '+formatdatetime('mm/dd',al_dashboard.fieldbyname('q1dt').value));

  if (adodataset1.fieldbyname('seq1').value=1) then
  frmCarte_Mail.memo1.lines.add('�iCat. desc.�j:  '+al_dashboard.fieldbyname('al_reason_grp').value);
  if (adodataset1.fieldbyname('seq1').value=1) then
  if not al_dashboard.fieldbyname('al_cmpldt').isnull then
  frmCarte_Mail.memo1.lines.add('�iTarget cmpl date�j:  '+formatdatetime('mm/dd',al_dashboard.fieldbyname('al_cmpldt').value))
  else  frmCarte_Mail.memo1.lines.add('�iTarget cmpl date�j:  ');
  if (adodataset1.fieldbyname('seq1').value=1) then begin
    if not al_dashboard.fieldbyname('al_cmpl_actdt').isnull then
    frmCarte_Mail.memo1.lines.add('�iActual cmpl date�j:  '+formatdatetime('mm/dd',al_dashboard.fieldbyname('al_cmpl_actdt').value))
    else frmCarte_Mail.memo1.lines.add('�iActual cmpl date�j:  ');
  end;
  frmCarte_Mail.memo1.lines.add('�iFollow up content (in seq.)�j: ');
  frmCarte_Mail.memo1.lines.add(adodataset1.fieldbyname('act_marks').value);
  frmCarte_Mail.memo1.lines.add('==================================================');

  with qry1 do begin
    close;
    sql.text:='select act_issue,act_dt,seq1,act_marks from cut_al_detail where prjno=:x1 and stage_i=:x2 and seq1<:x3 order by seq1 desc';
    parameters[0].value:=al_dashboard.fieldbyname('prjno').value;
    parameters[1].value:=adodataset1.fieldbyname('stage_i').value;
    parameters[2].value:=adodataset1.fieldbyname('seq1').value;
    open;
    first;
    while not eof do begin
      frmCarte_Mail.memo1.lines.add('�iSender�j:  '+qry1.fieldbyname('act_issue').value);
      frmCarte_Mail.memo1.lines.add('�idd/time�j:  '+formatdatetime('mm/dd hh:nn',qry1.fieldbyname('act_dt').value));
      frmCarte_Mail.memo1.lines.add('�iFollow up seq.#�j:  '+qry1.fieldbyname('seq1').asstring);
      if (qry1.fieldbyname('seq1').value=1) then
      frmcarte_mail.memo1.lines.add('�iCF_ID#�j:  '+al_dashboard.fieldbyname('prjno').value);
      if (qry1.fieldbyname('seq1').value=1) then
      //frmcarte_mail.memo1.lines.add('�iCust Style #�j:  '+cstyle);
      frmcarte_mail.memo1.lines.add('�iSW Start dd�j:  '+formatdatetime('mm/dd',al_dashboard.fieldbyname('q1dt').value));
      if (qry1.fieldbyname('seq1').value=1) then
      frmCarte_Mail.memo1.lines.add('�iCat. desc.�j:  '+al_dashboard.fieldbyname('al_reason_grp').value);
      if (qry1.fieldbyname('seq1').value=1) then
      if not al_dashboard.fieldbyname('al_cmpldt').isnull then
      frmCarte_Mail.memo1.lines.add('�iTarget cmpl date�j:  '+formatdatetime('mm/dd',al_dashboard.fieldbyname('al_cmpldt').value))
      else  frmCarte_Mail.memo1.lines.add('�iTarget cmpl date�j:  ');
      if (adodataset1.fieldbyname('seq1').value=1) then begin
        if not al_dashboard.fieldbyname('al_cmpl_actdt').isnull then
        frmCarte_Mail.memo1.lines.add('�iActual cmpl date�j:  '+formatdatetime('mm/dd',al_dashboard.fieldbyname('al_cmpl_actdt').value))
        else frmCarte_Mail.memo1.lines.add('�iActual cmpl date�j:  ');
      end;
      frmCarte_Mail.memo1.lines.add('�iFollow up content (in seq.)�j: ');
      frmCarte_Mail.memo1.lines.add(qry1.fieldbyname('act_marks').value);
      frmCarte_Mail.memo1.lines.add('==================================================');
      next;
    end;
  end;

  frmCarte_Mail.show;
end;

procedure Tfrmcmpl_actionlog1.BitBtn9Click(Sender: TObject);
begin
  if (al_dashboard.State=dsEdit) or (al_dashboard.State=dsInsert) then al_dashboard.Post;
end;

procedure Tfrmcmpl_actionlog1.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if frmgrp_actiondetail=nil then frmgrp_actiondetail:=tfrmgrp_actiondetail.create(nil);
  frmgrp_actiondetail.show;
end;

procedure Tfrmcmpl_actionlog1.cxView1al_cdePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if frmcmpl_actionlog.al_dashboard.fieldbyname('al_cmpl').value=false then begin
    if frmcause_choose=nil then frmcause_choose:=tfrmcause_choose.create(nil);
    frmcause_choose.label1.caption:='1';
    frmcause_choose.Show;
  end;
end;

procedure Tfrmcmpl_actionlog1.ds1DataChange(Sender: TObject; Field: TField);
begin
  if not al_dashboard.fieldbyname('stage_i').isnull then begin
    label7.caption:='['+al_dashboard.fieldbyname('stage').value+']';
    with adodataset1 do begin
      close;
      commandtext:='select * from cut_al_detail where prjno='''+al_dashboard.fieldbyname('prjno').value+''' and stage_i='+al_dashboard.fieldbyname('stage_i').asstring;
      //parameters[0].value:=al_dashboard.fieldbyname('prjno').value;
      //parameters[1].value:=al_dashboard.fieldbyname('stage_i').value;
      open;
    end;
  end else begin
    label7.caption:='[]';
    adodataset1.close;
  end;
end;

procedure Tfrmcmpl_actionlog1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcmpl_actionlog1:=nil
end;

end.
