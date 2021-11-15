unit ListagemArquivos;

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
  System.Actions,
  Vcl.ActnList,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfListarArquivos = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    ActionListar: TAction;
    edDiretorio: TEdit;
    Label1: TLabel;
    Button2: TButton;
    FileOpenDialog2: TFileOpenDialog;
    btnGerarLista: TButton;
//    procedure ActionListarExecute(Sender: TObject);
    procedure EnumFolders(Root: String; Folders: TStrings);
    procedure Button2Click(Sender: TObject);
    procedure EnumFiles(Pasta, Arquivo: String; Files: TStrings);
    procedure btnGerarListaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListarArquivos: TfListarArquivos;

implementation

{$R *.dfm}

procedure TfListarArquivos.Button2Click(Sender: TObject);
begin
  if Self.FileOpenDialog2.Execute(Self.Handle) then
  begin
    Self.edDiretorio.Text := Self.FileOpenDialog2.FileName;
  end;
end;

procedure TfListarArquivos.btnGerarListaClick(Sender: TObject);
begin
  if trim(edDiretorio.Text) = '' then
  begin
    ShowMessage('Aten��o! Informe uma pasta para listagem de arquivos!');
    try
      edDiretorio.SetFocus;
    except

    end;
    Exit;
  end;

  Memo1.Lines.Clear;
  EnumFiles(edDiretorio.Text, '*.XML', Memo1.Lines);
end;

//para Listar Sub-Pastas de uma Pasta em uma TStrings
procedure TfListarArquivos.EnumFolders(Root: String; Folders: TStrings);
   procedure Enum(dir: String);
   var
     SR: TSearchRec;
     ret: Integer;
   begin
     if dir[length(dir)] <> '\' then
       dir := dir + '\';

     ret := FindFirst(dir + '*.*', faDirectory, SR);
     if ret = 0 then
     try
       repeat
         if ((SR.Attr and faDirectory) <> 0) and
            ( SR.Name <> '.') and
            ( SR.Name <> '..') then
         begin
           folders.add( dir+SR.Name );
           Enum( dir + SR.Name );
         end;

         ret := FindNext( SR );
       until ret <> 0;

     finally
       //SysUtils.FindClose(SR)
     end;
   end;

begin
  if root <> EmptyStr then
    Enum(root);
end;

procedure TfListarArquivos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fListarArquivos := nil;
  Action := caFree;
end;

//usa EnumFolders para listar as Sub-Pastas e procuras por arquivos
procedure TfListarArquivos.EnumFiles(Pasta, Arquivo: String; Files: TStrings);
var
  SR: TSearchRec;
  SubDirs : TStringList;
  ret, X : integer;
  sPasta : String;
begin
  if Pasta[Length(Pasta)] <> '\' then
   Pasta := Pasta + '\';

 try
   SubDirs := TStringList.Create;
   SubDirs.Add(Pasta);
   EnumFolders(Pasta, SubDirs);


    if SubDirs.Count > 0 then
    for X := 0 to SubDirs.Count -1 do
    begin
      sPasta:= SubDirs[X];
      if sPasta[Length(sPasta)] <> '\' then
       sPasta := sPasta + '\';

       ret := FindFirst(sPasta + Arquivo, faAnyFile, SR);
       if ret = 0 then
       try
         repeat
           if not (SR.Attr and faDirectory > 0) then
             Files.Add(SR.Name);

           ret := FindNext(SR);
         until ret <> 0;

       finally
         //SysUtils.FindClose(SR)
       end;
    end;
  finally
    SubDirs.Free;
  end;
end;

end.
