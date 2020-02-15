object Form2: TForm2
  Left = 2115
  Top = 372
  AutoScroll = False
  BorderWidth = 20
  Caption = 'Main Menu'
  ClientHeight = 321
  ClientWidth = 244
  Color = clBtnFace
  Constraints.MaxHeight = 400
  Constraints.MaxWidth = 300
  Constraints.MinHeight = 300
  Constraints.MinWidth = 200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 32
    Top = 83
    Width = 177
    Height = 65
    Caption = 'New Game'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 32
    Top = 163
    Width = 177
    Height = 65
    Caption = 'Best Scores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 32
    Top = 243
    Width = 177
    Height = 65
    Caption = 'Quit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object StaticText1: TStaticText
    Left = 40
    Top = 11
    Width = 159
    Height = 44
    Alignment = taCenter
    Caption = 'Arkanoid!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  inline Frame3: TFrame3
    Left = 0
    Top = 0
    Width = 241
    Height = 324
    TabOrder = 4
    inherited Button1: TButton
      Left = 56
      OnClick = Frame31Button1Click
    end
  end
end
