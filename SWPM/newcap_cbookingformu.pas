unit newcap_cbookingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, Buttons, GridsEh, DBGridEh, ComCtrls,
  DB, DBClient, DateUtils, ImgList;

type
  Tfrmnewcap_cbooking = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    xh1: TRadioButton;
    xh2: TRadioButton;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1QtyChange(Sender: TField);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure show_data;
  end;

var
  frmnewcap_cbooking: Tfrmnewcap_cbooking;

implementation

uses mainformu, newcapformu, newcap_salesformu;

{$R *.dfm}

procedure Tfrmnewcap_cbooking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_cbooking:=nil;
end;

procedure Tfrmnewcap_cbooking.ComboBox1Change(Sender: TObject);
var
  tn1,tn2:TTreeNode;
begin
  if combobox1.text>'' then begin
    treeview1.Items.Clear;
    tn1:=treeview1.Items.add(nil,'ALL');
    tn1.ImageIndex:=0;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pgrp as cust from cust_exfty where tplant='''+combobox1.text+''' and act=1';
      //commandtext:=commandtext+' union select cust from tbl_sall where tplant='''+combobox1.text+'''';
      open;
      first;
      while not eof do begin
        tn2:=treeview1.Items.AddChild(tn1,fieldbyname('cust').value);
        tn2.ImageIndex:=1;
        application.ProcessMessages;
        next;
      end;
    end;
    //tn2:=treeview1.Items.AddChild(tn1,'SALL');
    //tn2.ImageIndex:=1;
    treeview1.SetFocus;
    treeview1.FullExpand;
    treeview1.Selected:=treeview1.Items.GetFirstNode;
  end;
end;

procedure Tfrmnewcap_cbooking.FormShow(Sender: TObject);
begin
  combobox1.OnChange(self);
end;

procedure Tfrmnewcap_cbooking.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  {
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level=1 then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        commandtext:='execute procedure sp_gen_oacap(:x1,:x2,:x3)';
        params[0].asstring:=combobox1.text;
        params[1].asstring:=treeview1.Selected.text;
        params[2].asinteger:=spinedit1.value;
        execute;
      end;
    end;
  end;
  }
  show_data;
end;

