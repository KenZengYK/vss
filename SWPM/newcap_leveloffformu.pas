unit newcap_leveloffformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, DB, DBClient, DBCtrls, StdCtrls, Buttons, GridsEh,
  DBGridEh, ComCtrls, Mask, rxToolEdit, Spin, ExtCtrls, ppParameter;

type
  Tfrmnewcap_leveloff = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    TreeView1: TTreeView;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBEdit1: TDBEdit;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    yr01: TppLabel;
    ppLabel4: TppLabel;
    mn01: TppLabel;
    ppShape1: TppShape;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel3: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    w001: TppLabel;
    w002: TppLabel;
    w003: TppLabel;
    w004: TppLabel;
    w005: TppLabel;
    ppLabel18: TppLabel;
    s001: TppLabel;
    s002: TppLabel;
    s003: TppLabel;
    s004: TppLabel;
    s005: TppLabel;
    ppLabel24: TppLabel;
    s006: TppLabel;
    s007: TppLabel;
    s008: TppLabel;
    s009: TppLabel;
    s010: TppLabel;
    ppLabel30: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    lblmn01: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DataSource1StateChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure show_data;
  end;

var
  frmnewcap_leveloff: Tfrmnewcap_leveloff;
  mn:integer;

implementation

uses mainformu, newcap_styleformu, newcap_leveloff_adjformu,
  newcap_leveloff_detailformu;

{$R *.dfm}

procedure Tfrmnewcap_leveloff.FormShow(Sender: TObject);
var
  tn1,tn2,tn3:TTreeNode;
  i:integer;
  fty:string;
