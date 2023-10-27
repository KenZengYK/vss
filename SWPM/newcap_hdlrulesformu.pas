unit newcap_hdlrulesformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, DBClient, StdCtrls, Buttons, cxMemo,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  Tfrmnewcap_hdlrules = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    cxGrid1DBTableView1XH: TcxGridDBColumn;
    cxGrid1DBTableView1RULES: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query3: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_hdlrules: Tfrmnewcap_hdlrules;

implementation

uses mainformu, newcap_wfformu;

{$R *.dfm}

procedure Tfrmnewcap_hdlrules.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_hdlrules:=nil;
end;

procedure Tfrmnewcap_hdlrules.BitBtn1Click(Sender: TObject);
begin
  cxgrid1.SetFocus;
  query1.append;
end;

procedure Tfrmnewcap_hdlrules.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_cap_wf_rules where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmnewcap_hdlrules.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmnewcap_hdlrules.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_cap_wf_rules where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_cap_wf_rules set xh=:x1,rules=:x2 where seq=:x3';

          if not query1.fieldbyname('xh').isnull then
          params[0].asinteger:=query1.fieldbyname('xh').value
          else params[0].asinteger:=1;
          if not query1.fieldbyname('rules').isnull then
          params[1].asstring:=query1.fieldbyname('rules').value
          else params[1].asstring:='';
          params[2].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update tbl_cap_wf_rules set ';
          if not query1.fieldbyname('xh').isnull then
          str1:=str1+'xh='+query1.fieldbyname('xh').asstring+','
          else str1:=str1+'xh=1,';
          if not query1.fieldbyname('rules').isnull then
          str1:=str1+'rules='''+query1.fieldbyname('rules').value+''' '
          else str1:=str1+'rules='''' ';
          str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='insert into tbl_cap_wf_rules(xh,rules,seq) values(:x1,:x2,:x3)';
          if not query1.fieldbyname('xh').isnull then
          params[0].asinteger:=query1.fieldbyname('xh').value
          else params[0].asinteger:=1;
          if not query1.fieldbyname('rules').isnull then
          params[1].asstring:=query1.fieldbyname('rules').value
          else params[1].asstring:='';
          params[2].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmnewcap_hdlrules.Query1NewRecord(DataSet: TDataSet);
var
  seq,xh:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q,count(*) as q1 from tbl_cap_wf_rules';
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1
    else seq:=1;
    if not fieldbyname('q1').isnull then xh:=fieldbyname('q1').value+1
    else xh:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('xh').value:=xh;
end;

end.
