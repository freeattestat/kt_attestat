object FilePropForm: TFilePropForm
  Left = 454
  Top = 184
  BorderStyle = bsDialog
  Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1078#1091#1088#1085#1072#1083#1072
  ClientHeight = 249
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 444
    Height = 208
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 12
      Width = 108
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1064#1072#1073#1083#1086#1085':'
    end
    object Label2: TLabel
      Left = 2
      Top = 74
      Width = 108
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1059#1095#1077#1073#1085#1086#1077' '#1079#1072#1074#1077#1076#1077#1085#1080#1077':'
    end
    object Label3: TLabel
      Left = 2
      Top = 44
      Width = 108
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1060#1048#1054' '#1044#1080#1088#1077#1082#1090#1086#1088#1072':'
    end
    object Label4: TLabel
      Left = 242
      Top = 152
      Width = 108
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1043#1086#1076' '#1086#1082#1086#1085#1095#1072#1085#1080#1103':'
    end
    object Label5: TLabel
      Left = 10
      Top = 184
      Width = 343
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1053#1072#1095#1072#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1089#1090#1088#1086#1082#1080' '#1082#1085#1080#1075#1080' '#1091#1095#1077#1090#1072' '#1074#1099#1076#1072#1085#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074': '
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 8
      Width = 321
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
    end
    object UzMemo: TMemo
      Left = 112
      Top = 72
      Width = 296
      Height = 65
      TabOrder = 2
    end
    object Button3: TButton
      Left = 409
      Top = 72
      Width = 25
      Height = 65
      Caption = '...'
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 112
      Top = 40
      Width = 321
      Height = 21
      TabOrder = 1
    end
    object SpinEdit1: TSpinEdit
      Left = 352
      Top = 148
      Width = 81
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 2009
    end
    object SpinEdit2: TSpinEdit
      Left = 352
      Top = 180
      Width = 81
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 208
    Width = 444
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      444
      41)
    object Button1: TButton
      Left = 284
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1050
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 364
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
  object ZQuery1: TZQuery
    Connection = MainForm.MainConnection
    SQL.Strings = (
      'select * from students;')
    Params = <>
    Left = 936
    Top = 8
  end
end
