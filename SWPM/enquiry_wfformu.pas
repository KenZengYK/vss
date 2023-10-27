﻿unit enquiry_wfformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxGridExportLink;

type
  Tfrmenquiry_wf = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmenquiry_wf: Tfrmenquiry_wf;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmenquiry_wf.BitBtn1Click(Sender: TObject);
begin
  if (combobox1.text>'') and (dateedit1.date>0) then begin
    with Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      CommandText:='select * from sp_qn_alrs1(:x1,:x2,'''',:x3)';
      params[0].asstring:=combobox1.text;
      params[1].asstring:=combobox2.text;
      params[2].asdate:=DateEdit1.date;
      open;
    end;
  end else showmessage('必須選厰和日期！');
end;

procedure Tfrmenquiry_wf.BitBtn2Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmenquiry_wf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
  frmenquiry_wf:=nil;
end;

end.
