unit accueil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFAccueil = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Quitter1: TMenuItem;
    Donnees1: TMenuItem;
    Employs1: TMenuItem;
    Clients1: TMenuItem;
    Clients2: TMenuItem;
    N1: TMenuItem;
    Services1: TMenuItem;
    N2: TMenuItem;
    Prestations1: TMenuItem;
    N3: TMenuItem;
    AffectiondesPrestations1: TMenuItem;
    procedure Employs1Click(Sender: TObject);
    procedure Clients2Click(Sender: TObject);
    procedure Services1Click(Sender: TObject);
    procedure Prestations1Click(Sender: TObject);
    procedure AffectiondesPrestations1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FAccueil: TFAccueil;

implementation

{$R *.dfm}

uses affecter, client, connexion, DM, employe, prestation, service;

procedure TFAccueil.AffectiondesPrestations1Click(Sender: TObject);
begin
  FAffecter.ShowModal;
end;

procedure TFAccueil.Clients2Click(Sender: TObject);
begin
  FClient.showModal;
end;

procedure TFAccueil.Employs1Click(Sender: TObject);
begin
  FEmploye.showModal;
end;

procedure TFAccueil.Prestations1Click(Sender: TObject);
begin
  FPrestation.ShowModal;
end;

procedure TFAccueil.Services1Click(Sender: TObject);
begin
  FService.ShowModal;
end;

end.
