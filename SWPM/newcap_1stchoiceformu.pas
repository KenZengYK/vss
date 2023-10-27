unit newcap_1stchoiceformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, Buttons, GridsEh, DBGridEh, DB,
  DBClient, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxCurrencyEdit, Menus, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, ImgList;

type
  Tfrmnewcap_1stchoice = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    ComboBox3: TComboBox;
    Label6: TLabel;
    SpinEdit2: TSpinEdit;
    BitBtn5: TBitBtn;
    cxView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    SEQ1: TcxGridDBColumn;
    SDESC1: TcxGridDBColumn;
    W1: TcxGridDBColumn;
    W2: TcxGridDBColumn;
    W3: TcxGridDBColumn;
    W4: TcxGridDBColumn;
    W5: TcxGridDBColumn;
    W6: TcxGridDBColumn;
    TTL: TcxGridDBColumn;
    GRP1: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    WFP: TcxGridDBColumn;
    BitBtn8: TBitBtn;
    Expand1: TMenuItem;
    Collapse1: TMenuItem;
    Copytonew1: TMenuItem;
    Updateto9991: TMenuItem;
    DetailWorksheet1: TMenuItem;
    UpdateBalance21: TMenuItem;
    UpdateBudget1: TMenuItem;
    UpdateBalance31: TMenuItem;
    DeleteBalancing1: TMenuItem;
    OnhanddWFpresent1: TMenuItem;
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Refresh1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Expand1Click(Sender: TObject);
    procedure Collapse1Click(Sender: TObject);
    procedure Copytonew1Click(Sender: TObject);
    procedure Updateto9991Click(Sender: TObject);
    procedure DetailWorksheet1Click(Sender: TObject);
    procedure UpdateBalance21Click(Sender: TObject);
    procedure UpdateBudget1Click(Sender: TObject);
    procedure UpdateBalance31Click(Sender: TObject);
    procedure DeleteBalancing1Click(Sender: TObject);
    procedure W1HeaderClick(Sender: TObject);
    procedure W2HeaderClick(Sender: TObject);
    procedure W3HeaderClick(Sender: TObject);
    procedure W4HeaderClick(Sender: TObject);
    procedure W5HeaderClick(Sender: TObject);
    procedure W6HeaderClick(Sender: TObject);
    procedure OnhanddWFpresent1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_1stchoice: Tfrmnewcap_1stchoice;
  strupd:string;

implementation

uses mainformu, newcap_ftysimulationformu, newcap_subcontractorformu,
  newcap_leveloffwfformu, newcap_fcdetailworksheetformu,
  newcap_1stchoice_detailformu, Onhand_dWFformu;

{$R *.dfm}

procedure Tfrmnewcap_1stchoice.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct sdesc from tbl_cap_ftyelements where seq>1 and seq1<20 and fmn='+inttostr(spinedit1.value)+' and tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value);
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('sdesc').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_1stchoice.Copytonew1Click(Sender: TObject);
var
  fty:string;
  yr,m1,seq:integer;
begin
  screen.cursor:=crSQLWait;
  try
  fty:=query1.fieldbyname('tplant').value;
  yr:=query1.fieldbyname('yr').value;
  m1:=query1.fieldbyname('m1').value;
  seq:=query1.fieldbyname('seq').value;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    commandtext:='execute procedure sp_cap_copyftyelements(:x1,:x2,:x3,:x4)';
    params[0].asstring:=fty;
    params[1].asinteger:=yr;
    params[2].asinteger:=m1;
    params[3].asinteger:=seq;
    execute;
  end;
  finally
    showmessage('Finished!');
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.cxView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  set1,set2,set3,set4:set of 1..250;
  seqi:integer;
begin
  set1:=[4,115,118];
  set2:=[7,120,125];
  set3:=[192];
  set4:=[193,197,198];
  seqi:=AViewInfo.GridRecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('seq1').index];
  if (seqi in set1) then
  acanvas.Canvas.Brush.Color:=$00CDFCFB
  else if (seqi in set3) then
  acanvas.Canvas.Brush.Color:=$008491D7
  else if (seqi in set2) then
  acanvas.Canvas.Brush.Color:=$00E0BCB4
  else if (seqi in set4) then
  acanvas.canvas.brush.color:=$00CBDDB7;
end;