begin
  //mn:=query1.fieldbyname('m1').value;
  if combobox1.text>'' then begin
    if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
    treeview1.Items.Clear;
    tn1:=treeview1.Items.add(nil,'ALL');
    tn1.ImageIndex:=0;
    with query3 do begin
      close;
      params.clear;
      commandtext:='select distinct grp as cust from cust_exfty where tplant='''+fty+''' and act=1';
      open;
      first;
      while not eof do begin
        tn3:=treeview1.Items.AddChild(tn1,fieldbyname('cust').value);
        tn3.ImageIndex:=1;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select distinct pgrp as cust from cust_exfty where tplant='''+fty+''' and act=1 and grp='''+tn3.Text+'''';
          open;
          first;
          while not eof do begin
            tn2:=treeview1.Items.AddChild(tn3,fieldbyname('cust').value);
            tn2.ImageIndex:=1;
            application.ProcessMessages;
            next;
          end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    treeview1.SetFocus;
    treeview1.FullExpand;
    treeview1.Selected:=treeview1.Items.GetFirstNode;
    //treeview1.Selected:=treeview1.Items.GetNode(treeview1.Items[frmnewcap_style.TreeView1.Selected.Index].ItemId);
    //treeview1.selected:=treeview1.Items[frmnewcap_style.TreeView1.Selected.Index];
  end;

  i:=0;
  with query2 do begin
    close;
    params.clear;
    //commandtext:='select wkno from tbl_cap_wkno where yr='+inttostr(spinedit1.value)+' and m1='+query1.fieldbyname('m1').asstring+' order by wkno';
    //commandtext:='select distinct a.wkno,min(b.date1) as x1,max(b.date1) as x2 from tbl_cap_wkno a,week52 b '
    //            +'where a.yr=f_year(b.date1) and a.wkno=b.wkno and a.yr='+inttostr(spinedit1.value)+' and a.m1='+query1.fieldbyname('m1').asstring+' group by a.wkno order by a.wkno';
    commandtext:='select wkno,flag,dt1 as x1,dt2 as x2 from tbl_cap_wkno_new where yr='+inttostr(spinedit1.value)+' and m1='+lblmn01.caption+' and wkno>0 order by wkno';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        dbgrideh1.Columns[4].Title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Del Qty';
        label9.caption:=fieldbyname('wkno').asstring;
      end else if i=2 then begin
        dbgrideh1.columns[5].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Del Qty';
        label10.caption:=fieldbyname('wkno').asstring;
      end else if i=3 then begin
        dbgrideh1.columns[6].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Del Qty';
        label11.caption:=fieldbyname('wkno').asstring;
      end else if i=4 then begin
        dbgrideh1.columns[7].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Del Qty';
        label12.caption:=fieldbyname('wkno').asstring;
      end else if i=5 then begin
        dbgrideh1.columns[8].Title.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Del Qty';
        label13.caption:=fieldbyname('wkno').asstring;
      end else if i=6 then begin
        dbgrideh1.columns[9].title.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')|Del Qty';
        label14.caption:=fieldbyname('wkno').asstring;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  if i=6 then begin
    dbgrideh1.columns[9].visible:=true;
  end else if i=5 then begin
    dbgrideh1.columns[9].visible:=false;
    dbgrideh1.Columns[8].Visible:=true;
  end else begin
    dbgrideh1.columns[9].visible:=false;
    dbgrideh1.columns[8].visible:=false;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno_new where yr=:x1 and m1=:x2 and wkno>0';
    params[0].asinteger:=spinedit1.value;
    params[1].asinteger:=strtoint(lblmn01.caption);//query1.fieldbyname('m1').value;
    open;
    label4.Caption:='(wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')';
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_date where sel=1 and tplant='''+fty+'''';
    open;
    if not fieldbyname('stdt').isnull then begin
      dateedit1.date:=fieldbyname('stdt').value;
      edit1.text:=fieldbyname('m1').asstring;
    end else begin
      dateedit1.date:=date-1;
      edit1.text:='';
    end;
  end;
  for i:=0 to treeview1.Items.Count-1 do begin
    if treeview1.Items[i].Text=frmnewcap_style.TreeView1.Selected.text then begin
      treeview1.selected:=treeview1.Items[i];
      treeview1.Items[i].Focused:=true;
    end;
  end;

  //treeview1.Items[frmnewcap_style.TreeView1.Selected.Index].Selected:=true;
  //treeview1.Items[frmnewcap_style.TreeView1.Selected.Index].Focused:=true;
end;

procedure Tfrmnewcap_leveloff.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_leveloff:=nil;
end;

procedure Tfrmnewcap_leveloff.BitBtn1Click(Sender: TObject);
begin
  //
  if pos('1)',query1.fieldbyname('sdesc').value)>0 then begin
    if frmnewcap_leveloff_adj=nil then frmnewcap_leveloff_adj:=tfrmnewcap_leveloff_adj.Create(nil);
    frmnewcap_leveloff_adj.label4.caption:=lblmn01.Caption;
    if dbgrideh1.Selectedindex=3 then begin
      frmnewcap_leveloff_adj.label3.visible:=false;
    end else if dbgrideh1.selectedindex=4 then begin
      frmnewcap_leveloff_adj.label3.visible:=true;
      frmnewcap_leveloff_adj.label5.caption:='1';
      frmnewcap_leveloff_adj.lblwk01.Caption:=label9.caption;
    end else if dbgrideh1.SelectedIndex=5 then begin
      frmnewcap_leveloff_adj.label3.visible:=true;
      frmnewcap_leveloff_adj.label5.caption:='2';
      frmnewcap_leveloff_adj.lblwk01.Caption:=label10.caption;
    end else if dbgrideh1.SelectedIndex=6 then begin
      frmnewcap_leveloff_adj.label3.visible:=true;
      frmnewcap_leveloff_adj.label5.caption:='3';
      frmnewcap_leveloff_adj.lblwk01.Caption:=label11.caption;
    end else if dbgrideh1.SelectedIndex=7 then begin
      frmnewcap_leveloff_adj.label3.visible:=true;
      frmnewcap_leveloff_adj.label5.caption:='4';
      frmnewcap_leveloff_adj.lblwk01.Caption:=label12.caption;
    end else if dbgrideh1.SelectedIndex=8 then begin
      frmnewcap_leveloff_adj.label3.visible:=true;
      frmnewcap_leveloff_adj.label5.caption:='5';
      frmnewcap_leveloff_adj.lblwk01.Caption:=label13.caption;
    end else if dbgrideh1.SelectedIndex=9 then begin
      frmnewcap_leveloff_adj.label3.visible:=true;
      frmnewcap_leveloff_adj.label5.caption:='6';
      frmnewcap_leveloff_adj.lblwk01.Caption:=label14.caption;
    end;
    frmnewcap_leveloff_adj.show;
  end;
end;

procedure Tfrmnewcap_leveloff.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
var
  fty:string;
begin
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level=2 then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_cap_oa_proj_leveloff where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value)+' and m1=:x1';//+lblmn01.caption;
        params[0].asinteger:=strtoint(lblmn01.caption);
        open;
      end;
    end else if treeview1.selected.level=1 then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_cap_oa_proj_leveloff where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.value)+' and m1=:x1';//'+lblmn01.caption;
        params[0].asinteger:=strtoint(lblmn01.caption);
        open;
      end;
    end else if treeview1.selected.Level=0 then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_cap_oa_proj_leveloff where tplant='''+fty+''' and yr='+inttostr(spinedit1.value)+' and m1=:x1';//'+lblmn01.caption;
        params[0].asinteger:=strtoint(lblmn01.caption);
        open;
      end;
    end;
  end;
end;

procedure Tfrmnewcap_leveloff.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if pos('Level off',query1.fieldbyname('sdesc').value)>0 then begin
    dbgrideh1.Canvas.Font.Style:=[fsItalic];
    //dbgrideh1.Canvas.Brush.Color:=$00CDFCFB;//clYellow;
  end;
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrmnewcap_leveloff.DataSource1StateChange(Sender: TObject);
var
  fty:string;
begin
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
  if frmnewcap_style.treeview1.selected<>nil then begin
  if query1.state=dsbrowse then begin
    dbgrideh1.columns[3].footers[0].Value:='0';
    dbgrideh1.columns[4].footers[0].Value:='0';
    dbgrideh1.columns[5].footers[0].Value:='0';
    dbgrideh1.columns[6].footers[0].Value:='0';
    dbgrideh1.columns[7].footers[0].Value:='0';
    dbgrideh1.columns[8].footers[0].Value:='0';
    dbgrideh1.columns[9].footers[0].Value:='0';
    dbgrideh1.columns[3].footers[1].Value:='0';
    dbgrideh1.columns[4].footers[1].Value:='0';
    dbgrideh1.columns[5].footers[1].Value:='0';
    dbgrideh1.columns[6].footers[1].Value:='0';
    dbgrideh1.columns[7].footers[1].Value:='0';
    dbgrideh1.columns[8].footers[1].Value:='0';
    dbgrideh1.columns[9].footers[1].Value:='0';
    dbgrideh1.columns[3].footers[2].Value:='0';
    dbgrideh1.columns[4].footers[2].Value:='0';
    dbgrideh1.columns[5].footers[2].Value:='0';
    dbgrideh1.columns[6].footers[2].Value:='0';
    dbgrideh1.columns[7].footers[2].Value:='0';
    dbgrideh1.columns[8].footers[2].Value:='0';
    dbgrideh1.columns[9].footers[2].Value:='0';
    dbgrideh1.columns[3].footers[3].Value:='0';
    dbgrideh1.columns[4].footers[3].Value:='0';
    dbgrideh1.columns[5].footers[3].Value:='0';
    dbgrideh1.columns[6].footers[3].Value:='0';
    dbgrideh1.columns[7].footers[3].Value:='0';
    dbgrideh1.columns[8].footers[3].Value:='0';
    dbgrideh1.columns[9].footers[3].Value:='0';
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select distinct flag6,sum(wttl) as x0,sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6 from tbl_cap_oa_proj_leveloff '
                  +'where sdesc not in (''4) Level off Sale Proj'',''5) Level off SP'') and tplant=:x1 and yr=:x2 and m1=:x3';
      if frmnewcap_style.treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+frmnewcap_style.treeview1.selected.text+''''
      else if frmnewcap_style.treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+frmnewcap_style.treeview1.selected.text+'''';
      commandtext:=commandtext+' group by flag6';
      params[0].asstring:=fty;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(lblmn01.caption);
      open;
      while not eof do begin
        if fieldbyname('flag6').value='B' then begin
          dbgrideh1.columns[3].footers[0].Value:=fieldbyname('x0').asstring;
          dbgrideh1.columns[4].footers[0].Value:=fieldbyname('x1').asstring;
          dbgrideh1.columns[5].footers[0].Value:=fieldbyname('x2').asstring;
          dbgrideh1.columns[6].footers[0].Value:=fieldbyname('x3').asstring;
          dbgrideh1.columns[7].footers[0].Value:=fieldbyname('x4').asstring;
          dbgrideh1.columns[8].footers[0].Value:=fieldbyname('x5').asstring;
          dbgrideh1.columns[9].footers[0].Value:=fieldbyname('x6').asstring;
        end else if fieldbyname('flag6').value='K' then begin
          dbgrideh1.columns[3].footers[1].Value:=fieldbyname('x0').asstring;
          dbgrideh1.columns[4].footers[1].Value:=fieldbyname('x1').asstring;
          dbgrideh1.columns[5].footers[1].Value:=fieldbyname('x2').asstring;
          dbgrideh1.columns[6].footers[1].Value:=fieldbyname('x3').asstring;
          dbgrideh1.columns[7].footers[1].Value:=fieldbyname('x4').asstring;
          dbgrideh1.columns[8].footers[1].Value:=fieldbyname('x5').asstring;
          dbgrideh1.columns[9].footers[1].Value:=fieldbyname('x6').asstring;
        end else if fieldbyname('flag6').value='U' then begin
          dbgrideh1.columns[3].footers[2].Value:=fieldbyname('x0').asstring;
          dbgrideh1.columns[4].footers[2].Value:=fieldbyname('x1').asstring;
          dbgrideh1.columns[5].footers[2].Value:=fieldbyname('x2').asstring;
          dbgrideh1.columns[6].footers[2].Value:=fieldbyname('x3').asstring;
          dbgrideh1.columns[7].footers[2].Value:=fieldbyname('x4').asstring;
          dbgrideh1.columns[8].footers[2].Value:=fieldbyname('x5').asstring;
          dbgrideh1.columns[9].footers[2].Value:=fieldbyname('x6').asstring;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select sum(wttl) as x0,sum(w1) as x1,sum(w2) as x2,sum(w3) as x3,sum(w4) as x4,sum(w5) as x5,sum(w6) as x6 from tbl_cap_oa_proj_leveloff '
                  +'where sdesc not in (''4) Level off Sale Proj'',''5) Level off SP'') and tplant=:x1 and yr=:x2 and m1=:x3';
      if frmnewcap_style.treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+frmnewcap_style.treeview1.selected.text+''''
      else if frmnewcap_style.treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+frmnewcap_style.treeview1.selected.text+'''';
      params[0].asstring:=fty;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(lblmn01.caption);
      open;
      dbgrideh1.columns[3].footers[3].Value:=fieldbyname('x0').asstring;
      dbgrideh1.columns[4].footers[3].Value:=fieldbyname('x1').asstring;
      dbgrideh1.columns[5].footers[3].Value:=fieldbyname('x2').asstring;
      dbgrideh1.columns[6].footers[3].Value:=fieldbyname('x3').asstring;
      dbgrideh1.columns[7].footers[3].Value:=fieldbyname('x4').asstring;
      dbgrideh1.columns[8].footers[3].Value:=fieldbyname('x5').asstring;
      dbgrideh1.columns[9].footers[3].Value:=fieldbyname('x6').asstring;
    end;
  end;
  end;
end;

procedure Tfrmnewcap_leveloff.show_data;
var
  tplant:string;
  i:integer;
begin
  screen.cursor:=crSQLWait;
  try
    for i:=0 to treeview1.Items.Count-1 do begin
      if treeview1.Items[i].Text=frmnewcap_style.TreeView1.Selected.text then begin
        treeview1.selected:=treeview1.Items[i];
        treeview1.Items[i].Focused:=true;
      end;
    end;
    if combobox1.text='KB' then tplant:='KB' else if combobox1.text='THAI' then tplant:='KB' else tplant:='SL';
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_cap_gen_leveloff_wk(:x1,:x2,:x3)';
      params[0].asstring:=tplant;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(lblmn01.caption);
      execute;
    end;
    with Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_oa_proj_leveloff where tplant='''+tplant+''' and yr='+inttostr(spinedit1.value)+' and m1='+lblmn01.caption;
      if frmnewcap_style.TreeView1.Selected<>nil then begin
        if frmnewcap_style.TreeView1.selected.Level=2 then commandtext:=commandtext+' and cust='''+frmnewcap_style.TreeView1.selected.text+''''
        else if frmnewcap_style.TreeView1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+frmnewcap_style.TreeView1.Selected.Text+'''';
      end;
      open;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_leveloff.BitBtn3Click(Sender: TObject);
