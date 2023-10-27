unit mcpoolformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmmcpool = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmcpool: Tfrmmcpool;

implementation

uses mainformu, fmcssformu, wmcssformu, lmcssformu, dmcssformu, allmcformu;

{$R *.dfm}

procedure Tfrmmcpool.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmcpool:=nil;
end;

procedure Tfrmmcpool.BitBtn5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmmcpool.BitBtn1Click(Sender: TObject);
begin
  if frmfmcss=nil then frmfmcss:=tfrmfmcss.create(nil);
  frmfmcss.show;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r46 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if fieldbyname('r46').value=true then begin
      frmfmcss.DBGridEh1.ReadOnly:=false;
      frmfmcss.BitBtn1.Enabled:=true;
      frmfmcss.BitBtn2.Enabled:=true;
      frmfmcss.BitBtn3.Enabled:=true;
    end else begin
      frmfmcss.DBGridEh1.ReadOnly:=true;
      frmfmcss.BitBtn1.Enabled:=false;
      frmfmcss.BitBtn2.Enabled:=false;
      frmfmcss.BitBtn3.Enabled:=false;
    end;
  end;
end;

procedure Tfrmmcpool.BitBtn2Click(Sender: TObject);
begin
  if frmwmcss=nil then frmwmcss:=tfrmwmcss.create(nil);
  frmwmcss.show;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r46 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if fieldbyname('r46').value=true then begin
      frmwmcss.DBGridEh1.ReadOnly:=false;
      frmwmcss.BitBtn1.Enabled:=true;
      frmwmcss.BitBtn2.Enabled:=true;
      frmwmcss.BitBtn3.Enabled:=true;
    end else begin
      frmwmcss.DBGridEh1.ReadOnly:=true;
      frmwmcss.BitBtn1.Enabled:=false;
      frmwmcss.BitBtn2.Enabled:=false;
      frmwmcss.BitBtn3.Enabled:=false;
    end;
  end;
end;

procedure Tfrmmcpool.BitBtn3Click(Sender: TObject);
begin
  if frmlmcss=nil then frmlmcss:=tfrmlmcss.create(nil);
  frmlmcss.show;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r46 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if fieldbyname('r46').value=true then begin
      frmlmcss.DBGridEh1.ReadOnly:=false;
      frmlmcss.BitBtn1.Enabled:=true;
      frmlmcss.BitBtn2.Enabled:=true;
      frmlmcss.BitBtn3.Enabled:=true;
    end else begin
      frmlmcss.DBGridEh1.ReadOnly:=true;
      frmlmcss.BitBtn1.Enabled:=false;
      frmlmcss.BitBtn2.Enabled:=false;
      frmlmcss.BitBtn3.Enabled:=false;
    end;
  end;
end;

procedure Tfrmmcpool.BitBtn4Click(Sender: TObject);
begin
  if frmdmcss=nil then frmdmcss:=tfrmdmcss.create(nil);
  frmdmcss.show;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r46 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if fieldbyname('r46').value=true then begin
      frmdmcss.DBGridEh1.ReadOnly:=false;
      frmdmcss.BitBtn1.Enabled:=true;
      frmdmcss.BitBtn2.Enabled:=true;
      frmdmcss.BitBtn3.Enabled:=true;
    end else begin
      frmdmcss.DBGridEh1.ReadOnly:=true;
      frmdmcss.BitBtn1.Enabled:=false;
      frmdmcss.BitBtn2.Enabled:=false;
      frmdmcss.BitBtn3.Enabled:=false;
    end;
  end;
end;

procedure Tfrmmcpool.BitBtn6Click(Sender: TObject);
begin
  if frmallmc=nil then frmallmc:=tfrmallmc.create(nil);
  frmallmc.show;
end;

end.