procedure Tfrmnewcap_1stchoice.DeleteBalancing1Click(Sender: TObject);
begin
  if application.messagebox('Delete this balancing?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_deletebalancing(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    showmessage('Finished!');
  end;
end;

procedure Tfrmnewcap_1stchoice.DetailWorksheet1Click(Sender: TObject);
begin
  if query1.active then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_updfcworksheet(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=query1.fieldbyname('yr').value;
      params[3].asinteger:=query1.fieldbyname('m1').value;
      execute;
    end;
  end;
  if frmnewcap_fcdetailworksheet=nil then frmnewcap_fcdetailworksheet:=tfrmnewcap_fcdetailworksheet.create(nil);
  with frmnewcap_fcdetailworksheet.query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    commandtext:='select * from tbl_cap_ftyelements_worksheet_new where tplant=:x1 and seq=:x2 and yr=:x3 and m1=:x4 and wkno=1';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asinteger:=query1.fieldbyname('yr').value;
    params[3].asinteger:=query1.fieldbyname('m1').value;
    open;
  end;
  frmnewcap_fcdetailworksheet.label14.caption:=combobox2.text;
  frmnewcap_fcdetailworksheet.show;
end;

procedure Tfrmnewcap_1stchoice.Expand1Click(Sender: TObject);
begin
  cxview1.ViewData.Expand(true);
end;

procedure Tfrmnewcap_1stchoice.ComboBox2Change(Sender: TObject);
var
  seq:integer;
begin
  screen.Cursor:=crSQLWait;
  try
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select opt_c from tbl_cap_optc where tplant=:x2 and yr=:x3 and m1=:x4';
      params[0].asstring:=combobox3.text;
      params[1].asinteger:=spinedit2.value;
      params[2].asinteger:=spinedit1.value;
      open;
      if not fieldbyname('opt_c').isnull then combobox1.text:=fieldbyname('opt_c').asstring;
    end;
    }
    seq:=1;
    if combobox2.text>'' then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select seq,fchoice,cfmd,appr from tbl_cap_ftyelements where fmn='+inttostr(spinedit1.value)+' and sdesc='''+combobox2.text+''' and tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value);
        open;
        if not fieldbyname('seq').isnull then seq:=fieldbyname('seq').value;
        if not fieldbyname('appr').isnull then begin
          if fieldbyname('appr').value=true then begin
            label1.Caption:='Locked';
          end else begin
            if not fieldbyname('cfmd').isnull then begin
              if fieldbyname('cfmd').value=true then begin
                label1.Caption:='Confirmed';
              end else begin
                if not fieldbyname('fchoice').isnull then begin
                  if fieldbyname('fchoice').value=true then label1.Caption:='Chosen'
                  else label1.Caption:='';
                end;
              end;
            end else begin
              if not fieldbyname('fchoice').isnull then begin
                if fieldbyname('fchoice').value=true then label1.Caption:='Chosen'
                else label1.Caption:='';
              end;
            end;
          end;
        end else begin
          if not fieldbyname('cfmd').isnull then begin
            if fieldbyname('cfmd').value=true then begin
              label1.Caption:='Confirmed';
            end else begin
              if not fieldbyname('fchoice').isnull then begin
                if fieldbyname('fchoice').value=true then label1.Caption:='Chosen'
                else label1.Caption:='';
              end;
            end;
          end else begin
            if not fieldbyname('fchoice').isnull then begin
              if fieldbyname('fchoice').value=true then label1.Caption:='Chosen'
              else label1.Caption:='';
            end;
          end;
        end;
      end;
    end;
    if seq>1 then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        commandtext:='select opt_c from tbl_cap_optc_new where tplant=:x2 and yr=:x3 and m1=:x4 and seq=:x5';
        params[0].asstring:=combobox3.text;
        params[1].asinteger:=spinedit2.value;
        params[2].asinteger:=spinedit1.value;
        params[3].asinteger:=seq;
        open;
        if not fieldbyname('opt_c').isnull then combobox1.text:=fieldbyname('opt_c').asstring;
      end;
      if (bitbtn4.Visible=false) and (bitbtn4.caption='New') then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='execute procedure sp_cap_gen_simftywk(:x1,:x2,:x3,:x4)';
          params[0].asstring:=combobox3.text;
          params[1].asinteger:=spinedit2.value;
          params[2].asinteger:=seq;
          params[3].asinteger:=spinedit1.value;
          execute;
        end;
      end;
      with Query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_ftyelements_wk where (seq1 not in (3,10,19,20,13,16,23,64,65,66,68,88,89,115,130,131,133,134,135,140,145,162,190,191,192,193,194,195,196,201,202,203,204,205,30,31,105,106,222,54,55,226,74,43,42,67)) and tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+inttostr(seq)+' and m1='+inttostr(spinedit1.value);
        open;
      end;
    end;// else showmessage('');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.FormShow(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select wkno,flag,dt1 as x1,dt2 as x2 from tbl_cap_wkno_new where yr='+inttostr(spinedit2.value)+' and m1='+inttostr(spinedit1.value)+' and wkno>0 order by wkno';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then w1.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=2 then w2.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=3 then w3.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=4 then w4.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=5 then w5.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=6 then w6.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      application.ProcessMessages;
      next;
    end;
  end;
  if i=6 then w6.Visible:=true //dbgrideh1.columns[8].visible:=true
  else if i=5 then begin
    //dbgrideh1.columns[8].visible:=false;
    //dbgrideh1.Columns[7].Visible:=true;
    w6.Visible:=false;
    w5.Visible:=true;
  end else begin
    //dbgrideh1.columns[8].visible:=false;
    //dbgrideh1.Columns[7].Visible:=false;
    w6.Visible:=false;
    w5.Visible:=false;
  end;
end;

procedure Tfrmnewcap_1stchoice.OnhanddWFpresent1Click(Sender: TObject);
begin
  if frmonhand_dwf=nil then frmonhand_dwf:=tfrmonhand_dwf.create(nil);
  frmonhand_dwf.show;
end;

procedure Tfrmnewcap_1stchoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_1stchoice:=nil;
end;

