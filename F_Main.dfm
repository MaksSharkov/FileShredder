object Form1: TForm1
  Left = 349
  Top = 239
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'File Shredder'
  ClientHeight = 199
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 32
    Width = 40
    Height = 16
    Caption = #1060#1072#1081#1083':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object gau1: TGauge
    Left = 8
    Top = 168
    Width = 569
    Height = 20
    ForeColor = clBlue
    Progress = 0
  end
  object lbl2: TLabel
    Left = 8
    Top = 64
    Width = 120
    Height = 16
    Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1093#1086#1076#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 48
    Top = 32
    Width = 449
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 504
    Top = 32
    Width = 75
    Height = 21
    Caption = #1042#1099#1073#1088#1072#1090#1100
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 236
    Top = 128
    Width = 113
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100'!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn2Click
  end
  object edt2: TEdit
    Left = 128
    Top = 64
    Width = 57
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = '1'
  end
  object ud1: TUpDown
    Left = 185
    Top = 64
    Width = 16
    Height = 21
    Associate = edt2
    Min = 1
    Max = 50
    Position = 1
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 96
    Width = 161
    Height = 17
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1089#1083#1077' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
    TabOrder = 5
  end
  object dlgOpen1: TOpenDialog
    Left = 552
  end
end
