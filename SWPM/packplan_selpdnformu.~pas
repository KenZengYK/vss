unit packplan_selpdnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Spin, GridsEh, DBGridEh, Buttons, dateutils;

type
  Tfrmpackplan_selpdn = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    ComboBox1: TComboBox;
    yEdit1: TSpinEdit;
    wEdit1: TSpinEdit;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    xh1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpackplan_selpdn: Tfrmpackplan_selpdn;

implementation

uses mainformu, packingplanformu;

{$R *.dfm}

procedure Tfrmpackplan_selpdn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpackplan_selpdn:=nil;
end;

procedure Tfrmpackplan_selpdn.FormShow(Sender: TObject);
begin
  combobox1.text:='SL';
  yEdit1.Value:=yearof(date);
  wEdit1.Value:=weekof(date);
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_pdn_voyage_m where tplant='''+combobox1.text+''' and wk='+inttostr(wEdit1.value)+' and f_year(exfty)='+inttostr(yEdit1.value)+' order by wk,cust,exfty,seq1';
    open;
  end;
end;

procedure Tfrmpackplan_selpdn.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_voyage_m where tplant='''+combobox1.text+''' and wk='+inttostr(wEdit1.value);
      if wEdit1.Value>1 then commandtext:=commandtext+' and f_year(exfty)='+inttostr(yEdit1.value)+' order by wk,cust,exfty,seq1'
      else commandtext:=commandtext+' and ((f_month(exfty)=12 and f_year(exfty)='+inttostr(yEdit1.value-1)+') or (f_month(exfty)=1 and f_year(exfty)='+inttostr(yEdit1.Value)+')) order by wk,cust,exfty,seq1';
      open;
    end;
  end else begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_voyage_m where wk='+inttostr(wEdit1.value);
      if wEdit1.Value>1 then commandtext:=commandtext+' and f_year(exfty)='+inttostr(yEdit1.value)+' order by wk,cust,exfty,seq1'
      else commandtext:=commandtext+' and ((f_month(exfty)=12 and f_year(exfty)='+inttostr(yEdit1.value-1)+') or (f_month(exfty)=1 and f_year(exfty)='+inttostr(yEdit1.Value)+')) order by wk,cust,exfty,seq1';
      open;
    end;
  end;
end;

procedure Tfrmpackplan_selpdn.BitBtn1Click(Sender: TObject);
begin
  if not query1.fieldbyname('seq1').isnull then begin
    if xh1.Checked then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='select distinct seq,seq1 from tbl_pdn_voyage_m where tplant='''+combobox1.text+''' and wk='+inttostr(wEdit1.value)+' and f_year(exfty)='+inttostr(yEdit1.value);
        open;
        first;
        while not eof do begin
          with query2 do begin
            close;
            params.clear;
            params.CreateParam(ftinteger,'x1',ptinput);
            params.CreateParam(ftinteger,'x2',ptinput);
            params.CreateParam(ftdate,'x3',ptinput);
            commandtext:='execute procedure sp_pdn_updpackingplan(:x1,:x2,:x3)';
            params[0].asinteger:=query3.fieldbyname('seq').value;
            params[1].asinteger:=query3.fieldbyname('seq1').value;
            params[2].asdate:=frmpackingplan.DateEdit1.date;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
    end else begin
      with query2 do begin
        close;
        params.clear;
        params.CreateParam(ftinteger,'x1',ptinput);
        params.CreateParam(ftinteger,'x2',ptinput);
        params.CreateParam(ftdate,'x3',ptinput);
        commandtext:='execute procedure sp_pdn_updpackingplan(:x1,:x2,:x3)';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        params[1].asinteger:=query1.fieldbyname('seq1').value;
        params[2].asdate:=frmpackingplan.DateEdit1.date;
        execute;
      end;
    end;
    with frmpackingplan.Query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select * from tbl_pdn_packplan where dt=:x1';
      params[0].asdate:=frmpackingplan.DateEdit1.date;
      open;
    end;
    frmpackplan_selpdn.Close;
  end;
end;

end.
