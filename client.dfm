object FClient: TFClient
  Left = 0
  Top = 0
  Caption = 'FClient'
  ClientHeight = 659
  ClientWidth = 1067
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -28
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 38
  object Label1: TLabel
    Left = 96
    Top = 88
    Width = 83
    Height = 38
    Caption = 'Nom : '
  end
  object Label3: TLabel
    Left = 96
    Top = 252
    Width = 56
    Height = 38
    Caption = 'Tel : '
  end
  object Label4: TLabel
    Left = 96
    Top = 164
    Width = 119
    Height = 38
    Caption = 'Pr'#233'nom : '
  end
  object EdNom: TEdit
    Left = 288
    Top = 85
    Width = 329
    Height = 46
    TabOrder = 0
  end
  object EdPrenom: TEdit
    Left = 288
    Top = 161
    Width = 329
    Height = 46
    TabOrder = 1
  end
  object EdTel: TEdit
    Left = 288
    Top = 249
    Width = 329
    Height = 46
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 376
    Width = 889
    Height = 233
    DataSource = DataModule1.DSListeClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -28
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button1: TButton
    Left = 848
    Top = 88
    Width = 137
    Height = 46
    Caption = 'Modifier'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 672
    Top = 85
    Width = 137
    Height = 46
    Caption = 'Ajouter'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 672
    Top = 237
    Width = 137
    Height = 46
    Caption = 'Supprimer'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 848
    Top = 237
    Width = 137
    Height = 46
    Caption = 'Annuler'
    TabOrder = 7
    OnClick = Button4Click
  end
end
