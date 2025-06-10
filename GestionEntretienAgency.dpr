program GestionEntretienAgency;

uses
  Vcl.Forms,
  connexion in 'connexion.pas' {FConnexion},
  DM in 'DM.pas' {DataModule1: TDataModule},
  affecter in 'affecter.pas' {FAffecter},
  prestation in 'prestation.pas' {FPrestation},
  service in 'service.pas' {FService},
  client in 'client.pas' {FClient},
  employe in 'employe.pas' {FEmploye},
  accueil in 'accueil.pas' {FAccueil};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFConnexion, FConnexion);
  Application.CreateForm(TFAccueil, FAccueil);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFAffecter, FAffecter);
  Application.CreateForm(TFPrestation, FPrestation);
  Application.CreateForm(TFService, FService);
  Application.CreateForm(TFClient, FClient);
  Application.CreateForm(TFEmploye, FEmploye);
  Application.Run;
end.
