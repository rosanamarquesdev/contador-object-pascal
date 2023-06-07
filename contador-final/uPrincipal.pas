unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    TrackBar1: TTrackBar;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);


begin

  TThread.CreateAnonymousThread(
  procedure
    var
    I: Integer;

  begin
    for I := 0 to 10 do
      begin
        Button1.Caption := IntToStr(I);
        Sleep(TrackBar1.Position);
      end;

  end).Start;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TThread.CreateAnonymousThread(procedure
  var
    I : Integer;
  begin
    for I := 10 downto 0 do
    begin
      Button2.Caption := IntToStr(I);
      Sleep(TrackBar1.Position);
    end;
  end).Start;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Label1.Caption := Format('Velocidade do contador: %d', [TrackBar1.Position]);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Label1.Caption := EmptyStr;
  Label1.Caption := Format('Velocidade do contador: %d', [TrackBar1.Position]);
end;

end.



