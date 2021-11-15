unit uFrmSplash;

{
Rafael Hassegawa - Teste pr�tico
rafaelmch@gmail.com
(31)99886-6863
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TfrmSplash = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    timer: TTimer;
    procedure timerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSplash := nil;
  Action := caFree;
end;

procedure TfrmSplash.timerTimer(Sender: TObject);
begin
  timer.Enabled := false;
  Close;
end;

end.
