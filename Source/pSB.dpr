program pSB;

uses
  System.StartUpCopy,
  FMX.Forms,
  uSB in 'uSB.pas' {Form1},
  uNameChange in 'uNameChange.pas' {frmnamechange};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrmnamechange, frmnamechange);
  Application.Run;
end.
