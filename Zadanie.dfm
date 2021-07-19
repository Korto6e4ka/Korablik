object Form1: TForm1
  Left = 420
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1047#1072#1076#1072#1085#1080#1077' 33.'
  ClientHeight = 633
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = -8
    Top = -1
    Width = 925
    Height = 634
    Align = alCustom
  end
  object BitBtn1: TBitBtn
    Left = 800
    Top = 568
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 688
    Top = 568
    Width = 75
    Height = 25
    Caption = #1057#1090#1072#1088#1090'/'#1057#1090#1086#1087
    TabOrder = 1
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 1072
    Top = 176
  end
end
