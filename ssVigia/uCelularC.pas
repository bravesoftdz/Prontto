unit uCelularC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, TDI,
  uDmCelular, StdCtrls, Buttons;

type
  TfCelularC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    btInserir: TBitBtn;
    btPesquisar: TBitBtn;
    btExcluir: TBitBtn;
    pnlPesquisa: TPanel;
    tbPesquisa: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure tbPesquisaClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    FTDI: TTDI;
  public
    { Public declarations }
    fDmCelular: TDmCelular;
  end;

var
  fCelularC: TfCelularC;

implementation

uses rsDBUtils, uCelular, uMenu;

{$R *.dfm}

procedure TfCelularC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCelularC.FormShow(Sender: TObject);
begin
  fDMCelular := TDMCelular.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmCelular);
end;

procedure TfCelularC.btInserirClick(Sender: TObject);
begin
  fDmCelular.pInserir;
  fCelular := TfCelular.Create(Self);
  fCelular.fDmCelular := fDmCelular;
  fCelular.ShowModal;
end;

procedure TfCelularC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmCelular);
end;

procedure TfCelularC.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',MtConfirmation,[mbNo,mbOk],0) = mrOk then
  begin
    fDmCelular.cdsCelular.Delete;
    fDmCelular.cdsCelular.ApplyUpdates(0);
  end;
end;

procedure TfCelularC.tbPesquisaClick(Sender: TObject);
begin
  fDmCelular.cdsCelular.Close;
  if Edit1.Text <> '' then
  begin
  end;
  fDmCelular.cdsCelular.Open;
end;

procedure TfCelularC.SMDBGrid1DblClick(Sender: TObject);
var
  vId: Integer;
begin
  if fDmCelular.cdsCelular.IsEmpty then
    Exit;
  fCelular := TfCelular.Create(Self);
  fCelular.fDmCelular := fDmCelular;
  vId := fDmCelular.cdsCelularID.AsInteger;
  fDmCelular.cdsCelular.Edit;
  fCelular.ShowModal;
  fDmCelular.cdsCelular.IndexFieldNames := 'ID';
  fDmCelular.cdsCelular.FindKey([vId]);
end;

procedure TfCelularC.btPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not pnlPesquisa.Visible;
  if pnlPesquisa.Visible then
    Edit1.SetFocus;
end;

procedure TfCelularC.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  if Column.FieldName = 'clOperadora' then
    Exit;
  ColunaOrdenada := Column.FieldName;
  fDmCelular.cdsCelular.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
