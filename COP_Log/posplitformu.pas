unit posplitformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, DB, DBClient, Spin;

type
  Tfrmposplit = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query1TM: TDateTimeField;
    Query1SEL: TBooleanField;
    Query1ACOL: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmposplit: Tfrmposplit;

implementation

uses aqlmainformu, aqlpoformu;

{$R *.dfm}

procedure Tfrmposplit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmposplit:=nil;
end;

procedure Tfrmposplit.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftboolean,'x1',ptinput);
      params.createparam(ftdatetime,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='update tbl_aql_tmpcol set sel=:x1 where tm=:x2 and acol=:x3';
      params[0].asboolean:=query1.fieldbyname('sel').value;
      params[1].asdatetime:=query1.fieldbyname('tm').value;
      params[2].asstring:=query1.fieldbyname('acol').value;
      execute;
    end;
  end;
end;

procedure Tfrmposplit.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
            with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdatetime,'x4',ptinput);
            commandtext:='execute procedure sp_aql_gens_01(:x1,:x2,:x3,:x4)';
            params[0].asstring:=frmaqlpo.query2.fieldbyname('pono').value;
            params[1].asinteger:=spinedit1.Value;
            params[2].asstring:=edit1.text;
            params[3].asdatetime:=query1.fieldbyname('tm').value;
            execute;
          end;
          frmaqlmain.Edit1.Text:=edit1.text;
          with frmaqlmain.qry_s0 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='select * from tbl_aql_s0 where seq=:x1';
            params[0].asinteger:=spinedit1.Value;
            open;
          end;
          frmaqlmain.PageControl2.ActivePageIndex:=0;
  frmposplit.Close;
end;

end.