procedure Tfrmnewcap_1stchoice.BitBtn4Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  bitbtn2click(self);
  if bitbtn4.caption='Confirm Chosen and Save' then begin
    if label1.Caption='' then begin
      if application.MessageBox('Do you want to choose this one?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        if combobox1.text>'' then begin
          {
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            commandtext:='update tbl_cap_optc set opt_c=:x1 where tplant=:x2 and yr=:x3 and m1=:x4';
            params[0].asinteger:=strtoint(combobox1.text);
            params[1].asstring:=combobox3.text;
            params[2].asinteger:=spinedit2.value;
            params[3].asinteger:=spinedit1.value;
            execute;
          end;
          }
          strupd:='update tbl_cap_optc set opt_c='+combobox1.Text+' where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.Value)+' and m1='+inttostr(spinedit1.Value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        end;
        {
        with query2 do begin
          close;
          params.clear;
          commandtext:='update tbl_cap_ftyelements set fchoice=0 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq<>'+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          execute;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='update tbl_cap_ftyelements set fchoice=1 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          execute;
        end;
        }
          strupd:='update tbl_cap_ftyelements_wk set fchoice=0 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq<>'+query1.fieldbyname('seq').asstring+' and m1='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_cap_ftyelements_wk set fchoice=1 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+query1.fieldbyname('seq').asstring+' and m1='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_cap_ftyelements set fchoice=0 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq<>'+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_cap_ftyelements set fchoice=1 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        label1.Caption:='Chosen';
      end;
    end else if label1.caption='chosen' then showmessage('This one is chosen already!')
    else showmessage('This one is confirmed, can not choose it!');
    //--update balancing --//
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_updftybal(:x1,:x2,:x3,:x4)';
      params[0].asstring:=combobox3.text;
      params[1].asinteger:=spinedit2.value;
      params[2].asinteger:=query1.fieldbyname('seq').value;
      params[3].asinteger:=spinedit1.value;
      execute;
    end;
  end else if bitbtn4.Caption='Confirmed and Save' then begin
    if label1.Caption<>'Confirmed' then begin
      if application.MessageBox('Do you want to confirm this one?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        if combobox1.text>'' then begin
          {
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            commandtext:='update tbl_cap_optc set opt_c=:x1 where tplant=:x2 and yr=:x3 and m1=:x4';
            params[0].asinteger:=strtoint(combobox1.text);
            params[1].asstring:=combobox3.text;
            params[2].asinteger:=spinedit2.value;
            params[3].asinteger:=spinedit1.value;
            execute;
          end;
          }
          strupd:='update tbl_cap_optc set opt_c='+combobox1.Text+' where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.Value)+' and m1='+inttostr(spinedit1.Value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        end;
        {
        with query2 do begin
          close;
          params.clear;
          commandtext:='update tbl_cap_ftyelements set cfmd=0 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq<>'+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          execute;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='update tbl_cap_ftyelements set cfmd=1 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          execute;
        end;
        }
          strupd:='update tbl_cap_ftyelements_wk set cfmd=0 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq<>'+query1.fieldbyname('seq').asstring+' and m1='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_cap_ftyelements_wk set cfmd=1 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+query1.fieldbyname('seq').asstring+' and m1='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_cap_ftyelements set cfmd=0 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq<>'+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_cap_ftyelements set cfmd=1 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        label1.Caption:='Confirmed';
      end;
    end else showmessage('This one is confirmed already!');
    //--update balancing --//
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_updftybal(:x1,:x2,:x3,:x4)';
      params[0].asstring:=combobox3.text;
      params[1].asinteger:=spinedit2.value;
      params[2].asinteger:=query1.fieldbyname('seq').value;
      params[3].asinteger:=spinedit1.value;
      execute;
    end;
  end else if bitbtn4.Caption='Master Locked and Save' then begin
    if label1.Caption<>'Locked' then begin
      if application.MessageBox('Do you want to lock this one?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin

        {with query2 do begin
          close;
          params.clear;
          commandtext:='update tbl_cap_ftyelements set appr=0 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq<>'+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          execute;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='update tbl_cap_ftyelements set appr=1 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          execute;
        end;
        }
          strupd:='update tbl_cap_ftyelements_wk set appr=0 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq<>'+query1.fieldbyname('seq').asstring+' and m1='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_cap_ftyelements_wk set appr=1 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+query1.fieldbyname('seq').asstring+' and m1='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_cap_ftyelements set appr=0 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq<>'+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          strupd:='update tbl_cap_ftyelements set appr=1 where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and seq='+query1.fieldbyname('seq').asstring+' and fmn='+inttostr(spinedit1.value);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        label1.Caption:='Locked';
      end;
    end else showmessage('This one is locked already!')
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.BitBtn6Click(Sender: TObject);
begin
  refresh1click(self);
end;

procedure Tfrmnewcap_1stchoice.BitBtn7Click(Sender: TObject);
var
  mlock:boolean;
begin
  {
  if frmnewcap_leveloffwf=nil then frmnewcap_leveloffwf:=tfrmnewcap_leveloffwf.create(nil);
  frmnewcap_leveloffwf.combobox3.text:=combobox3.text;
  frmnewcap_leveloffwf.spinedit1.value:=spinedit1.value;
  frmnewcap_leveloffwf.spinedit2.value:=spinedit2.value;
  frmnewcap_leveloffwf.label3.caption:=query1.fieldbyname('sdesc').value;
  frmnewcap_leveloffwf.show;
  }
  screen.Cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    commandtext:='select mlock from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    if not fieldbyname('mlock').isnull then mlock:=fieldbyname('mlock').value
    else mlock:=false;
  end;
  if bitbtn7.Caption='Lock balance for budget' then begin
    if mlock=false then begin
      showmessage('You have not right!');
    end else begin
      with query2 do begin
        close;
        params.Clear;
        params.CreateParam(ftstring,'x1',ptinput);
        params.CreateParam(ftinteger,'x2',ptinput);
        params.CreateParam(ftinteger,'x3',ptinput);
        commandtext:='delete from tbl_cap_ftyelements_bg where tplant=:x1 and yr=:x2 and m1=:x3';
        params[0].AsString:=query1.FieldByName('tplant').Value;
        params[1].AsInteger:=query1.FieldByName('yr').Value;
        params[2].AsInteger:=query1.FieldByName('m1').Value;
        execute;
      end;
      with query2 do begin
        close;
        params.Clear;
        params.CreateParam(ftstring,'x1',ptinput);
        params.CreateParam(ftinteger,'x2',ptinput);
        params.CreateParam(ftinteger,'x3',ptinput);
        params.CreateParam(ftinteger,'x4',ptinput);
        commandtext:='insert into tbl_cap_ftyelements_bg(tplant,yr,m1,seq) values(:x1,:x2,:x3,:x4)';
        params[0].AsString:=query1.FieldByName('tplant').Value;
        params[1].AsInteger:=query1.FieldByName('yr').Value;
        params[2].AsInteger:=query1.FieldByName('m1').Value;
        params[3].AsInteger:=query1.FieldByName('seq').Value;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updbg(:x1,:x2,:x3,:x4)';
        params[0].asstring:=query1.fieldbyname('tplant').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('m1').value;
        params[3].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      combobox1.enabled:=false;
      w1.Options.editing:=false;
      w2.Options.Editing:=false;
      w3.Options.editing:=false;
      w4.Options.Editing:=false;
      w5.Options.editing:=false;
      w6.Options.Editing:=false;
      bitbtn7.Caption:='Unlock budget balance';
      showmessage('Locked this budget balance!');
    end;
  end else begin
    if mlock=false then begin
      showmessage('You have not right!');
    end else begin
      if application.MessageBox('Unlock this budget balance?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with query2 do begin
          close;
          params.Clear;
          params.CreateParam(ftstring,'x1',ptinput);
          params.CreateParam(ftinteger,'x2',ptinput);
          params.CreateParam(ftinteger,'x3',ptinput);
          commandtext:='delete from tbl_cap_ftyelements_bg where tplant=:x1 and yr=:x2 and seq=:x3';
          params[0].AsString:=query1.FieldByName('tplant').Value;
          params[1].AsInteger:=query1.FieldByName('yr').Value;
          params[2].AsInteger:=query1.FieldByName('seq').Value;
          execute;
        end;
        combobox1.enabled:=true;
        w1.Options.editing:=true;
        w2.Options.Editing:=true;
        w3.Options.editing:=true;
        w4.Options.Editing:=true;
        w5.Options.editing:=true;
        w6.Options.Editing:=true;
        bitbtn7.Caption:='Lock balance for budget';
      end;
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.Collapse1Click(Sender: TObject);
begin
  cxview1.ViewData.Collapse(true);
end;

procedure Tfrmnewcap_1stchoice.ComboBox1Change(Sender: TObject);
var
  i:integer;
  wk1,wk2,wk3,wk4,wk5,wk6:double;
begin
  if combobox1.text>'' then begin
    i:=0;
    wk1:=0; wk2:=0; wk3:=0; wk4:=0; wk5:=0; wk6:=0;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct wkno,sum(secto/2.00) as sect from tplant_wk52 where wkno>0 and tplant='''+combobox3.text+''' and f_year(date1)='+inttostr(spinedit2.value)+' and f_month(date1)='+inttostr(spinedit1.value)+' and opt_c='+combobox1.text;
      commandtext:=commandtext+' group by wkno order by wkno';
      open;
      first;
      while not eof do begin
        i:=i+1;
        if i=1 then wk1:=fieldbyname('sect').value
        else if i=2 then wk2:=fieldbyname('sect').value
        else if i=3 then wk3:=fieldbyname('sect').value
        else if i=4 then wk4:=fieldbyname('sect').value
        else if i=5 then wk5:=fieldbyname('sect').value
        else if i=6 then wk6:=fieldbyname('sect').value;
        application.ProcessMessages;
        next;
      end;
    end;
    with query1 do begin
      FindKey([query1.fieldbyname('tplant').value,query1.fieldbyname('seq').value,16,9]);
      edit;
      fieldbyname('w1').value:=wk1;
      fieldbyname('w2').value:=wk2;
      fieldbyname('w3').value:=wk3;
      fieldbyname('w4').value:=wk4;
      fieldbyname('w5').value:=wk5;
      fieldbyname('w6').value:=wk6;
      post;
    end;
  end;
end;

procedure Tfrmnewcap_1stchoice.Query1AfterPost(DataSet: TDataSet);
var
  mi:double;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftfloat,'x11',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      commandtext:='update tbl_cap_ftyelements_wk set w1=:x1,w2=:x2,w3=:x3,w4=:x4,w5=:x5,w6=:x11 where tplant=:x6 and yr=:x7 and m1=:x8 and seq=:x9 and seq1=:x10';

      if not query1.fieldbyname('w1').isnull then
      params[0].asfloat:=query1.fieldbyname('w1').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('w2').isnull then
      params[1].asfloat:=query1.fieldbyname('w2').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('w3').isnull then
      params[2].asfloat:=query1.fieldbyname('w3').value
      else params[2].asfloat:=0;
      if not query1.fieldbyname('w4').isnull then
      params[3].asfloat:=query1.fieldbyname('w4').value
      else params[3].asfloat:=0;
      if not query1.fieldbyname('w5').isnull then
      params[4].asfloat:=query1.fieldbyname('w5').value
      else params[4].asfloat:=0;
      if not query1.fieldbyname('w6').isnull then
      params[5].asfloat:=query1.fieldbyname('w6').value
      else params[5].asfloat:=0;
      params[6].asstring:=query1.fieldbyname('tplant').value;
      params[7].asinteger:=query1.fieldbyname('yr').value;
      params[8].asinteger:=query1.fieldbyname('m1').value;
      params[9].asinteger:=query1.fieldbyname('seq').value;
      params[10].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
  end;
  }
      strupd:='update tbl_cap_ftyelements_wk set ';
      if not query1.fieldbyname('w1').isnull then
      strupd:=strupd+'w1='+query1.fieldbyname('w1').asstring+','
      else strupd:=strupd+'w1=0,';
      if not query1.fieldbyname('w2').isnull then
      strupd:=strupd+'w2='+query1.fieldbyname('w2').asstring+','
      else strupd:=strupd+'w2=0,';
      if not query1.fieldbyname('w3').isnull then
      strupd:=strupd+'w3='+query1.fieldbyname('w3').asstring+','
      else strupd:=strupd+'w3=0,';
      if not query1.fieldbyname('w4').isnull then
      strupd:=strupd+'w4='+query1.fieldbyname('w4').asstring+','
      else strupd:=strupd+'w4=0,';
      if not query1.fieldbyname('w5').isnull then
      strupd:=strupd+'w5='+query1.fieldbyname('w5').asstring+','
      else strupd:=strupd+'w5=0,';
      if not query1.fieldbyname('w6').isnull then
      strupd:=strupd+'w6='+query1.fieldbyname('w6').asstring+' '
      else strupd:=strupd+'w6=0 ';
      strupd:=strupd+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
      strupd:=strupd+'and yr='+query1.fieldbyname('yr').asstring+' ';
      strupd:=strupd+'and m1='+query1.fieldbyname('m1').asstring+' ';
      strupd:=strupd+'and seq='+query1.fieldbyname('seq').asstring+' ';
      strupd:=strupd+'and seq1='+query1.fieldbyname('seq1').asstring;
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

  //if (query1.fieldbyname('seq1').value<>9) and (query1.fieldbyname('seq1').value<>8) then begin
  if (query1.fieldbyname('seq1').value<>9) and (query1.fieldbyname('seq1').value<>8) and (query1.fieldbyname('seq1').value<>160)
    and (query1.fieldbyname('seq1').value<>161) and (query1.fieldbyname('seq1').value<>162) and (query1.fieldbyname('seq1').value<>163) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      //if dbgrideh1.columns[6].visible=true then
      if w6.visible=true then
        commandtext:='select sum(w1+w2+w3+w4+w5+w6)/6.0 as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5'
      else if w5.visible=true then
        commandtext:='select sum(w1+w2+w3+w4+w5)/5.0 as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5'
      else
        commandtext:='select sum(w1+w2+w3+w4)/4.0 as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      params[4].asinteger:=query1.fieldbyname('seq1').value;
      open;
      if not fieldbyname('x1').isnull then mi:=fieldbyname('x1').value else mi:=0;
    end;
  end else begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='select sum(w1+w2+w3+w4+w5+w6) as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      params[4].asinteger:=query1.fieldbyname('seq1').value;
      open;
      if not fieldbyname('x1').isnull then mi:=fieldbyname('x1').value else mi:=0;
    end;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftfloat,'x0',ptinput);
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    if query1.fieldbyname('m1').value=1 then
    commandtext:='update tbl_cap_ftyelements set m1=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=2 then
    commandtext:='update tbl_cap_ftyelements set m2=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=3 then
    commandtext:='update tbl_cap_ftyelements set m3=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=4 then
    commandtext:='update tbl_cap_ftyelements set m4=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=5 then
    commandtext:='update tbl_cap_ftyelements set m5=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=6 then
    commandtext:='update tbl_cap_ftyelements set m6=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=7 then
    commandtext:='update tbl_cap_ftyelements set m7=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=8 then
    commandtext:='update tbl_cap_ftyelements set m8=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=9 then
    commandtext:='update tbl_cap_ftyelements set m9=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=10 then
    commandtext:='update tbl_cap_ftyelements set m10=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=11 then
    commandtext:='update tbl_cap_ftyelements set m11=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5'
    else if query1.fieldbyname('m1').value=12 then
    commandtext:='update tbl_cap_ftyelements set m12=:x0 where tplant=:x1 and yr=:x2 and seq=:x4 and seq1=:x5';
    params[0].asfloat:=mi;
    params[1].asstring:=query1.fieldbyname('tplant').value;
    params[2].asinteger:=query1.fieldbyname('yr').value;
    params[3].asinteger:=query1.fieldbyname('seq').value;
    params[4].asinteger:=query1.fieldbyname('seq1').value;
    execute;
  end;
  }
  if label1.Caption>'' then begin
    {
    if query1.fieldbyname('m1').value=1 then
    strupd:='update tbl_cap_ftyelements set m1='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=2 then
    strupd:='update tbl_cap_ftyelements set m2='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=3 then
    strupd:='update tbl_cap_ftyelements set m3='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=4 then
    strupd:='update tbl_cap_ftyelements set m4='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=5 then
    strupd:='update tbl_cap_ftyelements set m5='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=6 then
    strupd:='update tbl_cap_ftyelements set m6='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=7 then
    strupd:='update tbl_cap_ftyelements set m7='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=8 then
    strupd:='update tbl_cap_ftyelements set m8='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=9 then
    strupd:='update tbl_cap_ftyelements set m9='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=10 then
    strupd:='update tbl_cap_ftyelements set m10='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=11 then
    strupd:='update tbl_cap_ftyelements set m11='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=12 then
    strupd:='update tbl_cap_ftyelements set m12='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('seq').asstring+' and seq=:x4 and seq1='+query1.fieldbyname('seq1').asstring;
    }
    if query1.fieldbyname('m1').value=1 then
    strupd:='update tbl_cap_ftyelements set m1='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=2 then
    strupd:='update tbl_cap_ftyelements set m2='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=3 then
    strupd:='update tbl_cap_ftyelements set m3='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=4 then
    strupd:='update tbl_cap_ftyelements set m4='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=5 then
    strupd:='update tbl_cap_ftyelements set m5='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=6 then
    strupd:='update tbl_cap_ftyelements set m6='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=7 then
    strupd:='update tbl_cap_ftyelements set m7='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=8 then
    strupd:='update tbl_cap_ftyelements set m8='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=9 then
    strupd:='update tbl_cap_ftyelements set m9='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=10 then
    strupd:='update tbl_cap_ftyelements set m10='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=11 then
    strupd:='update tbl_cap_ftyelements set m11='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=12 then
    strupd:='update tbl_cap_ftyelements set m12='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring;
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_cap_updftyelements_new(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    params[3].asstring:='';
    execute;
  end;
end;

procedure Tfrmnewcap_1stchoice.SpinEdit1Change(Sender: TObject);
begin
  combobox2.text:='';
  if bitbtn4.visible=true then begin
    if (bitbtn4.Caption='Confirmed and Save') then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select distinct sdesc from tbl_cap_ftyelements where seq>1 and seq1<20 and fchoice=1 and fmn='+inttostr(spinedit1.value)+' and tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value);
        open;
        if not fieldbyname('sdesc').isnull then combobox2.text:=fieldbyname('sdesc').value;
      end;
    end else if (bitbtn4.caption='Master Locked and Save') then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select distinct sdesc from tbl_cap_ftyelements where seq>1 and seq1<20 and cfmd=1 and fmn='+inttostr(spinedit1.value)+' and tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value);
        open;
        if not fieldbyname('sdesc').isnull then combobox2.text:=fieldbyname('sdesc').value;
      end;
    end;
  end;
  if combobox2.text>'' then combobox2change(self);
