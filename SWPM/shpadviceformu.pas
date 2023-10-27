unit shpadviceformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Spin, Buttons, GridsEh, DBGridEh;

type
  Tfrmshpadvice = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    yEdit1: TSpinEdit;
    wEdit1: TSpinEdit;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure newshipadvice(const dt,dt1: Tdate; const cat: string);
  end;

var
  frmshpadvice: Tfrmshpadvice;

implementation

uses mainformu, pdnformu, selpdnformu, shpadvice1formu, shpadvice2formu,
  shpexftyformu;

{$R *.dfm}

procedure Tfrmshpadvice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmshpadvice:=nil;
end;

procedure Tfrmshpadvice.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct seq,seq1,tplant,pdn,voyn,exfty,wk,stt,cust from tbl_pdn_voyage_m where tplant='''+combobox1.text+''' and wk='+inttostr(wEdit1.value);
      if wEdit1.Value>1 then commandtext:=commandtext+' and f_year(exfty)='+inttostr(yEdit1.value)+' order by wk,cust,exfty,tplant,seq1'
      else commandtext:=commandtext+' and ((f_month(exfty)=12 and f_year(exfty)='+inttostr(yEdit1.value-1)+') or (f_month(exfty)=1 and f_year(exfty)='+inttostr(yEdit1.Value)+')) order by wk,cust,exfty,tplant';
      open;
    end;
  end else begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct seq,seq1,tplant,pdn,voyn,exfty,wk,stt,cust from tbl_pdn_voyage_m where wk='+inttostr(wEdit1.value);
      if wEdit1.Value>1 then commandtext:=commandtext+' and f_year(exfty)='+inttostr(yEdit1.value)+' order by wk,cust,exfty,tplant,seq1'
      else commandtext:=commandtext+' and ((f_month(exfty)=12 and f_year(exfty)='+inttostr(yEdit1.value-1)+') or (f_month(exfty)=1 and f_year(exfty)='+inttostr(yEdit1.Value)+')) order by wk,cust,exfty,tplant';
      open;
    end;
  end;
end;

procedure Tfrmshpadvice.BitBtn1Click(Sender: TObject);
begin
  if frmshpexfty=nil then frmshpexfty:=tfrmshpexfty.create(nil);
  frmshpexfty.caption:='Shipping Advice - Actual Ex-fty Date';
  frmshpexfty.DateEdit1.Date:=date;
  frmshpexfty.DateEdit2.Date:=date;
  frmshpexfty.label1.visible:=true;
  frmshpexfty.label4.visible:=false;
  frmshpexfty.dateedit1.visible:=true;
  frmshpexfty.edit1.visible:=false;
  frmshpexfty.show;
end;

procedure Tfrmshpadvice.BitBtn2Click(Sender: TObject);
begin
  if frmshpadvice2=nil then frmshpadvice2:=tfrmshpadvice2.create(nil);
  frmshpadvice2.ComboBox1.text:=combobox1.text;
  frmshpadvice2.yEdit1.Value:=yEdit1.Value;
  frmshpadvice2.wEdit1.Value:=wEdit1.Value;
  if bitbtn1.enabled=true then begin
    frmshpadvice2.bitbtn2.enabled:=true;
    frmshpadvice2.bitbtn3.enabled:=true;
    frmshpadvice2.bitbtn6.enabled:=true;
    frmshpadvice2.bitbtn8.enabled:=true;
    frmshpadvice2.dbgrideh1.readonly:=false;
  end else begin
    frmshpadvice2.bitbtn2.enabled:=false;
    frmshpadvice2.bitbtn3.enabled:=false;
    frmshpadvice2.bitbtn6.enabled:=false;
    frmshpadvice2.bitbtn8.enabled:=false;
    frmshpadvice2.dbgrideh1.readonly:=true;
  end;
  {
  with frmshpadvice2.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_pdn_shpadvice1 where tplant=:x1 and yr=:x2 and wk=:x3';
    params[0].asstring:=combobox1.text;
    params[1].asinteger:=yEdit1.value;
    params[2].asinteger:=wEdit1.Value;
    open;
  end;
  }
  frmshpadvice2.Show;
