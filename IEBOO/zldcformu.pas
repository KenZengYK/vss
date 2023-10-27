unit zldcformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, rxToolEdit, DB, DBClient;

type
  Tfrmzldc = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    xh1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    xh2: TRadioGroup;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzldc: Tfrmzldc;

implementation

uses dlu, scgxu;

{$R *.dfm}

procedure Tfrmzldc.BitBtn1Click(Sender: TObject);
var
  s1,s2:string;
begin
  //if (edit1.text>'') or (edit2.text>'') or (edit3.text>'') then begin
  if xh2.ItemIndex=0 then s2:='0' else if xh2.ItemIndex=1 then s2:='1';
  if checkbox1.Checked then begin
    //
    with query1 do begin
      close;
      params.clear;
      commandtext:='delete from ie_tmpkh';
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select distinct cstyle from tblshedule where cfksrq>=:x1 and cfksrq<=:x2 '
                  +'and substr(flag3,1,2) in (''x'',''x1'',''1s'',''2s'',''3s'',''4s'',''5s'',''6s'',''7s'',''8s'',''9s'',''10'',''11'',''12'',''13'',''14'',''15'',''16'',''17'',''18'') '
                  +'and tshop in (''3A'',''3B'',''3D'',''4A'',''4B'',''4C'',''4D'')';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      open;
      first;
      while not eof do begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          commandtext:='insert into ie_tmpkh(khkh) values(:x1)';
          params[0].asstring:=query2.fieldbyname('cstyle').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    frmscgx.zldc('','','','','','','','','2',s2);
  end else begin
    if xh1.ItemIndex=0 then s1:='0'
    else if xh1.ItemIndex=1 then s1:='1';
    frmscgx.zldc(edit1.text,edit4.text,edit5.text,edit6.text,edit7.text,edit8.text,edit2.text,edit3.text,s1,s2);
  end;
end;

procedure Tfrmzldc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmzldc:=nil;
end;

procedure Tfrmzldc.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then begin
    dateedit1.Enabled:=True;
    dateedit2.Enabled:=True;
  end else begin
    dateedit1.Enabled:=False;
    dateedit2.Enabled:=False;
  end;
end;

procedure Tfrmzldc.FormShow(Sender: TObject);
begin
  checkbox1.Checked:=false;
  dateedit1.Enabled:=false;
  dateedit2.Enabled:=false;
end;

end.
