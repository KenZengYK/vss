unit pjc1_1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls;

type
  Tfrmpjc1_1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpjc1_1: Tfrmpjc1_1;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmpjc1_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmpjc1_1:=nil;
end;

procedure Tfrmpjc1_1.ComboBox1Change(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_tmp_ordsummary_02 where 1=1';
    if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and season like '''+combobox2.text+'%''';
    open;
  end;
end;

procedure Tfrmpjc1_1.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='update tbl_tmp_ordsummary_02 set sdt=:x1,edt=:x2 where cust=:x3 and season=:x4 and pjc1=:x5';
      if not query1.fieldbyname('sdt').isnull then
      params[0].asdate:=query1.fieldbyname('sdt').value;
      if not query1.fieldbyname('edt').isnull then
      params[1].asdate:=query1.fieldbyname('edt').value;
      params[2].asstring:=query1.fieldbyname('cust').value;
      params[3].asstring:=query1.fieldbyname('season').value;
      params[4].asstring:=query1.fieldbyname('pjc1').value;
      execute;
    end;
  end;
end;

procedure Tfrmpjc1_1.BitBtn3Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

end.
 