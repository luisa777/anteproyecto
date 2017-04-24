VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7545
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10635
   LinkTopic       =   "Form1"
   ScaleHeight     =   7545
   ScaleWidth      =   10635
   StartUpPosition =   3  'Windows Default
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   615
      Left            =   3840
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   ""
      Top             =   1200
      Width           =   3015
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Siguiente registro"
      Height          =   615
      Left            =   5640
      TabIndex        =   11
      Top             =   240
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Nuevo registro"
      Height          =   615
      Left            =   4080
      TabIndex        =   10
      Top             =   240
      Width           =   1095
   End
   Begin VB.TextBox Text5 
      DataField       =   "Pruducto"
      Height          =   375
      Left            =   1920
      TabIndex        =   9
      Top             =   2640
      Width           =   1335
   End
   Begin VB.TextBox Text4 
      DataField       =   "Empresa"
      Height          =   375
      Left            =   1920
      TabIndex        =   8
      Top             =   2040
      Width           =   1335
   End
   Begin VB.TextBox Text3 
      DataField       =   "Vehiculo"
      Height          =   375
      Left            =   1920
      TabIndex        =   7
      Top             =   1440
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      DataField       =   "Cliente"
      Height          =   375
      Left            =   1920
      TabIndex        =   6
      Top             =   840
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      DataField       =   "Vendedor"
      DataSource      =   "Data1"
      Height          =   405
      Left            =   1920
      TabIndex        =   5
      Top             =   240
      Width           =   1335
   End
   Begin VB.Label Label5 
      Caption         =   "Producto"
      DataField       =   "Producto"
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   2760
      Width           =   855
   End
   Begin VB.Label Label4 
      Caption         =   "Empresa"
      DataField       =   "Empresa"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   2160
      Width           =   855
   End
   Begin VB.Label Label3 
      Caption         =   "Vehiculo"
      DataField       =   "Vehiculo"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   1560
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "Cliente"
      DataField       =   "Cliente"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Vendedor"
      DataField       =   "Vendedor"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Data1.Recordset.MovePrevious
if data1.Recordset.BOF=True
Data1.Recordset.MoveFirst
End If

End Sub

Private Sub Command2_Click()
Data1.Recordset.MoveNext

End Sub
