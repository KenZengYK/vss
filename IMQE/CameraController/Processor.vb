'/******************************************************************************
'*                                                                             *
'*   PROJECT : EOS Digital Software Development Kit EDSDK                      *
'*      NAME : Processor.vb                                                    *
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

Imports System.Object
Imports System.Threading

''' <summary>
''' Xsj:每个CameraControl对应执行指令的线程管理类
''' </summary>
''' <remarks></remarks>
Public Class Processor

    Protected thread As Thread


    '// Flag for this thread running or not
    Public running As Boolean


    '// queue  
    Protected queue As New Queue

    '// End application command
    Protected closeCommand As Command

    '// Sync object
    'Xsj:異步操作鎖對象
    Protected ReadOnly syncObject As New Object


    Public Sub New()
        Me.running = True
        Me.closeCommand = Nothing
        'Xsj:指定线程执行的函数
        Me.thread = New Thread(AddressOf run)
    End Sub

    ''' <summary>
    ''' Xsj:重写析构函数，释放指令队列
    ''' </summary>
    ''' <remarks></remarks>
    Protected Overrides Sub Finalize()
        clear()
    End Sub



    '// Set end application command
    Public Sub setCloseCommand(ByVal closeCommand As Command)
        Me.closeCommand = closeCommand
    End Sub

    ''' <summary>
    ''' 'Xsj:向指令队列尾部添加指令
    ''' </summary>
    ''' <param name="command"></param>
    ''' <remarks></remarks>
    Public Sub enqueue(ByVal command As Command)

        'If IsNothing(command) = True Then
        'End
        'End If

        Try
            'Xsj:鎖定異常作業.
            Monitor.Enter(syncObject)
            'Xsj:向指令队列尾部添加指令.
            Me.queue.Enqueue(command)
            'Xsj:通知等待线程锁定对象的状态已更改，并且锁的所有者准备释放该锁。
            Monitor.PulseAll(syncObject)
        Finally
            'Xsj:釋放異常作業.
            Monitor.Exit(syncObject)
        End Try

    End Sub


    ''' <summary>
    ''' Xsj:置指令运行标识running=false
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub stopTh()

        Try
            Monitor.Enter(syncObject)

            Me.running = False

            Monitor.PulseAll(syncObject)

        Finally

            Monitor.Exit(syncObject)

        End Try

    End Sub

    ''' <summary>
    ''' Xsj:中止线程
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub join()

        Try

            thread.Join()
            thread = Nothing

        Catch ex As Exception

        End Try

    End Sub

    ''' <summary>
    ''' Xsj:清除指令队列中所有指令
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub clear()

        Try

            Monitor.Enter(syncObject)
            Me.queue.Clear()

        Finally

            Monitor.Exit(syncObject)

        End Try
    End Sub

    ''' <summary>
    ''' Xsj:启动线程，执行指令队列中的指令
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub start()

        Me.thread.Start()

    End Sub
 
    ''' <summary>
    ''' Xsj:线程对应的执行逻辑
    ''' </summary>
    ''' <remarks></remarks>
    Public Sub run()

        'Xsj:置线程的运行状态running = True
        'Me.running = True


        While Me.running

            'System.Threading.Thread.Sleep(1)

            'Xsj:取出指令队表中的第一个指令
            Dim command As Command = take()



            If IsNothing(command) = False Then
                'Xsj:执行指令，并返回执行结果
                Dim complete As Boolean = command.execute()

                'Xsj20120524:注釋掉以下邏輯,取消拍攝不成功，而重新進入隊列。
                If complete = False Then
                    ' >Retry 
                    ' When a command execution failed with DeviceBusy or some errors,
                    ' and you want to set some retrying sequence, you should sleep _
                    ' about 500 micro seconds because it makes camera unstable.
                    thread.Sleep(500)
                    'Xsj:将指令重新插入队列
                    enqueue(command)
                Else

                    command = Nothing

                End If

            End If

        End While

        '// Clear the queue.
        clear()

        '// End application
        'Xsj:接收到closeCommand指定后，执行closeCommand指令
        If IsNothing(closeCommand) = False Then
            Me.closeCommand.execute()
            Me.closeCommand = Nothing
        End If

    End Sub


    '//take a command from the queue
    ''' <summary>
    ''' Xsj:从指令队列中取出第一个指令
    ''' </summary>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Protected Function take() As Command

        Dim command As Command = Nothing

        Try
            Monitor.Enter(syncObject)

            '// Wait when the queue is empty.
            While queue.Count = 0 And running = True

                'Xsj:释放对象上的锁以便允许其他线程锁定和访问该对象。在其他线程访问对象时，调用线程将等待。
                '脉冲信号用于通知等待线程有关对象状态的更改。

                Monitor.Wait(syncObject)

            End While


            If running = True Then

                'Xsj:取出并移除第一个指令
                command = queue.Dequeue()

            End If

            Monitor.PulseAll(syncObject)

        Finally
            Monitor.Exit(syncObject)
        End Try


        Return command

    End Function


End Class
