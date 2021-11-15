unit Main;

{
Rafael Hassegawa - Teste prático
rafaelmch@gmail.com
(31)99886-6863
}

interface

uses
  ShellApi,
  WinSock,
  IniFiles,
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.Actions,
  Vcl.ActnList,
  System.ImageList,
  Vcl.ImgList,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.IB, FireDAC.Phys.IBDef, Vcl.Imaging.pngimage,
  Vcl.Buttons;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnDEVHassegawa: TPanel;
    PanelWorkArea: TPanel;
    Label1: TLabel;
    ActionList1: TActionList;
    ImageList1: TImageList;
    ActionCadCliente: TAction;
    ActionCadVenda: TAction;
    ActionListarArquivos: TAction;
    panelInfo: TPanel;
    panelDev: TPanel;
    timerData: TTimer;
    Panel4: TPanel;
    imgHassegawa: TImage;
    qConexao: TFDConnection;
    Button1: TButton;
    Action1: TAction;
    btnCadProdutos: TBitBtn;
    btnCadVendas: TBitBtn;
    btnListagemVendas: TBitBtn;
    btnListagemProdutos: TBitBtn;
    lblDataHora: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActionCadUsuarioExecute(Sender: TObject);
    procedure ActionListarArquivosExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure timerDataTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadUsuarioClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCadProdutosClick(Sender: TObject);
    procedure btnCadVendasClick(Sender: TObject);
    procedure btnListagemVendasClick(Sender: TObject);
  private
    { Private declarations }
    FFormActive: TForm;
    procedure LoadForm(AClass: TFormClass);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  uCadProdutos,
  ListagemArquivos,
  uFrmSplash,
  uDados,
  CadUsuario,
  CadVenda,
  uListagemVendas;

procedure TfrmMain.ActionCadUsuarioExecute(Sender: TObject);
begin
  Self.LoadForm(TfrmCadUsuario);
end;

procedure TfrmMain.ActionListarArquivosExecute(Sender: TObject);
begin
  Self.LoadForm(TfListarArquivos);
end;

procedure TfrmMain.btnCadProdutosClick(Sender: TObject);
begin
  Self.LoadForm(TfrmCadProdutos);
end;

procedure TfrmMain.btnCadUsuarioClick(Sender: TObject);
begin
  Self.LoadForm(TfrmCadUsuario);
end;

procedure TfrmMain.btnCadVendasClick(Sender: TObject);
begin
  Self.LoadForm(TfrmRegistroVendas);
end;

procedure TfrmMain.btnListagemVendasClick(Sender: TObject);
begin
  Self.LoadForm(TfrmListagemVendas);
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  //informações DEV - Rafael Hassegawa
  ShellExecute(Handle,'open',PCHAR('https://www.linkedin.com/in/rafael-hassegawa-5462a943/'), PChar(''), PChar(''), SW_SHOWNORMAL);
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  //exibir data e hora
  lblDataHora.Caption := TimeToStr(time);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMain := nil;
  Action := caFree;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  iniConf : TIniFile;
  ls_caminho, ls_ipServer : String;
begin
  try
    //leitura do arquivo ini, configurações do banco de dados
    iniConf := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'hassegawa.ini');
    ls_ipServer := iniConf.ReadString('database','ipservidor','');
    ls_caminho := iniConf.ReadString('database','caminho','');
    with qConexao do
    begin
      DriverName := 'IB';
      Params.UserName := 'SYSDBA';
      Params.Password := 'masterkey';
      Params.Database := ls_caminho + '\TESTEHASSEGAWA.FDB';
      LoginPrompt := false;
      Connected := true;
      Open();
    end;
  except
    ShowMessage('Atenção! Erro na configuração do arquivo .INI');
    Application.Terminate;
  end;
end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
     perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  //tela splash
  //frmSplash.ShowModal;
end;

procedure TfrmMain.LoadForm(AClass: TFormClass);
begin
  if Assigned(Self.FFormActive) then
  begin
    Self.FFormActive.Close;
    Self.FFormActive.Free;
    Self.FFormActive := nil;
  end;

  Self.FFormActive             := AClass.Create(nil);
  Self.FFormActive.Parent      := Self.PanelWorkArea;
  Self.FFormActive.BorderStyle := TFormBorderStyle.bsNone;

  Self.FFormActive.Top   := 0;
  Self.FFormActive.Left  := 0;
  Self.FFormActive.Align := TAlign.alClient;

  Self.FFormActive.Show;
end;

procedure TfrmMain.timerDataTimer(Sender: TObject);
begin
  //exibir dia + data e hora
  lblDataHora.Caption := UpperCase(FormatDateTime('dddd', Date)) + ', ' + FormatDateTime('dd', Date) +
    ' de ' + FormatDateTime('mmmm', Date) + ' de ' + FormatDateTime('yyyy', Date) + ' ' +
    TimeToStr(time);
end;

end.
