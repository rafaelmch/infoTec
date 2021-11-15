program testePratico_RafaelHassegawa;

uses
  Vcl.Forms,
  Windows,
  Dialogs,
  SysUtils,
  Main in 'Main.pas' {frmMain},
  uCadProdutos in 'uCadProdutos.pas' {frmCadProdutos},
  CadVenda in 'CadVenda.pas' {frmRegistroVendas},
  login in 'login.pas' {frmLogin},
  uFuncoes in 'uFuncoes.pas' {$R *.res},
  uDados in 'uDados.pas' {frmDados: TDataModule},
  uListagemVendas in 'uListagemVendas.pas' {frmListagemVendas},
  uListagemProdutos in 'uListagemProdutos.pas' {Form1};

{$R *.res}

Var
HprevHist : HWND;

//verificar se existe outra cópia do aplicativo abertra
function verificarCopiaAberta() : Boolean;
var
 rtn : Cardinal;
begin
  result := False;
  CreateMutex(nil, False, PWideChar(ExtractFileName(Application.ExeName)));
  rtn := GetLastError;
  if rtn = ERROR_ALREADY_EXISTS then
   result := True;
end;

begin
  //não permitir executar duas cópias do aplicativo ao mesmo tempo
  if verificarCopiaAberta() = true then
  begin
    ShowMessage('Atenção! Outra cópia do aplicativo está aberta! Feche-a para prosseguir!');
    Application.Terminate;
  end
  else
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(TfrmListagemVendas, frmListagemVendas);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
  end;
end.
