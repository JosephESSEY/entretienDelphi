object FPrestation: TFPrestation
  Left = 0
  Top = 0
  Caption = 'FPrestation'
  ClientHeight = 639
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -28
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 38
  object Label1: TLabel
    Left = 104
    Top = 120
    Width = 120
    Height = 38
    Caption = 'Adresse : '
  end
  object Label2: TLabel
    Left = 104
    Top = 368
    Width = 110
    Height = 38
    Caption = 'Service : '
  end
  object Label3: TLabel
    Left = 104
    Top = 288
    Width = 93
    Height = 38
    Caption = 'Client : '
  end
  object Label4: TLabel
    Left = 104
    Top = 205
    Width = 46
    Height = 38
    Caption = 'Prix'
  end
  object Label6: TLabel
    Left = 104
    Top = 64
    Width = 80
    Height = 38
    Caption = 'Date : '
  end
  object DateTimePicker1: TDateTimePicker
    Left = 304
    Top = 56
    Width = 313
    Height = 46
    Date = 45818.000000000000000000
    Time = 0.349082951390300900
    TabOrder = 0
  end
  object EdPrix: TEdit
    Left = 304
    Top = 197
    Width = 313
    Height = 46
    TabOrder = 1
  end
  object EdAdresse: TEdit
    Left = 304
    Top = 116
    Width = 313
    Height = 46
    TabOrder = 2
  end
  object DBLookupComboBoxC: TDBLookupComboBox
    Left = 304
    Top = 288
    Width = 313
    Height = 46
    KeyField = 'idClient'
    ListField = 'Client'
    ListSource = DataModule1.DSNomCompletClient
    TabOrder = 3
  end
  object DBLookupComboBoxS: TDBLookupComboBox
    Left = 304
    Top = 368
    Width = 313
    Height = 46
    KeyField = 'idService'
    ListField = 'nomService'
    ListSource = DataModule1.DSListeService
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 104
    Top = 432
    Width = 913
    Height = 193
    DataSource = DataModule1.DSListePrestation
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -28
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idPrestation'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adresse'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prix'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idService'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idClient'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idClient_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prenom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idService_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomService'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descriptionService'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 688
    Top = 296
    Width = 145
    Height = 43
    Caption = 'Supprimer'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 872
    Top = 296
    Width = 145
    Height = 43
    Caption = 'Annuler'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 872
    Top = 152
    Width = 145
    Height = 43
    Caption = 'Modifier'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 688
    Top = 152
    Width = 145
    Height = 43
    Caption = 'Ajouter'
    TabOrder = 9
    OnClick = Button5Click
  end
end
