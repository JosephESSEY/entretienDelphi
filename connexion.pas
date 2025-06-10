unit connexion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg;

type
  TFConnexion = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdUsername: TEdit;
    Edit2: TEdit;
    BtnConnexion: TBitBtn;
    BtnQuitter: TBitBtn;
    procedure BtnConnexionClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FConnexion: TFConnexion;

implementation

{$R *.dfm}

uses accueil;

procedure TFConnexion.BtnConnexionClick(Sender: TObject);
begin

  if(UpperCase(EdUsername.Text) = 'ADMIN') and (UpperCase(Edit2.Text) = 'ADMIN') then
  begin
    ShowMessage('Bienvenu');
    FAccueil.ShowModal;
  end
  else
  begin
    ShowMessage('Informations Incorrectes');
  end;

end;

end.
