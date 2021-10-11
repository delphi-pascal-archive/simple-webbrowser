object Form2: TForm2
  Left = 329
  Top = 114
  Width = 432
  Height = 376
  Caption = 'Source '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 200
    Height = 249
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 216
    Top = 8
    Width = 200
    Height = 249
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 264
    Width = 121
    Height = 25
    Caption = 'Source HTML and TXT'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 303
    Width = 97
    Height = 25
    Caption = 'Save HTML Code'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'c:\test.txt'
  end
end
