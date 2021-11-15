unit uListagemVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmListagemVendas = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    btnTodas: TButton;
    btnLocalizar: TButton;
    gridVendas: TDBGrid;
    qVendas: TFDQuery;
    qVendasID_VENDA: TIntegerField;
    qVendasVALOR_TOTAL: TSingleField;
    qVendasDT_EMISSAO: TDateField;
    qVendasDT_ENTREGA: TDateField;
    dsqVendas: TDataSource;
    edNumVenda: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnTodasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemVendas: TfrmListagemVendas;

implementation

{$R *.dfm}

uses
  Main,
  uDados;

procedure TfrmListagemVendas.btnLocalizarClick(Sender: TObject);
var
  li_idVenda  : integer;
  ls_sql      : string;
begin
  //validar id da venda digitada
  try
    li_idVenda := StrToInt(trim(edNumVenda.Text));
  except
    ShowMessage('Aten��o! Id da venda deve ser um n�mero inteiro!');
    edNumVenda.Text := '';
    edNumVenda.SetFocus;
    Exit;
  end;

  ls_sql := 'SELECT * FROM VENDAS ' +
    'WHERE ID_VENDA = ' + IntToStr(li_idVenda);

  with qVendas do
  begin
    Close;
    Sql.Clear;
    Sql.Add(ls_sql);
    Open;
  end;

end;

procedure TfrmListagemVendas.btnTodasClick(Sender: TObject);
var
  ls_sql : string;
begin
  ls_sql := 'SELECT * FROM VENDAS';

  with qVendas do
  begin
    Close;
    Sql.Clear;
    Sql.Add(ls_sql);
    Open;
  end;

end;

procedure TfrmListagemVendas.FormCreate(Sender: TObject);
begin
  qVendas.Open;
end;

procedure TfrmListagemVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //pular campo com o ENTER
  if key = #13 then
  begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

end.
