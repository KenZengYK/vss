unit plc_combformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, DBClient, GridsEh,
  DBGridEh;

type
  Tfrmplc_comb = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query2NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query2AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmplc_comb: Tfrmplc_comb;

implementation

uses mainformu, ftylearnformu;

{$R *.dfm}

procedure Tfrmplc_comb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmplc_comb:=nil;
end;

procedure Tfrmplc_comb.FormShow(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=0;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_plc_01';
    open;
  end;
end;

procedure Tfrmplc_comb.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.Post;
  if (query2.state=dsedit) or (query2.state=dsinsert) then query2.Post;
end;

procedure Tfrmplc_comb.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tbl_plc_01';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
end;

procedure Tfrmplc_comb.Query2NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tbl_plc_02';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query2.fieldbyname('seq').value:=seq; 
end;

procedure Tfrmplc_comb.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query1.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_plc_01 where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftinteger,'x10',ptinput);
          params.createparam(ftinteger,'x11',ptinput);
          params.createparam(ftinteger,'x0',ptinput);
          commandtext:='update tbl_plc_01 set grp=:x1,lr1=:x2,lr2=:x3,lr3=:x4,lr4=:x5,lr5=:x6,lr6=:x7,lr7=:x8,lr8=:x9,lr9=:x10,lr10=:x11 '
                      +'where seq=:x0';

          if not query1.fieldbyname('grp').isnull then
          params[0].asstring:=query1.fieldbyname('grp').value
          else params[0].asstring:='';
          if not query1.fieldbyname('lr1').isnull then
          params[1].asinteger:=query1.fieldbyname('lr1').Value
          else params[1].asinteger:=0;
          if not query1.fieldbyname('lr2').isnull then
          params[2].asinteger:=query1.fieldbyname('lr2').Value
          else params[2].asinteger:=0;
          if not query1.fieldbyname('lr3').isnull then
          params[3].asinteger:=query1.fieldbyname('lr3').Value
          else params[3].asinteger:=0;
          if not query1.fieldbyname('lr4').isnull then
          params[4].asinteger:=query1.fieldbyname('lr4').Value
          else params[4].asinteger:=0;
          if not query1.fieldbyname('lr5').isnull then
          params[5].asinteger:=query1.fieldbyname('lr5').Value
          else params[5].asinteger:=0;
          if not query1.fieldbyname('lr6').isnull then
          params[6].asinteger:=query1.fieldbyname('lr6').Value
          else params[6].asinteger:=0;
          if not query1.fieldbyname('lr7').isnull then
          params[7].asinteger:=query1.fieldbyname('lr7').Value
          else params[7].asinteger:=0;
          if not query1.fieldbyname('lr8').isnull then
          params[8].asinteger:=query1.fieldbyname('lr8').Value
          else params[8].asinteger:=0;
          if not query1.fieldbyname('lr9').isnull then
          params[9].asinteger:=query1.fieldbyname('lr9').Value
          else params[9].asinteger:=0;
          if not query1.fieldbyname('lr10').isnull then
          params[10].asinteger:=query1.fieldbyname('lr10').Value
          else params[10].asinteger:=0;
          params[11].AsInteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update tbl_plc_01 set ';
          if not query1.fieldbyname('grp').isnull then
          str1:=str1+'grp='''+query1.fieldbyname('grp').value+''','
          else str1:=str1+'grp='''',';
          if not query1.fieldbyname('lr1').isnull then
          str1:=str1+'lr1='+query1.fieldbyname('lr1').asstring+','
          else str1:=str1+'lr1=0,';
          if not query1.fieldbyname('lr2').isnull then
          str1:=str1+'lr2='+query1.fieldbyname('lr2').asstring+','
          else str1:=str1+'lr2=0,';
          if not query1.fieldbyname('lr3').isnull then
          str1:=str1+'lr3='+query1.fieldbyname('lr3').asstring+','
          else str1:=str1+'lr3=0,';
          if not query1.fieldbyname('lr4').isnull then
          str1:=str1+'lr4='+query1.fieldbyname('lr4').asstring+','
          else str1:=str1+'lr4=0,';
          if not query1.fieldbyname('lr5').isnull then
          str1:=str1+'lr5='+query1.fieldbyname('lr5').asstring+','
          else str1:=str1+'lr5=0,';
          if not query1.fieldbyname('lr6').isnull then
          str1:=str1+'lr6='+query1.fieldbyname('lr6').asstring+','
          else str1:=str1+'lr6=0,';
          if not query1.fieldbyname('lr7').isnull then
          str1:=str1+'lr7='+query1.fieldbyname('lr7').asstring+','
          else str1:=str1+'lr7=0,';
          if not query1.fieldbyname('lr8').isnull then
          str1:=str1+'lr8='+query1.fieldbyname('lr8').asstring+','
          else str1:=str1+'lr8=0,';
          if not query1.fieldbyname('lr9').isnull then
          str1:=str1+'lr9='+query1.fieldbyname('lr9').asstring+','
          else str1:=str1+'lr9=0,';
          if not query1.fieldbyname('lr10').isnull then
          str1:=str1+'lr10='+query1.fieldbyname('lr10').asstring+' '
          else str1:=str1+'lr10=0 ';
          str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

      end else begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftinteger,'x0',ptinput);
          params.createparam(ftinteger,'x10',ptinput);
          params.createparam(ftinteger,'x11',ptinput);
          commandtext:='insert into tbl_plc_01(grp,lr1,lr2,lr3,lr4,lr5,lr6,lr7,lr8,seq,lr9,lr10) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x0,:x10,:x11)';
          if not query1.fieldbyname('grp').isnull then
          params[0].asstring:=query1.fieldbyname('grp').value
          else params[0].asstring:='';
          if not query1.fieldbyname('lr1').isnull then
          params[1].asinteger:=query1.fieldbyname('lr1').Value
          else params[1].asinteger:=0;
          if not query1.fieldbyname('lr2').isnull then
          params[2].asinteger:=query1.fieldbyname('lr2').Value
          else params[2].asinteger:=0;
          if not query1.fieldbyname('lr3').isnull then
          params[3].asinteger:=query1.fieldbyname('lr3').Value
          else params[3].asinteger:=0;
          if not query1.fieldbyname('lr4').isnull then
          params[4].asinteger:=query1.fieldbyname('lr4').Value
          else params[4].asinteger:=0;
          if not query1.fieldbyname('lr5').isnull then
          params[5].asinteger:=query1.fieldbyname('lr5').Value
          else params[5].asinteger:=0;
          if not query1.fieldbyname('lr6').isnull then
          params[6].asinteger:=query1.fieldbyname('lr6').Value
          else params[6].asinteger:=0;
          if not query1.fieldbyname('lr7').isnull then
          params[7].asinteger:=query1.fieldbyname('lr7').Value
          else params[7].asinteger:=0;
          if not query1.fieldbyname('lr8').isnull then
          params[8].asinteger:=query1.fieldbyname('lr8').Value
          else params[8].asinteger:=0;
          params[9].AsInteger:=query1.fieldbyname('seq').value;
          if not query1.fieldbyname('lr9').isnull then
          params[10].asinteger:=query1.fieldbyname('lr9').Value
          else params[10].asinteger:=0;
          if not query1.fieldbyname('lr10').isnull then
          params[11].asinteger:=query1.fieldbyname('lr10').Value
          else params[11].asinteger:=0;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmplc_comb.Query2AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query2.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_plc_02 where seq=:x1';
      params[0].asinteger:=query2.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftfloat,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(ftfloat,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftinteger,'x0',ptinput);
          commandtext:='update tbl_plc_02 set grp=:x1,le1=:x2,le2=:x3,le3=:x4,le4=:x5,le5=:x6,le6=:x7,le7=:x8,le8=:x9,le9=:x10,le10=:x11 '
                      +'where seq=:x0';

          if not query2.fieldbyname('grp').isnull then
          params[0].asstring:=query2.fieldbyname('grp').value
          else params[0].asstring:='';
          if not query2.fieldbyname('le1').isnull then
          params[1].asfloat:=query2.fieldbyname('le1').Value
          else params[1].asfloat:=0;
          if not query2.fieldbyname('le2').isnull then
          params[2].asfloat:=query2.fieldbyname('le2').Value
          else params[2].asfloat:=0;
          if not query2.fieldbyname('le3').isnull then
          params[3].asfloat:=query2.fieldbyname('le3').Value
          else params[3].asfloat:=0;
          if not query2.fieldbyname('le4').isnull then
          params[4].asfloat:=query2.fieldbyname('le4').Value
          else params[4].asfloat:=0;
          if not query2.fieldbyname('le5').isnull then
          params[5].asfloat:=query2.fieldbyname('le5').Value
          else params[5].asfloat:=0;
          if not query2.fieldbyname('le6').isnull then
          params[6].asfloat:=query2.fieldbyname('le6').Value
          else params[6].asfloat:=0;
          if not query2.fieldbyname('le7').isnull then
          params[7].asfloat:=query2.fieldbyname('le7').Value
          else params[7].asfloat:=0;
          if not query2.fieldbyname('le8').isnull then
          params[8].asfloat:=query2.fieldbyname('le8').Value
          else params[8].asfloat:=0;
          if not query2.fieldbyname('le9').isnull then
          params[9].asfloat:=query2.fieldbyname('le9').Value
          else params[9].asfloat:=0;
          if not query2.fieldbyname('le10').isnull then
          params[10].asfloat:=query2.fieldbyname('le10').Value
          else params[10].asfloat:=0;
          params[11].AsInteger:=query2.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update tbl_plc_02 set ';
          if not query2.fieldbyname('grp').isnull then
          str1:=str1+'grp='''+query2.fieldbyname('grp').value+''','
          else str1:=str1+'grp='''',';
          if not query2.fieldbyname('le1').isnull then
          str1:=str1+'le1='+query2.fieldbyname('le1').asstring+','
          else str1:=str1+'le1=0,';
          if not query2.fieldbyname('le2').isnull then
          str1:=str1+'le2='+query2.fieldbyname('le2').asstring+','
          else str1:=str1+'le2=0,';
          if not query2.fieldbyname('le3').isnull then
          str1:=str1+'le3='+query2.fieldbyname('le3').asstring+','
          else str1:=str1+'le3=0,';
          if not query2.fieldbyname('le4').isnull then
          str1:=str1+'le4='+query2.fieldbyname('le4').asstring+','
          else str1:=str1+'le4=0,';
          if not query2.fieldbyname('le5').isnull then
          str1:=str1+'le5='+query2.fieldbyname('le5').asstring+','
          else str1:=str1+'le5=0,';
          if not query2.fieldbyname('le6').isnull then
          str1:=str1+'le6='+query2.fieldbyname('le6').asstring+','
          else str1:=str1+'le6=0,';
          if not query2.fieldbyname('le7').isnull then
          str1:=str1+'le7='+query2.fieldbyname('le7').asstring+','
          else str1:=str1+'le7=0,';
          if not query2.fieldbyname('le8').isnull then
          str1:=str1+'le8='+query2.fieldbyname('le8').asstring+','
          else str1:=str1+'le8=0,';
          if not query2.fieldbyname('le9').isnull then
          str1:=str1+'le9='+query2.fieldbyname('le9').asstring+','
          else str1:=str1+'le9=0,';
          if not query2.fieldbyname('le10').isnull then
          str1:=str1+'le10='+query2.fieldbyname('le10').asstring+' '
          else str1:=str1+'le10=0 ';
          str1:=str1+'where seq='+query2.fieldbyname('seq').asstring;
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          
      end else begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftfloat,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(ftfloat,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftinteger,'x0',ptinput);
          commandtext:='insert into tbl_plc_02(grp,le1,le2,le3,le4,le5,le6,le7,le8,le9,le10,seq) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x0)';
          if not query2.fieldbyname('grp').isnull then
          params[0].asstring:=query2.fieldbyname('grp').value
          else params[0].asstring:='';
          if not query2.fieldbyname('le1').isnull then
          params[1].asfloat:=query2.fieldbyname('le1').Value
          else params[1].asfloat:=0;
          if not query2.fieldbyname('le2').isnull then
          params[2].asfloat:=query2.fieldbyname('le2').Value
          else params[2].asfloat:=0;
          if not query2.fieldbyname('le3').isnull then
          params[3].asfloat:=query2.fieldbyname('le3').Value
          else params[3].asfloat:=0;
          if not query2.fieldbyname('le4').isnull then
          params[4].asfloat:=query2.fieldbyname('le4').Value
          else params[4].asfloat:=0;
          if not query2.fieldbyname('le5').isnull then
          params[5].asfloat:=query2.fieldbyname('le5').Value
          else params[5].asfloat:=0;
          if not query2.fieldbyname('le6').isnull then
          params[6].asfloat:=query2.fieldbyname('le6').Value
          else params[6].asfloat:=0;
          if not query2.fieldbyname('le7').isnull then
          params[7].asfloat:=query2.fieldbyname('le7').Value
          else params[7].asfloat:=0;
          if not query2.fieldbyname('le8').isnull then
          params[8].asfloat:=query2.fieldbyname('le8').Value
          else params[8].asfloat:=0;
          if not query2.fieldbyname('le9').isnull then
          params[9].asfloat:=query2.fieldbyname('le9').Value
          else params[9].asfloat:=0;
          if not query2.fieldbyname('le10').isnull then
          params[10].asfloat:=query2.fieldbyname('le10').Value
          else params[10].asfloat:=0;
          params[11].AsInteger:=query2.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmplc_comb.BitBtn1Click(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    dbgrideh1.SetFocus;
    dbgrideh1.SelectedIndex:=0;
    query1.Append;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    dbgrideh2.SetFocus;
    dbgrideh2.SelectedIndex:=0;
    query2.Append;
  end;
end;

procedure Tfrmplc_comb.BitBtn2Click(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    if not query1.fieldbyname('seq').isnull then begin
      if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='delete from tbl_plc_01 where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        query1.delete;
      end;
    end;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    if not query2.fieldbyname('seq').isnull then begin
      if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='delete from tbl_plc_02 where seq=:x1';
          params[0].asinteger:=query2.fieldbyname('seq').value;
          execute;
        end;
        query2.delete;
      end;
    end;
  end;
end;

procedure Tfrmplc_comb.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_plc_01';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_plc_02';
      open;
    end;
  end;
end;

end.