end;

procedure Tfrmshpadvice.newshipadvice(const dt,dt1:Tdate; const cat: string);
var
  i,j,q,seq,seq1:integer;
  shpno:string;
begin
  if DBGridEh1.SelectedRows.Count>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select max(seq) as q from tbl_pdn_shpadvice1 where tplant=:x1 and yr=:x2 and wk=:x3';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=yEdit1.Value;
      params[2].asinteger:=wEdit1.Value;
      open;
      if not fieldbyname('q').isnull then begin
        q:=fieldbyname('q').value+1;
        shpno:=combobox1.text+'-'+yEdit1.Text+'-'+copy('0'+wEdit1.Text,length('0'+wEdit1.Text)-1,2)+'-'+copy('0'+inttostr(q+1),length('0'+inttostr(q+1))-1,2);
      end else begin
        q:=1;
        shpno:=combobox1.text+'-'+yEdit1.Text+'-'+copy('0'+wEdit1.Text,length('0'+wEdit1.Text)-1,2)+'-01';
      end;

      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      params.createparam(ftdate,'x7',ptinput);
      params.createparam(ftdate,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      commandtext:='insert into tbl_pdn_shpadvice1(tplant,shpno,yr,wk,seq,dt,exfty,trdt,trcat) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9)';
      params[0].asstring:=combobox1.text;
      params[1].asstring:=shpno;
      params[2].asinteger:=yEdit1.Value;
      params[3].asinteger:=wEdit1.Value;
      params[4].AsInteger:=q;
      params[5].asdate:=date;
      params[6].asdate:=dt;
      params[7].asdate:=dt1;
      params[8].asstring:=cat;
      execute;
    end;
    with DBGridEh1.DataSource.DataSet do begin
      for i:=0 to DBGridEh1.SelectedRows.Count-1 do begin
        GotoBookmark(pointer(DBGridEh1.SelectedRows.Items[i]));
        seq:=fields[0].Value;
        seq1:=fields[1].Value;
        //for j := 0 to 1 do begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            commandtext:='execute procedure sp_pdn_genshpadvice(:x1,:x2,:x3,:x4)';
            params[0].asstring:=combobox1.text;
            params[1].asstring:=shpno;
            params[2].asinteger:=seq;
            params[3].asinteger:=seq1;
            execute;
          end;
        //end;
        application.ProcessMessages;
      end;
    end;
    if frmshpadvice1=nil then frmshpadvice1:=tfrmshpadvice1.Create(nil);
    frmshpadvice1.label2.caption:=combobox1.text;
    frmshpadvice1.Edit1.text:=shpno;
    frmshpadvice1.Edit1Change(self);
    frmshpadvice1.Show;
    frmshpadvice.close;
  end;
end;

procedure Tfrmshpadvice.BitBtn4Click(Sender: TObject);
var
  i,seq,seq1:integer;
  shpno:string;
begin
  shpno:=frmshpadvice1.Query1.fieldbyname('shpno').value;
  if DBGridEh1.SelectedRows.Count>0 then begin
    with DBGridEh1.DataSource.DataSet do begin
      for i:=0 to DBGridEh1.SelectedRows.Count-1 do begin
        GotoBookmark(pointer(DBGridEh1.SelectedRows.Items[i]));
        seq:=fields[0].Value;
        seq1:=fields[1].Value;
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            commandtext:='execute procedure sp_pdn_genshpadvice(:x1,:x2,:x3,:x4)';
            params[0].asstring:=combobox1.text;
            params[1].asstring:=shpno;
            params[2].asinteger:=seq;
            params[3].asinteger:=seq1;
            execute;
          end;
        application.ProcessMessages;
      end;
    end;
    if frmshpadvice1=nil then frmshpadvice1:=tfrmshpadvice1.Create(nil);
    frmshpadvice1.label2.caption:=combobox1.text;
    frmshpadvice1.Edit1.text:=shpno;
    frmshpadvice1.Edit1Change(self);
    frmshpadvice1.Show;
    frmshpadvice.Close;
  end;
end;

end.
 