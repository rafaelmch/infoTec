program TestePratico_1;

uses
  Vcl.Forms,
  Main in 'Main.pas' {fCorretoraACME},
  CadCliente in 'CadCliente.pas' {fCadCliente},
  CadVenda in 'CadVenda.pas' {Form3},
  InscricaoFiscal in 'InscricaoFiscal.pas',
  ListagemArquivos in 'ListagemArquivos.pas' {fListarArquivos},
  login in 'login.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfCorretoraACME, fCorretoraACME);
  Application.CreateForm(TfListarArquivos, fListarArquivos);
  Application.Run;
end.
