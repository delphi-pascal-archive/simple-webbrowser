object Form4: TForm4
  Left = 272
  Top = 121
  BorderStyle = bsDialog
  Caption = 'Ajout de Favoris'
  ClientHeight = 83
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 21
    Width = 28
    Height = 13
    Caption = 'Nom :'
  end
  object Button1: TButton
    Left = 240
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 320
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 40
    Top = 17
    Width = 353
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
end
