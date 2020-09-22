VERSION 5.00
Begin VB.Form frmViewLog 
   Caption         =   "IE Customizer - Registry Backup Log"
   ClientHeight    =   4644
   ClientLeft      =   48
   ClientTop       =   336
   ClientWidth     =   6144
   LinkTopic       =   "Form1"
   ScaleHeight     =   4644
   ScaleWidth      =   6144
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdClear 
      Caption         =   "&Clear"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.6
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   3720
      TabIndex        =   2
      Top             =   3960
      Width           =   1332
   End
   Begin VB.CommandButton cmdOk 
      Caption         =   "&Ok"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.6
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   840
      TabIndex        =   1
      Top             =   3960
      Width           =   1212
   End
   Begin VB.TextBox txtViewLog 
      BackColor       =   &H00C0FFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.6
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00004080&
      Height          =   3132
      Left            =   480
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   480
      Width           =   5172
   End
End
Attribute VB_Name = "frmViewLog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim ViewLog As String
Dim ReadString As String
Dim Endoffile As String
Dim DEL As String


Private Sub cmdOK_Click()
    Unload Me
    frmRegBack.Show
End Sub

Private Sub cmdClear_Click()

Open "C:\REGBACKUP\log.txt" For Output As 1
txtViewLog.Text = ""
Write #1,
Close 1
txtViewLog.Text = ""

End Sub

Private Sub Form_Load()
    ViewLog = "C:\REGBACKUP\log.txt"

If Dir(ViewLog) <> "" Then

    Open ViewLog For Input As #1
        Do While Not EOF(1)
         Line Input #1, ReadString
      
     'MsgBox ReadString
     Endoffile = Endoffile & ReadString & Chr$(13) + Chr$(10)
      
      txtViewLog.Text = Endoffile
Loop

Close #1

Else
    MsgBox "Log file not found in Windows", vbOKOnly, "Error"
    Exit Sub
End If

End Sub