var
  fty:string;
  woff,w1,w2,w3,w4,w5,w6,bal1:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  woff:=query1.fieldbyname('woff').value;
  w1:=query1.fieldbyname('w1').value;
  w2:=query1.fieldbyname('w2').value;
  w3:=query1.fieldbyname('w3').value;
  w4:=query1.fieldbyname('w4').value;
  w5:=query1.fieldbyname('w5').value;
  w6:=query1.fieldbyname('w6').value;
  bal1:=query1.fieldbyname('bal1').value;
  if pos('Level off',query1.fieldbyname('sdesc').value)>0 then begin
    if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
    if (woff=0) and (w1=0) and (w2=0) and (w3=0) and (w4=0) and (w5=0) and (w6=0) and (bal1=0) then begin
      if frmnewcap_leveloff_detail=nil then frmnewcap_leveloff_detail:=tfrmnewcap_leveloff_detail.Create(nil);
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='delete from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5 and seq=1';
        params[0].asstring:=fty;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('m1').value;
        params[3].asstring:=query1.fieldbyname('cust').value;
        params[4].asstring:=query1.fieldbyname('flag6').value;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftinteger,'x6',ptinput);
        params.createparam(ftdate,'x7',ptinput);
        params.createparam(ftstring,'x8',ptinput);
        commandtext:='insert into tbl_cap_oa_proj_detail_woff(tplant,yr,m1,cust,flag6,seq,dt,act) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
        params[0].asstring:=fty;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('m1').value;
        params[3].asstring:=query1.fieldbyname('cust').value;
        params[4].asstring:=query1.fieldbyname('flag6').value;
        params[5].asinteger:=1;
        params[6].asdate:=date;
        params[7].asstring:='First Qty';
        execute;
      end;
      with frmnewcap_leveloff_detail.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='select * from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
        params[0].asstring:=fty;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('m1').value;
        params[3].asstring:=query1.fieldbyname('cust').value;
        params[4].asstring:=query1.fieldbyname('flag6').value;
        open;
      end;
      frmnewcap_leveloff_detail.BitBtn2.Visible:=true;
      frmnewcap_leveloff_detail.BitBtn3.Visible:=false;
      frmnewcap_leveloff_detail.BitBtn4.Visible:=false;
      frmnewcap_leveloff_detail.BitBtn5.Visible:=false;
      frmnewcap_leveloff_detail.BitBtn6.Visible:=false;
      frmnewcap_leveloff_detail.Show;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_leveloff.BitBtn4Click(Sender: TObject);
