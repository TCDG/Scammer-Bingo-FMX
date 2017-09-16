program ScammerBingoFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  uSBF in 'uSBF.pas' {frmmain},
  uDataModule in 'uDataModule.pas' {DataModule1: TDataModule},
  uEditBox in 'uEditBox.pas' {frmedit};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Landscape, TFormOrientation.InvertedLandscape];
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tfrmmain, frmmain);
  Application.CreateForm(Tfrmedit, frmedit);
  Application.Run;
end.