end;

procedure Tfrmnewcap_1stchoice.UpdateBalance21Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_updb2(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    showmessage('Updated!');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.UpdateBalance31Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_updb3(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    showmessage('Updated!');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.UpdateBudget1Click(Sender: TObject);
var
  seq:integer;
begin
  screen.cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select seq from tbl_cap_ftyelements_bg where tplant=:x1 and yr=:x2 and m1=:x3';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      open;
      if not fieldbyname('seq').isnull then seq:=fieldbyname('seq').value else seq:=query1.fieldbyname('seq').value;
    end;
    if (seq=query1.fieldbyname('seq').value) then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updbg(:x1,:x2,:x3,:x4)';
        params[0].asstring:=query1.fieldbyname('tplant').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('m1').value;
        params[3].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      showmessage('Updated!');
    end else showmessage('This balance is not budget balance, can not be updated for budget!');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.Updateto9991Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_chosen(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    showmessage('Updated!');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.W1HeaderClick(Sender: TObject);
begin
  if frmnewcap_1stchoice_dtl=nil then frmnewcap_1stchoice_dtl:=tfrmnewcap_1stchoice_dtl.create(nil);
  frmnewcap_1stchoice_dtl.label2.caption:=combobox3.text;
  frmnewcap_1stchoice_dtl.label4.caption:=inttostr(spinedit2.value);
  frmnewcap_1stchoice_dtl.label6.caption:=inttostr(spinedit1.value);
  frmnewcap_1stchoice_dtl.label8.caption:=w1.caption;
  frmnewcap_1stchoice_dtl.label9.caption:=combobox2.text;
  frmnewcap_1stchoice_dtl.label10.caption:='1';
  frmnewcap_1stchoice_dtl.show;
end;

procedure Tfrmnewcap_1stchoice.W2HeaderClick(Sender: TObject);
begin
  if frmnewcap_1stchoice_dtl=nil then frmnewcap_1stchoice_dtl:=tfrmnewcap_1stchoice_dtl.create(nil);
  frmnewcap_1stchoice_dtl.label2.caption:=combobox3.text;
  frmnewcap_1stchoice_dtl.label4.caption:=inttostr(spinedit2.value);
  frmnewcap_1stchoice_dtl.label6.caption:=inttostr(spinedit1.value);
  frmnewcap_1stchoice_dtl.label8.caption:=w2.caption;
  frmnewcap_1stchoice_dtl.label9.caption:=combobox2.text;
  frmnewcap_1stchoice_dtl.label10.caption:='2';
  frmnewcap_1stchoice_dtl.show;
end;

procedure Tfrmnewcap_1stchoice.W3HeaderClick(Sender: TObject);
begin
  if frmnewcap_1stchoice_dtl=nil then frmnewcap_1stchoice_dtl:=tfrmnewcap_1stchoice_dtl.create(nil);
  frmnewcap_1stchoice_dtl.label2.caption:=combobox3.text;
  frmnewcap_1stchoice_dtl.label4.caption:=inttostr(spinedit2.value);
  frmnewcap_1stchoice_dtl.label6.caption:=inttostr(spinedit1.value);
  frmnewcap_1stchoice_dtl.label8.caption:=w3.caption;
  frmnewcap_1stchoice_dtl.label9.caption:=combobox2.text;
  frmnewcap_1stchoice_dtl.label10.caption:='3';
  frmnewcap_1stchoice_dtl.show;
end;

procedure Tfrmnewcap_1stchoice.W4HeaderClick(Sender: TObject);
begin
  if frmnewcap_1stchoice_dtl=nil then frmnewcap_1stchoice_dtl:=tfrmnewcap_1stchoice_dtl.create(nil);
  frmnewcap_1stchoice_dtl.label2.caption:=combobox3.text;
  frmnewcap_1stchoice_dtl.label4.caption:=inttostr(spinedit2.value);
  frmnewcap_1stchoice_dtl.label6.caption:=inttostr(spinedit1.value);
  frmnewcap_1stchoice_dtl.label8.caption:=w4.caption;
  frmnewcap_1stchoice_dtl.label9.caption:=combobox2.text;
  frmnewcap_1stchoice_dtl.label10.caption:='4';
  frmnewcap_1stchoice_dtl.show;
end;

procedure Tfrmnewcap_1stchoice.W5HeaderClick(Sender: TObject);
begin
  if frmnewcap_1stchoice_dtl=nil then frmnewcap_1stchoice_dtl:=tfrmnewcap_1stchoice_dtl.create(nil);
  frmnewcap_1stchoice_dtl.label2.caption:=combobox3.text;
  frmnewcap_1stchoice_dtl.label4.caption:=inttostr(spinedit2.value);
  frmnewcap_1stchoice_dtl.label6.caption:=inttostr(spinedit1.value);
  frmnewcap_1stchoice_dtl.label8.caption:=w5.caption;
  frmnewcap_1stchoice_dtl.label9.caption:=combobox2.text;
  frmnewcap_1stchoice_dtl.label10.caption:='5';
  frmnewcap_1stchoice_dtl.show;
end;

procedure Tfrmnewcap_1stchoice.W6HeaderClick(Sender: TObject);
begin
  if frmnewcap_1stchoice_dtl=nil then frmnewcap_1stchoice_dtl:=tfrmnewcap_1stchoice_dtl.create(nil);
  frmnewcap_1stchoice_dtl.label2.caption:=combobox3.text;
  frmnewcap_1stchoice_dtl.label4.caption:=inttostr(spinedit2.value);
  frmnewcap_1stchoice_dtl.label6.caption:=inttostr(spinedit1.value);
  frmnewcap_1stchoice_dtl.label8.caption:=w6.caption;
  frmnewcap_1stchoice_dtl.label9.caption:=combobox2.text;
  frmnewcap_1stchoice_dtl.label10.caption:='6';
  frmnewcap_1stchoice_dtl.show;
end;

procedure Tfrmnewcap_1stchoice.BitBtn2Click(Sender: TObject);
var
  mi:double;
begin
  screen.Cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select seq from tbl_cap_optc_new where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4';
      params[0].asstring:=combobox3.text;
      params[1].asinteger:=spinedit2.value;
      params[2].asinteger:=spinedit1.value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      open;
      if fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          commandtext:='insert into tbl_cap_optc_new(tplant,yr,m1,seq,opt_c,sdesc) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asstring:=combobox3.text;
          params[1].asinteger:=spinedit2.value;
          params[2].asinteger:=spinedit1.value;
          params[3].asinteger:=query1.fieldbyname('seq').value;
          params[4].asinteger:=strtoint(combobox1.text);
          params[5].asstring:=combobox2.text;
          execute;
        end;
      end else begin
        strupd:='update tbl_cap_optc_new set opt_c='+combobox1.text+' where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)
        +' and m1='+inttostr(spinedit1.value)+' and seq='+query1.fieldbyname('seq').asstring;
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      end;
    end;

    if query1.state=dsedit then query1.post;
    if (query1.fieldbyname('seq1').value<>9) and (query1.fieldbyname('seq1').value<>8) and (query1.fieldbyname('seq1').value<>160)
     and (query1.fieldbyname('seq1').value<>161) and (query1.fieldbyname('seq1').value<>162) and (query1.fieldbyname('seq1').value<>163) then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        //if dbgrideh1.columns[6].visible=true then
        if w6.visible=true then
          commandtext:='select sum(w1+w2+w3+w4+w5+w6)/6.0 as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5'
        else if w5.visible=true then
          commandtext:='select sum(w1+w2+w3+w4+w5)/5.0 as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5'
        else
          commandtext:='select sum(w1+w2+w3+w4)/4.0 as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5';
        params[0].asstring:=query1.fieldbyname('tplant').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('m1').value;
        params[3].asinteger:=query1.fieldbyname('seq').value;
        params[4].asinteger:=query1.fieldbyname('seq1').value;
        open;
        if not fieldbyname('x1').isnull then mi:=fieldbyname('x1').value else mi:=0;
      end;
    end else begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        commandtext:='select sum(w1+w2+w3+w4+w5+w6) as x1 from tbl_cap_ftyelements_wk where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4 and seq1=:x5';
        params[0].asstring:=query1.fieldbyname('tplant').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asinteger:=query1.fieldbyname('m1').value;
        params[3].asinteger:=query1.fieldbyname('seq').value;
        params[4].asinteger:=query1.fieldbyname('seq1').value;
        open;
        if not fieldbyname('x1').isnull then mi:=fieldbyname('x1').value else mi:=0;
      end;
    end;
    if query1.fieldbyname('m1').value=1 then
    strupd:='update tbl_cap_ftyelements set m1='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=2 then
    strupd:='update tbl_cap_ftyelements set m2='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=3 then
    strupd:='update tbl_cap_ftyelements set m3='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=4 then
    strupd:='update tbl_cap_ftyelements set m4='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=5 then
    strupd:='update tbl_cap_ftyelements set m5='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=6 then
    strupd:='update tbl_cap_ftyelements set m6='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=7 then
    strupd:='update tbl_cap_ftyelements set m7='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=8 then
    strupd:='update tbl_cap_ftyelements set m8='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=9 then
    strupd:='update tbl_cap_ftyelements set m9='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=10 then
    strupd:='update tbl_cap_ftyelements set m10='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=11 then
    strupd:='update tbl_cap_ftyelements set m11='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring
    else if query1.fieldbyname('m1').value=12 then
    strupd:='update tbl_cap_ftyelements set m12='+floattostr(mi)+' where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and seq='+query1.fieldbyname('seq').asstring+' and seq1='+query1.fieldbyname('seq1').asstring;
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

    if (label1.caption>'') and (label1.caption<>'Locked') then begin
      {
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='update tbl_cap_optc set opt_c=:x1 where tplant=:x2 and yr=:x3 and m1=:x4';
        params[0].asinteger:=strtoint(combobox1.text);
        params[1].asstring:=combobox3.text;
        params[2].asinteger:=spinedit2.value;
        params[3].asinteger:=spinedit1.value;
        execute;
      end;
      }
      strupd:='update tbl_cap_optc set opt_c='+combobox1.text+' where tplant='''+combobox3.text+''' and yr='+inttostr(spinedit2.value)+' and m1='+inttostr(spinedit1.value);
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftybal(:x1,:x2,:x3,:x4)';
        params[0].asstring:=combobox3.text;
        params[1].asinteger:=spinedit2.value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asinteger:=spinedit1.value;
        execute;
      end;
    end;
    refresh1click(self);
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.BitBtn1Click(Sender: TObject);
begin
  if (bitbtn1.Caption='Un-locked') then begin
    if (label1.caption='Locked') then begin
      if application.MessageBox('Un-lock this balancing option?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        {
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_cap_ftyelements set appr=0 where tplant=:x1 and seq=:x2 and yr=:x3';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('seq').value;
          params[2].asinteger:=query1.fieldbyname('yr').value;
          execute;
        end;
        }
        strupd:='update tbl_cap_ftyelements set appr=0 where tplant='''+query1.fieldbyname('tplant').value+''' and seq='+query1.fieldbyname('seq').asstring+' and yr='+query1.fieldbyname('yr').asstring;
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        
        showmessage('Un-locked!');
        label1.Caption:='Confirmed';
      end;
    end;
  end else if (bitbtn1.Caption='Release') then begin
    if (label1.caption='Confirmed') then begin
      if application.MessageBox('Release this confirmed balancing option?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        {
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_cap_ftyelements set cfmd=0 where tplant=:x1 and seq=:x2 and yr=:x3';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('seq').value;
          params[2].asinteger:=query1.fieldbyname('yr').value;
          execute;
        end;
        }
        strupd:='update tbl_cap_ftyelements set cfmd=0 where tplant='''+query1.fieldbyname('tplant').value+''' and seq='+query1.fieldbyname('seq').asstring+' and yr='+query1.fieldbyname('yr').asstring;
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        showmessage('Un-confirmed!');
        label1.Caption:='Chosen';
      end;
    end;
  end else if (bitbtn1.Caption='Un-chosen') then begin
    if (label1.caption='Chosen') then begin
      if application.MessageBox('Un-choose this balancing option?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        {
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_cap_ftyelements set fchoice=0 where tplant=:x1 and seq=:x2 and yr=:x3';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('seq').value;
          params[2].asinteger:=query1.fieldbyname('yr').value;
          execute;
        end;
        }
        strupd:='update tbl_cap_ftyelements set fchoice=0 where tplant='''+query1.fieldbyname('tplant').value+''' and seq='+query1.fieldbyname('seq').asstring+' and yr='+query1.fieldbyname('yr').asstring;
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        showmessage('Un-chosen!');
        label1.Caption:='';
      end;
    end;
  end;
end;

procedure Tfrmnewcap_1stchoice.Query1AfterOpen(DataSet: TDataSet);
var
  i:integer;
begin
  i:=0;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select wkno,flag,dt1 as x1,dt2 as x2 from tbl_cap_wkno_new where yr='+inttostr(spinedit2.value)+' and m1='+inttostr(spinedit1.value)+' and wkno>0 order by wkno';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then w1.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=2 then w2.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=3 then w3.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=4 then w4.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=5 then w5.Caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')'
      else if i=6 then w6.caption:='Week '+fieldbyname('wkno').asstring+' '+fieldbyname('flag').value+' ('+formatdatetime('MM/dd',fieldbyname('x1').Value)+'-'+formatdatetime('MM/dd',fieldbyname('x2').value)+')';
      application.ProcessMessages;
      next;
    end;
  end;
  if i=6 then w6.visible:=true
  else if i=5 then begin
    w6.visible:=false;
    w5.visible:=true;
  end else begin
    w6.visible:=false;
    w5.visible:=false;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select seq from tbl_cap_ftyelements_bg where tplant=:x1 and yr=:x2 and seq=:x3';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('seq').isnull then begin
      combobox1.enabled:=false;
      w1.Options.editing:=false;
      w2.Options.Editing:=false;
      w3.Options.editing:=false;
      w4.Options.Editing:=false;
      w5.Options.editing:=false;
      w6.Options.Editing:=false;
      bitbtn7.Caption:='Unlock budget balance';
    end else begin
      combobox1.enabled:=true;
      w1.Options.editing:=true;
      w2.Options.Editing:=true;
      w3.Options.editing:=true;
      w4.Options.Editing:=true;
      w5.Options.editing:=true;
      w6.Options.Editing:=true;
      bitbtn7.Caption:='Lock balance for budget';
    end;
  end;
end;

procedure Tfrmnewcap_1stchoice.Refresh1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if query1.state=dsedit then query1.post;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    commandtext:='execute procedure sp_cap_gen_simftywk(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    params[3].asinteger:=query1.fieldbyname('m1').value;
    execute;
  end;
  combobox2change(self);
  if (label1.caption='Chosen') or (label1.caption='Confirmed') or (label1.caption='Locked') then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_chosen(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('m1').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_1stchoice.BitBtn3Click(Sender: TObject);
var
  tplant:string;
  yr,m1,seq:integer;
begin
  try
    screen.cursor:=crSQLWait;
    if query1.Active then begin
      tplant:=query1.fieldbyname('tplant').value;
      yr:=query1.fieldbyname('yr').value;
      m1:=query1.fieldbyname('m1').value;
      seq:=query1.fieldbyname('seq').value;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_gensubcontractor(:x1,:x2,:x3,:x4)';
        params[0].asstring:=tplant;
        params[1].asinteger:=yr;
        params[2].asinteger:=m1;
        params[3].asinteger:=seq;
        execute;
      end;
      if frmnewcap_subcontractor=nil then frmnewcap_subcontractor:=tfrmnewcap_subcontractor.create(nil);
      with frmnewcap_subcontractor.query1 do begin
        close;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='select * from tbl_cap_ftyelements_wk_sub where tplant=:x1 and yr=:x2 and m1=:x3 and seq=:x4';
        params[0].asstring:=tplant;
        params[1].asinteger:=yr;
        params[2].asinteger:=m1;
        params[3].asinteger:=seq;
        open;
      end;
      frmnewcap_subcontractor.edit1.text:=combobox3.Text;
      frmnewcap_subcontractor.edit2.text:=combobox2.Text;
      frmnewcap_subcontractor.spinedit1.value:=spinedit1.value;
      frmnewcap_subcontractor.spinedit2.value:=spinedit2.value;
      frmnewcap_subcontractor.dbgrideh1.Columns[4].Title.caption:=w1.Caption;
      frmnewcap_subcontractor.dbgrideh1.Columns[5].Title.caption:=w2.Caption;
      frmnewcap_subcontractor.dbgrideh1.Columns[6].Title.caption:=w3.Caption;
      frmnewcap_subcontractor.dbgrideh1.Columns[7].Title.caption:=w4.Caption;
      frmnewcap_subcontractor.dbgrideh1.Columns[8].Title.caption:=w5.Caption;
      frmnewcap_subcontractor.dbgrideh1.Columns[9].Title.caption:=w6.Caption;
      frmnewcap_subcontractor.dbgrideh1.Columns[8].visible:=w5.Visible;
      frmnewcap_subcontractor.dbgrideh1.Columns[9].visible:=w6.Visible;
      frmnewcap_subcontractor.show;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
