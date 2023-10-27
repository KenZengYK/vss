unit lbxhformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, DBClient, StdCtrls, Buttons, Grids,
  DBGridEh;

type
  Tfrmlbxh = class(TForm)
    ie_lb: TClientDataSet;
    DataSource1: TDataSource;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    DBGridEh6: TDBGridEh;
    DBGridEh7: TDBGridEh;
    DBGridEh8: TDBGridEh;
    DBGridEh9: TDBGridEh;
    DBGridEh10: TDBGridEh;
    procedure ie_lbAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlbxh: Tfrmlbxh;

implementation

uses dlu, scgxu;

{$R *.dfm}

procedure Tfrmlbxh.ie_lbAfterPost(DataSet: TDataSet);
begin
  //DataSetAfterPost(DataSet);
  if ie_lb.ApplyUpdates(-1)>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      commandtext:='update ie_lb set zsah=:x1,bsah=:x2,zrs=:x3,wsta=:x4,lb=:x5 where seq=:x6 and xh=:x7';
      if not fieldbyname('zsah').isnull then params[0].asfloat:=ie_lb.fieldbyname('zsah').value
      else params[0].asfloat:=0;
      if not fieldbyname('bsah').isnull then params[1].asfloat:=ie_lb.fieldbyname('bsah').value
      else params[1].asfloat:=0;
      if not fieldbyname('zrs').isnull then params[2].asfloat:=ie_lb.fieldbyname('zrs').value
      else params[2].asfloat:=0;
      if not fieldbyname('wsta').isnull then params[3].asfloat:=ie_lb.fieldbyname('wsta').value
      else params[3].asfloat:=0;
      if not fieldbyname('lb').isnull then params[4].asfloat:=ie_lb.fieldbyname('lb').value
      else params[4].asfloat:=0;
      params[5].asinteger:=ie_lb.fieldbyname('seq').value;
      params[6].asinteger:=ie_lb.fieldbyname('xh').value;
      execute;
    end;
  end;
end;

procedure Tfrmlbxh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlbxh:=nil;
end;

procedure Tfrmlbxh.BitBtn1Click(Sender: TObject);
begin
  //if query1.state=dsedit then query1.post;
  if ie_lb.state=dsedit then ie_lb.Post;
end;

procedure Tfrmlbxh.FormShow(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=0;
  with ie_lb do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
    params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
    params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
    params[2].asstring:='Q';
    open;
  end;
end;

procedure Tfrmlbxh.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='Q';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='1';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=2 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='2a';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=3 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='2b';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=4 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='2c';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=5 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='2d';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=6 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='3a';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=7 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='3b';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=8 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='4a';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=9 then begin
    with ie_lb do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from ie_lb where kh=:x1 and seq=:x2 and vtype=:x3';
      params[0].asstring:=frmscgx.zygx.fieldbyname('kh').value;
      params[1].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      params[2].asstring:='4b';
      open;
    end;
  end;
end;

end.
 