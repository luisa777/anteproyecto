VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6060
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8880
   LinkTopic       =   "Form1"
   ScaleHeight     =   6060
   ScaleWidth      =   8880
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Left            =   5160
      Top             =   600
   End
   Begin VB.Shape Shape1 
      Height          =   615
      Left            =   480
      Shape           =   3  'Circle
      Top             =   480
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Boolean_()
Option Explicit
Dim Arriba As Boolean
Dim Derecha As Boolean
Const Incremento = 50
End Sub

Private Sub Form_Load()
Arriba = False
Derecha = False
End Sub

Private Sub Timer1_Timer()
If (((Shape1.Left + Shape1.Width) + Incremento) > Me.Width) Then
Derecha = Not Derecha
End If
If (Shape1.Left - Incremento < 0) And Derecha = False Then
Derecha = True
End If
If (((Shape1.Top + Shape1.Height) + Incremento) > Me.Height) Then
Arriba = Not Arriba
End If
If (Shape1.Top - Incremento < 0) And Arriba = False Then
Arriba = True
End If
Shape1.Move IIf(Derecha = True, Shape1.Left + Incremento, Shape1.Left - Incremento), IIf(Arriba = True, Shape1.Top + Incremento, Shape1.Top - Incremento)
Me.Caption = Shape1.Left & ", " & Shape1.Top
End Sub
