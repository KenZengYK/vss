unit calendarchartformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, Buttons, DB, DBClient, DateUtils,
  Mask, rxToolEdit;

type
  Tfrmcalendarchart = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    opt1: TRadioButton;
    opt2: TRadioButton;
    Edit1: TSpinEdit;
    Edit2: TSpinEdit;
    Edit3: TSpinEdit;
    Edit4: TSpinEdit;
    Edit5: TSpinEdit;
    Edit6: TSpinEdit;
    Edit7: TSpinEdit;
    Edit8: TSpinEdit;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Label7: TLabel;
    ComboBox3: TComboBox;
    Label8: TLabel;
    Edit9: TEdit;
    xh1: TRadioButton;
    Label9: TLabel;
    Label10: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure opt1Click(Sender: TObject);
    procedure opt2Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcalendarchart: Tfrmcalendarchart;

implementation

uses mainformu, currchartformu;

{$R *.dfm}

procedure Tfrmcalendarchart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmcurrchart<>nil then frmcurrchart:=nil;
  action:=cafree;
  frmcalendarchart:=nil;
end;

procedure Tfrmcalendarchart.BitBtn1Click(Sender: TObject);
begin
  if frmcurrchart<>nil then frmcurrchart:=nil;
  if (combobox1.text>'') or (combobox2.text>'') then begin
    if frmcurrchart=nil then frmcurrchart:=tfrmcurrchart.Create(nil);
    frmcurrchart.ComboBox1.Text:=combobox1.text;
    frmcurrchart.ComboBox2.Text:=combobox2.text;
    frmcurrchart.ComboBox3.Text:=combobox3.text;
    frmcurrchart.Edit9.Text:=edit9.text;
    frmcurrchart.xh1.Checked:=xh1.Checked;
    frmcurrchart.opt1.Checked:=opt1.Checked;
    frmcurrchart.opt2.Checked:=opt2.Checked;
    frmcurrchart.DateEdit1.Date:=dateedit1.date;
    frmcurrchart.DateEdit2.Date:=dateedit2.date;
    frmcurrchart.Edit1.Value:=edit1.Value;
    frmcurrchart.Edit2.Value:=edit2.Value;
    frmcurrchart.Edit3.Value:=edit3.Value;
    frmcurrchart.Edit4.Value:=edit4.Value;
    frmcurrchart.Edit5.Value:=edit5.Value;
    frmcurrchart.Edit6.Value:=edit6.Value;
    frmcurrchart.Edit7.Value:=edit7.Value;
    frmcurrchart.Edit8.Value:=edit8.Value;
    frmcurrchart.BitBtn1click(self);
    frmcurrchart.BitBtn2click(self);
  end;
end;

procedure Tfrmcalendarchart.FormShow(Sender: TObject);
begin
  dateedit1.Date:=date;
  dateedit2.date:=date;
  edit1.Value:=yearof(date);
  edit2.value:=weekof(date);
  edit3.value:=yearof(date);
  edit4.value:=weekof(date);
  opt1.Checked:=true;

  opt2.Checked:=false;
  edit5.Enabled:=false;
  edit6.Enabled:=false;
  edit7.Enabled:=false;
  edit8.Enabled:=false;

  combobox2.items.clear;
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where lactive=1 and tshop is not null';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct substr(j_no,1,4) as cust from tblshedule where yzh=0';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmcalendarchart.opt1Click(Sender: TObject);
begin
  if opt1.Checked then begin
    edit1.Enabled:=true;
    edit2.Enabled:=true;
    edit3.Enabled:=true;
    edit4.Enabled:=true;
    edit1.Value:=yearof(date);
    edit2.value:=weekof(date);
    edit3.value:=yearof(date);
    edit4.value:=weekof(date);
    opt1.Checked:=true;
    opt2.Checked:=false;
    xh1.Checked:=false;
    edit5.Enabled:=false;
    edit6.Enabled:=false;
    edit7.Enabled:=false;
    edit8.Enabled:=false;
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
  end;
end;

procedure Tfrmcalendarchart.opt2Click(Sender: TObject);
begin
  if opt2.Checked then begin
    edit5.Enabled:=true;
    edit6.Enabled:=true;
    edit7.Enabled:=true;
    edit8.Enabled:=true;
    edit5.Value:=yearof(date);
    edit6.value:=monthof(date);
    edit7.value:=yearof(date);
    edit8.value:=monthof(date);
    opt2.Checked:=true;
    opt1.Checked:=false;
    xh1.Checked:=false;
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    dateedit1.Enabled:=false;
    dateedit2.Enabled:=false;
  end;
end;

procedure Tfrmcalendarchart.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    edit1.Enabled:=false;
    edit2.Enabled:=false;
    edit3.Enabled:=false;
    edit4.Enabled:=false;
    edit1.Value:=yearof(date);
    edit2.value:=weekof(date);
    edit3.value:=yearof(date);
    edit4.value:=weekof(date);
    opt1.Checked:=false;
    opt2.Checked:=false;
    xh1.Checked:=true;
    edit5.Enabled:=false;
    edit6.Enabled:=false;
    edit7.Enabled:=false;
    edit8.Enabled:=false;
    dateedit1.Enabled:=true;
    dateedit2.Enabled:=true;
  end;
end;

end.
