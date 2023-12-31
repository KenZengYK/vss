'/******************************************************************************
'*                                                                             *
'*   PROJECT : EOS Digital Software Development Kit EDSDK                      *
'*      NAME : DownloadCommand.vb                                              *
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

Option Explicit On
Imports System.Runtime.InteropServices
Imports System.Collections.Generic


''' <summary>
''' Xsj:相机下载图片指令
''' </summary>
''' <remarks></remarks>
Public Class DownloadCommand
    Inherits Command


    'Xsj:照片信息實體
    Public currOperator As OperaterObj


    'Xsj:输出目录的信息
    Private directoryItem As IntPtr

    ' Callback Functions
    Public inProgressCallback As New  _
                EDSDKTypes.EdsProgressCallback(AddressOf ProgressFunc)

    'Xsj:構造函數
    Public Sub New(ByVal inModel As CameraModel, ByVal dirItem As IntPtr)
        MyBase.new(inModel)
        Me.directoryItem = dirItem
    End Sub

    'Xsj:構造函數
    Public Sub New(ByVal inModel As CameraModel, ByVal dirItem As IntPtr, ByVal COperator As OperaterObj)
        MyBase.new(inModel)
        Me.directoryItem = dirItem
        Me.currOperator = COperator
    End Sub

    Protected Overrides Sub Finalize()
        '// Release item.
        If IsNothing(Me.directoryItem) = False Then
            EDSDK.EdsRelease(Me.directoryItem)
            Me.directoryItem = Nothing

        End If
    End Sub


    '// Execute a command .
    Public Overrides Function execute() As Boolean
        Dim err As Integer = EDS_ERR_OK
        Dim stream As IntPtr = Nothing
        Dim Flag As Integer = 1
        Dim AFlag As Integer = 0
        'Xsj:声明内存流及其头部指针变量
        Dim pointerToBytes As IntPtr = Nothing

        '// Get informations of the downloadling directory item.
        '//获取远程相机的记忆卡（卷）有关的文件或目录对象信息。
        Dim dirItemInfo As EDSDKTypes.EdsDirectoryItemInfo = Nothing
        err = EDSDK.EdsGetDirectoryItemInfo(Me.directoryItem, dirItemInfo)

        '// Notify starting transfer.
        If err = EDS_ERR_OK Then
            MyPHCameraController.model.notifyObservers(strt)
        End If

        '// Create a file stream for receiving image.
        If err = EDS_ERR_OK Then

            'err = EdsCreateFileStream(dirItemInfo.szFileName, EdsFileCreateDisposition.kEdsFileCreateDisposition_CreateAlways, _
            'EdsAccess.kEdsAccess_ReadWrite, stream)

            'Xsj:20120525:注釋掉
            'Xsj: 建立内存流()

            'AFlag = 0
            'Flag = 1
            'While Flag = 1 Or AFlag < 3
            '    Try
            '        Flag = 0
            '        System.Threading.Thread.Sleep(350)
            '        err = EDSDK.EdsCreateMemoryStream(dirItemInfo.size, stream)
            '        AFlag = AFlag + 1
            '    Catch ex As Exception
            '        Flag = 1
            '    End Try
            'End While

            System.Threading.Thread.Sleep(250)
            err = EDSDK.EdsCreateMemoryStream(dirItemInfo.size, stream)

        End If

        '// Set Progress Callback.
        If err = EDS_ERR_OK Then

            '
            Dim gch As GCHandle = GCHandle.Alloc(Me)

            'Xsj：注冊顯示進度的回調函數
            err = EDSDK.EdsSetProgressCallback(stream, inProgressCallback, _
                                            EdsProgressOption.kEdsProgressOption_Periodically, _
                                            GCHandle.op_Explicit(gch))
            gch = Nothing


        End If

        '// Download image
        If err = EDS_ERR_OK Then

            'err = EdsDownload(Me.directoryItem, dirItemInfo.size, stream)

            'Xsj:注释掉上面的代码，更改為如下代码
            Dim buffer(dirItemInfo.size) As Byte

            'Xsj20120524:注釋掉以下代碼，改為文件流操作
            Dim imageStream As System.IO.MemoryStream = Nothing
            Dim img As Image = Nothing


            'Xsj:填充内存流
            Try
                ''//下载一个远程摄像机上的一个文件（在相机记忆体或记忆卡上的文件）到主机的文件流。


                System.Threading.Thread.Sleep(1000)
                err = EDSDK.EdsDownload(Me.directoryItem, dirItemInfo.size, stream)

                'Flag = 1
                'While Flag = 1 Or AFlag < 3
                '    Try
                '        Flag = 0
                '        System.Threading.Thread.Sleep(200)
                '        err = EDSDK.EdsDownload(Me.directoryItem, dirItemInfo.size, stream)
                '        AFlag = AFlag + 1
                '    Catch ex As Exception
                '        Flag = 1
                '    End Try
                'End While


                '// Complete downloading
                If err = EDS_ERR_OK Then

                    '//下载目录中的项目完成时，必须调用。
                    err = EDSDK.EdsDownloadComplete(directoryItem)

                End If

                


                'Dim GCHandle As GCHandle
                'Flag = 1
                'AFlag = 0
                'While Flag = 1 Or AFlag < 3
                '    Try
                '        Flag = 0
                '        System.Threading.Thread.Sleep(300)
                '        EDSDK.EdsGetPointer(stream, pointerToBytes)
                '        GCHandle = GCHandle.Alloc(buffer, GCHandleType.Pinned)
                '        Marshal.Copy(pointerToBytes, buffer, 0, dirItemInfo.size)
                '        AFlag = AFlag + 1

                '    Catch ex As Exception
                '        Flag = 1
                '        GCHandle.Free()
                '    End Try
                'End While


                System.Threading.Thread.Sleep(500)
                '//获取内存流管理的内存的起始地址的指针。
                EDSDK.EdsGetPointer(stream, pointerToBytes)
                Dim GCHandle As GCHandle = GCHandle.Alloc(buffer, GCHandleType.Pinned)
                Marshal.Copy(pointerToBytes, buffer, 0, dirItemInfo.size)
                dirItemInfo = Nothing

                ''Xsj:釋放內存 
                'GCHandle.Free()

                '//该项目的参考计数器递减。
                EDSDK.EdsRelease(stream)


                'Xsj:创建内存流变量, 并反回图片
                'Xsj20120524:注釋掉以下代碼, 改為文件流操作 
                imageStream = New System.IO.MemoryStream(buffer)
                buffer = Nothing

                If IsNothing(imageStream) = False Then

                    img = Image.FromStream(imageStream, False, True)

                    If IsNothing(img) = False Then

                        If IsNothing(MyPHCameraController.CameraControllerList) = False Then

                            If MyPHCameraController.CameraControllerList.Count > 0 Then

                                If IsNothing(MyPHCameraController.CameraControllerList(0).OwnerName) Then

                                    If MyPHCameraController.CameraControllerList.Count = 1 Then
                                        'Xsj:注释掉上面的代码，更改為如下代码
                                        MyPHCameraController.CameraControllerList(0).OwnerName = "A"

                                    Else

                                        If IsNothing(MyPHCameraController.CameraControllerList(1).OwnerName) Then

                                            'Xsj:注释掉上面的代码，更改為如下代码
                                            MyPHCameraController.CameraControllerList(0).OwnerName = "A"
                                            MyPHCameraController.CameraControllerList(1).OwnerName = "B"

                                        Else
                                            If MyPHCameraController.CameraControllerList(1).OwnerName = "A" Then
                                                MyPHCameraController.CameraControllerList(0).OwnerName = "B"
                                            Else
                                                MyPHCameraController.CameraControllerList(0).OwnerName = "A"
                                            End If
                                        End If

                                    End If

                                ElseIf MyPHCameraController.CameraControllerList.Count > 1 Then

                                    If IsNothing(MyPHCameraController.CameraControllerList(1).OwnerName) Then

                                        If MyPHCameraController.CameraControllerList(0).OwnerName = "A" Then
                                            MyPHCameraController.CameraControllerList(1).OwnerName = "B"
                                        Else
                                            MyPHCameraController.CameraControllerList(1).OwnerName = "A"
                                        End If

                                    End If

                                End If

                            End If

                        End If

                        Dim picFildName As String = MyPHCameraController.ItemSavePathBo.ItemSavePathStr + "\" + Me.currOperator.ImgName + Me.model.OwnerName
                        img.Save(picFildName + ".jpg")

                        'Xsj: 在窗體上顯示拍取的照片()
                        If IsNothing(Me.currOperator.ImgName) = False Then

                            If Me.currOperator.ImgName.StartsWith("Test") Then

                                If picFildName.EndsWith("A") Then
                                    MyBase.model.notifyObserversToUpdatePic(img, "A")
                                Else
                                    MyBase.model.notifyObserversToUpdatePic(img, "B")
                                End If

                            End If

                        End If

                    End If

                End If

                'Xsj:釋放內存
                GCHandle.Free()

            Catch ex As Exception

                MessageBox.Show(ex.ToString())

            Finally

                If IsNothing(imageStream) = False Then

                    'imageStream.Position = 0

                    imageStream.Close()
                    imageStream.Dispose()
                    imageStream = Nothing
                    GC.Collect()


                End If

                img = Nothing
               
                'Xsj: Clean up
                '//该项目的参考计数器递减。
                EDSDK.EdsRelease(pointerToBytes)
                'pointerToBytes = Nothing
                ''//该项目的参考计数器递减。
                'EDSDK.EdsRelease(stream)


                GC.Collect()


            End Try


        End If

        ''// Complete downloading
        'If err = EDS_ERR_OK Then

        '    '//下载目录中的项目完成时，必须调用。
        '    err = EDSDK.EdsDownloadComplete(directoryItem)

        'End If

        '// Release item
        If IsNothing(Me.directoryItem) = False Then

            err = EDSDK.EdsRelease(Me.directoryItem)
            directoryItem = Nothing

        End If

        '// Release the stream
        If IsNothing(stream) = False Then

            err = EDSDK.EdsRelease(stream)
            stream = Nothing

        End If

        '// Notify to complete downloading 
        If err = EDS_ERR_OK Then

            MyBase.model.notifyObservers(cplt)

        End If

        '// Notify Error
        If err <> EDS_ERR_OK Then
            MyBase.model.notifyObservers(errr, err)
        End If

        Me.currOperator = Nothing


        GC.Collect()

        Return True

    End Function



    'Shared
    Public Function ProgressFunc(ByVal inPercent As Integer, _
     ByVal inContext As IntPtr, ByRef outCancel As Boolean) As Long

        Dim rtn As Long = CLng(EDS_ERR_OK)

        MyPHCameraController.model.notifyObservers(prog, inPercent)

        Return rtn

    End Function



End Class
