unit stcpyu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGridEh, Buttons, DBClient, variants,
  GridsEh;

type
  Tfrmstcpy = class(TForm)
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet1: TClientDataSet;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmstcpy: Tfrmstcpy;

implementation
uses mainu, loginu, siztblu;
{$R *.DFM}

procedure Tfrmstcpy.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmstcpy.BitBtn1Click(Sender: TObject);
begin
  if Edit2.Text<>'' then begin
    with frmsiztbl.Query3 do begin
      close;
      params.Clear;
      //params.CreateParam(ftstring,'stylno',ptinput);
      commandtext:='select * from sz_lsize where stylno='''+edit2.text+'''';
      //params[0].AsString:=Edit2.Text;
      open;
      if RecordCount>0 then begin
        Showmessage('此款已經存在﹗');
        Exit;
      end;
    end;
    with frmsiztbl.Query5 do begin
      close;
      params.clear;
      //params.createparam(ftstring,'stylno1',ptinput);
      //params.createparam(ftstring,'stylno2',ptinput);
      commandtext:='Execute SZ_cpyLSize '''+DBGridEh1.Fields[0].AsString+''','''+Edit2.Text+'''';
      //params[0].AsString:=DBGridEh1.Fields[0].AsString;
      //params[1].AsString:=Edit2.Text;
      Execute;
    end;
    frmsiztbl.Table1.close;
    frmsiztbl.Table1.open;
    frmsiztbl.Table1.locate('stylno',vararrayof([edit2.text]),[lopartialkey]);
  end;
  close;
end;

procedure Tfrmstcpy.FormShow(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select stylno from sz_lsize';
    open;
  end;
  edit1.text:=frmsiztbl.Table1.fieldbyname('stylno').asstring;
end;

procedure Tfrmstcpy.Edit1Change(Sender: TObject);
begin
  ClientDataSet1.locate('stylno',vararrayof([edit1.text]),[lopartialkey]);
end;

procedure Tfrmstcpy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmstcpy:=nil;
end;

end.
