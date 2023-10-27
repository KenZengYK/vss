unit groupingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, DB, DBClient;

type
  Tfrmgrouping = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgrouping: Tfrmgrouping;

implementation

uses aqlmainformu;

{$R *.dfm}

procedure Tfrmgrouping.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmgrouping:=nil;
end;

procedure Tfrmgrouping.BitBtn1Click(Sender: TObject);
begin
  if edit1.Text>'' then begin
    if label6.Caption='GROUP' then begin
      if frmaqlmain.TreeView1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_aql_rpt_d where dtyp='''+label4.caption+''' and dtyp1='''+edit1.text+'''';
          open;
          if not fieldbyname('dtyp1').isnull then begin
            showmessage('Duplicated!');
          end else begin
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftstring,'x2',ptinput);
              params.createparam(ftstring,'x3',ptinput);
              params.createparam(ftstring,'x4',ptinput);
              commandtext:='insert into tbl_aql_rpt_d(dtyp,dtyp1,dtyp1c,dtyp1s) values(:x1,:x2,:x3,:x4)';
              params[0].asstring:=label4.Caption;
              params[1].asstring:=edit1.text;
              params[2].asstring:=edit2.text;
              params[3].asstring:=edit3.text;
              execute;
            end;
            frmaqlmain.TreeView1.items.AddChild(frmaqlmain.TreeView1.Selected.Parent,edit1.text);
            frmgrouping.Close;
          end;
        end;
      end else if frmaqlmain.TreeView1.Selected.Level=2 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_aql_rpt_d where dtyp='''+label4.caption+''' and dtyp1='''+label5.caption+''' and dtyp2='''+edit1.text+'''';
          open;
          if not fieldbyname('dtyp2').isnull then begin
            showmessage('Duplicated!');
          end else begin
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftstring,'x2',ptinput);
              params.createparam(ftstring,'x3',ptinput);
              params.createparam(ftstring,'x4',ptinput);
              params.createparam(ftstring,'x5',ptinput);
              commandtext:='insert into tbl_aql_rpt_d(dtyp,dtyp1,dtyp2,dtyp2c,dtyp2s) values(:x1,:x2,:x3,:x4,:x5)';
              params[0].asstring:=label4.Caption;
              params[1].asstring:=label5.caption;
              params[2].asstring:=edit1.text;
              params[3].asstring:=edit2.text;
              params[4].asstring:=edit3.text;
              execute;
            end;
            frmaqlmain.TreeView1.items.AddChild(frmaqlmain.TreeView1.Selected.Parent,edit1.text);
            frmgrouping.Close;
          end;
        end;
      end;
    end else if label6.Caption='SUBGROUP' then begin
      if frmaqlmain.TreeView1.Selected.Level=0 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_aql_rpt_d where dtyp='''+label4.caption+''' and dtyp1='''+edit1.text+'''';
          open;
          if not fieldbyname('dtyp1').isnull then begin
            showmessage('Duplicated!');
          end else begin
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftstring,'x2',ptinput);
              params.createparam(ftstring,'x3',ptinput);
              params.createparam(ftstring,'x4',ptinput);
              commandtext:='insert into tbl_aql_rpt_d(dtyp,dtyp1,dtyp1c,dtyp1s) values(:x1,:x2,:x3,:x4)';
              params[0].asstring:=label4.Caption;
              params[1].asstring:=edit1.text;
              params[2].asstring:=edit2.text;
              params[3].asstring:=edit3.text;
              execute;
            end;
            frmaqlmain.TreeView1.items.AddChild(frmaqlmain.TreeView1.Selected,edit1.text);
            frmgrouping.Close;
          end;
        end;
      end else if frmaqlmain.TreeView1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_aql_rpt_d where dtyp='''+label4.caption+''' and dtyp1='''+label5.caption+''' and dtyp2='''+edit1.text+'''';
          open;
          if not fieldbyname('dtyp2').isnull then begin
            showmessage('Duplicated!');
          end else begin
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftstring,'x2',ptinput);
              params.createparam(ftstring,'x3',ptinput);
              params.createparam(ftstring,'x4',ptinput);
              params.createparam(ftstring,'x5',ptinput);
              commandtext:='insert into tbl_aql_rpt_d(dtyp,dtyp1,dtyp2,dtyp2c,dtyp2s) values(:x1,:x2,:x3,:x4,:x5)';
              params[0].asstring:=label4.Caption;
              params[1].asstring:=label5.caption;
              params[2].asstring:=edit1.text;
              params[3].asstring:=edit2.text;
              params[4].asstring:=edit3.text;
              execute;
            end;
            frmaqlmain.TreeView1.items.AddChild(frmaqlmain.TreeView1.Selected,edit1.text);
            frmgrouping.Close;
          end;
        end;
      end;
    end else if label6.Caption='AMEND' then begin
      if frmaqlmain.TreeView1.Selected.Level=0 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='update tbl_aql_rpt_d set dtypc='''+edit2.text+''',dtyps='''+edit3.text+''' where dtyp='''+edit1.text+'''';
          execute;
        end;
      end else if frmaqlmain.TreeView1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='update tbl_aql_rpt_d set dtyp1c='''+edit2.text+''',dtyp1s='''+edit3.text+''' where dtyp1='''+edit1.text+''' and dtyp='''+frmaqlmain.treeview1.selected.parent.text+'''';
          execute;
        end;
      end else if frmaqlmain.TreeView1.Selected.Level=2 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='update tbl_aql_rpt_d set dtyp2c='''+edit2.text+''',dtyp2s='''+edit3.text+''' where dtyp2='''+edit1.text+''' and dtyp1='''+frmaqlmain.treeview1.selected.parent.text+''' and dtyp='''+frmaqlmain.treeview1.selected.Parent.parent.text+'''';
          execute;
        end;
      end;
      frmgrouping.Close;
    end;
  end else showmessage('Code can not be blank!');
end;

end.
