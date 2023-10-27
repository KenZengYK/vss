unit newcap_custstatusformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, DB, DBClient, GridsEh, DBGridEh;

type
  Tfrmnewcap_custstatus = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBGridEh1: TDBGridEh;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_custstatus: Tfrmnewcap_custstatus;

implementation

uses mainformu, newcap_styleformu;

{$R *.dfm}

procedure Tfrmnewcap_custstatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_custstatus:=nil;
end;

procedure Tfrmnewcap_custstatus.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmnewcap_custstatus.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftboolean,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='update tbl_cap_custstatus set sel=:x1 where tplant=:x2 and cust=:x3 and seq1=:x4';
      params[0].asboolean:=query1.fieldbyname('sel').value;
      params[1].asstring:=query1.fieldbyname('tplant').value;
      params[2].asstring:=query1.fieldbyname('cust').value;
      params[3].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='update tbl_cap_oa_style_new_wk1 a set sel=(select sel from tbl_cap_custstatus b '
                +'where a.tplant=b.tplant and a.cust=b.cust and a.seq1=b.seq1) '
                +'where tplant=:x1 and cust=:x2 and exists (select seq1 from tbl_cap_custstatus b '
                +'where a.tplant=b.tplant and a.cust=b.cust and a.seq1=b.seq1)';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asstring:=query1.fieldbyname('cust').value;
    execute;
  end;
  }
  str1:='update tbl_cap_custstatus set sel='+query1.fieldbyname('sel').asstring+' where tplant='''+query1.fieldbyname('tplant').value+''' and cust='''+query1.fieldbyname('cust').value+''' and seq1='+query1.fieldbyname('seq1').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  str1:='update tbl_cap_oa_style_new_wk1 a set sel=(select sel from tbl_cap_custstatus b '
       +'where a.tplant=b.tplant and a.cust=b.cust and a.seq1=b.seq1) '
       +'where tplant='''+query1.fieldbyname('tplant').value+''' and cust='''+query1.fieldbyname('cust').value+''' and exists (select seq1 from tbl_cap_custstatus b '
       +'where a.tplant=b.tplant and a.cust=b.cust and a.seq1=b.seq1)';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

end;

procedure Tfrmnewcap_custstatus.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty where tplant='''+combobox1.text+''' and act=1';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_custstatus.ComboBox1Change(Sender: TObject);
begin
  if combobox1.visible then begin
    with frmnewcap_custstatus.query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from tbl_cap_custstatus where tplant=:x1 and cust=:x2';
      params[0].asstring:=combobox1.text;
      params[1].asstring:=combobox2.text;
      open;
    end;
  end;
end;

end.
 