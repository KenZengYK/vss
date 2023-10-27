unit loanformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGridEh, DB, DBClient,
  GridsEh;

type
  Tfrmloan = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Panel6: TPanel;
    DBGridEh1: TDBGridEh;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel7: TPanel;
    DBGridEh2: TDBGridEh;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloan: Tfrmloan;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmloan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmloan:=nil;
end;

procedure Tfrmloan.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where tplant>'''' and tshop>'''' and pline>''''';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('pline').value);
      combobox2.items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmloan.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tblswfid where pline='''+combobox1.text+''' and lend=0';
      open;
    end;
  end;
end;

procedure Tfrmloan.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text>'' then begin
    with query4 do begin
      close;
      params.clear;
      commandtext:='select * from tblswfid_loan where cpline='''+combobox2.text+''' and ret=0';
      open;
    end;
  end;
end;

procedure Tfrmloan.SpeedButton1Click(Sender: TObject);
var
  seq:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  if (combobox1.text<>combobox2.text) then begin
  if query1.active then begin
    if combobox2.text>'' then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='update tblswfid set lend=1 where pline='''+query1.fieldbyname('pline').value+''' and swfid='''+query1.fieldbyname('swfid').value+'''';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        commandtext:='select max(seq) as q1 from tblswfid_loan';
        open;
        if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        params.createparam(ftboolean,'x6',ptinput);
        commandtext:='insert into tblswfid_loan(seq,swfid,opline,cpline,date1,ret) values(:x1,:x2,:x3,:x4,:x5,:x6)';
        params[0].asinteger:=seq;
        params[1].asstring:=query1.fieldbyname('swfid').value;
        params[2].asstring:=query1.fieldbyname('pline').value;
        params[3].asstring:=combobox2.text;
        params[4].asdate:=date;
        params[5].asboolean:=false;
        execute;
      end;
      combobox1change(self);
    end;
  end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmloan.SpeedButton2Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  if (combobox1.text<>combobox2.text) then begin
  if query4.Active then begin
    if combobox1.Text>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='update tblswfid_loan set ret=1 where seq=:x1';
        params[0].asinteger:=query4.fieldbyname('seq').value;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        commandtext:='update tblswfid set lend=0 where pline='''+query4.fieldbyname('opline').value+''' and swfid='''+query4.fieldbyname('swfid').value+'''';
        execute;
      end;
      combobox1change(self);
      combobox2change(self);
    end;
  end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
