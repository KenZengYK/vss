unit newcap_subcontractorformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons, Spin;

type
  Tfrmnewcap_subcontractor = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure QueryWQtyChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_subcontractor: Tfrmnewcap_subcontractor;

implementation

uses mainformu, newcap_1stchoiceformu;

{$R *.dfm}

procedure Tfrmnewcap_subcontractor.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.Post;
end;

procedure Tfrmnewcap_subcontractor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_subcontractor:=nil;
end;

procedure Tfrmnewcap_subcontractor.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('w1').onchange:=querywqtychange;
  query1.fieldbyname('w2').onchange:=querywqtychange;
  query1.fieldbyname('w3').onchange:=querywqtychange;
  query1.fieldbyname('w4').onchange:=querywqtychange;
  query1.fieldbyname('w5').onchange:=querywqtychange;
  query1.fieldbyname('w6').onchange:=querywqtychange;
end;

procedure Tfrmnewcap_subcontractor.Query1AfterPost(DataSet: TDataSet);
var
  strupd,tplant:string;
  seq:integer;
begin
  try
    screen.cursor:=crSQLWait;
    strupd:='update tbl_cap_ftyelements_wk_sub set ttl='+query1.FieldByName('ttl').AsString+',';
    strupd:=strupd+'w1='+query1.FieldByName('w1').AsString+',';
    strupd:=strupd+'w2='+query1.FieldByName('w2').AsString+',';
    strupd:=strupd+'w3='+query1.FieldByName('w3').AsString+',';
    strupd:=strupd+'w4='+query1.FieldByName('w4').AsString+',';
    strupd:=strupd+'w5='+query1.FieldByName('w5').AsString+',';
    strupd:=strupd+'w6='+query1.FieldByName('w6').AsString;
    strupd:=strupd+' where tplant='''+query1.fieldbyname('tplant').value+''' and seq='+query1.fieldbyname('seq').asstring+' and yr='+query1.fieldbyname('yr').asstring
                  +' and m1='+query1.FieldByName('m1').AsString+' and seq1='+query1.FieldByName('seq1').AsString+' and flag6='''+query1.FieldByName('flag6').Value+'''';
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
    tplant:=query1.fieldbyname('tplant').value;
    seq:=query1.fieldbyname('seq').value;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct flag6,sum(w1) as w1,sum(w2) as w2,sum(w3) as w3,sum(w4) as w4,sum(w5) as w5,sum(w6) as w6 from tbl_cap_ftyelements_wk_sub '
                  +' where tplant='''+query1.fieldbyname('tplant').value+''' and seq='+query1.fieldbyname('seq').asstring+' and yr='+query1.fieldbyname('yr').asstring
                  +' and m1='+query1.FieldByName('m1').AsString+' group by flag6';
      open;
      first;
      while not eof do begin
        if fieldbyname('flag6').Value='B' then begin
          with frmnewcap_1stchoice.Query1 do begin
            FindNearest([tplant,seq,36,160]);
            edit;
            fieldbyname('w1').Value:=query2.FieldByName('w1').Value;
            fieldbyname('w2').Value:=query2.FieldByName('w2').Value;
            fieldbyname('w3').Value:=query2.FieldByName('w3').Value;
            fieldbyname('w4').Value:=query2.FieldByName('w4').Value;
            fieldbyname('w5').Value:=query2.FieldByName('w5').Value;
            fieldbyname('w6').Value:=query2.FieldByName('w6').Value;
            post;
          end;
        end else if fieldbyname('flag6').Value='K' then begin
          with frmnewcap_1stchoice.Query1 do begin
            FindNearest([tplant,seq,36,161]);
            edit;
            fieldbyname('w1').Value:=query2.FieldByName('w1').Value;
            fieldbyname('w2').Value:=query2.FieldByName('w2').Value;
            fieldbyname('w3').Value:=query2.FieldByName('w3').Value;
            fieldbyname('w4').Value:=query2.FieldByName('w4').Value;
            fieldbyname('w5').Value:=query2.FieldByName('w5').Value;
            fieldbyname('w6').Value:=query2.FieldByName('w6').Value;
            post;
          end;
        end else if fieldbyname('flag6').Value='U' then begin
          with frmnewcap_1stchoice.Query1 do begin
            FindNearest([tplant,seq,36,162]);
            edit;
            fieldbyname('w1').Value:=query2.FieldByName('w1').Value;
            fieldbyname('w2').Value:=query2.FieldByName('w2').Value;
            fieldbyname('w3').Value:=query2.FieldByName('w3').Value;
            fieldbyname('w4').Value:=query2.FieldByName('w4').Value;
            fieldbyname('w5').Value:=query2.FieldByName('w5').Value;
            fieldbyname('w6').Value:=query2.FieldByName('w6').Value;
            post;
          end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_subcontractor.QueryWQtyChange(Sender: TField);
begin
  query1.fieldbyname('ttl').value:=query1.fieldbyname('w1').value+query1.fieldbyname('w2').value+query1.fieldbyname('w3').value+query1.fieldbyname('w4').value+query1.fieldbyname('w5').value+query1.fieldbyname('w6').value;
end;

end.
