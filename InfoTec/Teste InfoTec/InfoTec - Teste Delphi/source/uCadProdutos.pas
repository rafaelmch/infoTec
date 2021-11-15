unit uCadProdutos;

{
Rafael Hassegawa - Teste pr�tico
rafaelmch@gmail.com
(31)99886-6863
}

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.StdCtrls,
  Vcl.Mask,
  Vcl.DBCtrls,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Types, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope ;

type
  TfrmCadProdutos = class(TForm)
    Panel1: TPanel;
    dbNavegador: TDBNavigator;
    btnNovo: TButton;
    btnCancelar: TButton;
    btnSalvar: TButton;
    lblRegistros: TLabel;
    Panel3: TPanel;
    btnEnviarEmail: TButton;
    qProdutos: TFDQuery;
    dsqProdutos: TDataSource;
    qProdutosID_PRODUTO: TIntegerField;
    qProdutosDESCRICAO: TStringField;
    qProdutosPRECO_UNIT: TSingleField;
    qProdutosDISPONIVEL: TStringField;
    Label15: TLabel;
    dbId: TDBEdit;
    Label16: TLabel;
    dbDescricao: TDBEdit;
    Label17: TLabel;
    dbPrecoUnit: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbNavegadorClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
    //validar campos obrigat�rios da tela
    function validarCamposObrigatorios() : boolean;
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

uses
  Main,
  System.RegularExpressions,
  InscricaoFiscal,
  uDados,
  uEnviaEmail,
  login,
  uFuncoes;

//Envio de e-mail utilizando o Gmail
procedure TfrmCadProdutos.btnEnviarEmailClick(Sender: TObject);
begin
  Application.CreateForm(TfrmEnviaEmail,frmEnviaEmail);
  //frmEnviaEmail.edPara.Text := edEmail.Text;
  frmEnviaEmail.ShowModal;
end;

procedure TfrmCadProdutos.btnNovoClick(Sender: TObject);
var
  ls_sql : String;
begin
  lblRegistros.Caption := '';

  qProdutos.Append;
  try
    dbDescricao.SetFocus;
  except

  end;
end;

procedure TfrmCadProdutos.btnCancelarClick(Sender: TObject);
begin
  qProdutos.Cancel;
end;

procedure TfrmCadProdutos.btnSalvarClick(Sender: TObject);
var
  ls_sql : String;
begin
  //se n�o validar campos obrigat�rios, n�o tenta salvar
  if validarCamposObrigatorios() = false then
    Exit;

  if qProdutos.State in [dsEdit, dsInsert] then
    qProdutos.Post
  else
    ShowMessage('Aten��o! Tela n�o est� em modo de inser��o/edi��o!');

  lblRegistros.Caption := atualizarRegistrosCadastro('CLI',qProdutos);
end;

procedure TfrmCadProdutos.dbNavegadorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  //exibir quantidade total de registros
  lblRegistros.Caption := atualizarRegistrosCadastro('PROD',qProdutos);
end;

procedure TfrmCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qProdutos.Close;
  frmDados.qGeral.Close;
  frmCadProdutos := nil;
  Action := caFree;
end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
begin
  qProdutos.Open;
end;

procedure TfrmCadProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //pular campo com o ENTER
  if key = #13 then
  begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmCadProdutos.FormShow(Sender: TObject);
begin
  lblRegistros.Caption := atualizarRegistrosCadastro('PROD',qProdutos);
end;

function TfrmCadProdutos.validarCamposObrigatorios() : boolean;
var
  li_id : Integer;
  ld_dt_nascimento : TDate;
begin
  result := true;

  if trim(dbDescricao.Text) = '' then
  begin
    ShowMessage('Aten��o! Informe o nome do cliente!');
    dbDescricao.SetFocus;
    result := false;
    exit;
  end;
end;

end.

