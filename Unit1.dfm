object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 284
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 284
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 265
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 449
      Height = 42
      Align = alTop
      Alignment = taCenter
      Caption = 
        #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1074#1099#1095#1080#1089#1083#1080#1090' '#1089#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1077' '#1101#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1086#1081' '#1094#1077#1087#1080', '#1089#1086#1089#1090#1086#1103#1097#1077#1081' '#1080 +
        #1079' '#1076#1074#1091#1093' '#1088#1077#1079#1080#1089#1090#1086#1088#1086#1074
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 424
    end
    object Label2: TLabel
      Left = 83
      Top = 59
      Width = 44
      Height = 15
      Caption = 'R1 (OM)'
    end
    object Label3: TLabel
      Left = 83
      Top = 88
      Width = 44
      Height = 15
      Caption = 'R2 (OM)'
    end
    object LabeSuma: TLabel
      AlignWithMargins = True
      Left = 1
      Top = 257
      Width = 449
      Height = 21
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alBottom
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 238
      ExplicitWidth = 4
    end
    object EditR1: TEdit
      Left = 136
      Top = 56
      Width = 185
      Height = 23
      TabOrder = 0
    end
    object EditR2: TEdit
      Left = 136
      Top = 85
      Width = 185
      Height = 23
      TabOrder = 1
    end
    object Button1: TButton
      Left = 184
      Top = 212
      Width = 81
      Height = 33
      Caption = #1089#1095#1080#1090#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object RadioGr: TRadioGroup
      Left = 136
      Top = 114
      Width = 185
      Height = 76
      Caption = #1058#1080#1087' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
      ItemIndex = 0
      Items.Strings = (
        #1055#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086
        #1055#1072#1088#1072#1083#1077#1083#1100#1085#1086)
      TabOrder = 3
      OnClick = RadioGrClick
    end
  end
end
