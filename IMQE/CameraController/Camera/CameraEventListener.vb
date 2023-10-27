'/******************************************************************************
'*                                                                             *
'*   PROJECT : EOS Digital Software Development Kit EDSDK                      *
'*      NAME : CameraEventListener.vb                                          *
'*                                                                             *
'*   Description: This is the Sample code to show the usage of EDSDK.          *
'*                                                                             *
'*                                                                             *
'*******************************************************************************
'*                                                                             *
'*   Written and developed by Camera Design Dept.53                            *
'*   Copyright Canon Inc. 2006 All Rights Reserved                             *
'*                                                                             *
'*******************************************************************************
'*   File Update Information:                                                  *
'*     DATE      Identify    Comment                                           *
'*   -----------------------------------------------------------------------   *
'*   06-03-22    F-001        create first version.                            *
'*                                                                             *
'******************************************************************************/

Option Strict Off
Option Explicit On 
Imports System.Runtime.InteropServices


Public Class CameraEventListener

    'Public Shared Cameralindex As Integer = 0
    Public Shared Function handleObjectEvent( _
      ByVal inEvent As Integer, _
      ByVal inRef As IntPtr, _
      ByVal inContext As IntPtr) As Long

        Dim rtn As Long

        Select Case inEvent
            Case kEdsObjectEvent_DirItemRequestTransfer
                For Each item As CameraController In MyPHCameraController.CameraControllerList
                    If item.model.getCameraObject() = inContext Then
                        item.actionPerformed("download", inRef)
                    End If
                Next

            Case Else
                '//Release unnecessary objects.
                If IsNothing(inRef) = False Then
                    EDSDK.EdsRelease(inRef)
                End If

        End Select

        rtn = CLng(EDS_ERR_OK)
        Return rtn

    End Function


    Public Shared Function handlePropertyEvent( _
         ByVal inEvent As Integer, _
         ByVal inPropertyID As Integer, _
         ByVal inParam As Integer, _
         ByVal inContext As IntPtr) As Long

        Dim rtn As Long

        Select Case inEvent
            Case kEdsPropertyEvent_PropertyChanged
                'Xsj20120525:注釋掉如下代碼。
                'MyPHCameraController.controller.actionPerformed("get", inPropertyID)
                'Xsj20120525:添加如下代碼
                For Each item As CameraController In MyPHCameraController.CameraControllerList
                    If item.model.getCameraObject() = inContext Then
                        item.actionPerformed("get", inPropertyID)
                    End If
                Next

            Case kEdsPropertyEvent_PropertyDescChanged
                'Xsj20120525:注釋掉如下代碼。
                'MyPHCameraController.controller.actionPerformed("getlist", inPropertyID)
                'Xsj20120525:添加如下代碼
                For Each item As CameraController In MyPHCameraController.CameraControllerList
                    If item.model.getCameraObject() = inContext Then
                        item.actionPerformed("getlist", inPropertyID)
                    End If
                Next
 

        End Select


        rtn = CLng(EDS_ERR_OK)
        Return rtn

    End Function


    Public Shared Function handleStateEvent( _
          ByVal inEvent As Integer, _
          ByVal inParam As Integer, _
          ByVal inContext As IntPtr) As Long

        Dim rtn As Long

        Select Case inEvent
            Case kEdsStateEvent_Shutdown
                'Xsj20120525:注釋掉如下代碼。
                'MyPHCameraController.controller.actionPerformed("clse")
                'Xsj20120525:添加如下代碼
                For Each item As CameraController In MyPHCameraController.CameraControllerList
                    If item.model.getCameraObject() = inContext Then
                        item.actionPerformed("close")
                    End If
                Next

        End Select


        rtn = CLng(EDS_ERR_OK)
        Return rtn

    End Function


End Class
