unit FRN_ChooseFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  StdCtrls, Buttons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCalendar, ADODB, cxGridBandedTableView, cxGridDBBandedTableView, Mask,
  RXSpin, RzEdit, RzSpnEdt;

type
  TfrmFRN_Choose = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
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
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1PRJNO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WONO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1STYLNO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WO_QTY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FWDT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1EXDT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1MATTYPE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ITEMCODE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SUPPREF: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1QTY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CACYY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WASTAGE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FRN_YY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FRN_WST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FRN_TTLYY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DIFF_YY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DIFFP: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    frn_master: TADODataSet;
    dsfrn_master: TDataSource;
    frn_detail: TADODataSet;
    dsfrn_detail: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    BitBtn3: TBitBtn;
    SpinEdit1: TRzSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure dsfrn_masterDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure openmaster;
  end;

var
  frmFRN_Choose: TfrmFRN_Choose;

implementation

uses mainu, fcjyu, frn_reviewformu;

{$R *.dfm}

procedure TfrmFRN_Choose.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmFRN_Choose:=nil;
end;

procedure TfrmFRN_Choose.BitBtn3Click(Sender: TObject);
begin
  if frmFRN_Review=nil then frmFRN_Review:=tfrmFRN_Review.create(nil);
  frmFRN_Review.Label3.caption:='2';
  frmFRN_Review.show;
end;

procedure TfrmFRN_Choose.openmaster;
begin
  with frn_master do begin
    close;
    //parameters.clear;
    commandtext:='select * from phgdb..cut_frn_master where frn_no='''+edit1.text+'''';
    open;
  end;
end;

procedure TfrmFRN_Choose.dsfrn_masterDataChange(Sender: TObject;
  Field: TField);
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

procedure TfrmFRN_Choose.BitBtn1Click(Sender: TObject);
var
  prjno:string;
  cont:string;
begin
  if frn_master.active=true then begin
    if (combobox1.text>'') and (combobox2.text>'') then begin
      prjno:=frn_master.fieldbyname('frn_no').value+frn_detail.fieldbyname('itemcode').value+frn_detail.fieldbyname('mat_i').asstring+frn_detail.fieldbyname('clr').value+'-'+combobox1.text+'-'+copy(combobox2.text,1,1)+formatfloat('#0',spinedit1.value);

      cont:='0';
      with adoquery1 do begin
        close;
        parameters.clear;
        sql.text:='select wl from cut_fcjy3 where prjno=:x1 and wl=:x2';
        parameters[0].value:=prjno;
        parameters[1].value:=frn_detail.fieldbyname('mattype').value+'-'+frn_detail.fieldbyname('itemcode').value;
        open;
        if not fieldbyname('wl').IsNull then cont:='1';
      end;

      if cont='0' then begin
        with adoquery2 do begin
          close;
          sql.text:='execute cut_jsfcjy_frn :x1,:x2,:x3,:x4';
          parameters[0].value:=prjno;
          parameters[1].value:=frn_master.fieldbyname('frn_no').value;
          parameters[2].value:=frn_detail.fieldbyname('itemcode').value;
          parameters[3].value:=frn_detail.fieldbyname('clr').value;
          execsql;
        end;
      end else showmessage('This material already chosen!');
      with frmfcjy.fcjy1 do begin
        close;
        commandtext:='select * from cut_fcjy1 where prjno=:prjno';
        parameters[0].value:=prjno;
        open;
      end;
      close;
    end;
  end;
end;

end.
