object FAccueil: TFAccueil
  Left = 0
  Top = 0
  Caption = 'Accueil'
  ClientHeight = 534
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesktopCenter
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 352
    Top = 176
    object Fichier1: TMenuItem
      Caption = 'Fichier'
      object Quitter1: TMenuItem
        Caption = 'Quitter'
      end
    end
    object Donnees1: TMenuItem
      Caption = 'Donn'#233'es'
      object Employs1: TMenuItem
        Caption = 'Employ'#233's'
        OnClick = Employs1Click
      end
      object Clients1: TMenuItem
        Caption = '-'
      end
      object Clients2: TMenuItem
        Caption = 'Clients'
        OnClick = Clients2Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Services1: TMenuItem
        Caption = 'Services'
        OnClick = Services1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Prestations1: TMenuItem
        Caption = 'Prestations'
        OnClick = Prestations1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object AffectiondesPrestations1: TMenuItem
        Caption = 'Affection des Prestations'
        OnClick = AffectiondesPrestations1Click
      end
    end
  end
end