procedure Tfrmnewcap_cbooking.show_data;
begin
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level=1 then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_oa_book1 where tplant='''+combobox1.text+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
        if xh1.Checked then
        commandtext:=commandtext+' and wk>='+inttostr(spinedit2.value)+' and wk<='+inttostr(spinedit3.value)
        else if xh2.Checked then
        commandtext:=commandtext+' and ((m1>='+inttostr(spinedit4.value)+' and m1<='+inttostr(spinedit5.value)+') or (m2>='+inttostr(spinedit4.Value)+' and m2<='+inttostr(spinedit5.Value)+'))';
        open;
      end;
      dbgrideh1.ReadOnly:=false;
    end else if treeview1.Selected.Level=0 then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select distinct tplant,''ALL'' as cust,yr,wk,sum(bqty) as bqty,0.00 as buprc,sum(kqty) as kqty,0.00 as kuprc,sum(uqty) as uqty,0.00 as uuprc,sum(tqty) as tqty,sum(tprc) as tprc '
                    +'from tbl_cap_oa_book1 where tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
        if xh1.Checked then
        commandtext:=commandtext+' and wk>='+inttostr(spinedit2.value)+' and wk<='+inttostr(spinedit3.value)
        else if xh2.Checked then
        //commandtext:=commandtext+' and m1>='+inttostr(spinedit3.value)+' and m1<='+inttostr(spinedit4.value)
        commandtext:=commandtext+' and ((m1>='+inttostr(spinedit4.value)+' and m1<='+inttostr(spinedit5.value)+') or (m2>='+inttostr(spinedit4.Value)+' and m2<='+inttostr(spinedit5.Value)+'))';
        commandtext:=commandtext+' group by tplant,yr,wk';
        open;
      end;
      dbgrideh1.ReadOnly:=true;
    end;
  end;
end;

procedure Tfrmnewcap_cbooking.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('bqty').OnChange:=query1qtychange;
  query1.fieldbyname('kqty').OnChange:=query1qtychange;
  query1.fieldbyname('uqty').OnChange:=query1qtychange;
  query1.fieldbyname('buprc').OnChange:=query1qtychange;
  query1.fieldbyname('kuprc').OnChange:=query1qtychange;
  query1.fieldbyname('uuprc').OnChange:=query1qtychange;
end;

procedure Tfrmnewcap_cbooking.Query1QtyChange(Sender: TField);
var
  q1,q2,q3:integer;
  u1,u2,u3:double;
begin
  if not query1.fieldbyname('bqty').isnull then
  q1:=query1.fieldbyname('bqty').value else q1:=0;
  if not query1.fieldbyname('kqty').isnull then
  q2:=query1.fieldbyname('kqty').value else q2:=0;
  if not query1.fieldbyname('uqty').isnull then
  q3:=query1.fieldbyname('uqty').value else q3:=0;
  query1.fieldbyname('tqty').value:=q1+q2+q3;
  if not query1.fieldbyname('buprc').isnull then
  u1:=query1.fieldbyname('buprc').value else u1:=0;
  if not query1.fieldbyname('kuprc').isnull then
  u2:=query1.fieldbyname('kuprc').value else u2:=0;
  if not query1.fieldbyname('uuprc').isnull then
  u3:=query1.fieldbyname('uuprc').value else u3:=0;
  query1.fieldbyname('tprc').value:=q1*u1+q2*u2+q3*u3;
end;

procedure Tfrmnewcap_cbooking.SpinEdit1Change(Sender: TObject);
begin
  show_data;
end;

procedure Tfrmnewcap_cbooking.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmnewcap_cbooking.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftfloat,'x8',ptinput);
      params.createparam(ftfloat,'x9',ptinput);
      params.createparam(ftfloat,'x10',ptinput);
      params.createparam(ftstring,'x11',ptinput);
      params.createparam(ftinteger,'x12',ptinput);
      commandtext:='update tbl_cap_oa_book1 set bqty=:x1,kqty=:x2,uqty=:x3,buprc=:x4,kuprc=:x5,uuprc=:x6,tqty=:x7,tprc=:x8,mr1=:x9,mr2=:x10 where tplant=:x11 and seq=:x12';
      if not query1.fieldbyname('bqty').isnull then
      params[0].asinteger:=query1.fieldbyname('bqty').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('kqty').isnull then
      params[1].asinteger:=query1.fieldbyname('kqty').value
      else params[1].asinteger:=0;
      if not query1.fieldbyname('uqty').isnull then
      params[2].asinteger:=query1.fieldbyname('uqty').value
      else params[2].asinteger:=0;
      if not query1.fieldbyname('buprc').isnull then
      params[3].asfloat:=query1.fieldbyname('buprc').value
      else params[3].asfloat:=0;
      if not query1.fieldbyname('kuprc').isnull then
      params[4].asfloat:=query1.fieldbyname('kuprc').value
      else params[4].asfloat:=0;
      if not query1.fieldbyname('uuprc').isnull then
      params[5].asfloat:=query1.fieldbyname('uuprc').value
      else params[5].asfloat:=0;
      if not query1.fieldbyname('tqty').isnull then
      params[6].asinteger:=query1.fieldbyname('tqty').value
      else params[6].asinteger:=0;
      if not query1.fieldbyname('tprc').isnull then
      params[7].asfloat:=query1.fieldbyname('tprc').value
      else params[7].asfloat:=0;
      if not query1.fieldbyname('mr1').isnull then
      params[8].asfloat:=query1.fieldbyname('mr1').value
      else params[8].asfloat:=0;
      if not query1.fieldbyname('mr2').isnull then
      params[9].asfloat:=query1.fieldbyname('mr2').value
      else params[9].asfloat:=0;
      params[10].asstring:=query1.fieldbyname('tplant').value;
      params[11].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
end;

end.
