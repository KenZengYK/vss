unit stcpy1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGridEh, Buttons, DBClient, variants,
  GridsEh;

type
  Tfrmstcpy1 = class(TForm)
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet1: TClientDataSet;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmstcpy1: Tfrmstcpy1;

implementation
uses sampletblu, loginu;
{$R *.DFM}

procedure Tfrmstcpy1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmstcpy1.FormDeactivate(Sender: TObject);
begin
  close;
end;

procedure Tfrmstcpy1.BitBtn1Click(Sender: TObject);
begin
  if RadioButton1.Checked then begin
    if Edit2.Text<>'' then begin
      with frmsampletbl.Query3 do begin
        close;
        params.Clear;
        params.CreateParam(ftstring,'stylno',ptinput);
        commandtext:='select * from sz_sampsize where stylno=:stylno';
        params[0].AsString:=Edit2.Text;
        open;
        if RecordCount>0 then begin
          Showmessage('此款已經存在﹗');
          Exit;
        end;
      end;
      with frmsampletbl.Query5 do begin
        close;
        params.clear;
        params.createparam(ftstring,'stylno1',ptinput);
        params.createparam(ftstring,'stylno2',ptinput);
        commandtext:='Execute SZ_cpySampSize :stylno1,:stylno2';
        params[0].AsString:=DBGridEh1.Fields[0].AsString;
        params[1].AsString:=Edit2.Text;
        Execute;
      end;
      frmsampletbl.Table1.close;
      frmsampletbl.Table1.open;
      frmsampletbl.Table1.locate('stylno',vararrayof([edit2.text]),[lopartialkey]);      
    end;
  end
  else begin
    with frmsampletbl.Query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'stylno',ptinput);
      commandtext:='Execute SZ_ToSampsize :stylno';
      params[0].AsString:=DBGridEh1.Fields[0].AsString;
      Execute;
    end;
    frmsampletbl.Table1.close;
    frmsampletbl.Table1.open;
    frmsampletbl.Table1.locate('stylno',vararrayof([DBGridEh1.Fields[0].AsString]),[lopartialkey]);    
  end;
  close;
end;

procedure Tfrmstcpy1.RadioButton1Click(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    if RadioButton1.checked then begin
      Edit2.Enabled:=true;
      commandtext:='select stylno from sz_sampsize';
    end else begin
      Edit2.Enabled:=False;
      commandtext:='select stylno from sz_lsize';
    end;
    open;
  end;
  edit1.text:=frmsampletbl.Table1.fieldbyname('stylno').asstring;  
end;

procedure Tfrmstcpy1.Edit1Change(Sender: TObject);
begin
  ClientDataSet1.locate('stylno',vararrayof([edit1.text]),[lopartialkey]);
end;

end.
