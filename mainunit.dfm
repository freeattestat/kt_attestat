object MainForm: TMainForm
  Left = 102
  Top = 109
  Width = 891
  Height = 450
  Caption = #1054' '#1055#1088#1086#1075#1088#1072#1084#1084#1077
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 67
    Width = 875
    Height = 284
    Align = alClient
    BevelKind = bkFlat
    BorderStyle = bsNone
    Checkboxes = True
    Columns = <
      item
        Caption = #8470' '#1087'/'#1087
        Width = 60
      end
      item
        Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048#1084#1103' '#1054#1090#1095#1077#1089#1090#1074#1086
        Width = 400
      end
      item
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 120
      end
      item
        Caption = #1053#1086#1084#1077#1088
        Width = 110
      end
      item
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        Width = 120
      end>
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    GridLines = True
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    PopupMenu = TBXPopupMenu1
    TabOrder = 0
    ViewStyle = vsReport
    Visible = False
    OnAdvancedCustomDrawItem = ListView1AdvancedCustomDrawItem
    OnColumnClick = ListView1ColumnClick
    OnData = ListView1Data
    OnDblClick = ListView1DblClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 392
    Width = 875
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 875
    Height = 25
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      CloseButton = False
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 288
      DockRow = 1
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FullSize = True
      Images = TBXImageList1
      MenuBar = True
      ParentFont = False
      ProcessShortCuts = True
      ShrinkMode = tbsmWrap
      TabOrder = 0
      Caption = 'TBXToolbar1'
      object TBXSubmenuItem1: TTBXSubmenuItem
        Caption = #1060#1072#1081#1083
        Hint = ''
        object TBXItem6: TTBXItem
          Action = FileNew
        end
        object TBXItem5: TTBXItem
          Action = FileOpen
        end
        object TBXItem4: TTBXItem
          Action = FileSave
        end
        object TBXItem3: TTBXItem
          Action = FileSaveAs
          ImageIndex = 7
        end
        object TBXItem7: TTBXItem
          Action = FileClose
          ImageIndex = 8
        end
        object TBXItem35: TTBXItem
          Action = FileProperties
          ImageIndex = 9
        end
        object TBXSeparatorItem1: TTBXSeparatorItem
          Caption = ''
          Hint = ''
        end
        object TBXSubmenuItem9: TTBXSubmenuItem
          Visible = False
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074#1099#1087#1091#1089#1082#1085#1080#1082#1086#1074
          Hint = ''
          object TBXItem73: TTBXItem
            Action = Export2Dbf
          end
          object TBXItem75: TTBXItem
            Action = CsvExport
          end
          object TBXItem77: TTBXItem
            Action = ExportCSVFio
          end
          object TBXItem95: TTBXItem
            Action = ExportToIni
          end
        end
        object TBXSubmenuItem10: TTBXSubmenuItem
          Visible = False
          Caption = #1048#1084#1087#1086#1088#1090' '#1074#1099#1087#1091#1089#1082#1085#1080#1082#1086#1074
          Hint = ''
          object TBXItem82: TTBXItem
            Action = ImportCSVDF
          end
          object TBXItem76: TTBXItem
            Action = ImportCSV
          end
          object TBXItem96: TTBXItem
            Action = Action26
          end
        end
        object TBXItem2: TTBXItem
          Action = FileExit
          ImageIndex = 12
        end
      end
      object TBXSubmenuItem2: TTBXSubmenuItem
        Caption = #1055#1077#1095#1072#1090#1100
        Hint = ''
        object TBXItem97: TTBXItem
          Action = Action27
        end
        object TBXItem21: TTBXItem
          Action = attestat
          Caption = 
            #1058#1080#1090#1091#1083' '#1072#1090#1090#1077#1089#1090#1072#1090#1072' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1073#1097#1077#1084' '#1080' '#1089#1088#1077#1076#1085#1077#1084' ('#1087#1086#1083#1085#1086#1084') '#1086#1073#1097#1077#1084' '#1086#1073#1088#1072#1079 +
            #1086#1074#1072#1085#1080#1080
        end
        object TBXItem78: TTBXItem
          Action = attestat_obr
          Caption = 
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1073#1097#1077#1084' '#1080' '#1089#1088#1077#1076#1085#1077#1084' ('#1087#1086#1083#1085#1086#1084') '#1086#1073#1097#1077 +
            #1084' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080' ('#1083#1080#1094#1077#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
        end
        object TBXItem20: TTBXItem
          Action = attestat_pril
          Caption = 
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1073#1097#1077#1084' '#1080' '#1089#1088#1077#1076#1085#1077#1084' ('#1087#1086#1083#1085#1086#1084') '#1086#1073#1088#1072 +
            #1079#1086#1074#1072#1085#1080#1080' ('#1086#1073#1088#1072#1090#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
        end
        object TBXItem85: TTBXItem
          Action = Action15
        end
        object TBXItem9: TTBXItem
          Action = Action1
        end
        object TBXItem84: TTBXItem
          Action = Action19
        end
        object TBXItem74: TTBXItem
          Action = students_list
        end
        object TBXItem91: TTBXItem
          Action = Action22
        end
        object TBXItem8: TTBXItem
          Action = KorrectorAction
        end
      end
      object TBXSubmenuItem3: TTBXSubmenuItem
        Caption = #1042#1099#1087#1091#1089#1082#1085#1080#1082
        Hint = ''
        object TBXItem26: TTBXItem
          Action = StudentCreate
        end
        object TBXItem25: TTBXItem
          Action = StudentEdit
        end
        object TBXItem24: TTBXItem
          Action = StudentDelete
        end
        object TBXItem100: TTBXItem
          Action = Action29
        end
      end
      object TBXSubmenuItem5: TTBXSubmenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
        Hint = ''
        object TBXItem28: TTBXItem
          Action = Settings
        end
        object TBXItem27: TTBXItem
          Action = SpecEdit
          ImageIndex = 10
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1096#1072#1073#1083#1086#1085#1099
        end
        object TBXSubmenuItem7: TTBXSubmenuItem
          Visible = False
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1082#1077#1090#1099
          Hint = ''
          object TBXItem99: TTBXItem
            Action = Action28
          end
          object TBXItem51: TTBXItem
            Action = Action17
            Caption = #1058#1080#1090#1091#1083' '#1072#1090#1090#1077#1089#1090#1072#1090#1072' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1073#1097#1077#1084' '#1080' '#1089#1088#1077#1076#1085#1077#1084' ('#1087#1086#1083#1085#1086#1084') '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080
          end
          object TBXItem79: TTBXItem
            Action = Action13
            Caption = 
              #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1073#1097#1077#1084' '#1080' '#1089#1088#1077#1076#1085#1077#1084' ('#1087#1086#1083#1085#1086#1084') '#1086#1073#1088#1072 +
              #1079#1086#1074#1072#1085#1080#1080' ('#1083#1080#1094#1077#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
          end
          object TBXItem52: TTBXItem
            Action = Action18
            Caption = 
              #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1073#1097#1077#1084' '#1080' '#1089#1088#1077#1076#1085#1077#1084' ('#1087#1086#1083#1085#1086#1084') '#1086#1073#1088#1072 +
              #1079#1086#1074#1072#1085#1080#1080' ('#1086#1073#1088#1072#1090#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
          end
          object TBXItem83: TTBXItem
            Action = Action20
          end
          object TBXItem86: TTBXItem
            Action = Action21
          end
          object TBXItem93: TTBXItem
            Action = Action23
          end
        end
        object TBXItem53: TTBXItem
          Action = Registry
        end
        object TBXItem94: TTBXItem
          Action = Action25
        end
      end
      object TBXSubmenuItem6: TTBXSubmenuItem
        Caption = #1057#1087#1088#1072#1074#1082#1072
        Hint = ''
        object TBXItem89: TTBXItem
          Action = Help
        end
        object TBXItem1: TTBXItem
          Action = AboutAction
          ImageIndex = 11
        end
      end
    end
  end
  object TBXDock2: TTBXDock
    Left = 0
    Top = 25
    Width = 875
    Height = 42
    object TBXToolbar2: TTBXToolbar
      Left = 0
      Top = 0
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = -24
      DockRow = 2
      Images = TBXImageList1
      ItemTransparency = itEnable
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      TabOrder = 0
      Caption = 'TBXToolbar2'
      object TBXItem29: TTBXItem
        Action = FileNew
      end
      object TBXItem30: TTBXItem
        Action = FileOpen
      end
      object TBXItem31: TTBXItem
        Action = FileSave
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
        Caption = ''
        Hint = ''
      end
      object TBXItem36: TTBXItem
        Action = StudentCreate
      end
      object TBXItem37: TTBXItem
        Action = StudentEdit
      end
      object TBXItem38: TTBXItem
        Action = StudentDelete
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
        Caption = ''
        Hint = ''
      end
      object TBXItem32: TTBXItem
        Action = FileProperties
        DisplayMode = nbdmTextOnlyInMenus
        ImageIndex = 9
      end
      object TBXItem90: TTBXItem
        Action = Help
        ImageIndex = 11
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 351
    Width = 875
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 13631487
    ParentBackground = False
    TabOrder = 4
    object StaticText1: TMemo
      Left = 0
      Top = 0
      Width = 875
      Height = 41
      Align = alClient
      BevelInner = bvLowered
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
    end
  end
  object MainConnection: TZConnection
    Protocol = 'sqlite-3'
    Left = 400
    Top = 104
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items.HideUnused = False
        Items = <
          item
            Items.HideUnused = False
            Items = <
              item
                Items.HideUnused = False
                Items = <>
                Action = FileNew
                ImageIndex = 3
                ShortCut = 16462
              end
              item
                Items.HideUnused = False
                Items = <>
                Action = FileOpen
                ImageIndex = 4
                ShortCut = 16463
              end
              item
                Items.HideUnused = False
                Items = <>
                Action = FileClose
                ShortCut = 16471
              end
              item
                Items.HideUnused = False
                Items = <>
                Action = FileExit
                ShortCut = 32883
              end
              item
                Items.HideUnused = False
                Items = <>
                Action = FileProperties
              end>
            Caption = #1060#1072#1081#1083
          end
          item
            Items.HideUnused = False
            Items = <
              item
                Items.HideUnused = False
                Items = <>
                Action = attestat
              end
              item
                Items.HideUnused = False
                Items = <>
                Action = attestat_pril
              end>
            Caption = #1055#1077#1095#1072#1090#1100
          end
          item
            Items.HideUnused = False
            Items = <
              item
                Items.HideUnused = False
                Items = <>
                Action = StudentCreate
                ImageIndex = 0
                ShortCut = 45
              end
              item
                Items.HideUnused = False
                Items = <>
                Action = StudentEdit
                ImageIndex = 2
                ShortCut = 13
              end
              item
                Items.HideUnused = False
                Items = <>
                Action = StudentDelete
                ImageIndex = 1
                ShortCut = 16430
              end>
            Caption = #1057#1090#1091#1076#1077#1085#1090
          end
          item
            Items.HideUnused = False
            Items = <
              item
                Items.HideUnused = False
                Items = <>
                Action = SpecEdit
              end>
            Caption = #1064#1072#1073#1083#1086#1085' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
          end
          item
            Items.HideUnused = False
            Items = <
              item
                Items.HideUnused = False
                Items = <>
                Action = Settings
                ImageIndex = 6
              end>
            Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
          end>
      end
      item
        Items = <
          item
            Action = FileNew
            ImageIndex = 3
            ShortCut = 16462
          end
          item
            Action = FileOpen
            ImageIndex = 4
            ShortCut = 16463
          end
          item
            Caption = '-'
          end
          item
            Action = StudentCreate
            ImageIndex = 0
            ShortCut = 45
          end
          item
            Action = StudentEdit
            ImageIndex = 2
            ShortCut = 13
          end
          item
            Action = StudentDelete
            ImageIndex = 1
            ShortCut = 16430
          end
          item
            Caption = '-'
          end
          item
            Action = Settings
            ImageIndex = 6
          end
          item
            Action = Settings
            ImageIndex = 6
          end>
      end
      item
        Items = <
          item
            Items = <
              item
                Action = FileNew
                ImageIndex = 3
                ShortCut = 16462
              end
              item
                Action = FileOpen
                ImageIndex = 4
                ShortCut = 16463
              end
              item
                Action = FileClose
                ShortCut = 16471
              end
              item
                Action = FileExit
                ShortCut = 32883
              end
              item
                Action = FileProperties
              end>
            Caption = #1060#1072#1081#1083
          end>
      end>
    Images = TBImageList1
    Left = 584
    Top = 32
    StyleName = 'XP Style'
    object Action17: TAction
      Tag = 32
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090#1099
      Caption = #1040#1090#1090#1077#1089#1090#1072#1090' '#1086' '#1089#1088#1077#1076#1085#1077#1084' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080
      OnExecute = Action1Execute
    end
    object Action18: TAction
      Tag = 47
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090#1099
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086' '#1089#1088#1077#1076#1085#1077#1084' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080' ('#1086#1073#1088#1072#1090#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
      OnExecute = Action1Execute
    end
    object FileNew: TAction
      Category = #1060#1072#1081#1083
      Caption = #1053#1086#1074#1099#1081'...'
      ImageIndex = 3
      ShortCut = 16462
      OnExecute = FileNewExecute
    end
    object FileOpen: TAction
      Category = #1060#1072#1081#1083
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1078#1091#1088#1085#1072#1083
      ImageIndex = 4
      ShortCut = 16463
      OnExecute = FileOpenExecute
    end
    object FileClose: TAction
      Category = #1060#1072#1081#1083
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1078#1091#1088#1085#1072#1083
      Enabled = False
      ImageIndex = 7
      ShortCut = 16471
      OnExecute = FileCloseExecute
    end
    object FileExit: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1099#1093#1086#1076
      ShortCut = 32883
      OnExecute = FileExitExecute
    end
    object StudentCreate: TAction
      Category = #1057#1090#1091#1076#1077#1085#1090
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Enabled = False
      ImageIndex = 0
      ShortCut = 45
      OnExecute = StudentCreateExecute
    end
    object StudentEdit: TAction
      Category = #1057#1090#1091#1076#1077#1085#1090
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Enabled = False
      ImageIndex = 2
      ShortCut = 13
      OnExecute = StudentEditExecute
    end
    object StudentDelete: TAction
      Category = #1057#1090#1091#1076#1077#1085#1090
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Enabled = False
      ImageIndex = 1
      ShortCut = 16430
      OnExecute = StudentDeleteExecute
    end
    object SpecEdit: TAction
      Category = #1064#1072#1073#1083#1086#1085' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      OnExecute = SpecEditExecute
    end
    object FileProperties: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1078#1091#1088#1085#1072#1083#1072
      Enabled = False
      OnExecute = FilePropertiesExecute
    end
    object Settings: TAction
      Category = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 6
      OnExecute = SettingsExecute
    end
    object attestat: TAction
      Tag = 32
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1040#1090#1090#1077#1089#1090#1072#1090' '#1086' '#1089#1088#1077#1076#1085#1077#1084' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080
      Enabled = False
      OnExecute = attestatExecute
    end
    object attestat_pril: TAction
      Tag = 32
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086' '#1089#1088#1077#1076#1085#1077#1084' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080' ('#1086#1073#1088#1072#1090#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
      Enabled = False
      OnExecute = attestat_prilExecute
    end
    object FileSave: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1078#1091#1088#1085#1072#1083
      Enabled = False
      ImageIndex = 5
      ShortCut = 16467
      OnExecute = FileSaveExecute
    end
    object FileSaveAs: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1078#1091#1088#1085#1072#1083' '#1082#1072#1082'...'
      Enabled = False
      OnExecute = FileSaveAsExecute
    end
    object AboutAction: TAction
      Category = 'Help'
      Caption = #1054' '#1055#1088#1086#1075#1088#1072#1084#1084#1077
      OnExecute = AboutActionExecute
    end
    object Registry: TAction
      Category = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Caption = #1047#1072#1087#1088#1086#1089' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1102
      OnExecute = RegistryExecute
    end
    object Export2Dbf: TAction
      Category = #1060#1072#1081#1083
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1072#1081#1083' DBase III'
      Enabled = False
      OnExecute = Export2DbfExecute
    end
    object students_list: TAction
      Tag = 992
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1057#1087#1080#1089#1086#1082' '#1074#1099#1087#1091#1089#1082#1085#1080#1082#1086#1074
      Enabled = False
      OnExecute = students_listExecute
    end
    object CsvExport: TAction
      Category = #1060#1072#1081#1083
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1072#1081#1083' CSV ('#1060#1048#1054' '#1074' '#1086#1076#1085#1086#1084' '#1087#1086#1083#1077')'
      Enabled = False
      OnExecute = CsvExportExecute
    end
    object ImportCSV: TAction
      Category = #1060#1072#1081#1083
      Caption = #1048#1084#1087#1086#1088#1090' '#1080#1079' '#1092#1072#1081#1083#1072' CSV ('#1060#1048#1054' '#1074' '#1086#1076#1085#1086#1084' '#1087#1086#1083#1077')'
      Enabled = False
      OnExecute = ImportCSVExecute
    end
    object ExportCSVFio: TAction
      Category = #1060#1072#1081#1083
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1092#1072#1081#1083' CSV ('#1060#1048#1054' '#1074' '#1088#1072#1079#1085#1099#1093' '#1087#1086#1083#1103#1093')'
      Enabled = False
      OnExecute = ExportCSVFioExecute
    end
    object attestat_obr: TAction
      Tag = 32
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086' '#1089#1088#1077#1076#1085#1077#1084' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080' ('#1083#1080#1094#1077#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
      Enabled = False
      OnExecute = attestat_obrExecute
    end
    object Action13: TAction
      Tag = 48
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090#1099
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086' '#1089#1088#1077#1076#1085#1077#1084' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080' ('#1083#1080#1094#1077#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
      OnExecute = Action1Execute
    end
    object ImportCSVDF: TAction
      Category = #1060#1072#1081#1083
      Caption = #1048#1084#1087#1086#1088#1090' '#1080#1079' '#1092#1072#1081#1083#1072' CSV ('#1060#1048#1054' '#1074' '#1088#1072#1079#1085#1099#1093' '#1087#1086#1083#1103#1093')'
      OnExecute = ImportCSVDFExecute
    end
    object Action15: TAction
      Tag = 32
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1057#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086#1073' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1086#1088#1088#1077#1082#1094#1080#1086#1085#1085#1086#1075#1086' '#1082#1083#1072#1089#1089#1072
      Enabled = False
      OnExecute = Action15Execute
    end
    object Action19: TAction
      Tag = 32
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1057#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086#1073' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1086#1088#1088#1077#1082#1094#1080#1086#1085#1085#1086#1081' '#1096#1082#1086#1083#1099
      Enabled = False
      OnExecute = Action19Execute
    end
    object Action20: TAction
      Tag = 49
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090#1099
      Caption = #1057#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086#1073' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1086#1088#1088#1077#1082#1094#1080#1086#1085#1085#1086#1075#1086' '#1082#1083#1072#1089#1089#1072
      OnExecute = Action1Execute
    end
    object Action21: TAction
      Tag = 50
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090#1099
      Caption = #1057#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086#1073' '#1086#1082#1086#1085#1095#1072#1085#1080#1080' '#1082#1086#1088#1088#1077#1082#1094#1080#1086#1085#1085#1086#1081' '#1096#1082#1086#1083#1099
      OnExecute = Action1Execute
    end
    object Help: TAction
      Category = 'Help'
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnExecute = HelpExecute
    end
    object Action22: TAction
      Tag = 992
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1099#1081' '#1095#1077#1088#1085#1086#1074#1080#1082
      Enabled = False
      OnExecute = Action22Execute
    end
    object Action23: TAction
      Tag = 51
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090#1099
      Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1099#1081' '#1095#1077#1088#1085#1086#1074#1080#1082
      OnExecute = Action1Execute
    end
    object Action25: TAction
      Category = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1082#1083#1102#1095#1072
      OnExecute = Action25Execute
    end
    object ExportToIni: TAction
      Category = #1060#1072#1081#1083
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1048#1057' '#1069#1050#1059#1041
      OnExecute = ExportToIniExecute
    end
    object Action26: TAction
      Category = #1060#1072#1081#1083
      Caption = #1048#1084#1087#1086#1088#1090' '#1080#1079' '#1048#1057' '#1069#1050#1059#1041
      OnExecute = Action26Execute
    end
    object Action27: TAction
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1050#1085#1080#1075#1072' '#1076#1083#1103' '#1091#1095#1077#1090#1072' '#1080' '#1079#1072#1087#1080#1089#1080' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1072#1090#1090#1077#1089#1090#1072#1090#1086#1074
      Enabled = False
      OnExecute = Action27Execute
    end
    object Action28: TAction
      Tag = 52
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1077#1090#1099
      Caption = #1050#1085#1080#1075#1072' '#1076#1083#1103' '#1091#1095#1077#1090#1072' '#1080' '#1079#1072#1087#1080#1089#1080' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1072#1090#1090#1077#1089#1090#1072#1090#1086#1074
      OnExecute = Action1Execute
    end
    object Action29: TAction
      Category = #1057#1090#1091#1076#1077#1085#1090
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1096#1072#1073#1083#1086#1085' '#1082' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1084' '#1079#1072#1087#1080#1089#1103#1084
      Enabled = False
      OnExecute = Action29Execute
    end
    object KorrectorAction: TAction
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1050#1086#1088#1088#1077#1082#1090#1086#1088
      Enabled = False
      OnExecute = KorrectorActionExecute
    end
    object Action1: TAction
      Category = #1055#1077#1095#1072#1090#1100
      Caption = #1057#1087#1088#1072#1074#1082#1072' '#1086#1073' '#1086#1073#1091#1095#1077#1085#1080#1080' '#1074' '#1086#1073#1088#1072#1079#1086#1074#1072#1090#1077#1083#1100#1085#1086#1084' '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1080
      OnExecute = Action1Execute
    end
  end
  object SaveDialog1: TSaveDialog
    FileName = #1053#1086#1074#1099#1081'.db3'
    Filter = #1060#1072#1081#1083' '#1078#1091#1088#1085#1072#1083#1086#1074'|*.db3'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 16
    Top = 192
  end
  object ZQuery1: TZQuery
    Connection = MainConnection
    SQL.Strings = (
      'select * from students;')
    Params = <>
    Left = 128
    Top = 104
  end
  object OpenDialog1: TOpenDialog
    Filter = #1060#1072#1081#1083' '#1078#1091#1088#1085#1072#1083#1086#1074'|*.db3|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 48
    Top = 192
  end
  object ZQuery2: TZQuery
    Connection = MainConnection
    SQL.Strings = (
      
        'insert into students (name,last_name,family) values ('#39'ivan'#39','#39'iva' +
        'novich'#39','#39'ivanov'#39');')
    Params = <>
    Left = 80
    Top = 104
  end
  object frxReport1: TfrxReport
    Version = '4.7.109'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40426.981728981500000000
    ReportOptions.LastChange = 41084.610224155090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnBeginDoc = frxReport1BeginDoc
    OnEndDoc = frxReport1EndDoc
    OnGetValue = frxReport1GetValue
    Left = 96
    Top = 200
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'Student_list'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = #1059#1095#1072#1097#1080#1081#1089#1103
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 98.267780000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset2
        DataSetName = 'Student_list'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[<Line#>+<first_line_number>-1]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 136.063080000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '['#1056#164#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039'_'#1056#152#1056#1112#1056#181#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1057#8249#1056#8470'] ['#1056#152#1056#1112#1057#1039'_'#1056#152#1056#1112#1056#181#1056#1029#1056#1105#1057#8218#1056#181 +
              #1056#187#1057#1034#1056#1029#1057#8249#1056#8470'] ['#1056#1115#1057#8218#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109'_'#1056#152#1056#1112#1056#181#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1057#8249#1056#8470']')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[Student_list."'#1056#8221#1056#1105#1056#1111#1056#187#1056#1109#1056#1112'_'#1056#1029#1056#1109#1056#1112#1056#181#1057#1026'"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 321.260050000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '['#1056#1038#1056#1111#1056#1105#1057#1027#1056#1109#1056#1108'_'#1056#1169#1056#1105#1057#1027#1057#8224#1056#1105#1056#1111#1056#187#1056#1105#1056#1029']')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 759.685530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 823.937540000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 245.669450000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[Student_list."'#1056#8221#1056#176#1057#8218#1056#176'_'#1057#1026#1056#1109#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1057#1039'"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 888.189550000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 582.047620000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '[Student_list."'#1056#8221#1056#176#1057#8218#1056#176'_'#1056#1111#1057#1026#1056#1105#1056#1108#1056#176#1056#183#1056#176'_'#1056#1109#1057#8218#1057#8225#1056#1105#1057#1027#1056#187'"],[Student_l' +
              'ist."'#1056#1116#1056#1109#1056#1112#1056#181#1057#1026'_'#1056#1111#1057#1026#1056#1105#1056#1108#1056#176#1056#183#1056#176'_'#1056#1109#1057#8218#1057#8225#1056#1105#1057#1027#1056#187'_1"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 668.976810000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[Student_list."'#1056#8221#1056#176#1057#8218#1056#176'_'#1056#1030#1057#8249#1056#1169#1056#176#1057#8225#1056#1105'"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Bookman Old Style'
        Font.Style = []
        Height = 56.692913390000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo6: TfrxMemoView
          Width = 56.692950000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1032#1057#8225#1056#181#1057#8218#1056#1029#1057#8249#1056#8470' '#1056#1029#1056#1109#1056#1112#1056#181#1057#1026)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 136.063080000000000000
          Width = 109.606370000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115' '#1056#1030#1057#8249#1056#1111#1057#1107#1057#1027#1056#1108#1056#1029#1056#1105#1056#1108#1056#176)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              #1056#1113#1056#1109#1056#1169', '#1057#1027#1056#181#1057#1026#1056#1105#1057#1039' '#1056#1105' '#1056#1111#1056#1109#1057#1026#1057#1039#1056#1169#1056#1108#1056#1109#1056#1030#1057#8249#1056#8470' '#1056#1029#1056#1109#1056#1112#1056#181#1057#1026' '#1056#176#1057#8218#1057#8218#1056#181#1057#1027 +
              #1057#8218#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 321.260050000000000000
          Width = 260.787570000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039' '#1057#1107#1057#8225#1056#181#1056#177#1056#1029#1057#8249#1057#8230' '#1056#1111#1057#1026#1056#181#1056#1169#1056#1112#1056#181#1057#8218#1056#1109#1056#1030' '#1056#1105' '#1056#1105 +
              #1057#8218#1056#1109#1056#1110#1056#1109#1056#1030#1057#8249#1056#181' '#1056#1109#1057#8224#1056#181#1056#1029#1056#1108#1056#1105)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 759.685530000000000000
          Width = 64.252010000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034' '#1056#1111#1056#1109#1056#187#1057#1107#1057#8225#1056#176#1057#8218#1056#181#1056#187#1057#1039' '#1056#176#1057#8218#1057#8218#1056#181#1057#1027#1057#8218#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 823.937540000000000000
          Width = 64.252010000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034' '#1056#1111#1056#1109#1056#187#1057#1107#1057#8225#1056#176#1057#8218#1056#181#1056#187#1057#1039' '#1056#1112#1056#181#1056#1169#1056#176#1056#187#1056#1105)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 245.669450000000000000
          Width = 75.590600000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1057#1026#1056#1109#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1030#1057#8249#1056#1111#1057#1107#1057#1027#1056#1108#1056#1029#1056#1105#1056#1108#1056#176)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 888.189550000000000000
          Width = 158.740260000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1038#1056#1030#1056#181#1056#1169#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1109' '#1056#1111#1056#1109#1056#187#1057#1107#1057#8225#1056#181#1056#1029#1056#1105#1056#1105' '#1056#1169#1057#1107#1056#177#1056#187#1056#1105#1056#1108#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 582.047620000000000000
          Width = 86.929190000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              #1056#8221#1056#176#1057#8218#1056#176' '#1056#1105' '#1056#1029#1056#1109#1056#1112#1056#181#1057#1026' '#1056#1111#1057#1026#1056#1105#1056#1108#1056#176#1056#183#1056#176' '#1056#1109' '#1056#1030#1057#8249#1056#1169#1056#176#1057#8225#1056#181' '#1056#176#1057#8218#1057#8218#1056#181#1057#1027 +
              #1057#8218#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 668.976810000000000000
          Width = 90.708720000000000000
          Height = 56.692913390000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Bookman Old Style'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1030#1057#8249#1056#1169#1056#176#1057#8225#1056#1105' '#1056#176#1057#8218#1057#8218#1056#181#1057#1027#1057#8218#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
      end
    end
  end
  object Student: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'Student'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-id=id'
      'FIO='#1060#1048#1054
      'dat_FIO='#1060#1048#1054'_'#1044#1072#1090#1077#1083#1100#1085#1099#1081
      'birth_date='#1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103
      'in_test='#1042#1093#1086#1076#1085#1099#1077'_'#1080#1089#1087#1099#1090#1072#1085#1080#1103
      'diplom_sn='#1044#1080#1087#1083#1086#1084'_'#1085#1086#1084#1077#1088
      'diplom_otl='#1044#1080#1087#1083#1086#1084'_'#1089'_'#1086#1090#1083#1080#1095#1080#1077#1084
      'diplom_regnum='#1044#1080#1087#1083#1086#1084'_'#1088#1077#1075'_'#1085#1086#1084#1077#1088
      'diplom_dublikat='#1044#1080#1087#1083#1086#1084'_'#1076#1091#1073#1083#1080#1082#1072#1090
      'diplom_work='#1042#1099#1087#1091#1089#1082#1085#1072#1103'_'#1088#1072#1073#1086#1090#1072
      'diplom_mark='#1042#1099#1087#1091#1089#1082#1085#1072#1103'_'#1088#1072#1073#1086#1090#1072'_'#1086#1094#1077#1085#1082#1072
      'gak='#1043#1040#1050
      'gak_mark='#1043#1040#1050'_'#1054#1094#1077#1085#1082#1072
      'dok_pred='#1044#1086#1082#1091#1084#1077#1085#1090'_'#1087#1088#1077#1076'_'#1086#1073#1088
      'dok_pred_num='#1053#1086#1084#1077#1088'_'#1076#1086#1082#1091#1084#1077#1085#1090#1072'_'#1086'_'#1087#1088#1077#1076'_'#1086#1073#1088
      'school='#1044#1086#1082#1091#1084#1077#1085#1090'_'#1087#1088#1077#1076'_'#1086#1073#1088'_'#1074#1099#1076#1072#1085
      'dok_pred_year='#1044#1086#1082#1091#1084#1077#1085#1090'_'#1087#1088#1077#1076'_'#1086#1073#1088'_'#1075#1086#1076
      'uz_postupil='#1087#1086#1089#1090#1091#1087#1080#1083'_'#1074
      'uz_zakonchil='#1079#1072#1082#1086#1085#1095#1080#1083'_'#1074
      'postupil_god='#1087#1086#1089#1090#1091#1087#1080#1083'_'#1075#1086#1076
      'zakonchil_god='#1079#1072#1082#1086#1085#1095#1080#1083'_'#1075#1086#1076
      'srok_obuch='#1089#1088#1086#1082'_'#1086#1073#1091#1095
      'kvalify='#1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
      'specialnost='#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      'specialize='#1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
      'prikaz_date='#1044#1072#1090#1072'_'#1087#1088#1080#1082#1072#1079#1072'_'#1086#1090#1095#1080#1089#1083
      'prikaz_num_text='#1053#1086#1084#1077#1088'_'#1087#1088#1080#1082#1072#1079#1072'_'#1086#1090#1095#1080#1089#1083
      'prikaz_num='#1053#1086#1084#1077#1088'_'#1087#1088#1080#1082#1072#1079#1072'_'#1086#1090#1095#1080#1089#1083'_1'
      'resh_date='#1044#1072#1090#1072'_'#1088#1077#1096#1077#1085#1080#1103
      'vid_date='#1044#1072#1090#1072'_'#1074#1099#1076#1072#1095#1080)
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 344
    Top = 192
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099
    OnCheckEOF = frxUserDataSet1CheckEOF
    OnFirst = frxUserDataSet1First
    OnNext = frxUserDataSet1Next
    OnPrior = frxUserDataSet1Prior
    Fields.Strings = (
      #1053#1072#1079#1074#1072#1085#1080#1077'_'#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
      #1063#1072#1089#1086#1074'_'#1074#1089#1077#1075#1086
      #1063#1072#1089#1086#1074'_'#1072#1091#1076#1080#1090#1086#1088#1085#1099#1093
      #1054#1094#1077#1085#1082#1072)
    OnGetValue = frxUserDataSet1GetValue
    Left = 376
    Top = 192
  end
  object frxUserDataSet4: TfrxUserDataSet
    UserName = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
    OnFirst = frxUserDataSet4First
    OnNext = frxUserDataSet4Next
    OnPrior = frxUserDataSet4Prior
    Fields.Strings = (
      #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      #1042#1089#1077#1075#1086)
    OnGetValue = frxUserDataSet4GetValue
    Left = 504
    Top = 192
  end
  object TBXSwitcher1: TTBXSwitcher
    Theme = 'OfficeXP'
    Left = 384
    Top = 128
  end
  object TBImageList1: TTBImageList
    Height = 32
    Width = 32
    DisabledImages = TBImageList2
    HotImages = TBXImageList1
    Left = 304
    Top = 192
    Bitmap = {
      494C0101070009000C0020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00F3F3F300F0F0F000FAFAFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FDFCFC0000000000000000000000
      0000EDEDED000000000000000000000000000000000000000000FEFEFE000000
      00000000000000000000FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00EDEDED004E99F3004E99F300E3E3E300FAFAFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A18168007A4E2C007A4E2C007A4E
      2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E
      2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E
      2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E2C007A4E
      2C007A4E2C007A4E2C00A7907E00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00BEB8B5009689
      8300BBB8B700EDEDEC00FDFDFD000000000000000000FEFEFE0000000000F4F2
      F20094868000ABA5A300E1E1E100F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00EFEFEF004C94EB004E99F3004E99F3004E99F300E3E3E300FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A4E2C00E9E4C900E9E4C900E9E4
      C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4
      C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4
      C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4C900E9E4
      C900E9E4C900E9E4C9007A4E2C00000000000000000000000000000000000000
      0000000000000000000000000000FAFAFA00BCB5B100A0928B00AF9D9300BDAA
      9E0097877F00C0BDBC00EBEBEB00FDFDFD000000000000000000F7F7F7008977
      6E00886C5B007D6252007F6C6300ABA6A400D8D8D800F0F0F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00EFEFEF004E99F300F5F5F5004E99F300E4F7FD0067D3F9004E99F300E3E3
      E300FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A4E2C00E9E4C900905C1B00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00A06E3000E9E4C9007A4E2C00000000000000000000000000000000000000
      0000FEFEFE0000000000F0EEED00AB9D9700BFB1A900D4C5BB00D7C6BD00D5C4
      B900C5B2A60094847B00C2BEBC00EDEDED00FEFEFE00EDECEB008D7C7400997F
      6F00B69B8800AF917D009B7C6900755747008D807900DEDEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00EFEF
      EF004E99F3000000000073C3F5004E99F300DEF3FD005ED3FD0078D7F6004E99
      F300E3E3E300FAFAFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A4E2C00E9E4C9009C6F3400CE9C
      6E00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFF
      FA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFF
      FA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00CE9C
      6E00AC7E4300E9E4C9007A4E2C00000000000000000000000000000000000000
      0000FEFEFE0000000000EBE9E800BEB2AC00E5DAD200DBD0C600D6C8BE00D2C3
      B800D3C2B700C7B5A90096877F00ACA3A000AFA7A4008D7F7700A48C7E00BDA4
      9200B2988600AE928000B1958200A98A7600826E6200DDDDDD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00EFEFEF004E99
      F3000000000078CCFF0042B6F4004E99F300DDF2FD0051CAFD005ED3FD0078D7
      F6004E99F300E3E3E300FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000007A4E2C00E9E4C9009D713600CE9C
      6E00FFFFFA00FEECD900FDE9D400FFE8D200FEE7D000FFE6CD00FFE4CB00FFE3
      C800FFE2C600FFE1C200FFDFC000FFDEBD00FFDDBB00FFDCB800FFDAB600FFD9
      B300FFD8B100FFD8B100FFD9B200FFD9B200FFD9B300FDD3A800FFFFFA00CE9C
      6E00AB804600E9E4C9007A4E2C00000000000000000000000000000000000000
      00000000000000000000FFFFFF00C4BAB500DFD5CF00E0D5CD00DBCFC700D8CB
      C100D3C4BA00D4C3B800C8B6AB00AA968C00A6918500B09B8E00C2AB9C00BAA2
      9200B79F8D00B3998800B0968400A88B78008E7C7200DEDEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00EFEFEF004E99F3000000
      000078CCFF0045BDFE0042B6F4004E99F300DAF1FD004EC8FE0051CAFD005ED3
      FD0078D7F6004E99F300E3E3E300FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000007A4E2C00E9E4C9009F763B00CE9C
      6E00FFFFFA00FFEEDD00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00FDD3A800FFFFFA00CE9C
      6E00AE834A00E9E4C9007A4E2C00000000000000000000000000FEFEFE000000
      00000000000000000000FFFFFF00C6BDB900E1D9D300E6DDD600E0D5CE00DDD0
      C900D9CCC200D5C7BC00D3C2B800DBCCC300DAC9BF00CAB5A700C3AEA000BFA9
      9A00BCA59500B89F8F00B69D8C00AD9281008F7E7300DDDDDD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00EFEFEF004E99F3000000000078CC
      FF0045BDFE0045BDFE0042B6F4004E99F300DAF1FD0048C5FD004EC8FE0051CA
      FD005ED3FD0078D7F6004E99F300E3E3E300FAFAFA0000000000000000000000
      0000000000000000000000000000000000007A4E2C00E9E4C900A27A4000CE9C
      6E00FFFFFA00FDEEDE00FDEEDE00FDEEDE00FDEEDE00FDEEDE00FDEEDE00FDEE
      DE00FDEEDE00FDEEDE00FDEEDE00FDEEDE00FDEEDE00FFE0BB00FFE0BB00FFE0
      BB00FFE0BB00FFE0BB00FFE0BB00FFE0BB00FFE0BB00FFE0BB00FFFFFA00CE9C
      6E00B0874E00E9E4C9007A4E2C00000000000000000000000000000000000000
      0000FEFEFE00FEFEFD0000000000CBC4C100E1D9D400EBE4DE00E4DBD500E1D6
      D000DDD1CA00DDD1C600C7B8AD009B8E8700C9BFB900CCB9AC00C8B3A700C3AF
      A200BFAB9B00BCA59600BBA39300B198870095837A00DEDEDE0000000000FEFE
      FE00FEFEFE0000000000FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00EFEFEF004E99F3000000000078CCFF0045BD
      FE0045BDFE0045BDFE0042B6F4004E99F300DAF1FD0048C5FD0048C5FD004EC8
      FE0051CAFD005ED3FD0078D7F6004E99F300E3E3E300FAFAFA00000000000000
      0000000000000000000000000000000000007A4E2C00E9E4C900A37F4700CE9C
      6E00FFFFFA00FEF1E400FFF6EA00FFF7EA00FFF5E600FFF5E500FFF1E000FFF0
      DD00FFF0DC00FFEED700FFEBD400FFEBD200FFEBD100FFE8CB00FFE6C800FFE6
      C600FFE5C500FFE2BF00FFE0BD00FFE0BB00FFE5C500FFE5C500FFFFFA00CE9C
      6E00B18A5300E9E4C9007A4E2C000000000000000000F7F7F700E6E5E500D8D8
      D800F1F1F10000000000E9E7E600C7BEBA00EBE6E300EDE9E400E9E1DC00E5DC
      D700E1D8D100DED4CC00D9CCC30098847900B5A39800D5C4B900CCB9AE00C9B5
      A800C5B1A300C1AB9D00BFA99A00B79F8F0094847B00D6D6D600FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00EFEFEF004E99F3000000000078CCFF0045BDFE0045BD
      FE0045BDFE0045BDFE0042B6F4004E99F300DAF1FD0048C5FD0048C5FD0048C5
      FD004EC8FE0051CAFD005ED3FD0078D7F6004E99F300E3E3E300FAFAFA000000
      0000000000000000000000000000000000007A4E2C00E9E4C900A6844D00CE9C
      6E00FFFFFA00FEF3E700CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00FFEACC00FFFFFA00CE9C
      6E00B48E5700E9E4C9007A4E2C000000000000000000E8E4E300D4CECA00CEC8
      C500C1BCB900D4CECC00BEB7B300EEEAE800F7F5F300F0ECE900EDE8E400E9E2
      DE00E7DFD900E3D9D300E0D5CF00E3D7CF00DCCFC400D2C3B700D0BEB300CEBC
      B000CAB7AA00C6B2A500C1AC9E00C2AB9C0095807300A7A19D00FFFFFF00E3E3
      E300E3E3E300E4E4E400E1E1E100F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00EFEFEF004E99F3000000000078CCFF0045BDFE0045BDFE0045BD
      FE0045BDFE0045BDFE0042B6F4004E99F300DAF1FD0048C5FD0048C5FD0048C5
      FD0048C5FD004EC8FE0051CAFD005ED3FD0078D7F6004E99F300E3E3E300FAFA
      FA00000000000000000000000000000000007A4E2C00E9E4C900A8875100CE9C
      6E00FFFFFA00FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8
      F100FEF8F100FFF7E800FFF7E800FFF7E800FFF4E000FFF4E000FFF4E000FFEF
      D600FFEFD600FFEFD600FFEFD600FFEACC00FFEACC00FFEACC00FFFFFA00CE9C
      6E00B5915B00E9E4C9007A4E2C0000000000FDFDFD00E1DCD900EFE9E400F8F3
      EE00F5F1ED00E8E4E100F3F1EF00FFFEFE00F9F7F600F5F3F100F1EDEA00F0EB
      E700E7E1DC00E2DCD800E9E3E100EEEBE800F1ECEA00ECE6E200DBCFC700D0BE
      B300CEBDB200CBB8AB00C7B2A600C5B0A200BDA6980089756A008D7C73008675
      6C00847269007C685F00A19A9600FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00EFEFEF004E99F3000000000078CCFF0045BDFE0045BDFE0045BDFE0045BD
      FE0045BDFE0045BDFE0042B6F4004E99F300DAF1FD0048C5FD0048C5FD0048C5
      FD0048C5FD0048C5FD004EC8FE0051CAFD005ED3FD0078D7F6004E99F300E3E3
      E300FAFAFA000000000000000000000000007A4E2C00E9E4C900AB8C5700CE9C
      6E00FFFFFA00FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8
      F100FEF8F100FEF8F100FFF7E800FFF6E600FFF5E200FFF4E000FFF1DD00FFF0
      DA00FFEFD600FFEDD100FFEBCF00FFEACC00FFEACC00FFEACC00FFFFFA00CE9C
      6E00B7956000E9E4C9007A4E2C0000000000E4E4E400E4DDD800F6EDE600F7EF
      EA00F8F4EF00FCF8F500FCFAF700FBFBF900FDFCFC00FAF9F700FAF7F500E5E0
      DE00DBD5D300F1F0EF00F9F9F900FCFBFB00FDFDFD00FFFFFF00F9F8F800E3DA
      D300D1C1B500D0BEB300CCB8AD00C8B4A800C5B0A300C0AB9C00B69F9100B49C
      8C00B49B8A00A08575008A7C7600F2F2F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00EFEF
      EF004E99F3000000000078CCFF0045BDFE0045BDFE0045BDFE0045BDFE0045BD
      FE0045BDFE0045BDFE0042B6F4004E99F300DAF1FD0067D0FD0054CAFD0048C5
      FD0048C5FD0048C5FD0048C5FD004EC8FE0051CAFD005ED3FD0078D7F6004E99
      F300E3E3E300FAFAFA0000000000000000007A4E2C00E9E4C900AD905D00CE9C
      6E00FFFFFA00FFFBF700CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00FDE9D700FFFFFA00CE9C
      6E00B9986400E9E4C9007A4E2C0000000000DEDBDA00E6DED700F4E9E100F3EA
      E300F5EEE800F7F1EC00F9F4F000FAF7F400FBF9F800FFFFFF00EAE7E400C0B7
      B300F0EEED000000000000000000000000000000000000000000FFFFFF00FDFC
      FC00E3D9D100D1C1B600D0BFB500CDBAAF00C9B5A900C6B2A400C2AD9F00BEA8
      9900BEA79700B39A89008A796F00D2D3D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00EFEFEF004E99
      F300000000007FCFFF0064C9FE0076CFFE0083D4FE008CD7FE0092D9FE0093D9
      FE008ED8FE0085D4FE0075C9F4004E99F300DFF3FD00A2E2FE0091DDFE0073D3
      FD005ACCFD0048C5FD0048C5FD0048C5FD004EC8FE0051CAFD005ED3FD0078D7
      F6004E99F300E3E3E300FAFAFA00000000007A4E2C00E9E4C900AF956200CE9C
      6E00FFFFFA00FEFCF900FFFDFA00FFFDFA00FFFDFA00FDF7F200FDF7F200FDF7
      F200FDF3EA00FDF3EA00FDF3EA00FDF1E600FDF1E600FDF1E600FDECDC00FDEC
      DC00FDECDC00FDE9D700FDE9D700FDE9D700FDE9D700FDE9D700FFFFFA00CE9C
      6E00BB9B6900E9E4C9007A4E2C0000000000E5DDD700ECE0D500F1E5DB00F2E7
      DE00F4EAE300F5EEE700F7F0EB00F7F3EE00F8F6F300FCF9F800BAB0AB00E9E6
      E50000000000FCFCFC00FEFEFE00FEFEFE00FEFEFE00FEFEFE0000000000FFFF
      FF00F4F1EE00D9CDC300D4C5BB00D1C0B500CDBBB000CAB7AB00C6B1A500C2AD
      9F00BDA79900BFA696008A756900BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F5004E99F3000000
      0000A5DDFF00A0DEFE00ACE2FF00A9E1FF00A5E0FF00A2DFFF009EDDFE0099DC
      FE0095DAFE0090D8FE0086CFF4004E99F300E5F5FD00AEE6FE00A5E4FE009AE0
      FE008DDBFE006AD1FD0051C9FD0048C5FD0048C5FD004EC8FE0051CAFD005ED3
      FD0078D7F6004E99F300EDEDED00000000007A4E2C00E9E4C900B1996700CE9C
      6E00FFFFFA00FFFDFA00FFFDFA00FFFDFA00FFFDFA00FDF7F200FDF7F200FDF7
      F200FDF3EA00FDF3EA00FDF3EA00FDF1E600FDF1E600FDF1E600FDECDC00FDEC
      DC00FDECDC00FDE9D700FDE9D700FDE9D700FDE9D700FDE9D700FFFFFA00CE9C
      6E00BC9F6C00E9E4C9007A4E2C0000000000E7E2DD00E8DDD400EEE1D500F0E4
      D900F1E7DE00F3E9E100F6EEE800FAF2ED00FBF7F300E0DAD500AB9F9A000000
      0000FEFEFE000000000000000000000000000000000000000000FEFEFE000000
      0000F9F9F800E4DBD600D8CBC100DACBC200D3C2B800CFBDB100CBB7AC00C7B3
      A600C1AD9F00CCB6A60099837600A19B98000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F2004CB2F8000000
      0000C9EBFF00B2E4FF00AFE3FF00ACE2FF00A9E1FF00A5E0FF00A2DFFF009EDD
      FE0099DCFE0095DAFE008AD0F4004E99F300E6F5FD00B3E8FE00ACE6FE00A5E4
      FE009DE1FE0091DDFE0077D5FD0057CBFD0048C5FD0048C5FD004EC8FE0051CA
      FD005ED3FD004E99F300EBEBEB00000000007A4E2C00E9E4C900B6A17200CE9C
      6E00FFFFFA00FFFEFE00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00FFECD700FFFFFA00CE9C
      6E00BFA27000E9E4C9007A4E2C0000000000FAFAFA00F1F0EF00E6DDD700ECDF
      D400F0E2D700F3E8DE00EADFD700DAD1CD00FEF9F700C1B5AF00B1A9A4000000
      0000FEFDFD000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00F8F7F700E7E0DC00D9CEC400CAC0BB00DBD1CB00D3C3B800CFBDB200CFBC
      B100CBB8AB00AE9A8E00917F7600D9D5D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F5004CB2F8000000
      0000C9EBFF00B4E5FF00B2E4FF00AFE3FF00ACE2FF00A9E1FF00A5E0FF00A2DF
      FF009EDDFE0099DCFE008FD1F4004E99F300E7F5FD00B8E9FE00B1E7FE00ABE5
      FE00A3E3FE009BE0FE0092DEFE007CD6FE0058CBFD0048C5FD0048C5FD004EC8
      FE004CB6F9004E99F300F2F2F200000000007A4E2C00E9E4C900D5CBAF00CE9C
      6E00FFFFFA00FEFDFC00FCFBF800FDFAF900FDF9F700FDF8F500FDF7F200FDF6
      F000FDF4ED00FDF3EA00FDF2E800FDF1E600FDEFE300FDEEE100FDEDDE00FDEC
      DC00FDEAD800FDE9D700FDE8D400FDE7D200FDE6CF00FFECD700FFFFFA00CE9C
      6E00C2AA7900E9E4C9007A4E2C00000000000000000000000000F7F8F900E8E5
      E300E8DCD400F4E7DC00DDCFC500806D6400DED5D000B9ACA400A89F9B000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000F4F2F200E5DEDB00DED4CD008E7D7400B7AAA300DCD0C500D6C6BC00C9B7
      AE00A0908500B5ABA600EAEAEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00EFEFEF004CB2
      F80000000000C9EBFF00B4E5FF00B2E4FF00AFE3FF00ACE2FF00A9E1FF00A5E0
      FF00A2DFFF009EDDFE0094D5F600539FFF00E8F6FD00BCEBFE00B6E9FE00B0E7
      FE00A9E5FE00A1E2FE0099E0FE0091DDFE007AD6FD0055CAFD0048C5FD004CB6
      F9008DD9F8004E99F300F5F5F500000000007A4E2C00E9E4C900D6CDB100CE9C
      6E00FFFFFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FFFFFC00FFFEF900FFFDF700FFFCF500FFFAF200FFF9
      F000FFF8EE00FFF7EB00FFF5E900FFF4E600FFF4E500FFF4E500FFFFFA00CE9C
      6E00C4AD7D00E9E4C9007A4E2C0000000000FEFEFE00FEFEFE0000000000FEFE
      FE00E7E1DF00ECDDD200EFE2D700D2C3B900EDE3D900C0B2A9008F817B000000
      0000FEFEFE000000000000000000000000000000000000000000FEFEFE000000
      0000EBE9E800E2DBD800EBE3DE00D5C9C300D4C7C000E2D7CF00C7B8AF00A398
      9200E0DDDB000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00EFEF
      EF004CB2F80000000000C9EBFF00B4E5FF00B2E4FF00AFE3FF00ACE2FF00C1E8
      FF00A5E0FF00A2DFFF009DDBFC0091D1F100539FFF00E8F6FD00BAEAFE00B5E8
      FE00AFE6FE00A7E4FE009FE2FE0097DFFE008FDCFE0072D4FD004FB7F9008DD9
      F80092DFFD004E99F300F5F5F500000000007A4E2C00E9E4C900D7CFB600CE9C
      6E00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFF
      FA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFF
      FA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00FFFFFA00CE9C
      6E00C7B28600E9E4C9007A4E2C00000000000000000000000000FEFEFE000000
      0000F0EEEC00E9DBD100EDDDCF00F3E7DC00F6EAE000E2D5CB006E5B5200E6E7
      E70000000000FDFDFD00000000000000000000000000FEFEFE00FEFEFE000000
      0000D4CDCA00E8E3E000ECE6E100EBE3DE00E6DDD700E5DBD400B4A7A100C4C2
      C10000000000FDFDFD00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00EFEFEF004CB2F80000000000C9EBFF00B4E5FF00B2E4FF00C5E9FF000000
      0000C1E8FF00A5E0FF00A2DFFF009DDBFC0091D1F100539FFF00E8F6FD00B9EA
      FE00B3E8FE00ADE6FE00A6E4FE009DE1FE0095DEFE0085CEFB009ADFF90092DF
      FD0093E0FE004E99F300F5F5F500000000007A4E2C00E9E4C900D8CFB300CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C6E00CE9C
      6E00C9BC9200E9E4C9007A4E2C00000000000000000000000000FEFEFE000000
      0000F8F8F800E9DDD300EBD9C900EADBCE00EBDDD100F8EDE30099867A007363
      5D00F7F5F40000000000FEFEFE00FDFDFD00FDFDFD00FEFEFE0000000000D4CF
      CC00D0C9C500F7F4F200EFEAE700EBE5E000E8E0DC00E7DFD900B7AAA400BDBA
      B900F4F2F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00EFEFEF004CB2F80000000000C9EBFF00C9EBFF00000000004CB2
      F80000000000C1E8FF00A5E0FF00A2DFFF009DDBFC0091D1F100539FFF00E8F6
      FD00B8EAFE00B2E8FE00ABE5FE00A4E3FE0092D3FB00B5E7FB00ACE6FD0096E1
      FE0093E0FE004E99F300F5F5F500000000007A4E2C00E9E4C900D9CFB400DBD4
      B800DDD7BE00DDD7BD00E3DDC200E3DDC200E2DCC100E2DCC000DFDABC00DAD2
      B100D4CBA600CFC59D00CCC19600CBBF9300CBBF9300CBBF9300CBBE9300CABE
      9200CABE9200C9BD9100CABE9100CBC09300CBBF9500C7BC9400C7BD9400C5BA
      9100CDC09700E9E4C9007A4E2C00000000000000000000000000FEFEFE00FEFE
      FE00F1EFED00E7D7C900E8D5C400EAD9CA00EADBCD00F0E1D500E9DACF00735C
      500070635F00DFDFDF00000000000000000000000000FEFEFD00CAC3BF00BAAF
      AA00F6F4F300F8F7F600F4F1EE00F0ECE900EDE6E300ECE6E100DCD3CD00ACA1
      9C00D3D1D000F0F0F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00EFEFEF004CB2F80000000000000000004CB2F800E5E5
      E5004CB2F80000000000C1E8FF00A5E0FF00A2DFFF009DDBFC0091D1F100539F
      FF00E8F6FD00B7E9FE00B0E7FE009FD9FC00BDEAFB00BCEBFE00B8EBFF009EE4
      FE0093E0FE004E99F300F5F5F500000000007A4E2C00E9E4C900DAD2B700DBD4
      B900DBD2B700DCD4B90078787800787878007878780078787800787878007878
      7800787878007878780078787800787878007878780078787800787878007878
      78007878780078787800787878007878780078787800CDBF9300C7BA9100C7BB
      9100CDC49B00E9E4C9007A4E2C0000000000FFFFFF00FEFEFE0000000000F8F8
      F800E7D8CB00E4CDB900E7D3C000E8D5C400EAD8C900EADACC00F1E3D600E8DA
      CE008E786C00634E420090827B00A39A9600A4999400998B8400B7ABA500F5F1
      EF00FEFEFD00FBFBFA00F9F7F600F5F2F000F2EDEB00EDE7E400EFE9E500D6CD
      C700A9A09C00D4D4D400FBFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00EFEFEF004CB2F8004CB2F800EFEFEF00F9F9
      F900EFEFEF004CB2F80000000000C1E8FF00A5E0FF00A2DFFF009DDBFC0091D1
      F100539FFF00E8F6FD00AADDFC00C5ECFB00C3EDFE00C0EDFF00BAEBFF00A6E6
      FF0093E0FE004E99F300F5F5F500000000007A4E2C00E9E4C900DBD4BA00DDD6
      BC00DDD6BC00DDD6BB00787878009A989900A5A4A300A7A7A600ABAAAA00AEAD
      AD00B2B1B100B6B6B600BABABB00BEBEC000C2C3C400C8C8CA00C8C8CA00C8C8
      CA00C8C8CA00C8C8CA00C8C8CA00D0D1D70078787800D5CAA100CAC19C00CAC0
      9900D0C9A100E9E4C9007A4E2C0000000000FEFEFE0000000000FCFCFA00EADC
      D100E0C6AF00E3CCB700E5CFBB00E6D1BE00E8D4C300E9D8C800EAD9CB00EFE0
      D300F7EADF00D7C8BD00B09F9500AA9A8F00BDAFA600E0D7D100FCF7F200FBF7
      F400FAF7F500FCFBFA00FDFCFC00FAF8F800F7F3F100F3EFEC00EEEAE600EFEA
      E600CFC5BF00B0A9A500FCFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00F5F5F500F5F5F500FCFCFC000000
      0000FCFCFC00EFEFEF004CB2F80000000000C1E8FF00A5E0FF00A2DFFF009DDB
      FC0091D1F100539FFF00FBFBFB00CAF0FF00C6F0FF00C3EEFF00BBECFF00ABE7
      FF0093E0FE004E99F300F5F5F500000000007A4E2C00E9E4C900DDD7BD00DED9
      BE00DED8BE00DED9BD0078787800A2A09F00ADABA800AFAEAB00B3B2AF00B6B5
      B300BAB9B600BEBDBA00C1C0BE00C5C4C200C9C7C600D1D0CE00A5A3A1006260
      5E004E4A4B00242225008A898A00DCDCDE0078787800E6E0C300DAD5BA00DBD4
      B800E1DEC300E9E4C9007A4E2C0000000000FEFEFE00FDFCFB00F4EEE900DFC3
      AC00DFC3AD00E1C8B100E3CBB600E4CEB900E6D1BE00E7D4C200E9D7C800E9D9
      CA00EBDBCE00F3E5D900F8EDE200F7EFE800FDF7F100F7EEE700F5EDE800F6F0
      EC00F9F4F000F9F7F400FCFAF800FCFCFB00FAFAF900F7F5F300F2EFEC00F5F1
      EE00DAD3CE00AEA6A200FEFEFE00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00EFEFEF004CB2F80000000000C1E8FF00A5E0FF00A2DF
      FF004D98F100E3E3E300539FFF00FEFEFE00CAF0FF00C2EEFF00B8EBFF00ACE8
      FF0093E0FE004E99F300F5F5F500000000007A4E2C00E9E4C900DEDAC000DFDB
      C100DEDAC100DFDBC00078787800A19F9E00ACAAA800ADADAB00B2B1AF00B6B3
      B300B9B8B600BCBCBA00C0BFBE00C4C3C200C8C7C600CFCECD00A7A5A4006967
      660056535400302F3200908F9000D9DADB0078787800E9E3C800DDD9C000DFDA
      C000E7E5CD00E9E4C9007A4E2C0000000000FEFEFE00FEFEFE00FDFCFB00EBDB
      CE00DDC0A800DFC5AD00E1C7B100E2CAB300E3CBB500E5CEBA00E7D1C000E8D6
      C600E9D8CA00EBDBCE00EBDCD0008F7E7400B6ABA500F7EDE400F2E9E200F4ED
      E700F7F1EB00F8F4F000FCF8F600FEFCF900FDFDFC00FBFAF900FBF9F700EEEA
      E700B4ACA700F9F8F70000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00EFEFEF004CB2F80000000000000000004E99
      F300EFEFEF00FAFAFA00F2F2F200539FFF00FEFEFE00BEEDFF00B4EAFF00AAE7
      FF0093E0FE004E99F300F5F5F500000000007A4E2C00E9E4C900DFDCC300E0DD
      C400DFDCC400E0DDC30078787800A19F9E00ACAAA800AEADAB00B2B1AF00B6B4
      B300B9B8B700BDBCBB00C0BFBE00C4C3C200C8C7C600D0CFCE00A7A5A4006866
      6500555253002E2D30008E8E8F00DADADC0078787800E9E6CA00DDDAC200DFDB
      C200E7E6CE00E9E4C9007A4E2C0000000000FFFFFF000000000000000000FBFB
      FA00E6D2C000DDBFA800DEC0A900E0C6AF00E7D6C600ECE1D900E8D8CA00E6D1
      BE00E7D5C400E9D7C900EFDED100C3B1A300CCBCB000F4E7DE00F0E6DD00F4EB
      E300F4ECE500E8E1DC00DBD4D000EDE8E500FBF8F600FFFFFF00FEFEFD00C9C3
      BF00EAE8E70000000000FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC00EFEFEF004CB2F8004E99F300EFEF
      EF00FCFCFC0000000000FDFDFD00F2F2F200539FFF00FEFEFE00ADE8FF00A3E5
      FE0093E0FE004E99F300F5F5F500000000007A4E2C00E9E4C900E0DDC600E3E0
      C800E0DEC700E1DFC60078787800A19F9E00ACA9A700AFADAB00B2B1AF00B6B4
      B300B9B8B600BDBCBA00BFBEBE00C4C3C200C8C7C600D0CFCD00A7A5A4006866
      6500555253002E2D30008F8E8E00DAD9DC0078787800EAE8CE00DEDCC500E1DE
      C700E8E8D200E9E4C9007A4E2C0000000000000000000000000000000000FEFE
      FF00F9F7F400E4CDB900E6D2C000F2EAE300F9F9F900FDFFFF00F7F6F400EBE2
      DA00E6D2BF00E7D4C300E9D7C700F1E2D400F1E3D500EDDFD400F1E4D900E7DE
      D700DAD5D300E2E1E100F4F3F100E0DCD900D8D2CF00EBE8E600DBD6D300D5D1
      CF0000000000FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00F5F5F500F5F5F500FCFC
      FC00000000000000000000000000FDFDFD00F2F2F200539FFF00FEFEFE009AE2
      FE0093E0FE004E99F300F5F5F500000000007A4E2C00E9E4C900E5E5CF00E1DF
      C800E2E0CA00E2E0C80078787800A19F9E00ACAAA800AEADAB00B2B1AF00B6B3
      B300B8B8B700BDBCBB00C0BFBE00C4C3C200C8C7C600CFCECE00A7A5A4006866
      6500555253002D2C2F008E8D8F00DADADB0078787800EBEAD000E0DFC900E1DF
      C700E9EBD500E9E4C9007A4E2C00000000000000000000000000FEFEFE000000
      0000FFFFFF00FAF7F500FCFBFB00FEFFFF00000000000000000000000000F8F8
      F800E8D7CA00E5CFBB00E8D3C200E7D5C500EAD9CA00ECDCCF00EDE0D500D6D2
      CE00FFFFFF00000000000000000000000000F7F6F500DFDBD800DED9D7000000
      0000FEFEFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00F2F2F200539FFF00FEFE
      FE0092E0FE004E99F300F5F5F500000000007A4E2C00E8E9D400E5E4CE00EBED
      D800E9EBD600EBECD60078787800A09E9D00ADACAA00AFADAB00B1B1AF00B6B4
      B300B9B8B700BDBCBB00C1C0BE00C4C3C200C8C7C500D0CFCF00A7A5A4006866
      6500575455003130330091909200D9D9DA0078787800F2F4DC00E5E7D200EAEB
      D600EFF1DB00E8E9D4007A4E2C00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FFFFFF00FFFF
      FF00EBE2D800E2CBB500E5D1BE00E6D3C100E8D6C500EBD9CA00E8DCD200D6D5
      D40000000000FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F2F2F200539F
      FF00FEFEFE004E99F300F4F4F40000000000FFFFFF007A4E2C00E9EBD600E9EB
      D600E9EBD500E9EBD50078787800A19F9E00ACAAA800AFADAB00B2B1AF00B6B4
      B300BAB8B700BDBCBB00C0BFBE00C4C3C200C7C6C600D0CFCF00A5A3A2006462
      61004B4849001E1D200087858700DCDDDF0078787800E9EBD600E9EBD600E9EB
      D600E8EAD4007A4E2C00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFF00FEFEFE00FEFEFE00FEFFFF000000000000000000000000000000
      0000F2EDE900E2CBB600E2C9B300E4CEBA00E6D1BE00E9D6C400E0D6CE00D8D8
      D90000000000FEFEFE000000000000000000FDFDFD00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F2F2
      F200539FFF004E99F300F6F6F60000000000FFFFFF00FFFFFF007A4E2C007A4E
      2C007A4E2C007A4E2C0078787800A3A2A000ADABA900AFADAB00B3B1AF00B6B4
      B300B9B8B700BDBCBB00C1C0BE00C4C3C200C8C7C700CECDCC00CECDCC00CECD
      CC00CECDCC00CECDCC00CECDCC00D9DBDC00787878007A4E2C007A4E2C007A4E
      2C007A4E2C00FEFEFE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000FAF9F800E9DACD00E5D0BF00E4D1BF00E5D1C000EAD8C900E2DEDB00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00F7F7F700F6F6F600FCFCFC0000000000FBFBFB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0078787800787878007878780078787800787878007878
      7800787878007878780078787800787878007878780078787800787878007878
      78007878780078787800787878007878780078787800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FDFDFD00F6F3F200F3EBE700EEE5DE00ECE2D900ECE4DD00F2F1F1000000
      0000FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFE0000000000FCFAF800E2CEBC00C5996A00B67D3F00B87D3500BA7F
      3500B87D3300B97E3200B5793200B57B3E00C79B6E00DDC4AE00F1E9E6000000
      00000000000000000000FEFDFC00FFFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFEFE0000000000FCFAF800E2CEBC00C5996A00B67D3F00B87D3500BA7F
      3500B87D3300B97E3200B5793200B57B3E00C79B6E00D1B28A00D1B28A00D1B2
      8A00D1B28A00D1B28A00D1B28A00D1B28A009F8D7400D1B28A00D1B28A00D1B2
      8A00D1B28A00D1B28A00D1B28A00000000000000000000000000000000000000
      0000FFFEFE0000000000FCFAF800E2CEBC00C5996A00B67D3F00B87D3500BA7F
      3500B87D3300B97E3200B5793200B57B3E00C79B6E00DDC4AE00F1E9E6000000
      00000000000000000000FEFDFC00FFFEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D30000000000000000000000000000000000000000000000
      000000000000DCC3AC00C08D5300C2893900CA933900D0993700D0983500CF96
      3300CD932F00CC8F2B00CA8C2600C6872000C0801F00BB7A2100B6762700C392
      5B00D8BBA000F3EAE20038963000389630003896300038963000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCC3AC00C08D5300C2893900CA933900D0993700D0983500CF96
      3300CD932F00CC8F2B00CA8C2600C6872000C0801F00D1B28A00F9F6EF00F9F6
      ED00F8F5EC00F8F4EA00F8F3E700F8F3E50058868B00F8F1E000F7EFDE00F7EE
      DB00F7EDD900F6EDD800D1B28A00000000000000000000000000000000000000
      000000000000DCC3AC00C08D5300C2893900CA933900D0993700D0983500CF96
      3300CD932F00CC8F2B00CA8C2600C6872000C0801F00BB7A2100B6762700C392
      5B00D8BBA000F3EAE2000000000000000000FFFEFE0000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A2
      7600D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A2
      7600D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A2
      7600D1A27600D3D3D300FFFEFD0000000000000000000000000000000000F9F6
      F400CDA78000C1893C00D29C4000D7A44500D6A24400D5A14400D39E4100D39E
      3F00D0993A00D0973600CC923100CB8E2B00C98A2300C6841B00C27F1400BC76
      1000B7711500B97B34003896300021D61E0012EC100038963000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F6
      F400CDA78000C1893C00D29C4000D7A44500D6A24400D5A14400D39E4100D39E
      3F00D0993A00D0973600CC923100CB8E2B00C98A2300D1B28A00F9F6EF00C0BD
      B300C0BDB300C0BDB300C0BDB300F7F2E50091EFF6009EE4E900F7EFDD00F7EF
      DB00F6EED900F6EDD700D1B28A0000000000000000000000000000000000F9F6
      F400CDA78000C1893C00D29C4000D7A44500D6A24400D5A14400D39E4100D39E
      3F00D0993A00D0973600CC923100CB8E2B00C98A2300C6841B00C27F1400BC76
      1000B7711500B97B3400CEA98300F5EDE5000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FEFE
      FE00D1A27600D3D3D300FFFEFD000000000000000000FFFEFD0000000000DFC7
      B000C28C3E00DAA94B00D8A84E00D6A74C00D9A94E00D8A84C00D7A64B00D6A4
      4800D4A04400D29D3F00D0993900CE943200CC8F2B00C7882400C4831C00C17D
      1400BF770C00B96D0000389630002FC42C0020D61E0038963000000000000000
      00000000000000000000000000000000000000000000FFFEFD0000000000DFC7
      B000C28C3E00DAA94B00D8A84E00D6A74C00D9A94E00D8A84C00D7A64B00D6A4
      4800D4A04400D29D3F00D0993900CE943200CC8F2B00D1B28A00F9F6EF00F9F6
      ED00F8F5EC00F8F4EA00F8F4E700F7F2E50070CFEE00589ACC00F7EFDE00F6EE
      DB00F7EED900F7EDD800D1B28A000000000000000000FFFEFD0000000000DFC7
      B000C28C3E00DAA94B00D8A84E00D6A74C00D9A94E00D8A84C00D7A64B00D6A4
      4800D4A04400D29D3F00D0993900CE943200CC8F2B00C7882400C4831C00C17D
      1400BF770C00B96D0000B66D0D00B97E3A00DFC9B30000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFDBB400FDD7AF00FED8AF00FED7AF00FED6AF00FED7
      AE00FED6AF00FED6AE00FED6AF00FED6AE00FED6AD00FED6AE00FED6AE00FED6
      AD00FED7AD00FED6AD00FED6AD00FED6AD00FED5AD00FDD5AC00FFD8B000FEFE
      FE00D1A27600D3D3D300FFFEFD000000000000000000FFFEFE0000000000E3CF
      BC00C9964700DCAE5400DBAE5600DDB05800DCB05800DCB05700DBAE5500DAAB
      5200D8A84D00D6A34800D39F4100D09A3A00CD933200CA8D2A00C8882300C381
      1A00BF7A1200BC740900389630003ABD370035BD310038963000FFFEFD000000
      00000000000000000000000000000000000000000000FFFEFE0000000000E3CF
      BC00C9964700DCAE5400DBAE5600DDB05800DCB05800DCB05700DBAE5500DAAB
      5200D8A84D00D6A34800D39F4100D09A3A00CD933200D1B28A00F9F6EF00C0BD
      B300C0BDB300C0BDB300C0BDB300F8F3E5009ACAE400004CB400F7EFDD00F7EE
      DB00F6EED900F7EDD700D1B28A000000000000000000FFFEFE0000000000E3CF
      BC00C9964700DCAE5400DBAE5600DDB05800DCB05800DCB05700DBAE5500DAAB
      5200D8A84D00D6A34800D39F4100D09A3A00CD933200CA8D2A00C8882300C381
      1A00BF7A1200BC740900B96D0300B96D0300B4711E00D7BA9C00FFFEFD000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFE0C000FEDCBA00FFDDBA00FFDDBB00FFDCBA00FFDD
      B900FFDDBA00FFDDBA00FFDDBA00FFDDB900FFDDBA00FFDCB900FFDDB900FFDC
      BA00FFDCB900FFDCB800FFDCB900FFDCB900FFDCB700FEDBB800FFDFBC00FEFE
      FE00D1A27600D3D3D300FFFEFD0000000000000000000000000000000000EADB
      CD00C9974E00DFB45B00E0B66100E0B66100E0B86200E0B76100DEB55F00DDB2
      5B00DBAE5600D9AA4F00D6A54800D39F4100D0993900CD923000C98B2700C584
      1E00C07D1500BD750B00389630003DC13A003EB83A0038963000EFE3D8000000
      000000000000000000000000000000000000000000000000000000000000EADB
      CD00C9974E00DFB45B00E0B66100E0B66100E0B86200E0B76100DEB55F00DDB2
      5B00DBAE5600D9AA4F00D6A54800D39F4100D0993900D1B28A00F9F6EF00F9F5
      EE00F8F5EC00F9F4EA00F8F3E800F8F2E500D9E4E2000065C900A8B3CA00F7EE
      DB00F6EDD900F6EDD800D1B28A0000000000000000000000000000000000EADB
      CD00C9974E00DFB45B00E0B66100E0B66100E0B86200E0B76100DEB55F00DDB2
      5B00DBAE5600D9AA4F00D6A54800D39F4100D0993900CD923000C98B2700C584
      1E00C07D1500BD750B00B96E0300B96D0300BA6C0100B3712200EFE3D8000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFE0C000FEDCBB00FFDDBC00FFDEBC00FFDEBB00FFDD
      BC00FFDDBB00FFDCBB00FFDDBB00FFDDBA00FFDDBB00FFDCBA00FFDDBA00FFDD
      B900FFDCBA00FFDDB900FFDDBA00FFDDB900FFDCBA00FEDCB800FFE0BD00FEFE
      FE00D1A27600D3D3D300FFFEFD0000000000000000000000000000000000ECDD
      D100C9985200E3BC6500E3BD6A00E3BF6B00E4C06C00E4BF6B00E2BC6800E1B9
      6400DFB55E00DCB05700D9AA4F00D5A34700D39D3F0059A853006EB369004A9F
      4300389630003896300038D438003BCC3A003DC23B003EB83B00389630003896
      300038963000389630003896300000000000000000000000000000000000ECDD
      D100C9985200E3BC6500E3BD6A00E3BF6B00E4C06C00E4BF6B00E2BC6800E1B9
      6400DFB55E00DCB05700D9AA4F00D5A34700D39D3F00D1B28A00F9F6EF00C0BD
      B300C0BDB300C0BDB300C0BDB300F8F2E500F8F1E3002D90DB005C79B600F6EE
      DB00F6EED900F6EDD700D1B28A0000000000000000000000000000000000ECDD
      D100C9985200E3BC6500E3BD6A00E3BF6B00E4C06C00E4BF6B00E2BC6800E1B9
      6400DFB55E00DCB05700D9AA4F00D5A34700D39D3F00CF9636000E0E99000E0E
      99000E0E99000E0E99000E0E99000E0E99000E0E99000E0E99000E0E99000E0E
      99000E0E99000E0E9900000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFE4C500FEDFC000FFE0C000FFE0C100FFDFC100FFE0
      C000FFDFC000FFE0BF00FFE0C000FFE0BF00FFE0C000FFDFBF00FFE0BF00FFDF
      BF00FFDEBF00FFDFBE00FFDFBF00FFDEBF00FFDEBD00FEDEBD00FFE2C300FEFE
      FE00D1A27600D3D3D300FFFEFD0000000000000000000000000000000000E1E1
      E100C7995800E5C16D00E7C47300E7C67500E8C77600E8C77500E6C47100E4BF
      6D00E2BB6700DEB55E00DBAE5600D8A74D00D4A1440077B7710099F598007BEF
      7B004EE74E0031DF300035DB350039D438003CCC3A003DC23B003EB93B003DB2
      39003CAC38003BA735003896300000000000000000000000000000000000E1E1
      E100C7995800E5C16D00E7C47300E7C67500E8C77600E8C77500E6C47100E4BF
      6D00E2BB6700DEB55E00DBAE5600D8A74D00D4A14400D1B28A00F9F6EF00F9F6
      EE00F9F5EC00F8F4EA00F8F3E700F7F2E500F7F1E3006BB6E3001E57B100F7EE
      DB00F6EED900F6EDD700D1B28A0000000000000000000000000000000000E1E1
      E100C7995800E5C16D00E7C47300E7C67500E8C77600E8C77500E6C47100E4BF
      6D00E2BB6700DEB55E00DBAE5600D8A74D00D4A14400D09A3B000E0E99005151
      E6000000CC000000CC000000CC000000CC000000CC000000CC000000CC000000
      CC005151E6000E0E9900000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFE4C800FEE0C300FFE1C400FFE1C300FFE1C200FFE1
      C300FFE1C100FFE1C300FFE1C200FFE1C100FFE1C200FFDFC200FFE1C100FFE0
      C200FFE0C100FFE0C100FFE0C100FFE0C000FFE0C000FEDFC000FFE3C500FEFE
      FE00D1A27600D3D3D300FFFEFD0000000000000000000000000000000000FFFF
      FE00C6986000E7C57300EBCC7C00EBCE7E00ECD08000EBCE7E00EACB7A00E7C6
      7400E4C06D00E0BA6400DEB35C00DAAD5400D5A3470086BF82009DF79C009BF5
      9A008FF28F006AEB6A004CE34C0036DB360039D439003CCB3B003EC23C003FB9
      3B003DB339003CAD37003896300000000000000000000000000000000000FFFF
      FE00C6986000E7C57300EBCC7C00EBCE7E00ECD08000EBCE7E00EACB7A00E7C6
      7400E4C06D00E0BA6400DEB35C00DAAD5400D5A34700D1B28A00F9F6EF00C0BD
      B300C0BDB300C0BDB300C0BDB300F8F3E500F7F1E200B9D6E100005CC100C9CB
      D100F7EED900F6ECD800D1B28A0000000000000000000000000000000000FFFF
      FE00C6986000E7C57300EBCC7C00EBCE7E00ECD08000EBCE7E00EACB7A00E7C6
      7400E4C06D00E0BA6400DEB35C00DAAD5400D5A34700D19B39000E0E9900B2B2
      F0009B9BEC009B9BEC009B9BEC009B9BEC009B9BEC009B9BEC009B9BEC009B9B
      EC00B2B2F0000E0E9900000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFE6CC00FEE2C600FFE3C700FFE3C700FFE3C600FFE2
      C600FFE2C400FFE1C500FFE2C500FFE2C500FFE2C500FFE1C400FFE2C500FFE2
      C400FFE2C300FFE1C400FFE2C300FFE1C300FFE1C400FEE0C200FFE4C700FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      0000CEA77A00E2BF7100EFD58500EFD68700F0D78900EFD58700ECD18200E9CC
      7A00E6C47100E2BD6A00DFB55F00D9AA4B00D8A9530071B46C0074B56E0071B4
      6B0070B36A007AB975008CEE8C007DEA7C0067E3670056DA5500449C3C003D98
      35003A973200399631003D983500000000000000000000000000000000000000
      0000CEA77A00E2BF7100EFD58500EFD68700F0D78900EFD58700ECD18200E9CC
      7A00E6C47100E2BD6A00DFB55F00D9AA4B00D8A95300D1B28A00F9F6EF00F9F6
      ED00F8F5EC00F8F4EA00F8F3E800F7F3E600F7F2E200F7F0E0000F79D3008A9B
      C100F6EEDA00F6EDD800D1B28A00000000000000000000000000000000000000
      0000CEA77A00E2BF7100EFD58500EFD68700F0D78900EFD58700ECD18200E9CC
      7A00E6C47100E2BD6A00DFB55F00D9AA4B00D8A95300D8AD60000E0E99000E0E
      99000E0E99000E0E99000E0E99000E0E99000E0E99000E0E99000E0E99000E0E
      99000E0E99000E0E990000000000FDFDFD0000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFE8CF00FEE3C900FFE4C900FFE4C900FFE3C900FFE4
      C900FFE3C900FFE3C800FFE3C800FFE3C800FFE3C800FFE3C700FFE3C700FFE3
      C700FFE2C700FFE3C600FFE3C600FFE1C600FFE2C600FEE1C500FFE5CB00FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      0000D8BDA200D6AF6600F4DD8F00F0D98D00F4DF9300F2DC9000EFD68800EBCF
      7F00E8C87700E3BE6800DEB66000E9CF9A00FEF6E800FFFFFA00FFFAEF00DCB5
      7700C5841B00C3821B007CBA77009BF19B0097EE97007FBC7A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8BDA200D6AF6600F4DD8F00F0D98D00F4DF9300F2DC9000EFD68800EBCF
      7F00E8C87700E3BE6800DEB66000E9CF9A00FEF6E800D1B28A00F9F6EF00F1EE
      E600E8E6DD00F8F4E900E1DCD200EFEBDE00E8E3D500D9D3C5005CAFE2002955
      AB00F7EDD900F7EDD800D1B28A00000000000000000000000000000000000000
      0000D8BDA200D6AF6600F4DD8F00F0D98D00F4DF9300F2DC9000EFD68800EBCF
      7F00E8C87700E3BE6800DEB66000E9CF9A00FEF6E800FFFFFA00FFFAEF00DCB5
      7700C5841B00C3821B00BE791000BC720600B76F0A00CCA37600000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFE9D100FEE4CB00FFE5CC00FFE5CB00FFE4CB00FFE5
      CC00FFE5CB00FFE5CA00FFE4CA00FFE5CA00FFE4CB00FFE3CA00FFE4CA00FFE4
      C900FFE3CA00FFE4C900FFE4CA00FFE4C900FFE4C800FEE3C800FFE8CE00FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      0000F0E5DC00C89A5B00F3DA8D00F4DE9300F5E29800F3DE9400F0D88A00ECD0
      8100E8C77400E5C37500F9EBD00000000000DDE8F600B8CCE300D2DFF000FFFD
      FB00D19F4D00C07D13006EB26800A3F4A3009FF19F0084BE7F0000000000FFFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000F0E5DC00C89A5B00F3DA8D00F4DE9300F5E29800F3DE9400F0D88A00ECD0
      8100E8C77400E5C37500F9EBD00000000000DDE8F600D1B28A00F9F6EF00C1BF
      B800A19F9A00B9B6AF0099989100C0BDB300999790009997900081B2CD00004F
      B700DFDCD000F7EDD800D1B28A00000000000000000000000000000000000000
      0000F0E5DC00C89A5B00F3DA8D00F4DE9300F5E29800F3DE9400F0D88A00ECD0
      8100E8C77400E5C37500F9EBD00000000000DDE8F600B8CCE300D2DFF000FFFD
      FB00D19F4D00C07D1300BE791100BD710500B4701800E4D1C00000000000FFFE
      FE000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFEAD400FEE5CD00FFE6CE00FFE6CE00FFE6CD00FFE6
      CE00FFE6CC00FFE5CD00FFE6CD00FFE6CC00FFE4CD00FFE5CC00FFE5CD00FFE5
      CC00FFE5CB00FFE5CC00FFE5CC00FFE5CB00FFE5CC00FEE4CB00FFE9D000FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      000000000000D2B08E00D9B46C00F8E59900F3DE9300F1DA8E00EFD78900EBCE
      7C00E9CC8300FDF6E600EBF5FF0083AAD3004E82BC003B71B0003166A700CEDB
      EB00E4B97200BD790F006BB16500A8F6A800A7F4A6008EC38A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2B08E00D9B46C00F8E59900F3DE9300F1DA8E00EFD78900EBCE
      7C00E9CC8300FDF6E600EBF5FF0083AAD3004E82BC00D1B28A00F9F6EF00C1BF
      B800B9B7B000A9A7A00082817C00C0BDB30099979000B8B4AA00CACDC5000067
      CB0098A6C300F6ECD700D1B28A00000000000000000000000000000000000000
      000000000000D2B08E00D9B46C00F8E59900F3DE9300F1DA8E00EFD78900EBCE
      7C00E9CC8300FDF6E600EBF5FF0083AAD3004E82BC003B71B0003166A700CEDB
      EB00E4B97200BD790F00C17C1400BA720900BF8B4F00FAF6F300000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFECD600FEE7D000FFE8D100FFE7D000FFE7D000FFE7
      D000FFE7D000FFE6CF00FFE7CF00FFE7CF00FFE7CF00FFE7CE00FFE7CF00FFE7
      CF00FFE7CE00FFE6CF00FFE7CE00FFE6CD00FFE6CE00FEE5CD00FFEAD300FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      000000000000FAF7F300C99E7100D9B46C00F4DC8E00F2DB8D00EDD28200E8CA
      7800FCF1D900EAF4FF007DA9D6005289C6004C81BC003F74B100205AA00084A2
      C800DBA95C00C37C0B0070B36A00ACF7AC00ACF6AB0093C78F00FFFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAF7F300C99E7100D9B46C00F4DC8E00F2DB8D00EDD28200E8CA
      7800FCF1D900EAF4FF007DA9D6005289C6004C81BC00D1B28A00F9F6EF00C1BE
      B800A9A7A100F0ECE300C0BEB500E1DCD100C0BCB200C0BCB100E0DACB001A84
      CF005975B200F6EDD800D1B28A00000000000000000000000000000000000000
      000000000000FAF7F300C99E7100D9B46C00F4DC8E00F2DB8D00EDD28200E8CA
      7800FCF1D900EAF4FF007DA9D6005289C6004C81BC003F74B100205AA00084A2
      C800DBA95C00C37C0B00BF791000B4732100E4D1BF0000000000FFFEFE000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFEDD800FEE8D200FFE8D300FFE8D200FFE8D300FFE8
      D300FFE8D200FFE8D100FFE8D100FFE8D100FFE8D200FFE7D100FFE8D100FFE8
      D000FFE8D100FFE7D000FFE8D000FFE7D000FFE7D000FEE6CF00FFEBD600FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      00000000000000000000FAF6F300CEA98500C99B5800E1BF7300EBCD7900EFD7
      9900FCFEFF009EC4E800659CD4006093CA00487BB9004170B0004672B0004674
      B500677A9100B27D2C0067AE60008EC38A0089C0840079B87400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF6F300CEA98500C99B5800E1BF7300EBCD7900EFD7
      9900FCFEFF009EC4E800659CD4006093CA00487BB900D1B28A00F9F6EF00F9F6
      EE00F1EDE500F8F4EA00F8F3E800F7F2E500F7F2E300F7F0E000F7F0DE00A2CB
      DC005B79A600F6EDD800D1B28A00000000000000000000000000000000000000
      00000000000000000000FAF6F300CEA98500C99B5800E1BF7300EBCD7900EFD7
      9900FCFEFF009EC4E800659CD4006093CA00487BB9004170B0004672B0004674
      B500677A9100B27D2C00BA752100D8BA9D000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFEEDB00FEE9D500FFEAD500FFEAD500FFEAD400FFEA
      D500FFEAD500FFE9D400FFE9D500FFE9D300FFE8D300FFE8D400FFE9D400FFE9
      D400FFE9D300FFE9D300FFE9D300FFE9D200FFE9D300FEE8D200FFEDD800FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      000000000000000000000000000000000000EADACC00CAA37900C2934F00E8CB
      9500DEEEFD007AAEE3006EA1D5005181BE00507BB8005F88C000628DC400608C
      C4005085CA006880A200D8C7B600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EADACC00CAA37900C2934F00E8CB
      9500DEEEFD007AAEE3006EA1D5005181BE00507BB800D1B28A00D1B28A00D1B2
      8A00D1B28A00D1B28A00D1B28A00D1B28A00D1B28A00D1B28A00D1B28A00CCB2
      9900AEAEDF00D1B28A00D1B28A00000000000000000000000000000000000000
      000000000000000000000000000000000000EADACC00CAA37900C2934F00E8CB
      9500DEEEFD007AAEE3006EA1D5005181BE00507BB8005F88C000628DC400608C
      C4005085CA006880A200D8C7B600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFEFDD00FEEAD700FFEBD700FFEBD700FFEBD800FFEA
      D700FFEBD700FFEAD700FFEBD600FFEAD700FFEAD600FFEAD500FFEAD600FFEA
      D600FFEAD600FFEAD500FFEAD500FFEAD600FFE9D500FEE9D400FFEEDA00FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      0000000000000000000000000000FFFEFE000000000000000000ECD4BF00D7A7
      7500B8CADB007CB1E8005C8CC6005983BD006E98CB00719BCE00719CCF00709B
      D0006D99CD005B8FCE00AFC8E70000000000FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFEFE000000000000000000ECD4BF00D7A7
      7500B8CADB007CB1E8005C8CC6005983BD006E98CB00719BCE00719CCF00709B
      D0006D99CD005B8FCE00AFC8E70000000000FEFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFEFE000000000000000000ECD4BF00D7A7
      7500B8CADB007CB1E8005C8CC6005983BD006E98CB00719BCE00719CCF00709B
      D0006D99CD005B8FCE00AFC8E70000000000FEFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFF1E000FEEBDA00FFEBDA00FFECD900FFECDA00FFEB
      DA00FFECDA00FFECD900FFECD800FFECD900FFECD900FFEBD900FFECD900FFEB
      D800FFEBD900FFEAD800FFEBD700FFEBD800FFEAD800FEEAD700FFEFDD00FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEFE0000000000000000000000
      0000C3D8EB0071A2D900608AC100749DCE0078A2D3007AA4D5007BA6D70079A5
      D80076A4D8006B9BD30076A2D600F5F8FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEFE0000000000000000000000
      0000C3D8EB0071A2D900608AC100749DCE0078A2D3007AA4D5007BA6D70079A5
      D80076A4D8006B9BD30076A2D600F5F8FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEFE0000000000000000000000
      0000C3D8EB0071A2D900608AC100749DCE0078A2D3007AA4D5007BA6D70079A5
      D80076A4D8006B9BD30076A2D600F5F8FC000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFF2E300FEECDC00FFEDDC00FFEDDD00FFEDDC00FFED
      DC00FFEDDC00FFEDDB00FFEDDC00FFEDDB00FFEDDB00FFECDB00FFECDB00FFEC
      DB00FFECDB00FFECDA00FFECDB00FFECDA00FFECD900FEEBD900FFF0DF00FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF000000
      0000CCE0F5006390C700779ED0007CA5D6007FA9D90082ADDC0084AFDF0083B1
      E1007EAEE0007AABDF006CA0D900D2E2F30000000000FEFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF000000
      0000CCE0F5006390C700779ED0007CA5D6007FA9D90082ADDC0084AFDF0083B1
      E1007EAEE0007AABDF006CA0D900D2E2F30000000000FEFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF000000
      0000CCE0F5006390C700779ED0007CA5D6007FA9D90082ADDC0084AFDF0083B1
      E1007EAEE0007AABDF006CA0D900D2E2F30000000000FEFFFF00000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFF3E600FEEEDE00FFEFDE00FFEFDF00FFEFDF00FFEE
      DF00FFEEDF00FFEDDE00FFEEDE00FFEEDD00FFEEDE00FFEDDD00FFEEDD00FFEE
      DD00FFEEDD00FFEEDC00FFEEDD00FFEEDD00FFEDDC00FEEDDC00FFF2E200FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F9
      FB00718EAF006E9ACE007EA7D50080AAD90085B0DE0088B4E20089B7E50089B8
      E80087B6E80083B4E70075AAE100B6D1EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F9
      FB00718EAF006E9ACE007EA7D50080AAD90085B0DE0088B4E20089B7E50089B8
      E80087B6E80083B4E70075AAE100B6D1EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F9
      FB00718EAF006E9ACE007EA7D50080AAD90085B0DE0088B4E20089B7E50089B8
      E80087B6E80083B4E70075AAE100B6D1EE000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFF5E800FEEFE100FFEFE200FFF0E000FFF0E100FFEF
      E100FFEFE100FFEFE000FFEFE000FFEFE000FFEFE000FFEFE000FFEFE000FFEF
      DF00FFEFE000FFEEE000FFEFDF00FFEFDF00FFEEDF00FEEEDE00FFF3E500FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000007083
      94005078AA007EA8D80080A9D70086B0DD008AB5E2008CBAE8008DBDEC008EBE
      ED008EBEEE008ABBEC007DB2E700A3C8EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000007083
      94005078AA007EA8D80080A9D70086B0DD008AB5E2008CBAE8008DBDEC008EBE
      ED008EBEEE008ABBEC007DB2E700A3C8EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000007083
      94005078AA007EA8D80080A9D70086B0DD008AB5E2008CBAE8008DBDEC008EBE
      ED008EBEEE008ABBEC007DB2E700A3C8EC000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFF6EA00FEF0E300FFF0E400FFF1E400FFF1E400FFF1
      E300FFF1E300FFF1E200FFF1E300FFF0E300FFF1E200FFF0E300FFEFE200FFF0
      E100FFF0E200FFEFE200FFF0E200FFF0E200FFF0E100FEEFE000FFF5E700FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000C7CDD3002D50
      78006E97CB0080A8D70083ADDC0088B3E0008CB8E7008DBDEC0090C0EF0090C1
      EF008FC0EF008CBEEF0082B7EA009BC5ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000C7CDD3002D50
      78006E97CB0080A8D70083ADDC0088B3E0008CB8E7008DBDEC0090C0EF0090C1
      EF008FC0EF008CBEEF0082B7EA009BC5ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000C7CDD3002D50
      78006E97CB0080A8D70083ADDC0088B3E0008CB8E7008DBDEC0090C0EF0090C1
      EF008FC0EF008CBEEF0082B7EA009BC5ED000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFF7ED00FEF1E500FFF2E500FFF2E700FFF2E600FFF2
      E600FFF2E600FFF1E500FFF2E500FFF1E400FFF2E500FFF1E500FFF1E400FFF1
      E500FFF1E400FFF1E400FFF1E500FFF1E400FFF2E300FEF0E300FFF6EA00FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000748494003157
      830075A3DA00749DCD007BA6D40088B5E4008BBAEA008FBFEE0091C2F10094C7
      F40094C6F4008EC1F10084B9ED009DC7EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000748494003157
      830075A3DA00749DCD007BA6D40088B5E4008BBAEA008FBFEE0091C2F10094C7
      F40094C6F4008EC1F10084B9ED009DC7EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000748494003157
      830075A3DA00749DCD007BA6D40088B5E4008BBAEA008FBFEE0091C2F10094C7
      F40094C6F4008EC1F10084B9ED009DC7EF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFF9F000FEF3E800FFF4E900FFF4E900FFF3E800FFF3
      E900FFF3E800FFF2E800FFF3E800FFF3E700FFF3E800FFF3E700FFF3E700FFF3
      E700FFF3E700FFF2E700FFF3E700FFF2E600FFF2E700FEF1E500FFF7EC00FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00314C66001C3E
      6000416894002D517400648FBD0088B7E9008CBBEA0090C0EF0092C4F20097CC
      F80096CBF70090C3F20083BAEE00A8CEF2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00314C66001C3E
      6000416894002D517400648FBD0088B7E9008CBBEA0090C0EF0092C4F20097CC
      F80096CBF70090C3F20083BAEE00A8CEF2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00314C66001C3E
      6000416894002D517400648FBD0088B7E9008CBBEA0090C0EF0092C4F20097CC
      F80096CBF70090C3F20083BAEE00A8CEF2000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFFAF300FEF4EB00FFF4EB00FFF5EB00FFF4EB00FFF4
      EA00FFF4EB00FFF4E900FFF4EB00FFF4EA00FFF4EA00FFF4E900FFF3EA00FFF4
      E900FEF4E900FFF3E900FEF3E900FEF3E800FEF2E800FDF2E700FFF8EF00FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7DEE5001E3D5A001433
      500012314E0012304E005E8AB90086B5E8008BBAE9008FBFEE0091C3F10094C8
      F40093C6F4008EC1F10081B8EC00B3D4F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7DEE5001E3D5A001433
      500012314E0012304E005E8AB90086B5E8008BBAE9008FBFEE0091C3F10094C8
      F40093C6F4008EC1F10081B8EC00B3D4F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7DEE5001E3D5A001433
      500012314E0012304E005E8AB90086B5E8008BBAE9008FBFEE0091C3F10094C8
      F40093C6F4008EC1F10081B8EC00B3D4F2000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFFBF500FEF5ED00FFF6ED00FFF6EE00FFF6ED00FFF6
      ED00FFF6ED00FFF6ED00FFF6ED00FFF5EC00FFF5EC00FFF4EC00FFF4EC00FFF5
      EC00FFF5EC00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FEFE
      FE00D1A27600D3D3D300FFFEFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCC5CD00183855001435
      54001737570012314F004A729D0084B5EB0086B5E5008DBDEB008FBFED0090C0
      EE008FC1F0008BBEEF007FB6EB00B9D7F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCC5CD00183855001435
      54001737570012314F004A729D0084B5EB0086B5E5008DBDEB008FBFED0090C0
      EE008FC1F0008BBEEF007FB6EB00B9D7F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCC5CD00183855001435
      54001737570012314F004A729D0084B5EB0086B5E5008DBDEB008FBFED0090C0
      EE008FC1F0008BBEEF007FB6EB00B9D7F3000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFFCF800FEF6EF00FFF7F000FFF7F000FFF7EF00FFF7
      F000FFF7EF00FFF7F000FFF6EF00FFF7EE00FFF6EF00FFF6EE00FFF6EE00FFF6
      EF00FEF6ED00FFFEFE00D1A27600D1A27600D1A27600D1A27600D1A27600D1A2
      7600D1A2760000000000FFFEFD00000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE0000000000B9C2CB00153655001233
      54001535550011314F00234465006B99CA0087B9ED008CBDEF0091C2F40093C5
      F6008BBCED0086B8E90079B2E900CEE4F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE0000000000B9C2CB00153655001233
      54001535550011314F00234465006B99CA0087B9ED008CBDEF0091C2F40093C5
      F6008BBCED0086B8E90079B2E900CEE4F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE0000000000B9C2CB00153655001233
      54001535550011314F00234465006B99CA0087B9ED008CBDEF0091C2F40093C5
      F6008BBCED0086B8E90079B2E900CEE4F8000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFFEFA00FEF8F100FFF9F300FFF8F200FFF7F200FFF8
      F200FFF8F200FFF8F100FFF8F100FFF8F100FFF8F100FFF8F000FFF8F100FFF8
      F100FDF6ED00FFFFFE00D1A27600FEF9F500FEF9F500FEF9F500FEF9F500D1A2
      76000000000000000000FFFFFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2CAD200193858001232
      54001534550012335600143D6300274F75004B729B006089B4004D719800456D
      960082B6EA0085BDF4006CA2D900E1EAF40000000000FEFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2CAD200193858001232
      54001534550012335600143D6300274F75004B729B006089B4004D719800456D
      960082B6EA0085BDF4006CA2D900E1EAF40000000000FEFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2CAD200193858001232
      54001534550012335600143D6300274F75004B729B006089B4004D719800456D
      960082B6EA0085BDF4006CA2D900E1EAF40000000000FEFFFF00000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE00FFFFFD00FEF9F400FFF9F500FFF9F500FFF9F500FFF9
      F500FFF9F500FFFAF400FFF9F400FFFAF300FFF9F400FFF8F300FFF9F300FFF9
      F300FEF7F000FFFEFF00D1A27600FEF9F500FEF9F500F7ECE100D1A276000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEDEF00203C5A001333
      570012375C0010406A000B4678001352880019538500144E80001E5888002D52
      7500395C82003F67940027476B00A9B1BB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEDEF00203C5A001333
      570012375C0010406A000B4678001352880019538500144E80001E5888002D52
      7500395C82003F67940027476B00A9B1BB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEDEF00203C5A001333
      570012375C0010406A000B4678001352880019538500144E80001E5888002D52
      7500395C82003F67940027476B00A9B1BB000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE0000000000FEFAF600FFFBF700FFFBF700FFFBF700FFFB
      F700FFFBF600FFFAF700FFF9F700FFFAF500FFFAF600FFF9F600FFFAF500FFFA
      F600FEF8F30000000000D1A27600FEF9F500F6EBE000D1A27600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C758E001038
      6100114674000A497F0007508C0001569A00005FA9000762A800095B99002363
      9100486B8400566D80005E7B8E00C6D3DB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C758E001038
      6100114674000A497F0007508C0001569A00005FA9000762A800095B99002363
      9100486B8400566D80005E7B8E00C6D3DB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C758E001038
      6100114674000A497F0007508C0001569A00005FA9000762A800095B99002363
      9100486B8400566D80005E7B8E00C6D3DB000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE0000000000FEFCF900FFFCFA00FFFCF900FFFCF900FFFB
      FA00FFFCF900FFFBF900FFFBF800FFFBF900FFFBF900FFFCF700FFFBF800FFFB
      F800FEF9F50000000000D1A27600F6EBE000D1A276000000000000000000FFFF
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000D5DEE500245A
      87000A518A0006569600015AA000015CA30004579600084F84000D4B76000D44
      680015496900537B9300C5D2DA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000D5DEE500245A
      87000A518A0006569600015AA000015CA30004579600084F84000D4B76000D44
      680015496900537B9300C5D2DA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000D5DEE500245A
      87000A518A0006569600015AA000015CA30004579600084F84000D4B76000D44
      680015496900537B9300C5D2DA00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600FEFEFE0000000000FEFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00FEFEFE0000000000D1A27600D1A276000000000000000000FFFEFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000093B2
      CC003C79AC00377EB800196DAF00085A96000A4F82005E8298005E82980098AF
      BD00000000000000000000000000FDFDFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000093B2
      CC003C79AC00377EB800196DAF00085A96000A4F82005E8298005E82980098AF
      BD00000000000000000000000000FDFDFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000093B2
      CC003C79AC00377EB800196DAF00085A96000A4F82005E8298005E82980098AF
      BD00000000000000000000000000FDFDFE000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFD00000000000000
      0000D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A2
      7600D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A27600D1A2
      7600D1A27600D1A27600D1A27600000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFC3FFFFFFFFFFFFE77DDFF00000000
      FFF81FFF00000001FF81A0FF00000000FFF00FFF00000001FE00C03F00000000
      FFE007FF00000001F400003F00000000FFC403FF00000001F400003F00000000
      FF8801FF00000001FC00003F00000000FF1000FF00000001DC00003F00000000
      FE20007F00000001F200002500000000FC40003F000000018400001F00000000
      F880001F000000018000000000000000F100000F000000010000000000000000
      E2000007000000010000000000000000C4000003000000010007C00000000000
      8800000100000001000820000000000090000001000000010017D00000000000
      90000001000000010017C000000000009000000100000001C01FD00100000000
      88000001000000012017D00600000000C400000100000001D00B900900000000
      E210000100000001D004200700000000F128000100000001C003800300000000
      F8C40001000000012000000100000000FC020001000000014000000100000000
      FE110001000000010000000000000000FFF88001000000010000000200000000
      FFFC6001000000016000000500000000FFFE040100000001E000000B00000000
      FFFF0E0100000001D0E0071700000000FFFFFF0100000000FF0008FF00000000
      FFFFFF8100000000F0F00B1F00000000FFFFFFC100000000FFD00FFF00000000
      FFFFFFE100000000FFD017FF00000000F4001CFFF4000001F4001CFFB0000003
      F800003FF8000001F800037FB0000001E000003FE0000001E00000FFB0000001
      A000003FA0000001A000007FB0000001A000001FA0000001A000001FB0000001
      E000001FE0000001E000001FB0000001E0000001E0000001E0000003B0000001
      E0000001E0000001E0000003B0000001E0000001E0000001E0000003B0000001
      F0000001F0000001F0000002B0000001F000003FF0000001F000003FB0000001
      F001002FF0010001F001002FB0000001F800003FF8000001F800003FB0000001
      F800001FF8000001F800005FB0000001FC00003FFC000001FC0000FFB0000001
      FF0001FFFF000001FF0001FFB0000001FEC0017FFEC0017FFEC0017FB0000001
      FF7000FFFF7000FFFF7000FFB0000001FFD000BFFFD000BFFFD000BFB0000001
      FFE000FFFFE000FFFFE000FFB0000001FFA000FFFFA000FFFFA000FFB0000001
      FF4000FFFF4000FFFF4000FFB0000001FFC000FFFFC000FFFFC000FFB0000001
      FF8000FFFF8000FFFF8000FFB0000001FF8000FFFF8000FFFF8000FFB0000001
      FF8000FFFF8000FFFF8000FFB0000005FE8000FFFE8000FFFE8000FFB000000D
      FF8000BFFF8000BFFF8000BFB000001FFF8000FFFF8000FFFF8000FFB200043F
      FFC000FFFFC000FFFFC000FFB200046FFF4001FFFF4001FFFF4001FFB20004DF
      FFE00EFFFFE00EFFFFE00EFFB00001FF00000000000000000000000000000000
      000000000000}
  end
  object TBImageList2: TTBImageList
    Height = 32
    Width = 32
    Left = 272
    Top = 192
    Bitmap = {
      494C0101070009000C0020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FAFAFA00F8F8F800FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000000000000000
      0000F7F7F7000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F7F7F700A7A7A700A7A7A700F2F2F200FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1B1B10094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      94009494940094949400BFBFBF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800D4D4D400B5B5
      B500D9D9D900F6F6F6000000000000000000000000000000000000000000F9F9
      F900BEBEBE00D1D1D100F1F1F100FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F8F8F800A6A6A600A7A7A700A7A7A700A7A7A700F2F2F200FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094949400B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B70094949400000000000000000000000000000000000000
      0000000000000000000000000000F8F8F800CFCFCF00AEAEAE00A7A7A700ABAB
      AB00ACACAC00DCDCDC00F5F5F500000000000000000000000000FBFBFB00B1B1
      B1009B9B9B009C9C9C00AEAEAE00D3D3D300ECECEC00F8F8F800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F8F8F800A7A7A700BDBDBD00A7A7A700BCBCBC00AEAEAE00A7A7A700F2F2
      F200FDFDFD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094949400B7B7B70095959500A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A7009B9B9B00B7B7B70094949400000000000000000000000000000000000000
      00000000000000000000F5F5F500B0B0B000ACACAC00B1B1B100B3B3B300B3B3
      B300ADADAD00AAAAAA00DCDCDC00F7F7F70000000000F5F5F500B1B1B100A0A0
      A000AAAAAA00A5A5A500A0A0A00098989800BABABA00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F8F8
      F800A7A7A700BFBFBF00AEAEAE00A7A7A700BBBBBB00AEAEAE00B0B0B000A7A7
      A700F2F2F200FDFDFD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094949400B7B7B7009A9A9A00A7A7
      A700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00A7A7
      A7009F9F9F00B7B7B70094949400000000000000000000000000000000000000
      00000000000000000000F1F1F100B0B0B000B7B7B700B6B6B600B3B3B300B1B1
      B100B2B2B200ADADAD00ABABAB00C8C8C800CCCCCC00AEAEAE00A3A3A300ABAB
      AB00A7A7A700A6A6A600A8A8A800A3A3A300AAAAAA00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F8F8F800A7A7
      A700BFBFBF00B0B0B000A9A9A900A7A7A700BBBBBB00ACACAC00AEAEAE00B0B0
      B000A7A7A700F2F2F200FDFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000094949400B7B7B7009B9B9B00A7A7
      A700BFBFBF00BABABA00BABABA00BABABA00B9B9B900B9B9B900B9B9B900B8B8
      B800B8B8B800B8B8B800B7B7B700B7B7B700B7B7B700B6B6B600B6B6B600B6B6
      B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B4B4B400BFBFBF00A7A7
      A700A0A0A000B7B7B70094949400000000000000000000000000000000000000
      00000000000000000000FBFBFB00BBBBBB00B5B5B500B7B7B700B5B5B500B4B4
      B400B1B1B100B2B2B200AEAEAE00A6A6A600A5A5A500A7A7A700ACACAC00A9A9
      A900A9A9A900A8A8A800A8A8A800A4A4A400AFAFAF00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00F8F8F800A7A7A700BFBF
      BF00B0B0B000AAAAAA00A9A9A900A7A7A700BBBBBB00ACACAC00ACACAC00AEAE
      AE00B0B0B000A7A7A700F2F2F200FDFDFD000000000000000000000000000000
      00000000000000000000000000000000000094949400B7B7B7009C9C9C00A7A7
      A700BFBFBF00BBBBBB00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700B4B4B400BFBFBF00A7A7
      A700A0A0A000B7B7B70094949400000000000000000000000000000000000000
      00000000000000000000FEFEFE00C0C0C000B7B7B700B9B9B900B5B5B500B4B4
      B400B4B4B400B2B2B200B2B2B200B4B4B400B3B3B300AEAEAE00ADADAD00ABAB
      AB00AAAAAA00A8A8A800A9A9A900A5A5A500AFAFAF00EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F8F8F800A7A7A700BFBFBF00B0B0
      B000AAAAAA00AAAAAA00A9A9A900A7A7A700BBBBBB00ABABAB00ACACAC00ACAC
      AC00AEAEAE00B0B0B000A7A7A700F2F2F200FDFDFD0000000000000000000000
      00000000000000000000000000000000000094949400B7B7B7009D9D9D00A7A7
      A700BFBFBF00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700BFBFBF00A7A7
      A700A1A1A100B7B7B70094949400000000000000000000000000000000000000
      000000000000FEFEFE0000000000CBCBCB00B6B6B600BBBBBB00B7B7B700B5B5
      B500B4B4B400B4B4B400AEAEAE00A4A4A400B0B0B000AEAEAE00ADADAD00ACAC
      AC00ABABAB00A9A9A900ABABAB00A7A7A700B1B1B100EFEFEF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F8F8F800A7A7A700BFBFBF00B0B0B000AAAA
      AA00AAAAAA00AAAAAA00A9A9A900A7A7A700BBBBBB00ABABAB00ABABAB00ACAC
      AC00ACACAC00AEAEAE00B0B0B000A7A7A700F2F2F200FDFDFD00000000000000
      00000000000000000000000000000000000094949400B7B7B7009E9E9E00A7A7
      A700BFBFBF00BCBCBC00BDBDBD00BDBDBD00BCBCBC00BCBCBC00BCBCBC00BBBB
      BB00BBBBBB00BBBBBB00BABABA00BABABA00BABABA00B9B9B900B9B9B900B8B8
      B800B8B8B800B8B8B800B7B7B700B7B7B700B8B8B800B8B8B800BFBFBF00A7A7
      A700A2A2A200B7B7B700949494000000000000000000FBFBFB00F0F0F000ECEC
      EC00F9F9F90000000000F1F1F100BCBCBC00BABABA00BBBBBB00B8B8B800B8B8
      B800B6B6B600B6B6B600B4B4B400A3A3A300AAAAAA00B2B2B200AEAEAE00AEAE
      AE00ACACAC00ABABAB00ABABAB00A8A8A800B0B0B000EBEBEB00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F8F8F800A7A7A700BFBFBF00B0B0B000AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00A9A9A900A7A7A700BBBBBB00ABABAB00ABABAB00ABAB
      AB00ACACAC00ACACAC00AEAEAE00B0B0B000A7A7A700F2F2F200FDFDFD000000
      00000000000000000000000000000000000094949400B7B7B7009F9F9F00A7A7
      A700BFBFBF00BCBCBC00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700B9B9B900BFBFBF00A7A7
      A700A3A3A300B7B7B700949494000000000000000000DFDFDF00BCBCBC00C0C0
      C000C1C1C100CECECE00BABABA00BABABA00BEBEBE00BBBBBB00BBBBBB00B8B8
      B800B8B8B800B8B8B800B5B5B500B6B6B600B3B3B300B2B2B200B1B1B100AFAF
      AF00AFAFAF00ADADAD00ACACAC00ACACAC00A4A4A400CCCCCC00F8F8F800F2F2
      F200F2F2F200F2F2F200F1F1F100FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F8F8F800A7A7A700BFBFBF00B0B0B000AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00A9A9A900A7A7A700BBBBBB00ABABAB00ABABAB00ABAB
      AB00ABABAB00ACACAC00ACACAC00AEAEAE00B0B0B000A7A7A700F2F2F200FDFD
      FD000000000000000000000000000000000094949400B7B7B700A0A0A000A7A7
      A700BFBFBF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BCBCBC00BCBCBC00BCBCBC00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00B9B9B900B9B9B900B9B9B900BFBFBF00A7A7
      A700A4A4A400B7B7B7009494940000000000FDFDFD00CDCDCD00BABABA00BCBC
      BC00BCBCBC00B9B9B900BCBCBC00C0C0C000BDBDBD00BDBDBD00BBBBBB00BBBB
      BB00B8B8B800B7B7B700BDBDBD00C5C5C500C1C1C100B9B9B900B4B4B400B1B1
      B100AFAFAF00AFAFAF00ADADAD00ADADAD00AAAAAA00A2A2A200ACACAC00AAAA
      AA00AAAAAA00A7A7A700C9C9C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F8F8F800A7A7A700BFBFBF00B0B0B000AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00A9A9A900A7A7A700BBBBBB00ABABAB00ABABAB00ABAB
      AB00ABABAB00ABABAB00ACACAC00ACACAC00AEAEAE00B0B0B000A7A7A700F2F2
      F200FDFDFD0000000000000000000000000094949400B7B7B700A1A1A100A7A7
      A700BFBFBF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BCBCBC00BCBCBC00BCBCBC00BBBBBB00BBBB
      BB00BBBBBB00BABABA00BABABA00B9B9B900B9B9B900B9B9B900BFBFBF00A7A7
      A700A4A4A400B7B7B7009494940000000000E0E0E000BEBEBE00BCBCBC00BEBE
      BE00BFBFBF00BFBFBF00BFBFBF00BEBEBE00C0C0C000BEBEBE00BEBEBE00B8B8
      B800BCBCBC00E1E1E100F2F2F200FAFAFA00F5F5F500E6E6E600C7C7C700B6B6
      B600B1B1B100B0B0B000AFAFAF00ADADAD00ADADAD00ABABAB00A8A8A800A7A7
      A700A7A7A700A2A2A200B6B6B600F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F8F8
      F800A7A7A700BFBFBF00B0B0B000AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00A9A9A900A7A7A700BBBBBB00AFAFAF00ACACAC00ABAB
      AB00ABABAB00ABABAB00ABABAB00ACACAC00ACACAC00AEAEAE00B0B0B000A7A7
      A700F2F2F200FDFDFD00000000000000000094949400B7B7B700A2A2A200A7A7
      A700BFBFBF00BEBEBE00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700BABABA00BFBFBF00A7A7
      A700A5A5A500B7B7B7009494940000000000CCCCCC00B7B7B700BABABA00BABA
      BA00BBBBBB00BDBDBD00BEBEBE00BDBDBD00BEBEBE00C0C0C000B9B9B900B8B8
      B800F2F2F2000000000000000000000000000000000000000000F8F8F800CCCC
      CC00B6B6B600B1B1B100B0B0B000B0B0B000ADADAD00AEAEAE00ACACAC00ABAB
      AB00ACACAC00A8A8A800ABABAB00E9E9E9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F8F8F800A7A7
      A700BFBFBF00B1B1B100AEAEAE00B0B0B000B1B1B100B2B2B200B3B3B300B3B3
      B300B3B3B300B1B1B100AEAEAE00A7A7A700BBBBBB00B5B5B500B3B3B300B0B0
      B000ADADAD00ABABAB00ABABAB00ABABAB00ACACAC00ACACAC00AEAEAE00B0B0
      B000A7A7A700F2F2F200FDFDFD000000000094949400B7B7B700A3A3A300A7A7
      A700BFBFBF00BEBEBE00BFBFBF00BFBFBF00BFBFBF00BDBDBD00BDBDBD00BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BBBBBB00BBBB
      BB00BBBBBB00BABABA00BABABA00BABABA00BABABA00BABABA00BFBFBF00A7A7
      A700A6A6A600B7B7B7009494940000000000BDBDBD00B9B9B900BABABA00B9B9
      B900BBBBBB00BCBCBC00BCBCBC00BCBCBC00BEBEBE00BFBFBF00AFAFAF00EAEA
      EA0000000000FDFDFD00000000000000000000000000FEFEFE0000000000F3F3
      F300BFBFBF00B4B4B400B2B2B200B0B0B000AFAFAF00AEAEAE00ADADAD00ACAC
      AC00ABABAB00ABABAB00A1A1A100E0E0E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00A7A7A700BFBF
      BF00B5B5B500B5B5B500B6B6B600B6B6B600B5B5B500B5B5B500B4B4B400B4B4
      B400B3B3B300B3B3B300B0B0B000A7A7A700BCBCBC00B6B6B600B5B5B500B4B4
      B400B3B3B300AFAFAF00ACACAC00ABABAB00ABABAB00ACACAC00ACACAC00AEAE
      AE00B0B0B000A7A7A700F7F7F7000000000094949400B7B7B700A4A4A400A7A7
      A700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BDBDBD00BDBDBD00BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BBBBBB00BBBB
      BB00BBBBBB00BABABA00BABABA00BABABA00BABABA00BABABA00BFBFBF00A7A7
      A700A7A7A700B7B7B7009494940000000000C3C3C300B7B7B700B8B8B800BBBB
      BB00B9B9B900BABABA00BCBCBC00BCBCBC00BFBFBF00B6B6B600B8B8B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D6D600B7B7B700B5B5B500B3B3B300B1B1B100B0B0B000AFAFAF00ADAD
      AD00ACACAC00AFAFAF00A1A1A100CACACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F900A9A9A900BFBF
      BF00B9B9B900B7B7B700B6B6B600B6B6B600B6B6B600B5B5B500B5B5B500B4B4
      B400B4B4B400B3B3B300B1B1B100A7A7A700BCBCBC00B7B7B700B6B6B600B5B5
      B500B5B5B500B3B3B300B0B0B000ADADAD00ABABAB00ABABAB00ACACAC00ACAC
      AC00AEAEAE00A7A7A700F6F6F6000000000094949400B7B7B700A6A6A600A7A7
      A700BFBFBF00BFBFBF00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700BABABA00BFBFBF00A7A7
      A700A8A8A800B7B7B7009494940000000000F9F9F900E2E2E200BBBBBB00B7B7
      B700B9B9B900BBBBBB00B8B8B800B4B4B400C0C0C000AEAEAE00C8C8C8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5E5E500B9B9B900B5B5B500B0B0B000B5B5B500B1B1B100AFAFAF00B0B0
      B000AEAEAE00A7A7A700A9A9A900E8E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFB00A9A9A900BFBF
      BF00B9B9B900B7B7B700B7B7B700B6B6B600B6B6B600B6B6B600B5B5B500B5B5
      B500B4B4B400B4B4B400B1B1B100A7A7A700BCBCBC00B7B7B700B7B7B700B6B6
      B600B5B5B500B4B4B400B3B3B300B1B1B100ADADAD00ABABAB00ABABAB00ACAC
      AC00AAAAAA00A7A7A700F9F9F9000000000094949400B7B7B700B1B1B100A7A7
      A700BFBFBF00BFBFBF00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BDBDBD00BDBD
      BD00BDBDBD00BCBCBC00BCBCBC00BCBCBC00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BABABA00BABABA00BABABA00B9B9B900B9B9B900BABABA00BFBFBF00A7A7
      A700A9A9A900B7B7B70094949400000000000000000000000000F2F2F200CBCB
      CB00B7B7B700BABABA00B5B5B5009C9C9C00B6B6B600ABABAB00C9C9C9000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000E6E6E600B7B7B700B7B7B7009F9F9F00ABABAB00B5B5B500B3B3B300AEAE
      AE00A7A7A700C8C8C800F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F8F8F800A9A9
      A900BFBFBF00B9B9B900B7B7B700B7B7B700B6B6B600B6B6B600B6B6B600B5B5
      B500B5B5B500B4B4B400B2B2B200A9A9A900BCBCBC00B8B8B800B7B7B700B7B7
      B700B6B6B600B5B5B500B4B4B400B3B3B300B1B1B100ADADAD00ABABAB00AAAA
      AA00CACACA00A7A7A700FBFBFB000000000094949400B7B7B700B1B1B100A7A7
      A700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BDBDBD00BDBDBD00BDBDBD00BCBCBC00BCBCBC00BCBCBC00BFBFBF00A7A7
      A700AAAAAA00B7B7B7009494940000000000000000000000000000000000FEFE
      FE00C5C5C500B7B7B700B9B9B900B1B1B100BABABA00ADADAD00B8B8B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00B8B8B800BBBBBB00B2B2B200B2B2B200B7B7B700AEAEAE00B7B7
      B700EAEAEA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F8F8
      F800A9A9A900BFBFBF00B9B9B900B7B7B700B7B7B700B6B6B600B6B6B600B8B8
      B800B5B5B500B5B5B500B4B4B400B1B1B100A9A9A900BCBCBC00B8B8B800B7B7
      B700B6B6B600B6B6B600B5B5B500B4B4B400B3B3B300B0B0B000AAAAAA00CACA
      CA00CDCDCD00A7A7A700FBFBFB000000000094949400B7B7B700B2B2B200A7A7
      A700BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00A7A7
      A700ACACAC00B7B7B70094949400000000000000000000000000000000000000
      0000DADADA00B8B8B800B9B9B900B9B9B900BBBBBB00B5B5B5009F9F9F00F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000C1C1C100B8B8B800BABABA00B9B9B900B8B8B800B8B8B800ACACAC00DEDE
      DE0000000000FEFEFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F8F8F800A9A9A900BFBFBF00B9B9B900B7B7B700B7B7B700B9B9B900BFBF
      BF00B8B8B800B5B5B500B5B5B500B4B4B400B1B1B100A9A9A900BCBCBC00B8B8
      B800B7B7B700B6B6B600B6B6B600B5B5B500B4B4B400B1B1B100C9C9C900CDCD
      CD00CECECE00A7A7A700FBFBFB000000000094949400B7B7B700B2B2B200A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700AEAEAE00B7B7B70094949400000000000000000000000000000000000000
      0000EDEDED00B8B8B800B8B8B800B6B6B600B8B8B800BCBCBC00A2A2A200B1B1
      B100FAFAFA00000000000000000000000000FEFEFE000000000000000000D7D7
      D700B2B2B200BEBEBE00BBBBBB00B9B9B900B9B9B900B7B7B700AFAFAF00D9D9
      D900F8F8F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F8F8F800A9A9A900BFBFBF00B9B9B900B9B9B900BFBFBF00A9A9
      A900BFBFBF00B8B8B800B5B5B500B5B5B500B4B4B400B1B1B100A9A9A900BCBC
      BC00B8B8B800B7B7B700B6B6B600B5B5B500B2B2B200C7C7C700CACACA00CDCD
      CD00CECECE00A7A7A700FBFBFB000000000094949400B7B7B700B2B2B200B3B3
      B300B4B4B400B4B4B400B5B5B500B5B5B500B5B5B500B5B5B500B4B4B400B2B2
      B200B0B0B000AEAEAE00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ACAC
      AC00ACACAC00ACACAC00ACACAC00ADADAD00ADADAD00ACACAC00ACACAC00ACAC
      AC00AFAFAF00B7B7B70094949400000000000000000000000000000000000000
      0000D1D1D100B5B5B500B6B6B600B6B6B600B6B6B600B9B9B900B7B7B7009797
      9700B1B1B100F0F0F00000000000000000000000000000000000D5D5D500AEAE
      AE00BEBEBE00BEBEBE00BCBCBC00BBBBBB00B9B9B900BABABA00B5B5B500B4B4
      B400E6E6E600F8F8F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F8F8F800A9A9A900BFBFBF00BFBFBF00A9A9A900F3F3
      F300A9A9A900BFBFBF00B8B8B800B5B5B500B5B5B500B4B4B400B1B1B100A9A9
      A900BCBCBC00B7B7B700B7B7B700B4B4B400C5C5C500C8C8C800C9C9C900CCCC
      CC00CECECE00A7A7A700FBFBFB000000000094949400B7B7B700B2B2B200B3B3
      B300B3B3B300B3B3B3009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E00ADADAD00ACACAC00ACAC
      AC00AFAFAF00B7B7B7009494940000000000000000000000000000000000DDDD
      DD00B6B6B600B4B4B400B5B5B500B5B5B500B7B7B700B6B6B600B9B9B900B7B7
      B7009E9E9E009C9C9C00BBBBBB00C9C9C900C3C3C300B1B1B100ABABAB00BDBD
      BD00C0C0C000BEBEBE00BEBEBE00BCBCBC00BCBCBC00BBBBBB00BBBBBB00B3B3
      B300BBBBBB00EAEAEA00FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F8F8F800A9A9A900A9A9A900F8F8F800FDFD
      FD00F8F8F800A9A9A900BFBFBF00B8B8B800B5B5B500B5B5B500B4B4B400B1B1
      B100A9A9A900BCBCBC00B5B5B500C5C5C500C7C7C700C8C8C800C8C8C800CBCB
      CB00CECECE00A7A7A700FBFBFB000000000094949400B7B7B700B3B3B300B3B3
      B300B3B3B300B3B3B3009E9E9E00A6A6A600A9A9A900A9A9A900AAAAAA00ABAB
      AB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B4B4B4009E9E9E00B0B0B000ADADAD00ADAD
      AD00B1B1B100B7B7B7009494940000000000FEFEFE0000000000E8E8E800B8B8
      B800B2B2B200B4B4B400B3B3B300B4B4B400B5B5B500B6B6B600B6B6B600B8B8
      B800BBBBBB00B2B2B200A8A8A800A6A6A600ACACAC00B6B6B600BEBEBE00BEBE
      BE00BDBDBD00BFBFBF00BFBFBF00BEBEBE00BCBCBC00BBBBBB00BBBBBB00BBBB
      BB00B1B1B100C2C2C200F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FBFBFB00FBFBFB00FEFEFE000000
      0000FEFEFE00F8F8F800A9A9A900BFBFBF00B8B8B800B5B5B500B5B5B500B4B4
      B400B1B1B100A9A9A900CACACA00C6C6C600C7C7C700C8C8C800C8C8C800CACA
      CA00CECECE00A7A7A700FBFBFB000000000094949400B7B7B700B4B4B400B4B4
      B400B4B4B400B4B4B4009E9E9E00A8A8A800AAAAAA00ABABAB00ACACAC00ADAD
      AD00AEAEAE00AFAFAF00AFAFAF00B0B0B000B1B1B100B3B3B300A8A8A8009898
      98009292920088888800A2A2A200B7B7B7009E9E9E00B6B6B600B3B3B300B3B3
      B300B7B7B700B7B7B700949494000000000000000000F8F8F800C1C1C100B2B2
      B200B3B3B300B2B2B200B4B4B400B3B3B300B5B5B500B6B6B600B7B7B700B6B6
      B600B8B8B800BABABA00BCBCBC00BCBCBC00BEBEBE00BDBDBD00BCBCBC00BCBC
      BC00BEBEBE00BEBEBE00BFBFBF00BFBFBF00BEBEBE00BDBDBD00BBBBBB00BEBE
      BE00B4B4B400BFBFBF0000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F8F8F800A9A9A900BFBFBF00B8B8B800B5B5B500B5B5
      B500A7A7A700F2F2F200A9A9A900CCCCCC00C6C6C600C8C8C800C9C9C900CACA
      CA00CECECE00A7A7A700FBFBFB000000000094949400B7B7B700B4B4B400B4B4
      B400B4B4B400B4B4B4009E9E9E00A7A7A700AAAAAA00ABABAB00ACACAC00ADAD
      AD00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1B100B3B3B300A9A9A9009999
      9900959595008C8C8C00A3A3A300B6B6B6009E9E9E00B7B7B700B4B4B400B4B4
      B400B9B9B900B7B7B7009494940000000000FEFEFE0000000000E2E2E200B7B7
      B700B2B2B200B2B2B200B2B2B200B3B3B300B3B3B300B3B3B300B6B6B600B6B6
      B600B6B6B600B8B8B800B8B8B800A0A0A000ABABAB00BCBCBC00BABABA00BCBC
      BC00BEBEBE00BDBDBD00BEBEBE00C1C1C100C0C0C000BFBFBF00BFBFBF00BABA
      BA00B6B6B600F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00F8F8F800A9A9A900BFBFBF00BFBFBF00A7A7
      A700F8F8F800FDFDFD00F9F9F900A9A9A900CCCCCC00C8C8C800C9C9C900CBCB
      CB00CECECE00A7A7A700FBFBFB000000000094949400B7B7B700B5B5B500B5B5
      B500B5B5B500B5B5B5009E9E9E00A7A7A700AAAAAA00ABABAB00ACACAC00ADAD
      AD00AEAEAE00AFAFAF00AFAFAF00B0B0B000B1B1B100B3B3B300A9A9A9009999
      9900949494008B8B8B00A3A3A300B6B6B6009E9E9E00B7B7B700B4B4B400B5B5
      B500B9B9B900B7B7B7009494940000000000000000000000000000000000D7D7
      D700B4B4B400B2B2B200B2B2B200B1B1B100B5B5B500BCBCBC00B6B6B600B4B4
      B400B6B6B600B6B6B600B7B7B700ACACAC00AFAFAF00BABABA00BABABA00BBBB
      BB00BBBBBB00B9B9B900B9B9B900BABABA00BEBEBE00C1C1C100C0C0C000B5B5
      B500EDEDED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F8F8F800A9A9A900A7A7A700F8F8
      F800FEFEFE000000000000000000F9F9F900A9A9A900CCCCCC00CACACA00CCCC
      CC00CECECE00A7A7A700FBFBFB000000000094949400B7B7B700B5B5B500B7B7
      B700B5B5B500B5B5B5009E9E9E00A7A7A700AAAAAA00ABABAB00ACACAC00ADAD
      AD00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1B100B3B3B300A9A9A9009999
      9900949494008B8B8B00A3A3A300B6B6B6009E9E9E00B8B8B800B5B5B500B6B6
      B600B9B9B900B7B7B7009494940000000000000000000000000000000000FCFC
      FC00CCCCCC00B3B3B300B4B4B400C4C4C400E4E4E400F4F4F400DDDDDD00BFBF
      BF00B5B5B500B6B6B600B6B6B600B8B8B800B9B9B900B9B9B900BABABA00B7B7
      B700C6C6C600E5E5E500F3F3F300D6D6D600BBBBBB00BABABA00B5B5B500DBDB
      DB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FBFBFB00FBFBFB00FEFE
      FE0000000000000000000000000000000000F9F9F900A9A9A900CCCCCC00B4B4
      B400CECECE00A7A7A700FBFBFB000000000094949400B7B7B700B8B8B800B6B6
      B600B7B7B700B6B6B6009E9E9E00A7A7A700AAAAAA00ABABAB00ACACAC00ADAD
      AD00ADADAD00AFAFAF00AFAFAF00B0B0B000B1B1B100B3B3B300A9A9A9009999
      9900949494008B8B8B00A3A3A300B6B6B6009E9E9E00B8B8B800B6B6B600B5B5
      B500BABABA00B7B7B70094949400000000000000000000000000000000000000
      0000F5F5F500CDCDCD00E3E3E300FAFAFA00000000000000000000000000E2E2
      E200B7B7B700B4B4B400B6B6B600B5B5B500B6B6B600B8B8B800B9B9B900C2C2
      C200FBFBFB00000000000000000000000000F6F6F600D6D6D600D5D5D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F9F900A9A9A900CCCC
      CC00B4B4B400A7A7A700FBFBFB000000000094949400B8B8B800B8B8B800BBBB
      BB00BABABA00BABABA009E9E9E00A7A7A700ABABAB00ABABAB00ACACAC00ADAD
      AD00AEAEAE00AFAFAF00AFAFAF00B0B0B000B1B1B100B3B3B300A9A9A9009999
      9900959595008C8C8C00A5A5A500B6B6B6009E9E9E00BCBCBC00B9B9B900BABA
      BA00BCBCBC00B8B8B80094949400FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F8
      F800BBBBBB00B2B2B200B5B5B500B5B5B500B6B6B600B8B8B800B7B7B700D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F900A9A9
      A900CCCCCC00A7A7A700FAFAFA0000000000FFFFFF0094949400B8B8B800B8B8
      B800B8B8B800B8B8B8009E9E9E00A7A7A700AAAAAA00ABABAB00ACACAC00ADAD
      AD00AEAEAE00AFAFAF00AFAFAF00B0B0B000B1B1B100B3B3B300A8A8A8009898
      98009292920087878700A1A1A100B7B7B7009E9E9E00B8B8B800B8B8B800B8B8
      B800B8B8B80094949400FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC00B3B3B300B3B3B300B3B3B300B5B5B500B6B6B600B9B9B900E6E6
      E600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900A9A9A900A7A7A700FBFBFB0000000000FFFFFF00FFFFFF00949494009494
      940094949400949494009E9E9E00A8A8A800ABABAB00ABABAB00ACACAC00ADAD
      AD00AEAEAE00AFAFAF00AFAFAF00B0B0B000B1B1B100B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B6B6B6009E9E9E0094949400949494009494
      940094949400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1E1E100B6B6B600B6B6B600B5B5B500B6B6B600B6B6B600C8C8C800FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00FBFBFB00FEFEFE0000000000FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E
      9E009E9E9E009E9E9E009E9E9E009E9E9E009E9E9E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F200CACACA00C9C9C900C6C6C600C0C0C000BFBFBF00DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00DDDDDD00B6B6B600A1A1A1009E9E9E009F9F
      9F009E9E9E009E9E9E009D9D9D00A1A1A100B8B8B800D6D6D600F0F0F0000000
      00000000000000000000FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00DDDDDD00B6B6B600A1A1A1009E9E9E009F9F
      9F009E9E9E009E9E9E009D9D9D00A1A1A100B8B8B800ABABAB00ABABAB00ABAB
      AB00ABABAB00ABABAB00ABABAB00ABABAB00A2A2A200ABABAB00ABABAB00ABAB
      AB00ABABAB00ABABAB00ABABAB00000000000000000000000000000000000000
      00000000000000000000FCFCFC00DDDDDD00B6B6B600A1A1A1009E9E9E009F9F
      9F009E9E9E009E9E9E009D9D9D00A1A1A100B8B8B800D6D6D600F0F0F0000000
      00000000000000000000FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA0000000000000000000000000000000000000000000000
      000000000000D6D6D600ABABAB00A0A0A000A1A1A100A2A2A200A2A2A200A2A2
      A200A1A1A100A0A0A0009F9F9F009E9E9E009D9D9D009C9C9C009C9C9C00B1B1
      B100CFCFCF00F0F0F00095959500959595009595950095959500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6D6D600ABABAB00A0A0A000A1A1A100A2A2A200A2A2A200A2A2
      A200A1A1A100A0A0A0009F9F9F009E9E9E009D9D9D00ABABAB00BDBDBD00BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00BCBCBC009E9E9E00BBBBBB00BBBBBB00BABA
      BA00BABABA00BABABA00ABABAB00000000000000000000000000000000000000
      000000000000D6D6D600ABABAB00A0A0A000A1A1A100A2A2A200A2A2A200A2A2
      A200A1A1A100A0A0A0009F9F9F009E9E9E009D9D9D009C9C9C009C9C9C00B1B1
      B100CFCFCF00F0F0F00000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800EAEAEA00FEFEFE0000000000000000000000000000000000F9F9
      F900C0C0C000A0A0A000A3A3A300A6A6A600A5A5A500A5A5A500A4A4A400A4A4
      A400A2A2A200A3A3A300A1A1A100A1A1A1009F9F9F009E9E9E009D9D9D009A9A
      9A009A9A9A00A2A2A20095959500979797009696960095959500000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F900C0C0C000A0A0A000A3A3A300A6A6A600A5A5A500A5A5A500A4A4A400A4A4
      A400A2A2A200A3A3A300A1A1A100A1A1A1009F9F9F00ABABAB00BDBDBD00AEAE
      AE00AEAEAE00AEAEAE00AEAEAE00BBBBBB00B4B4B400B3B3B300BABABA00BABA
      BA00BABABA00BABABA00ABABAB0000000000000000000000000000000000F9F9
      F900C0C0C000A0A0A000A3A3A300A6A6A600A5A5A500A5A5A500A4A4A400A4A4
      A400A2A2A200A3A3A300A1A1A100A1A1A1009F9F9F009E9E9E009D9D9D009A9A
      9A009A9A9A00A2A2A200C2C2C200F2F2F2000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00A8A8A800EAEAEA00FEFEFE000000000000000000FEFEFE0000000000D8D8
      D800A1A1A100A8A8A800A8A8A800A6A6A600A7A7A700A6A6A600A6A6A600A5A5
      A500A4A4A400A3A3A300A2A2A200A1A1A100A1A1A1009E9E9E009E9E9E009D9D
      9D009C9C9C009898980095959500979797009797970095959500000000000000
      00000000000000000000000000000000000000000000FEFEFE0000000000D8D8
      D800A1A1A100A8A8A800A8A8A800A6A6A600A7A7A700A6A6A600A6A6A600A5A5
      A500A4A4A400A3A3A300A2A2A200A1A1A100A1A1A100ABABAB00BDBDBD00BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00BBBBBB00AEAEAE00A5A5A500BBBBBB00BABA
      BA00BABABA00BABABA00ABABAB000000000000000000FEFEFE0000000000D8D8
      D800A1A1A100A8A8A800A8A8A800A6A6A600A7A7A700A6A6A600A6A6A600A5A5
      A500A4A4A400A3A3A300A2A2A200A1A1A100A1A1A1009E9E9E009E9E9E009D9D
      9D009C9C9C009898980099999900A3A3A300D8D8D80000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00B8B8B800B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B7B7B700BFBF
      BF00A8A8A800EAEAEA00FEFEFE0000000000000000000000000000000000DEDE
      DE00A4A4A400A8A8A800A8A8A800A9A9A900A8A8A800A8A8A800A7A7A700A7A7
      A700A6A6A600A5A5A500A4A4A400A3A3A300A1A1A100A0A0A0009F9F9F009D9D
      9D009C9C9C009A9A9A0095959500999999009898980095959500FEFEFE000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00A4A4A400A8A8A800A8A8A800A9A9A900A8A8A800A8A8A800A7A7A700A7A7
      A700A6A6A600A5A5A500A4A4A400A3A3A300A1A1A100ABABAB00BDBDBD00AEAE
      AE00AEAEAE00AEAEAE00AEAEAE00BCBCBC00B0B0B00095959500BABABA00BABA
      BA00BABABA00BABABA00ABABAB0000000000000000000000000000000000DEDE
      DE00A4A4A400A8A8A800A8A8A800A9A9A900A8A8A800A8A8A800A7A7A700A7A7
      A700A6A6A600A5A5A500A4A4A400A3A3A300A1A1A100A0A0A0009F9F9F009D9D
      9D009C9C9C009A9A9A009A9A9A00999999009A9A9A00CECECE00FEFEFE000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00B9B9B900B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B6B6B600B7B7B700B7B7B700B6B6B600B6B6B600B9B9B900BFBF
      BF00A8A8A800EAEAEA00FEFEFE0000000000000000000000000000000000E7E7
      E700A6A6A600A9A9A900ABABAB00A9A9A900AAAAAA00AAAAAA00A9A9A900A8A8
      A800A7A7A700A6A6A600A5A5A500A4A4A400A2A2A200A1A1A1009F9F9F009D9D
      9D009C9C9C009A9A9A00959595009A9A9A009999990095959500EBEBEB000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700A6A6A600A9A9A900ABABAB00A9A9A900AAAAAA00AAAAAA00A9A9A900A8A8
      A800A7A7A700A6A6A600A5A5A500A4A4A400A2A2A200ABABAB00BDBDBD00BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00BBBBBB00B7B7B70099999900ADADAD00BABA
      BA00BABABA00BABABA00ABABAB0000000000000000000000000000000000E7E7
      E700A6A6A600A9A9A900ABABAB00A9A9A900AAAAAA00AAAAAA00A9A9A900A8A8
      A800A7A7A700A6A6A600A5A5A500A4A4A400A2A2A200A1A1A1009F9F9F009D9D
      9D009C9C9C009A9A9A00989898009A9A9A00999999009B9B9B00EBEBEB000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00B9B9B900B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B6B6B600B9B9B900BFBF
      BF00A8A8A800EAEAEA00FEFEFE0000000000000000000000000000000000E8E8
      E800A6A6A600ABABAB00ACACAC00ABABAB00ACACAC00ABABAB00ABABAB00AAAA
      AA00A9A9A900A8A8A800A6A6A600A5A5A500A3A3A3009C9C9C00A0A0A0009999
      990095959500959595009B9B9B009A9A9A009A9A9A0099999900959595009595
      950095959500959595009595950000000000000000000000000000000000E8E8
      E800A6A6A600ABABAB00ACACAC00ABABAB00ACACAC00ABABAB00ABABAB00AAAA
      AA00A9A9A900A8A8A800A6A6A600A5A5A500A3A3A300ABABAB00BDBDBD00AEAE
      AE00AEAEAE00AEAEAE00AEAEAE00BBBBBB00BBBBBB00A2A2A200A0A0A000BABA
      BA00BABABA00BABABA00ABABAB0000000000000000000000000000000000E8E8
      E800A6A6A600ABABAB00ACACAC00ABABAB00ACACAC00ABABAB00ABABAB00AAAA
      AA00A9A9A900A8A8A800A6A6A600A5A5A500A3A3A300A2A2A2008F8F8F008F8F
      8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F
      8F008F8F8F008F8F8F0000000000FBFBFB0000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BABABA00B7B7B700B7B7B700B8B8B800B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700BABABA00BFBF
      BF00A8A8A800EAEAEA00FEFEFE0000000000000000000000000000000000F1F1
      F100AAAAAA00ACACAC00ADADAD00ADADAD00ADADAD00ADADAD00ACACAC00ACAC
      AC00ABABAB00A9A9A900A7A7A700A6A6A600A4A4A400A2A2A200ADADAD00A8A8
      A800A0A0A0009A9A9A009B9B9B009B9B9B009A9A9A009A9A9A00999999009898
      980098989800979797009595950000000000000000000000000000000000F1F1
      F100AAAAAA00ACACAC00ADADAD00ADADAD00ADADAD00ADADAD00ACACAC00ACAC
      AC00ABABAB00A9A9A900A7A7A700A6A6A600A4A4A400ABABAB00BDBDBD00BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00BBBBBB00BBBBBB00ABABAB0098989800BABA
      BA00BABABA00BABABA00ABABAB0000000000000000000000000000000000F1F1
      F100AAAAAA00ACACAC00ADADAD00ADADAD00ADADAD00ADADAD00ACACAC00ACAC
      AC00ABABAB00A9A9A900A7A7A700A6A6A600A4A4A400A3A3A3008F8F8F00A0A0
      A000919191009191910091919100919191009191910091919100919191009191
      9100A0A0A0008F8F8F00000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BABABA00B8B8B800B8B8B800B8B8B800B8B8B800B8B8
      B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8
      B800B8B8B800B8B8B800B8B8B800B7B7B700B7B7B700B7B7B700BABABA00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000AEAEAE00ADADAD00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AEAEAE00ADAD
      AD00ACACAC00AAAAAA00A9A9A900A7A7A700A5A5A500A5A5A500AEAEAE00AEAE
      AE00ACACAC00A5A5A5009F9F9F009B9B9B009B9B9B009A9A9A009A9A9A009999
      9900989898009898980095959500000000000000000000000000000000000000
      0000AEAEAE00ADADAD00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AEAEAE00ADAD
      AD00ACACAC00AAAAAA00A9A9A900A7A7A700A5A5A500ABABAB00BDBDBD00AEAE
      AE00AEAEAE00AEAEAE00AEAEAE00BCBCBC00BBBBBB00B4B4B40097979700B3B3
      B300BABABA00BABABA00ABABAB00000000000000000000000000000000000000
      0000AEAEAE00ADADAD00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AEAEAE00ADAD
      AD00ACACAC00AAAAAA00A9A9A900A7A7A700A5A5A500A3A3A3008F8F8F00B1B1
      B100ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00B1B1B1008F8F8F00000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BBBBBB00B8B8B800B8B8B800B8B8B800B8B8B800B8B8
      B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8
      B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800BABABA00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000BBBBBB00ACACAC00B2B2B200B1B1B100B1B1B100B0B0B000AFAFAF00AEAE
      AE00ACACAC00ABABAB00A9A9A900A6A6A600A7A7A700A1A1A100A1A1A100A1A1
      A100A1A1A100A3A3A300ABABAB00A8A8A800A4A4A400A0A0A000979797009696
      9600959595009595950096969600000000000000000000000000000000000000
      0000BBBBBB00ACACAC00B2B2B200B1B1B100B1B1B100B0B0B000AFAFAF00AEAE
      AE00ACACAC00ABABAB00A9A9A900A6A6A600A7A7A700ABABAB00BDBDBD00BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BBBBBB00BBBBBB009C9C9C00A8A8
      A800BABABA00BABABA00ABABAB00000000000000000000000000000000000000
      0000BBBBBB00ACACAC00B2B2B200B1B1B100B1B1B100B0B0B000AFAFAF00AEAE
      AE00ACACAC00ABABAB00A9A9A900A6A6A600A7A7A700A8A8A8008F8F8F008F8F
      8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F8F008F8F
      8F008F8F8F008F8F8F00000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BBBBBB00B8B8B800B9B9B900B9B9B900B8B8B800B9B9
      B900B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8
      B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800BBBBBB00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000D2D2D200A8A8A800B4B4B400B1B1B100B3B3B300B2B2B200B1B1B100AFAF
      AF00ADADAD00ABABAB00A9A9A900B1B1B100BDBDBD00BFBFBF00BEBEBE00ABAB
      AB009D9D9D009E9E9E00A3A3A300ADADAD00ADADAD00A4A4A400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D2D2D200A8A8A800B4B4B400B1B1B100B3B3B300B2B2B200B1B1B100AFAF
      AF00ADADAD00ABABAB00A9A9A900B1B1B100BDBDBD00ABABAB00BDBDBD00BBBB
      BB00B8B8B800BCBCBC00B6B6B600BABABA00B8B8B800B4B4B400A9A9A9009898
      9800BABABA00BABABA00ABABAB00000000000000000000000000000000000000
      0000D2D2D200A8A8A800B4B4B400B1B1B100B3B3B300B2B2B200B1B1B100AFAF
      AF00ADADAD00ABABAB00A9A9A900B1B1B100BDBDBD00BFBFBF00BEBEBE00ABAB
      AB009D9D9D009E9E9E009C9C9C009A9A9A009A9A9A00BEBEBE00000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BBBBBB00B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B8B8B800B8B8B800BBBBBB00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000EFEFEF00A8A8A800B2B2B200B3B3B300B3B3B300B3B3B300B1B1B100AFAF
      AF00ADADAD00ADADAD00B9B9B900BFBFBF00BABABA00B3B3B300B8B8B800BFBF
      BF00A5A5A5009C9C9C00A0A0A000AFAFAF00AEAEAE00A5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF00A8A8A800B2B2B200B3B3B300B3B3B300B3B3B300B1B1B100AFAF
      AF00ADADAD00ADADAD00B9B9B900BFBFBF00BABABA00ABABAB00BDBDBD00AFAF
      AF00A7A7A700ADADAD00A5A5A500AEAEAE00A5A5A500A5A5A500AAAAAA009595
      9500B6B6B600BABABA00ABABAB00000000000000000000000000000000000000
      0000EFEFEF00A8A8A800B2B2B200B3B3B300B3B3B300B3B3B300B1B1B100AFAF
      AF00ADADAD00ADADAD00B9B9B900BFBFBF00BABABA00B3B3B300B8B8B800BFBF
      BF00A5A5A5009C9C9C009B9B9B009B9B9B009A9A9A00DEDEDE00000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BCBCBC00B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900BBBBBB00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      000000000000C7C7C700AAAAAA00B7B7B700B3B3B300B2B2B200B2B2B200AFAF
      AF00AFAFAF00BCBCBC00BDBDBD00AAAAAA00A1A1A1009D9D9D009A9A9A00B7B7
      B700ACACAC009B9B9B00A0A0A000B0B0B000B0B0B000A7A7A700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7C7C700AAAAAA00B7B7B700B3B3B300B2B2B200B2B2B200AFAF
      AF00AFAFAF00BCBCBC00BDBDBD00AAAAAA00A1A1A100ABABAB00BDBDBD00AFAF
      AF00ADADAD00A9A9A9009F9F9F00AEAEAE00A5A5A500ACACAC00B2B2B2009999
      9900AAAAAA00BABABA00ABABAB00000000000000000000000000000000000000
      000000000000C7C7C700AAAAAA00B7B7B700B3B3B300B2B2B200B2B2B200AFAF
      AF00AFAFAF00BCBCBC00BDBDBD00AAAAAA00A1A1A1009D9D9D009A9A9A00B7B7
      B700ACACAC009B9B9B009D9D9D009A9A9A00ADADAD00F9F9F900000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BCBCBC00B9B9B900BABABA00B9B9B900B9B9B900B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900BCBCBC00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      000000000000FAFAFA00B8B8B800AAAAAA00B3B3B300B3B3B300B0B0B000AEAE
      AE00BBBBBB00BDBDBD00AAAAAA00A2A2A200A0A0A0009D9D9D0097979700A9A9
      A900A8A8A8009C9C9C00A1A1A100B1B1B100B1B1B100A8A8A800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA00B8B8B800AAAAAA00B3B3B300B3B3B300B0B0B000AEAE
      AE00BBBBBB00BDBDBD00AAAAAA00A2A2A200A0A0A000ABABAB00BDBDBD00AFAF
      AF00A9A9A900BABABA00AEAEAE00B6B6B600AEAEAE00AEAEAE00B5B5B5009E9E
      9E00A0A0A000BABABA00ABABAB00000000000000000000000000000000000000
      000000000000FAFAFA00B8B8B800AAAAAA00B3B3B300B3B3B300B0B0B000AEAE
      AE00BBBBBB00BDBDBD00AAAAAA00A2A2A200A0A0A0009D9D9D0097979700A9A9
      A900A8A8A8009C9C9C009C9C9C009B9B9B00DEDEDE0000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BCBCBC00BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00B9B9B900BABABA00B9B9
      B900BABABA00B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900BCBCBC00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      00000000000000000000FAFAFA00C3C3C300A6A6A600ACACAC00AFAFAF00B3B3
      B300C0C0C000B0B0B000A7A7A700A5A5A5009F9F9F009D9D9D009E9E9E009E9E
      9E009F9F9F009D9D9D009F9F9F00A7A7A700A6A6A600A3A3A300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00C3C3C300A6A6A600ACACAC00AFAFAF00B3B3
      B300C0C0C000B0B0B000A7A7A700A5A5A5009F9F9F00ABABAB00BDBDBD00BDBD
      BD00BABABA00BCBCBC00BCBCBC00BBBBBB00BBBBBB00BBBBBB00BBBBBB00B0B0
      B0009F9F9F00BABABA00ABABAB00000000000000000000000000000000000000
      00000000000000000000FAFAFA00C3C3C300A6A6A600ACACAC00AFAFAF00B3B3
      B300C0C0C000B0B0B000A7A7A700A5A5A5009F9F9F009D9D9D009E9E9E009E9E
      9E009F9F9F009D9D9D009C9C9C00CECECE000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BDBDBD00BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BCBCBC00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700BDBDBD00A3A3A300B0B0
      B000BCBCBC00ACACAC00A8A8A800A1A1A100A0A0A000A3A3A300A4A4A400A4A4
      A400A3A3A300A2A2A200D7D7D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700BDBDBD00A3A3A300B0B0
      B000BCBCBC00ACACAC00A8A8A800A1A1A100A0A0A000ABABAB00ABABAB00ABAB
      AB00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ABABAB00ACAC
      AC00AFAFAF00ABABAB00ABABAB00000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700BDBDBD00A3A3A300B0B0
      B000BCBCBC00ACACAC00A8A8A800A1A1A100A0A0A000A3A3A300A4A4A400A4A4
      A400A3A3A300A2A2A200D7D7D700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BDBDBD00BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BDBDBD00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500BCBC
      BC00B3B3B300ADADAD00A4A4A400A2A2A200A6A6A600A7A7A700A7A7A700A8A8
      A800A8A8A800A5A5A500D4D4D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500BCBC
      BC00B3B3B300ADADAD00A4A4A400A2A2A200A6A6A600A7A7A700A7A7A700A8A8
      A800A8A8A800A5A5A500D4D4D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500BCBC
      BC00B3B3B300ADADAD00A4A4A400A2A2A200A6A6A600A7A7A700A7A7A700A8A8
      A800A8A8A800A5A5A500D4D4D400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BDBDBD00BABABA00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BABABA00BBBBBB00BBBBBB00BABABA00BBBBBB00BABA
      BA00BABABA00BABABA00BABABA00BABABA00BABABA00BABABA00BDBDBD00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000A9A9A900A4A4A400A7A7A700A9A9A900A9A9A900AAAAAA00A9A9
      A900ABABAB00A7A7A700B1B1B100F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000A9A9A900A4A4A400A7A7A700A9A9A900A9A9A900AAAAAA00A9A9
      A900ABABAB00A7A7A700B1B1B100F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000A9A9A900A4A4A400A7A7A700A9A9A900A9A9A900AAAAAA00A9A9
      A900ABABAB00A7A7A700B1B1B100F9F9F9000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BEBEBE00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BABABA00BDBDBD00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000DFDFDF00A4A4A400AAAAAA00A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
      AD00ACACAC00ACACAC00A8A8A800E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000DFDFDF00A4A4A400AAAAAA00A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
      AD00ACACAC00ACACAC00A8A8A800E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      0000DFDFDF00A4A4A400AAAAAA00A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
      AD00ACACAC00ACACAC00A8A8A800E6E6E6000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BEBEBE00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BEBEBE00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00B5B5B500A7A7A700ABABAB00AAAAAA00ACACAC00ADADAD00ADADAD00AEAE
      AE00ADADAD00AEAEAE00ABABAB00D4D4D4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00B5B5B500A7A7A700ABABAB00AAAAAA00ACACAC00ADADAD00ADADAD00AEAE
      AE00ADADAD00AEAEAE00ABABAB00D4D4D4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FB00B5B5B500A7A7A700ABABAB00AAAAAA00ACACAC00ADADAD00ADADAD00AEAE
      AE00ADADAD00AEAEAE00ABABAB00D4D4D4000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BEBEBE00BBBBBB00BCBCBC00BBBBBB00BCBCBC00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BEBEBE00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BABA
      BA009E9E9E00ACACAC00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00AFAF
      AF00B0B0B000AFAFAF00ACACAC00C7C7C7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BABA
      BA009E9E9E00ACACAC00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00AFAF
      AF00B0B0B000AFAFAF00ACACAC00C7C7C7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BABA
      BA009E9E9E00ACACAC00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00AFAF
      AF00B0B0B000AFAFAF00ACACAC00C7C7C7000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BFBFBF00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BBBBBB00BEBEBE00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E4E4009696
      9600A8A8A800ABABAB00ABABAB00ACACAC00AEAEAE00AFAFAF00AFAFAF00B0B0
      B000AFAFAF00B0B0B000ADADAD00C2C2C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E4E4009696
      9600A8A8A800ABABAB00ABABAB00ACACAC00AEAEAE00AFAFAF00AFAFAF00B0B0
      B000AFAFAF00B0B0B000ADADAD00C2C2C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E4E4009696
      9600A8A8A800ABABAB00ABABAB00ACACAC00AEAEAE00AFAFAF00AFAFAF00B0B0
      B000AFAFAF00B0B0B000ADADAD00C2C2C2000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BFBFBF00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BFBFBF00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCBCBC009696
      9600ABABAB00A7A7A700AAAAAA00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
      B100B1B1B100B0B0B000AEAEAE00C2C2C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCBCBC009696
      9600ABABAB00A7A7A700AAAAAA00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
      B100B1B1B100B0B0B000AEAEAE00C2C2C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCBCBC009696
      9600ABABAB00A7A7A700AAAAAA00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
      B100B1B1B100B0B0B000AEAEAE00C2C2C2000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BFBFBF00BCBCBC00BDBDBD00BDBDBD00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BFBFBF00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9A009090
      90009B9B9B0094949400A4A4A400AEAEAE00AEAEAE00AFAFAF00B0B0B000B2B2
      B200B2B2B200B1B1B100AEAEAE00C9C9C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9A009090
      90009B9B9B0094949400A4A4A400AEAEAE00AEAEAE00AFAFAF00B0B0B000B2B2
      B200B2B2B200B1B1B100AEAEAE00C9C9C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A9A9A009090
      90009B9B9B0094949400A4A4A400AEAEAE00AEAEAE00AFAFAF00B0B0B000B2B2
      B200B2B2B200B1B1B100AEAEAE00C9C9C9000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00C0C0C000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BFBFBF00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC00929292008C8C
      8C008C8C8C008C8C8C00A2A2A200ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
      B100B1B1B100B1B1B100ADADAD00D0D0D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC00929292008C8C
      8C008C8C8C008C8C8C00A2A2A200ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
      B100B1B1B100B1B1B100ADADAD00D0D0D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECECEC00929292008C8C
      8C008C8C8C008C8C8C00A2A2A200ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
      B100B1B1B100B1B1B100ADADAD00D0D0D0000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00C0C0C000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00A8A8A800EAEAEA00FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF008E8E8E008D8D
      8D008E8E8E008C8C8C009C9C9C00ADADAD00ADADAD00AFAFAF00AFAFAF00AFAF
      AF00B0B0B000B0B0B000AEAEAE00D5D5D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF008E8E8E008D8D
      8D008E8E8E008C8C8C009C9C9C00ADADAD00ADADAD00AFAFAF00AFAFAF00AFAF
      AF00B0B0B000B0B0B000AEAEAE00D5D5D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF008E8E8E008D8D
      8D008E8E8E008C8C8C009C9C9C00ADADAD00ADADAD00AFAFAF00AFAFAF00AFAF
      AF00B0B0B000B0B0B000AEAEAE00D5D5D5000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00C0C0C000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BFBFBF00A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A80000000000FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDDDD008D8D8D008C8C
      8C008E8E8E008C8C8C0091919100A6A6A600AEAEAE00AFAFAF00B0B0B000B1B1
      B100AFAFAF00AFAFAF00ACACAC00E2E2E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDDDD008D8D8D008C8C
      8C008E8E8E008C8C8C0091919100A6A6A600AEAEAE00AFAFAF00B0B0B000B1B1
      B100AFAFAF00AFAFAF00ACACAC00E2E2E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDDDD008D8D8D008C8C
      8C008E8E8E008C8C8C0091919100A6A6A600AEAEAE00AFAFAF00B0B0B000B1B1
      B100AFAFAF00AFAFAF00ACACAC00E2E2E2000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00C1C1C100BDBDBD00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BDBDBD00BEBEBE00BEBE
      BE00BDBDBD00BFBFBF00A8A8A800BEBEBE00BEBEBE00BEBEBE00BEBEBE00A8A8
      A800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E1008F8F8F008C8C
      8C008D8D8D008C8C8C008F8F8F00939393009C9C9C00A2A2A2009C9C9C009C9C
      9C00AEAEAE00AFAFAF00AAAAAA00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E1008F8F8F008C8C
      8C008D8D8D008C8C8C008F8F8F00939393009C9C9C00A2A2A2009C9C9C009C9C
      9C00AEAEAE00AFAFAF00AAAAAA00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E1008F8F8F008C8C
      8C008D8D8D008C8C8C008F8F8F00939393009C9C9C00A2A2A2009C9C9C009C9C
      9C00AEAEAE00AFAFAF00AAAAAA00EFEFEF000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00C1C1C100BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BDBDBD00BFBFBF00A8A8A800BEBEBE00BEBEBE00BBBBBB00A8A8A8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F500929292008D8D
      8D008E8E8E009090900090909000939393009494940092929200959595009494
      9400989898009C9C9C0092929200D2D2D2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F500929292008D8D
      8D008E8E8E009090900090909000939393009494940092929200959595009494
      9400989898009C9C9C0092929200D2D2D2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F500929292008D8D
      8D008E8E8E009090900090909000939393009494940092929200959595009494
      9400989898009C9C9C0092929200D2D2D2000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00C1C1C100BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00C0C0C000A8A8A800BEBEBE00BABABA00A8A8A800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1B1B1008E8E
      8E00929292009191910092929200949494009696960096969600959595009898
      98009A9A9A009A9A9A00A0A0A000E1E1E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1B1B1008E8E
      8E00929292009191910092929200949494009696960096969600959595009898
      98009A9A9A009A9A9A00A0A0A000E1E1E1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1B1B1008E8E
      8E00929292009191910092929200949494009696960096969600959595009898
      98009A9A9A009A9A9A00A0A0A000E1E1E1000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00C1C1C100BEBEBE00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BFBFBF00A8A8A800BABABA00A8A8A80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECECEC009C9C
      9C00949494009494940094949400959595009494940092929200919191009090
      900091919100AEAEAE00E4E4E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECECEC009C9C
      9C00949494009494940094949400959595009494940092929200919191009090
      900091919100AEAEAE00E4E4E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECECEC009C9C
      9C00949494009494940094949400959595009494940092929200919191009090
      900091919100AEAEAE00E4E4E400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00A8A8A800A8A8A8000000000000000000FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0D0
      D000ABABAB00ACACAC00A0A0A0009595950092929200B4B4B400B4B4B400CFCF
      CF00000000000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0D0
      D000ABABAB00ACACAC00A0A0A0009595950092929200B4B4B400B4B4B400CFCF
      CF00000000000000000000000000FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0D0
      D000ABABAB00ACACAC00A0A0A0009595950092929200B4B4B400B4B4B400CFCF
      CF00000000000000000000000000FEFEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00000000000000
      0000A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFC3FFFFFFFFFFFFF77FDFF00000000
      FFF81FFF00000001FF83E0FF00000000FFF00FFF00000001FE01C03F00000000
      FFE007FF00000001FC00803F00000000FFC003FF00000001FC00003F00000000
      FF8001FF00000001FC00003F00000000FF0000FF00000001FC00003F00000000
      FE00007F00000001FA00003F00000000FC00003F000000018400001F00000000
      F800001F000000018000000000000000F000000F000000010000000100000000
      E0000007000000010000000000000000C0000003000000010007C00000000000
      8000000100000001000BA000000000008000000100000001001FF00000000000
      8000000100000001001FF000000000008000000100000001C01FD00100000000
      8000000100000001E01FF00700000000C000000100000001F00FF00B00000000
      E000000100000001F007600700000000F000000100000001F003C00300000000
      F800000100000001E000000100000000FC000001000000014000000100000000
      FE100001000000018000000200000000FFF80001000000014000000300000000
      FFFC000100000001E000000700000000FFFE060100000001E000000F00000000
      FFFF0F0100000001F0E0071F00000000FFFFFF8100000000FFE00FFF00000000
      FFFFFFC100000000FFF00FFF00000000FFFFFFE100000000FFF00FFF00000000
      FFFFFFF100000000FFF01FFF00000000FC001DFFFC000001FC001DFFB0000003
      F800003FF8000001F80003FFB0000001E000003FE0000001E00000FFB0000001
      A000003FA0000001A000007FB0000001E000001FE0000001E000001FB0000001
      E000001FE0000001E000001FB0000001E0000001E0000001E0000002B0000001
      E0000001E0000001E0000003B0000001F0000001F0000001F0000003B0000001
      F0000001F0000001F0000003B0000001F000003FF0000001F000003FB0000001
      F000003FF0000001F000003FB0000001F800003FF8000001F800003FB0000001
      F800003FF8000001F800007FB0000001FC00003FFC000001FC0000FFB0000001
      FF0001FFFF000001FF0001FFB0000001FFC001FFFFC001FFFFC001FFB0000001
      FFF000FFFFF000FFFFF000FFB0000001FFD000FFFFD000FFFFD000FFB0000001
      FFE000FFFFE000FFFFE000FFB0000001FFE000FFFFE000FFFFE000FFB0000001
      FFC000FFFFC000FFFFC000FFB0000001FFC000FFFFC000FFFFC000FFB0000001
      FFC000FFFFC000FFFFC000FFB0000001FF8000FFFF8000FFFF8000FFB0000001
      FF8000FFFF8000FFFF8000FFB0000005FF8000FFFF8000FFFF8000FFB000000F
      FF8000FFFF8000FFFF8000FFB000001FFF8000FFFF8000FFFF8000FFB000003F
      FFC000FFFFC000FFFFC000FFB000007FFFC001FFFFC001FFFFC001FFB00000DF
      FFE00EFFFFE00EFFFFE00EFFB00001FF00000000000000000000000000000000
      000000000000}
  end
  object TBXImageList1: TTBXImageList
    Height = 32
    Width = 32
    Left = 224
    Top = 192
    PngDIB = {
      0D00000089504E470D0A1A0A0000000D4948445200000020000001A008060000
      00CBBD65980000535D494441547801EC7D0798145516EEA9AA8E93F30C338419
      D210248C645194EC2A41CC8AB8E6B8AE715D75650D98D7ECEA1AD6ACAB6260D1
      35678CA80808822039333975EEAE7AFF7FBBAB6718D228ECBEF77DCFFEEEA99B
      CF39F7DC7363DDBE6558962537DC7083ECFEF747B960D44FD2A32843660C8E5D
      32F500ED9E930FB4CE3976A0DC38BAB7E3B6E1DD3D37F62C4D1F30B8BBF70440
      D180CEFAFC8A3297108696671A033A6BD6A1C347CBD74B57274990E6F5D75F2F
      D703F464E82E1CC70C29908BC73CA5D2647B23FDEA82CE2B9B23C69086903138
      1CD33A643A638E3C4F583A79FCD3328CF051120DDFE3747962A969691F395DEE
      43A3D1482C168B8A2B256717D8E3410A79DCB9EBA72F205620604A5D409FB5AD
      C1D161BBCF6555FA5C7AB5DF2581B048AE272ADD732DE99E1DD37A7729908EDD
      066BB9A5878EEE3660C23B65E5FD2775EB7B90E46647B45D631771EC2EC20E5F
      E2CFB5D28C4861462C3836625966D8741841AF6E85629A16D5D3A4AAD9259148
      44DC5EAF551B48D5D2BC0D56B6A729BC72658DA73A6874142D550C738B8D6E27
      7B6F12D04A5CCD92A9870ED035CB65699A1E8CEA564DB3A15505BC5213CB9382
      2E07CAE0919324BB78A0565A5C689D77F2EFE48C938E705C74D298C8B9137B7D
      71F6D80E72C93183762B81BD3240962D4B4B110DD2021A4DD7B4906989EECE94
      E38E1827474F3C58460E3E404E99364E4E3F69AAE670A768BEB015CBCEC972F6
      EBDBAD7FFF7EE5525ADAC9229E5DC1DEAA00193531C58C6AA29920AEC3669836
      BC7FB99475EC20C1A8252E07D2C44CA400630EC372894B8B5A112B128E946B86
      43747DF764F626010B85960ED99E4D9AA645A2A6483012D5D072A563519EC444
      1787D329860EDBA18BCBE310A7CBA9E9862100D88E4C071830E0DF55E919B637
      069846B6D7993FC64CAB3233C56D4D18DADFEA515A6C399C2ED140188C890D0E
      872186D310CDD011A5A3E47AA1EE728BE172436A0AD54E0F839DC1EE3AA23E25
      A9CCA0CD5FB1CDCA4E7574AFE8D669E894B123CDF21E3DF48CCC0CCBE5769316
      09292698D88A59A8B0284133A391ED86DBFB8CC3932AB73EF10EA31590A672E0
      01715AC9CCF0EF64D019E995F50DA6C3E13A7850D7E20F8F3F629C9E9693ABBB
      5C4EDDE1728ADB09B13B355162667DA17EAC58D48C86037A34E8FBD0E54D1BE7
      F0A449D661972671B327B43DED618075AC6FABA9B532D3D31E993171D4D9FDFA
      F78D5ABAC3707BDC9A130C80177118504F0D1C00BB198B98206E4442FE971C2E
      EF8986C32985475E67D3142449BADBC540540C39B46B81482890A2E7E4CF3964
      D881E3DD699926881B503A51750F0660444CB6993004D06444C3C11B75CDB85E
      330CADECA4BB2D9B6A6B0676DF3E12A99B4A274B6670BD8C1FDD150AADFB3372
      B25FDAB8A17282A6BB627A8AD74071C48C41F994429A96158B88150D4B2410D4
      2281E6F9200E1D413B1549329040ADACBD32D05C36452F2ECD33BD9DBF89A667
      A549932F3A282727285B366FD7A4A0482005D123D4785481656A6020160D051C
      8075AE8CDC6FA3CD0D12332368C08ADE4E8F9D181877E3BB5257DD280BEE3F4E
      C65CF7B61E0A45CC0FE7AF91A7DEEB76D82183F2AE7C7C42C3E119BE8D66F576
      CB51B765B364E4E72B0564F543FC562C16B1B4403DF8083D12D43CD56628A6FF
      10EEDC3E060EBA72AE18E850D0ED6A9DA63D62F99A8266A0397068A7A28C8B07
      0ECA9C7AF888AE7AD7AE3E6BCBA6795A5641AEB67DDD46A9D9B8413CE999E890
      501B664C5CA13A7D79A820FA6A684263D6DA35226999D636471721EE2FEF98BA
      670984435189000C43B79AEB7DE9A669DEDD6B50D7D33BF5EC6038D3BD969EE2
      88E9596882853D34B3F64B2B2D2753ABDBB64DEAB73588E84E71EAA2FDECE862
      3D6A4C32860E7FEBC13EF9E50F86A11385C10572E7E1B77A403D0230014993EC
      09C921C568000B18C9EC3FB2FCDFC3C61D70D6D0317DA5A8242BEA45F8BAA690
      BEB249A470C0919691D1418BFA1BD1CB394473986062A5E4F43BC4FAAEE24A7D
      AD952D294EAF741DDC59CA87769392CC6271A6646681AA13B083493290D3214B
      D2B352B4AAADF518DB5D37F61BDE7D4C9F819D432EDDD20CCC1BDC60000AA7BD
      BCAA56DB6AE469BD27FD51D2CB2A04FDB1A0E311775AB6743FE8482D3FD36339
      CDB016312312B52051D891684422FE061207AA1DE8633449F8AB36D668AB966C
      B47CF5FEDE2565056774E9D101DA1C4533377497835AAE6B4E8C850D114BEE59
      B04D16FB33E480E3AE9583CEB947064D9F29BFBBFA69C9EA5A21ABB6D6B273D2
      0CB04D2642B1A0F8227E45C59BDB295960158047B2156417660A341EBD9E3629
      AF383B4D37B468248A06AE89659A960610B4726167D3805675EFB79BE5A00EA9
      32A5BC4C0A07750511916BDF592DDF6F6E16B743B7323D195A10C4A398139211
      D09260A079A7BE4031C0FA1F78583F696EF4CBF2AF561C9692996AF9831112B3
      30042BE260462218F3C308D0D9DF5B9ACCFDB95EDE5D59271D521F11F47812B3
      6232758025A9AE142D7F708EAC0F6D90AA50A5D476AE9383FF396E63281A5269
      0EFCC741E2C01CE1DBF33EF3244592D321C7EAD2A78B81E1B4DC70BBB44020AA
      0531F10BA05510826153C28028180883110CCFE285389AC3312948CD97FE637A
      CB80D17DA4C7A15DC47760BD7CE2FB44DE6B78577E68F841B634604ED8332CAE
      325DDC1D0D71151A92904A869200C5736567E52CF9DDBDF332594A885CB30718
      CA2D0AA251889E7161DA919884C01019A90B364881992B1BC31B644970896C08
      6E1467D42146082D2408BD0BA01E03182642A658610CD7D023D204B8155538B4
      8A735FB050FA4E9842A504C2318BBD37C610355443E212230318EBC9003A4709
      5112D198443025DBD0B041821F056465F52AA909D4021D2621A3D03504D131F8
      3142027C6B3087474C5B6333C0D68438CB8199AF1180E8C18089F9A70A2703E8
      94240A06382F23F110244066C26062D5963FCAE2C60609F80312545516939E72
      AFA4F4D5B1A8D0C40FE2FE57FB1CB3F2C3271660126162B240A1829E4046B4D0
      9A1D2E07030B22A28181A889AC98EDA013E0188334A81248C1528A1841158440
      984C84A003115393989162C5D057C4D01D4319894B8F214DD8C9CECF90755FBD
      BAC870A534C5C2FE20D0D926664B809D2048EBD9E160D8E10F9B5103231B971E
      580A50009A85A938EB9B4A68B706564530625AE1A8A585D12A42E23283D0F390
      050500099FDB278D390D92B3A248C2FE06D641102DCEFFC5ED53101B37360331
      477E8E44972E7F29E2304635C7ACE98EDC6C410F14C3F80A61604984BE208699
      0418D0227044A3310D0C5841E84220629A708B15891AE9E8FB3B39A275409FDD
      98D3288D058D922345F0C68D1A906EA780E27E9B01B19A7CA2F52E6F70A7669D
      12DAB8EEEB5893EF32494F2B93148F982E173A2168319850AD01255652E0143D
      14164F38A265A0BBF558D16F331DB1FF780C995D29B23CE79342102F8C53DACD
      B38581584C64FD462D5C1C86B8CDBFEBBEC0135643E364D3EB3D4FD3F5E19879
      7830FD86965A1A3A0FCB0D093862312C5DADCFBC66F48D52D3FFE1533DAB978F
      59D3056380265B1EF4A4D5AD5D98961803483E840788E0D9CAEC754E28C2FD81
      A7A53EE49281458D9760443E21CB13D375DDEA541B76E4D7065D8ECD41CF9C04
      CE4F23E1D07D093716295E23120EC4320A47CABD2FBE67076316D75205284C32
      7C2707A6E4BFED0FC86FFB03548CDFF6077EDB1FF86D7F007B40BFED0FFCB63F
      F0DBFEC02FDE1F0858DE078BD3B30ACCA85CEFC722CFA9991626A4A2E6841C60
      12909C90309253E3FDB53F50AD3B625B4CC7756E87797C1A266998FBE92EAD65
      2694A0DFB23CDFDFFB03D8ADB5B6C49C6635984835ACEC74DD345B56643679AC
      9E6CE7FEDE1FC06AD01132F558754CEF83C5D9445D3305DB574989DB742199B8
      737FEF0FF8B074C34B0EADC1D4ADED3163DA9AA0F3C588B6731DA859F1C83FBF
      2EA38E19A1617FC0C2FEC09BFD0EEEF5BBDC82F41856DFD8AF02EF5815717F20
      08A4812056C558FFF96057FBB026C0BA291DC51871FAD07849DAF93CB7B1516D
      5A216B3C07F707723BE61B2BBF5B95DC1FC0F21C4B026CBD82012E4CB92CC7CA
      485AEF0F34F9A3B2A5312A2380E684E79E93E8F6ED70EDDE380A0BE5A5534E61
      820C3C1A930CECCBFE00774C804CFC4F3E295BE6D84B0486EC0CC5D3A6D9816E
      38F03A034F987DDA1FE01E0170C81B1F7E2892C182D1B76B58C034ADA29212E0
      7A0BFBC9BF6A7F80FB04775DFDA6F81B1BB147E017EC2F60F724C6E57C0C2B7F
      BDB32BACA56DF97ED2B2371F588CFD01BCC8C0368948087CB42CCFF7657F200C
      E5C40B042B6A7844ED11E0B509F7087497E825CEA85664C56E5DB9F8FD79CED4
      2C33E2ABB77B233027115B02EC047FFDFE40044B752CD343966106C565717F20
      DDA54B4767B4BAC8A1FFA5329AF5E88127DF2201CBC0968FC8FF647F20D7117B
      DDA359B3D009ADAE350DAD042FF2F8C6408D05FF8BFD019FA9FD14B4F03A4FB3
      F4ADF71E696E458573BC81B583B1AB00FBBDA892FDB83F803E170A2DE6E7771C
      65DA1455E96D4FC2560CB48AA0821018EDC7E325EC0FBC74C1A83DEE0F4CC0FE
      800F69C79CB74C3E2D6BD91FC046B3D7E8353A55DAEE0F206DD280D1A47B27C7
      6FFB0314C96FFB0394C26FFB03BFED0FFCB63FF0DBFEC06FE707FE9F3F3FF0C3
      B01BD86313343CD41C03F6AD09802572C7EB474BA64464427483FCED8D1F54D8
      9F26F78F4FC6950F0FBCB66F7B7EE0319C1FF870C4E103A7F53DA8B7A6A7E2DC
      48566771F1FC40D8CFF30338EB10444E91B3C7F592B300D34796CA6963CAE5D4
      D1E532FDB09E7212E0F8513DE558C0D80ECBE4AB6F5F9529237BA83C7C242724
      9CAF716AFC6BF6078888F0CDD75FCB07EFBD23A16050167CFBB5545756CAC26F
      E6CBE2EFE64B4DE576697AF72A49C3EC99696D4832B02FFB033632884332B3B2
      E4C3F7DF95AF3E9B271BD6AF95353FAF500C859B2A25BA718B64571C8A5736C9
      1C2D1B14FBB23FD0824EA412473A327158221F8B503B7CCBC6F5E2D9FCB6546F
      13491F3A116B03AA4A3CD65618D997FD0191250A5BFF0103A54779B9A4656449
      B76DBD707E2543BAF6EC25F5F50D92BF6A96AC71F5166F7691D8B35E665255C0
      FAE7F981838F1A2659F999C9F30378476C619DA70184CB2FF5AE1075C8D53026
      29EAFCC0856FAC241E056E8F47587A96AF0012F0C09F9E9929259D3A4BC3376F
      48C184D3517A9227A82C382519B7655FF607C41B47F2E5575FC51D89E7814387
      63BD8BC3725BE649EDC606C93A1AF54F45C1A64622892809D0C3FD813F956825
      86D7A5CE0F0482510D20FE4054AD76798821148A411238C88097D794887D7E80
      F90923478C9011C347C8B061C365B04D1C11FABAD7A53ED25952BAF587CF12BC
      66861D37B60EECD3FE401C15169D6D25300412406470E53C71761D05578BE8E1
      51C666409D1380BCB09CE2EBFB98E6C031D1F69E1FC01E80423612A537A16278
      C58C77CD16DEA30363D37AA9FD7189E44DF90BD2403B207E3CE18E1B9B016D5F
      F60770CC4861FBE2EB9D7540DFF2A9546D15E97DF054308564A04E05864B9924
      0308FFD5FB03C0C4EC721074006FF815212C7579B60D27AA9649D19413452580
      7428ADB81BB9606C06F6E9FC00F028B3532B18324C3CA565D229BFBF34338506
      D2A882D69A906C05C9F3030525A7C4B6545E145AB7696D606BB5E16FF469CDA1
      A8C6E33A3E9C2DF1E1C8865FD9A6F8C3512D86838BC44DA004460C1FDED20A40
      F0C17F7C2581F493E31220653401B0C1E40A6C09ECD3FE8048F684C73EF84921
      6CFBA8744F94D99FAE681B9CF42B66AE7C66B1131B9091BBCFA810B8C96732C1
      BE38EE387580C2BF271C490960333499EEB653FAA1CBC47633EA8B4A938C6897
      033D1F44FFE7677F50852113D7FEEB07690EC69CF79E5111698B22C940BC925A
      A2419B3BB32E16C11609B79A518568DCCA24B3E0148F308EB971DE49525C7489
      5CF03B4C3C9E596CDD74727FEDCFCF2E8E3CF5F13AE3B4D1A56C2062FF920C80
      A01DA66C14028751517E72A042E20FA653C4C0550C713038DD0203078C6A8288
      82112D3FC39364E2F61903B457BEDA94248EAA1648A7653022C13889F81387A6
      1432452C1E947CB2C4F4282A789029FA09CC873CE4855E2113171ED153049238
      76444715FEE447EBF4E59B1A4C26484A0099E84F0211117086313E8301215BE6
      49820C430E5A767E1C31C260A3E820266EF2D2DD72DD09FDE0596CA1D45A569A
      8BC4750498490654DD22C436269210EC709B88B291884C308E841986A0047F20
      9E08B8E1A5F84485713640F4D65BDF6ED2B2D3DD3866272D0CECAE0A98112855
      274A776BB0C0A4F22708C639606A91DB4EE1D0AB625B3D2CB9EAB925F2D88543
      0F0023AAE3484A8025699552D5BF6A9A444E9CB061140DD2A5FCE8671EDACC4F
      9BEDA3CA17CFA0FC7860068053F85A38CB2D2EA64F0013B52821C599885016EB
      9FA024432400E620718A832D00418A21DA2A937220156D646435C1A70A135304
      18A152261F2D124806C51D6CCF0452685D5AC612B16D830E0B4D9E9854D98CB3
      2562D355D264441BD83D036096998888A5653E04D15244184E07254237992231
      9698E18A1BA456E1C84869C2BB934932C084AD63499C40848A082381A89545A7
      2A7DDC0127E2999E0CC0190F8603067383B8B7ED33C9801265AB583641C53530
      AA12328E98602B66114E2FAC783F4107E26854381FF0A8B4B0152ED86DCD6E19
      60063241511277029FCA4F7792298630804037804E3B0FDD94884E3122AEAD49
      3260736A27500C3037A06DDD228838C95B3C3903409138602989B4CEC3685667
      3CF18ECF24036DAB802D804C282AC0602356D9E15704682300567234845731C7
      879D87F13A1F8C6C032D0CB48920C7043B98F9899088554911A08636D80C2743
      4C0B2F2D0574AB38385AE3529189479201224D84298BA527D875AD102106B8C8
      035C71C3701B39E3E857B894239E86FEBDEA40DB2A205202C389208E2AFE547E
      12887B154364945EEA1ADD6486E9988C360BC3F8B690940013B68E543A006C64
      80E144C834084AD6B70A4300C5CF38FA0974932BDBDD2E068884846C20C74A02
      082022222433748326A64088002518FC0121EE661C4BCF098B0A4730C3545EE5
      40401BB35B0990382199DE46001B261E9C70284B3D100C1B060E18720A4E2801
      4D692CC2DA98DD32A0AA0098905F658153955AE1A4C78E40AC22003F830938AD
      81591122609444184880BFAD49324024AD23A3A044266CB1333F68E0DF97F183
      274C6F8731102F49956E304CE181034639DB5705C41E4FAE9E9418F5801E1505
      6CAC5B228B2200864EBB9FC248849448C340EA13E3E946391081D935E3946BC7
      4752022C69EBA84854F0FE1F198909C0FC4AB44CA43C719A88525D2F3951C178
      D80CC0A9A4422614F3CCDB06920CDC766A459BA838011B09454E242448624CCC
      B8D636EB9B614CCB700225A9C219C180369064A04DB834E3D4518C75408ACC0C
      5025A38DC4AD826D7E2871880C91488367DCC0CD3921FE0D18F7B779EE968149
      DD354C2049A64D8E5FE55578800FDCB4C9BF4B0638756E93EEBFE6DD8901AC5C
      B884F9AF11B41183CE4E2B653BEEBF697382ED01016E6D7265D4B25189C0FFB6
      21F154EBC963024D8F4CE1E108E844BC53FB6F13267E9B78A379EAEC850C0030
      EC7F22011262C915716DE3837687A39A0423C1CC3E19D6650A3010E886336988
      BF85F8E6C72BACAA771E4DC6C2C104B07EB521C1F4E0EB937CA8571E64490726
      86C152D26D21BEEECE4D56F3F21719D11AF685011222F13AF7E43724ED9CB902
      26EA809C4C3861B710DFFE729338D25D9A13EB6344B436BF96811D88CBF679F8
      8FD2BF246DC2B1D2F0F0643251086D8FD779DDC7B815011713E80417F3B5A6AF
      C4B443401B0F33B06E0974339A76B2E48A787013462E9C9EC3BFAD64C43801F1
      8DE193FFF58356F709C271D20DFF90C2FFC6F8C764A578D2EAE768E56EEB4C12
      628467CA7FB261B3FDA6A0CE95D8DB12F7F99B25E3FB79629EF0A0189BE6F68F
      A6A42DC45F57F17F7030C1ED9458F34EBDDFEE18481267FD82B0045F9F5C0726
      4A407CB30AA3D85B95BC3571AD69A168DC2C6CDC5E114D499DEFC0DFE334FC13
      CE8AD48588AB35EC8A811D89577FA3D2932898D83BF1E645143BE68F11D1539C
      62D56F1B164D4B996744AB025AA832A890B57AB4656067E2E12A20C49CA6F24B
      21137B12BBD6BC581116FCD919FFFD833B24462A50D66D1F15928DAFB8A20153
      E7BEDF6E18404A69512E96DC266E615E13C26B8F3D89BD192FA471901C974F80
      701800699BB4C3D0BF1A716CDC7A6C30D57CCAE3D677D0035B027B264E060889
      3AB740281C0E24154EF32D85943089B480DB8A139504718B85F06F144706186A
      709E1694C853D2EAA727DC6E28575CB3DB969C841590400CAB20DA11143422CD
      611244CB02434AEC147D82B098201842F5F9D688449A1419670EEE2A69769E26
      F11F0B9DEC0794271E8E279B8C220AD12B9B445B88833A4A0CE2480A070CDCAD
      4B1FF3E3DFB69BC5F2FD2C12AE57A934C325966E88A3538EF2E3E10624F70963
      91ADF85734431A57615583FFDE3AD280980CEC82384B8A7FD6333912A1BE2300
      94388AE100A5B5FCAB7165CB5691684025B1898B371DFFF32D469862CA8423C9
      4028FDDCD7B39B646A1DFB746DD1F5F887F4661117B875A26B37BC9839B8901E
      934B969488132553751D6D8698EBC4F26FC06961100ED5226DDCB4251E9BB74C
      40AB136255BD00239C71C36A48E780422664C1D562352C88C7ECE2891757626D
      4C939413EF14597B17445D0326C048ABB47B20BE1DC92036940B0EDBC4E06802
      77D9CD8F4E151974AB68998310D40EE35BFFAB8813B3CE472BF8F54CB442D29E
      92DBC9DB32C0F07D62E2971027B15D31C0F05FC5C42F254E42BB638071BF8889
      5F439C44F6C400E3DBC5C4AF254E027B638069F6CC046EDB600F677732ADDA79
      B2A911C9EEA03D0C30EFCE4CA457301CCB714D7E2D7122682F034CBB231307DE
      C8309C5D704954BCF24B4B1ECF0CFE6DC72FB0558F59F5F749751EA79ECC860E
      AC133CED123BD2EDB3211339E8B62D02B075043801FF534326D2403113F0AB89
      4383C431EEF4DBA3ABD66F93CEC5F9F2DC759331B45AF2D093FFC24C03A8F783
      2948C5490B6C30BDF973B654D535C98A755B241317DC74ECD201FB5E3D4F944E
      B9F992999FBE03C1497D4CE9D5A7AF783C5E0B577E690E8703376F614281CBCF
      E836127E276C27AE88D8159F5919A9F2CFC79F94FF2C6BD115A65BB7B5CAF0E2
      1F642525859A3160D451E2F2BAACD98F5F2CC74D1D2EC70268FFF0D5D7929393
      875B145CF8BB176FE3D170B9156D5CFB862D2F9E31C2350C42DB05067EFC7199
      CC9EFDB2BC31F77579E881FB253B2B5BFAF73B40167CFFBDDC74DB250A37F11E
      3365987CF0F1D2EB3233D36E2033B846C2B45E7CEC8F12C07D1E295E571457EF
      6889534D4E1EC9C1062625A3497C130E79E88585083C317B42141C648692494B
      4B93DCDC5C4949F16229127FE3E8F47822FEA6265C37E5B4202D13F43C279E7D
      3F240BF60F98728DF5F843178B13FF06C4F930A2C539234DFBF7C30F49CFF2DE
      92928A0B0E0DFC5B06A2E60D3A0E343D072E3A43B50809123C6EB72C5BFE937C
      FAE9A7525B5D23AB56FE24A79D7EBA4C9A3C491E7FE20939F1B2CB25D8DC0CBC
      BA9696EA0EFBC39AEBCC0BEE93A5AFDFD2DB9E96F30A17DC7982837AB8002551
      46940BE5569E7829B9238913227159582A229E866C2B57FCC1B528AE9411EE90
      3244DDE282F35DF8BBA165AA97C8097C884C32C08307B8788827572056C4244C
      1C770B316625E0944B22C5AE7B33204A46444D9C2B0380238DEE6446385A1840
      02450C25438B41546B936000160C24C0674B3C75853E969C407D803893E9703D
      8D7A83CE3420432B092D0C605F581DF2056E2B213B2253256504B9636BA26DFB
      E946BDA099E0C08B896A0C49201094A6A6665C9E14C6F552ECAB305DC4252B61
      5C8C6362BD81CBAAC4E3F62619D06C256CA86F54CD8C31E0413E7CE631292BED
      2A29690925C45F136DC5C3ED5CA2DA3F1553DDCEC7293B73EE08E95E8F3CFDC2
      8BD2FBE8191209F8D4F13E97DB19E9D3A9D8B99312F2A61DDC95A4DE72DB2BD8
      B5EBD6EC88F157FA1A7D41ACDC624A272CF421ADD11805E5875C3FF5C8E1D2DC
      1CC4BD921A6FD4822434E9357484F4183454BA1F384441E9C003A5B0F700C9E9
      D95732BAF796B46E71C8E8DE077E40B73E928E30425AD75E928EF0CC1E7D240B
      E1821B7A48177D0C681B66496EA6F1FA9BF3A572C5670F2675807BFA6F7DDD84
      04ED355488F6A68DEB02539775C6128E8E042419C00E920ABAF3CCC44C47F9F6
      EFE38AC7174AB3DFDC016992015CAC948CD8DBD84A25251A341CD5BCD8B46208
      A04D50E1F0D3665A22CE4FE5532480FDAAB82BFE4C32C0DE2A1E849755C012C5
      E9050D1D029C8A0891D14D42B6DBF62B1B9468F3751FBA12A5F1F433AD077FFF
      B419E0854A361DDA49063E5BB61EFE2200168C68DF573EFD8372EF8FC7F947B5
      542BFFB9DD1A6792011FAE825387AB101B4569EE3CBD25136F6543B032C1A8B2
      D483A5550E3CFC6AAD0B074C1B2953A4088D2B6D149D123C49130F8597F78DC1
      52C6EE5A95673F3FA22C5D2B9C4909F0AE3171C7633070C99F9F5A18F7EC87E7
      F9930724B1B42E28039312E0BFA71940C0CD7032EB94817B846BA657C8552757
      C8152755C8652756C8C5C755C81F8EAD90F38EA99033A755C8E9532BE4D42971
      F0694932B8DD0DCD834412908CC1642411B4772B80D6C154BAA6E6AF740A2FE4
      B5A58B390B7A5415BCD3A3AD049255D0BA7950A16E7D69D14E997F6D002561E7
      E53502B69BF62E25C0B67E2DC47B2DC50C11FF197019447C3144FC47C0F94757
      C83910F159803301332655C8C94754C88980137E5721D32654C8D47115321940
      7FA8550BC18D6EA49B84A4044278576C87520708B6DFB621718CFE12D7D596EE
      5D56FB92E5B093266D4A33E98103D7CAE1D962920CF08A073B18AF38E4BED716
      DADE7DB60F1A360038E24CE20035DC2D261E0ABF6A86B069386F3B074DE72C88
      F68C2307CAEF21DA198743CC13216688F7D8F11572F45888790CC43CBA428E38
      AC420E1F5521E30FA990B107C7611CDC048611A70D6D3BA2A4045A8F0565B9B6
      B0998D6EDAFB02C97262EAB623BE24035B6BE29B8C1C32F785D4DEF256D7C7E9
      D8E9920CBC76DB4976D87FD59E7E78C90EA3BDC3E5767D8409E298FF2AD55D20
      F737D53EC46056482F3AFE6F011968176D8C9058496A6630181C827F5E3DDCE8
      8B44FCE18807D7C7E6380DCDE53203F774E850743B1625FAA38F3D6E5E78C1B9
      EDC2DB2E06EA1B9A64F576BF96E17558F9599E2B566F6DFE5B833F1AC15A0F3A
      A4C5527077B82B52FBD1C003CA8F02A34DFFF8C7A372E185E7B58B81647FB66E
      6BA3DC7DDB2CB9FE86EBB5C1BF3B533BFD824BF4671EBE5DAEBBEE46AC78C272
      CB1C5C1BFDC92639B222FF96B595FE2E218C3C5839B1C0823BED71E5915530EB
      DA2B3F39F4B0D1EBD08BEACF3CF504A6358A077DD9CAB5DA79175C24B7DF7EB7
      9C7BDE05326CE4687975F6BF54A4628097A0724694EE758A8E1D908B2FBB4ABA
      15A75999589A5F73CD5F8C4834AA1D7F48997EDA98D28E5B6B9B6FABF3459D29
      6E4373E21A61ECB4684EC3887A9C8637C5ED583578D0819F3DF4E083FA61E326
      C98CD3CE320C87DBECD6A3DCAAAD6B907EBDCBE4FEFBEE968AC123E5A3F7DF8C
      33C0C181179E7A80C981ABA2718D7CAFCC54E7DC548F33F3A65937ACD675A339
      100859A150D00A8742A76FA98B1C89A998E9C2F80BFABA1337E6B8B07F40DBD0
      B5F427FFF9C86BF33EFEC8FFF39A4DC2EBE5CBCABA7702A52BCC586CDCD469C7
      7F74F4B127193E7FC07AEDF5B972EBAC1BB8C760E00F6D6109E28A9D149791D1
      E00B3D397F45F570DCD07C5097FC94730B329C0FE4643B3FADAE091D5FDD1C39
      D7876B59B93F08BA5A7AAA976B57CB8A46756E541414950CFD72FEC2D7366CAA
      BC3B2B2B6B39B4F6F75D3A159FDEB1A4B0B8A6B65EFEF3D6FBEBF19FC4478795
      14EA78996FDEF5C09358B163DFA2B62160E5A4BB7801EE535FAFA8FEFD96EA40
      18EB43DDEDD21D8578E59F93E2686A0CC6D29B71DB2EBE55603911E971BBE487
      254B854CF4EFDB0BE7C9A2960B0B554C52B480AFD96A6C68682C2CC8CBCCCECA
      10AFDB816587A57F3C6FBE7FD1E2A563468C3CF43B871ED2BEF87281A56DAFF5
      39BC6EC374398DCB96ADAFFFDB8A4D8D51974BC7EDE1F80480A1C5500AD4B1AE
      3B0D3DEAC6A7091C08665581903CF7CC735A45BF723974CC68BCCB8C50272C5C
      231F43B3C45FD7B0ABE6D0A3B89549C74DBF5CF09B75F54DC69CD7DF59969A96
      372A3BDB53B36AE56A4D5BB1B14EF3BAF41297C358F8F9B2AA1CD417EEA4D71D
      20884D248DC42D88DB423D6B58606A0E5C509A9AE231BD1E7CA701476569FB03
      B8A9D6320DA4C3769E81F422504C2E84B1E9626A9CEE85F09213FA145DB761B3
      E3C5975E7DB5A0A0F8B8D41497AEA7BA750322DA9491EAB8A44787544514FA68
      41C3491C88740D7E1D0AA67921F6ECCC346BD3C64DC61BAFBF6DBCF0F21BC69B
      EF7C62546EDFEE48C1C7153C6EEC82191AD2F32E7B0DB7F59ABCF519570345F1
      47C9A8150C85B586469F44A351FF843123F3D233B3638E92FC8CD8866DD51A04
      F67C5981B71C3B19336B7DB11819A0B8952470EF718AD76D050301B9EBE127F5
      F73FF8686D341C7E2FE86F58DDBD47CF0EDDBB951D34E6D011C38E9830CACAC0
      05EBF87A8A063C5618FF458B600AC4D2437CE6864D5B8DB7DF7EF79DBB6F9B79
      FB84D14303179E7D9238D09958B535F5D2D014C6298FC80DC5998E5EA625C741
      D9632839B65944F3B870C54F2068DD78E3DFF47FBFFCD2D312DA747D69DF71EB
      2AD72F9073CFFE3DB66322FA57DF7CFF07E8C65D474C38041B29B816281CD123
      381519C6275FF02748B3BAB2C6F8F8E3CF177FF0DE3BB350CD9B3A1415353735
      3688EA8A71E7BFACDD50A9BB1DD8A3D3647C4DC078D71FD571B711AA135A9493
      9561FDE391A7F45B6EBEE3D9B201E32FE85898D6AC87AAB54FDF7A4A7BE0D117
      D81CCDCACA6A7CD7C271D9B02103EFEAD7B73CE6F307F5106EF3C5D764B03367
      E95F7EF55DE3DFEFBBF39C928E3DDEBFE7A1BFD7762BF4800F6C9AAC5CB50E8B
      056C24195EC381439C2EC3BCD91F755E6DE26AB7F41497C36118B1AAAA6AE392
      4BAFDED0AD3036EE956FDD3F77CBF5EB4BBE78D94CC928943BEEBA0F7F6031B4
      2D9BB76A0585B966CF1EDDBFE9D6B5CB10DC7D8D9AB00C88DFE4F6CF37DF2C08
      DF7EF38D470F1931F6EDC38F98E8987EF4E818A56F5C74D1C5B00D1D977A6356
      86D66645EE30757707B7D3B0D6AD5DAFA7A77BCDE5CB5668F33EFDE2AD071E7A
      F2B1D27C43AB89E65B2B17BC853FCAFBE4AD375E91134E3C55C68F3D58EF5058
      C0BE201D8D780220BA794BA5D1D41CD0B83D8BABA55D86D353525F5FBFECA66B
      2FD8841E57060C3B5CC3A97BDC5884EDC32CA919E0D57CAF4735D7C01434B3DA
      9A5AFDE5D9AF49A0B141C315C01AFE03BBE2D26B1F9094DC522B238FBDAB92A0
      7A9C72E26474A986969696225999E9DBA1045A5D439336F73FEFCAC68D1BC51F
      0AEBE91999E661A3C71D76C0C0019FCC38E7EABF2163BED3E9C2A73034B3081B
      0AE705B4F4CF238EF4C30D172E23C6CE444E56BA76FE59274B798F522BD5EBB1
      BA9476F29AFE75F2E3F79FE8CFDF3205F95B4C08B7366766A459B9F89C407656
      BA171A6FF9B1D09838F660E955DEDD6A6A0A68FE4048C7072F627D0EE89F5231
      78C815A7FFE186AFF1B195617A58737E14D653FE6139BD694EA783BD9D6160BF
      9CEDBDB4AC14FA615A3D7B74D17A74EB3AFC8E597F96F34F3F563EFF6E85D83F
      6A3ADD96C36D6566A65B1EAF67143A1E7440968EEBA7A5A621A88570AB369AA4
      E50B048D669FDF2A2CE914C92F2CEABA79E39A83B5A52B376ED35CDE7C97D389
      6BC2133D1FFE74EC407F8F018F1D91895ED29AF3C6FBC1BABA862302A1F03C28
      A66BDAA431D19F576FB00E3D7888868E05C3AE2382CE6A605D43F3573FAEDEE2
      0A0623EC013532C8450F1890303607C2E18815B374EDBBF95FFA9EB8EF2F938D
      DFCF387598C7EBED8B3723E866D185A2F741E7839D509DC0DE5073BB1C567676
      A67B7B65CD480CA51FA06D6C1F34A0DCDA5A59279D4A70EB183A7B97CBD105D6
      0BAB365675AAAE6D32F12D151D92B0C2688AEC9430A7A05B308F893537FBB415
      CB962EAFDAB4FC45E3F8E38ECBC0DFF507A5A5A5A5A2A43197CBB03C6E7C9D05
      83BD03D7884112B8973CAA7BDC1E333B333DAFA820775AAF9EA521CC232218FD
      A2F979599DF1C6E42894ECB115EBB6F5D9B8ADD644C347F38B9220BEC013B3D0
      14B5E6261FFEC51FD62009A3BAAA465BF8CD979FAE5FBDF41947765EC9738DF5
      0D63B332334E72A4780DB02ED5F57592919E2AF8728B89FE5B27F7A847DD9B9A
      1AC337854AA291C8DF4573D667E778B7D7D4F9B2D1E1146CDE5E27D5753EECFA
      9B062638F89450146DCB34FDE890E67FF545435D5DDD2A4C680C308E4F54851C
      D5559B1740777CDAFB1F7F8DB1DC3AD7EB75FFB9A9A9A972EBB66DB5A929196B
      C3E1E08809E30EAD484D4D31FD8120988859E01EA7C270533B640A44F8509121
      BE60489A9AFD31DCECAFC54C1362C7978C207694DAC2568FB578D1C2C09BAFBD
      70EDEA655FBD8A0EC79E27D23630A1DC2EAFBFF5A19C72EAE96993A61CD3031C
      950332003261CAA95D67CF79EFFB8D5BAACC4DDB6BF05A6FBBB57CD56673F14F
      EBADEF96AE313FFB6E45ECAA59FF883EFCEC9BB1773FFFD17CEDDDEFAC17DF9C
      6F3E3BF70BEBF1973FB51E79F1E3E83D4FBE6D1D7FC69FBF02BEDED7DC76AFD1
      6FD08EEB1F3020F2F6FBF3A41AD7CA3FF7E21BD2A1B05472F33A6BEF7F3ADFF1
      EDF74BE5D1275F7E6CE98AF5D69A4D55E11F7FDE642D5AB6DEFA66F16AEB4BC0
      ABEF7C65DD7AF763D6BB1FCFB75E01F117DEF8DA7A66CE67D6632F7F6C3DF4FC
      07D6FDCFBC17B9F5E1B9E6B41957CC030365D7DE71BF74EB33025D0466349858
      80B88670818E19B268E1F798DB99DA69679D61E517955AE30F1D16C5FCDEB16C
      C5DAAE9015C6F108DB32BEDE85EB21D99420E2D49434F3E0518759DC7289F8EB
      B55084CD0E5FEDC08B095615B67CA870080FEB20A48851973803879F06A8451C
      13C78EA487A002EEB8F771BA09E9783B96870D058CED610EB9680D602014C195
      A79AD9D4ECD3972E5D2E5040F1A6A4E0132439B1602862E0536A5440BEB2C3CD
      0DFCAE1538C2BBAF9BAEFCA314975510EF0E8095CD0E7E2E42B4B3FFF017EBCC
      0BAECE1B3F7E4C17769F01BF1FE111619BC61C36D6D8D4647CFAF147AB7EFEE9
      A717A0D9FEDC82A2A907540C1D9E5B58140D8582062480175F3A0641CDF00743
      29A0604B00CEBD986B673DA09D73D14C39F3826B3ADE7EEF936B5F9AFBB1F5FE
      174BAD0FBF5C1E7BE7B31FC3FF7AFD0BEBDC4B67ADEAD66BC864A0CA39FF4F0F
      689D7A8C2838ECC833DEBDF8BA47AC5B1E793334F3BE39D6F9D73E668D3FEEF2
      48973E873D8C7465005CB4D187D69EE1F26BEE92B3FF70AD9C71C135F2D38AD5
      C5D3CFB8F4AAAB6FB8EFE7071E9F633D31FB43EBFCCB6E5E51DABDFFA4AC9CBC
      FCDCFC22FD9C4B6E96AE7D0E931E030FF70E1D33FDEDE97FB8CD9A34E36A7FAF
      C153DED13DF9D341AD1C93D14C285DFB18F8D3B5778B92C0857F9189938E95CB
      FF72177048D6E4E3CFBEE0E893FFF056D7F28A638A8ABBE6752E2BA772314EBA
      948FD2FA0C3B4A7A1E786466C7F243EFCEC8EB7E3A223AA37EF97A1FAF80E249
      738BFB22F81798F4BC52FDCF7FBD0B7844A69E78819D93537799FB7575127169
      AF51D2FFA063B41E15474849AF89F2A7D72CE9DCA3C2696760E96D775B5B4300
      09B4DA844708CC55575DA55A059CFB6C4A9B66EBE73DB8C6BAE38E3B92381F98
      335F62F8161C195004F8FE5039128FFD7D7EE0D483B3E4D8A3A72AEC93CEB95E
      30F6C9E6AAFA80C11012FF6F9E1F185E9E9D247ECC8537C9A8417D65F9DA2D12
      AC6B9EE12071BCCFDFEFE707BC786BCA89484E4E4E92F86957DE25274F3E4C1E
      7FED234C3CB265EBD2E75F62FDE353409A38310D6B680AF0C605F43598834234
      18BD305272EDC0AA436DD112F540DF16B7118A347137B2E0CDABC9A5970AFBF7
      DCB949E217DFF488FC7EF2C172DB536FCBA5E71E2D0FBDB850468D1A355831C0
      8CF8040C5E78EFBFF303117CC7C8AEF31B1E785E4E9A3844AE7FE40D193E7480
      3568D4284DC0C0BC79F39A930C6026019D34F1DADF42374A96E21097454B0959
      620246AF78023C951FF6AECCCDFF7C530E1FDE5BFE0AE25DBB97CA25979C8AE1
      0C073612895B18C0825011C31C3DF1422491845682015830A8043E191E078C9C
      CAC12A23B0DD3FFEF60FB22E9A2B63FA152AE2451D0AE5EA2BCF16905169ED47
      0B0378C3A85EED00B7C5ED04A42032555246903B5D0562410707FD04A8080679
      4CDF6318B012E707B2FBC8D4638E96111D2CB9FA815705DB2432F3DAF3B10D84
      EE062B6DAF270588E266BF9C1F703A9CE0335E1197DFF4A01CF8BBE3E490C2B0
      5CF3C02B780B6AC85F6EBF469D1FE06B00B7C7B57FCF0F50A4DCAE6179D8E49E
      BEF75A3AE5C8736F1113AE638775129E1F8885A2B8ED074CB679ABB94FE70752
      BBF6129E11E0198267E77C854BAF7E2FC30A9DF2EA6B7364F9BA2D72FE5F2F6B
      393F80E5D67FE1FC007401A57CF7F9BBE5C8134E9011E60A79F5D5F8B26DD4F1
      57C8CFABD85D58A81E3752C54DD9FE383F80853FDE13AA5E5C068EFFBD4C38F2
      7019D35193CBEF9A2D58DCC882F79E56D4B05242BA38930CE0CB907D3E3FC026
      87B5A1AADF41479C23A30E1E2287F7CE963FDDF53CBEF0E7924F5F7F521A8278
      A10905C01A50D0A8485BECD7F7FBE9FC802593665C2C837A75904943BBCB9FEE
      7C56C470CADC7F3D2E958D26F659B02B84A64B0545EB96FD7E7EE0A3394F4AEF
      0E2EF9DDA123E4CF773D8B71DD21134FB858EEFFF7623506A8FE43953BFED8AF
      E707665C789D14A7C7E4AC138E92CB6F7B1CDDB6433E7EED4969FD82B24D4BDB
      7FE707AEB9E521D95EBD55FE78EA14B902C4F9A9D90F5E7D5215131B4CCADEDB
      830341EB34C9AE58BDB84CB4162C2A93E70778B809471965CD926F65EDD2F972
      D539C7C955773F8B6FD3693271FA6572DBCB8B5BE3DBA57B9FCE0F5C77E200F9
      D351E5E2695A2E674F1B298FBEF0860CE8DB573E7DEBB9FFCDF901BC8890A75F
      7A079F968EC9773F6D93ABFF789EDC75DBD56AE2C12E989ACE62733B07BB1F74
      CA7E3D3FE0DFBE5296CF7F579C1D0648CF5E07CA3B6B74C04245A8BD8F7D3A3F
      E05FFEA64CC6CBE9A7EEB858AE983E52CE3AA297FC4FCF0FDC74FF53C21FF65B
      B1B32D92E6A1A6A29B33181A87DFCE0FFC767E20AE09ED7BFE767EC096D3FFBB
      E707BECDCFEFDE6C9AD936A7FBCB8E8A6C185F5353097C16206934DBF54E6EEE
      E59BA2D199D809CFE47B603B7C7FD9C15048B0F2FC39C3302E3FBAB6F61DE005
      4F62A9E1786E4ECEDD7A79F9A5D3AEBA4A9C5E9C7A6E73E81089F7D9686EB7D4
      AF58D1E3F31B6E98F37056D6E4F3EAEB3F02D2B0E3FBFCFCFC4591C81F8FBD11
      0715162D524B2C44EC37A3E48DF52611BAF19597C1175E687CF6B7BFDD02FF78
      40BDF6495EDE84AAD4D477C7DF7FBF047FFC1161FBDF2826126853718BE7BF8E
      3ACABCBAB9B9BCCE34B738B029ECE66A165359CCDD628964FB6EB526AADC9402
      17B338AD8BD7B57A4F8723677E385CE900C9B82222C2DACF75CF3F39609A9C5C
      1B9011028B079B74F1CE9A3E00171C98E6C0D5621CF9F9923E7E3CFEC51D91A6
      8F3F965875754BE4AE5CD8864F3DE82071E3D6E6C0E2C5E2FFF6DB1D88AB2C76
      2129112CF4552B60044B8FA318742621FBD453C580E230C0D5BDBBD43EFEB844
      B66CA17767C09C2CE7E493C5DDA3878A7375EE2CD1FA7A092E5F8EA93B0A0B82
      2835178B2A5EB9E14A32C0D2B766005FCE1603FF98411A65748F4772CE3C536A
      1E7B4C229B36A930FB81530B92337D7A92B81D6EE0BA681C5E514493D581AAB6
      E3693BF8A0F8D5D2D9160F0229118AD15B51015FDC9089DCB3CF969A871F6E61
      82259F3143893D9E2AFEB47077B9FF871F848552A5A504124A184F117F2A0694
      13C49958B9138FBA175E100D1D93A757AF4408363C2089DCF3CE93EABFFF5DA2
      B8223C07D5E46E15CF8424BE9D4C52674818816442151474E04DEA46920196B8
      2D03F4D73CF288B0D49E3E7D984F012591F7873F4864F3667177EBA6C2EC0789
      6F0373A1B56BD10048163580C8B80B8E3655A0BD9B9B3BA5C9EB9D3BEA8A2B24
      B86C1952EC6C70544DF2506A0F16243BC7B68428E2F7DD27C1D5AB932554A54E
      242113B9871D26732EBC501EF6FB877F1789AC8833E076CF1D76D451D23C6F9E
      18D9D9E2C0F5EFB4F14E3E9115A2C7FFC9F290D173C001C9B0D60E13E74BB6DD
      738F0457AD6A218E0466049FA0AFAB933020525B2B25A79C226FDD71873C1C08
      0C5F000676A882282EBB2784909162D6D10A749C27D353527090C423DB6FB945
      3AA26EEDA6896471837AAE7EE20969FEFA6B5C3B808FAB839918DE33459B9B45
      011492A53799BA4D152419605C6B30918920542444B05976FAE73F93FD02825A
      0CB43B177D40CD9C39D28C0EC816BB4DB4B58D1EA1251F5C3A60AFC6269E71F8
      E1BB4DCB2AEBF9F2CB92D2BFBFAA029B284B4DA09F8CD908E8A77BAF0CEC8E78
      ACB1517CDF7D471C492013E5AFBC22290306A83DA42461A420719B28BC49C3A3
      62710FC4C8517107C024A233BADFB62527F135279D24AB8E3D561A3FFC309E3F
      F17440897BBFFAAAA44112DCAA690B2A1968291B0FD08B0B8175A3A1574B0206
      96E2DB6F97F4891391ACC590F85A74BBFE850B714B4358D69E7596347EF4514B
      02B8D88AFAA03A3C4545386DC97F6902881B38118DDD658C420926F826191B89
      208F009C7EC1BE1ECE8121B1032D20EBF8E3993E0931FC6B723D7ABE20140D07
      50F0CF2C430417E0AC3BE71C69C468994C088703FFBACC9B3A55B8A567E03F69
      4C4F1BC4948E503248461C4002E21005FE92E9500C30B186E61269F5A94012DF
      74DA6912B289DB480D87E01089AC3FFF7C69FAE41369FD63574DA22C1827BA04
      3B3EC90009DB1E26C4D1485100A6B641BC3ED471F3BBEFCA66D47908838B4208
      E24C4B37D32A1B1DCE0674CFDBEFBD57583D9B66CE9426540DE308244E6940D6
      3B56812A2D8871CFDF46C60C84D8BA755209A455975E2A5174AF0CDB25A0CA18
      8ED36B52F38F7FC8BA134F9486D9B3D191E28C1E9855C41D4EE5671510EC4283
      BE418D4018F6C290D8660211AC1F552D74930041C52708D2AFC0E9C4462900F9
      494C85C16D209C7EA7B2F19F65D8BBAA8230E702D47E8A95C40836124590C808
      244CA0BB2D209CC4988FB602849109E2557E3280309C35319705837E3063E961
      A77341437373D8C400C47E9F898984841523C8C030E54E104DBA13718C4F02D3
      24C21D20C87A671C1970E3C31AD518711D2ED792C6582C42068C27ABAA82E714
      14E4D5AD5F3F2C6BDC38317AF716292D150DE3BCD6B5AB68980BD2D6E1D76D37
      6C1D7106C2928030070161B49DB09DF0DBE01E3850FC606CE97BEF996B75FDE6
      8F9B9A568081460D0F1ACF9CB2B2AB6BEAEB2FC222211B079318B64BD85577BA
      AB842A1D464928978AF6637083A2AF5EEFF1DC71C3E6CD9F21B00AD0005086DD
      610A5C1D2E282A3AF4C68E1D8FFB6BC78E27FCB5A40410B767C23DB3B8F804DA
      D7D24D80FF5A02DCB4FF02776BB8067E1B0ECAC8180EFC7D005D01F90037C016
      009C9873E0E902A401B201B980BCFD08C497057CA900274011578F2B9F59ECB4
      2F2C845B490F09F6D900A7C2BF2744BB9C90FCDFF97E411B36A13F3B7DBF203E
      8A202164042376F1F0C659122F5B2566CAAFFB7E01D0EE603460FFD3538B7608
      6BAFE7DE332B147FFC7480FD1185DD7DBF40DF1DD21850DC3263A0DC3AA32209
      B79C1A77D3BE05E137C3AFEC532AE466FA01374E1F486980FD386632C1EF1750
      B7F0FD0215C8EF1728071EBBD40184AB7FCD9209BE134075C457178C006AE5A7
      1B4CDA56B20A10A9D6818C48405E7BBE5F90489BB4301D9099CFFDCA2A38A342
      E1F945DF2F50395A3D58FAEB4E1A28ECC95068A57FADA29513855576329209E3
      21BFFCFB05897C49CB8478090A3911C36F4742D1D5856676106D56016DD6D5AF
      FA7E818DDCB62981592F2EB2BDFB6C5F7B627FF4B23BEBFCEE9510C5FCF37103
      5515309B2A5D42124AF470D36673A594188F203A15B3B6DBA203A2846286211D
      30A1A2938FDD33008CC8C72625F1DB44900761308A08454E07F85469C80C8991
      1EC3ED5E4A852313250A0C3B99DD3240E27F7B65D14E197E6DC02FAE0236C34B
      8E1EA8AA40950A94519064695942E54778E8DAE299B06601766B6ABE17A941EC
      E980D3CE2B5CA27D7DF8CC3B446EDAAD0428323241421A3291182C65E86615D0
      8ECE2C9E993AE0C0599DCEB951C5B5F7B1F1D1BFCE5A7EC1F7C9CBF176CA4706
      EEFFF7A29DC2DB069C2FD28A7823A263004EF76029433735859BE3882362A350
      C8F04F174E9AB57B0920CFF95306AA2A209E1DA480A22B85832D102DE3EFF9EB
      05B4DA0D97DEF8904ABB5B06A88404950A0FD222137062F3097C2100E5498AF0
      DC3F1EC5A85F0CBB6580927AE48D457B45882A50691EB9FFDFCA6EEFE3D21B27
      A8A4BB6580A5E79F9EB984625B666A149A3AA924A01C0C4C54C1FE97007480B3
      1BD5D3811089C38AF731094FC262B0EC7709B00A9E7E7B9142BEA7875D05FB5D
      02AC82E9130742DB12AA87E2C228C9D34E3295A882A4FF173A76AB03143FA590
      20AF444F5D207176428A9338B199EC54D8AEE3DEF63D91870967EE96812874E0
      C5F71631D19EE1C037679DFFFD9133D9A9EC39E14EB1337B3FB4750F5D31D21F
      3D76A0AA022505149D9D0F45419B61085282D83676CB2CE56000C08E675A9403
      982CC19F21C38774B25CBC961E0B967E98A4AE90870624FB1124DAD1701CA01E
      3054110362BA71A912985286F8191407C4C3C4F9A083A1B4016488D5C9A0B6B0
      DB2AA00EFCFBA3456DD3FF6AFF645C98B0ABCCBB6580DF2F183D72008A8AF2A3
      14AAB870D2A637E1A457959AC819AE3CCAC11000DC16523505E180B7ADD92D03
      FFDF7CBF80926C2B156E1E14B60DDCCFFEEDC0570510079AC3AE2B87B1BF10D0
      BC7655A09DB08026F72354B8D281FDBD1F40CC973CB17097DF33645C6B500C30
      00DDEC7EDB0FA024F831C55D7DCF90B45A4392010EBBADF703EE3D7B904A77C9
      630B94DDFA71EB8C81ADBD6864343B7ECF904C9C36BA9493A61DD2B6F5241960
      4FC5FD80148FB1431A9B117F900755D12D4063540F99A86DFC9B49527074D8CE
      64EF07F07B866482E1DC0F387D4C69BC5766402BD8810132C1B8E600D28210DD
      EC5894930F020269A911116EFE2D00CB2EB85A4CDBFD001287E2E96008885BD2
      D19564807DBFDA0FA0C89F5BC8B8DDC22CEC88D891F8B71C967C71DF4EFB0190
      12085BD7CEE89F77F3BCADD5AEABF1DF46A7633252BFEB3CEF7377E4E1834349
      0658FAF6EE07E02FE5C0010302782AB3BBEF195EFDFC1221F11E651952529012
      5BBBB9F9CA47EFBC6A79E4870F563BAE99AF271960BD12E2EA049C94332C1ACA
      4D87C30EA2CD2AA0CDE2EF713FA073BE9477CBC2A96BDD3C735C27B9F5A59F0F
      693CE9F157BCC7564D09FC75F0C6240394407BF703B0D084362A03B660129250
      967AE05552CC725DFD59A5F4ED912DFEA81975587C1BA46B7DCAD2C3DFFFB471
      60D870BE665CF3CDB41606504CB51F40AD034EDBB079A28FB0BDCAE6C165969E
      B46833D07673ECE7FF38FEBE789B1C00E23E4CAD70B986B1AED2AF7DBDA2CE2A
      CA763B87F6CE8D2C5CDB3418F9FE6D8C9C76FEF5E3FA17E2F3415A2C1AC37D26
      A488985D1956113725594D640A3CAB6474931105783C08E22C79086EDCF2209B
      6A02DA17CB6B2132EEB989E4A4B904B77CE866249691940091B7773FE08A63B1
      0B8622C328065A0BEDA1C55BA56FCF6CC14781C58BF3BD9B6B03327F653D92E0
      9510EE8EC11516B1467FC4B1647D93F4CC741ED5C2008AD3763FA04B0E554F64
      5D3522410D050222DC55C0FE0DFE3875AA210A07CFA34BB62AB10711EFC13FA7
      B6D687E4CBE5751244353821595D9728FE136FCC5B5627C5298E093F5C51F161
      92012A21FB0252E89A1727BC0684E906BEF8C6048828434E08CA1367E0F11FB7
      4A1FD439273E294E4358F2CF21761E19C7BFC9B1DB6745717F8DF3D3A535D235
      D598B4ECAA03DFEF7ACFE29666480692FB01EC8C887C0E3A24BA69D39F808B8E
      421524DCB4489C75EE8776E28E1A10F7CB172839BCF85B2F5398315C45E120F1
      CEE9CE232615E91F58772E722EBF7440A4450290727BF60358F030D2DA35F0F4
      72D4394A1E4644BAD7255BEB83F2C54F7582D2722A0E816A128858C6673FD648
      8714C7F89557567CB0F1D1C59EE5570C0C92B524035442020309C087CC7441C4
      F0B0E36155B00590389BDBB33FC5C51E02435E887D4B6D503EA3D8B119823FCE
      E38CB986FF1D98F2D98FB55296624C5A7EF5811FF4B97391D1C9230A15B12719
      6015B4673F8099CE995421244E6DF7431C14FB16683BEB1CFF4987D8A1F16871
      B881583E5D5223B99BBEBA70F2E8C3DE0BDCB6C0B1EC8A81D149CF2C8E2B1990
      251960E95BEF07F42F4EA691C59B5144161B19689E5D01B1A3A985C075AADB29
      DBF0AF16B67355E706DEBE8378201C954F97D6CA899D5DF2D4AC8BE7558D5CAC
      AFBB6A5088F95B43920A172236D8C4179230520F28D1650018B281DA1E8210BD
      4E87224E118751028A9DF747501949FCBDD3CBA5C00D6978D38D7C97A01440D6
      C6242580C248723F809ACF846F2D94A7E1C6B7C5C5C26724322B3F91C2F46A5C
      0BE192143DA4B4FDCB6535A24A8EA2E03FE1827B71641EEAFCC1A3CAA30797A6
      3BDEF81C7FF90934815D22DC191C76100A20BBDB0F8845B1CD8B8E64D93F6E10
      DFF71F4BDA80436573D90499BF6CB384712C9525C79515A2EA1CDA7EEFA47239
      A03003285B4D956C426DEC24034AFCD4F6440238D55E106D4D77896FED576236
      FE2C05C5B9627C729B2CAFCA9306AB4432F52631740363490C0A572BF7E2F3D2
      7D0AF1B50EDCCCDC4A6D125877B6920CA0B794DDEE075831E9BCED3529CBC465
      BA1945E2915A3976F34C99937FB5AC76F492183E23F4DD8A5AF9DB11BDF1FFA3
      145436C65E4DC7CB49B2BF33D1D62149065849F67EC0A8325D3E5B139F84B2DD
      BF8BC8A56FFD2C83D3BF10374ED7893B474A5C61B9C8F980CC314E923B7E2851
      C40F284CC3BF6F382E40F49AA0DEC4D59AD8AEDC49064CE8E8A8AEF119F1A76B
      403CC13CF703DE7A7B99FC58D94B86741921A714FF20D5965B9CEE0CC9C66877
      6AC61A19D5FB107CF3240D2FBA62E8B50CE1904DA5DE15C1B6614906A803C935
      C08718035AA5DC561B12D374CACC754749955122A7F6D8281B1B9CD2DCF5B696
      54E4947DA7869230D4D2F65A7A264B32B0A7FD80079FFE0E7F748F4A664E89AC
      4AEB294BB31D12CDCD118BDD0A352D212D226495713F00E3FE2FAB823DED078C
      2F4F9713FAE7CBD4AE86E0BEB1381D4C83F01F6154383A0015D2FA41AE58FFAD
      396B1DDFE25612E0C6514BD0CEAEFE48B57CD96659BE8C711BF8D86F4056FFA7
      FB016D3927033B848D3BE565FC111E5FA5F038B460D8747E3EFB04D6A50C9EF1
      AA8E849300D301C301DCC4B0158D69B8E9F035C29F07FCE7BB678F4968237C7B
      30449A8C26717A78F40EB645E2205C30F8849716C01FEB54943677E298AEC79F
      7FFEB0CED75D37D67DCB6D876BB7026EBE69BCFB920B87779EFABB9EC777ED98
      319769879CF8D2822127BDDC196E9930E365EDC049CF8A8D9F6136C41B3E7C13
      4E7D45B2F3D2C4EF0B69F35E3A51D6FCF0324B7D3FEE187A79C881251D4E3E7D
      908C3EB297F4ECDF4172D0D5BAF1C9302726214EB7435C290EC92BCA905E0714
      C8C891A5326248471C078F75D8B8ADF9D2A2FEC7E77EF6ECB16FF7A838012D09
      F71D658F97A1634E93558B66832A74984F72E670E89296E1D55EB9FF088BA5D6
      4D6B4DE78E19A9D3705F6D876EB968E1685CE85D4CFCA5CE526D1E3939DCA035
      60F88747B8A8C0F247131718A3686B3637CAF3CF7E2F3FAD6FD8800443502D95
      3D473D2ADD80EFED278F411018207196047FD1D5DE7BE658122FD72C6BD9A883
      4BF5F127F6C7112D87345637E3FB0361F163E211AA0F48A02984537C31FC19C2
      54489C063E9605A2695870A466792535DB2B19B929E2C664457090F9FDB9CBE4
      CD8FD7805DAD0F985871F8E9AF4A8FB21C59BEB25A8C92F2A33179D425188848
      FEA0930B8071E598C3BA3A479F3040EAB737C9BAAFD74B604BA36C5B5F271ECC
      727AE4A7C8F0F25C396440911C3AA050C60C2A9111BDF3A44F974C81DE4AE5B6
      6659B3A606C778FD82EB9CC4F038A5479F22F1E25A8515AB6A2E281E70C2C3F3
      9E3EC63768D849B2761346D22E7D8EC11D7B229FA2DE11B9ECA0119D730F3EA6
      BF44C231A904D1866D4D72509F7C39616C5719D2A740BA76CC941C94D28BAF05
      E23A3E7C660C231FAACF037F717EAA0CE8912B23FA62A9E70BCB37DF6FC17912
      1C624B7549B75E68EDBEB0B6667DFDB99B7F987DDB779F3F27B96553C5E83F72
      86E3BDA78F8DA1DEEF47E9279C70D1482862180B094D7C1079A0D627A74CEC91
      9C1BB0AB453A15AFC1117FA7D4D2E3412510674959718692CC967575E2C3CB7E
      4AA3AC479EAC59B6DDEDED3A2D77CB0FB3DF1E35E10CFC231D48409CA2DF7EE6
      65A3C495E9E1DA5A70C3A1D4ACAD95A675D532F3F7033118E112E184B699A8CD
      6D10752814952CD4770E20D174812D6E98C6806ED4D4F8E483C59592DA3D5F29
      A80F12BDF3FEAF24C5AD77FCF8B1A336A39355191EE0D30544211FBECA474220
      A23EB68B089612CD00522013BA7CF4D506595C1514073E21E80D56C990AE5972
      206E5A304D13A5C76D1A98BEE9BAE0488F852F7AA44A8ED781DBD9A2D8A43024
      BB3853866335FED9B79B5EEE37FAB18334941E49257AF2452335471A8E778130
      504002BAD44307C29B6AE5AFA75560AC475D0371537348FEF5E13A71F52AC2A7
      429CD2D81496BA259BE4CCF15D859200BFCA90699C1B54DF391976DABFE59833
      874A0E5A06AF1C0C5636CA3F1FFB96E90C3230A5A8306DEEF833874B30C8CF3E
      601A2DF86C08261B0DEB6AC5DC5E2F579F7480E03633C1A589B2697383BCB0B0
      4A42A5F9E283B4422E87547DBD56AE3DA24CCA51C7EA70241885114EF3B8303D
      F8CCB99231BA8FA4E7783161B1F0F1214BD6BFB11837F947A6B20AA677EE9E27
      B80D13F787A0B3815A68E86830B7111D17A756D60565E439FF21B749C8E99A27
      8538001945D3D580D35FEB97AC345C03C114A0CCD2530728DA8D5B9AF0391AF4
      96A94E7C122F8629BC25B87F4EBCB96960A06EBA81A67757DFE15D326368AFB8
      4D0DBB2B18E5A1D4AC4FC3EB928CB27C291AD851D2FA164BFA01259233A0B3A4
      146709AF746095552EDB260765E8F2BBC3BA62328A237960800A898E4DD8BBDE
      F5E442591BD3C5D339179D17FE998F2AC6D251F5298D5B1BD25905C129678F70
      F3B4A3032B50D5B4A0710EB0EFC34DDEDB9A22DC648202A2DB4409891C158B4E
      C621353F6D93F2E626B9EE9C41928F3E804D14F495F239D0027E5E5523D367CD
      93AC89FD548F8AAFA8A8D614D174C9C6D73E367EFC93DA277459C81506314B87
      96A3F4F04A25AEE9AFF247055D3FD8015B68E0260037E849108A17FE718D8C29
      F6CA051740B950B72C31F8C38003FD41352E5CBC452EFFC70271F7C5C084950B
      2E4A43346E3904FE28E68DBC910301D0203C718597DAD3E17416A4643BFECB5F
      17C0AD19688EA089D273968C9CBA81FF193548872D55327D6C179938A61B72A3
      B96146CB364F4F33C68957DE5A218F7DB85E622539E2EE948B6F9BE073852815
      0B00646ABECEEBC4985E55C1C45387B8AB4C7CDF10D4B7FBA252178AA11D4061
      517666C2E0846688D10E7A52F3C972B97D6A371937B6BB1A8C8017A5D6045B20
      F29F0FD7C85368A29BAA7CE218D045F4BC74E1D61B348374012804141CD7AA4A
      477C8AABF2F3952132B0FEE0C90774F667A6E1FA86A0D463B70167FE91188B4A
      141FED029C5074E807C040F39B0BE58E3306C8A18794AAFA645D53790F3AEB75
      3131378876CC1377977C7C392486788E96506A1415BAC7A750534D5449497D83
      D42CD9B481AD60446EB6B76F383F43B8C3C1B3E64CCC9223876A15CA0DE6B108
      94C8AA6D3216A360D7D21CC13580AAF4FEA6A03CF3CE6A31C7F6C71F265D2835
      AA0C999985AA8B72084B041D471E533C685D69DB6A31BC07DE85AECBF35BD654
      8B0F0A87FB8020740B4821342892BA89192958BF506AD0471D01B11BDFCCE56A
      18771922AD261C19112C3A763A595EA66707C49D74B6260540C0708EA00E13F7
      D6D43431CBF3402FFFD95EE5B3522361F47406D6FE3A08A1BE51B9988EC1AD61
      A613F793A891E296CB1F5D28437F3F2709079DF726BA6E5CAA884909AB04EF89
      31C7D000C4156F150C030F38AB6E482E96FBECD2C1C17F8CDE3D8FB2424E479F
      74B1FABAD1E98483118C5AF18C68AE68F274A3E4681131B44967177CE7AA7B91
      38DB805156200630920819A51EE102425500562BB223562415E38D6BF926F135
      85666376F4B28E2E17D8E5A2752BAB24DF8C8803D328DC378C8C825D2EDE53C9
      9260598E2A49C3A4C381F1226BC95AC9F9FE6709BCBB58F217AD92E2151B44EA
      FDC2AAE178417043D15CC8E37452026861A80727BAF6C27050AAB63692998B66
      DCF499AEBBD33D0E705209457B60E3C72BA4240FF301447B50CFB82059888493
      4CB71317328255CF8A4D92AE8B3C7DE31899FFF43479E2FAD1E2866AE76CAA84
      042C7C3AC200802008BB006404F7218B0E663A60CE583B7F0D14DB7A8034B7AD
      DCAE199DCBA749D701C7CB17CF1FF77666F76967E46BB86EB447A1F8FDD00903
      9F104BE80215CE8FD991B9BE4A9E0271DEAE82268DBB67741937BC93BCF4D6CF
      82AFFA4A3ABA6474A86AAB8E1B5654469447B231D7B0BE5F235BB7346C00F189
      A34F9EAD99E80175A8BDC984874C7B8EE9862C5DB0C1D2576D950E05694A89BC
      6E9406F796E25A70AC362DA9690C4B1AD6046C5A9C74B0A9A5C35F85E91BA42C
      5E74AEBC549BD581F7046A8A5E909722B278BDACFD693B930F39ECB817A05BD8
      F74235E96C16686E9627CDA369DB1B2AB1B7D17BC1472BADE8D28DD2A92855CD
      629CC0ECD23549CF4D9534CC6EEAEA020A31875D6A7D55B54F31955B94214E8C
      48948E1B4CBB51E7C5B96E097FB35A7EFE617308634E6F4FA3BFD281485C8ACD
      028BFEC173C7A173005943B30A4A73F5F47064057C450B3F5D155AF9DAF7D22D
      D72305988ABB7063596E1EAE0E45F59CF4970F65D1926DD280527F8FF703D367
      7E84613B0F2BAB5455FF2990481E663F1D0C535601C74F4BB66C00B5CE19D1E8
      8ACCA20CF28D81D112D276204239B840D13C9A09EEF4EF9E39A612E11EEDC497
      BED97CF74743FA569448F9E89E1273BB24774A3F5931EF67B904239D1F536F2F
      A6DC1D07974AD9B052F423BA7A99A00742B2E283A5F2F3B24A5BE1FE38F6E4D9
      B8120A7F6BC2E5ECAC3E12070D68009F09504C40D4BE3ABFF6E51BA7B2BEB83E
      2CD0C3D1CF70616DCFE2E24C29C59CBFB857213E27ED1617DA3437274D2C58EA
      36D649D5BA1A59BFBC522AAB9A8971361E1741E12AC74E9FCDC14A43E1144E9B
      38E2776480016422128A8A13CB1CCBB48C0F9F3F3ECAF0C4E4F5172DCF874E7C
      52D2F3D2F0476BCC513001D0A14BAD89132F5A36ADDDC3BF2EE8E9C567A2E797
      14A6F4CB4C77EE3E613B620C6FB6E84EAF546EDD2EDBB6D52DC6B78D46EC9501
      E25DF1E0F0FA9FD63436FA02D14EF4FF1AC06DC9E2C9CC170E786E695C5156E4
      282FBFF06B4D29E1DE10F28B6C1D8ABC9D86FE89FB147B4BBD73BC37B7584AFA
      0E95E23E8324BD5379F4D6BCC7CACD48834AD82E06B842E2D8AF72ECE1E1F0A6
      4946E901925EDA4FB2BA0D50767A177C25323D47B2B1E6411BE1CCCA1159FEA8
      E8D86B20AA7655C1E2BB07D537056399075FB388791464753F50D2BBE0836A65
      FD24BD73DCF6E67756716C66E88F68D44484AAA38E25A00D60EE2B7FF871AC78
      CC261970D982F65501BA6C35FF53D8F138F4C14528617FB8147E3C9453756874
      B56600AF0FC585A990158B27C39FF2B038898903EB48A66D9704E6DF36404960
      DCF54B994726BF096CAA0563C68852B1A8B494ADA883180228F22CECA3A1F571
      4686409146BC5EBB64E561E2359B65D8558BDB27017E6EAAED9798A8136A9102
      96144D105436B8A0CD92A5A2D5EA78BD461D6218A27081AE25C4652424D02E25
      C48DBD6AA2095A4943A42C968D58D98825532C791A644FE49C319330E323A648
      086FD91816FD250CF0B6CD08161FC09F34F1DD32161B92A50520431804251D2F
      AA1CA0CA291C2541E2041FA6FCFC8F1DF1E99898121999A4BD47A0C808AD13B1
      14440A3AA4ABB8C0482D2928B986261643841D0F27FA624B7C018B9B66AA0AF4
      8404C8606BBCBB74FFFB8AEEF5FE909979F2036B543C95B0A926A20893881B53
      202F8A8E19988A6704C3499801AC164CB0A41E0CD07DF98683C50D253CEACE55
      ED53427C8501D7459BC4D502A62528AC60B1A46C8840958E04582A3240E06809
      8148BD0FFB0274A0AA886FAF5550D9AF9F51B06409DB1B44C68D85160648200D
      7370F54D440413AF2A2D28023F7901D84D5453250FA3FE114DE1287C7B650045
      FD647DA74E9774D9B87101EB9F80B01603A5C43201841044CCB6A53840306C0B
      CC052331DC5119674625C383B86C1DD89312F603CEF92BB3B3EFFBC28F5BD891
      11FEA489B24F05119052A5E2C61693B00AE2D210C1A5FD52D3CC5D1164435AC6
      310D0F352425601D7D743DA23301CA44707941087FF10E34C4472B045E36E0AD
      4673C9006C06C1639B7833840F88F1041F5890D24D4000DE35489D3FAEF53661
      32A618889AD21E09004DDCB87DA63EF84B9FDC827FD1DE1E551324ECF780120C
      539000F582C8097CA5DF48E2A802C6D984194771B54B0989B82D70CD84515505
      B393B9B2E33DD28C89E94335574202719137E310891FFDBD4D8C3621CE445C17
      E23A10E77E4F3AA008F1D1E412EBCD0E9A366B45845E0526FA559F2F240B17D5
      8B3FCFC25B73534858F52FC0CD92B710067FF4A870C176207660EC9E507BEDB5
      2C85B1CD03CDB01E416980BB1FEDA95FD86C5A2970278D0FE70B67ADBE42821E
      4BC2F5514A16546040849E043D04C0C00303070CE22901FEBB9FC8F624810548
      7049CFBABA25673ABDE7977858CB0881010E7CE320A174902D9113E0046DC4D2
      2400241116CFC434040E6E7B5542744263914D99C2340DFB92C0A87CF1077580
      628E130519151DAF633B4CD9789028AC3823C8DE5E092069DCC4674471B7FD6C
      CB00C35B33A408C603C11D1DB0C82480F8F62A817896F89319B0FD13F7249E1C
      0D1511206450BC94F0C0B4F84134E151C17C00B847F88B18E02E28DE3D115512
      D811290F102AE2F0285B3D4018E1088A8B5DB913D58340854F3517D9FDFF0B90
      2E699821913E19A65AD1AE88310508821CB8A00716FC7157FC497C7C9740DF9E
      5A01E315F0E82EC61EE5B61F9C132A3790EF89984AD3E6C1AD7CE26470BB1860
      86B612C0C21545538678DA0DA66F13165A31A8003847AE7631F0C8B79285B4AD
      8D52F8D601BB715721FC9BFF33247CF6EB668BD773810230449403608A09D05F
      80F2A0C20B6EE1E715328F80627811590E009601B380A61A0031C832B0A540CB
      AE01F9242300DB01644845924E580000000049454E4400000000}
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 144
    Top = 192
  end
  object TBXPopupMenu1: TTBXPopupMenu
    Left = 360
    Top = 128
    object TBXItem54: TTBXItem
      Action = StudentCreate
      FontSettings.Name = 'MS Sans Serif'
    end
    object TBXItem55: TTBXItem
      Action = StudentEdit
      FontSettings.Name = 'MS Sans Serif'
    end
    object TBXItem56: TTBXItem
      Action = StudentDelete
      FontSettings.Name = 'MS Sans Serif'
    end
    object TBXSubmenuItem8: TTBXSubmenuItem
      FontSettings.Name = 'MS Sans Serif'
      Caption = #1055#1077#1095#1072#1090#1100
      Hint = ''
      object TBXItem98: TTBXItem
        Action = Action27
        FontSettings.Name = 'Microsoft Sans Serif'
      end
      object TBXItem63: TTBXItem
        Action = attestat
        FontSettings.Name = 'Microsoft Sans Serif'
        Caption = #1058#1080#1090#1091#1083' '#1072#1090#1090#1077#1089#1090#1072#1090#1072' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1073#1097#1077#1084' '#1080' '#1089#1088#1077#1076#1085#1077#1084' ('#1087#1086#1083#1085#1086#1084') '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1080
      end
      object TBXItem81: TTBXItem
        Action = attestat_obr
        FontSettings.Name = 'Microsoft Sans Serif'
        Caption = 
          #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1073#1097#1077#1084' '#1080' '#1089#1088#1077#1076#1085#1077#1084' ('#1087#1086#1083#1085#1086#1084') '#1086#1073#1088#1072 +
          #1079#1086#1074#1072#1085#1080#1080' ('#1083#1080#1094#1077#1074#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
      end
      object TBXItem64: TTBXItem
        Action = attestat_pril
        FontSettings.Name = 'Microsoft Sans Serif'
        Caption = 
          #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082' '#1072#1090#1090#1077#1089#1090#1072#1090#1091' '#1086#1073' '#1086#1089#1085#1086#1074#1085#1086#1084' '#1086#1073#1097#1077#1084' '#1080' '#1089#1088#1077#1076#1085#1077#1084' ('#1087#1086#1083#1085#1086#1084') '#1086#1073#1088#1072 +
          #1079#1086#1074#1072#1085#1080#1080' ('#1086#1073#1088#1072#1090#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')'
      end
      object TBXItem87: TTBXItem
        Action = Action15
        FontSettings.Name = 'Microsoft Sans Serif'
      end
      object TBXItem88: TTBXItem
        Action = Action19
        FontSettings.Name = 'Microsoft Sans Serif'
      end
      object TBXItem80: TTBXItem
        Action = students_list
        FontSettings.Name = 'Microsoft Sans Serif'
      end
      object TBXItem92: TTBXItem
        Action = Action22
        FontSettings.Name = 'Microsoft Sans Serif'
      end
      object TBXItem10: TTBXItem
        Action = Action1
        FontSettings.Name = 'Microsoft Sans Serif'
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = #1059#1095#1072#1097#1080#1081#1089#1103
    CloseDataSource = False
    FieldAliases.Strings = (
      '-id=id'
      'FIO='#1060#1048#1054
      'dat_FIO='#1060#1048#1054'_'#1044#1072#1090#1077#1083#1100#1085#1099#1081
      'birth_date='#1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103
      '-in_test='#1042#1093#1086#1076#1085#1099#1077'_'#1080#1089#1087#1099#1090#1072#1085#1080#1103
      'diplom_sn='#1044#1080#1087#1083#1086#1084'_'#1085#1086#1084#1077#1088
      '-diplom_otl='#1044#1080#1087#1083#1086#1084'_'#1089'_'#1086#1090#1083#1080#1095#1080#1077#1084
      '-diplom_regnum='#1044#1080#1087#1083#1086#1084'_'#1088#1077#1075'_'#1085#1086#1084#1077#1088
      '-diplom_dublikat='#1044#1080#1087#1083#1086#1084'_'#1076#1091#1073#1083#1080#1082#1072#1090
      '-diplom_work='#1042#1099#1087#1091#1089#1082#1085#1072#1103'_'#1088#1072#1073#1086#1090#1072
      '-diplom_mark='#1042#1099#1087#1091#1089#1082#1085#1072#1103'_'#1088#1072#1073#1086#1090#1072'_'#1086#1094#1077#1085#1082#1072
      '-gak='#1043#1040#1050
      '-gak_mark='#1043#1040#1050'_'#1054#1094#1077#1085#1082#1072
      '-dok_pred='#1044#1086#1082#1091#1084#1077#1085#1090'_'#1087#1088#1077#1076'_'#1086#1073#1088
      '-dok_pred_num='#1053#1086#1084#1077#1088'_'#1076#1086#1082#1091#1084#1077#1085#1090#1072'_'#1086'_'#1087#1088#1077#1076'_'#1086#1073#1088
      '-school='#1044#1086#1082#1091#1084#1077#1085#1090'_'#1087#1088#1077#1076'_'#1086#1073#1088'_'#1074#1099#1076#1072#1085
      '-dok_pred_year='#1044#1086#1082#1091#1084#1077#1085#1090'_'#1087#1088#1077#1076'_'#1086#1073#1088'_'#1075#1086#1076
      '-uz_postupil='#1087#1086#1089#1090#1091#1087#1080#1083'_'#1074
      'uz_zakonchil='#1079#1072#1082#1086#1085#1095#1080#1083'_'#1074
      'postupil_god='#1087#1086#1089#1090#1091#1087#1080#1083'_'#1075#1086#1076
      'zakonchil_god='#1079#1072#1082#1086#1085#1095#1080#1083'_'#1075#1086#1076
      '-srok_obuch='#1089#1088#1086#1082'_'#1086#1073#1091#1095
      '-kvalify='#1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
      '-specialnost='#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      '-specialize='#1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
      'prikaz_date='#1044#1072#1090#1072'_'#1087#1088#1080#1082#1072#1079#1072'_'#1086#1090#1095#1080#1089#1083
      'prikaz_num='#1053#1086#1084#1077#1088'_'#1087#1088#1080#1082#1072#1079#1072'_'#1086#1090#1095#1080#1089#1083
      'resh_date='#1044#1072#1090#1072'_'#1088#1077#1096#1077#1085#1080#1103
      'vid_date='#1044#1072#1090#1072'_'#1074#1099#1076#1072#1095#1080
      'sex='#1055#1086#1083)
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 344
    Top = 232
  end
  object SaveDialog2: TSaveDialog
    Filter = #1060#1072#1081#1083' DBaseIII|*.dbf'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 496
    Top = 32
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'Student_list'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-id=id'
      'FIO='#1060#1048#1054
      'dat_FIO='#1060#1048#1054'_'#1044#1072#1090#1077#1083#1100#1085#1099#1081
      'birth_date='#1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103
      'in_test='#1042#1093#1086#1076#1085#1099#1077'_'#1080#1089#1087#1099#1090#1072#1085#1080#1103
      'diplom_sn='#1044#1080#1087#1083#1086#1084'_'#1085#1086#1084#1077#1088
      'diplom_otl='#1044#1080#1087#1083#1086#1084'_'#1089'_'#1086#1090#1083#1080#1095#1080#1077#1084
      'diplom_regnum='#1044#1080#1087#1083#1086#1084'_'#1088#1077#1075'_'#1085#1086#1084#1077#1088
      'diplom_dublikat='#1044#1080#1087#1083#1086#1084'_'#1076#1091#1073#1083#1080#1082#1072#1090
      'diplom_work='#1042#1099#1087#1091#1089#1082#1085#1072#1103'_'#1088#1072#1073#1086#1090#1072
      'diplom_mark='#1042#1099#1087#1091#1089#1082#1085#1072#1103'_'#1088#1072#1073#1086#1090#1072'_'#1086#1094#1077#1085#1082#1072
      'gak='#1043#1040#1050
      'gak_mark='#1043#1040#1050'_'#1054#1094#1077#1085#1082#1072
      'dok_pred='#1044#1086#1082#1091#1084#1077#1085#1090'_'#1087#1088#1077#1076'_'#1086#1073#1088
      'dok_pred_num='#1053#1086#1084#1077#1088'_'#1076#1086#1082#1091#1084#1077#1085#1090#1072'_'#1086'_'#1087#1088#1077#1076'_'#1086#1073#1088
      'school='#1044#1086#1082#1091#1084#1077#1085#1090'_'#1087#1088#1077#1076'_'#1086#1073#1088'_'#1074#1099#1076#1072#1085
      'dok_pred_year='#1044#1086#1082#1091#1084#1077#1085#1090'_'#1087#1088#1077#1076'_'#1086#1073#1088'_'#1075#1086#1076
      'uz_postupil='#1087#1086#1089#1090#1091#1087#1080#1083'_'#1074
      'uz_zakonchil='#1079#1072#1082#1086#1085#1095#1080#1083'_'#1074
      'postupil_god='#1087#1086#1089#1090#1091#1087#1080#1083'_'#1075#1086#1076
      'zakonchil_god='#1079#1072#1082#1086#1085#1095#1080#1083'_'#1075#1086#1076
      'srok_obuch='#1089#1088#1086#1082'_'#1086#1073#1091#1095
      'kvalify='#1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
      'specialnost='#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      'specialize='#1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
      'prikaz_date='#1044#1072#1090#1072'_'#1087#1088#1080#1082#1072#1079#1072'_'#1086#1090#1095#1080#1089#1083
      'prikaz_num_text='#1053#1086#1084#1077#1088'_'#1087#1088#1080#1082#1072#1079#1072'_'#1086#1090#1095#1080#1089#1083'_1'
      'resh_date='#1044#1072#1090#1072'_'#1088#1077#1096#1077#1085#1080#1103
      'vid_date='#1044#1072#1090#1072'_'#1074#1099#1076#1072#1095#1080)
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 384
    Top = 232
  end
  object SaveDialog3: TSaveDialog
    Filter = #1060#1072#1081#1083' CSV|*.csv'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 464
    Top = 32
  end
  object OpenDialog2: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' CSV|*.csv|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 432
    Top = 128
  end
  object ZQuery3: TZQuery
    Connection = MainConnection
    Params = <>
    Left = 168
    Top = 104
  end
  object XPManifest1: TXPManifest
    Left = 416
    Top = 25
  end
end