var
  fty:string;
  woff,w1,w2,w3,w4,w5,w6,bal1:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  woff:=query1.fieldbyname('woff').value;
  w1:=query1.fieldbyname('w1').value;
  w2:=query1.fieldbyname('w2').value;
  w3:=query1.fieldbyname('w3').value;
  w4:=query1.fieldbyname('w4').value;
  w5:=query1.fieldbyname('w5').value;
  w6:=query1.fieldbyname('w6').value;
  bal1:=query1.fieldbyname('bal1').value;
  if pos('Level off',query1.fieldbyname('sdesc').value)>0 then begin
    if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
    if ((woff<>0) or ((woff=0) and ((w1<>0) or (w2<>0) or (w3<>0) or (w4<>0) or (w5<>0) or (w6<>0)))) and (bal1=0) then begin
      if frmnewcap_leveloff_detail=nil then frmnewcap_leveloff_detail:=tfrmnewcap_leveloff_detail.Create(nil);
      with frmnewcap_leveloff_detail.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='select * from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
        params[0].asstring:=fty;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('m1').value;
        params[3].asstring:=query1.fieldbyname('cust').value;
        params[4].asstring:=query1.fieldbyname('flag6').value;
        open;
      end;
      frmnewcap_leveloff_detail.BitBtn2.Visible:=false;
      frmnewcap_leveloff_detail.BitBtn3.Visible:=true;
      frmnewcap_leveloff_detail.BitBtn4.Visible:=true;
      frmnewcap_leveloff_detail.BitBtn5.Visible:=true;
      frmnewcap_leveloff_detail.BitBtn6.Visible:=true;
      frmnewcap_leveloff_detail.Show;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_leveloff.BitBtn8Click(Sender: TObject);
var
  fty:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if pos('Level off',query1.fieldbyname('sdesc').value)>0 then begin
    if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='THAI' then fty:='KB' else fty:=combobox1.text;
    if (query1.fieldbyname('bal1').value=0) then begin
      if frmnewcap_leveloff_detail=nil then frmnewcap_leveloff_detail:=tfrmnewcap_leveloff_detail.Create(nil);
      with frmnewcap_leveloff_detail.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='select * from tbl_cap_oa_proj_detail_woff where tplant=:x1 and yr=:x2 and m1=:x3 and cust=:x4 and flag6=:x5';
        params[0].asstring:=fty;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('m1').value;
        params[3].asstring:=query1.fieldbyname('cust').value;
        params[4].asstring:=query1.fieldbyname('flag6').value;
        open;
      end;
      frmnewcap_leveloff_detail.BitBtn2.Visible:=false;
      frmnewcap_leveloff_detail.BitBtn3.Visible:=true;
      frmnewcap_leveloff_detail.BitBtn4.Visible:=true;
      frmnewcap_leveloff_detail.BitBtn5.Visible:=true;
      frmnewcap_leveloff_detail.BitBtn6.Visible:=true;
      frmnewcap_leveloff_detail.Show;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
